unit Elves_Unit;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,ComObj,b_utils, RXSpin, Mask, ToolEdit, CurrEdit;

var
  AX: OLEVariant;
  Elves_Mode:integer; // ����� ������
  Elves_Report:integer; // ��� ������
  Elves_Cnt_Title:integer;
  Elves_Cnt_Footer:integer;
  Elves_Arr_Title:array[1..100] of string[24];
  Elves_Arr_Footer:array[1..100] of string[24];

const
Elves_rezim:array[0..5] of string=('����� ������','����� �����������','����� ������ ������� ��� �������',
   '����� ������ ������� � ��������','����� ����������������','����� ���������� ����������');

  Procedure Elves_Get_title;
  Procedure Elves_Get_Footer;
  Procedure Elves_Print_title;
  Procedure Elves_Print_Footer;
  Procedure Elves_Print_string(s:ansistring);
  Procedure Auto_rezim(rez:integer;Pass:ansistring);
  Procedure Elves_Reg_towar(Towar_name:string;Towar_sek:integer;Towar_money,Towar_kol,Towar_skid:double);
  Procedure Elves_Wozw_towar(Towar_name:string;Towar_sek:integer;Towar_money,Towar_kol:double);
  Procedure Elves_CLose_check(summ:double;close_mode:integer);
  Procedure Elves_cancel_check;
  Procedure Elves_init;
  function CreateAX(const ClassName, AXFileName, LSFileName: string): OleVariant;
  Procedure Elves_add_summ(summ:double);
  Procedure Elves_dec_summ(summ:double);
  Procedure Elves_test_print;
  Procedure Elves_report_print(rp:integer);

implementation

{------------------------------------------------------------------------------}
function CreateAX(const ClassName, AXFileName, LSFileName: string): OleVariant;

  function RegisterExeByFileName(const aFileName : string): boolean;
  var
    fStartupInfo : TStartupInfo;
    fProcessInfo : TProcessInformation;
    fExitCode : DWORD;
  begin
    RESULT:= FALSE;
    FillChar(fStartupInfo, SizeOf(fStartupInfo), 0 );
    with fStartupInfo do
      begin
      cb:= SizeOf(fStartupInfo);
      dwFlags:= STARTF_USESHOWWINDOW;
      wShowWindow:= SW_HIDE;
      end;
    ExitCode:= 0;
    if CreateProcess(nil, PChar(ExtractFileName(aFileName)+' /RegServer'), nil,
     nil, FALSE, NORMAL_PRIORITY_CLASS, nil, PChar(ExtractFilePath(aFileName)),
     fStartupInfo , fProcessInfo ) then
      begin
      WaitForSingleObject(fProcessInfo.hProcess, Infinite );
      GetExitCodeProcess(fProcessInfo.hProcess, fExitCode );
      RESULT:= TRUE;
      end;
    CloseHandle(fProcessInfo.hProcess);
    CloseHandle(fProcessInfo.hThread);
  end;

  function RegisterDllByFileName(const FileName : string): boolean;
  begin
    try
      RegisterComServer(FileName);
      RESULT:= TRUE;
    except
      RESULT:= FALSE;
    end;
  end;

  procedure TryToRegisterAX(AFileName: string);
  var
    OpenDialog: TOpenDialog;
  begin
    if Application.MessageBox( PChar('���������� ���������������� �������.'+Chr(13)+
      '������� �������������� ����� '+AFileName), '����: ����� ������� ���',
      MB_ICONEXCLAMATION or MB_OKCANCEL) = ID_Cancel then Halt;
    OpenDialog := TOpenDialog.Create(nil);
    try
      OpenDialog.FileName := AFileName;
      OpenDialog.Filter := '������� (*.dll)|*.dll|';
      OpenDialog.DefaultExt := 'dll';
      if Not(OpenDialog.Execute) then Halt;
      RegisterDllByFileName(OpenDialog.FileName);
    finally
      OpenDialog.Free;
    end;
  end;

  function TryToRegisterLS(AFileName: string): Boolean;
  var
    OpenDialog: TOpenDialog;
  begin
    result := False;
    case
      Application.MessageBox( PChar(
      '���������� ������� ������ ������� ������������.'+Chr(13)+
      '��������� �������:'+Chr(13)+
      '������ ������������ �� ���������������'+Chr(13)+
      '��� ���������, �� ������� �� ���������, ����������.'+Chr(13)+Chr(13)+
      '"��"'+Chr(vk_Tab)+'���������������� ������ ������������'+Chr(13)+
      '"���"'+Chr(vk_Tab)+'���������� ���������� ��������� ��� �����������'+Chr(13)+
      '"������"'+Chr(vk_Tab)+'�������� ���������� ���������'),
      '����: ����� ������� ���',
      mb_IconExclamation or mb_YesNoCancel) of

      ID_Cancel: Halt;
      ID_No: Exit;
      ID_Yes:
      begin
        OpenDialog := TOpenDialog.Create(nil);
        try
          OpenDialog.FileName := AFileName;
          OpenDialog.Filter := '������ ������������ (*.exe)|*.exe|';
          OpenDialog.DefaultExt := 'exe';
          if Not(OpenDialog.Execute) then Exit;
          result := True;
          RegisterExeByFileName(OpenDialog.FileName);
        finally
          OpenDialog.Free;
        end;
      end;
    end;
  end;

var
  tmpStr: string;
begin
  repeat
    repeat
      try
        RESULT:= CreateOleObject(ClassName);
      except
      end;
      if VarIsEmpty(RESULT) then TryToRegisterAX(AXFileName);
    until not(VarIsEmpty(RESULT));
    tmpStr:= RESULT.ServerVersion;
    if RESULT.ResultCode = -13 then
    begin
      if Not(TryToRegisterLS(LSFileName)) then
        Break
      else
        VarClear(RESULT);
    end else
      Break;
  until FALSE;
end;




Procedure Elves_Get_title;
begin
  Elves_Cnt_Title:=3;
  Elves_Arr_Title[1]:='������� �����-5  ';
  Elves_Arr_Title[2]:=powt_sym('-',24);
  Elves_Arr_Title[3]:='���: 7603021885    ';
end;

Procedure Elves_Get_Footer;
begin
  Elves_Cnt_Footer:=2;
  Elves_Arr_Footer[1]:=powt_sym('-',24);
  Elves_Arr_Footer[2]:='������� �� �������!';
end;

Procedure Elves_Print_Title;
var
  a:integer;
begin
  for a:=1 to Elves_Cnt_Title do Elves_Print_String(b_utils.left(Elves_Arr_Title[a]+b_utils.space(24),24));
end;

Procedure Elves_Print_Footer;
var
  a:integer;
begin
  for a:=1 to Elves_Cnt_Footer do Elves_Print_String(b_utils.left(Elves_Arr_Footer[a]+b_utils.space(24),24));
end;

Procedure Auto_rezim(rez:integer;Pass:ansistring);
var
  fAllow: boolean;
begin
  if Rez<>5 then // �� ����� ���������� ����������
    fAllow:= TRUE
  else
    begin
    if Messbox('�� ������������� ������� � ����� ���������� ����������?','�������������',4+48+256)=6 then
      fAllow:= TRUE
    else
      fAllow:= FALSE;
    end;
  if fAllow then
    begin
      //DisableButtons;
      try
        // �������� ���������� ������ �����
        AX.Mode:=rez;
        AX.Password:=Pass;
        AX.SetMode;
    //    Messbox(Elves_rezim[rez]+' ����������!','���������',48);
      finally
        // EnableButtons;
      end;
    end;
end;

Procedure Elves_Wozw_towar(Towar_name:string;Towar_sek:integer;Towar_money,Towar_kol:double);
// ��������� �������� ������
var
  a,cnt_name:integer;
begin
//  DisableButtons;
  cnt_name:=length(Towar_name) div 24;
  if (length(Towar_name) mod 24) >0 then inc(Cnt_name);
  try
    // �������� ������
    if Cnt_name=1 then AX.Name:= b_utils.left(Towar_name+b_utils.space(24),24)
    else begin
      for a:=1 to Cnt_name-1 do Elves_Print_string(copy(Towar_name,(a-1)*24+1,24));
      AX.Name:=copy(Towar_name,(Cnt_name-1)*24+1,24);
    end;
    AX.Department:=Towar_sek; // ������ (0 - �� ��������� (�� 16)
    AX.Price:=Towar_money; // ���� ������
    AX.Quantity:=Towar_kol; // ���-�� ������
    AX.Return;
  finally
    //EnableButtons;
  end;
end;


Procedure Elves_Reg_towar(Towar_name:string;Towar_sek:integer;Towar_money,Towar_kol,Towar_skid:double);
// ��������� �������� ���� ����� � ����
var
  a,cnt_name:integer;
begin
//  DisableButtons;
  cnt_name:=length(Towar_name) div 24;
  if (length(Towar_name) mod 24) >0 then inc(Cnt_name);
  try
    // �������� ������
    if Cnt_name=1 then AX.Name:= b_utils.left(Towar_name+b_utils.space(24),24)
    else begin
      for a:=1 to Cnt_name-1 do Elves_Print_string(copy(Towar_name,(a-1)*24+1,24));
      AX.Name:=copy(Towar_name,(Cnt_name-1)*24+1,24);
    end;
    AX.Department:=Towar_sek; // ������ (0 - �� ��������� (�� 16)
    AX.Price:=Towar_money; // ���� ������
    AX.Quantity:=Towar_kol; // ���-�� ������
    AX.Percents:=Towar_skid; // ������� ������
    AX.Destination:=1;   // ��� ������ (0 - �� ���� ���, 1 - �� ��������� ��������)
    AX.Registration;
    if Towar_skid<>0 then begin
      // ������ ������
       try
         AX.Summ:= Towar_skid;
         AX.SummDiscount;
       Except
       end;
    end;
  finally
    //EnableButtons;
  end;
end;

Procedure Elves_CLose_check(summ:double;close_mode:integer);
// ��������� ��������� ���
begin
  AX.TypeClose:=close_mode; // ��� �������� (1-���������, 2 - ��������
                   // 3 - ����� , 4 - ����������
  //DisableButtons;
  try
    if summ>0 then begin
      // ����� �� ������
      AX.Summ:= summ;
      AX.Delivery;
    end else AX.CloseCheck;
  finally
    //EnableButtons;
  end;
end;

Procedure Elves_cancel_check;
// ��������� �������� ���
begin
//  DisableButtons;
  try
    AX.CancelCheck;
  finally
    //EnableButtons;
  end;
end;

Procedure Elves_Print_string(s:ansistring);
Begin
  AX.Caption:= b_utils.left(s+space(24),24);
  //  DisableButtons;   // ��������� ������
  try
    AX.PrintString;  // �������� ������� ������ ������
  finally
    // EnableButtons;  // ������������ ������
  end;
end;

Procedure Elves_init;
begin
  SendMessage(Elves_mode, CB_SETDROPPEDWIDTH , 220, 0);
  SendMessage(Elves_report, CB_SETDROPPEDWIDTH , 180, 0);
  AX:= CreateAX('AddIn.FprnM45', 'FprnM1C.dll','FprnMLS.exe');
  try
{------------------------------------------------------------------------------}
{ �������� ������. � ������ ������� ����� ��������(� ����� ������) ���.        }
{------------------------------------------------------------------------------}
    AX.Destination:= 0;
  except
    on Exception do
      begin
      Messbox('���� ���� ������������ ��� ����� ������� ������ ��������. ������ ����������. �������� �������.',Application.title,48);
      Application.ShowMainForm:= FALSE;
      Application.Terminate;
      Exit;
      end;
  end;
  // ���������� �������
  AX.DeviceEnabled:= True;
end;


Procedure Elves_add_summ(summ:double);
begin
    // �������� �����
    AX.Summ:= b_utils.okrug(summ,2);
    AX.CashIncome;
end;

Procedure Elves_dec_summ(summ:double);
begin
    // ������ �������
    AX.Summ:= b_utils.okrug(summ,2);
    AX.CashOutcome;
end;


Procedure Elves_test_print;
begin
    AX.TestDevice;
end;

Procedure Elves_report_print(rp:integer);
begin
   AX.ReportType:=rp;
   AX.Report;
end;


end.
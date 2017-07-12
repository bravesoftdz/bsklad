
{******************************************}
{                                          }
{             FastReport v3.0              }
{         HTML table export filter         }
{                                          }
{         Copyright (c) 1998-2005          }
{          by Alexander Fediachov,         }
{             Fast Reports Inc.            }
{                                          }
{******************************************}

unit frxExportHTML;

interface

{$I frx.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, frxClass, JPEG, ShellAPI, frxExportMatrix, frxProgress
{$IFDEF Delphi6}, Variants {$ENDIF};

type
  TfrxHTMLExportDialog = class(TForm)
    SaveDialog1: TSaveDialog;
    GroupQuality: TGroupBox;
    StylesCB: TCheckBox;
    PicturesCB: TCheckBox;
    PicsSameCB: TCheckBox;
    FixWidthCB: TCheckBox;
    NavigatorCB: TCheckBox;
    MultipageCB: TCheckBox;
    MozillaCB: TCheckBox;
    GroupPageRange: TGroupBox;
    DescrL: TLabel;
    AllRB: TRadioButton;
    CurPageRB: TRadioButton;
    PageNumbersRB: TRadioButton;
    PageNumbersE: TEdit;
    OpenAfterCB: TCheckBox;
    OkB: TButton;
    CancelB: TButton;
    BackgrCB: TCheckBox;
    procedure FormCreate(Sender: TObject);
  end;

  TfrxHTMLExport = class(TfrxCustomExportFilter)
  private
    Exp: TStream;
    FAbsLinks: Boolean;
    FCurrentPage: Integer;
    FExportPictures: Boolean;
    FExportStyles: Boolean;
    FFixedWidth: Boolean;
    FMatrix: TfrxIEMatrix;
    FMozillaBrowser: Boolean;
    FMultipage: Boolean;
    FNavigator: Boolean;
    FOpenAfterExport: Boolean;
    FPicsInSameFolder: Boolean;
    FPicturesCount: Integer;
    FProgress: TfrxProgress;
    FShowProgress: Boolean;
    FUseJpeg: Boolean;
    FServer: Boolean;
    FPrintLink: String;
    FBackground: Boolean;
    FBackImage: TBitmap;
    FBackImageExist: Boolean;
    FReportPath: String;
    procedure WriteExpLn(const str: String);
    procedure ExportPage;
    function ChangeReturns(Str: String): String;
    function TruncReturns(Str: String): String;
    function GetPicsFolder: String;
    function GetPicsFolderRel: String;
    function GetFrameFolder: String;
    function ReverseSlash(S: String): String;
    function HTMLCodeStr(const Str: String): String;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function ShowModal: TModalResult; override;
    function Start: Boolean; override;
    procedure Finish; override;
    procedure FinishPage(Page: TfrxReportPage; Index: Integer); override;
    procedure StartPage(Page: TfrxReportPage; Index: Integer); override;
    procedure ExportObject(Obj: TfrxComponent); override;
    class function GetDescription: String; override;
    property Server: Boolean read FServer write FServer;
    property PrintLink: String read FPrintLink write FPrintLink;
    property ReportPath: String read FReportPath write FReportPath;
  published
    property OpenAfterExport: Boolean read FOpenAfterExport write FOpenAfterExport default False;
    property FixedWidth: Boolean read FFixedWidth write FFixedWidth default False;
    property ExportPictures: Boolean read FExportPictures write FExportPictures default True;
    property PicsInSameFolder: Boolean read FPicsInSameFolder write FPicsInSameFolder default False;
    property ExportStyles: Boolean read FExportStyles write FExportStyles default True;
    property Navigator: Boolean read FNavigator write FNavigator default False;
    property Multipage: Boolean read FMultipage write FMultipage default False;
    property MozillaFrames: Boolean read FMozillaBrowser write FMozillaBrowser default False;
    property ShowProgress: Boolean read FShowProgress write FShowProgress default True;
    property UseJpeg: Boolean read FUseJpeg write FUseJpeg default True;
    property AbsLinks: Boolean read FAbsLinks write FAbsLinks default False;
    property Background: Boolean read FBackground write FBackground;
  end;


implementation

uses frxUtils, frxRes, frxrcExports;

{$R *.dfm}

const
  Xdivider = 1;
  Ydivider = 1.03;
  Navigator_src =
    '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'#13#10 +
    '<html><head><title></title><style type="text/css"><!--'#13#10 +
    'body { font-family: Tahoma; font-size: 8px; font-weight: bold; font-style: normal; text-align: center; vertical-align: middle; }'#13#10 +
    'input {text-align: center}'#13#10 +
    '.nav { font : 9pt Tahoma; color : #283e66; font-weight : bold; text-decoration : none;}'#13#10 +
    '--></style><script language="javascript" type="text/javascript"><!--'#13#10 +
    '  var frPgCnt = %s; var frRepName = "%s"; var frMultipage = %s; var frPrefix="%s";'#13#10 +
    '  function DoPage(PgN) {'#13#10 +
    '    if ((PgN > 0) && (PgN <= frPgCnt) && (PgN != parent.frCurPage)) {'#13#10 +
    '      if (frMultipage > 0)  parent.mainFrame.location = frPrefix + PgN + ".html";'#13#10 +
    '      else parent.mainFrame.location = frPrefix + "main.html#PageN" + PgN;'#13#10 +
    '      UpdateNav(PgN); } else document.PgForm.PgEdit.value = parent.frCurPage; }'#13#10 +
    '  function UpdateNav(PgN) {'#13#10 +
    '    parent.frCurPage = PgN; document.PgForm.PgEdit.value = PgN;'#13#10 +
    '    if (PgN == 1) { document.PgForm.bFirst.disabled = 1; document.PgForm.bPrev.disabled = 1; }'#13#10 +
    '    else { document.PgForm.bFirst.disabled = 0; document.PgForm.bPrev.disabled = 0; }'#13#10 +
    '    if (PgN == frPgCnt) { document.PgForm.bNext.disabled = 1; document.PgForm.bLast.disabled = 1; }'#13#10 +
    '    else { document.PgForm.bNext.disabled = 0; document.PgForm.bLast.disabled = 0; } }'#13#10 +
    '  function RefreshRep() { parent.location = "result?report=" + frRepName + "&multipage=" + frMultipage; }'#13#10 +
    '  function PrintRep() { %s }'#13#10 +
    '--></script></head>'#13#10 +
    '<body bgcolor="#DDDDDD" text="#000000" leftmargin="0" topmargin="4" onload="UpdateNav(parent.frCurPage)">'#13#10 +
    '<form name="PgForm" onsubmit="DoPage(document.forms[0].PgEdit.value); return false;" action="">'#13#10 +
    '<table cellspacing="0" align="left" cellpadding="0" border="0" width="100%%">'#13#10 +
    '<tr valign="middle">'#13#10 +
    '<td width="60" align="center"><button name="bFirst" class="nav" type="button" onclick="DoPage(1); return false;">%s</button></td>'#13#10 +
    '<td width="60" align="center"><button name="bPrev" class="nav" type="button" onclick="DoPage(Math.max(parent.frCurPage - 1, 1)); return false;">%s</button></td>'#13#10 +
    '<td width="100" align="center"><input type="text" class="nav" name="PgEdit" value="parent.frCurPage" size="4"></td>'#13#10 +
    '<td width="60" align="center"><button name="bNext" class="nav" type="button" onclick="DoPage(parent.frCurPage + 1); return false;">%s</button></td>'#13#10 +
    '<td width="60" align="center"><button name="bLast" class="nav" type="button" onclick="DoPage(frPgCnt); return false;">%s</button></td>'#13#10 +
    '<td width="20">&nbsp;</td>'#13#10'%s' +
    '<td align="right">%s: <script language="javascript" type="text/javascript"> document.write(frPgCnt);</script></td>'#13#10 +
    '<td width="10">&nbsp;</td>'#13#10 +
    '</tr></table></form></body></html>';
  Server_sect =
    '<td width="60" align="center"><button name="bRefresh" class="nav" type="button" onclick="RefreshRep(); return false;">%s</button></td>'#13#10 +
    '<td width="60" align="center"><button name="bPrint" class="nav" type="button" onclick="PrintRep(); return false;">%s</button></td>'#13#10;
  DefPrint = 'parent.mainFrame.focus(); parent.mainFrame.print();';
  LinkPrint = 'parent.location = "%s";';

{ TfrxHTMLExport }

constructor TfrxHTMLExport.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FExportPictures := True;
  FExportStyles := True;
  FFixedWidth := True;
  FShowProgress := True;
  FUseJpeg := True;
  FServer := False;
  FPrintLink := '';
  FBackground := False;
  FBackImage := TBitmap.Create;
end;

class function TfrxHTMLExport.GetDescription: String;
begin
  Result := frxResources.Get('HTMLexport');
end;

function TfrxHTMLExport.TruncReturns(Str: String): String;
begin
  Str := StringReplace(Str, #1, '', [rfReplaceAll]);
  if Copy(Str, Length(Str) - 1, 2) = #13#10 then
    Delete(Str, Length(Str) - 1, 2);
  Result := Str;
end;

function TfrxHTMLExport.ChangeReturns(Str: String): String;
begin
  Str := StringReplace(Str, #13#10, '<br>', [rfReplaceAll]);
  Str := StringReplace(Str, '&', '&amp;', [rfReplaceAll]);
  Str := StringReplace(Str, '"', '&quot;', [rfReplaceAll]);
  Result := Str;
end;

procedure TfrxHTMLExport.WriteExpLn(const str: String);
begin
  if Length(str) > 0 then
  begin
    Exp.Write(str[1], Length(str));
    Exp.Write(#13#10, 2);
  end;
end;

procedure TfrxHTMLExport.ExportPage;
var
  i, x, y, dx, dy, fx, fy, pbk: Integer;
  dcol, drow: Integer;
  text, s, sb, si, su: String;
  Vert, Horiz: String;
  obj: TfrxIEMObject;
  EStyle: TfrxIEMStyle;
  St, buff: String;
  hlink, newpage: Boolean;
  jpg : TJPEGImage;
  tableheader, columnWidths: String;

  procedure AlignFR2AlignExcel(HAlign: TfrxHAlign; VAlign: TfrxVAlign;
    var AlignH, AlignV: String);
  begin
    if HAlign = haLeft then
      AlignH := 'Left'
    else if HAlign = haRight then
      AlignH := 'Right'
    else if HAlign = haCenter then
      AlignH := 'Center'
    else if HAlign = haBlock then
      AlignH := 'Justify'
    else
      AlignH := '';
    if VAlign = vaTop then
      AlignV := 'Top'
    else if VAlign = vaBottom then
      AlignV := 'Bottom'
    else if VAlign = vaCenter then
      AlignV := 'Middle'
    else
      AlignV := '';
  end;

begin
  WriteExpLn('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">');
  WriteExpLn('<html><head>');
  WriteExpLn('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
  WriteExpLn('<meta name=Generator content="FastReport 3.0 http://www.fast-report.com">');
  if Length(Report.ReportOptions.Name) > 0 then
    s := Report.ReportOptions.Name
  else
    s := ChangeFileExt(ExtractFileName(Report.FileName), '');
  WriteExpLn('<title>' + UTF8Encode(s) + '</title>');

  if FExportStyles then
  begin
    WriteExpLn('<style type="text/css"><!-- ');
    WriteExpLn('.page_break {page-break-before: always;}');
    for x := 0 to FMatrix.StylesCount - 1 do
    begin
      EStyle := FMatrix.GetStyleById(x);
      s := 's' + IntToStr(x);
      WriteExpLn('.' + s + ' {');
      if Assigned(EStyle.Font) then
      begin
        if fsBold in EStyle.Font.Style then
          sb := ' font-weight: bold;'
        else
          sb := '';
        if fsItalic in EStyle.Font.Style then
          si := ' font-style: italic;'
        else
          si := ' font-style: normal;';
        if fsUnderline in EStyle.Font.Style then
          su := ' text-decoration: underline;'
        else
          su := '';
        WriteExpLn(' font-family: ' + EStyle.Font.Name + ';'#13#10 +
          ' font-size: ' + IntToStr(Round(EStyle.Font.Size * 96 / 72)) + 'px;'#13#10 +
          ' color: ' + HTMLRGBColor(EStyle.Font.Color) + ';' + sb + si + su);
      end;
      if EStyle.Color = clNone then
        WriteExpLn(' background-color: transparent;')
      else
        WriteExpLn(' background-color: ' + HTMLRGBColor(EStyle.Color) + ';');
      AlignFR2AlignExcel(EStyle.HAlign, EStyle.VAlign, Horiz, Vert);
      if EStyle.FrameTyp <> [] then
      begin
        su := IntToStr(Round(EStyle.FrameWidth));
        s := HTMLRGBColor(EStyle.FrameColor);
        si := ' border-color:' + s + ';';
        WriteExpLn(si + ' border-style: solid;');
        if (ftLeft in EStyle.FrameTyp) then
          WriteExpLn(' border-left-width: ' + su + ';')
        else
          WriteExpLn(' border-left-width: 0px;');
        if (ftRight in EStyle.FrameTyp) then
          WriteExpLn(' border-right-width: ' + su + ';')
        else
          WriteExpLn(' border-right-width: 0px;');
        if (ftTop in EStyle.FrameTyp) then
          WriteExpLn(' border-top-width: ' + su + ';')
        else
          WriteExpLn(' border-top-width: 0px;');
        if (ftBottom in EStyle.FrameTyp) then
          WriteExpLn(' border-bottom-width: ' + su + ';')
        else
          WriteExpLn(' border-bottom-width: 0px;');
      end;
      WriteExpLn(' text-align: ' + Horiz + '; vertical-align: ' + Vert +';');
      WriteExpLn('}');
    end;
    WriteExpLn('--></style>');
  end;
  WriteExpLn('</head>');
  WriteExpLn('<body');
  if FBackImageExist and FExportPictures then
  begin
    if FUseJpeg then
    begin
      s := ReverseSlash(GetPicsFolder + 'backgrnd.jpg');
      jpg := TJPEGImage.Create;
      jpg.Assign(FBackImage);
      jpg.SaveToFile(s);
      jpg.Free;
      s := ReverseSlash(GetPicsFolderRel + 'backgrnd.jpg');
    end else
    begin
      s := ReverseSlash(GetPicsFolder + 'backgrnd.bmp');
      FBackImage.SaveToFile(s);
      s := ReverseSlash(GetPicsFolderRel + 'backgrnd.bmp');
    end;
    WriteExpLn(' background="' + s + '"');
  end;
  WriteExpLn(' bgcolor="#FFFFFF" text="#000000">');

  WriteExpLn('<a name="PageN1"></a>');
  if FFixedWidth then
    st := ' width="' + IntToStr(Round((FMatrix.MaxWidth - FMatrix.Left) / Xdivider)) + '"'
  else
    st := '';
  tableheader := '<table' + st +' border="0" cellspacing="0" cellpadding="0"';
  WriteExpLn(tableheader + '>');

  columnWidths := '<tr style="height: 1px">';
  for x := 0 to FMatrix.Width - 2 do
  begin
    dcol := Round((FMatrix.GetXPosById(x + 1) - FMatrix.GetXPosById(x)) / Xdivider);
    columnWidths := columnWidths + '<td width="' + IntToStr(dcol) + '"></td>';
  end;
  columnWidths := columnWidths + '</tr>';
  WriteExpLn(columnWidths);

  pbk := 0;
  st := '';
  newpage := False;

  for y := 0 to FMatrix.Height - 2 do
  begin
    if FShowProgress and (not FMultipage) then
      if FProgress.Terminated then
        break;
    drow := Round((FMatrix.GetYPosById(y + 1) - FMatrix.GetYPosById(y)) / Ydivider);
    s := '';
    if FMatrix.PagesCount > pbk then
      if Round(FMatrix.GetPageBreak(pbk)) <= Round(FMatrix.GetYPosById(y + 1)) then
      begin
        Inc(pbk);
        if FShowProgress and (not FMultipage) then
          FProgress.Tick;
        newpage := True;
      end;
    if drow = 0 then
      drow := 1;
    WriteExpLn('<tr style="height:' + IntToStr(drow) + 'px">');
    buff := '';
    for x := 0 to FMatrix.Width - 2 do
    begin
      if FShowProgress and (not FMultipage) then
        if FProgress.Terminated then
          break;
      i := FMatrix.GetCell(x, y);
      if (i <> -1) then
      begin
        Obj := FMatrix.GetObjectById(i);
        if Obj.Counter = 0 then
        begin
          FMatrix.GetObjectPos(i, fx, fy, dx, dy);
          Obj.Counter := 1;
          if dx > 1 then
            s := ' colspan="' + IntToStr(dx) + '"'
          else
            s := '';
          if dy > 1 then
            sb := ' rowspan="' + IntToStr(dy) + '"'
          else
            sb := '';
          if FExportStyles then
            st := ' class="' + 's' + IntToStr(Obj.StyleIndex) + '"'
          else
            st := '';
          if Length(Trim(Obj.Memo.Text)) = 0 then
            st := st + ' style="font-size:1px"';

          buff := buff + '<td' + s + sb + st + '>';
          if Length(Obj.URL) > 0 then
          begin
            if Obj.URL[1] = '@' then
              if  FMultipage then
              begin
                Obj.URL := StringReplace(Obj.URL, '@', 'index.', []);
                if FMozillaBrowser then
                  Obj.URL := ReverseSlash(GetPicsFolderRel + Trim(Obj.URL) + '.html')
                else
                  Obj.URL := Trim(Obj.URL) + '.html';
              end
              else
                Obj.URL := StringReplace(Obj.URL, '@', '#PageN', []);
            buff := buff + '<a href="' + Obj.URL + '">';
            hlink := True;
          end
          else
            hlink := False;
          if Obj.IsText then
          begin
            text := Trim(ChangeReturns(TruncReturns(Obj.Memo.Text)));
            if Length(text) > 0 then
              buff := buff + UTF8Encode(text)
            else
              buff := buff + '&nbsp;';
          end else
          begin
            if FUseJpeg then
            begin
              s := ReverseSlash(GetPicsFolder + 'img' + IntToStr(FPicturesCount) + '.jpg');
              jpg := TJPEGImage.Create;
              jpg.Assign(Obj.Image);
              jpg.SaveToFile(s);
              jpg.Free;
              s := ReverseSlash(GetPicsFolderRel + 'img' + IntToStr(FPicturesCount) + '.jpg');
            end else
            begin
              s := ReverseSlash(GetPicsFolder + 'img' + IntToStr(FPicturesCount) + '.bmp');
              Obj.Image.SaveToFile(s);
              s := ReverseSlash(GetPicsFolderRel + 'img' + IntToStr(FPicturesCount) + '.bmp');
            end;
            buff := buff + '<img src="' + s + '" width="' + IntToStr(Obj.Image.Width) +
                           '" height="' + IntToStr(Obj.Image.Height) + '" alt="">';
            Inc(FPicturesCount);
          end;
          if hlink then
            buff := buff + '</a>';
          buff := buff + '</td>';
        end;
      end
      else
        buff := buff + '<td></td>';
    end;
    WriteExpLn(buff);
    WriteExpLn('</tr>');
    if newpage then
    begin
      WriteExpLn('</table>');
      newpage := False;
      if y < FMatrix.Height - 2 then
      begin
        WriteExpLn('<a name="PageN' + IntToStr(pbk + 1) + '"></a>');
        WriteExpLn(tableheader + ' class="page_break">');
        WriteExpLn(columnWidths);
      end;
    end;
  end;
  if FMultipage then WriteExpLn('</table>');
  WriteExpLn('</body></html>');
end;

function TfrxHTMLExport.ShowModal: TModalResult;
begin
  if not Assigned(Stream) then
  begin
    with TfrxHTMLExportDialog.Create(nil) do
    begin
      StylesCB.Checked := FExportStyles;
      PicsSameCB.Checked := FPicsInSameFolder;
      PicturesCB.Checked := FExportPictures;
      OpenAfterCB.Checked := FOpenAfterExport;
      FixWidthCB.Checked := FFixedWidth;
      NavigatorCB.Checked := FNavigator;
      MultipageCB.Checked := FMultipage;
      MozillaCB.Checked := FMozillaBrowser;
      BackgrCB.Checked := FBackground;

      Result := ShowModal;
      if Result = mrOk then
      begin
        PageNumbers := '';
        CurPage := False;
        if CurPageRB.Checked then
          CurPage := True
        else if PageNumbersRB.Checked then
          PageNumbers := PageNumbersE.Text;

        FMozillaBrowser := MozillaCB.Checked;
        FExportStyles := StylesCB.Checked;
        FPicsInSameFolder := PicsSameCB.Checked;
        FExportPictures := PicturesCB.Checked;
        FOpenAfterExport := OpenAfterCB.Checked;
        FFixedWidth := FixWidthCB.Checked;
        FMultipage := MultipageCB.Checked;
        FNavigator := NavigatorCB.Checked;
        FBackground := BackgrCB.Checked;

        if SaveDialog1.Execute then
          FileName := SaveDialog1.FileName
        else
          Result := mrCancel;
      end;
      Free;
    end
  end else
    Result := mrOk;
end;

function TfrxHTMLExport.Start: Boolean;
begin
  if (FileName <> '') or Assigned(Stream) then
  begin
    FCurrentPage := 0;
    FPicturesCount := 0;
    FMatrix := TfrxIEMatrix.Create;
    FMatrix.Report := Report;
    if not FMultipage then
      FMatrix.ShowProgress := ShowProgress
    else
      FMatrix.ShowProgress := False;
    FMatrix.Inaccuracy := 0.5;
    FMatrix.RotatedAsImage := True;
    FMatrix.FramesOptimization := True;
    FMatrix.Background := FBackground;
    FMatrix.BackgroundImage := False;
    FMatrix.Printable := ExportNotPrintable;
    if Assigned(Stream) then
    begin
      FMultipage := False;
      FExportPictures := False;
      FNavigator := False;
    end;
    Result := True
  end
  else
    Result := False;
end;

procedure TfrxHTMLExport.StartPage(Page: TfrxReportPage; Index: Integer);
begin
  Inc(FCurrentPage);
  FBackImageExist := False;
  FBackImage.Width := 0;
  FBackImage.Height := 0;
end;

procedure TfrxHTMLExport.ExportObject(Obj: TfrxComponent);
begin
  if Obj is TfrxView then
  begin
    if (Obj is TfrxCustomMemoView) or
      (FExportPictures and (not (Obj is TfrxCustomMemoView))) then
      FMatrix.AddObject(TfrxView(Obj));
    if (TfrxView(Obj).Name = '_pagebackground') and FExportPictures and FBackground then
    begin
      FBackImageExist := True;
      FBackImage.Width := Round(TfrxView(Obj).Width);
      FBackImage.Height := Round(TfrxView(Obj).Height);
      TfrxView(Obj).Draw(FBackImage.Canvas ,1, 1, -TfrxView(Obj).AbsLeft, -TfrxView(Obj).AbsTop);
    end;
  end;
end;

procedure TfrxHTMLExport.FinishPage(Page: TfrxReportPage; Index: Integer);
begin
  if FMultipage then
  begin
    FMatrix.Prepare;
    try
      Exp := TFileStream.Create(GetPicsFolder + IntToStr(FCurrentPage) + '.html', fmCreate);
      try
        ExportPage;
      finally
        FMatrix.Clear;
        Exp.Free;
      end;
    except
      on e: Exception do
        if Report.EngineOptions.SilentMode then
          Report.Errors.Add(e.Message)
        else frxErrorMsg(e.Message);
    end;
  end
  else FMatrix.AddPage(Page.Orientation, Page.Width, Page.Height, Page.LeftMargin,
                    Page.TopMargin, Page.RightMargin, Page.BottomMargin);
end;

procedure TfrxHTMLExport.Finish;
var
  s, st, serv, print: String;
begin
  if not FMultipage then
  begin
    if FShowProgress then
    begin
      FProgress := TfrxProgress.Create(Self);
      FProgress.Execute(FCurrentPage - 1, frxResources.Get('ProgressWait'), true, true);
    end;
    FMatrix.Prepare;
    try
      if FShowProgress then
        if FProgress.Terminated then
          Exit;
      if not Assigned(Stream) then
      begin
        if FNavigator then
          Exp := TFileStream.Create(GetPicsFolder + 'main.html', fmCreate)
        else
          Exp := TFileStream.Create(FileName, fmCreate);
      end
      else
        Exp := Stream;
      try
        ExportPage;
      finally
        FMatrix.Clear;
        if not Assigned(Stream) then
          Exp.Free;
      end;
    except
      on e: Exception do
        if Report.EngineOptions.SilentMode then
          Report.Errors.Add(e.Message)
        else frxErrorMsg(e.Message);
    end;
    if FShowProgress then
      FProgress.Free;
  end;
  if FNavigator then
  begin
    try
      Exp := TFileStream.Create(GetPicsFolder + 'nav.html', fmCreate);
      try
        if FMultipage then
          s := '1'
        else
          s := '0';
        if FMozillaBrowser then
          st := GetPicsFolder
        else
          st := '';
        if FPicsInSameFolder then
          st := ChangeFileExt(ExtractFileName(FileName), '.');
        if FServer then
          serv := Format(Server_sect, [frxResources.Get('HTMLNavRefresh'), frxResources.Get('HTMLNavPrint')])
        else
          serv := '';
        if Length(FPrintLink) > 0 then
          print := Format(LinkPrint, [FPrintLink])
        else
          print := DefPrint;

        WriteExpLn(Format(Navigator_src, [IntToStr(FCurrentPage),
          HTMLCodeStr(StringReplace(Report.FileName, FReportPath, '', [])),
          s, st, print,
          frxResources.Get('HTMLNavFirst'),
          frxResources.Get('HTMLNavPrev'),
          frxResources.Get('HTMLNavNext'),
          frxResources.Get('HTMLNavLast'),
          serv, frxResources.Get('HTMLNavTotal')]));
      finally
        Exp.Free;
      end;
    except
      on e: Exception do
        if Report.EngineOptions.SilentMode then
          Report.Errors.Add(e.Message)
        else frxErrorMsg(e.Message);
    end;

    try
      Exp := TFileStream.Create(FileName, fmCreate);
      try
        WriteExpLn('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">');
        WriteExpLn('<html><head>');
        if Length(Report.ReportOptions.Name) > 0 then
          s := Report.ReportOptions.Name
        else
          s := ChangeFileExt(ExtractFileName(Report.FileName), '');
        WriteExpLn('<title>' + UTF8Encode(s) + '</title>');
        WriteExpLn('<meta http-equiv="Content-Type" content="text/html; charset=utf-8">');
        WriteExpLn('<script language="javascript" type="text/javascript"> var frCurPage = 1;</script></head>');
        WriteExpLn('<frameset rows="32,*" cols="*">');
        WriteExpLn('<frame name="topFrame" src="' + ReverseSlash(GetFrameFolder) + 'nav.html" noresize scrolling="no">');
        if FMultipage then
          WriteExpLn('<frame name="mainFrame" src="' + ReverseSlash(GetFrameFolder) + '1.html">')
        else
          WriteExpLn('<frame name="mainFrame" src="' + ReverseSlash(GetFrameFolder) + 'main.html">');
        WriteExpLn('</frameset>');
        WriteExpLn('</html>');
      finally
        Exp.Free;
      end;
    except
      on e: Exception do
        if Report.EngineOptions.SilentMode then
          Report.Errors.Add(e.Message)
        else frxErrorMsg(e.Message);
    end;
  end;

  FMatrix.Free;
  if FOpenAfterExport and (not Assigned(Stream)) then
    if FMultipage and (not FNavigator) then
      ShellExecute(GetDesktopWindow, 'open', PChar(GetPicsFolder + '1.html'), nil, nil, SW_SHOW)
    else
      ShellExecute(GetDesktopWindow, 'open', PChar(FileName), nil, nil, SW_SHOW);
end;

function TfrxHTMLExport.GetPicsFolderRel: String;
begin
  if FPicsInSameFolder then
    Result := ChangeFileExt(ExtractFileName(FileName), '.')
  else if FMultipage then
    Result := ''
  else if FAbsLinks then
    Result := ExtractFilePath(FileName) + ChangeFileExt(ExtractFileName(FileName),'.files') + '\'
  else if FNavigator then
    Result := ''
  else
    Result := ChangeFileExt(ExtractFileName(FileName),'.files') + '\'
end;

function TfrxHTMLExport.GetFrameFolder: String;
begin
  if not FPicsInSameFolder then
    Result := ChangeFileExt(ExtractFileName(FileName),'.files') + '\'
  else
    Result := ChangeFileExt(ExtractFileName(FileName), '.');
end;

function TfrxHTMLExport.GetPicsFolder: String;
var
  SecAtrtrs: TSecurityAttributes;
begin
  if FPicsInSameFolder then
  begin
    if FAbsLinks then
      Result := ExtractFilePath(FileName) + ChangeFileExt(ExtractFileName(FileName), '.')
    else
      Result := ChangeFileExt(ExtractFileName(FileName), '.')
  end
  else
  begin
    if FAbsLinks then
      Result := ExtractFilePath(FileName) + ChangeFileExt(ExtractFileName(FileName), '.files')
    else
      Result := ChangeFileExt(ExtractFileName(FileName), '.files');
    SecAtrtrs.nLength := SizeOf(TSecurityAttributes);
    SecAtrtrs.lpSecurityDescriptor := nil;
    SecAtrtrs.bInheritHandle := True;
    CreateDirectory(PChar(Result), @SecAtrtrs);
    Result := Result + '\';
  end;
end;

function TfrxHTMLExport.ReverseSlash(S: String): String;
begin
  Result := StringReplace(S, '\', '/', [rfReplaceAll]);
end;


destructor TfrxHTMLExport.Destroy;
begin
  FBackImage.Free;
  inherited;
end;

function TfrxHTMLExport.HTMLCodeStr(const Str: String): String;
var
  i: Integer;
  c: Char;
  s: String;

  function StrToHex(const s: String): String;
  var
    Len, i: Integer;
    C, H, L: Byte;

    function HexChar(N : Byte) : Char;
    begin
      if (N < 10) then Result := Chr(Ord('0') + N)
      else Result := Chr(Ord('A') + (N - 10));
    end;

  begin
    Len := Length(s);
    SetLength(Result, Len shl 1);
    for i := 1 to Len do begin
      C := Ord(s[i]);
      H := (C shr 4) and $f;
      L := C and $f;
      Result[i shl 1 - 1] := HexChar(H);
      Result[i shl 1]:= HexChar(L);
    end;
  end;

begin
  Result := '';
  for i := 1 to Length(Str) do
  begin
    c := Str[i];
    case c of
     '0'..'9', 'A'..'Z', 'a'..'z': Result := Result + c;
      else begin
        s := c;
        Result := Result + '%' + StrToHex(s);
      end
   end;
  end;
end;


{ TfrxHTMLExportDialog }

procedure TfrxHTMLExportDialog.FormCreate(Sender: TObject);
begin
  frxResources.LocalizeForm(Self);
end;


end.

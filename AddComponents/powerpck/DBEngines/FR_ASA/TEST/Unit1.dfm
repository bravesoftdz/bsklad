�
 TFORM1 0�#  TPF0TForm1Form1Left� ToppWidth HeightwCaptionForm1Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPixelsPerInch`
TextHeight TButtonButton1LefthTop4WidthKHeightCaptionButton1TabOrder OnClickButton1Click  TButtonButton2LeftpTopTWidthKHeightCaptionButton2TabOrderOnClickButton2Click  TDBGridDBGrid1Left� Top� Width@Heightx
DataSourceDataSource1TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style   TAsaDatasetOutAsaDatasetSessionMainAsaSessionSQL.Strings%select * from dba.ViewHeaderGostPaket 
CursorType
actDefaultLefthTop TIntegerFieldOutAsaDatasetIDENTITY	FieldNameIDENTITY  
TDateFieldOutAsaDatasetDAT_K	FieldNameDAT_K  TIntegerFieldOutAsaDatasetSMEN_K	FieldNameSMEN_K  TIntegerFieldOutAsaDatasetN_BRIG	FieldNameN_BRIG  TIntegerFieldOutAsaDatasetK_FIOK	FieldNameK_FIOK  TStringFieldOutAsaDatasetFIOK	FieldNameFIOK  TIntegerFieldOutAsaDatasetK_FIOM	FieldNameK_FIOM  TStringFieldOutAsaDatasetFIOM	FieldNameFIOM   TAsaSessionMainAsaSession
AutoCommitLibraryFile
dbl50t.dllLibraryPathc:\sqlany50\win32LoginDatabase'D:\WORK.PAS\QUALITY.ANY\BASE\Quality.dbLoginEngineNamequalityLoginPasswordsql	LoginUserdbaServerParamsstart=dbeng50.exe
ServerTypestServerWantExceptions	WantRowCounts	Left4Top�   TAsaSessionAsaSession2
AutoCommitClientParams?start=dbclient.exe -x tcpip{host=192.168.10.33;ServerPort=5000}CommitOnDisconnectLibraryFile
dbl50t.dllLibraryPathC:\sqlany50\win32LoginDatabasedoc_obrLoginEngineNamefireLoginPasswordsql	LoginUserdbaServerParamsstart=dbeng6.exe
ServerTypestClientWantRowCounts	Left,TopT  	TfrReport	frReport1InitialZoom	pzDefaultPreviewButtonspbZoompbLoadpbSavepbPrintpbFindpbHelppbExit 
StoreInDFM	Left� Top|
ReportForm
m     e      
 \\TANYA\HP �����	   4  �                   ��    ��             Form   ��   x   |  ,     �����	   4  �                   ��    ��         Page1  Form   �J   �   V  ,      B   Band1     o   �  <   9           ���     DialogForm._TestAsaDataSet       ��                  �             �   MasterHeader1     (   �  &   0           ���             ��                  �              2   Memo1  E   /   4      C            ���,       DAT_K    ��             Arial 
            �      ���             �   Memo7  A   �   P      C            ���,      # [DialogForm.TestAsaDataSet."DAT_K"]    ��             Arial 
             �      ���             U   Memo8  �   -   (      C            ���,       FIOK    ��             Arial 
            �      ���             �   Memo9  �   �   �      C            ���,      " [DialogForm.TestAsaDataSet."FIOK"]    ��             Arial 
             �      ���             x   Memo10  -  /   ,      C            ���,       FIOM    ��             Arial 
            �      ���                Memo11  )  �   �      C            ���,      " [DialogForm.TestAsaDataSet."FIOM"]    ��             Arial 
             �      ���             �   Memo14  �  0   8      C            ���,       K_FIOK    ��             Arial 
            �      ���             A   Memo15  �  �   P      C            ���,      $ [DialogForm.TestAsaDataSet."K_FIOK"]    ��             Arial 
             �      ���             �   Memo16    .   <      C            ���,       K_FIOM    ��             Arial 
            �      ���             i   Memo17    �   P      C            ���,      $ [DialogForm.TestAsaDataSet."K_FIOM"]    ��             Arial 
             �      ���             �   Memo18  m  ,   <      C            ���,       N_BRIG    ��             Arial 
            �      ���             �   Memo19  m  �   P      C            ���,      $ [DialogForm.TestAsaDataSet."N_BRIG"]    ��             Arial 
             �      ���           
 TfrAsaDataSet F	   TestAsaDataSet   �         @             �,           ��             Form1.MainAsaSession      % select * from dba.ViewHeaderGostPaket      
 TfrButtonControl �   Button1        K                  ���,          begin    Memo2.Lines.Clear;  Memo3.Lines.Clear;  Memo4.Lines.Clear;  Memo5.Lines.Clear;  Memo6.Lines.Clear;  6  for nCou := 0 to TestAsaDataSet.FieldCount-1 do begin:    Memo2.Lines.Add(TestAsaDataSet.Fields.FieldName[nCou]);0    Memo3.Lines.Add(TestAsaDataSet.Fields[nCou]);=    Memo4.Lines.Add(TestAsaDataSet.Fields.DisplayLabel[nCou]);=    Memo5.Lines.Add(TestAsaDataSet.Fields.DisplayWidth[nCou]);8    Memo6.Lines.Add(TestAsaDataSet.Fields.Visible[nCou]);  end;    end ��              � MS Sans Serif        �  Fill   
 TfrDBLookupControl z   DBLookupComboBox1  �      �                  ���,           ��              � MS Sans Serif        �  TestAsaDataSet  IDENTITY  FIOM 
 TfrMemoControl �   Memo2     "   F   �               ���,           ��              � MS Sans Serif        �     
 TfrButtonControl �   Button2  P      K                  ���,          begin  TestAsaDataSet.Open;   end ��              � MS Sans Serif        �  Open   
 TfrButtonControl j   Button3  �      K                  ���,          begin  TestAsaDataSet.Close;  end ��              � MS Sans Serif        �  Close   
 TfrMemoControl �   Memo4  �   "   F   �               ���,           ��              � MS Sans Serif        �     
 TfrMemoControl t   Memo3  L   "   F   �               ���,           ��              � MS Sans Serif        �     
 TfrMemoControl �   Memo6  (  "   F   �               ���,           ��              � MS Sans Serif        �     
 TfrMemoControl ~   Memo5  �   "   F   �               ���,           ��              � MS Sans Serif        �     
 TfrEditControl    Edit1     �   y                  ���,           ��              � MS Sans Serif        �     
 TfrButtonControl �   Button4  �   �   <                  ���,          begin>  TestAsaDataSet.Fields.DisplayLabel[Edit1.Text] := Edit2.Text; end ��              � MS Sans Serif        �  SetLabel   
 TfrButtonControl �   Button6  �   �   <                  ���,          begin\  TestAsaDataSet.Fields.Visible[Edit1.Text] := not TestAsaDataSet.Fields.Visible[Edit1.Text]; end ��              � MS Sans Serif        � 
 SetVisible   
 TfrButtonControl �   Button8  �   �   <                  ���,          begin>  TestAsaDataSet.Fields.DisplayWidth[Edit1.Text] := Edit2.Text; end ��              � MS Sans Serif        �  SetWidth   
 TfrEditControl H   Edit2     �   y                  ���,           ��              � MS Sans Serif        �     
 TfrButtonControl �   Button5    �   K                  ���,           ��              � MS Sans Serif        �  Next  
 TfrAsaStoredProc �   AsaStoredProc1 �           @             �,           ��             Form1.AsaSession2 
 dba.test_p        
 Edit1.Text     '10.10.2000'                                 
 Edit2.Text 
 TfrButtonControl �   Button7  }  (   K                  ���,          begin  AsaStoredProc1.ExecProc;4  Label1.Caption := AsaStoredProc1.GetOutParam('c2');4  Label2.Caption := AsaStoredProc1.GetOutParam('d2');4  Label3.Caption := AsaStoredProc1.GetOutParam('n2');4  Label4.Caption := AsaStoredProc1.GetOutParam('i2');1  Label5.Caption := AsaStoredProc1.GetOutParam(6); end ��              � MS Sans Serif        �  SP-OUT   
 TfrLabelControl    Label1  �  H                     ���,           ��              � MS Sans Serif        �   Label  
 TfrLabelControl �   Label2  �  X                     ���,           ��              � MS Sans Serif        �   Label  
 TfrLabelControl :   Label3  �  h                     ���,           ��              � MS Sans Serif        �   Label  
 TfrLabelControl �   Label4  �  x                     ���,           ��              � MS Sans Serif        �   Label  
 TfrLabelControl V   Label5  �  �                     ���,           ��              � MS Sans Serif        �   Label  ���              TfrDesignerfrDesigner1LeftTopl  TfrASAComponentsfrASAComponents1LeftXTop�   TfrBDEComponentsfrBDEComponents1Left� Top�   TfrDialogControlsfrDialogControls1Left Top4  TAsaStoredProcAsaStoredProc1SessionMainAsaSessionLeft<Top�   TDataSourceDataSource1DataSetOutAsaDatasetLeft� Top,   
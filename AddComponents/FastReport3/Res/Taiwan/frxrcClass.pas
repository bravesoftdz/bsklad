
{******************************************}
{                                          }
{             FastReport v3.0              }
{         Language resource file           }
{                                          }
{         Copyright (c) 1998-2005          }
{         by Alexander Tzyganenko,         }
{            Fast Reports Inc.             }
{                                          }
{******************************************}

unit frxrcClass;

interface

procedure frAddClassesRes;


implementation

uses frxRes;


procedure frAddClassesRes;
begin
  with frxResources do
  begin
    Add('TfrxPreviewForm',
      'Caption=預覽' + #13#10 +
      'PrintB.Caption=列印' + #13#10 +
      'PrintB.Hint=列印' + #13#10 +
      'OpenB.Caption=開啟' + #13#10 +
      'OpenB.Hint=開啟' + #13#10 +
      'SaveB.Caption=儲存' + #13#10 +
      'SaveB.Hint=儲存' + #13#10 +
      'ExportB.Caption=匯出' + #13#10 +
      'ExportB.Hint=匯出' + #13#10 +
      'FindB.Caption=尋找' + #13#10 +
      'FindB.Hint=尋找' + #13#10 +
      'ZoomWholePageB.Caption=整頁' + #13#10 +
      'ZoomWholePageB.Hint=整頁' + #13#10 +
      'ZoomPageWidthB.Caption=頁寬' + #13#10 +
      'ZoomPageWidthB.Hint=頁寬' + #13#10 +
      'Zoom100B.Caption=100%' + #13#10 +
      'Zoom100B.Hint=100%' + #13#10 +
      'Zoom50B.Caption=兩頁' + #13#10 +
      'Zoom50B.Hint=兩頁' + #13#10 +
      'ZoomCB.Hint=顯示比例' + #13#10 +
      'PageSettingsB.Caption=頁面設定' + #13#10 +
      'PageSettingsB.Hint=頁面設定' + #13#10 +
      'OutlineB.Caption=綱要' + #13#10 +
      'OutlineB.Hint=綱要' + #13#10 +
      'HandToolB.Caption=拖動' + #13#10 +
      'HandToolB.Hint=拖動' + #13#10 +
      'ZoomToolB.Caption=縮放' + #13#10 +
      'ZoomToolB.Hint=縮放' + #13#10 +
      'NewPageB.Caption=新增頁' + #13#10 +
      'NewPageB.Hint=新增頁' + #13#10 +
      'DelPageB.Caption=刪除頁' + #13#10 +
      'DelPageB.Hint=刪除頁' + #13#10 +
      'DesignerB.Caption=編輯頁' + #13#10 +
      'DesignerB.Hint=編輯頁' + #13#10 +
      'FirstB.Caption=首頁' + #13#10 +
      'FirstB.Hint=首頁' + #13#10 +
      'PriorB.Caption=前頁' + #13#10 +
      'PriorB.Hint=前頁' + #13#10 +
      'NextB.Caption=次頁' + #13#10 +
      'NextB.Hint=次頁' + #13#10 +
      'LastB.Caption=末頁' + #13#10 +
      'LastB.Hint=末頁' + #13#10 +
      'CancelB.Caption=結束' + #13#10 +
      'PageE.Hint=頁數' + #13#10 +
      '');
    Add('zmPageWidth', '頁寬');
    Add('zmWholePage', '整頁');

    Add('TfrxPrintDialog',
      'Caption=列印' + #13#10 +
      'Label12.Caption=印表機   ' + #13#10 +
      'DescrL.Caption=輸入頁數/文件範圍，以逗號分隔(例如:1,3,5-12)' + #13#10 +
      'Label1.Caption=頁 ' + #13#10 +
      'CopiesL.Caption=份數' + #13#10 +
      'CollateL.Caption=自動分頁(&T)' + #13#10 +
      'Label2.Caption=份數(&C)   ' + #13#10 +
      'PrintL.Caption=列印' + #13#10 +
      'TypeL.Caption=機型:' + #13#10 +
      'WhereL.Caption=位置:' + #13#10 +
      'OkB.Caption=確定' + #13#10 +
      'CancelB.Caption=取消' + #13#10 +
      'PropButton.Caption=內容(&P)' + #13#10 +
      'AllRB.Caption=全部(&A)' + #13#10 +
      'CurPageRB.Caption=本頁(&E)' + #13#10 +
      'PageNumbersRB.Caption=頁數(&G):' + #13#10 +
      'FileCB.Caption=輸出至檔案(&L)' + #13#10 +
      'ReverseCB.Caption=反序列印(&V)' + #13#10 +
      '');
    Add('ppAll', '範圍內全部頁面');
    Add('ppOdd', '奇數頁');
    Add('ppEven', '偶數頁');

    Add('TfrxSearchDialog',
      'Caption=尋找文字' + #13#10 +
      'TextL.Caption=尋找目標:' + #13#10 +
      'SearchL.Caption=選項   ' + #13#10 +
      'TopCB.Caption=起點' + #13#10 +
      'CaseCB.Caption=區分大小寫' + #13#10 +
      'OkB.Caption=確定' + #13#10 +
      'CancelB.Caption=取消' + #13#10 +
      '');

    Add('TfrxPageSettingsForm',
      'Caption=頁面設定' + #13#10 +
      'WidthL.Caption=寬度' + #13#10 +
      'HeightL.Caption=高度' + #13#10 +
      'SizeL.Caption=紙張大小   ' + #13#10 +
      'OrientationL.Caption=列印方向   ' + #13#10 +
      'LeftL.Caption=左' + #13#10 +
      'TopL.Caption=上' + #13#10 +
      'RightL.Caption=右' + #13#10 +
      'BottomL.Caption=下' + #13#10 +
      'MarginsL.Caption=邊界   ' + #13#10 +
      'PortraitRB.Caption=直印' + #13#10 +
      'LandscapeRB.Caption=橫印' + #13#10 +
      'cmL1.Caption=cm' + #13#10 +
      'cmL2.Caption=cm' + #13#10 +
      'cmL3.Caption=cm' + #13#10 +
      'cmL4.Caption=cm' + #13#10 +
      'cmL5.Caption=cm' + #13#10 +
      'cmL6.Caption=cm' + #13#10 +
      'OKB.Caption=確定' + #13#10 +
      'CancelB.Caption=取消' + #13#10 +
      'OtherL.Caption=其它   ' + #13#10 +
      'ApplyToCurRB.Caption=套用本頁' + #13#10 +
      'ApplyToAllRB.Caption=套用全部頁面' + #13#10 +
      '');

    Add('TfrxDMPExportDialog',
      'Caption=列印t' + #13#10 +
      'PrinterL.Caption=印表機   ' + #13#10 +
      'PagesL.Caption=頁   ' + #13#10 +
      'CopiesL.Caption=份數   ' + #13#10 +
      'CopiesNL.Caption=份數' + #13#10 +
      'DescrL.Caption=輸入頁數/文件範圍，以逗號分隔(例如:1,3,5-12)' + #13#10 +
      'OptionsL.Caption=選項   ' + #13#10 +
      'EscL.Caption=Escape 指令   ' + #13#10 +
      'OK.Caption=確認' + #13#10 +
      'Cancel.Caption=取消' + #13#10 +
      'SaveToFileCB.Caption=列印至檔案' + #13#10 +
      'AllRB.Caption=全部' + #13#10 +
      'CurPageRB.Caption=本頁' + #13#10 +
      'PageNumbersRB.Caption=頁數:' + #13#10 +
      'PageBreaksCB.Caption=分頁' + #13#10 +
      'OemCB.Caption=OEM 頁碼' + #13#10 +
      'PseudoCB.Caption=擴充的圖形字元' + #13#10 +
      'SaveDialog1.Filter=印表機檔 (*.prn)|*.prn' + #13#10 +
      '');

    Add('TfrxProgress',
      'CancelB.Caption=取R�' + #13#10 +
      '');

    Add('mbConfirm', '確認');
    Add('mbError', '錯誤');
    Add('mbInfo', '資訊');
    Add('xrCantFindClass', '不明的類別');
    Add('prVirtual', '虛擬');
    Add('prDefault', '預設');
    Add('prCustom', '自定');
    Add('enUnconnHeader', '未連接至表首');
    Add('enUnconnGroup', '群組未連接至資料庫');
    Add('enUnconnGFooter', '沒有群組表尾er for');
    Add('enBandPos', 'Band的位置錯誤:');
    Add('dbNotConn', '資料集 %s 未連接至資料庫');
    Add('dbFldNotFound', '欄位不存在:');
    Add('clDSNotIncl', '(資料集未加入至 Report.DataSets)');
    Add('clUnknownVar', '未知的變數或資料庫欄位:');
    Add('clScrError', 'Script 錯誤在 %s: %s');
    Add('clDSNotExist', '資料集 "%s" 不存在');
    Add('clErrors', '發生下列的錯誤:');
    Add('clExprError', '運算式錯誤');
    Add('clFP3files', '報表檔');
    Add('clSaving', '儲存檔案...');
    Add('clCancel', '取消');
    Add('clClose', '結束');
    Add('clPrinting', '列印頁');
    Add('clLoading', '載入檔案...');
    Add('clPageOf', '頁 %d / %d');
    Add('clFirstPass', '第一次處理過程: 頁 ');
    Add('clNoPrinters', '在你的系統沒有安裝印表機');
    Add('clDecompressError', 'Stream 解壓縮發生錯誤');

    Add('prRunningFirst', 'First pass: page %d');
    Add('prRunning', 'Preparing page %d');
    Add('prPrinting', 'Printing page %d');
    Add('prExporting', 'Exporting page %d');
    Add('uCm', 'cm');
    Add('uInch', 'in');
    Add('uPix', 'px');
    Add('uChar', 'chr');
  end;
end;


initialization
  frAddClassesRes;

end.

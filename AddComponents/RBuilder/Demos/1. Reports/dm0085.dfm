�
 TFRM0085 0�  TPF0Tfrm0085frm0085Left1Top� Width,Height� CaptionMemos: Side by Side + StackedColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	ScaledPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidth=HeightCaptionData Access  TLabelLabel2Left� TopWidth HeightCaptionReport  TLabelLabel3Left� TopAWidthaHeightCaptionTo Edit, double-click  TTable
tblBioLifeActive	DatabaseNameDBDEMOS	TableName
BIOLIFE.DBLeftTop   TDataSource	dsBioLifeDataSet
tblBioLifeLeft)Top   TppBDEPipelineppBDEPipeline1
DataSource	dsBioLifeUserNameBDEPipeline1LeftKTop   	TppReport	ppReport1AutoStopDataPipelineppBDEPipeline1PrinterSetup.BinNameDefaultPrinterSetup.DocumentName	ppReport1PrinterSetup.PaperNameLetter 8 � x 11 inPrinterSetup.PrinterNameDefaultPrinterSetup.mmMarginBottom�PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeightiC PrinterSetup.mmPaperWidth\K UserNameReport
DeviceTypeScreenLeft� TopVersion5.0mmColumnWidth  TppHeaderBandppReport1HeaderBand1mmBottomOffset mmHeightYHmmPrintPosition  TppLabelppReport1Label1UserNameppReport1Label1CaptionMemos: Side by Side + StackedFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size
Font.StylefsBoldfsItalic Transparent	mmHeight�mmLeft+mmTop+mmWidth
s BandType   TppLineppReport1Line1UserNameppReport1Line1	Pen.StylepsDashDotDot	Pen.WidthWeight       �@mmHeight�mmLeft	mmTop>&mmWidth_} BandType    TppDetailBandppReport1DetailBand1PrintHeight	phDynamicmmBottomOffset mmHeight�  mmPrintPosition  	TppRegionppReport1Region1UserNameppReport1Region1Brush.StylebsClearCaptionppReport1Region1ParentWidthShiftRelativeToppReport1Region2Stretch	Transparent	mmHeightZgmmLeft mmTop�nmmWidth� BandTypemmBottomOffset�mmOverFlowOffset mmStopPosition  	TppDBMemoppReport1DBMemo2UserNameppReport1DBMemo2CharWrapColorclAqua	DataFieldNotesDataPipelineppBDEPipeline1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameArial	Font.Size

Font.Style Stretch	Transparent	mmHeight�SmmLeftz�  mmTop�vmmWidth�L BandTypemmBottomOffset�mmOverFlowOffset�mmStopPosition 	mmLeading    	TppRegionppReport1Region2UserNameppReport1Region2Brush.StylebsClearCaptionppReport1Region2ParentWidthStretch	Transparent	mmHeight�[mmLeft mmTop4mmWidth� BandTypemmBottomOffset�mmOverFlowOffset mmStopPosition  TppMemoppReport1Memo1UserNameppReport1Memo1CaptionppReport1Memo1CharWrapColorclYellowFont.CharsetDEFAULT_CHARSET
Font.ColorclBlue	Font.NameTimes New Roman	Font.Size

Font.Style Lines.Strings Anatomy of a ReporBuilder Report   fThe goal of this section is to provide a brief introduction to the anatomy of a ReportBuilder Report.  �  A ReportBuilder report is a collection of objects which describe how a report should be rendered to an output device (screen, printer, file, etc.) A simple report normally consists of a Header, Detail, and Footer band, each of which contain printable objects such as Labels, DBText fields, etc. Each report band defines a rectangular print area. The Header band prints at the top of each page, the Footer band prints at the bottom of each page, and the Detail band prints once for each record in the data set.   c  Report bands and the objects they contain can be easily created and configured by using the Piparti Report Designer. Alternatively, reports can be created and/or modified programmatically by writing Object Pascal code. You can also write code for event handlers that control how, where, when, and what objects print by setting various object properties.   �Always keep in mind that the objects that define the report are owned by the form on which the report resides and therefore can be referenced by name in an event handler attached to the report, or%  the bands and components contained therein. For example, in the OnBeforePrint event of the DetailBand you can access any object in the DetailBand (or any object in the entire report for that matter.) Of course, sometimes you may want to loop through all of the objects in a Band or all of the bands in a Report. This where the Bands[] array property of TppReport and the Objects[] array property of TppBand come in handy. To determine the total number of items in each array, use the value of the BandCount and ObjectCount properties respectively.     Stretch	Transparent	mmHeight?EmmLeftpmmTop�mmWidth�N BandTypemmBottomOffset�mmOverFlowOffset�	mmStopPosition 	mmLeading   TppMemoppReport2Memo1UserNameppReport2Memo1CaptionppReport2Memo1CharWrapColorclGreenFont.CharsetDEFAULT_CHARSET
Font.ColorclLime	Font.NameArial	Font.Size

Font.StylefsBoldfsItalic Lines.StringsWhat's new in ReportBuilder 3.0  Sub-Reports 1* Handles all 'multiple detail band' requirements3* Allows free-form side-by-side printing of reportsP* Allows each page of report to have different printer setting or even print job  Print Preview Enhancements * ZoomPercentage'* Multiple Previewers for single Report* Modal Previewing* Instant Previewing* Cancel during Preview Report Enhancements * Margins property2* Precision (Band heights and component positions) Band Enhancements 9* PrintPosition property (allows fixed position for band)(* PrintCount property (for detail bands)G* BottomOffset property (allows white space below band to be specified)  Engine Enhancements ,* PassSetting property (OnePass or TwoPass )5* Instant Page Generation (allows instant previewing)3* NewPage method (allows you to page break in code)  Component Enhancements * ShiftRelativeTo property* StretchRelativeTo property6* ReprintOnOverflow property (for static stretchables)2* ShiftWithBand property (for static stretchables)  Group Enhancements * OnCheckBreakValue event"* ReprintOnSubsequentPage property$* ReprintOnSubsequentColumn property  Data Access Enhancements * OpenDataSource property* CloseDataSource property* Data traversal properties Stretch	Transparent	mmHeightPGmmLeft?� mmTopymmWidth�L BandTypemmBottomOffset�mmOverFlowOffset�	mmStopPosition 	mmLeading     TppFooterBandppReport1FooterBand1mmBottomOffset mmHeight�3mmPrintPosition     
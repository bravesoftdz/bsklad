object REPORT_TDM_ITOG_NEW: TREPORT_TDM_ITOG_NEW
  Left = 185
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '����� �������� ����� �� �������� �� ������-���������'
  ClientHeight = 490
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 4
    Top = 38
    Width = 85
    Height = 13
    Caption = '������ ������� :'
  end
  object BtnDic: TSpeedButton
    Left = 506
    Top = 34
    Width = 23
    Height = 22
    Hint = '������� ������ ������� �� ��������'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555555000000005555555099999990055555099999999010555001111111101
      105500000000000011055080FFFFFF0F01105500FFFFFF0FF0105550FF800007
      7F005555000777777F005555500000000F05555550FFFFFF0F05555550F000FF
      0005555550FFFFFF0555555550FF800005555555550005555555}
    OnClick = BtnDicClick
  end
  object Label1: TLabel
    Left = 36
    Top = 12
    Width = 53
    Height = 13
    Caption = '�� ����� :'
  end
  object BtnDynDic: TSpeedButton
    Left = 479
    Top = 34
    Width = 23
    Height = 22
    Hint = '������� ������������ ������ �������'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555550000000055555550AAAAAAA00555550AAAAAAAA020555002222222202
      205500000000000022055080FFFFFF0F02205500FFFFFF0FF0205550FF800007
      7F005555000777777F005555500000000F05555550FFFFFF0F05555550F000FF
      0005555550FFFFFF0555555550FF800005555555550005555555}
    OnClick = BtnDynDicClick
  end
  object Label9: TLabel
    Left = 18
    Top = 88
    Width = 64
    Height = 13
    Caption = '����������'
  end
  object Label8: TLabel
    Left = 244
    Top = 10
    Width = 105
    Height = 15
    AutoSize = False
    Caption = '����� - ��������:'
  end
  object Label2: TLabel
    Left = 2
    Top = 64
    Width = 95
    Height = 13
    Caption = '��������� ����� :'
  end
  object Label_Mes1: TLabel
    Left = 180
    Top = 66
    Width = 20
    Height = 13
    Caption = '���'
  end
  object BtnOk: TButton
    Left = 546
    Top = 4
    Width = 75
    Height = 25
    Caption = '���������'
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object TW: TEdit
    Left = 108
    Top = 34
    Width = 365
    Height = 21
    TabOrder = 1
    Text = 'TW'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 140
    Width = 703
    Height = 350
    Align = alBottom
    DataSource = DsReport
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TW_SALER_NAME'
        Title.Alignment = taCenter
        Title.Caption = '�����-��������'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ost'
        Title.Alignment = taCenter
        Title.Caption = '������� � ���.'
        Width = 127
        Visible = True
      end>
  end
  object BtnPrint: TButton
    Left = 626
    Top = 4
    Width = 75
    Height = 25
    Caption = '������'
    Enabled = False
    TabOrder = 3
    OnClick = BtnPrintClick
  end
  object DT: TDateEdit
    Left = 108
    Top = 8
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object btnExcel: TButton
    Left = 583
    Top = 69
    Width = 114
    Height = 25
    Caption = '��������� � Excel'
    TabOrder = 5
    OnClick = btnExcelClick
  end
  object POST_NAME: TEdit
    Left = 208
    Top = 84
    Width = 265
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '��� ����������'
  end
  object DYNPOST: TBitBtn
    Left = 479
    Top = 83
    Width = 24
    Height = 22
    Hint = '������� ������� �� ����������� ��������� (F10)'
    TabOrder = 7
    TabStop = False
    OnClick = DYNPOSTClick
    Glyph.Data = {
      CA020000424DCA02000000000000420000002800000012000000120000000100
      10000300000088020000120B0000120B00000000000000000000007C0000E003
      00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      000000000000FF7FFF7FFF7FFF7FFF7F00001863186318631863186318631863
      186318631863186318630000FF7FFF7FFF7FFF7F000018630000000000000000
      000000000000000000000000186318630000FF7FFF7FFF7FFF7F000018630000
      F043E61BEA2BEB2FE71FF5570000E0030000186318630000FF7FFF7F00000000
      00000000000000000000000000000000E20B0000EB2F000018630000FF7FFF7F
      0000F557E107E413EB2FEC33EC33EC33E61BE61B0000EC330000000018630000
      FF7FFF7FFF7F0000FF7F00000000FF7F00000000FF7FFF7FFF7F0000FF7F0000
      18630000FF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
      FF7F000018630000FF7FFF7F000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000000000000000FF7FFF7F0000E00300000000FF7F000000000000
      00000000FF7F000000000000E0030000FF7FFF7F0000E0030000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000E0030000FF7FFF7F000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F00000000FF7FFF7FFF7FFF7F
      0000ED37000000000000F34F00000000E927F4530000FF7F0000FF7FFF7FFF7F
      FF7FFF7F0000EB2FE003E003E003E003E003E003E107EF3F000000000000FF7F
      FF7FFF7FFF7FFF7F0000F24BEC33EF3F0000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F}
  end
  object BTN_POST: TBitBtn
    Left = 505
    Top = 83
    Width = 24
    Height = 22
    Hint = '������� ������� �� ����������� ��������� (F10)'
    TabOrder = 8
    TabStop = False
    OnClick = BTN_POSTClick
    Glyph.Data = {
      EE000000424DEE0000000000000076000000280000000F0000000F0000000100
      0400000000007800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555008000000000085505080FFFFFF0505500000000000F0F5500FFFFFFFFF0F
      055050F00F00FFF0F55050FFFFFFFFF0F550000FFFFFFFFF00000900F00000F0
      0900090FFFFFFFFF0900000F0000F00F0000550FFFFFFFFF0550550FFF000000
      0000555000FFFFFFFF005555550000000000}
  end
  object Panel3: TPanel
    Left = 92
    Top = 84
    Width = 109
    Height = 25
    BevelOuter = bvNone
    TabOrder = 9
    object post1: TRadioButton
      Left = 4
      Top = 4
      Width = 41
      Height = 17
      Caption = '���'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object post2: TRadioButton
      Left = 52
      Top = 4
      Width = 57
      Height = 17
      Caption = '�����:'
      TabOrder = 1
    end
  end
  object FRM: TRxDBLookupCombo
    Left = 368
    Top = 10
    Width = 161
    Height = 20
    DropDownCount = 8
    EscapeClear = False
    LookupField = 'FRM_ID'
    LookupDisplay = 'FRM_NAME'
    LookupSource = DsFrm
    TabOrder = 10
  end
  object Mes1: TRxSpinEdit
    Left = 110
    Top = 64
    Width = 67
    Height = 21
    Alignment = taRightJustify
    TabOrder = 11
  end
  object ReportTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DataModule1.IBDatabase1
    AutoStopAction = saNone
    Left = 438
    Top = 222
  end
  object QueryRep1: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = ReportTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 438
    Top = 276
  end
  object MemReport: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'ost'
        DataType = ftFloat
      end
      item
        Name = 'TW_SALER_NAME'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'TW_SALER_ID'
        DataType = ftInteger
      end>
    Left = 548
    Top = 276
    object MemReportost: TFloatField
      FieldName = 'ost'
      DisplayFormat = '#0.00 ���'
    end
    object MemReportTW_SALER_NAME: TStringField
      FieldName = 'TW_SALER_NAME'
      Size = 128
    end
    object MemReportTW_SALER_ID: TIntegerField
      FieldName = 'TW_SALER_ID'
    end
  end
  object DsReport: TDataSource
    DataSet = MemReport
    Left = 548
    Top = 326
  end
  object QueryRep2: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = ReportTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 436
    Top = 326
  end
  object DualListDialog1: TDualListDialog
    Sorted = False
    Label1Caption = '&���� ���������'
    Label2Caption = '&���� ��� �������'
    HelpContext = 0
    Left = 154
    Top = 308
  end
  object DualListDialog2: TDualListDialog
    Sorted = False
    Label1Caption = '&���� ���������'
    Label2Caption = '&���� ��� �������'
    HelpContext = 0
    Left = 222
    Top = 312
  end
  object WorkTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DataModule1.IBDatabase1
    AutoStopAction = saNone
    Left = 62
    Top = 150
  end
  object QueryWork: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = ReportTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 62
    Top = 200
  end
  object QueryWork2: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = WorkTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 60
    Top = 250
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    OnGetValue = frReport1GetValue
    Left = 200
    Top = 194
    ReportForm = {
      18000000B9070000180000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F000080DC000000780000007C0100002C
      010000040000000200D60000000B004D61737465724461746131000201000000
      00B8000000F6020000100000003000050001000000000000000000DBDBDB0000
      0000000C0066724442446174615365743100000000000000FFFF000000000002
      000000010000000000000001000000C800000014000000010000000000000200
      440100000E005265706F727453756D6D6172793100020100000000F0000000F6
      020000120000003000010001000000000000000000DBDBDB0000000000000000
      000000000000FFFF000000000002000000010000000000000001000000C80000
      0014000000010000000000000200B00100000C005265706F72745469746C6531
      0002010000000058000000F60200004A00000030000000010000000000000000
      00DBDBDB0000000000000000000000000000FFFF000000000002000000010000
      000000000001000000C8000000140000000100000000000002001C0200000C00
      47726F7570466F6F746572310002010000000058010000F60200001000000030
      00110001000000000000000000FFFFFF1F00000000000000000000000000FFFF
      000000000002000000010000000000000001000000C800000014000000010000
      000000000200A30200000C0047726F757048656164657231000201000000002C
      010000F6020000000000003000100001000000000000000000FFFFFF1F000000
      001B005B4D656D5265706F72742E2254575F53414C45525F4E414D45225D0000
      0000000000FFFF000000000002000000010000000000000001000000C8000000
      140000000100000000000000003203000005004D656D6F3200020024020000B8
      000000BC0000001000000043000F0001000000000000000000FFFFFF002E0201
      01000000010011005B4D656D5265706F72742E226F7374225D00000000FFFF00
      000000000200000001000000000500417269616C000900000000000000000001
      000000CC00020000000000FFFFFF0000000002000000000000000000CB030000
      05004D656D6F3500020014000000B8000000100200001000000043000F000100
      0000000000000000FFFFFF002E02000000000001001B005B4D656D5265706F72
      742E2254575F53414C45525F4E414D45225D00000000FFFF0000000000020000
      0001000000000500417269616C000900000000000000000000000000CC000200
      00000000FFFFFF00000000020000000000000000005004000005004D656D6F38
      00020014000000F0000000100200001200000043000F00010000000000000000
      00808080002E02000000000001000700C8F2EEE3EE203A00000000FFFF000000
      00000200000001000000000500417269616C000A0000000200FFFFFF00000000
      00CC00020000000000FFFFFF0000000002000000000000000000E70400000600
      4D656D6F313000020024020000F0000000BC0000001200000043000F00010000
      00000000000000808080002E020101000000010018005B53554D285B4D656D52
      65706F72742E226F7374225D295D00000000FFFF000000000002000000010000
      00000500417269616C000A0000000200FFFFFF0001000000CC00020000000000
      FFFFFF00000000020000000000000000007405000006004D656D6F3131000200
      1000000058000000D40200003800000043000F00010000000000000000008080
      80002E02000000000001000E005B5245504F52545F5449544C455D00000000FF
      FF00000000000200000001000000000500417269616C000A0000000200FFFFFF
      0002000000CC00020000000000FFFFFF00000000020000000000000000000106
      000006004D656D6F31320002001400000090000000100200001200000043000F
      0001000000000000000000FFFFFF002E02000000000001000E00D4E8F0ECE02D
      EFF0EEE4E0E2E5F600000000FFFF000000000002000000010000000005004172
      69616C000A00000002000000000002000000CC00020000000000FFFFFF000000
      00020000000000000000008E06000006004D656D6F3135000200240200009000
      0000BC0000001200000043000F0001000000000000000000FFFFFF002E020000
      00000001000E00CEF1F2E0F2EEEA20E220F0F3E12E00000000FFFF0000000000
      0200000001000000000500417269616C000900000002000000000002000000CC
      00020000000000FFFFFF00000000020000000000000000001307000005004D65
      6D6F360002001400000059010000100200001000000043000F00010000000000
      00000000C8FDCD002E02000000000001000700C8F2EEE3EE203A00000000FFFF
      00000000000200000001000000000500417269616C0009000000000000000000
      00000000CC00020000000000FFFFFF0000000002000000000000000000AA0700
      0006004D656D6F31330002002402000059010000BC0000001000000043000F00
      01000000000000000000C8FDCD002E020101000000010018005B53554D285B4D
      656D5265706F72742E226F7374225D295D00000000FFFF000000000002000000
      01000000000500417269616C000900000000000000000001000000CC00020000
      000000FFFFFF000000000200000000000000FEFEFF0000000000000000000000
      00}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = MemReport
    Left = 278
    Top = 196
  end
  object MemFrm: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'FRM_ID'
        DataType = ftInteger
      end
      item
        Name = 'FRM_NAME'
        DataType = ftString
        Size = 128
      end>
    Left = 56
    Top = 375
    object MemFrmFRM_ID: TIntegerField
      FieldName = 'FRM_ID'
    end
    object MemFrmFRM_NAME: TStringField
      FieldName = 'FRM_NAME'
      Size = 128
    end
  end
  object DsFrm: TDataSource
    DataSet = MemFrm
    Left = 110
    Top = 379
  end
end

object REPORT_NAC_ITOG: TREPORT_NAC_ITOG
  Left = 159
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '�������� ����� � ������� �� ����������'
  ClientHeight = 436
  ClientWidth = 752
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
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 67
    Height = 13
    Caption = '�� ������ � :'
  end
  object Label2: TLabel
    Left = 254
    Top = 34
    Width = 18
    Height = 13
    Caption = '�� :'
  end
  object Label3: TLabel
    Left = 40
    Top = 54
    Width = 85
    Height = 13
    Caption = '������ ������� :'
  end
  object Label4: TLabel
    Left = 6
    Top = 78
    Width = 119
    Height = 13
    Caption = '��������� ���������:'
  end
  object Label5: TLabel
    Left = 4
    Top = 130
    Width = 121
    Height = 13
    Caption = '��������� ��������� :'
  end
  object BtnDic: TSpeedButton
    Left = 582
    Top = 50
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
  object SpeedButton1: TSpeedButton
    Left = 582
    Top = 74
    Width = 23
    Height = 22
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007777747474747477700000007777
      7477777777777000000077774447777774777000000077777477777777777000
      00007777777777777477700000007770000007700000000000007000FBFB0000
      FBFB0000000070F0000000F000000000000070FFFFF070FFFFF07000000070F8
      88F070F888F07000000070FFFFF070FFFFF07000000070F888F070F888F07000
      000070FFFFF070FFFFF070000000700000007000000070000000777777777777
      777770000000}
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 582
    Top = 126
    Width = 23
    Height = 22
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007777747474747477700000007777
      7477777777777000000077774447777774777000000077777477777777777000
      00007777777777777477700000007770000007700000000000007000FBFB0000
      FBFB0000000070F0000000F000000000000070FFFFF070FFFFF07000000070F8
      88F070F888F07000000070FFFFF070FFFFF07000000070F888F070F888F07000
      000070FFFFF070FFFFF070000000700000007000000070000000777777777777
      777770000000}
    OnClick = SpeedButton2Click
  end
  object BtnDynDic: TSpeedButton
    Left = 557
    Top = 50
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
  object Label8: TLabel
    Left = 80
    Top = 2
    Width = 45
    Height = 15
    AutoSize = False
    Caption = '����� :'
  end
  object BtnOK: TButton
    Left = 666
    Top = 6
    Width = 75
    Height = 25
    Caption = '���������'
    TabOrder = 0
    OnClick = BtnOKClick
  end
  object DT1: TDateEdit
    Left = 128
    Top = 28
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object DT2: TDateEdit
    Left = 276
    Top = 28
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object TW: TEdit
    Left = 128
    Top = 50
    Width = 425
    Height = 21
    TabOrder = 3
    Text = 'TW'
  end
  object Edit1: TEdit
    Left = 128
    Top = 74
    Width = 455
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 128
    Top = 126
    Width = 455
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 169
    Width = 752
    Height = 267
    Align = alBottom
    DataSource = DsReport
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MEN_FULL'
        Title.Alignment = taCenter
        Title.Caption = '��������'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typ_full'
        Title.Alignment = taCenter
        Title.Caption = '������'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nac'
        Title.Alignment = taCenter
        Title.Caption = '������� � ���.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seb'
        Title.Alignment = taCenter
        Title.Caption = '�������������, ���'
        Visible = True
      end>
  end
  object BtnPrint: TButton
    Left = 666
    Top = 30
    Width = 75
    Height = 25
    Caption = '������'
    Enabled = False
    TabOrder = 7
    OnClick = BtnPrintClick
  end
  object Check_spis: TCheckBox
    Left = 128
    Top = 148
    Width = 161
    Height = 17
    Caption = '��������� ���� ��������'
    TabOrder = 8
  end
  object PSORT: TCheckBox
    Left = 128
    Top = 96
    Width = 157
    Height = 17
    Caption = '�������� �� �����������'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object STORNO: TCheckBox
    Left = 292
    Top = 96
    Width = 173
    Height = 17
    Caption = '�������� �� ������ �������'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object btnExcel: TButton
    Left = 632
    Top = 99
    Width = 109
    Height = 25
    Caption = '��������� � Excel'
    Enabled = False
    TabOrder = 11
    OnClick = btnExcelClick
  end
  object FRM: TRxDBLookupCombo
    Left = 129
    Top = 2
    Width = 224
    Height = 20
    DropDownCount = 8
    EscapeClear = False
    LookupField = 'FRM_ID'
    LookupDisplay = 'FRM_NAME'
    LookupSource = DsFrm
    TabOrder = 12
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
        Name = 'MEN_ID'
        DataType = ftInteger
      end
      item
        Name = 'MEN_FULL'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'typ'
        DataType = ftInteger
      end
      item
        Name = 'typ_full'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'nac'
        DataType = ftFloat
      end
      item
        Name = 'seb'
        DataType = ftFloat
      end>
    Left = 548
    Top = 276
    object MemReportMEN_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'MEN_ID'
    end
    object MemReportMEN_FULL: TStringField
      DisplayWidth = 30
      FieldName = 'MEN_FULL'
      Size = 254
    end
    object MemReporttyp: TIntegerField
      DisplayWidth = 12
      FieldName = 'typ'
    end
    object MemReporttyp_full: TStringField
      DisplayWidth = 19
      FieldName = 'typ_full'
      Size = 32
    end
    object MemReportnac: TFloatField
      DisplayWidth = 12
      FieldName = 'nac'
      DisplayFormat = '#0.00 ���'
    end
    object MemReportseb: TFloatField
      FieldName = 'seb'
      DisplayFormat = '#0.00 ���'
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
    Top = 174
  end
  object QueryWork: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = ReportTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 66
    Top = 248
  end
  object QueryWork2: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = WorkTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 48
    Top = 290
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
      18000000E3080000180000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F000080DC000000780000007C0100002C
      010000040000000200D60000000B004D61737465724461746131000201000000
      00C4000000F6020000100000003000050001000000000000000000DBDBDB0000
      0000000C0066724442446174615365743100000000000000FFFF000000000002
      000000010000000000000001000000C800000014000000010000000000000200
      440100000E005265706F727453756D6D617279310002010000000030010000F6
      020000120000003000010001000000000000000000DBDBDB0000000000000000
      000000000000FFFF000000000002000000010000000000000001000000C80000
      0014000000010000000000000200B00100000C005265706F72745469746C6531
      0002010000000024000000F60200001400000031000000010000000000000000
      00DBDBDB0000000000000000000000000000FFFF000000000002000000010000
      000000000001000000C8000000140000000100000000000002001B0200000B00
      50616765486561646572310002010000000080000000F6020000120000003000
      020001000000000000000000FFFFFF1F00000000000000000000000000FFFF00
      0000000002000000010000000000000001000000C80000001400000001000000
      0000000000AA02000005004D656D6F3200020038010000C40000005400000010
      00000043000F0001000000000000000000FFFFFF002E02010100000001001100
      5B4D656D5265706F72742E226E6163225D00000000FFFF000000000002000000
      01000000000500417269616C000900000000000000000001000000CC00020000
      000000FFFFFF00000000020000000000000000003E03000005004D656D6F3400
      0200C8000000C4000000700000001000000043000F0001000000000000000000
      FFFFFF002E020000000000010016005B4D656D5265706F72742E227479705F66
      756C6C225D00000000FFFF00000000000200000001000000000500417269616C
      000900000000000000000000000000CC00020000000000FFFFFF000000000200
      0000000000000000D203000005004D656D6F3500020014000000C4000000B400
      00001000000043000F0001000000000000000000FFFFFF002E02000000000001
      0016005B4D656D5265706F72742E224D454E5F46554C4C225D00000000FFFF00
      000000000200000001000000000500417269616C000900000000000000000000
      000000CC00020000000000FFFFFF000000000200000000000000000057040000
      05004D656D6F380002001400000030010000240100001200000043000F000100
      0000000000000000808080002E02000000000001000700C8F2EEE3EE203A0000
      0000FFFF00000000000200000001000000000500417269616C000A0000000200
      FFFFFF0000000000CC00020000000000FFFFFF00000000020000000000000000
      00EE04000006004D656D6F313000020038010000300100005400000012000000
      43000F0001000000000000000000808080002E020101000000010018005B5355
      4D285B4D656D5265706F72742E226E6163225D295D00000000FFFF0000000000
      0200000001000000000500417269616C000A0000000200FFFFFF0001000000CC
      00020000000000FFFFFF00000000020000000000000000007B05000006004D65
      6D6F31310002001400000024000000CC0200001400000043000F000100000000
      0000000000808080002E02000000000001000E005B5245504F52545F5449544C
      455D00000000FFFF00000000000200000001000000000500417269616C000A00
      00000200FFFFFF0002000000CC00020000000000FFFFFF000000000200000000
      00000000000B06000006004D656D6F31320002001400000080000000B4000000
      1200000043000F0001000000000000000000FFFFFF002E020000000000010011
      00CCE5EDE5E4E6E5F020E2EBE0E4E5EBE5F600000000FFFF0000000000020000
      0001000000000500417269616C000A00000002000000000002000000CC000200
      00000000FFFFFF00000000020000000000000000009506000006004D656D6F31
      33000200C800000080000000700000001200000043000F000100000000000000
      0000FFFFFF002E02000000000001000B00D2E8EF20F0E0F1F5EEE4E000000000
      FFFF00000000000200000001000000000500417269616C000A00000002000000
      000002000000CC00020000000000FFFFFF000000000200000000000000000021
      07000006004D656D6F3135000200380100008000000054000000120000004300
      0F0001000000000000000000FFFFFF002E02000000000001000D00CDE0F6E5ED
      EAE02C20F0F3E12E00000000FFFF000000000002000000010000000005004172
      69616C000800000002000000000002000000CC00020000000000FFFFFF000000
      0002000000000000000000B107000006004D656D6F31390002008C010000C400
      0000540000001000000043000F0001000000000000000000FFFFFF002E020101
      000000010011005B4D656D5265706F72742E22736562225D00000000FFFF0000
      0000000200000001000000000500417269616C00090000000000000000000100
      0000CC00020000000000FFFFFF00000000020000000000000000003D08000006
      004D656D6F32300002008C01000080000000540000001200000043000F000100
      0000000000000000FFFFFF002E02000000000001000D00D1E5E1E5F1F22E2C20
      F0F3E12E00000000FFFF00000000000200000001000000000500417269616C00
      0800000002000000000002000000CC00020000000000FFFFFF00000000020000
      00000000000000D408000006004D656D6F32350002008C010000300100005400
      00001200000043000F0001000000000000000000808080002E02010100000001
      0018005B53554D285B4D656D5265706F72742E22736562225D295D00000000FF
      FF00000000000200000001000000000500417269616C000A0000000200FFFFFF
      0001000000CC00020000000000FFFFFF000000000200000000000000FEFEFF00
      0000000000000000000000}
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
    Left = 316
    Top = 283
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
    Left = 318
    Top = 335
  end
end
object REPORT_ITOG_MOVE_DETAL: TREPORT_ITOG_MOVE_DETAL
  Left = 114
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '��������� ����� � �������� ������ ������ ���������'
  ClientHeight = 523
  ClientWidth = 772
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
    Left = 546
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
    Top = 16
    Width = 53
    Height = 13
    Caption = '�� ����� :'
  end
  object Label2: TLabel
    Left = 26
    Top = 60
    Width = 62
    Height = 13
    Caption = '��������� :'
  end
  object Label_Mes1: TLabel
    Left = 320
    Top = 62
    Width = 20
    Height = 13
    Caption = '���'
  end
  object Label_Mes2: TLabel
    Left = 414
    Top = 62
    Width = 20
    Height = 13
    Caption = '���'
  end
  object Label4: TLabel
    Left = 28
    Top = 82
    Width = 59
    Height = 13
    Caption = '�������� :'
  end
  object SpeedButton1: TSpeedButton
    Left = 546
    Top = 78
    Width = 23
    Height = 22
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF0000000000000000
      00000000000000000000000000000000000000000000000000000000FF00FFFF
      00FFFF00FFFF00FF0000FF00FF000000C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6
      C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6000000FF00FFFF00FFFF00FF
      0000FF00FF000000C6C6C6000000000000000000000000000000000000000000
      000000000000000000C6C6C6C6C6C6000000FF00FFFF00FF0000FF00FFFF00FF
      000000C6C6C6000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00
      FF000000C6C6C6C6C6C6000000FF00FF0000FF00FF0000000000000000000000
      00000000000000000000000000000000000000FFFFFF000000FFFFFF000000C6
      C6C6000000FF00FF0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000C6C6C6000000FF00FF
      0000FF00FFFF00FF000000FFFFFF000000000000FFFFFF000000000000FFFFFF
      FFFFFFFFFFFF000000FFFFFF000000C6C6C6000000FF00FF0000FF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF000000C6C6C6000000FF00FF0000FF00FF000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000FF00FF0000FF00FF0000000000FF000000000000FFFFFF00000000
      0000000000000000000000FFFFFF0000000000000000000000FF000000FF00FF
      0000FF00FF0000000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000000000000000FF000000FF00FF0000FF00FF000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000FFFFFF000000000000FF00FF0000FF00FFFF00FFFF00FF000000FFFF
      FF000000000000000000FFFFFF000000000000FFFFFFFFFFFF000000FFFFFF00
      0000FF00FFFF00FF0000FF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FF00FFFF00FF
      0000FF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFF000000000000000000
      000000000000000000000000FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
      FF00FFFF00FF000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000}
    OnClick = SpeedButton1Click
  end
  object BtnOk: TButton
    Left = 534
    Top = 4
    Width = 75
    Height = 25
    Caption = '���������'
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object TW: TEdit
    Left = 92
    Top = 34
    Width = 455
    Height = 21
    TabOrder = 1
    Text = 'TW'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 124
    Width = 772
    Height = 399
    Align = alBottom
    DataSource = DsRep1
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
        FieldName = 'TW_ART'
        Title.Alignment = taCenter
        Title.Caption = '���'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TW_NAM'
        Title.Alignment = taCenter
        Title.Caption = '������������ ������'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valuta_full'
        Title.Alignment = taCenter
        Title.Caption = '������ ������'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OST_KOL'
        Title.Alignment = taCenter
        Title.Caption = '�������'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEB'
        Title.Alignment = taCenter
        Title.Caption = '������� � ���.'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEB$'
        Title.Alignment = taCenter
        Title.Caption = '������� � $'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TWTREE_FULL'
        Title.Alignment = taCenter
        Title.Caption = '������ �������'
        Width = 280
        Visible = True
      end>
  end
  object BtnPrint: TButton
    Left = 610
    Top = 4
    Width = 75
    Height = 25
    Caption = '������'
    Enabled = False
    TabOrder = 3
    OnClick = BtnPrintClick
  end
  object DT: TDateEdit
    Left = 92
    Top = 12
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object Mes: TComboBox
    Left = 92
    Top = 56
    Width = 155
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Mes'
    OnChange = MesChange
    Items.Strings = (
      '�� ���������'
      '�����'
      '��')
  end
  object Mes1: TRxSpinEdit
    Left = 250
    Top = 56
    Width = 67
    Height = 21
    Alignment = taRightJustify
    TabOrder = 6
  end
  object Mes2: TRxSpinEdit
    Left = 342
    Top = 56
    Width = 67
    Height = 21
    Alignment = taRightJustify
    TabOrder = 7
  end
  object KLN: TEdit
    Left = 92
    Top = 78
    Width = 455
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = 'KLN'
  end
  object Valuta0: TCheckBox
    Left = 92
    Top = 104
    Width = 111
    Height = 17
    Caption = '�������� �����'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object Valuta1: TCheckBox
    Left = 212
    Top = 104
    Width = 137
    Height = 17
    Caption = '���������� �����'
    Checked = True
    State = cbChecked
    TabOrder = 10
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
    AfterOpen = QueryRep1AfterOpen
    OnCalcFields = QueryRep1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tw_id,tw_art,tw_nam,sum(ost_kol) as ost_kol,'
      'sum(ost_kol*seb) as seb,sum(ost_kol*seb$) as seb$,'
      'valuta_id,twtree_id,twtree_full'
      ' from REPORT_ITOG_TDM_DETAL(:dt1,:dt2,'
      '      :dtrep,:twtree_id,:men_id)'
      'group by tw_id,tw_art,tw_nam,valuta_id,twtree_id,twtree_full'
      'order by twtree_full,tw_nam')
    Left = 438
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DT1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTREP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TWTREE_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MEN_ID'
        ParamType = ptUnknown
      end>
    object QueryRep1TW_ID: TIntegerField
      FieldName = 'TW_ID'
    end
    object QueryRep1TW_ART: TIntegerField
      FieldName = 'TW_ART'
    end
    object QueryRep1TW_NAM: TIBStringField
      FieldName = 'TW_NAM'
      Size = 254
    end
    object QueryRep1OST_KOL: TFloatField
      FieldName = 'OST_KOL'
      DisplayFormat = '#0.0000'
    end
    object QueryRep1SEB: TFloatField
      FieldName = 'SEB'
      DisplayFormat = '#0.00 ���'
    end
    object QueryRep1SEB2: TFloatField
      FieldName = 'SEB$'
      DisplayFormat = '#0.00 USD'
    end
    object QueryRep1VALUTA_ID: TIntegerField
      FieldName = 'VALUTA_ID'
    end
    object QueryRep1TWTREE_ID: TIntegerField
      FieldName = 'TWTREE_ID'
    end
    object QueryRep1TWTREE_FULL: TIBStringField
      FieldName = 'TWTREE_FULL'
      Size = 1000
    end
    object QueryRep1valuta_full: TStringField
      FieldKind = fkCalculated
      FieldName = 'valuta_full'
      Size = 32
      Calculated = True
    end
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
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit, pbPageSetup]
    StoreInDFM = True
    OnGetValue = frReport1GetValue
    Left = 200
    Top = 194
    ReportForm = {
      180000000F0F0000180000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F000080DC000000780000007C0100002C
      010000040000000200D60000000B004D61737465724461746131000201000000
      00E0000000F6020000100000003100050001000000000000000000DBDBDB0000
      0000000C0066724442446174615365743100000000000000FFFF000000000002
      000000010000000000000001000000C800000014000000010000000000000200
      440100000E005265706F727453756D6D617279310002010000000030010000F6
      020000120000003000010001000000000000000000DBDBDB0000000000000000
      000000000000FFFF000000000002000000010000000000000001000000C80000
      0014000000010000000000000200B00100000C005265706F72745469746C6531
      0002010000000044000000F60200004A00000030000000010000000000000000
      00DBDBDB0000000000000000000000000000FFFF000000000002000000010000
      000000000001000000C800000014000000010000000000000200330200000C00
      47726F75704865616465723100020100000000A8000000F60200001200000031
      00100001000000000000000000FFFFFF1F0000000017005B5175657279526570
      312E225457545245455F4944225D00000000000000FFFF000000000002000000
      010000000000000001000000C8000000140000000100000000000002009F0200
      000C0047726F7570466F6F746572310002010000000000010000F60200001400
      00003000110001000000000000000000FFFFFF1F000000000000000000000000
      00FFFF000000000002000000010000000000000001000000C800000014000000
      0100000000000000002F03000005004D656D6F3100020090020000E000000054
      0000001000000043000F0001000000000000000000FFFFFF002E020101000000
      010012005B5175657279526570312E2253454224225D00000000FFFF00000000
      000200000001000000000500417269616C000900000000000000000001000000
      CC00020000000000FFFFFF0000000002000000000000000000BE03000005004D
      656D6F3200020038020000E0000000580000001000000043000F000100000000
      0000000000FFFFFF002E020101000000010011005B5175657279526570312E22
      534542225D00000000FFFF00000000000200000001000000000500417269616C
      000900000000000000000001000000CC00020000000000FFFFFF000000000200
      00000000000000005004000005004D656D6F3500020074000000E00000004C01
      00001000000043000F0001000000000000000000FFFFFF002E02000000000001
      0014005B5175657279526570312E2254575F4E414D225D00000000FFFF000000
      00000200000001000000000500417269616C0008000000000000000000000000
      00CC00020000000000FFFFFF0000000002000000000000000000D50400000500
      4D656D6F380002001400000030010000240200001200000043000F0001000000
      000000000000808080002E02000000000001000700C8F2EEE3EE203A00000000
      FFFF00000000000200000001000000000500417269616C000A0000000200FFFF
      FF0000000000CC00020000000000FFFFFF00000000020000000000000000006C
      05000006004D656D6F3130000200380200003001000058000000120000004300
      0F0001000000000000000000808080002E020101000000010018005B53554D28
      5B5175657279526570312E22534542225D295D00000000FFFF00000000000200
      000001000000000500417269616C000A0000000200FFFFFF0001000000CC0002
      0000000000FFFFFF0000000002000000000000000000F905000006004D656D6F
      31310002001400000044000000D00200003800000043000F0001000000000000
      000000000000002E02000000000001000E005B5245504F52545F5449544C455D
      00000000FFFF00000000000200000001000000000500417269616C000A000000
      0200FFFFFF0002000000CC00020000000000FFFFFF0000000002000000000000
      0000007906000006004D656D6F3132000200140000007C000000240000001200
      000043000F0001000000000000000000FFFFFF002E02000000000001000100B9
      00000000FFFF00000000000200000001000000000500417269616C000A000000
      02000000000002000000CC00020000000000FFFFFF0000000002000000000000
      0000000607000006004D656D6F3135000200380200007C000000580000001200
      000043000F0001000000000000000000FFFFFF002E02000000000001000E00CE
      F1F2E0F2EEEA20E220F0F3E12E00000000FFFF00000000000200000001000000
      000500417269616C000900000002000000000002000000CC00020000000000FF
      FFFF00000000020000000000000000009007000006004D656D6F313600020090
      0200007C000000540000001200000043000F0001000000000000000000FFFFFF
      002E02000000000001000B00CEF1F2E0F2EEEA20E2202400000000FFFF000000
      00000200000001000000000500417269616C0009000000020000000000020000
      00CC00020000000000FFFFFF00000000020000000000000000001B0800000500
      4D656D6F33000200C00100007C000000300000001200000043000F0001000000
      000000000000FFFFFF002E02000000000001000D00C2E0EBFEF2E020F2EEE2E0
      F0E000000000FFFF00000000000200000001000000000500417269616C000500
      000002000000000002000000CC00020000000000FFFFFF000000000200000000
      0000000000B208000005004D656D6F34000200C0010000E00000003000000010
      00000043000F0001000000000000000000FFFFFF002E02010100000001001900
      5B5175657279526570312E2276616C7574615F66756C6C225D00000000FFFF00
      000000000200000001000000000500417269616C000900000000000000000000
      000000CC00020000000000FFFFFF000000000200000000000000000048090000
      05004D656D6F360002001400000000010000240200001000000043000F000100
      0000000000000000C8FDCD002E02000000000001001800C8F2EEE3EE20E220E3
      F0F3EFEFE520F2EEE2E0F0EEE2203A00000000FFFF0000000000020000000100
      0000000500417269616C000900000000000000000000000000CC000200000000
      00FFFFFF0000000002000000000000000000DF09000006004D656D6F31330002
      003802000000010000580000001000000043000F0001000000000000000000C8
      FDCD002E020101000000010018005B53554D285B5175657279526570312E2253
      4542225D295D00000000FFFF0000000000020000000100000000050041726961
      6C000900000000000000000001000000CC00020000000000FFFFFF0000000002
      000000000000000000870A000006004D656D6F313400020014000000A8000000
      D0020000120000004300000001000000000000000000000080002E0200000000
      0001002900C3F0F3EFEFE020F2EEE2E0F0EEE2203A5B5175657279526570312E
      225457545245455F46554C4C225D00000000FFFF000000000002000000010000
      00000500417269616C000A0000000200FFFF000000000000CC00020000000000
      FFFFFF0000000002000000000000000000090B000006004D656D6F3137000200
      380000007C0000003C0000001200000043000F0001000000000000000000FFFF
      FF002E02000000000001000300CAEEE400000000FFFF00000000000200000001
      000000000500417269616C000A00000002000000000002000000CC0002000000
      0000FFFFFF00000000020000000000000000009B0B000006004D656D6F313800
      0200740000007C0000004C0100001200000043000F0001000000000000000000
      FFFFFF002E02000000000001001300CDE0E8ECE5EDEEE2E0EDE8E520F2EEE2E0
      F0E000000000FFFF00000000000200000001000000000500417269616C000A00
      000002000000000002000000CC00020000000000FFFFFF000000000200000000
      0000000000210C000006004D656D6F3139000200F00100007C00000048000000
      1200000043000F0001000000000000000000FFFFFF002E020000000000010007
      00CEF1F2E0F2EEEA00000000FFFF000000000002000000010000000005004172
      69616C000900000002000000000002000000CC00020000000000FFFFFF000000
      0002000000000000000000B50C000006004D656D6F3230000200F0010000E000
      0000480000001000000043000F0001000000000000000000FFFFFF002E020101
      000000010015005B5175657279526570312E224F53545F4B4F4C225D00000000
      FFFF00000000000200000001000000000500417269616C000900000000000000
      000001000000CC00020000000000FFFFFF000000000200000000000000000048
      0D000006004D656D6F323100020038000000E00000003C000000100000004300
      0F0001000000000000000000FFFFFF002E020000000000010014005B51756572
      79526570312E2254575F415254225D00000000FFFF0000000000020000000100
      0000000500417269616C000900000000000000000000000000CC000200000000
      00FFFFFF0000000002000000000000000000D10D000006004D656D6F32320002
      0014000000E0000000240000001000000043000F0001000000000000000000FF
      FFFF002E02000000000001000A005B43555252454E54235D00000000FFFF0000
      0000000200000001000000000500417269616C00090000000000000000000000
      0000CC00020000000000FFFFFF0000000002000000000000000000680E000005
      004D656D6F370002009002000000010000540000001000000043000F00010000
      00000000000000C8FDCD002E020101000000010019005B53554D285B51756572
      79526570312E2253454224225D295D00000000FFFF0000000000020000000100
      0000000500417269616C000900000000000000000001000000CC000200000000
      00FFFFFF0000000002000000000000000000000F000006004D656D6F32330002
      009002000030010000540000001200000043000F000100000000000000000080
      8080002E020101000000010019005B53554D285B5175657279526570312E2253
      454224225D295D00000000FFFF00000000000200000001000000000500417269
      616C000A0000000200FFFFFF0001000000CC00020000000000FFFFFF00000000
      0200000000000000FEFEFF000000000000000000000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = QueryRep1
    Left = 278
    Top = 196
  end
  object DsRep1: TDataSource
    DataSet = QueryRep1
    Left = 436
    Top = 328
  end
end

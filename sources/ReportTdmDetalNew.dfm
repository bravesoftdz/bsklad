object REPORT_TDM_DETAL_NEW: TREPORT_TDM_DETAL_NEW
  Left = 198
  Top = 296
  Width = 1038
  Height = 537
  BorderIcons = [biSystemMenu]
  Caption = '����� ��������� ����� �� �������� ������'
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
    Top = 42
    Width = 85
    Height = 13
    Caption = '������ ������� :'
  end
  object BtnDic: TSpeedButton
    Left = 546
    Top = 38
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
    Left = 40
    Top = 16
    Width = 53
    Height = 13
    Caption = '�� ����� :'
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
  object BtnDynDic: TSpeedButton
    Left = 523
    Top = 38
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
    Top = 96
    Width = 64
    Height = 13
    Caption = '����������'
  end
  object Label8: TLabel
    Left = 276
    Top = 10
    Width = 45
    Height = 15
    AutoSize = False
    Caption = '����� :'
  end
  object Label4: TLabel
    Left = 250
    Top = 64
    Width = 110
    Height = 13
    Caption = '��������� �� ����� :'
  end
  object Label5: TLabel
    Left = 428
    Top = 66
    Width = 20
    Height = 13
    Caption = '���'
  end
  object BtnOk: TButton
    Left = 558
    Top = 4
    Width = 75
    Height = 25
    Caption = '���������'
    TabOrder = 0
    OnClick = BtnOkClick
  end
  object TW: TEdit
    Left = 112
    Top = 38
    Width = 409
    Height = 21
    TabOrder = 1
    Text = 'TW'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 160
    Width = 1022
    Height = 339
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DsRep1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
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
        FieldName = 'OST_KOL'
        Title.Alignment = taCenter
        Title.Caption = '�������'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TW_KWM'
        Title.Caption = '���., ��.�.'
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
        FieldName = 'TWTREE_FULL'
        Title.Alignment = taCenter
        Title.Caption = '������ �������'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'men_fio'
        Title.Caption = '��������'
        Visible = True
      end>
  end
  object BtnPrint: TButton
    Left = 634
    Top = 4
    Width = 75
    Height = 25
    Caption = '������'
    Enabled = False
    TabOrder = 3
    OnClick = BtnPrintClick
  end
  object DT: TDateEdit
    Left = 112
    Top = 12
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object Mes1: TRxSpinEdit
    Left = 110
    Top = 64
    Width = 67
    Height = 21
    Alignment = taRightJustify
    Value = 6
    TabOrder = 5
  end
  object btnExcel: TButton
    Left = 600
    Top = 51
    Width = 113
    Height = 25
    Caption = '��������� � Excel'
    Enabled = False
    TabOrder = 6
    OnClick = btnExcelClick
  end
  object CheckPN2: TCheckBox
    Left = 340
    Top = 128
    Width = 257
    Height = 17
    Caption = '���������� ������� �� ��������� ��������'
    Checked = True
    State = cbChecked
    TabOrder = 7
    Visible = False
  end
  object CheckPN: TCheckBox
    Left = 91
    Top = 125
    Width = 230
    Height = 17
    Caption = '���������� ������� �� ������ ��������'
    Checked = True
    State = cbChecked
    TabOrder = 8
    Visible = False
  end
  object ShowPrih: TButton
    Left = 600
    Top = 96
    Width = 113
    Height = 25
    Caption = '�������� �������'
    TabOrder = 9
    Visible = False
    OnClick = ShowPrihClick
  end
  object Panel3: TPanel
    Left = 112
    Top = 88
    Width = 109
    Height = 25
    BevelOuter = bvNone
    TabOrder = 10
    object post1: TRadioButton
      Left = 0
      Top = 4
      Width = 41
      Height = 17
      Caption = '���'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = post1Click
    end
    object post2: TRadioButton
      Left = 48
      Top = 4
      Width = 57
      Height = 17
      Caption = '�����:'
      TabOrder = 1
    end
  end
  object POST_NAME: TEdit
    Left = 232
    Top = 88
    Width = 285
    Height = 21
    AutoSize = False
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '��� ����������'
  end
  object DYNPOST: TBitBtn
    Left = 523
    Top = 87
    Width = 24
    Height = 22
    Hint = '������� ������� �� ����������� ��������� (F10)'
    TabOrder = 12
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
    Left = 549
    Top = 87
    Width = 24
    Height = 22
    Hint = '������� ������� �� ����������� ��������� (F10)'
    TabOrder = 13
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
  object FRM: TRxDBLookupCombo
    Left = 328
    Top = 10
    Width = 216
    Height = 20
    DropDownCount = 8
    EscapeClear = False
    LookupField = 'FRM_ID'
    LookupDisplay = 'FRM_NAME'
    LookupSource = DsFrm
    TabOrder = 14
  end
  object mes2: TRxSpinEdit
    Left = 358
    Top = 68
    Width = 67
    Height = 21
    Alignment = taRightJustify
    Value = 1000
    TabOrder = 15
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
    Left = 438
    Top = 276
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
    object QueryRep1TWTREE_ID: TIntegerField
      FieldName = 'TWTREE_ID'
    end
    object QueryRep1TWTREE_FULL: TIBStringField
      FieldName = 'TWTREE_FULL'
      Size = 1000
    end
    object QueryRep1TW_KWM_ONE: TFloatField
      FieldName = 'TW_KWM_ONE'
    end
    object QueryRep1_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TW_KWM'
      DisplayFormat = '#0.000'
      Calculated = True
    end
    object QueryRep1men_fio: TStringField
      FieldName = 'men_fio'
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
    Left = 70
    Top = 322
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
    Left = 212
    Top = 194
    ReportForm = {
      18000000A40F0000180000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F000080DC000000780000007C0100002C
      010000040000000200D60000000B004D61737465724461746131000201000000
      00D0000000F6020000100000003100050001000000000000000000DBDBDB0000
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
      000C0047726F7570466F6F746572310002010000000000010000F60200001000
      00003000110001000000000000000000FFFFFF1F000000000000000000000000
      00FFFF000000000002000000010000000000000001000000C800000014000000
      0100000000000000002E03000005004D656D6F3200020060020000D000000080
      0000001000000043000F0001000000000000000000FFFFFF002E020101000000
      010011005B5175657279526570312E22534542225D00000000FFFF0000000000
      0200000001000000000500417269616C000900000000000000000001000000CC
      00020000000000FFFFFF0000000002000000000000000000C003000005004D65
      6D6F3500020068000000D0000000740100001000000043000F00010000000000
      00000000FFFFFF002E020000000000010014005B5175657279526570312E2254
      575F4E414D225D00000000FFFF00000000000200000001000000000500417269
      616C000800000000000000000000000000CC00020000000000FFFFFF00000000
      020000000000000000004504000005004D656D6F380002001400000030010000
      C80100001200000043000F0001000000000000000000808080002E0200000000
      0001000700C8F2EEE3EE203A00000000FFFF0000000000020000000100000000
      0500417269616C000A0000000200FFFFFF0000000000CC00020000000000FFFF
      FF0000000002000000000000000000DC04000006004D656D6F31300002006002
      000030010000800000001200000043000F000100000000000000000080808000
      2E020101000000010018005B53554D285B5175657279526570312E2253454222
      5D295D00000000FFFF00000000000200000001000000000500417269616C000A
      0000000200FFFFFF0001000000CC00020000000000FFFFFF0000000002000000
      0000000000006905000006004D656D6F31310002001400000044000000D00200
      003800000043000F0001000000000000000000000000002E0200000000000100
      0E005B5245504F52545F5449544C455D00000000FFFF00000000000200000001
      000000000500417269616C000A0000000200FFFFFF0002000000CC0002000000
      0000FFFFFF0000000002000000000000000000E905000006004D656D6F313200
      0200140000007C000000200000001200000043000F0001000000000000000000
      FFFFFF002E02000000000001000100B900000000FFFF00000000000200000001
      000000000500417269616C000A00000002000000000002000000CC0002000000
      0000FFFFFF00000000020000000000000000007606000006004D656D6F313500
      0200600200007C000000780000001200000043000F0001000000000000000000
      FFFFFF002E02000000000001000E00CEF1F2E0F2EEEA20E220F0F3E12E000000
      00FFFF00000000000200000001000000000500417269616C0009000000020000
      00000002000000CC00020000000000FFFFFF0000000002000000000000000000
      0C07000005004D656D6F360002001400000000010000CC010000100000004300
      0F0001000000000000000000C8FDCD002E02000000000001001800C8F2EEE3EE
      20E220E3F0F3EFEFE520F2EEE2E0F0EEE2203A00000000FFFF00000000000200
      000001000000000500417269616C000900000000000000000000000000CC0002
      0000000000FFFFFF0000000002000000000000000000A307000006004D656D6F
      31330002006002000000010000800000001000000043000F0001000000000000
      000000C8FDCD002E020101000000010018005B53554D285B5175657279526570
      312E22534542225D295D00000000FFFF00000000000200000001000000000500
      417269616C000900000000000000000001000000CC00020000000000FFFFFF00
      000000020000000000000000004B08000006004D656D6F313400020014000000
      A8000000D0020000120000004300000001000000000000000000000080002E02
      000000000001002900C3F0F3EFEFE020F2EEE2E0F0EEE2203A5B517565727952
      6570312E225457545245455F46554C4C225D00000000FFFF0000000000020000
      0001000000000500417269616C000A0000000200FFFF000000000000CC000200
      00000000FFFFFF0000000002000000000000000000CD08000006004D656D6F31
      37000200340000007C000000340000001200000043000F000100000000000000
      0000FFFFFF002E02000000000001000300CAEEE400000000FFFF000000000002
      00000001000000000500417269616C000A00000002000000000002000000CC00
      020000000000FFFFFF00000000020000000000000000005F09000006004D656D
      6F3138000200680000007C000000740100001200000043000F00010000000000
      00000000FFFFFF002E02000000000001001300CDE0E8ECE5EDEEE2E0EDE8E520
      F2EEE2E0F0E000000000FFFF0000000000020000000100000000050041726961
      6C000A00000002000000000002000000CC00020000000000FFFFFF0000000002
      000000000000000000E509000006004D656D6F3139000200DC0100007C000000
      480000001200000043000F0001000000000000000000FFFFFF002E0200000000
      0001000700CEF1F2E0F2EEEA00000000FFFF0000000000020000000100000000
      0500417269616C000900000002000000000002000000CC00020000000000FFFF
      FF0000000002000000000000000000790A000006004D656D6F3230000200DC01
      0000D0000000480000001000000043000F0001000000000000000000FFFFFF00
      2E020101000000010015005B5175657279526570312E224F53545F4B4F4C225D
      00000000FFFF00000000000200000001000000000500417269616C0009000000
      00000000000001000000CC00020000000000FFFFFF0000000002000000000000
      0000000C0B000006004D656D6F323100020034000000D0000000340000001000
      000043000F0001000000000000000000FFFFFF002E020000000000010014005B
      5175657279526570312E2254575F415254225D00000000FFFF00000000000200
      000001000000000500417269616C000900000000000000000000000000CC0002
      0000000000FFFFFF0000000002000000000000000000950B000006004D656D6F
      323200020014000000D0000000200000001000000043000F0001000000000000
      000000FFFFFF002E02000000000001000A005B43555252454E54235D00000000
      FFFF00000000000200000001000000000500417269616C000900000000000000
      000000000000CC00020000000000FFFFFF00000000020000000000000000001E
      0C000005004D656D6F39000200240200007C0000003C0000001200000041000F
      0001000000000000000000FFFFFF1F2C02000000000001000B00CEF1F22E2C20
      EAE22EEC2E00000000FFFF00000000000200000001000000000500417269616C
      000600000000000000000008000000CC00020000000000FFFFFF000000000200
      0000000000000000C90C000006004D656D6F323400020024020000D00000003C
      0000001000000043000F0001000000000000000000FFFFFF1F2C030101000000
      01002C005B5175657279526570312E2254575F4B574D5F4F4E45222A51756572
      79526570312E224F53545F4B4F4C225D00000000FFFF00000000000200000001
      000000000500417269616C000600000000000000000001000000CC0002000000
      0000FFFFFF0000000002000000000000000000880D000006004D656D6F323500
      020024020000000100003C0000001000000043000F0001000000000000000000
      C8FDCD002C0304010B00302E23232320EAE22EEC2E00010035005B53554D285B
      5B5175657279526570312E224F53545F4B4F4C222A5175657279526570312E22
      54575F4B574D5F4F4E45225D5D295D00000000FFFF0000000000020000000100
      0000000500417269616C000700000000000000000009000000CC000200000000
      00FFFFFF0000000002000000000000000000470E000006004D656D6F32360002
      0024020000300100003C0000001200000043000F000100000000000000000080
      8080002E0304010B00302E23232320EAE22EEC2E00010035005B53554D285B5B
      5175657279526570312E224F53545F4B4F4C222A5175657279526570312E2254
      575F4B574D5F4F4E45225D5D295D00000000FFFF000000000002000000010000
      00000500417269616C00080000000200FFFFFF0009000000CC00020000000000
      FFFFFF0000000002000000000000000000EE0E000005004D656D6F31000200DC
      01000000010000480000001000000043000F0001000000000000000000C8FDCD
      002C0303010B00302E23232320EAE22EEC2E0001001E005B53554D285B5B5175
      657279526570312E224F53545F4B4F4C225D5D295D00000000FFFF0000000000
      0200000001000000000500417269616C000700000000000000000009000000CC
      00020000000000FFFFFF0000000002000000000000000000950F000005004D65
      6D6F37000200DC01000030010000480000001200000043000F00010000000000
      00000000808080002E0303010B00302E23232320EAE22EEC2E0001001E005B53
      554D285B5B5175657279526570312E224F53545F4B4F4C225D5D295D00000000
      FFFF00000000000200000001000000000500417269616C00080000000200FFFF
      FF0009000000CC00020000000000FFFFFF000000000200000000000000FEFEFF
      000000000000000000000000}
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

object Edit_Nakl: TEdit_Nakl
  Left = 161
  Top = 193
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = '��������� �������'
  ClientHeight = 127
  ClientWidth = 515
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 64
    Height = 13
    Caption = '���������� :'
  end
  object Label2: TLabel
    Left = 30
    Top = 62
    Width = 42
    Height = 13
    Caption = '������ :'
  end
  object Label3: TLabel
    Left = 42
    Top = 86
    Width = 30
    Height = 13
    Caption = '���� :'
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 515
    Height = 29
    ButtonHeight = 24
    ButtonWidth = 25
    Caption = 'ToolBar1'
    Images = DataModule1.ImageList1
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 108
    Width = 515
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object MET: TComboBox
    Left = 76
    Top = 84
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'MET'
    OnChange = METChange
    Items.Strings = (
      '����������������'
      '�������������'
      '������')
  end
  object KLN: TEdit
    Left = 76
    Top = 34
    Width = 411
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'KLN'
  end
  object USL: TEdit
    Left = 76
    Top = 58
    Width = 409
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'USL'
  end
  object BitBtn1: TBitBtn
    Left = 486
    Top = 34
    Width = 23
    Height = 23
    Action = BtnDicKln
    TabOrder = 0
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
  end
  object BitBtn2: TBitBtn
    Left = 486
    Top = 58
    Width = 23
    Height = 21
    Action = BtnDicUsl
    TabOrder = 1
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FF00000000008000
      0080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FF000000000080008080C0C0C0000080000000
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
      FF00FFFF00FF000000008080C0C0C0008080C0C0C0000080000000FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF0000000000
      80C0C0C0FF00FFFF00FF008080C0C0C0000080000000000000FF00FFFF00FFFF
      00FFFF00FFFF00FF0000FF00FFFF00FF000000000080008080FF00FFFF00FFFF
      00FFFF00FF008080C0C0C0000080000080000000000000FF00FFFF00FFFF00FF
      0000FF00FFFF00FF000000008080FF00FFFF00FFFF00FF00FFFFFF00FFFF00FF
      008080008080008080000080000080000000000000FF00FF0000FF00FF000000
      000080FF00FFFF00FFFF00FFFF00FF000000808080FF00FFFF00FF808080FF00
      FF008080008080000080000080FF00FF0000FF00FF000080008080FF00FFC0C0
      C0C0C0C0FF00FFFF00FF008080000000000000FF00FFFF00FF00FFFFFF00FF00
      8080008080FF00FF0000FF00FF008080FF00FFFF00FF808080808080C0C0C0FF
      00FFFF00FF008080800000000000FF00FFFF00FFFF00FF00FFFF808080FF00FF
      0000FF00FF808080FF00FFC0C0C0808080C0C0C080808000FFFF80808000FFFF
      FF000080000000000000FFFFFF00FF808080FF00FFFF00FF0000FF00FFFF00FF
      808080FF00FFFF00FF808080FF00FF808080C0C0C0FF00FFFF00FFFF00008000
      00000000808080FF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF808080FF00
      FFFF00FF808080C0C0C0FF00FF00FFFFFF00FFFF00FFFF0000800000000000FF
      00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FF80808080808080808080
      8080FF00FFFF00FFFF00FF00FFFF808080FF0000800000000000FF00FFFF00FF
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF808080808080
      FF00FF808080FF00FFFF00FFFF0000800000000000FF00FF0000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF808080FF00FFFF00
      FFFF00FFFF00FFFF0000800000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF0000}
  end
  object ActionList1: TActionList
    Images = DataModule1.ImageList1
    Left = 188
    Top = 44
    object BtnSave: TAction
      Caption = '���������...'
      Hint = '���������...'
      ImageIndex = 39
      ShortCut = 16397
      OnExecute = BtnSaveExecute
    end
    object BtnDicKln: TAction
      Hint = '���������� ���������...'
      ImageIndex = 14
      ShortCut = 121
      OnExecute = BtnDicKlnExecute
    end
    object BtnDicUsl: TAction
      Hint = '���������� �����...'
      ImageIndex = 142
      ShortCut = 122
      OnExecute = BtnDicUslExecute
    end
  end
  object WorkTransaction: TIBTransaction
    Active = False
    DefaultDatabase = DataModule1.IBDatabase1
    AutoStopAction = saNone
    Left = 256
    Top = 44
  end
  object QueryWork: TIBQuery
    Database = DataModule1.IBDatabase1
    Transaction = WorkTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 330
    Top = 42
  end
end

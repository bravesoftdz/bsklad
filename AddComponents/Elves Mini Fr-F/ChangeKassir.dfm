object Change_kassir: TChange_kassir
  Left = 329
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '����� �������'
  ClientHeight = 100
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 54
    Width = 118
    Height = 13
    Caption = '����� ������� (1..30) :'
  end
  object Label2: TLabel
    Left = 76
    Top = 76
    Width = 44
    Height = 13
    Caption = '������ :'
  end
  object Image1: TImage
    Left = 2
    Top = 0
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      055449636F6E0000010002002020100000000000E80200002600000010101000
      00000000280100000E0300002800000020000000400000000100040000000000
      8002000000000000000000000000000000000000000000000000800000800000
      0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
      00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003B3B0000000000000000000000000003B3B
      3B00000000000000000000000003B3B3B3B0000000000000000000003B3B3B3B
      300B3000000000000000000333B3B3B3B000B30000003300333303333B3B3B3B
      30000B00000BBBBBBBBBBBBB33B3B3B3B0000B0000777777777777733B3B3B3B
      30000B00033333333333333B33B3B3B3B0000B000BBBBBBBBBBBBBBB3B3B3B3B
      30000B000000000000000000B3B3B3B3B000B3000000000000000000BBBB3B3B
      300B30000000000000000000000BB3B3B3B0000000000000000000000000BB3B
      3B000000000000000000000000000BBBB0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFF03FFFFFE01F
      FFFE0007FFFE0003F3080021E0000031C0000031800000310000003100000031
      00000021FFFE0003FFFF0007FFFFE01FFFFFF03FFFFFF87FFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000
      0100040000000000C00000000000000000000000000000000000000000000000
      00008000008000000080800080000000800080008080000080808000C0C0C000
      0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000BB0000000000000BBB0B0000303333BBBB00B007777773
      BBBB00B0BBBBBBBBBBBB00B000000000BBBB0B000000000000BBB00000000000
      00000000000000000000000000000000000000000000000000000000FFFF5804
      FFFF0000FFFF0000FFFF0000FFCF0000FF870000FE0100008005000000050000
      00050000FE010000FF870000FFCF0000FFFF0000FFFF0000FFFF0000}
    Transparent = True
  end
  object Label3: TLabel
    Left = 68
    Top = 2
    Width = 339
    Height = 39
    Caption = 
      '�������� "����� �������" ������� ����������� ������ ���!!!,'#13#10'���' +
      '�� �� �������� ��������� �������� �������� ������ �������,'#13#10'����' +
      '� ���� � �� ����� �� ��������������� �����!'
  end
  object password: TEdit
    Left = 124
    Top = 72
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    Text = 'password'
    OnKeyPress = passwordKeyPress
  end
  object BtnOk: TButton
    Left = 252
    Top = 70
    Width = 75
    Height = 25
    Caption = '��'
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BtnCancel: TButton
    Left = 334
    Top = 70
    Width = 75
    Height = 25
    Caption = '������'
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object NUM: TRxSpinEdit
    Left = 124
    Top = 48
    Width = 53
    Height = 21
    MaxValue = 30
    MinValue = 1
    Value = 1
    TabOrder = 3
  end
end

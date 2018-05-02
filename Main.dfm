object Form1: TForm1
  Left = 636
  Top = 146
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RandomPassword khaled FisQuo'
  ClientHeight = 104
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblPassword: TLabel
    Left = 5
    Top = 1
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object Label1: TLabel
    Left = 240
    Top = 88
    Width = 53
    Height = 13
    Caption = '.Departure'
    Enabled = False
  end
  object BtnGenerate: TButton
    Left = 229
    Top = 15
    Width = 65
    Height = 25
    Caption = 'Generate'
    TabOrder = 0
    OnClick = BtnGenerateClick
  end
  object EdPassword: TEdit
    Left = 5
    Top = 17
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object SpnPassLen: TSpinEdit
    Left = 173
    Top = 17
    Width = 49
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 8
  end
  object chkNum: TCheckBox
    Left = 8
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Numbers'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object chkUpper: TCheckBox
    Left = 8
    Top = 80
    Width = 97
    Height = 17
    Caption = 'Maj'
    TabOrder = 4
  end
  object chkSpecial: TCheckBox
    Left = 120
    Top = 56
    Width = 97
    Height = 17
    Caption = 'Special Chars'
    TabOrder = 5
  end
  object chkLower: TCheckBox
    Left = 120
    Top = 80
    Width = 97
    Height = 17
    Caption = 'mins'
    TabOrder = 6
  end
end

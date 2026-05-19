object Form1: TForm1
  Left = 189
  Top = 124
  Width = 814
  Height = 545
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 24
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clAqua
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 96
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clYellow
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 168
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clRed
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 240
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clTeal
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape5: TShape
    Left = 24
    Top = 144
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape5DragDrop
    OnDragOver = Shape5DragOver
  end
  object Shape6: TShape
    Left = 96
    Top = 144
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape6DragDrop
    OnDragOver = Shape6DragOver
  end
  object Shape9: TShape
    Left = 168
    Top = 216
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape5DragDrop
    OnDragOver = Shape5DragOver
  end
  object Shape10: TShape
    Left = 240
    Top = 216
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape6DragDrop
    OnDragOver = Shape6DragOver
  end
  object Shape7: TShape
    Left = 0
    Top = 624
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape8: TShape
    Left = 72
    Top = 624
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Button1: TButton
    Left = 176
    Top = 152
    Width = 129
    Height = 57
    Caption = 'Send'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Guessbtn: TButton
    Left = 24
    Top = 224
    Width = 137
    Height = 57
    Caption = 'Guess'
    TabOrder = 1
    OnClick = GuessbtnClick
  end
  object udpc: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 5000
    Left = 344
    Top = 184
  end
  object UDPS: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 4000
    OnUDPRead = UDPSUDPRead
    Left = 344
    Top = 224
  end
end

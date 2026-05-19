object Form1: TForm1
  Left = 190
  Top = 680
  Width = 817
  Height = 541
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
    Left = 0
    Top = 624
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 72
    Top = 624
    Width = 65
    Height = 65
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 24
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clAqua
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape4: TShape
    Left = 96
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clYellow
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape5: TShape
    Left = 168
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clRed
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape6: TShape
    Left = 240
    Top = 72
    Width = 65
    Height = 65
    Brush.Color = clTeal
    DragMode = dmAutomatic
    Shape = stCircle
  end
  object Shape7: TShape
    Left = 24
    Top = 144
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape7DragDrop
    OnDragOver = Shape7DragOver
  end
  object Shape8: TShape
    Left = 96
    Top = 144
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape8DragDrop
    OnDragOver = Shape8DragOver
  end
  object Shape9: TShape
    Left = 168
    Top = 224
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape7DragDrop
    OnDragOver = Shape7DragOver
  end
  object Shape10: TShape
    Left = 240
    Top = 224
    Width = 65
    Height = 65
    Shape = stCircle
    OnDragDrop = Shape8DragDrop
    OnDragOver = Shape8DragOver
  end
  object Guessbtn: TButton
    Left = 168
    Top = 152
    Width = 137
    Height = 57
    Caption = 'Guess'
    TabOrder = 0
    OnClick = GuessbtnClick
  end
  object Button1: TButton
    Left = 24
    Top = 224
    Width = 129
    Height = 65
    Caption = 'Send'
    TabOrder = 1
    OnClick = Button1Click
  end
  object udps: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 5000
    OnUDPRead = udpsUDPRead
    Left = 344
    Top = 192
  end
  object UDPC: TIdUDPClient
    Port = 4000
    Left = 344
    Top = 232
  end
end

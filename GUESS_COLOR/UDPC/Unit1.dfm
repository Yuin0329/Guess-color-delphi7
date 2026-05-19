object Form1: TForm1
  Left = 1046
  Top = 421
  Width = 647
  Height = 418
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Old English Text MT'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 377
    Caption = 'Panel1'
    Color = clFuchsia
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 0
      Top = 88
      Width = 321
      Height = 89
      Caption = #20659#36865#35338#24687
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
      object Shape5: TShape
        Left = 16
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape5DragDrop
        OnDragOver = Shape5DragOver
      end
      object Shape6: TShape
        Left = 88
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape6DragDrop
        OnDragOver = Shape6DragOver
      end
      object Button1: TButton
        Left = 168
        Top = 16
        Width = 129
        Height = 57
        Caption = 'Send'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Snap ITC'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Elements: TGroupBox
      Left = 0
      Top = 0
      Width = 321
      Height = 89
      Caption = #20803#32032#21312#22495
      Color = clSkyBlue
      ParentColor = False
      TabOrder = 1
      object Shape1: TShape
        Left = 16
        Top = 16
        Width = 65
        Height = 65
        Brush.Color = clAqua
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape2: TShape
        Left = 88
        Top = 16
        Width = 65
        Height = 65
        Brush.Color = clYellow
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape3: TShape
        Left = 160
        Top = 16
        Width = 65
        Height = 65
        Brush.Color = clRed
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape4: TShape
        Left = 240
        Top = 16
        Width = 65
        Height = 65
        Brush.Color = clTeal
        DragMode = dmAutomatic
        Shape = stCircle
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 176
      Width = 321
      Height = 89
      Caption = #35299#38283#23494#30908
      Color = clYellow
      ParentColor = False
      TabOrder = 2
      object Shape9: TShape
        Left = 168
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape5DragDrop
        OnDragOver = Shape5DragOver
      end
      object Shape10: TShape
        Left = 240
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape6DragDrop
        OnDragOver = Shape6DragOver
      end
      object Guessbtn: TButton
        Left = 16
        Top = 24
        Width = 137
        Height = 57
        Caption = 'Guess'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Snap ITC'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = GuessbtnClick
      end
    end
    object Game: TMemo
      Left = 0
      Top = 264
      Width = 417
      Height = 113
      Color = 14072568
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MV Boli'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Game')
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 320
      Top = 0
      Width = 97
      Height = 265
      Caption = 'Quit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Snap ITC'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Rule: TMemo
    Left = 640
    Top = 0
    Width = 361
    Height = 385
    Color = cl3DDkShadow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Rule')
    ParentFont = False
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 416
    Top = 0
    Width = 225
    Height = 369
    Color = 15579377
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 2
  end
  object udpc: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 6000
    Left = 256
    Top = 104
  end
  object UDPS: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 4000
    OnUDPRead = UDPSUDPRead
    Left = 120
    Top = 208
  end
  object UDPC1: TIdUDPClient
    Active = True
    Port = 5000
    Left = 360
    Top = 176
  end
  object UDPS1: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 8000
    OnUDPRead = UDPS1UDPRead
    Left = 328
    Top = 176
  end
  object UDPC2: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 9000
    Left = 488
    Top = 192
  end
  object UDPS2: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 7000
    OnUDPRead = UDPS2UDPRead
    Left = 560
    Top = 192
  end
end

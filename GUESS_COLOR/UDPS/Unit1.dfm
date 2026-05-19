object Form1: TForm1
  Left = 1041
  Top = 833
  Width = 641
  Height = 431
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 377
    Caption = 'Panel1'
    Color = 9161717
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = -8
      Top = 96
      Width = 313
      Height = 81
      Caption = #20659#36865#35338#24687
      Color = 16767368
      ParentColor = False
      TabOrder = 0
      object Shape7: TShape
        Left = 24
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape7DragDrop
        OnDragOver = Shape7DragOver
      end
      object Shape8: TShape
        Left = 96
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape8DragDrop
        OnDragOver = Shape8DragOver
      end
      object Button1: TButton
        Left = 168
        Top = 8
        Width = 129
        Height = 65
        Caption = 'Send'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Showcard Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 305
      Height = 97
      Caption = #20803#32032#21312#22495
      Color = 12383686
      ParentColor = False
      TabOrder = 1
      object Shape3: TShape
        Left = 8
        Top = 24
        Width = 65
        Height = 65
        Brush.Color = clAqua
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape4: TShape
        Left = 80
        Top = 24
        Width = 65
        Height = 65
        Brush.Color = clYellow
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape5: TShape
        Left = 152
        Top = 24
        Width = 65
        Height = 65
        Brush.Color = clRed
        DragMode = dmAutomatic
        Shape = stCircle
      end
      object Shape6: TShape
        Left = 224
        Top = 24
        Width = 65
        Height = 65
        Brush.Color = clTeal
        DragMode = dmAutomatic
        Shape = stCircle
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 176
      Width = 305
      Height = 97
      Caption = #35299#38283#35338#24687
      Color = 14982334
      ParentColor = False
      TabOrder = 2
      object Shape9: TShape
        Left = 152
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape7DragDrop
        OnDragOver = Shape7DragOver
      end
      object Shape10: TShape
        Left = 224
        Top = 16
        Width = 65
        Height = 65
        Shape = stCircle
        OnDragDrop = Shape8DragDrop
        OnDragOver = Shape8DragOver
      end
      object Guessbtn: TButton
        Left = 8
        Top = 24
        Width = 137
        Height = 57
        Caption = 'Guess'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Showcard Gothic'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = GuessbtnClick
      end
    end
    object Button2: TButton
      Left = 304
      Top = 0
      Width = 113
      Height = 273
      Caption = 'Quit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Showcard Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Game: TMemo
      Left = 0
      Top = 264
      Width = 417
      Height = 113
      Color = 12615808
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MV Boli'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Game')
      ParentFont = False
      TabOrder = 4
    end
  end
  object ListBox1: TListBox
    Left = 416
    Top = 0
    Width = 193
    Height = 377
    Color = 9827565
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 1
  end
  object udps: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 6000
    OnUDPRead = udpsUDPRead
    Left = 112
    Top = 216
  end
  object UDPC: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 4000
    Left = 256
    Top = 136
  end
  object UDPC1: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 8000
    Left = 328
    Top = 216
  end
  object UDPS1: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 5000
    OnUDPRead = UDPS1UDPRead
    Left = 368
    Top = 216
  end
  object UDPS2: TIdUDPServer
    Active = True
    Bindings = <>
    DefaultPort = 9000
    OnUDPRead = UDPS2UDPRead
    Left = 480
    Top = 200
  end
  object UDPC2: TIdUDPClient
    Active = True
    Host = '127.0.0.1'
    Port = 7000
    Left = 504
    Top = 144
  end
end

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IdBaseComponent, IdComponent, IdUDPBase, IdUDPServer,
  StdCtrls, IdUDPClient, IdSocketHandle;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Button1: TButton;
    udpc: TIdUDPClient;
    Guessbtn: TButton;
    Shape9: TShape;
    Shape10: TShape;
    Shape7: TShape;
    Shape8: TShape;
    UDPS: TIdUDPServer;
    procedure Shape5DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape5DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape6DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape6DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure UDPSUDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure GuessbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nbrGuesses: Integer;
    newcolor: array[1..2] of TColor;
  end;

var
  Form1: TForm1;
  c5, c6: string;
  s1, s2: string;
  colors: array[0..3] of TColor = (clAqua, clYellow, clRed, clTeal);
  a, b: TColor;

implementation

{$R *.dfm}

procedure TForm1.Shape5DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TShape(Sender).Brush.Color := TShape(Source).Brush.Color;
  c5 := ColorToString(TShape(Sender).Brush.Color);
end;

procedure TForm1.Shape5DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TForm1.Shape6DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TShape(Sender).Brush.Color := TShape(Source).Brush.Color;
  c6 := ColorToString(TShape(Sender).Brush.Color);
end;

procedure TForm1.Shape6DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  udpc.Send(c5 + ',' + c6);
end;

procedure TForm1.UDPSUDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var
  s1, s2, s: string;
  k, m: Integer;
begin
  k := AData.Size;
  SetLength(s, k);
  AData.Read(s[1], k);

  m := Pos(',', s);
  if m > 0 then
  begin
    s1 := Copy(s, 1, m - 1);
    s2 := Copy(s, m + 1, Length(s));
    Shape7.Brush.Color := StringToColor(s1);
    Shape8.Brush.Color := StringToColor(s2);
  end;
end;

procedure TForm1.GuessbtnClick(Sender: TObject);
var
  correct: Integer;
  guessword: string;
begin
  Inc(nbrGuesses);
  correct := 0;
  guessword := '次';

  if Shape7.Brush.Color = Shape9.Brush.Color then
    Inc(correct);

  if Shape8.Brush.Color = Shape10.Brush.Color then
    Inc(correct);

  if correct = 2 then
  begin
    ShowMessage('你成功猜到秘方了，太神啦!你總共猜了 '
      + IntToStr(nbrGuesses) + '次');
    nbrGuesses := 0;
  end
  else
  begin
    ShowMessage('你猜錯了。 你總共猜了'
      + IntToStr(nbrGuesses) + guessword
      + #13
      + '你有 ' + IntToStr(correct)
      + '個元素在正確的位置');
  end;
end;

end.

# Guess-color-delphi7
助教我愛你 早知道不要自找麻煩
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IdBaseComponent, IdComponent, IdUDPBase, IdUDPServer,
  StdCtrls, IdUDPClient,IdSocketHandle;

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
     nbrGuesses:integer;
    newcolor:array[1..2] of TColor;
  end;

var
  Form1: TForm1;
  c5,c6: string;
  s1,s2:string;
  colors:array[0..3] of TColor=(clAqua,clyellow,clred,clTeal);
  a,b:tcolor;

implementation

{$R *.dfm}

procedure TForm1.Shape5DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Tshape(sender).brush.color:=Tshape(source).brush.Color;
  c5:= colortostring(Tshape(sender).brush.color);
end;

procedure TForm1.Shape5DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  accept:=true;
end;

procedure TForm1.Shape6DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
   Tshape(sender).brush.color:=Tshape(source).brush.Color;
   c6:= colortostring(Tshape(sender).brush.color);
end;

procedure TForm1.Shape6DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    accept:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  udpc.send(c5+','+c6);
end;

procedure TForm1.UDPSUDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var
s1,s2,s: string; k,m:integer;
begin
     k:=adata.Size;
  setlength(s,k);
  adata.Read(s[1],k);
  m:=pos(',',s);
  if m>0 then
  begin
    s1:=copy(s,1,m-1);
    s2:=copy(s,m+1,length(s));
    shape7.Brush.Color:=stringtocolor(s1);
    shape8.Brush.Color:=stringtocolor(s2);
    {a:=shape1.Brush.Color ;
    b:=shape2.Brush.Color;}
    {shape1.Brush.color:=clwhite;
    shape2.Brush.color:=clwhite;}
  end

end;

procedure TForm1.GuessbtnClick(Sender: TObject);
var
  correct:integer;
  guessword:string;
begin
  Inc(nbrGuesses);
  correct:=0;
  if  (shape7.brush.color=shape9.brush.color) then inc(correct);
  if  (shape8.brush.color=shape10.brush.color) then inc(correct);
  if correct=2 then
  begin
    showmessage('你成功猜到秘方了，太神啦!你總共猜了 '
                +inttostr(Nbrguesses)+'次');
    nbrGuesses:=0
  end
  else
  begin
    If nbrguesses=1
    then guessword:= '次';

    showmessage('你猜錯了。 你總共猜了'
                +inttostr(NbrGuesses)+guessword
                + #13 (*強制換行*)
                +  '你有 ' + inttostr(correct)
                   + '個元素在正確的位置'  );
  end;

end;

end.

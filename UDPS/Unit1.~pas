unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient,
  IdUDPServer, StdCtrls, IdSocketHandle, ExtCtrls;

type
  TForm1 = class(TForm)
    udps: TIdUDPServer;
    Shape1: TShape;
    Shape2: TShape;
    Guessbtn: TButton;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    UDPC: TIdUDPClient;
    Button1: TButton;
    procedure udpsUDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure GuessbtnClick(Sender: TObject);
    procedure Shape7DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape7DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape8DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape8DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);

    
    {procedure FormActivate(Sender: TObject);  }
  private
    { Private declarations }
  public
    { Public declarations }
    nbrGuesses:integer;
    newcolor:array[1..2] of TColor;
  end;





var
  Form1: TForm1;
  s1,s2:string;
  c5,c6: string;
  colors:array[0..3] of TColor=(clAqua,clyellow,clred,clTeal);
  a,b:tcolor;
implementation

{$R *.dfm}

procedure TForm1.udpsUDPRead(Sender: TObject; AData: TStream;
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
    shape1.Brush.Color:=stringtocolor(s1);
    shape2.Brush.Color:=stringtocolor(s2);
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
  if  (shape1.brush.color=shape7.brush.color) then inc(correct);
  if  (shape2.brush.color=shape8.brush.color) then inc(correct);
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





{procedure TForm1.FormActivate(Sender: TObject);
var
  i:integer;
  shape:Tshape;
  correctcolor:array[1..2] of TColor;
begin

      for i:=1 to 2 do

      shape.Brush.color:=newcolor[i];
      shape.repaint;

  (*hide*)
    shape1.Brush.color:=clwhite;
    shape2.Brush.color:=clwhite;

    nbrGuesses:=0;
    guessbtn.enabled:=true;
end; }
procedure TForm1.Shape7DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Tshape(sender).brush.color:=Tshape(source).brush.Color;
  c5:= colortostring(Tshape(sender).brush.color);
end;

procedure TForm1.Shape7DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   accept:=true;
end;

procedure TForm1.Shape8DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Tshape(sender).brush.color:=Tshape(source).brush.Color;
   c6:= colortostring(Tshape(sender).brush.color);
end;

procedure TForm1.Shape8DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   accept:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    udpc.send(c5+','+c6);
end;

end.
















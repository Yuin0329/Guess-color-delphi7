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
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    ListBox1: TListBox;
    Button2: TButton;
    UDPC1: TIdUDPClient;
    UDPS1: TIdUDPServer;
    UDPS2: TIdUDPServer;
    UDPC2: TIdUDPClient;
    Game: TMemo;
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
    procedure Button2Click(Sender: TObject);
    procedure UDPS1UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure UDPS2UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure FormActivate(Sender: TObject);

    
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
  winwin:string;
begin


  Inc(nbrGuesses);
  correct:=0;
  if  (shape1.brush.color=shape9.brush.color) then inc(correct);
  if  (shape2.brush.color=shape10.brush.color) then inc(correct);
  if correct=2 then
  begin
    showmessage('你成功猜到秘方了，太神啦!你總共猜了 '
                +inttostr(Nbrguesses)+'次');
    listbox1.items.Add('You have guessed '+inttostr(Nbrguesses)+' times!');
    listbox1.items.Add('It is your turn to make a question !');
    winwin:='ww'+inttostr(Nbrguesses) ;
    udpc2.Send(winwin);
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

procedure TForm1.Button2Click(Sender: TObject);
var LT:string;
begin
  LT:='LT' ;
  UDPC1.Send(LT);
  close;
end;
procedure TForm1.UDPS1UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var a,b:string; m: integer;
begin
     m:=AData.size; setlength(a,m) ; AData.Read(a[1],m);
     b:=copy(a,1,2);
     if b='LT' then
    begin
      listbox1.Items.Add('Your competitor has left the room');
    end;
END;


procedure TForm1.UDPS2UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);

var s,z,w:string; k: integer;
begin
    k:=AData.size; setlength(s,k) ; AData.Read(s[1],k);
    z:=copy(s,1,2);
    w:=copy(s,3,4);
    if z='ww' then
    begin
      listbox1.items.Add('AWESOME !');
    end;
    if strtoint(w)>0 then
    begin
      listbox1.items.Add('Your competitor has guessed '+w+' times ! ');
       listbox1.items.Add('Waiting for your question !');
    end;
     if z='qt' then
    begin
      listbox1.Items.add('Your competitor has give you a question!');
    end;
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
     Game.Lines.add('~The Lost Of Secret Recipe~');
end;

end.
















unit DominoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, Menus, StdCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ImageList1: TImageList;
    dom2: TImage;
    dom1: TImage;
    dom6: TImage;
    dom5: TImage;
    dom3: TImage;
    dom7: TImage;
    dom4: TImage;
    dom8: TImage;
    dom14: TImage;
    dom11: TImage;
    dom12: TImage;
    dom13: TImage;
    dom9: TImage;
    dom10: TImage;
    dom19: TImage;
    dom18: TImage;
    dom17: TImage;
    dom16: TImage;
    dom15: TImage;
    dom22: TImage;
    dom21: TImage;
    dom20: TImage;
    dom24: TImage;
    dom23: TImage;
    dom27: TImage;
    dom26: TImage;
    dom25: TImage;
    dom28: TImage;
    Label1: TLabel;
    DomLabel: TLabel;
    Label2: TLabel;
    KolLabel: TLabel;
    ImageList2: TImageList;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Timer1: TTimer;
    Label3: TLabel;
    MLabel: TLabel;
    SLabel: TLabel;
    Label4: TLabel;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ColorDialog1: TColorDialog;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dom22Click(Sender: TObject);
    procedure dom23Click(Sender: TObject);
    procedure dom24Click(Sender: TObject);
    procedure dom26Click(Sender: TObject);
    procedure dom27Click(Sender: TObject);
    procedure dom28Click(Sender: TObject);
    procedure dom1Click(Sender: TObject);
    procedure dom25Click(Sender: TObject);
    procedure dom2Click(Sender: TObject);
    procedure dom3Click(Sender: TObject);
    procedure dom4Click(Sender: TObject);
    procedure dom5Click(Sender: TObject);
    procedure dom6Click(Sender: TObject);
    procedure dom7Click(Sender: TObject);
    procedure dom8Click(Sender: TObject);
    procedure dom9Click(Sender: TObject);
    procedure dom10Click(Sender: TObject);
    procedure dom11Click(Sender: TObject);
    procedure dom12Click(Sender: TObject);
    procedure dom13Click(Sender: TObject);
    procedure dom14Click(Sender: TObject);
    procedure dom15Click(Sender: TObject);
    procedure dom16Click(Sender: TObject);
    procedure dom17Click(Sender: TObject);
    procedure dom18Click(Sender: TObject);
    procedure dom19Click(Sender: TObject);
    procedure dom20Click(Sender: TObject);
    procedure dom21Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure del(a: integer; Sender: TObject);
    procedure NewGame(j,z: integer; Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Xod(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  d: array[0..27] of integer;
  image: array[0..28] of integer;
  kol,n,m,a,j,z: integer;
  i1,i2,r,b1: byte;
  mm,ss: integer;
  d1,d2: byte;


implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
 i: integer;
begin
 b1:=0;
 r:=28;
 d1:=0;
 d2:=0;
 Timer1.Interval:=0;
 N11.Enabled:=false;

 for i:=0 to 12 do
  begin
   d[i]:=i;
   DomLabel.Caption:=DomLabel.Caption+IntToStr(d[i])+'. ';
  end;

 for i:=13 to 21 do
  begin
   d[i]:=i-11;
   DomLabel.Caption:=DomLabel.Caption+IntToStr(d[i])+'. ';
  end;

 for i:=22 to 24 do
  begin
   d[i]:=i-18;
   DomLabel.Caption:=DomLabel.Caption+IntToStr(d[i])+'. ';
  end;

 for i:=25 to 27 do
  begin
   d[i]:=i-19;
   DomLabel.Caption:=DomLabel.Caption+IntToStr(d[i])+'. ';
   kol:=i+1;
  end;

  KolLabel.Caption:=IntToStr(kol);

  Dom1.Visible:=false;              Dom1.Enabled:=false;
  Dom2.Visible:=false;              Dom2.Enabled:=false;
  Dom3.Visible:=false;              Dom3.Enabled:=false;
  Dom4.Visible:=false;              Dom4.Enabled:=false;
  Dom5.Visible:=false;              Dom5.Enabled:=false;
  Dom6.Visible:=false;              Dom6.Enabled:=false;
  Dom7.Visible:=false;              Dom7.Enabled:=false;
  Dom8.Visible:=false;              Dom8.Enabled:=false;
  Dom9.Visible:=false;              Dom9.Enabled:=false;
  Dom10.Visible:=false;             Dom10.Enabled:=false;
  Dom11.Visible:=false;             Dom11.Enabled:=false;
  Dom12.Visible:=false;             Dom12.Enabled:=false;
  Dom13.Visible:=false;             Dom13.Enabled:=false;
  Dom14.Visible:=false;             Dom14.Enabled:=false;
  Dom15.Visible:=false;             Dom15.Enabled:=false;
  Dom16.Visible:=false;             Dom16.Enabled:=false;
  Dom17.Visible:=false;             Dom17.Enabled:=false;
  Dom18.Visible:=false;             Dom18.Enabled:=false;
  Dom19.Visible:=false;             Dom19.Enabled:=false;
  Dom20.Visible:=false;             Dom20.Enabled:=false;
  Dom21.Visible:=false;             Dom21.Enabled:=false;
  Dom22.Visible:=false;             Dom22.Enabled:=false;
  Dom23.Visible:=false;             Dom23.Enabled:=false;
  Dom24.Visible:=false;             Dom24.Enabled:=false;
  Dom25.Visible:=false;             Dom25.Enabled:=false;
  Dom26.Visible:=false;             Dom26.Enabled:=false;
  Dom27.Visible:=false;             Dom27.Enabled:=false;
  Dom28.Visible:=false;             Dom28.Enabled:=false;
end;

procedure TMainForm.NewGame(j,z: integer; Sender: TObject);
var
 tab:array[0..28]of integer;
begin
  b1:=0;
  n:=0;
  m:=0;
  i1:=0;
  i2:=0;
  N11.Enabled:=false;
  DomLabel.Caption:='';
  Label1.Caption:='';
  kol:=28;
  KolLabel.Caption:=IntToStr(kol);
  Timer1.Interval:=1000;
  ss:=0;
  mm:=0;

  Dom1.Visible:=true;               Dom1.Enabled:=true;
  Dom2.Visible:=true;               Dom2.Enabled:=true;
  Dom3.Visible:=true;               Dom3.Enabled:=true;
  Dom4.Visible:=true;               Dom4.Enabled:=true;
  Dom5.Visible:=true;               Dom5.Enabled:=true;
  Dom6.Visible:=true;               Dom6.Enabled:=true;
  Dom7.Visible:=true;               Dom7.Enabled:=true;
  Dom8.Visible:=true;               Dom8.Enabled:=true;
  Dom9.Visible:=true;               Dom9.Enabled:=true;
  Dom10.Visible:=true;              Dom10.Enabled:=true;
  Dom11.Visible:=true;              Dom11.Enabled:=true;
  Dom12.Visible:=true;              Dom12.Enabled:=true;
  Dom13.Visible:=true;              Dom13.Enabled:=true;
  Dom14.Visible:=true;              Dom14.Enabled:=true;
  Dom15.Visible:=true;              Dom15.Enabled:=true;
  Dom16.Visible:=true;              Dom16.Enabled:=true;
  Dom17.Visible:=true;              Dom17.Enabled:=true;
  Dom18.Visible:=true;              Dom18.Enabled:=true;
  Dom19.Visible:=true;              Dom19.Enabled:=true;
  Dom20.Visible:=true;              Dom20.Enabled:=true;
  Dom21.Visible:=true;              Dom21.Enabled:=true;
  Dom22.Visible:=true;              Dom22.Enabled:=true;
  Dom23.Visible:=true;              Dom23.Enabled:=true;
  Dom24.Visible:=true;              Dom24.Enabled:=true;
  Dom25.Visible:=true;              Dom25.Enabled:=true;
  Dom26.Visible:=true;              Dom26.Enabled:=true;
  Dom27.Visible:=true;              Dom27.Enabled:=true;
  Dom28.Visible:=true;              Dom28.Enabled:=true;

  for j:=0 to 27 do
   tab[j]:=0;
   randomize;
   for j:=0 to 27 do
    begin
     repeat
     z:=random(28);
     until tab[z]=0;
     tab[z]:=1;
     image[j]:=z;
    end;

  Dom1.Picture.Bitmap:=nil;
  if image[0]<>28 then
  ImageList1.GetBitmap(image[0], Dom1.Picture.Bitmap);

  Dom2.Picture.Bitmap:=nil;
  if image[1]<>28 then
  ImageList1.GetBitmap(image[1], Dom2.Picture.Bitmap);

  Dom3.Picture.Bitmap:=nil;
  if image[2]<>28 then
  ImageList1.GetBitmap(image[2], Dom3.Picture.Bitmap);

  Dom4.Picture.Bitmap:=nil;
  if image[3]<>28 then
  ImageList1.GetBitmap(image[3], Dom4.Picture.Bitmap);

  Dom5.Picture.Bitmap:=nil;
  if image[4]<>28 then
  ImageList1.GetBitmap(image[4], Dom5.Picture.Bitmap);

  Dom6.Picture.Bitmap:=nil;
  if image[5]<>28 then
  ImageList1.GetBitmap(image[5], Dom6.Picture.Bitmap);

  Dom7.Picture.Bitmap:=nil;
  if image[6]<>28 then
  ImageList1.GetBitmap(image[6], Dom7.Picture.Bitmap);

  Dom8.Picture.Bitmap:=nil;
  if image[7]<>28 then
  ImageList1.GetBitmap(image[7], Dom8.Picture.Bitmap);

  Dom9.Picture.Bitmap:=nil;
  if image[8]<>28 then
  ImageList1.GetBitmap(image[8], Dom9.Picture.Bitmap);

  Dom10.Picture.Bitmap:=nil;
  if image[9]<>28 then
  ImageList1.GetBitmap(image[9], Dom10.Picture.Bitmap);

  Dom11.Picture.Bitmap:=nil;
  if image[10]<>28 then
  ImageList1.GetBitmap(image[10], Dom11.Picture.Bitmap);

  Dom12.Picture.Bitmap:=nil;
  if image[11]<>28 then
  ImageList1.GetBitmap(image[11], Dom12.Picture.Bitmap);

  Dom13.Picture.Bitmap:=nil;
  if image[12]<>28 then
  ImageList1.GetBitmap(image[12], Dom13.Picture.Bitmap);

  Dom14.Picture.Bitmap:=nil;
  if image[13]<>28 then
  ImageList1.GetBitmap(image[13], Dom14.Picture.Bitmap);

  Dom15.Picture.Bitmap:=nil;
  if image[14]<>28 then
  ImageList1.GetBitmap(image[14], Dom15.Picture.Bitmap);

  Dom16.Picture.Bitmap:=nil;
  if image[15]<>28 then
  ImageList1.GetBitmap(image[15], Dom16.Picture.Bitmap);

  Dom17.Picture.Bitmap:=nil;
  if image[16]<>28 then
  ImageList1.GetBitmap(image[16], Dom17.Picture.Bitmap);

  Dom18.Picture.Bitmap:=nil;
  if image[17]<>28 then
  ImageList1.GetBitmap(image[17], Dom18.Picture.Bitmap);

  Dom19.Picture.Bitmap:=nil;
  if image[18]<>28 then
  ImageList1.GetBitmap(image[18], Dom19.Picture.Bitmap);

  Dom20.Picture.Bitmap:=nil;
  if image[19]<>28 then
  ImageList1.GetBitmap(image[19], Dom20.Picture.Bitmap);

  Dom21.Picture.Bitmap:=nil;
  if image[20]<>28 then
  ImageList1.GetBitmap(image[20], Dom21.Picture.Bitmap);

  Dom22.Picture.Bitmap:=nil;
  if image[21]<>28 then
  ImageList1.GetBitmap(image[21], Dom22.Picture.Bitmap);

  Dom23.Picture.Bitmap:=nil;
  if image[22]<>28 then
  ImageList1.GetBitmap(image[22], Dom23.Picture.Bitmap);

  Dom24.Picture.Bitmap:=nil;
  if image[23]<>28 then
  ImageList1.GetBitmap(image[23], Dom24.Picture.Bitmap);

  Dom25.Picture.Bitmap:=nil;
  if image[24]<>28 then
  ImageList1.GetBitmap(image[24], Dom25.Picture.Bitmap);

  Dom26.Picture.Bitmap:=nil;
  if image[25]<>28 then
  ImageList1.GetBitmap(image[25], Dom26.Picture.Bitmap);

  Dom27.Picture.Bitmap:=nil;
  if image[26]<>28 then
  ImageList1.GetBitmap(image[26], Dom27.Picture.Bitmap);

  Dom28.Picture.Bitmap:=nil;
  if image[27]<>28 then
  ImageList1.GetBitmap(image[27],Dom28.Picture.Bitmap);

  Dom2.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom2.Picture.Bitmap);
  Dom3.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom3.Picture.Bitmap);
  Dom4.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom4.Picture.Bitmap);
  Dom5.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom5.Picture.Bitmap);
  Dom6.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom6.Picture.Bitmap);
  Dom7.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom7.Picture.Bitmap);
  Dom8.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom8.Picture.Bitmap);
  Dom9.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom9.Picture.Bitmap);
  Dom10.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom10.Picture.Bitmap);
  Dom11.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom11.Picture.Bitmap);
  Dom12.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom12.Picture.Bitmap);
  Dom13.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom13.Picture.Bitmap);
  Dom14.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom14.Picture.Bitmap);
  Dom15.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom15.Picture.Bitmap);
  Dom16.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom16.Picture.Bitmap);
  Dom17.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom17.Picture.Bitmap);
  Dom18.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom18.Picture.Bitmap);
  Dom19.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom19.Picture.Bitmap);
  Dom20.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom20.Picture.Bitmap);
  Dom21.Picture.Bitmap:=nil;
  ImageList1.GetBitmap(r,Dom21.Picture.Bitmap);
end;

procedure TMainForm.del(a: integer; Sender: TObject);
begin
 if a=1 then
  begin
   Dom1.Visible:=false;
   Dom1.Enabled:=false;

   Dom2.Picture.Bitmap:=nil;
   ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

   Dom3.Picture.Bitmap:=nil;
   ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;

  end;

 if a=2 then
  begin
   Dom2.Visible:=false;
   Dom2.Enabled:=false;

   if Dom3.Enabled=false then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);
    end else
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
  end;

 if a=3 then
  begin
   Dom3.Visible:=false;
   Dom3.Enabled:=false;

   if Dom2.Enabled=false then
    begin
    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);
   end else
    begin
    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
  end;

 if a=4 then
  begin
   Dom4.Visible:=false;
   Dom4.Enabled:=false;

   if Dom5.Enabled= false then
    begin
    Dom2.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);
    end else
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
  end;

 if a=5 then
  begin
   Dom5.Visible:=false;
   Dom5.Enabled:=false;

   if (Dom4.Enabled=false) and (Dom6.Enabled=false) then
    begin
    Dom2.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

    Dom3.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);
    end else
    begin
    if Dom4.Enabled=false then
     begin
     Dom2.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);
     end;

    if Dom6.Enabled=false then
     begin
     Dom3.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
  end;

 if a=6 then
  begin
   Dom6.Visible:=false;
   Dom6.Enabled:=false;

   if Dom5.Enabled= false then
    begin
    Dom3.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);
    end else
    begin
    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=7 then
  begin
   Dom7.Visible:=false;
   Dom7.Enabled:=false;

   if Dom8.Enabled= false then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
    end else
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=8 then
  begin
   Dom8.Visible:=false;
   Dom8.Enabled:=false;

   if (Dom7.Enabled=false) and (Dom9.Enabled=false) then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
    end else
    begin
    if Dom7.Enabled=false then
     begin
     Dom4.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;

    if Dom9.Enabled=false then
     begin
     Dom5.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[4],Dom3.Picture.Bitmap);

     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender)else
       kol:=28;
    end;
end;

 if a=9 then
  begin
   Dom9.Visible:=false;
   Dom9.Enabled:=false;

   if (Dom8.Enabled=false) and (Dom10.Enabled=false) then
    begin
    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
    end else
    begin
    if Dom8.Enabled=false then
     begin
     Dom5.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;

    if Dom10.Enabled=false then
     begin
     Dom6.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender)else
       kol:=28;
    end;
end;

 if a=10 then
  begin
   Dom10.Visible:=false;
   Dom10.Enabled:=false;

   if Dom9.Enabled= false then
    begin
    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);

    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end else
    begin
    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender)else
       kol:=28;
    end;
end;

 if a=11 then
  begin
   Dom11.Visible:=false;
   Dom11.Enabled:=false;

   if Dom12.Enabled= false then
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
    end else
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=12 then
  begin
   Dom12.Visible:=false;
   Dom12.Enabled:=false;

   if (Dom11.Enabled=false) and (Dom13.Enabled=false) then
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
    end else
    begin
    if Dom11.Enabled=false then
     begin
     Dom7.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;

    if Dom13.Enabled=false then
     begin
     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=13 then
  begin
   Dom13.Visible:=false;
   Dom13.Enabled:=false;

   if (Dom12.Enabled=false) and (Dom14.Enabled=false) then
    begin
    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
    end else
    begin
    if Dom12.Enabled=false then
     begin
     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;

    if Dom14.Enabled=false then
     begin
     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=14 then
  begin
   Dom14.Visible:=false;
   Dom14.Enabled:=false;

   if (Dom13.Enabled=false) and (Dom15.Enabled=false) then
    begin
    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
    end else
    begin
    if Dom13.Enabled=false then
     begin
     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;

    if Dom15.Enabled=false then
     begin
     Dom10.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;
    end;

    if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=15 then
  begin
   Dom15.Visible:=false;
   Dom15.Enabled:=false;

   if Dom14.Enabled= false then
    begin
    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);

    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end else
    begin
    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=16 then
  begin
   Dom16.Visible:=false;
   Dom16.Enabled:=false;

   if Dom17.Enabled= false then
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
    end;

  if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=17 then
  begin
   Dom17.Visible:=false;
   Dom17.Enabled:=false;

   if (Dom16.Enabled=false) and (Dom18.Enabled=false) then
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
    end else
    begin
    if Dom16.Enabled=false then
     begin
     Dom11.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
     end;

    if Dom18.Enabled=false then
     begin
     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=18 then
  begin
   Dom18.Visible:=false;
   Dom18.Enabled:=false;

   if (Dom17.Enabled=false) and (Dom19.Enabled=false) then
    begin
    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
    end else
    begin
    if Dom17.Enabled=false then
     begin
     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;

    if Dom19.Enabled=false then
     begin
     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=19 then
  begin
   Dom19.Visible:=false;
   Dom19.Enabled:=false;

   if (Dom18.Enabled=false) and (Dom20.Enabled=false) then
    begin
    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
    end else
    begin
    if Dom18.Enabled=false then
     begin
     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;

    if Dom20.Enabled=false then
     begin
     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=20 then
  begin
   Dom20.Visible:=false;
   Dom20.Enabled:=false;

   if (Dom19.Enabled=false) and (Dom21.Enabled=false) then
    begin
    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);

    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end else
    begin
    if Dom19.Enabled=false then
     begin
     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;

    if Dom21.Enabled=false then
     begin
     Dom15.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=21 then
  begin
   Dom21.Visible:=false;
   Dom21.Enabled:=false;

   if Dom20.Enabled= false then
    begin
    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=22 then
  begin
   Dom22.Visible:=false;
   Dom22.Enabled:=false;

   if Dom23.Enabled= false then
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=23 then
  begin
   Dom23.Visible:=false;
   Dom23.Enabled:=false;

   if (Dom22.Enabled=false) and (Dom24.Enabled=false) then
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
    end else
    begin
    if Dom22.Enabled=false then
     begin
     Dom16.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
     end;

    if Dom24.Enabled=false then
     begin
     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=24 then
  begin
   Dom24.Visible:=false;
   Dom24.Enabled:=false;

   if (Dom23.Enabled=false) and (Dom25.Enabled=false) then
    begin
    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
    end else
    begin
    if Dom23.Enabled=false then
     begin
     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;

    if Dom25.Enabled=false then
     begin
     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;
    end;

   if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=25 then
  begin
   Dom25.Visible:=false;
   Dom25.Enabled:=false;
   if (Dom24.Enabled=false) and (Dom26.Enabled=false) then
    begin
    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
    end else
    begin
    if Dom24.Enabled=false then
     begin
     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;

    if Dom26.Enabled=false then
     begin
     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;
    end;

  if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;
  
 if a=26 then
  begin
   Dom26.Visible:=false;
   Dom26.Enabled:=false;

   if (Dom25.Enabled=false) and (Dom27.Enabled=false) then
    begin
    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
    end else
    begin
    if Dom25.Enabled=false then
     begin
     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;

    if Dom27.Enabled=false then
     begin
     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;
    end;

  if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=27 then
  begin
   Dom27.Visible:=false;
   Dom27.Enabled:=false;

   if (Dom26.Enabled=false) and (Dom28.Enabled=false) then
    begin
    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);

    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end else
    begin
    if Dom26.Enabled=false then
     begin
     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;

    if Dom28.Enabled=false then
     begin
     Dom21.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
     end;
    end;

  if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

 if a=28 then
  begin
   Dom28.Visible:=false;
   Dom28.Enabled:=false;

   if Dom27.Enabled= false then
    begin
    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end;
  end;

 if kol=0 then
    begin
     Timer1.Interval:=0;
     if Application.MessageBox('Поздравляю, Вы победили!!!'+#10+#13+
          'Желаете начать новую игру?','Игра закончена',MB_OKCANCEL)=id_OK then
       NewGame(j,z, Sender) else
       kol:=28;
    end;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
 NewGame(j,z, Sender);
end;

procedure TMainForm.dom1Click(Sender: TObject);
begin
if m<>1 then
 begin

if n=1 then
 begin
  i2:=image[0];
  n:=2;
  d2:=1;
 end;

if n=0 then
 begin
  a:=1;
  d1:=1;
  i1:=image[0];
  n:=1;
  m:=1;
  N11.Enabled:=false;
  Dom1.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[0],Dom1.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom1.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[0],Dom1.Picture.Bitmap);
     end;

if n=2 then
 begin
   if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom1.Visible:=false;
    Dom1.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

    Dom2.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

    Dom3.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
end;

procedure TMainForm.dom2Click(Sender: TObject);
begin
If (Dom1.Enabled=false) or (Dom4.Enabled=false) and (Dom5.Enabled=false) then
BEGIN
if m<>2 then
 begin

if n=1 then
  begin
   i2:=image[1];
   n:=2;
   d2:=2;
  end;

if n=0 then
 begin
  a:=2;
  d1:=2;
  i1:=image[1];
  n:=1;
  m:=2;
  N11.Enabled:=false;
  Dom2.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[1],Dom2.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom2.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom2.Visible:=false;
    Dom2.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);
   if Dom3.Enabled=false then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);
    end else
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom3Click(Sender: TObject);
begin
If (Dom1.Enabled=false) or (Dom5.Enabled=false) and (Dom6.Enabled=false) then
BEGIN
if m<>3 then
 begin

if n=1 then
  begin
   i2:=image[2];
   n:=2;
   d2:=3;
  end;

if n=0 then
 begin
  a:=3;
  d1:=3;
  i1:=image[2];
  n:=1;
  m:=3;
  N11.Enabled:=false;
  Dom3.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[2],Dom3.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom3.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom3.Visible:=false;
    Dom3.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

    if Dom2.Enabled=false then
    begin
    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);
    end else
    begin
    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);
    end;      
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom4Click(Sender: TObject);
begin
If (Dom2.Enabled=false) or (Dom7.Enabled=false) and (Dom8.Enabled=false) then
BEGIN
if m<>4 then
 begin

if n=1 then
  begin
   i2:=image[3];
   n:=2;
   d2:=4;
  end;

if n=0 then
 begin
  a:=4;
  d1:=4;
  i1:=image[3];
  n:=1;
  m:=4;
  N11.Enabled:=false;
  Dom4.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[3],Dom4.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom4.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom4.Visible:=false;
    Dom4.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

    if Dom5.Enabled= false then
    begin
    Dom2.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);
    end else
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom5Click(Sender: TObject);
begin
If (Dom2.Enabled=false) and (Dom3.Enabled=false)
     or (Dom8.Enabled=false) and (Dom9.Enabled=false) then
BEGIN
if m<>5 then
 begin

if n=1 then
  begin
   i2:=image[4];
   n:=2;
   d2:=5;
  end;

if n=0 then
 begin
  a:=5;
  d1:=5;
  i1:=image[4];
  n:=1;
  m:=5;
  N11.Enabled:=false;
  Dom5.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[4],Dom5.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom5.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom5.Visible:=false;
    Dom5.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

    if (Dom4.Enabled=false) and (Dom6.Enabled=false) then
    begin
    Dom2.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

    Dom3.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);
    end else
    begin
    if Dom4.Enabled=false then
     begin
     Dom2.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[1],Dom2.Picture.Bitmap);

     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);
     end;

    if Dom6.Enabled=false then
     begin
     Dom3.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom6Click(Sender: TObject);
begin
If (Dom3.Enabled=false) or (Dom9.Enabled=false) and (Dom10.Enabled=false) then
BEGIN
if m<>6 then
 begin

if n=1 then
  begin
   i2:=image[5];
   n:=2;
   d2:=6;
  end;

if n=0 then
 begin
  a:=6;
  d1:=6;
  i1:=image[5];
  n:=1;
  m:=6;
  N11.Enabled:=false;
  Dom6.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[5],Dom6.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom6.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom6.Visible:=false;
    Dom6.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

    if Dom5.Enabled= false then
    begin
    Dom3.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[2],Dom3.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);
    end else
    begin
    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom7Click(Sender: TObject);
begin
If (Dom4.Enabled=false) or (Dom11.Enabled=false) and (Dom12.Enabled=false) then
BEGIN
if m<>7 then
 begin

if n=1 then
  begin
   i2:=image[6];
   n:=2;
   d2:=7;
  end;

if n=0 then
 begin
  a:=7;
  d1:=7;
  i1:=image[6];
  n:=1;
  m:=7;
  N11.Enabled:=false;
  Dom7.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[6],Dom7.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom7.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom7.Visible:=false;
    Dom7.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom8.Enabled= false then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
    end else
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom8Click(Sender: TObject);
begin
If (Dom4.Enabled=false) and (Dom5.Enabled=false)
     or (Dom12.Enabled=false) and (Dom13.Enabled=false) then
BEGIN
if m<>8 then
 begin

if n=1 then
  begin
   i2:=image[7];
   n:=2;
   d2:=8;
  end;

if n=0 then
 begin
  a:=8;
  d1:=8;
  i1:=image[7];
  n:=1;
  m:=8;
  N11.Enabled:=false;
  Dom8.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[7],Dom8.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom8.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom8.Visible:=false;
    Dom8.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom7.Enabled=false) and (Dom9.Enabled=false) then
    begin
    Dom4.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
    end else
    begin
    if Dom7.Enabled=false then
     begin
     Dom4.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[3],Dom4.Picture.Bitmap);

     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;

    if Dom9.Enabled=false then
     begin
     Dom5.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom9Click(Sender: TObject);
begin
If (Dom5.Enabled=false) and (Dom6.Enabled=false)
    or (Dom13.Enabled=false) and (Dom14.Enabled=false) then
BEGIN
if m<>9 then
 begin

if n=1 then
  begin
   i2:=image[8];
   n:=2;
   d2:=9;
  end;

if n=0 then
 begin
  a:=9;
  d1:=9;
  i1:=image[8];
  n:=1;
  m:=9;
  N11.Enabled:=false;
  Dom9.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[8],Dom9.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom9.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom9.Visible:=false;
    Dom9.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom8.Enabled=false) and (Dom10.Enabled=false) then
    begin
    Dom5.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
    end else
    begin
    if Dom8.Enabled=false then
     begin
     Dom5.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[4],Dom5.Picture.Bitmap);

     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;

    if Dom10.Enabled=false then
     begin
     Dom6.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end; 
 end;
END;

end;

procedure TMainForm.dom10Click(Sender: TObject);
begin
If (Dom6.Enabled=false) or (Dom14.Enabled=false) and (Dom15.Enabled=false) then
BEGIN
if m<>10 then
 begin

if n=1 then
  begin
   i2:=image[9];
   n:=2;
   d2:=10;
  end;

if n=0 then
 begin
  a:=10;
  d1:=10;
  i1:=image[9];
  n:=1;
  m:=10;
  N11.Enabled:=false;
  Dom10.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[9],Dom10.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom10.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom10.Visible:=false;
    Dom10.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom9.Enabled= false then
    begin
    Dom6.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[5],Dom6.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);

    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end else
    begin
    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom11Click(Sender: TObject);
begin
If (Dom7.Enabled=false) or (Dom16.Enabled=false) and (Dom17.Enabled=false) then
BEGIN
if m<>11 then
 begin

if n=1 then
  begin
   i2:=image[10];
   n:=2;
   d2:=11;
  end;

if n=0 then
 begin
  a:=11;
  d1:=11;
  i1:=image[10];
  n:=1;
  m:=11;
  N11.Enabled:=false;
  Dom11.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[10],Dom11.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom11.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom11.Visible:=false;
    Dom11.Enabled:=false;
    d1:=m;
    d2:=a;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom12.Enabled= false then
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
    end else
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom12Click(Sender: TObject);
begin
If (Dom7.Enabled=false) and (Dom7.Enabled=false)
     or (Dom17.Enabled=false) and (Dom18.Enabled=false) then
BEGIN
if m<>12 then
 begin

if n=1 then
  begin
   i2:=image[11];
   n:=2;
   d2:=12;
  end;

if n=0 then
 begin
  a:=12;
  d1:=12;
  i1:=image[11];
  n:=1;
  m:=12;
  N11.Enabled:=false;
  Dom12.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[11],Dom12.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom12.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom12.Visible:=false;
    Dom12.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom11.Enabled=false) and (Dom13.Enabled=false) then
    begin
    Dom7.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
    end else
    begin
    if Dom11.Enabled=false then
     begin
     Dom7.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[6],Dom7.Picture.Bitmap);

     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;

    if Dom13.Enabled=false then
     begin
     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom13Click(Sender: TObject);
BEGIN
if (b1=1) or ((Dom18.Enabled=false) and (Dom19.Enabled=false)) or
        ((Dom8.Enabled=false) and (Dom9.Enabled=false)) then
begin
if m<>13 then
 begin

if n=1 then
  begin
   i2:=image[12];
   n:=2;
   d2:=13;
  end;

if n=0 then
 begin
  a:=13;
  d1:=13;
  i1:=image[12];
  n:=1;
  m:=13;
  N11.Enabled:=false;
  Dom13.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[12],Dom13.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom13.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom13.Visible:=false;
    Dom13.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom12.Enabled=false) and (Dom14.Enabled=false) then
    begin
    Dom8.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
    end else
    begin
    if Dom12.Enabled=false then
     begin
     Dom8.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[7],Dom8.Picture.Bitmap);

     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;

    if Dom14.Enabled=false then
     begin
     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;
    end;
  end else begin
            n:=1;
            d2:=0;
           end;
END;
end
 else
  begin
   b1:=1;
   Dom13.Picture.Bitmap:=nil;
   ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
  end;

end;

procedure TMainForm.dom14Click(Sender: TObject);
begin
If (Dom9.Enabled=false) and (Dom10.Enabled=false)
     or (Dom19.Enabled=false) and (Dom20.Enabled=false) then
BEGIN
if m<>14 then
 begin

if n=1 then
  begin
   i2:=image[13];
   n:=2;
   d2:=14;
  end;

if n=0 then
 begin
  a:=14;
  d1:=14;
  i1:=image[13];
  n:=1;
  m:=14;
  N11.Enabled:=false;
  Dom14.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[13],Dom14.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom14.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom14.Visible:=false;
    Dom14.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom13.Enabled=false) and (Dom15.Enabled=false) then
    begin
    Dom9.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
    end else
    begin
    if Dom13.Enabled=false then
     begin
     Dom9.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[8],Dom9.Picture.Bitmap);

     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;

    if Dom15.Enabled=false then
     begin
     Dom10.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;



procedure TMainForm.dom15Click(Sender: TObject);
begin
If (Dom10.Enabled=false) or (Dom20.Enabled=false) and (Dom21.Enabled=false) then
BEGIN
if m<>15 then
 begin

if n=1 then
  begin
   i2:=image[14];
   n:=2;
   d2:=15;
  end;

if n=0 then
 begin
  a:=15;
  d1:=15;
  i1:=image[14];
  n:=1;
  m:=15;
  N11.Enabled:=false;
  Dom15.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[14],Dom15.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom15.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom15.Visible:=false;
    Dom15.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom14.Enabled= false then
    begin
    Dom10.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[9],Dom10.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);

    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end else
    begin
    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom16Click(Sender: TObject);
begin
If (Dom11.Enabled=false) or (Dom22.Enabled=false) and (Dom23.Enabled=false) then
BEGIN
if m<>16 then
 begin

if n=1 then
  begin
   i2:=image[15];
   n:=2;
   d2:=16;
  end;

if n=0 then
 begin
  a:=16;
  d1:=16;
  i1:=image[15];
  n:=1;
  m:=16;
  N11.Enabled:=false;
  Dom16.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[15],Dom16.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom16.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom16.Visible:=false;
    Dom16.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom17.Enabled= false then
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom17Click(Sender: TObject);
begin
If (Dom11.Enabled=false) and (Dom12.Enabled=false)
     or (Dom23.Enabled=false) and (Dom24.Enabled=false) then
BEGIN
if m<>17 then
 begin

if n=1 then
  begin
   i2:=image[16];
   n:=2;
   d2:=17;
  end;

if n=0 then
 begin
  a:=17;
  d1:=17;
  i1:=image[16];
  n:=1;
  m:=17;
  N11.Enabled:=false;
  Dom17.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[16],Dom17.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom17.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom17.Visible:=false;
    Dom17.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom16.Enabled=false) and (Dom18.Enabled=false) then
    begin
    Dom11.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);

    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
    end else
    begin
    if Dom16.Enabled=false then
     begin
     Dom11.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[10],Dom11.Picture.Bitmap);
     end;

    if Dom18.Enabled=false then
     begin
     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom18Click(Sender: TObject);
begin
If (Dom12.Enabled=false) and (Dom13.Enabled=false)
     or (Dom24.Enabled=false) and (Dom25.Enabled=false) then
BEGIN
if m<>18 then
 begin

if n=1 then
  begin
   i2:=image[17];
   n:=2;
   d2:=18;
  end;

if n=0 then
 begin
  a:=18;
  d1:=18;
  i1:=image[17];
  n:=1;
  m:=18;
  N11.Enabled:=false;
  Dom18.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[17],Dom18.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom18.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom18.Visible:=false;
    Dom18.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom17.Enabled=false) and (Dom19.Enabled=false) then
    begin
    Dom12.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);

    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
    end else
    begin
    if Dom17.Enabled=false then
     begin
     Dom12.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[11],Dom12.Picture.Bitmap);
     end;

    if Dom19.Enabled=false then
     begin
     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom19Click(Sender: TObject);
begin
If (Dom13.Enabled=false) and (Dom14.Enabled=false)
     or (Dom25.Enabled=false) and (Dom26.Enabled=false) then
BEGIN
if m<>19 then
 begin

if n=1 then
  begin
   i2:=image[18];
   n:=2;
   d2:=19;
  end;

if n=0 then
 begin
  a:=19;
  d1:=19;
  i1:=image[18];
  n:=1;
  m:=19;
  N11.Enabled:=false;
  Dom19.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[18],Dom19.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom19.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom19.Visible:=false;
    Dom19.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom18.Enabled=false) and (Dom20.Enabled=false) then
    begin
    Dom13.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);

    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
    end else
    begin
    if Dom18.Enabled=false then
     begin
     Dom13.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[12],Dom13.Picture.Bitmap);
     end;

    if Dom20.Enabled=false then
     begin
     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom20Click(Sender: TObject);
begin
If (Dom14.Enabled=false) and (Dom15.Enabled=false)
     or (Dom26.Enabled=false) and (Dom27.Enabled=false) then
BEGIN
if m<>20 then
 begin

if n=1 then
  begin
   i2:=image[19];
   n:=2;
   d2:=20;
  end;

if n=0 then
 begin
  a:=20;
  d1:=20;
  i1:=image[19];
  n:=1;
  m:=20;
  N11.Enabled:=false;
  Dom20.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[19],Dom20.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom20.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom20.Visible:=false;
    Dom20.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom19.Enabled=false) and (Dom21.Enabled=false) then
    begin
    Dom14.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);

    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end else
    begin
    if Dom19.Enabled=false then
     begin
     Dom14.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[13],Dom14.Picture.Bitmap);
     end;

    if Dom21.Enabled=false then
     begin
     Dom15.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom21Click(Sender: TObject);
begin
If (Dom15.Enabled=false) or (Dom27.Enabled=false) and (Dom28.Enabled=false) then
BEGIN
if m<>21 then
 begin

if n=1 then
  begin
   i2:=image[20];
   n:=2;
   d2:=21;
  end;

if n=0 then
 begin
  a:=21;
  d1:=21;
  i1:=image[20];
  n:=1;
  m:=21;
  N11.Enabled:=false;
  Dom21.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[20],Dom21.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom21.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom21.Visible:=false;
    Dom21.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom20.Enabled= false then
    begin
    Dom15.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[14],Dom15.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
END;

end;

procedure TMainForm.dom22Click(Sender: TObject);
begin
if m<>22 then
 begin

if n=1 then
  begin
   i2:=image[21];
   n:=2;
   d2:=22;
  end;

if n=0 then
 begin
  a:=22;
  d1:=22;
  i1:=image[21];
  n:=1;
  m:=22;
  N11.Enabled:=false;
  Dom22.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[21],Dom22.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom22.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[21],Dom22.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom22.Visible:=false;
    Dom22.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom23.Enabled= false then
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.dom23Click(Sender: TObject);
begin
if m<>23 then
 begin

if n=1 then
  begin
   i2:=image[22];
   n:=2;
   d2:=23;
  end;

if n=0 then
 begin
  a:=23;
  d1:=23;
  i1:=image[22];
  n:=1;
  m:=23;
  N11.Enabled:=false;
  Dom23.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[22],Dom23.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom23.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[22],Dom23.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom23.Visible:=false;
    Dom23.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom22.Enabled=false) and (Dom24.Enabled=false) then
    begin
    Dom16.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);

    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
    end else
    begin
    if Dom22.Enabled=false then
     begin
     Dom16.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[15],Dom16.Picture.Bitmap);
     end;

    if Dom24.Enabled=false then
     begin
     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.dom24Click(Sender: TObject);
begin
if m<>24 then
 begin

if n=1 then
  begin
   i2:=image[23];
   n:=2;
   d2:=24;
  end;

if n=0 then
 begin
  a:=24;
  d1:=24;
  i1:=image[23];
  n:=1;
  m:=24;
  N11.Enabled:=false;
  Dom24.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[23],Dom24.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom24.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[23],Dom24.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom24.Visible:=false;
    Dom24.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom23.Enabled=false) and (Dom25.Enabled=false) then
    begin
    Dom17.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);

    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
    end else
    begin
    if Dom23.Enabled=false then
     begin
     Dom17.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[16],Dom17.Picture.Bitmap);
     end;

    if Dom25.Enabled=false then
     begin
     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.dom25Click(Sender: TObject);
begin
if m<>25 then
 begin

if n=1 then
  begin
   i2:=image[24];
   n:=2;
   d2:=25;
  end;

if n=0 then
 begin
  a:=25;
  d1:=25;
  i1:=image[24];
  n:=1;
  m:=25;
  N11.Enabled:=false;
  Dom25.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[24],Dom25.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom25.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[24],Dom25.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom25.Visible:=false;
    Dom25.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom24.Enabled=false) and (Dom26.Enabled=false) then
    begin
    Dom18.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);

    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
    end else
    begin
    if Dom24.Enabled=false then
     begin
     Dom18.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[17],Dom18.Picture.Bitmap);
     end;

    if Dom26.Enabled=false then
     begin
     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;
end;

procedure TMainForm.dom26Click(Sender: TObject);
begin
if m<>26 then
 begin

 if n=1 then
  begin
   i2:=image[25];
   n:=2;
   D2:=26;
  end;

if n=0 then
 begin
  a:=26;
  d1:=26;
  i1:=image[25];
  n:=1;
  m:=26;
  N11.Enabled:=false;
  Dom26.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[25],Dom26.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom26.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[25],Dom26.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom26.Visible:=false;
    Dom26.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom25.Enabled=false) and (Dom27.Enabled=false) then
    begin
    Dom19.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);

    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
    end else
    begin
    if Dom25.Enabled=false then
     begin
     Dom19.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[18],Dom19.Picture.Bitmap);
     end;

    if Dom27.Enabled=false then
     begin
     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.dom27Click(Sender: TObject);
begin
if m<>27 then
 begin

if n=1 then
  begin
   i2:=image[26];
   n:=2;
   d2:=27;
  end;

if n=0 then
 begin
  a:=27;
  d1:=27;
  i1:=image[26];
  n:=1;
  m:=27;
  N11.Enabled:=false;
  Dom27.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[26],Dom27.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom27.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[26],Dom27.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom27.Visible:=false;
    Dom27.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if (Dom26.Enabled=false) and (Dom28.Enabled=false) then
    begin
    Dom20.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);

    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end else
    begin
    if Dom26.Enabled=false then
     begin
     Dom20.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[19],Dom20.Picture.Bitmap);
     end;

    if Dom28.Enabled=false then
     begin
     Dom21.Picture.Bitmap:=nil;
     ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
     end;
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.dom28Click(Sender: TObject);
begin
if m<>28 then
 begin

if n=1 then
  begin
   i2:=image[27];
   n:=2;
   d2:=28;
  end;

if n=0 then
 begin
  a:=28;
  d1:=28;
  i1:=image[27];
  n:=1;
  m:=28;
  N11.Enabled:=false;
  Dom28.Picture.Bitmap:=nil;
  ImageList2.GetBitmap(image[27],Dom28.Picture.Bitmap);
 end;
end else
     begin
      n:=0;
      m:=0;
      i1:=0;
      i2:=0;
      Dom28.Picture.Bitmap:=nil;
      ImageList1.GetBitmap(image[27],Dom28.Picture.Bitmap);
     end;

if n=2 then
 begin
  if d[i1]+d[i2]=12 then
   begin
    sleep(100);
    Dom28.Visible:=false;
    Dom28.Enabled:=false;
    N11.Enabled:=true;
    n:=0;
    m:=0;
    i1:=0;
    i2:=0;
    kol:=Kol-2;
    KolLabel.Caption:=IntToStr(kol);
    del(a, Sender);

   if Dom27.Enabled= false then
    begin
    Dom21.Picture.Bitmap:=nil;
    ImageList1.GetBitmap(image[20],Dom21.Picture.Bitmap);
    end;
   end else begin
             n:=1;
             d2:=0;
            end;
 end;

end;

procedure TMainForm.N5Click(Sender: TObject);
begin
 MainForm.Close;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
 if ss<59 then
  begin
   ss:=ss+1;
  end else
   begin
    ss:=0;
    mm:=mm+1;
   end;
   SLabel.Caption:=InttoStr(ss);
   MLabel.Caption:=IntToStr(mm);
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
 if ColorDialog1.Execute then
  MainForm.Color:=ColorDialog1.Color;
end;

procedure TMainForm.Xod;
begin
case d1 of
  1: begin
      Dom1.Enabled:=true;
      Dom1.Visible:=true;
      ImageList1.GetBitmap(image[0], Dom1.Picture.Bitmap);
     end;

  2: begin
      Dom2.Enabled:=true;
      Dom2.Visible:=true;
      ImageList1.GetBitmap(image[1], Dom2.Picture.Bitmap);
     end;

  3: begin
      Dom3.Enabled:=true;
      Dom3.Visible:=true;
      ImageList1.GetBitmap(image[2], Dom3.Picture.Bitmap);
     end;

  4: begin
      Dom4.Enabled:=true;
      Dom4.Visible:=true;
      ImageList1.GetBitmap(image[3], Dom4.Picture.Bitmap);
     end;

  5: begin
      Dom5.Enabled:=true;
      Dom5.Visible:=true;
      ImageList1.GetBitmap(image[4], Dom5.Picture.Bitmap);
     end;

  6: begin
      Dom6.Enabled:=true;
      Dom6.Visible:=true;
      ImageList1.GetBitmap(image[5], Dom6.Picture.Bitmap);
     end;

  7: begin
      Dom7.Enabled:=true;
      Dom7.Visible:=true;
      ImageList1.GetBitmap(image[6], Dom7.Picture.Bitmap);
     end;

  8: begin
      Dom8.Enabled:=true;
      Dom8.Visible:=true;
      ImageList1.GetBitmap(image[7], Dom8.Picture.Bitmap);
     end;

  9: begin
      Dom9.Enabled:=true;
      Dom9.Visible:=true;
      ImageList1.GetBitmap(image[8], Dom9.Picture.Bitmap);
     end;

 10: begin
      Dom10.Enabled:=true;
      Dom10.Visible:=true;
      ImageList1.GetBitmap(image[9], Dom10.Picture.Bitmap);
     end;

 11: begin
      Dom11.Enabled:=true;
      Dom11.Visible:=true;
      ImageList1.GetBitmap(image[10], Dom11.Picture.Bitmap);
     end;

 12: begin
      Dom12.Enabled:=true;
      Dom12.Visible:=true;
      ImageList1.GetBitmap(image[11], Dom12.Picture.Bitmap);
     end;

 13: begin
      Dom13.Enabled:=true;
      Dom13.Visible:=true;
      ImageList1.GetBitmap(image[12], Dom13.Picture.Bitmap);
     end;

 14: begin
      Dom14.Enabled:=true;
      Dom14.Visible:=true;
      ImageList1.GetBitmap(image[13], Dom14.Picture.Bitmap);
     end;

 15: begin
      Dom15.Enabled:=true;
      Dom15.Visible:=true;
      ImageList1.GetBitmap(image[14], Dom15.Picture.Bitmap);
     end;

 16: begin
      Dom16.Enabled:=true;
      Dom16.Visible:=true;
      ImageList1.GetBitmap(image[15], Dom16.Picture.Bitmap);
     end;

 17: begin
      Dom17.Enabled:=true;
      Dom17.Visible:=true;
      ImageList1.GetBitmap(image[16], Dom17.Picture.Bitmap);
     end;

 18: begin
      Dom18.Enabled:=true;
      Dom18.Visible:=true;
      ImageList1.GetBitmap(image[17], Dom18.Picture.Bitmap);
     end;

 19: begin
      Dom19.Enabled:=true;
      Dom19.Visible:=true;
      ImageList1.GetBitmap(image[18], Dom19.Picture.Bitmap);
     end;

 20: begin
      Dom20.Enabled:=true;
      Dom20.Visible:=true;
      ImageList1.GetBitmap(image[19], Dom20.Picture.Bitmap);
     end;

 21: begin
      Dom21.Enabled:=true;
      Dom21.Visible:=true;
      ImageList1.GetBitmap(image[20], Dom21.Picture.Bitmap);
     end;

 22: begin
      Dom22.Enabled:=true;
      Dom22.Visible:=true;
      ImageList1.GetBitmap(image[21], Dom22.Picture.Bitmap);
     end;

 23: begin
      Dom23.Enabled:=true;
      Dom23.Visible:=true;
      ImageList1.GetBitmap(image[22], Dom23.Picture.Bitmap);
     end;

 24: begin
      Dom24.Enabled:=true;
      Dom24.Visible:=true;
      ImageList1.GetBitmap(image[23], Dom24.Picture.Bitmap);
     end;

 25: begin
      Dom25.Enabled:=true;
      Dom25.Visible:=true;
      ImageList1.GetBitmap(image[24], Dom25.Picture.Bitmap);
     end;

 26: begin
      Dom26.Enabled:=true;
      Dom26.Visible:=true;
      ImageList1.GetBitmap(image[25], Dom26.Picture.Bitmap);
     end;

 27: begin
      Dom27.Enabled:=true;
      Dom27.Visible:=true;
      ImageList1.GetBitmap(image[26], Dom27.Picture.Bitmap);
     end;

 28: begin
      Dom28.Enabled:=true;
      Dom28.Visible:=true;
      ImageList1.GetBitmap(image[27], Dom28.Picture.Bitmap);
     end
  else N11.Enabled:=false;   
 end;

 case d2 of
  1: begin
      Dom1.Enabled:=true;
      Dom1.Visible:=true;
      ImageList1.GetBitmap(image[0], Dom1.Picture.Bitmap);
     end;

  2: begin
      Dom2.Enabled:=true;
      Dom2.Visible:=true;
      ImageList1.GetBitmap(image[1], Dom2.Picture.Bitmap);
     end;

  3: begin
      Dom3.Enabled:=true;
      Dom3.Visible:=true;
      ImageList1.GetBitmap(image[2], Dom3.Picture.Bitmap);
     end;

  4: begin
      Dom4.Enabled:=true;
      Dom4.Visible:=true;
      ImageList1.GetBitmap(image[3], Dom4.Picture.Bitmap);
     end;

  5: begin
      Dom5.Enabled:=true;
      Dom5.Visible:=true;
      ImageList1.GetBitmap(image[4], Dom5.Picture.Bitmap);
     end;

  6: begin
      Dom6.Enabled:=true;
      Dom6.Visible:=true;
      ImageList1.GetBitmap(image[5], Dom6.Picture.Bitmap);
     end;

  7: begin
      Dom7.Enabled:=true;
      Dom7.Visible:=true;
      ImageList1.GetBitmap(image[6], Dom7.Picture.Bitmap);
     end;

  8: begin
      Dom8.Enabled:=true;
      Dom8.Visible:=true;
      ImageList1.GetBitmap(image[7], Dom8.Picture.Bitmap);
     end;

  9: begin
      Dom9.Enabled:=true;
      Dom9.Visible:=true;
      ImageList1.GetBitmap(image[8], Dom9.Picture.Bitmap);
     end;

 10: begin
      Dom10.Enabled:=true;
      Dom10.Visible:=true;
      ImageList1.GetBitmap(image[9], Dom10.Picture.Bitmap);
     end;

 11: begin
      Dom11.Enabled:=true;
      Dom11.Visible:=true;
      ImageList1.GetBitmap(image[10], Dom11.Picture.Bitmap);
     end;

 12: begin
      Dom12.Enabled:=true;
      Dom12.Visible:=true;
      ImageList1.GetBitmap(image[11], Dom12.Picture.Bitmap);
     end;

 13: begin
      Dom13.Enabled:=true;
      Dom13.Visible:=true;
      ImageList1.GetBitmap(image[12], Dom13.Picture.Bitmap);
     end;

 14: begin
      Dom14.Enabled:=true;
      Dom14.Visible:=true;
      ImageList1.GetBitmap(image[13], Dom14.Picture.Bitmap);
     end;

 15: begin
      Dom15.Enabled:=true;
      Dom15.Visible:=true;
      ImageList1.GetBitmap(image[14], Dom15.Picture.Bitmap);
     end;

 16: begin
      Dom16.Enabled:=true;
      Dom16.Visible:=true;
      ImageList1.GetBitmap(image[15], Dom16.Picture.Bitmap);
     end;

 17: begin
      Dom17.Enabled:=true;
      Dom17.Visible:=true;
      ImageList1.GetBitmap(image[16], Dom17.Picture.Bitmap);
     end;

 18: begin
      Dom18.Enabled:=true;
      Dom18.Visible:=true;
      ImageList1.GetBitmap(image[17], Dom18.Picture.Bitmap);
     end;

 19: begin
      Dom19.Enabled:=true;
      Dom19.Visible:=true;
      ImageList1.GetBitmap(image[18], Dom19.Picture.Bitmap);
     end;

 20: begin
      Dom20.Enabled:=true;
      Dom20.Visible:=true;
      ImageList1.GetBitmap(image[19], Dom20.Picture.Bitmap);
     end;

 21: begin
      Dom21.Enabled:=true;
      Dom21.Visible:=true;
      ImageList1.GetBitmap(image[20], Dom21.Picture.Bitmap);
     end;

 22: begin
      Dom22.Enabled:=true;
      Dom22.Visible:=true;
      ImageList1.GetBitmap(image[21], Dom22.Picture.Bitmap);
     end;

 23: begin
      Dom23.Enabled:=true;
      Dom23.Visible:=true;
      ImageList1.GetBitmap(image[22], Dom23.Picture.Bitmap);
     end;

 24: begin
      Dom24.Enabled:=true;
      Dom24.Visible:=true;
      ImageList1.GetBitmap(image[23], Dom24.Picture.Bitmap);
     end;

 25: begin
      Dom25.Enabled:=true;
      Dom25.Visible:=true;
      ImageList1.GetBitmap(image[24], Dom25.Picture.Bitmap);
     end;

 26: begin
      Dom26.Enabled:=true;
      Dom26.Visible:=true;
      ImageList1.GetBitmap(image[25], Dom26.Picture.Bitmap);
     end;

 27: begin
      Dom27.Enabled:=true;
      Dom27.Visible:=true;
      ImageList1.GetBitmap(image[26], Dom27.Picture.Bitmap);
     end;

 28: begin
      Dom28.Enabled:=true;
      Dom28.Visible:=true;
      ImageList1.GetBitmap(image[27], Dom28.Picture.Bitmap);
     end
  else N11.Enabled:=false;
 end;

 Kol:=Kol+2;
 KolLabel.Caption:=IntToStr(kol);
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
 Xod(Sender);
 N11.Enabled:=false;
end;

end.

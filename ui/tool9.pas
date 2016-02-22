unit tool9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VidGrab, StdCtrls, Buttons, ComCtrls, Math, DdeMan,
  OleCtrls, SHDocVw, Menus;

type
   TForm1 = class(TForm)
      Timer1: TTimer;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      TabSheet2: TTabSheet;
      TabSheet3: TTabSheet;
      GroupBox1: TGroupBox;
      GroupBox2: TGroupBox;
      VideoGrabber2: TVideoGrabber;
      GroupBox3: TGroupBox;
      Edit2: TEdit;
      BitBtn2: TBitBtn;
      GroupBox4: TGroupBox;
      BitBtn4: TBitBtn;
      Edit3: TEdit;
      RadioGroup1: TRadioGroup;
      GroupBox5: TGroupBox;
      GroupBox6: TGroupBox;
      GroupBox7: TGroupBox;
      GroupBox8: TGroupBox;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Edit1: TEdit;
      Edit4: TEdit;
      Edit5: TEdit;
      BitBtn1: TBitBtn;
      BitBtn6: TBitBtn;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Edit6: TEdit;
      Edit7: TEdit;
      Edit8: TEdit;
      BitBtn7: TBitBtn;
      BitBtn8: TBitBtn;
      BitBtn9: TBitBtn;
      RadioGroup2: TRadioGroup;
      GroupBox9: TGroupBox;
      GroupBox10: TGroupBox;
      RadioGroup3: TRadioGroup;
      BitBtn10: TBitBtn;
      BitBtn11: TBitBtn;
      BitBtn12: TBitBtn;
      BitBtn13: TBitBtn;
      BitBtn14: TBitBtn;
      BitBtn15: TBitBtn;
      BitBtn16: TBitBtn;
      BitBtn17: TBitBtn;
      BitBtn18: TBitBtn;
      Image1: TImage;
      GroupBox11: TGroupBox;
      BitBtn19: TBitBtn;
      BitBtn20: TBitBtn;
      OpenDialog1: TOpenDialog;
      SaveDialog1: TSaveDialog;
      OpenDialog2: TOpenDialog;
      OpenDialog3: TOpenDialog;
      Timer2: TTimer;
      Image2: TImage;
      DdeClientConv1: TDdeClientConv;
      DdeClientItem1: TDdeClientItem;
      GroupBox12: TGroupBox;
      Edit9: TEdit;
      Edit10: TEdit;
      Label9: TLabel;
      Label10: TLabel;
      GroupBox13: TGroupBox;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Edit11: TEdit;
      Edit12: TEdit;
      Edit13: TEdit;
      Edit14: TEdit;
      Edit15: TEdit;
      BitBtn22: TBitBtn;
      GroupBox14: TGroupBox;
      Label16: TLabel;
      Edit16: TEdit;
      Timer3: TTimer;
      Label17: TLabel;
      Edit17: TEdit;
      GroupBox15: TGroupBox;
      GroupBox16: TGroupBox;
      GroupBox17: TGroupBox;
      Label18: TLabel;
      Edit18: TEdit;
      Label19: TLabel;
      Label20: TLabel;
      Label21: TLabel;
      Edit19: TEdit;
      Edit20: TEdit;
      RadioGroup6: TRadioGroup;
      RadioGroup7: TRadioGroup;
      BitBtn23: TBitBtn;
      Label22: TLabel;
      Edit21: TEdit;
      Label23: TLabel;
      Edit22: TEdit;
      BitBtn24: TBitBtn;
      BitBtn25: TBitBtn;
      GroupBox18: TGroupBox;
      BitBtn26: TBitBtn;
      BitBtn27: TBitBtn;
      Label24: TLabel;
      Edit23: TEdit;
      Label25: TLabel;
      Edit24: TEdit;
      Edit25: TEdit;
      Edit26: TEdit;
      Edit27: TEdit;
      Edit28: TEdit;
      Label26: TLabel;
      Label27: TLabel;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    CheckBox1: TCheckBox;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    Edit41: TEdit;
    GroupBox19: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Edit42: TEdit;
    Edit43: TEdit;
    BitBtn34: TBitBtn;
    CheckBox2: TCheckBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Image3: TImage;
    Label1: TLabel;
    WebBrowser1: TWebBrowser;
    Label2: TLabel;
    Edit44: TEdit;
    Edit45: TEdit;
    Label38: TLabel;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    BitBtn3: TBitBtn;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    BitBtn5: TBitBtn;
    BitBtn35: TBitBtn;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    cbb5: TComboBox;
    Label39: TLabel;
    BitBtn21: TBitBtn;
    BitBtn28: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure VideoGrabber2FrameCaptureCompleted(Sender: TObject;
      const FrameData: TFrameData; DestType: TFrameCaptureDest;
      FileName: String; Success: Boolean);
    procedure VideoGrabber2DrawOverFrame(Sender: TObject;
      const FrameInfo: TFrameInfo; Dc: HDC);
    procedure BitBtn9Click(Sender: TObject);
    procedure DdeClientItem1Change(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Edit25Change(Sender: TObject);
    procedure Edit26Change(Sender: TObject);
    procedure Edit27Change(Sender: TObject);
    procedure Edit28Change(Sender: TObject);
    procedure Edit29Change(Sender: TObject);
    procedure Edit30Change(Sender: TObject);
    procedure Edit31Change(Sender: TObject);
    procedure Edit32Change(Sender: TObject);
    procedure Edit18Change(Sender: TObject);
    procedure Edit21Change(Sender: TObject);
    procedure Edit22Change(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit42Change(Sender: TObject);
    procedure Edit43Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Edit33Change(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure DdeClientConv1Open(Sender: TObject);
    procedure DdeClientConv1Close(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VideoGrabber2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure Edit44Change(Sender: TObject);
    procedure Edit46Change(Sender: TObject);
    procedure Edit45Change(Sender: TObject);
    procedure Edit47Change(Sender: TObject);
    procedure Edit48Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure cbb3Change(Sender: TObject);
    procedure cbb4Change(Sender: TObject);
    procedure cbb5Change(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var
   xs,ys:integer;
   ax,ay,bx,by,tx,ty,wa,wb:integer;
   sax,say,sbx,sby,stx,sty,swa,swb:integer;
   aphi,bphi:byte;
   saphi,sbphi:byte;
   zoomx,zoomy,kmx2,kmy2:real;
   excha_b:boolean;
   comport:byte;
   bitmap:TBitmap;
   picture:TPicture;
   show_done:boolean;

procedure initport(num:byte);stdcall;
   external 'ibmmk_full.dll' name 'initport';

procedure readinram(pos:integer;var num:byte;var bad:boolean);stdcall;
   external 'ibmmk_full.dll' name 'readinram';

procedure writeinram(pos:integer;num:byte;var bad:boolean);stdcall;
   external 'ibmmk_full.dll' name 'writeinram';

procedure readmemo(pos:integer;var num:byte;var bad:boolean);stdcall;
   external 'ibmmk_full.dll' name 'readmemo';

procedure writememo(pos:integer;num:byte;var bad:boolean);stdcall;
   external 'ibmmk_full.dll' name 'writememo';

procedure startprg(pos:integer;num:byte;var bad:boolean);stdcall;
   external 'ibmmk_full.dll' name 'startprg';

procedure msg(num:byte);
begin
   with form1.Label19 do
   case num of
      0: Caption:='';
      1: Caption:='Нет связи с МК';
      2: Caption:='Нет связи с Fuzzy51';
      3: Caption:='Cвязь с Fuzzy51 установлена';
      4: Caption:='Ошибка при работе с файлом проекта RoBox51';
      else Caption:='Неизвестная ошибка';
   end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Randomize;
end;



{процедура обработки изображения и расчета координат}
procedure search(bitmap: TBitmap; var axx, ayy:integer;var aphii:byte; var bxx, byy:integer; var bphii:byte; var txx, tyy: integer; apsize, bpsize, pinterv, maxp, threshp: integer);
var
   // порог для threshold
   thresh: integer;
   // массивы для обработки изображения
   inpbmp,resbmp, history: array of array of integer;
   // найденные точки доминанты
   d1,d2,d3, centroid, headpoint, leftpoint, rightpoint:TPoint;
   a,b,c,a1,b1,c1,a2,b2,c2,phi1, phi2, phi3, phi_res, obj_square, obj_rel: double;
   // массив объектов
   objects: array of array of Double;
   // идентифицированные объекты
   objecta, objectb, objecttarget: array[0..3] of double;
   // флаг окончания поиска контуров и размеры изображения, и найден контур
   gflag, gwidth, gheight, finded: integer;
   // количество точек для поиска, площадь объектов
   pmaxcount,asize,bsize, pmaxinterval, targetsize: integer;
   size, x, y, arraycnt, target_flag: integer;

   res_bitmap: TBitmap;
   points: Integer;

   temprel: Double;

   nmin, nmid, nmax: Double;
   nmincnt, nmidcnt, nmaxcnt: Integer;


   {процедура бинаризации изображения}
procedure Threshold(Bitmap: TBitmap; Value: Byte; Color1, Color2: TColor);
type
  TRGB = record
    B, G, R: Byte;
  end;
  pRGB = ^TRGB;

  function ColorToRGB(Color: TColor): TRGB;
  begin
    with Result do
    begin
      R := Lo(Color);
      G := Lo(Color shr 8);
      B := Lo((Color shr 8) shr 8);
    end;
  end;

var
  x, y: Word;
  C1, C2: TRGB;
  Dest: pRGB;
  tmpx,tmpy:Integer;

begin
  Bitmap.PixelFormat := pf24Bit;
  C1 := ColorToRGB(Color1);
  C2 := ColorToRGB(Color2);
  gheight:=Bitmap.Height;
  gwidth:=Bitmap.Width;

  SetLength(resbmp, gheight+1, gwidth+1);
  SetLength(inpbmp, gheight+1, gwidth+1);
  SetLength(history, gheight+1, gwidth+1);

  for y := 0 to Bitmap.Height - 1 do
  begin
    Dest := Bitmap.ScanLine[y];
    for x := 0 to Bitmap.Width - 1 do
    begin
      tmpx:=x;
      tmpy:=y;

      resbmp[tmpy, tmpx] :=0;
      history[tmpy, tmpx] :=0;

      if (Dest^.r + Dest^.g + Dest^.b) / 3 > Value then
        begin
        Dest^ := C1;
        inpbmp[tmpy, tmpx] := 1;
        end
      else
        begin
        Dest^ := C2;
        inpbmp[tmpy, tmpx] := 0;
        end;
        Inc(Dest);
     end;
  end;
  // граничные точки делаем черными
  for x:=0 to Bitmap.Width-1 do
    begin
      inpbmp[0, x] :=0;
    end;
  // граничные точки делаем черными
  {for y:=0 to Bitmap.Height-1 do
  begin
      inpbmp[y, 0] :=0;
  end;
    for y:=0 to Bitmap.Height-1 do
  begin
      inpbmp[y, Bitmap.Width] :=0;
  end;
      for x:=0 to Bitmap.Width-1 do
    begin
      inpbmp[Bitmap.Height-1, x] :=0;
    end; }
end;
{конец бинаризации}

{процедура поиска контуров}
procedure Findcountours();
var
  x,xn,xk, xgn, xgk: Integer;
  y,yn,yk, ygn, ygk: Integer;
  xnprev: Integer;
  flag,rt,rl,rr,rb, tmp2:Integer;
  first: Integer;
  cnt: Integer;
  repeatflag: Integer;
  tmp:Integer;
  total:Integer;

  objectsize: integer;
  totalpoints:integer;
  ok:integer;
  y1, x1:integer;
  pcount: integer;
    target_flag:integer;
begin
 // history соержит 2 там если эта точка уже обрабатывалась
 // если 0 то значит еще не обрабатывалась
 flag:=0;
// ищем первую точку
  for y:=1 to gheight do
    begin
      for x:=1 to gwidth do
        begin
          if (inpbmp[y,x]=1) and (history[y,x]<>2) then
          begin
            if (flag=0) then
            begin
              // нашли первую точку
              resbmp[y, x] := 1;
              history[y,x] :=2;
              // начальные значения для рамки
              xn:=x;
              xk:=x;
              yn:=y;
              yk:=y;
              xnprev:=x;
              flag:=1;
              Break;
            end;
           end;
       end;
   end;
   // если первая точка не найдена
   if (flag=0) then
    begin
      gflag:=1;
      finded:=0;
      // выход из процедуры
      Exit;
    end;

 // координаты первой точки в x y
 // если точка найдена

 if (flag=1) then
   begin
   repeatflag:=1;
   xgn:=xn;
   xgk:=xk;
   ygk:=yk;
   ygn:=yn;
   totalpoints:=0;


   // цикл перебора точек массива на предмет определения контуров
     while(repeatflag=1) do
    begin

      rt:=0;
      rl:=0;
      rr:=0;
      rb:=0;

     xn:=xgn;
     xk:=xgk;
     yk:=ygk;
     yn:=ygn;

    // проходим по ряду ищем соседа
    y:=yn-1;
    tmp:=xk;
    tmp2:=xn;
    for x:=(xn-1) to (xk+1) do
    begin
      if (inpbmp[y,x]=1) then
      begin
      ok:=0;
      if (resbmp[y-1, x-1]=1) then ok:=ok+1;
         if (resbmp[y-1, x]=1) then ok:=ok+1;
         if (resbmp[y-1, x+1]=1) then ok:=ok+1;
         if (resbmp[y, x-1]=1) then ok:=ok+1;
         if (resbmp[y, x+1]=1) then ok:=ok+1;
         if (resbmp[y+1, x-1]=1) then ok:=ok+1;
         if (resbmp[y+1, x]=1) then ok:=ok+1;
         if (resbmp[y+1, x+1]=1) then ok:=ok+1;
         if (ok>0) then begin
        // занесли в контур
        resbmp[y, x] := 1;
        history[y,x] :=2;
        //end;

        //если это справа то увеличили фрейм
        if (x>xk) then xk:=x;
        // если это слева то увеличили фрейм слева
        if (x<xn) then xn:=x;
        rt:=1;

        if (xgk<xk) then xgk:=xk;
        if (xgn>xn) then xgn:=xn;
        if (ygn>y) then ygn:=y;
          Inc(totalpoints);

        end;

      end;
    end;
     xk:=tmp;
     xn:=tmp2;

    // смотрим левый столбец на наличие соседей
    x:=xn-1;
    tmp:=yk;
    tmp2:=yn;
    for y:=(yn-1) to (yk+1) do
    begin
      if (inpbmp[y,x]=1) then
      begin
         ok:=0;
         if (resbmp[y-1, x-1]=1) then ok:=ok+1;
         if (resbmp[y-1, x]=1) then ok:=ok+1;
         if (resbmp[y-1, x+1]=1) then ok:=ok+1;
         if (resbmp[y, x-1]=1) then ok:=ok+1;
         if (resbmp[y, x+1]=1) then ok:=ok+1;
         if (resbmp[y+1, x-1]=1) then ok:=ok+1;
         if (resbmp[y+1, x]=1) then ok:=ok+1;
         if (resbmp[y+1, x+1]=1) then ok:=ok+1;
         if (ok>0) then begin
          // занесли в контур
          resbmp[y, x] := 1;
          history[y,x] :=2;
        //end;

        // если это снизу расширим по yk
        if (y>yk) then yk := y;
        // если сверху расширим ро yн
        if (y<yn) then yn:=y;
        rl:=1;
        if (yk>ygk) then ygk:=yk;
        if (yn<ygn) then ygn:=yn;
        if (xgn>x) then xgn:=x;
        if (xgk<x) then xgk:=x;
        Inc(totalpoints);
        end;
      end;
    end;
    yk:=tmp;
    yn:=tmp2;

     // смотрим правый столбец
     x:=xk+1;
     tmp:=yk;
     tmp2:=yn;
     for y:=(yn-1) to (yk+1) do
     begin
      if (inpbmp[y,x]=1) then
      begin
      ok:=0;
      if (resbmp[y-1, x-1]=1) then ok:=ok+1;
         if (resbmp[y-1, x]=1) then ok:=ok+1;
         if (resbmp[y-1, x+1]=1) then ok:=ok+1;
         if (resbmp[y, x-1]=1) then ok:=ok+1;
         if (resbmp[y, x+1]=1) then ok:=ok+1;
         if (resbmp[y+1, x-1]=1) then ok:=ok+1;
         if (resbmp[y+1, x]=1) then ok:=ok+1;
         if (resbmp[y+1, x+1]=1) then ok:=ok+1;
         if (ok>0) then begin

      // заносим в контур
      resbmp[y, x] := 1;
      history[y,x] :=2;

      //end;

      // если расширили справа расширим по икс
      if (y>yk) then yk:=y;
      if (y<yn) then yn:=y;
       rr:=1;
      if (yk>ygk) then ygk:=yk;
      if (yn<ygn) then ygn:=yn;

      if (xgn>x) then xgn:=x;
      if (xgk<x) then xgk:=x;
      Inc(totalpoints);
      end;

      end;
     end;
     yk:=tmp;
     yn:=tmp2;


     // смотрим нижний ряд
     y:=yk+1;
     for x:=(xn-1) to (xk+1) do
     begin
      if (inpbmp[y,x]=1) then
      begin
      ok:=0;
        if (resbmp[y-1, x-1]=1) then ok:=ok+1;
         if (resbmp[y-1, x]=1) then ok:=ok+1;
         if (resbmp[y-1, x+1]=1) then ok:=ok+1;
         if (resbmp[y, x-1]=1) then ok:=ok+1;
         if (resbmp[y, x+1]=1) then ok:=ok+1;
         if (resbmp[y+1, x-1]=1) then ok:=ok+1;
         if (resbmp[y+1, x]=1) then ok:=ok+1;
         if (resbmp[y+1, x+1]=1) then ok:=ok+1;
         if (ok>0) then begin

        // заносим в контур
        resbmp[y, x] := 1;
        history[y,x] :=2;
        //end;
        
        if (x<xn) then xn:=x;
        if (x>xk) then xk:=x;
        rb:=1;
        if (xgk<xk) then xgk:=xk;
        if (xgn>xn) then xgn:=xn;
        if (ygn>y) then ygn:=y;
        if (ygk<y) then ygk:=y;
        Inc(totalpoints);

        end;
      end;
     end;


     // конец цикла пока
     repeatflag:=0;
     if (rr=1) or (rt=1) or (rb=1) or (rl=1) then repeatflag:=1;
//     if (yn=1) then continue;
   end;

end;
   // прошли по одному объекту
   // конец цикла
    finded:=0;

    if (totalpoints>pmaxcount) then finded:=1;
    obj_square:=totalpoints;

end;
{конец процедуры поиска контуров}

{функция поиска длины линии по двум точкам}
function calculateLineLength(p1, p2:TPoint) : double;
var
   sq: Double;
   val:integer;
begin
   val:=sqr(p2.X - p1.X) + sqr(p2.Y - p1.Y);
   sq:=sqrt(val);
   result:=sq;

end;
{конец функция поиск лины по двум точкам}

 {функция поиск площади треугольника}
function calculateTriangleArea(p1, p2, p3:TPoint) : Double;
var
   a,b,c, s, sq: Double;
begin
   a:=calculateLineLength(p1, p2);
   b:=calculateLineLength(p1, p3);
   c:=calculateLineLength(p2, p3);
// полупериметр
   s:=(a+b+c)/2;
   sq:=  sqrt(s * (s - a) * (s - b) * (s - c));
   result:=sq;
end;
 {конец поиск площади треугольника}

 {функция поиска крайних точек фигуры, определение угла поворота}
procedure Findpoints;
var
   y, x: Integer;
// конец объявления переменных
   cminx, cmaxx, cminy, cmaxy: Integer;

   tmpflag: Integer;
   p1,p2,p3, cpoint: TPoint;
   max:Double;

// точки
   pminx, pminy, pmaxx, pmaxy: TPoint;
   cenx, ceny: Double;
   angles: array [0..2] of double;
   a3,b3,c3,a4,b4,c4:Double;
   phi_tmp:double;
   ab, ad, tab, tac, tbc: double;

   mangles: array [0..5] of double;
   tmpx:Integer;
   minangle: double;
   anglepoint:integer;
begin
  cminx:=gwidth;
  cmaxx:=0;
  cminy:=gheight;
  cmaxy:=0;
  // если уже все прошли то выход из этой процедуры
  //if (gflag=1) then Exit;

  // resbmp содержит точки одного контура
  // найдем координаты конечных точек
  // сверху вниз
  // ищем максимум и минимум x и y
  tmpflag:=1;
       for y:=0 to gheight do
        for x:=0 to gwidth do
        begin
        if (resbmp[y, x]=1) then
        begin

          if (x<cminx) then begin
            cminx:=x;
            pminx.X := x;
            pminx.Y := y;
          end;

          if (x>cmaxx) then
          begin
            cmaxx:=x;
            pmaxx.x := x;
            pmaxx.y := y;
          end;

          if (y<cminy) then
          begin
            cminy:=y;
            pminy.X := x;
            pminy.Y := y;
          end;

          if (y>cmaxy) then
          begin
            cmaxy:=y;
            pmaxy.X:=x;
            pmaxy.Y:=y;
          end;

          end;
        end;

    //ShowMessage('123');
     max:=calculateTriangleArea(pminx, pminy, pmaxx);
    // определяем какой из наборов точек подходит
    d1:=pminx;
    d2:=pminy;
    d3:=pmaxx;
    // 1
    if (max < calculateTriangleArea(pminx, pminy, pmaxy)) then
    begin
      d1:=pminx;
      d2:=pminy;
      d3:=pmaxy;
      max :=calculateTriangleArea(pminx, pminy, pmaxy);
    end;
    // 2
    if (max < calculateTriangleArea(pminx, pmaxx, pmaxy)) then
    begin
      d1:=pminx;
      d2:=pmaxx;
      d3:=pmaxy;
      max :=calculateTriangleArea(pminx, pmaxx, pmaxy);
    end;
    // 3
    if (max < calculateTriangleArea(pminy, pmaxx, pmaxy)) then
    begin
      d1:=pminy;
      d2:=pmaxx;
      d3:=pmaxy;
      max :=calculateTriangleArea(pminy, pmaxx, pmaxy);
    end;

    // ищем центр фигуры
    cenx:=(d1.X+d2.X+d3.X)/3;
    ceny:= (d1.Y+d2.Y+d3.Y)/3;

    cpoint.X:=round(cenx);
    cpoint.Y:=round(ceny);

    // определим точку направления по расстояниям между центров и точками
    tab:=calculateLineLength(cpoint, d1);
    tac:=calculateLineLength(cpoint, d2);
    tbc:=calculateLineLength(cpoint, d3);
    if (tab>tac) and (tab>tbc) then
    begin
      headpoint:=d1;
      leftpoint:=d2;
      rightpoint:=d3;
      end;
    if (tac>tab) and (tac>tbc) then
    begin
      headpoint:=d2;
      leftpoint:=d1;
      rightpoint:=d3;
    end;
    if (tbc>tab) and (tbc>tac) then
    begin
      headpoint:=d3;
      leftpoint:=d2;
      rightpoint:=d1;
    end;

    {// ищем параметры прямых
    a := (d1.y - d2.y);
    b := (d2.x - d1.x);
    c := (d1.x * d2.y) - (d2.x * d1.y);
    // вторая
    a1 := (d1.y - d3.y);
    b1 := (d3.x - d1.x);
    c1 := (d1.x * d3.y) - (d3.x * d1.y);
    // третья
    a2 := (d2.y - d3.y);
    b2 := (d3.x - d2.x);
    c2 := (d2.x * d3.y) - (d3.x * d2.y);
    // считаем углы
    phi1:=0;
    phi2:=0;
    phi3:=0;
    if (a<>0) and (b<>0) and (a1<>0) and (b<>0) then
    begin
     phi1 := abs((a * a1 + b * b1) / (sqrt(a * a + b * b) * sqrt(a1 * a1 + b1 * b1)));
    end;
    if (a1<>0) and (b1<>0) and (a2<>0) and (b2<>0) then
    begin
      phi2 := abs((a1 * a2 + b1 * b2) / (sqrt(a1 * a1 + b1 * b1) * sqrt(a2 * a2 + b2 * b2)));
    end;
    if (a<>0) and (b<>0) and (a2<>0) and (b2<>0) then
    begin
     phi3 := abs((a * a2 + b * b2) / (sqrt(a * a + b * b) * sqrt(a2 * a2 + b2 * b2)));
    end;

    phi1 := (ArcCos(phi1) * 180 / PI);
    phi2 := (ArcCos(phi2) * 180 / PI);
    phi3 := (ArcCos(phi3) * 180 / PI);
    }

    centroid.X:=round(cenx);
    centroid.Y:=round(ceny);

    {// ищем вершину которая указывает направление
    if (phi3 < phi2) and (phi3 < phi1) then
    begin
      headpoint:=d2;
      leftpoint:=d1;
      rightpoint:=d3;
    end;

    if (phi2<phi1) and (phi2<phi3) then
    begin
      headpoint:=d3;
      leftpoint:=d2;
      rightpoint:=d1;
    end;

    if (phi1<phi2) and (phi1<phi3) then
    begin
      headpoint:=d1;
      leftpoint:=d2;
      rightpoint:=d3;
    end;

    // проверим действительно ли выбранная вершина является вершиной
    tab:=calculateLineLength(d1, d2);
    tac:=calculateLineLength(d1, d3);
    tbc:=calculateLineLength(d2, d3);
    {if (tab>tbc) and (tac>tbc) then
    begin
      headpoint:=d1;
    end;
    if (tbc>tac) and (tab>tac) then
    begin
      headpoint:=d2;
    end;
    if (tac>tab) and (tac>tbc) then
    begin
      headpoint:=d3;
    end;}

    // считаем угол поворота относительно оси
    // параметры линии из центра в угол
    a3 := (centroid.y - headpoint.y);
    b3 := (headpoint.x - centroid.x);
    c3 := (centroid.x * headpoint.y) - (headpoint.x * centroid.y);
    // параметры оси
   a4 := 10;
   b4 := 0;
   c4 := 500;
   phi_res := (a3 * a4 + b3 * b4) / (sqrt((a3 * a3) + (b3 * b3)) * sqrt((a4 * a4) + (b4 * b4)));
   phi_res := (ArcCos(phi_res) * 180 / PI);

   // смотрим где находятся точки и прибавляем 180

   if (headpoint.x<centroid.x) and (headpoint.y<centroid.y) then
   begin
    phi_res:=360-phi_res;
   end;

   if (headpoint.x<centroid.x) and (headpoint.y=centroid.y) then
   begin
    phi_res:=270;
   end;

   if (headpoint.x<centroid.x) and (headpoint.y>centroid.y) then
   begin
    phi_res:=360-phi_res;
   end;

   if (headpoint.x=centroid.x) and (headpoint.y<centroid.y) then
   begin
    phi_res:=0;
   end;

   if (headpoint.x=centroid.x) and (headpoint.y>headpoint.y) then
   begin
    phi_res:=180;
   end;

   phi_tmp:=phi_res;

   // переводим в размерность программы
    if (phi_tmp>=0) and (phi_tmp<=90) then
    begin
    phi_res:=128+abs(phi_res*0.7);

    end;

    if (phi_tmp>90) and (phi_tmp<=180) then
    phi_res:=192+abs((phi_res-90)*0.7);

    if (phi_tmp>180) and (phi_tmp<270) then
    phi_res:=abs((phi_res-180)*0.7);

    if (phi_tmp>=270) and (phi_tmp<=360) then
    phi_res:=64+abs((phi_res-270)*0.7);

    if (phi_res=255) then phi_res:=0;

    phi_res:=round(phi_res);

    // посчитаем соотношение сторон
    ab:=sqrt(sqr(cmaxx - cminx) + sqr(cminy - cminy));
    ad:=sqrt(sqr(cminx - cminx) + sqr(cmaxy - cminy));
    obj_rel:=ab/ad;
    obj_rel:=abs(cmaxx - cminx)/abs(cmaxy - cminy);
    // считаем длины сторон определенного треугольника
    // ищем отношение между длинной стороной и короткой

 {   ab := calculateLineLength(headpoint, leftpoint);
    ad := calculateLineLength(leftpoint, rightpoint);
    obj_rel:=ab/ad;}

    // очищаем массив с контуром
  for y:=0 to gheight do
  begin
    for x:=0 to gwidth do
    begin
      resbmp[y, x] :=0;
      end;
  end;

end;

 {конец поиск крайних точек}
begin

  // количество точек
   pmaxcount:=maxp;
   // размер объекта А
   asize:=apsize;
   // размер объекта B
   bsize:=bpsize;
   // размер цели
   //targetsize:=StrToInt(Edit8.Text);
   // интервал для размера объектов
   pmaxinterval:=pinterv;
   // размер объекта
   obj_square:=0;
   gflag:=0;

   thresh:=threshp;
    // переводим в чб
    Threshold(bitmap, thresh, clWhite, clBlack);
   { Image2.Picture.Bitmap:=bitmap;}

    // указываем размер массива для хранения объектов
    arraycnt:=0;
    SetLength(objects,10, 5);
    finded:=0;

    {Image1.Picture.LoadFromFile('Image1.bmp');}

     while(gflag=0) do
  begin
    // найдем контур
    Findcountours;
    if (finded=0) then
    begin
         for y:=0 to gheight do
      begin
        for x:=0 to gwidth do
          begin
            resbmp[y, x] :=0;
          end;
      end;
     end;

    // найдем для него крайние точки
    if (finded>0) then begin
    Findpoints;
    // сохраним данные в массив
    SetLength(objects,arraycnt+1, 5);
    objects[arraycnt, 0]:=centroid.X;
    objects[arraycnt, 1]:=centroid.Y;
    objects[arraycnt, 2]:=phi_res;
    objects[arraycnt, 4]:=obj_rel;
    // сохраним размер
    objects[arraycnt, 3]:=obj_square;
    arraycnt:=arraycnt+1;

{    // нарисуем эти точки
    // первая точка

    Image1.Canvas.Ellipse(d1.X, d1.Y, (d1.X+5), (d1.Y-5));
    // вторая
    Image1.Canvas.Ellipse(d2.X, d2.Y, (d2.X+5), (d2.Y-5));
    // третья
    Image1.Canvas.Ellipse(d3.X, d3.Y, (d3.X+5), (d3.Y-5));

    Image1.Canvas.Pen.Color:= clGreen;
    Image1.Canvas.MoveTo(d1.X,d1.Y);
    Image1.Canvas.LineTo(d2.X,d2.Y);
    Image1.Canvas.LineTo(d3.X,d3.Y);
    Image1.Canvas.LineTo(d1.X,d1.Y);

    // рисуем центр фигуры
    //Image1.Canvas.Ellipse(centroid.X, centroid.y, centroid.x+5, centroid.Y-5);
    Image1.Canvas.Pen.Color:=clRed;

    Image1.Canvas.MoveTo(centroid.X-5,centroid.y);
    Image1.Canvas.LineTo(centroid.X+5, centroid.y);

    Image1.Canvas.MoveTo(centroid.X,centroid.y-5);
    Image1.Canvas.LineTo(centroid.X, centroid.y+5);

    Image1.Canvas.MoveTo(centroid.X,centroid.Y);
    Image1.Canvas.LineTo(headpoint.X, headpoint.y);
    Image1.Canvas.Pen.Color:=clBlue;
    Image1.Canvas.Ellipse(headpoint.X, headpoint.y, headpoint.x+5, headpoint.Y-5);
    Image1.Canvas.Pen.Color:=clRed;

//     Brush.Style:=bsClear;
      Image1.Canvas.TextOut(centroid.X, centroid.Y, FloatToStr(obj_square));
}

    end;
  end;


  target_flag:=0;


    //найдем минимум для соотношения сторон, то и будет целью
  {  temprel:=1000;
    for x:=0 to arraycnt-1 do
    begin
     if (temprel>(abs(objects[x, 4]-1))) then
     begin
      temprel:=abs(objects[x, 4]-1);
      objecttarget[0]:=objects[x, 0];
      objecttarget[1]:=objects[x, 1];
     end;
    end;}

    // в массиве objects теперь имеются найденные объекты с парметрами
    // проходим по массиву объектов и ищем объект А
 {   for x:=0 to arraycnt-1 do
    begin
      //ShowMessage(FloatToStr(objects[x, 4]));
      // нашли цель
      if (objects[x, 4]=temprel) then
      begin
        objecttarget[0]:=objects[x, 0];
        objecttarget[1]:=objects[x, 1];
        objecttarget[2]:=objects[x, 2];
        objecttarget[3]:=objects[x, 3];
        continue;
      end;

      // нашли объект А
      if (objects[x, 3]>=(asize-pmaxinterval)) and (objects[x, 3]<=(asize+pmaxinterval)) then
      begin
        // если это не цель
        objecta[0]:=objects[x, 0];
        objecta[1]:=objects[x, 1];
        objecta[2]:=objects[x, 2];
        objecta[3]:=objects[x, 3];
        //ShowMessage(FloatToStr(objects[x, 4]));
      end;
      // если нашли объект Б
      if (objects[x, 3]>(bsize-pmaxinterval)) and (objects[x, 3]<(bsize+pmaxinterval)) then
      begin
        objectb[0]:=objects[x, 0];
        objectb[1]:=objects[x, 1];
        objectb[2]:=objects[x, 2];
        objectb[3]:=objects[x, 3];
        end;
    end;}


    nmin:=10000;
    nmax:=0;
    objecttarget[0]:=0;
    objecttarget[1]:=0;
    objecta[0]:=0;
    objecta[1]:=0;
    objectb[0]:=0;
    objectb[1]:=0;

      if (arraycnt>0) then
      begin
         for x:=0 to arraycnt-1 do
         begin
            // ищем самый маленький объект, это должен быть Б, если это не цель
            if (nmin>objects[x, 3]) and (temprel<objects[x, 4]) then
            begin
               nmin := objects[x, 3];
               nmincnt:=x;
               objectb[0]:=objects[x, 0];
               objectb[1]:=objects[x, 1];
               objectb[2]:=objects[x, 2];
               objectb[3]:=objects[x, 3];
            end;
            // ищем самый большой объект, это должна быть цель
            if (nmax<objects[x, 3]) and (temprel<objects[x, 4]) then
            begin
               nmax := objects[x, 3];
               nmaxcnt:=x;
               objecttarget[0]:=objects[x, 0];
               objecttarget[1]:=objects[x, 1];
            end;
         end;   //end of for
      end;      // end of if

     // ищем средний по размерам объект - это должен быть А
     temprel:=0;
     for x:=0 to arraycnt-1 do
     begin
      if (objects[x, 3]>nmin) and (objects[x, 3]<nmax) and ((nmax-objects[x, 3])>temprel) then
      begin
       nmid :=objects[x, 3];
       nmidcnt:=x;
       temprel:=nmax-objects[x, 3];
       objecta[0]:=objects[x, 0];
       objecta[1]:=objects[x, 1];
       objecta[2]:=objects[x, 2];
       objecta[3]:=objects[x, 3];
      end;
     end;


   { Image1.Canvas.Pen.Color:=clRed;
    Image1.Canvas.TextOut(StrToInt(FloatToStr(objecta[0]))-5, StrToInt(FloatToStr(objecta[1])), 'A');
    Image1.Canvas.TextOut(StrToInt(FloatToStr(objectb[0]))-5, StrToInt(FloatToStr(objectb[1])), 'B');
    Image1.Canvas.TextOut(StrToInt(FloatToStr(objecttarget[0]))-5, StrToInt(FloatToStr(objecttarget[1])), 'target');}


    if (arraycnt>0) then
    begin

     axx:=Round(objecta[0]);
     ayy:=Round(objecta[1]);
     aphii:=Round(objecta[2]);

     bxx:=Round(objectb[0]);
     byy:=Round(objectb[1]);
     bphii:=Round(objectb[2]);

     txx:=Round(objecttarget[0]);
     tyy:=Round(objecttarget[1]);
    end;

  //ShowMessage(FloatToStr(ax) + ' y ' + FloatToStr(ay) + ' phi ' + FloatToStr(aphi));

end;

procedure show_models;
var
   x,y:integer;
   kmx,kmy:real;
begin
{ if Form1.CheckBox1.Checked and (show_done) then exit;}
 with Form1 do
 begin
 {case RadioGroup1.ItemIndex of
  0: begin
      Image1.Picture.LoadFromFile('blankpic.bmp');
      kmx:=1;kmy:=1;
     end;
  1: begin
      kmx:=zoomx;kmy:=zoomy;
     end;
  end;}
  if CheckBox1.Checked then
  begin
   kmx:=zoomx;kmy:=zoomy;
  end
  else
  begin
   {Image1.Picture.LoadFromFile('blankpic.bmp');}
   Image1.Picture:=Image3.Picture;
   kmx:=1;kmy:=1;kmx2:=1;kmy2:=1;
  end;
  Image1.Canvas.Pen.Color:=clRed;
  ax:=StrToInt(Edit1.Text);ay:=StrToInt(Edit4.Text);aphi:=StrToInt(Edit5.Text);
  bx:=StrToInt(Edit6.Text);by:=StrToInt(Edit7.Text);bphi:=StrToInt(Edit8.Text);
  if CheckBox1.Checked then
  begin
   Image1.Canvas.MoveTo(round(80*kmx),0);Image1.Canvas.LineTo(round(80*kmx),round(320*kmy));
   ax:=Round(kmx2*sax);ay:=Round(kmy2*say);aphi:=saphi;
   bx:=Round(kmx2*sbx);by:=Round(kmy2*sby);bphi:=sbphi;
   tx:=Round(kmx2*stx);ty:=Round(kmy2*sty);
  end;
  Image1.Canvas.Ellipse(round(kmx*(ax-6)),round(kmy*(ay-6)),round(kmx*(ax+6)),round(kmy*(ay+6)));
  Image1.Canvas.MoveTo(round(kmx*ax),round(kmy*ay));
  x:=round(ax+15*sin((aphi-128)*pi/128));y:=round(ay-15*cos((aphi-128)*pi/128));
  Image1.Canvas.LineTo(round(kmx*x),round(kmy*y));

  Image1.Canvas.Pen.Color:=clBlue;
  if CheckBox1.Checked then
  begin
   Image1.Canvas.MoveTo(round(400*kmx),0);Image1.Canvas.LineTo(round(400*kmx),round(320*kmy));
  end;
  Image1.Canvas.Ellipse(round(kmx*(bx-6)),round(kmy*(by-6)),round(kmx*(bx+6)),round(kmy*(by+6)));
  Image1.Canvas.MoveTo(round(kmx*bx),round(kmy*by));
  x:=round(bx+15*sin((bphi-128)*pi/128));y:=round(by-15*cos((bphi-128)*pi/128));
  Image1.Canvas.LineTo(round(kmx*x),round(kmy*y));
  if (((abs(ax-tx)<6) and (abs(ay-ty)<6))  or
      ((abs(bx-tx)<6) and (abs(by-ty)<6))) and CheckBox2.Checked then
  begin
   if ((abs(ax-tx)<6) and (abs(ay-ty)<6)) then inc(wa);
   if ((abs(bx-tx)<6) and (abs(by-ty)<6)) then inc(wb);
   Label37.Caption:=IntToStr(wa)+'/'+IntToStr(wb);
   if (not checkbox1.Checked) then
   begin
    tx:=Round(Random(470)+5);  ty:=Round(Random(310)+5);
   end;
   Edit42.Text:=IntToStr(tx);Edit43.Text:=IntToStr(ty);
  end;
  Image1.Canvas.Pen.Color:=clGreen;
  Image1.Canvas.Ellipse(round(kmx*(tx-6)),round(kmy*(ty-6)),round(kmx*(tx+6)),round(kmy*(ty+6)));

  Label30.Caption:='PhiA='+IntToStr(aphi);
  Label31.Caption:='PhiБ='+IntToStr(bphi);
 end;
 show_done:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 VideoGrabber2.StopPreview;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
 case RadioGroup1.ItemIndex of
  0: begin
      if not CheckBox1.Checked then
      begin
       VideoGrabber2.StopPreview;VideoGrabber2.Visible:=false;
       Timer2.Enabled:=false;
      end;
      GroupBox6.Enabled:=false;
      Edit1.ReadOnly:=false;Edit4.ReadOnly:=false;Edit5.ReadOnly:=false;
      BitBtn1.Enabled:=true;
      Edit6.ReadOnly:=false;Edit7.ReadOnly:=false;Edit8.ReadOnly:=false;
      BitBtn7.Enabled:=true;
      CheckBox1.Enabled:=true;
     end;
  1: begin
      if not CheckBox1.Checked then
      begin
       VideoGrabber2.Visible:=true;VideoGrabber2.StartPreview;
       Timer2.Enabled:=true;
      end;
      GroupBox6.Enabled:=true;
      Edit1.ReadOnly:=true;Edit4.ReadOnly:=true;Edit5.ReadOnly:=true;
      BitBtn1.Enabled:=false;
      Edit6.ReadOnly:=true;Edit7.ReadOnly:=true;Edit8.ReadOnly:=true;
      BitBtn7.Enabled:=false;
      CheckBox1.Checked:=true;CheckBox1.Enabled:=false;
     end;
 end;
 show_models;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 xs:=Form1.Width;ys:=Form1.Height;
 VideoGrabber2.AutoSize:=true;VideoGrabber2.StopPreview;
 zoomx:=VideoGrabber2.Width/480;zoomy:=VideoGrabber2.Height/320;
 VideoGrabber2.PreviewZoomSize:=Round(100/zoomx);
 VideoGrabber2.FrameCaptureZoomSize:=VideoGrabber2.PreviewZoomSize;
 VideoGrabber2.AutoSize:=false;VideoGrabber2.Width:=480;VideoGrabber2.Height:=320;
 DdeClientConv1.DdeService:='FUZZY51';
 DdeClientConv1.DdeTopic:='fuzsrv';
 DdeClientConv1.SetLink('Fuzzy51','fuzsrv');
 DdeClientItem1.DdeItem:='fuzserver';
 ax:=StrToInt(Edit1.Text);ay:=StrToInt(Edit4.Text);aphi:=StrToInt(Edit5.Text);
 bx:=StrToInt(Edit6.Text);by:=StrToInt(Edit7.Text);bphi:=StrToInt(Edit8.Text);
 tx:=StrToInt(Edit42.Text);ty:=StrToInt(Edit43.Text);
 wa:=0;wb:=0;
 BitBtn1Click(Sender);BitBtn7Click(Sender);
 Image3.Picture.LoadFromFile('blankpic.bmp');
 show_models;                        
 excha_b:=true;
 comport:=1;
 WebBrowser1.Navigate('file:\\localhost\'+Copy(Paramstr(0),1,Pos('tankwar9.exe',Paramstr(0))-1)+'helps\main.htm');
 picture := TPicture.Create;
 show_done:=false;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 ax:=Round(Random(470)+5);  ay:=Round(Random(310)+5);  aphi:=Round(Random(256));
 Edit1.Text:=IntToStr(ax);Edit4.Text:=IntToStr(ay);Edit5.Text:=IntToStr(aphi);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
 bx:=Round(Random(470)+5);  by:=Round(Random(310)+5);  bphi:=Round(Random(256));
 Edit6.Text:=IntToStr(bx);Edit7.Text:=IntToStr(by);Edit8.Text:=IntToStr(bphi);
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
 show_models;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
 show_models;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
 Form1.Width:=xs;Form1.Height:=ys;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 Timer2.Enabled:=false;
 VideoGrabber2.CaptureFrameTo(fc_TBitmap);
end;
     
procedure TForm1.VideoGrabber2FrameCaptureCompleted(Sender: TObject;
  const FrameData: TFrameData; DestType: TFrameCaptureDest;
  FileName: String; Success: Boolean);
var
 sax1,say1,sbx1,sby1,stx1,sty1:integer;
 sax2,say2,sbx2,sby2,stx2,sty2:integer;
 saphi1,sbphi1,saphi2,sbphi2:byte;
begin  
 Image2.Picture.Bitmap:=FrameData.Bitmap;
 Image2.Picture.Bitmap.SaveToFile('img.bmp');
 kmx2:=480/Picture.Bitmap.Width;
 kmy2:=320/Picture.Bitmap.Height;
 Picture.Bitmap:=Image2.Picture.Bitmap;{Picture.LoadFromFile('img.bmp');}
 bitmap := Picture.Bitmap;
{ repeat}
  search(bitmap, sax1, say1, saphi1, sbx1, sby1, sbphi1, stx1, sty1, StrToInt(Edit44.Text), StrToInt(Edit45.Text), StrToInt(Edit46.Text), StrToInt(Edit47.Text), StrToInt(Edit48.Text));
 { search(bitmap, sax2, say2, saphi2, sbx2, sby2, sbphi2, stx2, sty2, StrToInt(Edit44.Text), StrToInt(Edit45.Text), StrToInt(Edit46.Text), StrToInt(Edit47.Text), StrToInt(Edit48.Text));
 until ((abs(sax1-sax2)<20) and (abs(say1-say2)<20) and (abs(sbx1-sbx2)<20) and (abs(sby1-sby2)<20) and (abs(stx1-stx2)<20) and (abs(sty1-sty2)<20));}
 sax:=sax1;say:=say1;sbx:=sbx1;sby:=sby1;stx:=stx1;sty:=sty1;
 saphi:=saphi1;sbphi:=sbphi1;
 show_done:=false;
 Timer2.Enabled:=true;
end;

procedure TForm1.VideoGrabber2DrawOverFrame(Sender: TObject;
  const FrameInfo: TFrameInfo; Dc: HDC);
begin
 Image1.Canvas.Handle:=Dc;
 show_models;
end;

procedure prepare_data_tofuz(choice:byte; var res:byte);
var
   l:real;
   alpha,beta,gamma,phi:integer;
   angle:array[0..3] of real;
   critical:array[0..3] of real;
   direction_angle:real;
   direction_length:real;
begin
   with Form1 do
   begin
      case choice of
      0: begin
            gamma:=255;
         end;
      1: begin  {Угол на ворота (с учетом собственного угла)}
            if excha_b then
            begin
               l:=sqrt(sqr(ax-480)+sqr(ay-160));
               if (l=0) then l:=0.001;
               phi:=round(128*ArcSin(abs(480-ax)/l)/pi);
               if 160>ay then phi:=128-phi;
               alpha:=abs(128-aphi);
               if ((aphi>=128) and (480>=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((aphi<=128) and (480<=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((aphi>=128) and (480<=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((aphi<=128) and (480>=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label35.Caption:='PhiAв='+IntToStr(gamma);
            end
            else
            begin
               l:=sqrt(sqr(bx)+sqr(by-160));
               if (l=0) then l:=0.001;
               phi:=round(128*ArcSin(abs(bx)/l)/pi);
               if 160>by then phi:=128-phi;
               alpha:=abs(128-bphi);
               if ((bphi>=128) and (0>=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((bphi<=128) and (0<=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((bphi>=128) and (0<=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((bphi<=128) and (0>=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label36.Caption:='PhiБв='+IntToStr(gamma);
            end;
         end;
      2: begin  {Угол между двумя танками}
            l:=sqrt(sqr(ax-bx)+sqr(ay-by));if (l=0) then l:=0.001;
            phi:=round(128*ArcSin(abs(bx-ax)/l)/pi);
            if excha_b then
            begin
               if by>ay then phi:=128-phi;
               alpha:=abs(128-aphi);
               if ((aphi>=128) and (bx>=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((aphi<=128) and (bx<=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((aphi>=128) and (bx<=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((aphi<=128) and (bx>=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label32.Caption:='PhiАБ='+IntToStr(gamma);
            end
            else
            begin
               if ay>by then phi:=128-phi;
               alpha:=abs(128-bphi);
               if ((bphi>=128) and (ax>=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((bphi<=128) and (ax<=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((bphi>=128) and (ax<=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((bphi<=128) and (ax>=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label1.Caption:='PhiБА='+IntToStr(gamma);
            end;
         end;
      3: begin  {Угол на цель (с учетом собственного угла)}
            if excha_b then
            begin
               l:=sqrt(sqr(ax-tx)+sqr(ay-ty));
               if (l=0) then l:=0.001;
               phi:=round(128*ArcSin(abs(tx-ax)/l)/pi);
               if ty>ay then phi:=128-phi;
               alpha:=abs(128-aphi);
               if ((aphi>=128) and (tx>=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((aphi<=128) and (tx<=ax)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((aphi>=128) and (tx<=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((aphi<=128) and (tx>=ax)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label33.Caption:='PhiAц='+IntToStr(gamma);
            end
            else
            begin
               l:=sqrt(sqr(bx-tx)+sqr(by-ty));
               if (l=0) then l:=0.001;
               phi:=round(128*ArcSin(abs(tx-bx)/l)/pi);
               if ty>by then phi:=128-phi;
               alpha:=abs(128-bphi);
               if ((bphi>=128) and (tx>=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128+beta else gamma:=128-beta;
               end;
               if ((bphi<=128) and (tx<=bx)) then
               begin
                  beta:=abs(alpha-phi);
                  if alpha<=phi then gamma:=128-beta else gamma:=128+beta;
               end;
               if ((bphi>=128) and (tx<=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128-beta else gamma:=128+256-beta;
               end;
               if ((bphi<=128) and (tx>=bx)) then
               begin
                  beta:=alpha+phi;
                  if beta<128 then gamma:=128+beta else gamma:=128-(256-beta);
               end;
               Label34.Caption:='PhiБц='+IntToStr(gamma);
            end;
         end;
      4: begin  {Расстояние до цели и индикатор аварийного состояния (255 = авария)}
   {Если расстояние до границы критичное - забиваем на расстояние до цели
   Терм большого расстояния смещается на 1 влево.
   В случае, если данный вход равен 255, то система находится в аварийном состоянии -
   близко к границе.
   Пока что расстояние до границы считается при каждом заходе. Возможно
   стоит добавить условие, чтобы расстояние считалось только при условиях,
   что координаты близки к границы(смотреть условия координат, а не высчитывать
   расстояние}
            if excha_b then
            begin
               direction_angle := 3 * Pi/2 - (2*Pi/255) * aphi;
               if (direction_angle < 0) then
               begin
                  direction_angle := direction_angle + 2*Pi;
               end;
               angle[0] := ArcTan((320 - ay)/(480 - ax));
               angle[1] := Pi/2 + ArcTan(ax/(320 - ay));
               angle[2] := Pi + ArcTan(ay/ax);
               angle[3] := 3*Pi/2 + ArcTan((480 - ax)/ay);
               if (((direction_angle >= 0) and (direction_angle < (angle[0])))
                  or ((direction_angle > (angle[3]))
                     and (direction_angle <= 255))) then
               begin
                  direction_length := (480 - ax)/(Cos(direction_angle));
               end
               else if ((direction_angle >= angle[0])
                  and (direction_angle <= angle[1])) then
               begin
                  direction_length := ay/(Sin(direction_angle));
               end
               else if ((direction_angle > (angle[1]))
                  and (direction_angle < (angle[2]))) then
               begin
                  direction_length := -ax/(Cos(direction_angle));
               end
               else if ((direction_angle >= angle[2])
                  and (direction_angle <= angle[3])) then
               begin
                  direction_length := -(320 - ay)/(Sin(direction_angle));
               end;
               if((direction_length > 0) and (direction_length < 80)) then
               begin
                  {Аварийная ситуация наступила}
                  l := 255;      {mb add more logic, but now we don't need it}
               end
               else
               begin
                  {Нормальная работа - высчитываем расстояние до объекта.
                  Учитываем, что максимальное расстояние теперь не 255, а 254}
                  l:= sqrt(sqr(ax-tx)+sqr(ay-ty));
                  if( l > 254 ) then l := 254;
                  if (l=0) then l:=0.001;
               end;
            end
            else
            begin
               direction_angle := 3 * Pi/2 - (2*Pi/255) * bphi;
               if (direction_angle < 0) then
               begin
                  direction_angle := direction_angle + 2*Pi;
               end;
               angle[0] := ArcTan((320 - by)/(480 - bx));
               angle[1] := Pi/2 + ArcTan(bx/(320 - by));
               angle[2] := Pi + ArcTan(by/bx);
               angle[3] := 3*Pi/2 + ArcTan((480 - bx)/by);
               if (((direction_angle >= 0) and (direction_angle < (angle[0])))
                  or ((direction_angle > (angle[3]))
                     and (direction_angle <= 255))) then
               begin
                  direction_length := (480 - bx)/(Cos(direction_angle));
               end
               else if ((direction_angle >= angle[0])
                  and (direction_angle <= angle[1])) then
               begin
                  direction_length := by/(Sin(direction_angle));
               end
               else if ((direction_angle > (angle[1]))
                  and (direction_angle < (angle[2]))) then
               begin
                  direction_length := -bx/(Cos(direction_angle));
               end
               else if ((direction_angle >= angle[2])
                  and (direction_angle <= angle[3])) then
               begin
                  direction_length := -(320 - by)/(Sin(direction_angle));
               end;
               if((direction_length > 0) and (direction_length < 80)) then
               begin
                  {Аварийная ситуация наступила}
                  l := 255;
               end
               else
               begin
                  {Нормальная работа - высчитываем расстояние до объекта.
                  Учитываем, что максимальное расстояние теперь не 255, а 254}
                  l:= sqrt(sqr(bx-tx)+sqr(by-ty));
                  if( l > 254 ) then l := 254;
                  if (l=0) then l:=0.001;
               end;
            end;
            gamma:=round(l);
         end;
      5: begin  {Расстояние между танками}
            l:=sqrt(sqr(ax-bx)+sqr(ay-by));if (l=0) then l:=0.001;
            gamma:=Round(l);
            if gamma>255 then gamma:=255;
         end;
      6: begin  {Разница углов на ворота и на цель(без учета собственного угла)}
            if excha_b then
            begin
               l:=sqrt(sqr(480 - ax) + sqr(ay - 160));
               if (l=0) then l:=0.001;

               phi:=round(255 * ArcCos(abs(480 - ax) / l) / (2 * pi));

               if ax > tx then
               begin
                  l := Abs(ay-ty);
                  if (l=0) then l:=0.001;
                  gamma := Round(255 * (pi/2 + ArcTan(Abs((ax-tx))/l)) / (2 * pi));
               end
               else
               begin
                  l := Abs(ax - tx);
                  if (l=0) then l:=0.001;
                  gamma := Round(255 * (ArcTan(Abs((ay-ty))/l)) / (2 * pi));
               end;

               gamma := gamma - phi;
               gamma := Sign(gamma)*gamma;
            end
            else
            begin
               l:=sqrt(sqr(bx) + sqr(by - 160));
               if (l=0) then l:=0.001;

               phi:=round(255 * ArcCos(abs(bx) / l) / (2 * pi));

               if bx < tx then
               begin
                  l := Abs(by-ty);
                  if (l=0) then l:=0.001;
                  gamma := Round(255 * (pi/2 + ArcTan(Abs((bx-tx))/l)) / (2 * pi));
               end
               else
               begin
                  l := Abs(bx - tx);
                  if (l=0) then l:=0.001;
                  gamma := Round(255 * (ArcTan((Abs(by-ty))/l)) / (2 * pi));
               end;

               gamma := gamma - phi;
               gamma := Sign(gamma)*gamma;
            end;
         end;
      end;
      res:=gamma;
   end;
end;
      
procedure calc_data_tofuz;
var
   num:byte;
begin
   with Form1 do
   begin
      Edit9.Text:='';
      prepare_data_tofuz(StrToIntDef(Edit11.Text,0),num);
      if num<100 then Edit9.Text:=Edit9.Text+'0';
      if num<10 then Edit9.Text:=Edit9.Text+'0';
      Edit9.Text:=Edit9.Text+IntToStr(num);

      prepare_data_tofuz(StrToIntDef(Edit12.Text,0),num);
      if num<100 then Edit9.Text:=Edit9.Text+'0';
      if num<10 then Edit9.Text:=Edit9.Text+'0';
      Edit9.Text:=Edit9.Text+IntToStr(num);

      prepare_data_tofuz(StrToIntDef(Edit13.Text,0),num);
      if num<100 then Edit9.Text:=Edit9.Text+'0';
      if num<10 then Edit9.Text:=Edit9.Text+'0';
      Edit9.Text:=Edit9.Text+IntToStr(num);

      prepare_data_tofuz(StrToIntDef(Edit14.Text,0),num);
      if num<100 then Edit9.Text:=Edit9.Text+'0';if num<10 then Edit9.Text:=Edit9.Text+'0';
      Edit9.Text:=Edit9.Text+IntToStr(num);

      prepare_data_tofuz(StrToIntDef(Edit15.Text,0),num);
      if num<100 then Edit9.Text:=Edit9.Text+'0';
      if num<10 then Edit9.Text:=Edit9.Text+'0';
      Edit9.Text:=Edit9.Text+IntToStr(num);
   end;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
 case RadioGroup2.ItemIndex of
 0: begin
     calc_data_tofuz;
     DdeClientConv1.PokeData(DdeClientItem1.DdeItem,PChar(Edit9.Text));
    end;
 1: begin
     if BitBtn9.Caption='Пуск' then
     begin
      Timer3.Enabled:=true;
      BitBtn9.Caption:='Стоп';
     end
     else
     begin
      Timer3.Enabled:=false;
      BitBtn9.Caption:='Пуск';
     end;
     excha_b:=true;
    end;
 end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
 case RadioGroup3.ItemIndex of
  0: Timer3.Interval:=StrToIntDef(Edit17.Text,100);
  1: Timer3.Interval:=1000+StrToIntDef(Edit17.Text,100);
 end;
 if (not show_done) then exit;
 calc_data_tofuz;
 Timer3.Enabled:=false;
 DdeClientConv1.PokeData(DdeClientItem1.DdeItem,PChar(Edit9.Text));
end;

procedure exec_rob(a_b:boolean;angle:byte);
var
   err:boolean;
   addr:byte;
begin
   with Form1 do
   begin
      addr:=StrToIntDef(Edit18.Text,0);
      if a_b then
      begin
            if (angle = 0) then
            begin
               WriteInRam(addr,StrToIntDef(Edit39.Text,0),err);   // back
            end
            else if ((angle in [1..5]) or (angle in [250..255]))then
            begin
               WriteInRam(addr,StrToIntDef(Edit49.Text,0),err);   // turn over
            end
            else if (angle in [6..14])then
            begin
               WriteInRam(addr,StrToIntDef(Edit51.Text,0),err);   // left 45
            end
            else if (angle in [242..249])then
            begin
               WriteInRam(addr,StrToIntDef(Edit37.Text,0),err);   // right 45
            end
            else if (angle in [15..24])then
            begin
               WriteInRam(addr,StrToIntDef(Edit52.Text,0),err);   // left 90
            end
            else if (angle in [230..241])then
            begin
               WriteInRam(addr,StrToIntDef(Edit28.Text,0),err);   // right 90
            end
            else if (angle in [26..65]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit33.Text,0),err);   // back - left
            end
            else if (angle in [66..105]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit25.Text,0),err);   // forward - left
            end
            else if (angle in [106..149]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit27.Text,0),err);   // forward
            end
            else if (angle in[150..189]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit26.Text,0),err);   // forward - right
            end
            else if (angle in [190..229]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit35.Text,0),err);   // back - right
            end
      end
      else
      begin
            if (angle = 0) then
            begin
               WriteInRam(addr,StrToIntDef(Edit32.Text,0),err);   // back
            end
            else if ((angle in [1..5]) or (angle in [250..255]))then
            begin
               WriteInRam(addr,StrToIntDef(Edit50.Text,0),err);   // turn over
            end
            else if (angle in [6..14])then
            begin
               WriteInRam(addr,StrToIntDef(Edit54.Text,0),err);   // left 45
            end
            else if (angle in [242..249])then
            begin
               WriteInRam(addr,StrToIntDef(Edit38.Text,0),err);   // right 45
            end
            else if (angle in [15..24])then
            begin
               WriteInRam(addr,StrToIntDef(Edit53.Text,0),err);   // left 90
            end
            else if (angle in [230..241])then
            begin
               WriteInRam(addr,StrToIntDef(Edit32.Text,0),err);   // right 90
            end
            else if (angle in [26..65]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit34.Text,0),err);   // back - left
            end
            else if (angle in [66..105]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit29.Text,0),err);   // forward - left
            end
            else if (angle in [106..149]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit31.Text,0),err);   // forward
            end
            else if (angle in[150..189]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit30.Text,0),err);   // forward - right
            end
            else if (angle in [190..229]) then
            begin
               WriteInRam(addr,StrToIntDef(Edit36.Text,0),err);   // back - right
            end
      end;
      if err then msg(1);
   end;
end;

procedure TForm1.DdeClientItem1Change(Sender: TObject);
var
 l:integer;
 phi:integer;
 num:byte;
begin
 if RadioGroup2.ItemIndex=1 then Timer3.Enabled:=true;
 l:=StrToIntDef(Edit16.Text,50);
 Edit10.Text:=DDeClientItem1.Text;
 phi:=StrToIntDef(copy(Edit10.Text,1,3),0);
 if excha_b then
 begin
  if (phi<128) and ((aphi-(128-phi))>=0)  then num:=1;
  if (phi<128) and ((aphi-(128-phi))<0)   then  num:=2;
  if (phi>=128) and ((aphi+phi-128)<=255) then num:=3;
  if (phi>=128) and ((aphi+phi-128)>255)  then num:=4;
  case num of
   1: aphi:=aphi-(128-phi);
   2: aphi:=256-((128-phi)-aphi);
   3: aphi:=aphi+phi-128;
   4: aphi:=aphi+phi-128-256;
  end;
  if RadioGroup3.ItemIndex=1 then
  begin

  end;
 end
 else
 begin
  if (phi<128) and ((bphi-(128-phi))>=0)  then num:=1;
  if (phi<128) and ((bphi-(128-phi))<0)   then  num:=2;
  if (phi>=128) and ((bphi+phi-128)<=255) then num:=3;
  if (phi>=128) and ((bphi+phi-128)>255)  then num:=4;
  case num of
   1: bphi:=bphi-(128-phi);
   2: bphi:=256-((128-phi)-bphi);
   3: bphi:=bphi+phi-128;
   4: bphi:=bphi+phi-128-256;
  end;
 end;
 if excha_b then
 begin
  ax:=Round(ax+l*sin((aphi-128)*pi/128));ay:=Round(ay-l*cos((aphi-128)*pi/128));
  Edit1.Text:=IntToStr(ax);Edit4.Text:=IntToStr(ay);Edit5.Text:=IntToStr(aphi);
 end
 else
 begin
  bx:=Round(bx+l*sin((bphi-128)*pi/128));by:=Round(by-l*cos((bphi-128)*pi/128));
  Edit6.Text:=IntToStr(bx);Edit7.Text:=IntToStr(by);Edit8.Text:=IntToStr(bphi);
 end;
 show_models;
 if RadioGroup3.ItemIndex=1 then exec_rob(excha_b,phi);
 excha_b:=not excha_b;
end;

procedure TForm1.BitBtn22Click(Sender: TObject);
begin
 DdeClientConv1.SetLink('Fuzzy51','fuzsrv');
 DdeClientItem1.DdeItem:='fuzserver';
 DdeClientConv1.PokeData(DdeClientItem1.DdeItem,PChar(Edit9.Text));
end;

function accept_num(nums:TCaption):string;
var
 num:integer;
begin
 num:=StrToIntDef(nums,0);
 if (num<0) or (num>255) then num:=0;
 accept_num:=IntToStr(num);
end;

procedure TForm1.Edit16Change(Sender: TObject);
begin
 Edit16.Text:=accept_num(Edit16.Text);
end;

procedure TForm1.Edit17Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit17.Text,100);
 if (num<10) or (num>5000) then num:=500;
 Edit17.Text:=IntToStr(num);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePageIndex=2 then
 begin
  GroupBox2.Visible:=false; Image1.Visible:=false;
 end
 else
 begin
  GroupBox2.Visible:=true;Image1.Visible:=true;
 end;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
 initport(comport);
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,3,err);if err then msg(1);
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,4,err);if err then msg(1);
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,2,err);if err then msg(1);
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,1,err);if err then msg(1);
end;

procedure TForm1.Label19Click(Sender: TObject);
begin
 msg(0);
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
 if RadioGroup2.ItemIndex=0 then
 begin
  Timer3.Enabled:=false;BitBtn9.Caption:='Пуск';
  excha_b:=true;
 end;
end;

procedure TForm1.Edit25Change(Sender: TObject);
begin
 Edit25.Text:=accept_num(Edit25.Text);
end;

procedure TForm1.Edit26Change(Sender: TObject);
begin
 Edit26.Text:=accept_num(Edit26.Text);
end;

procedure TForm1.Edit27Change(Sender: TObject);
begin
 Edit27.Text:=accept_num(Edit27.Text);
end;

procedure TForm1.Edit28Change(Sender: TObject);
begin
 Edit28.Text:=accept_num(Edit28.Text);
end;

procedure TForm1.Edit29Change(Sender: TObject);
begin
 Edit29.Text:=accept_num(Edit29.Text);
end;

procedure TForm1.Edit30Change(Sender: TObject);
begin
 Edit29.Text:=accept_num(Edit29.Text);
end;

procedure TForm1.Edit31Change(Sender: TObject);
begin
 Edit29.Text:=accept_num(Edit29.Text);
end;

procedure TForm1.Edit32Change(Sender: TObject);
begin
 Edit30.Text:=accept_num(Edit30.Text);
end;

procedure TForm1.Edit18Change(Sender: TObject);
begin
 Edit18.Text:=accept_num(Edit18.Text);
end;

procedure TForm1.Edit21Change(Sender: TObject);
begin
 Edit21.Text:=accept_num(Edit21.Text);
end;

procedure TForm1.Edit22Change(Sender: TObject);
begin
 Edit22.Text:=accept_num(Edit22.Text);
end;

procedure TForm1.Edit23Change(Sender: TObject);
var
 num:integer;
 bt:byte;
 err:boolean;
begin
 num:=StrToIntDef(Edit23.Text,0);
 if (num<0) or (num>65535) then num:=0;
 Edit23.Text:=IntToStr(num);
 ReadMemo(StrToIntDef(Edit23.Text,0),bt,err);
 Edit24.Text:=IntToStr(bt);
 if err then msg(1);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 Timer3.Enabled:=false;BitBtn9.Caption:='Пуск';
 case CheckBox1.Checked of
  false: begin
          VideoGrabber2.StopPreview;VideoGrabber2.Visible:=false;
          Timer2.Enabled:=false;
         end;
  true:  begin
          VideoGrabber2.Visible:=true;VideoGrabber2.StartPreview;
          Timer2.Enabled:=true;
         end;
 end;
 show_models;
end;

procedure TForm1.Edit42Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit42.Text,240);
 if (num<0) or (num>500) then num:=240;
 Edit42.Text:=IntToStr(num);
end;

procedure TForm1.Edit43Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit43.Text,160);
 if (num<0) or (num>340) then num:=160;
 Edit43.Text:=IntToStr(num);
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit1.Text,240);
 if (num<0) or (num>500) then num:=240;
 Edit1.Text:=IntToStr(num);
end;

procedure TForm1.Edit6Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit6.Text,240);
 if (num<0) or (num>500) then num:=240;
 Edit6.Text:=IntToStr(num);
end;

procedure TForm1.Edit4Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit4.Text,160);
 if (num<0) or (num>340) then num:=160;
 Edit4.Text:=IntToStr(num);
end;

procedure TForm1.Edit7Change(Sender: TObject);
var
 num:integer;
begin
 num:=StrToIntDef(Edit7.Text,160);
 if (num<0) or (num>340) then num:=160;
 Edit7.Text:=IntToStr(num);
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
 Edit5.Text:=accept_num(Edit5.Text);
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
 Edit8.Text:=accept_num(Edit8.Text);
end;

procedure TForm1.BitBtn34Click(Sender: TObject);
begin
 tx:=StrToIntDef(Edit42.Text,240);ty:=StrToIntDef(Edit43.Text,160);
 show_models;
end;

procedure TForm1.RadioGroup3Click(Sender: TObject);
begin
 case RadioGroup3.ItemIndex of
  0: Timer3.Interval:=StrToIntDef(Edit17.Text,100);
  1: Timer3.Interval:=1000;
 end;
end;

procedure TForm1.Label37Click(Sender: TObject);
begin
 wa:=0;wb:=0;
end;

procedure TForm1.Edit33Change(Sender: TObject);
begin
 Edit33.Text:=accept_num(Edit33.Text);
end;

procedure TForm1.BitBtn25Click(Sender: TObject);
var
 err:boolean;
 num:byte;
begin
 ReadInRam(StrToIntDef(Edit21.Text,0),num,err);
 Edit22.Text:=IntToStr(num);
 if err then msg(1);
end;

procedure TForm1.BitBtn24Click(Sender: TObject);
var
 err:boolean;
 num:integer;
begin
 num:=StrToIntDef(Edit22.Text,0);
 WriteInRam(StrToIntDef(Edit21.Text,0),num,err);
 if err then msg(1);
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,7,err);if err then msg(1);
end;


procedure TForm1.BitBtn17Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,5,err);if err then msg(1);
end;


procedure TForm1.BitBtn16Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,6,err);if err then msg(1);
end;


procedure TForm1.BitBtn18Click(Sender: TObject);
var
 err:boolean;
begin
 WriteInRam(49,8,err);if err then msg(1);
end;

procedure TForm1.DdeClientConv1Open(Sender: TObject);
begin
 msg(0);
end;

procedure TForm1.DdeClientConv1Close(Sender: TObject);
begin
 msg(2);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 If OpenDialog2.Execute then
 begin
  Edit2.Text:=OpenDialog2.FileName;
 end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
 If OpenDialog3.Execute then
 begin
  Edit3.Text:=OpenDialog3.FileName;
 end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Label29.Caption:='Курсор: '+IntToStr(x)+','+IntToStr(y);
end;



procedure TForm1.VideoGrabber2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Label29.Caption:='Курсор: '+IntToStr(Round(x/zoomx))+','+IntToStr(Round(y/zoomy));
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
var
 F:TextFile;
 str:string;
begin
 If OpenDialog1.Execute then
 begin
  Edit41.Text:=OpenDialog1.FileName;
  try
   AssignFile(F,OpenDialog1.FileName);
   reset(F);
   readln(F);
   readln(F);readln(F,str);Edit2.Text:=str;
   readln(F);readln(F,str);Edit3.Text:=str;
   readln(F);readln(F,str);Edit42.Text:=IntToStr(StrToInt(str));
   readln(F);readln(F,str);Edit43.Text:=IntToStr(StrToInt(str));
   BitBtn34Click(Sender);
   readln(F);readln(F,str);CheckBox2.Checked:=(StrToBool(str));
   readln(F);readln(F,str);RadioGroup1.ItemIndex:=(StrToInt(str));
   readln(F);readln(F,str);CheckBox1.Checked:=(StrToBool(str));
   readln(F);readln(F,str);Edit1.Text:=IntToStr(StrToInt(str));
   readln(F);readln(F,str);Edit4.Text:=IntToStr(StrToInt(str));
   readln(F);readln(F,str);Edit5.Text:=IntToStr(StrToInt(str));
   BitBtn6Click(Sender);
   readln(F);readln(F,str);Edit6.Text:=IntToStr(StrToInt(str));
   readln(F);readln(F,str);Edit7.Text:=IntToStr(StrToInt(str));
   readln(F);readln(F,str);Edit8.Text:=IntToStr(StrToInt(str));
   BitBtn8Click(Sender);
   readln(F);readln(F,str);RadioGroup2.ItemIndex:=(StrToInt(str));
   readln(F);readln(F,str);RadioGroup3.ItemIndex:=(StrToInt(str));
   CloseFile(F);
  except
   msg(4);
  end;
 end;
end;

procedure TForm1.BitBtn20Click(Sender: TObject);
var
 F:TextFile;
 str:string;
begin
 if SaveDialog1.Execute then
 begin
   try
   AssignFile(F,SaveDialog1.FileName);
   rewrite(F);
   writeln(F,'Конфигурационный файл проекта RoBox51. Ручному редактированию не подлежит!');
   writeln(F,'Путь к БНЗ стратегии субъекта А');str:=Edit2.Text;writeln(F,str);
   writeln(F,'Путь к БНЗ стратегии субъекта Б');str:=Edit3.Text;writeln(F,str);
   writeln(F,'Х-координата цели');str:=Edit42.Text;writeln(F,str);
   writeln(F,'Y-координата цели');str:=Edit43.Text;writeln(F,str);
   writeln(F,'Учет удара');str:=BoolToStr(CheckBox2.Checked);writeln(F,str);
   writeln(F,'Вариант исполнительного уровня');str:=IntToStr(RadioGroup1.ItemIndex);writeln(F,str);
   writeln(F,'Показ реальной сцены');str:=BoolToStr(CheckBox1.Checked);writeln(F,str);
   writeln(F,'Х-координата А');str:=Edit1.Text;writeln(F,str);
   writeln(F,'Y-координата А');str:=Edit4.Text;writeln(F,str);
   writeln(F,'Phi-координата А');str:=Edit5.Text;writeln(F,str);
   writeln(F,'Х-координата Б');str:=Edit6.Text;writeln(F,str);
   writeln(F,'Y-координата Б');str:=Edit7.Text;writeln(F,str);
   writeln(F,'Phi-координата Б');str:=Edit8.Text;writeln(F,str);
   writeln(F,'Режим моделирования');str:=IntToStr(RadioGroup2.ItemIndex);writeln(F,str);
   writeln(F,'Режим управления');str:=IntToStr(RadioGroup3.ItemIndex);writeln(F,str);
   CloseFile(F);
  except
   msg(4);
  end;
 end;
end;

procedure TForm1.Edit44Change(Sender: TObject);
begin
{ Edit44.Text:=accept_num(Edit44.Text);}
end;

procedure TForm1.Edit46Change(Sender: TObject);
begin
{ Edit46.Text:=accept_num(Edit46.Text);}
end;

procedure TForm1.Edit45Change(Sender: TObject);
begin
{ Edit45.Text:=accept_num(Edit45.Text);}
end;

procedure TForm1.Edit47Change(Sender: TObject);
begin
{ Edit47.Text:=accept_num(Edit47.Text);}
end;

procedure TForm1.Edit48Change(Sender: TObject);
begin
{ Edit48.Text:=accept_num(Edit48.Text);}
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
   Edit11.Text:=IntToStr(cbb1.ItemIndex + 1);
end;

procedure TForm1.cbb2Change(Sender: TObject);
begin
   Edit12.Text:=IntToStr(cbb2.ItemIndex + 1);
end;

procedure TForm1.cbb3Change(Sender: TObject);
begin
   Edit13.Text:=IntToStr(cbb3.ItemIndex + 1);
end;

procedure TForm1.cbb4Change(Sender: TObject);
begin
   Edit14.Text:=IntToStr(cbb4.ItemIndex + 1);
end;

procedure TForm1.cbb5Change(Sender: TObject);
begin
   Edit15.Text:=IntToStr(cbb5.ItemIndex + 1);
end;

end.



unit U_PRINCIPAL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ColorGrd, ActnMan, ActnColorMaps;

type
  TForm1 = class(TForm)
    btn_retangulo: TButton;
    img_desenhos: TImage;
    btn_circulo: TButton;
    btn_triangulo: TButton;
    btn_livre: TButton;
    btn_limpar: TButton;
    procedure btn_retanguloClick(Sender: TObject);
    procedure btn_circuloClick(Sender: TObject);
    procedure btn_trianguloClick(Sender: TObject);
    procedure btn_livreClick(Sender: TObject);
    procedure img_desenhosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img_desenhosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img_desenhosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MaoLivre : boolean;
  pincelAtivo:boolean;

implementation

{$R *.dfm}

procedure limparImagem(img:TImage);
begin
  img.Canvas.Brush.Color := clWhite;
  img.Canvas.FillRect(img.ClientRect);
end;

procedure TForm1.btn_retanguloClick(Sender: TObject);
var
  centroX, centroY, fimX, fimY:integer;
begin
    limparImagem(img_desenhos);
    centroX := Trunc(img_desenhos.width / 2) - 20;
    centroY := Trunc(img_desenhos.height / 2) - 20;
    //pega a metade da largura e altura total da imagem e diminui 20 que � a metade do tamanho do quadrado
    fimX := centroX + 40;
    fimY := centroY + 40;
    //soma 40 que � o tamanho do quadrado
    img_desenhos.Canvas.Pen.Color := clBlue;
    //define borda do retangulo
    img_desenhos.Canvas.Brush.Color := clBlue;
    //define preenchmento do retangulo

    img_desenhos.Canvas.Rectangle(centroX,centroY, fimX, fimY);
    (*Desenha um retangulo, onde os parametro significam
     (Cordenada horizontal de inicio(x), cordenada vertical de inicio(Y),
      cordenada horizontal de termino(X), cordenada de termino vertical(Y)) *)
end;

procedure TForm1.btn_circuloClick(Sender: TObject);
var
  centroX, centroY, fimX, fimY:integer;
begin
    limparImagem(img_desenhos);
    centroX := Trunc(img_desenhos.width / 2) - 20;
    centroY := Trunc(img_desenhos.height / 2) - 20;
    //pega a metade da largura e altura total da imagem e diminui 20 que � a metade do tamanho do quadrado
    fimX := centroX + 40;
    fimY := centroY + 40;
    //soma 40 que � o tamanho do quadrado
   
    img_desenhos.Canvas.Pen.Color := clBlue;
    //define borda do retangulo
    img_desenhos.Canvas.Brush.Color := clBlue;
    //define preenchmento do retangulo

    img_desenhos.Canvas.Ellipse(centroX,centroY, fimX, fimY);
end;

procedure TForm1.btn_trianguloClick(Sender: TObject);
var
  pontos: array[0..2] of TPoint;
  centroX, centroY:integer;
begin
    limparImagem(img_desenhos);
    centroX := Trunc(img_desenhos.width / 2) - 40;
    centroY := Trunc(img_desenhos.height / 2) + 10;
    //pega a metade da largura e altura total da imagem e diminui 20 que � a metade do tamanho do quadrado
    img_desenhos.Canvas.Brush.Color := clBlue;

    pontos[0] := point(centroX, centroY);
    pontos[1] := point(centroX + 40, centroY - 20 );
    pontos[2] := point(centroX + 80, centroY );
   
    img_desenhos.Canvas.polygon(pontos);
end;

procedure TForm1.btn_livreClick(Sender: TObject);
begin
  limparImagem(img_desenhos);
  maoLivre := True;
end;

procedure TForm1.img_desenhosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    img_desenhos.Canvas.MoveTo(X, Y);
    pincelAtivo:= True;
end;

procedure TForm1.img_desenhosMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    if (pincelAtivo = true) AND (maoLivre = true) then
    begin
      img_desenhos.canvas.LineTo(X,Y);
    end;
end;

procedure TForm1.img_desenhosMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pincelAtivo := false;
end;

procedure TForm1.btn_limparClick(Sender: TObject);
begin
    limparImagem(img_desenhos);
end;

end.

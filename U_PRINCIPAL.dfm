object Form1: TForm1
  Left = 292
  Top = 202
  Width = 1305
  Height = 675
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
  object img_desenhos: TImage
    Left = 168
    Top = 80
    Width = 673
    Height = 417
    OnMouseDown = img_desenhosMouseDown
    OnMouseMove = img_desenhosMouseMove
    OnMouseUp = img_desenhosMouseUp
  end
  object btn_retangulo: TButton
    Left = 176
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Ret'#226'ngulo'
    TabOrder = 0
    OnClick = btn_retanguloClick
  end
  object btn_circulo: TButton
    Left = 280
    Top = 584
    Width = 75
    Height = 25
    Caption = 'C'#237'rculo'
    TabOrder = 1
    OnClick = btn_circuloClick
  end
  object btn_triangulo: TButton
    Left = 392
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Tri'#226'ngulo'
    TabOrder = 2
    OnClick = btn_trianguloClick
  end
  object btn_livre: TButton
    Left = 512
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Pincel'
    TabOrder = 3
    OnClick = btn_livreClick
  end
  object btn_limpar: TButton
    Left = 632
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btn_limparClick
  end
end

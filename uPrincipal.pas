unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Colors,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  FMX.TabControl, System.Actions, FMX.ActnList,u99Permissions,

  {$IFDEF ANDROID}
FMX.VirtualKeyboard, FMX.Platform,
{$ENDIF}


  FMX.StdActns;

type
  TLoteria = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Label2: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Label3: TLabel;
    layUltSorteio: TLayout;
    Layout6: TLayout;
    Label4: TLabel;
    Layout8: TLayout;
    Label5: TLabel;
    layMaiorFreq: TLayout;
    Layout10: TLayout;
    btnAposta: TRoundRect;
    Label6: TLabel;
    TabControl1: TTabControl;
    Inicial: TTabItem;
    Aposta: TTabItem;
    StyleBook1: TStyleBook;
    Image1: TImage;
    Image2: TImage;
    Nconcurso: TLabel;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Image3: TImage;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    Circle4: TCircle;
    Circle5: TCircle;
    Circle6: TCircle;
    Circle7: TCircle;
    Circle8: TCircle;
    Circle9: TCircle;
    Circle10: TCircle;
    Circle11: TCircle;
    Circle12: TCircle;
    Circle13: TCircle;
    Circle14: TCircle;
    Circle15: TCircle;
    Circle16: TCircle;
    Circle17: TCircle;
    Circle18: TCircle;
    Circle19: TCircle;
    Circle20: TCircle;
    Circle21: TCircle;
    Circle22: TCircle;
    Circle23: TCircle;
    Circle24: TCircle;
    Circle25: TCircle;
    Circle26: TCircle;
    Circle27: TCircle;
    Circle28: TCircle;
    Circle29: TCircle;
    Circle30: TCircle;
    layMenorFreq: TLayout;
    Circle31: TCircle;
    Circle32: TCircle;
    Circle33: TCircle;
    Circle34: TCircle;
    Circle35: TCircle;
    Circle36: TCircle;
    Circle37: TCircle;
    Circle38: TCircle;
    Circle39: TCircle;
    Circle40: TCircle;
    Circle41: TCircle;
    Circle42: TCircle;
    Circle43: TCircle;
    Circle44: TCircle;
    Circle45: TCircle;
    Layout5: TLayout;
    Layout15: TLayout;
    btnGerarAposta: TRoundRect;
    Label11: TLabel;
    Layout16: TLayout;
    Image6: TImage;
    Layout7: TLayout;
    Label1: TLabel;
    Rectangle6: TRectangle;
    RadioMaisSaida: TRadioButton;
    RadioMenosSaida: TRadioButton;
    RadioAleatoria: TRadioButton;
    Layout9: TLayout;
    RadioInteligente: TRadioButton;
    Layout11: TLayout;
    gerarC1: TCircle;
    gerarC6: TCircle;
    gerarC11: TCircle;
    gerarC2: TCircle;
    gerarC7: TCircle;
    gerarC12: TCircle;
    gerarC14: TCircle;
    gerarC9: TCircle;
    gerarC4: TCircle;
    gerarC3: TCircle;
    gerarC8: TCircle;
    gerarC13: TCircle;
    gerarC5: TCircle;
    gerarC10: TCircle;
    gerarC15: TCircle;
    ActionList1: TActionList;
    actAposta: TChangeTabAction;
    actInicial: TChangeTabAction;
    Layout12: TLayout;
    imgBackGerar: TImage;
    procedure btnApostaClick(Sender: TObject);
    procedure imgBackGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loteria: TLoteria;

implementation

{$R *.fmx}

procedure TLoteria.btnApostaClick(Sender: TObject);
begin
  actAposta.Execute;
end;

procedure TLoteria.imgBackGerarClick(Sender: TObject);
begin
  actInicial.Execute;
end;

end.

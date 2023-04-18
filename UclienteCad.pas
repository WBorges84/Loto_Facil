unit UclienteCad;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.MediaLibrary.Actions, FMX.StdActns, System.Actions, FMX.ActnList,
  FMX.TabControl, u99Permissions;

type
  TFrmClienteCad = class(TForm)
    Lagendamento: TLayout;
    imgVoltarPrincipal: TImage;
    Label1: TLabel;
    Image1: TImage;
    Lprincipal: TLayout;
    Lnome: TLayout;
    Label3: TLabel;
    Line1: TLine;
    layCliente: TLayout;
    Lendereco: TLayout;
    Label2: TLabel;
    Line2: TLine;
    Layout2: TLayout;
    cFoto: TCircle;
    Lemail: TLayout;
    lblEmail: TLabel;
    Line3: TLine;
    Layout3: TLayout;
    Ltel: TLayout;
    Label4: TLabel;
    Line4: TLine;
    Layout4: TLayout;
    Lswit: TLayout;
    Switch1: TSwitch;
    Label5: TLabel;
    LescolherFoto: TLayout;
    Label6: TLabel;
    ImgFoto: TImage;
    ImgLibrary: TImage;
    ActionList1: TActionList;
    ActLogin: TChangeTabAction;
    ActConta: TChangeTabAction;
    ActEscolher: TChangeTabAction;
    ActFoto: TChangeTabAction;
    ActCamera: TTakePhotoFromCameraAction;
    ActLibrary: TTakePhotoFromLibraryAction;
    procedure ImgFotoClick(Sender: TObject);
    procedure ActCameraDidFinishTaking(Image: TBitmap);
    procedure ActLibraryDidFinishTaking(Image: TBitmap);
    procedure imgVoltarPrincipalClick(Sender: TObject);
    procedure cFotoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    permissao: T99Permissions;
    procedure TrataErroPermissao(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmClienteCad: TFrmClienteCad;

implementation

uses Ucliente, Udm;

procedure TFrmClienteCad.TrataErroPermissao(Sender: TObject);
begin
  ShowMessage('Você não possui acesso ao recurso.');
end;

procedure TFrmClienteCad.ActCameraDidFinishTaking(Image: TBitmap);
begin
    CFoto.Fill.Bitmap.Bitmap := Image;
    ActFoto.Execute;
end;

procedure TFrmClienteCad.ActLibraryDidFinishTaking(Image: TBitmap);
begin
  CFoto.Fill.Bitmap.Bitmap := Image;
  ActFoto.Execute;
end;

procedure TFrmClienteCad.cFotoClick(Sender: TObject);
begin
  Lprincipal.Visible := false;
  LescolherFoto.Visible := true;
end;

procedure TFrmClienteCad.FormCreate(Sender: TObject);
begin
   permissao := T99Permissions.Create;
end;

procedure TFrmClienteCad.ImgFotoClick(Sender: TObject);
begin
  permissao.Camera(ActCamera, TrataErroPermissao);
end;

procedure TFrmClienteCad.imgVoltarPrincipalClick(Sender: TObject);
begin
  if NOT Assigned(FrmCliente) then
  Application.CreateForm(TFrmCliente, FrmCliente);

  FrmCliente.Show;
  FrmClienteCad.Close;
end;

end.

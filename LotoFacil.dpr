program LotoFacil;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Loteria},
  u99Permissions in 'Units\u99Permissions.pas',
  UclienteCad in '..\App Salão\UclienteCad.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLoteria, Loteria);
  Application.Run;
end.

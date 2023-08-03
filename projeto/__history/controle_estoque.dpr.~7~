program controle_estoque;

uses
  Vcl.Forms,
  u_principal in '..\forms\u_principal.pas' {Frm_principal},
  U_DM in '..\forms\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\forms\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\forms\U_usuario.pas' {Frm_usuario},
  U_empresa in '..\forms\U_empresa.pas' {Frm_padrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_principal, Frm_principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

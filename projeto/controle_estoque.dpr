program controle_estoque;

uses
  Vcl.Forms,
  u_principal in '..\forms\u_principal.pas' {Frm_principal},
  U_DM in '..\forms\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\forms\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\forms\U_usuario.pas' {Frm_usuario},
  U_empresa in '..\forms\U_empresa.pas' {Frm_padrao1},
  U_cliente in '..\forms\U_cliente.pas' {Frm_cliente},
  U_fornecedor in '..\forms\U_fornecedor.pas' {frm_fornecedor},
  U_produto in '..\forms\U_produto.pas' {Frm_produto},
  U_forma_pgto in '..\forms\U_forma_pgto.pas' {Frm_forma_pgto},
  U_form_pesquisa_padrao in '..\forms\U_form_pesquisa_padrao.pas' {frm_pesquisa_padrao},
  u_pesq_usuario in '..\forms\u_pesq_usuario.pas' {frm_pesq_usu�rio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_principal, Frm_principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_pesq_usu�rio, frm_pesq_usu�rio);
  Application.Run;
end.

unit u_principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_principal = class(TForm)
    Panel1: TPanel;
    bt_empresa: TSpeedButton;
    bt_usuario: TSpeedButton;
    bt_cliente: TSpeedButton;
    bt_fornecedor: TSpeedButton;
    bt_produto: TSpeedButton;
    bt_forma_pgto: TSpeedButton;
    bt_compra: TSpeedButton;
    bt_venda: TSpeedButton;
    bt_troca_usuario: TSpeedButton;
    bt_fechar: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Empresa1: TMenuItem;
    Clientes1: TMenuItem;
    fornecedores1: TMenuItem;
    FormaPgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    Sobreosistema1: TMenuItem;
    Produtos1: TMenuItem;
    Usuario1: TMenuItem;
    procedure bt_fecharClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure abre_tela_empresa();
    procedure Empresa1Click(Sender: TObject);
    procedure bt_empresaClick(Sender: TObject);
    procedure bt_clienteClick(Sender: TObject);
    procedure abre_tela_cliente();
    procedure Clientes1Click(Sender: TObject);
    procedure bt_fornecedorClick(Sender: TObject);
    procedure abre_tela_fornecedor();
    procedure fornecedores1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure bt_usuarioClick(Sender: TObject);
    procedure abre_tela_usuario();
    procedure bt_produtoClick(Sender: TObject);
    procedure abre_tela_produto();
    procedure bt_forma_pgtoClick(Sender: TObject);
    procedure abre_tela_forma_pgto();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_principal: TFrm_principal;

implementation

{$R *.dfm}

uses U_usuario, U_empresa, U_cliente, U_fornecedor, U_produto, U_forma_pgto;

// procedures para abrir telas
procedure TFrm_principal.abre_tela_cliente;
begin
 frm_cliente:=tfrm_cliente.create(self);
 frm_cliente.ShowModal;
 try

finally
  frm_cliente.Free;
  frm_cliente:=nil;
 end;
end;

procedure TFrm_principal.abre_tela_empresa;
begin
 frm_empresa:=tfrm_empresa.create(self);
 frm_empresa.ShowModal;
 try

finally
  frm_usuario.Free;
  frm_usuario:=nil;
 end
end;

// Abre a tela de fornecedores
procedure TFrm_principal.abre_tela_forma_pgto;
begin
 Frm_forma_pgto:=TFrm_forma_pgto.create(self);
 Frm_forma_pgto.showmodal;
 try

 finally
  Frm_forma_pgto.Free;
  frm_fornecedor:=nil;
 end
end;

procedure TFrm_principal.abre_tela_fornecedor;
begin
 frm_fornecedor:=tfrm_fornecedor.create(self);
 frm_fornecedor.showmodal;
 try

 finally
  frm_fornecedor.Free;
  frm_fornecedor:=nil;
 end
end;

procedure TFrm_principal.abre_tela_produto;
begin
 frm_produto:=tfrm_produto.create(self);
 frm_produto.ShowModal;
 try

 finally
  frm_produto.Free;
  frm_produto:=nil;
 end
end;

// Abre a tela de usuários
procedure TFrm_principal.abre_tela_usuario;
begin
 frm_usuario:=tfrm_usuario.create(self);
 frm_usuario.ShowModal;
 try

 finally
  frm_usuario.Free;
  frm_usuario:=nil;
 end
end;

// ao clicar no botao bt_xxxxxxxxx a tela correspondente se abre
procedure TFrm_principal.bt_usuarioClick(Sender: TObject);
begin
 abre_tela_usuario;
end;

procedure TFrm_principal.Usuario1Click(Sender: TObject);
begin
 abre_tela_usuario;
end;

procedure TFrm_principal.Clientes1Click(Sender: TObject);
begin
 abre_tela_cliente;
end;

procedure TFrm_principal.Empresa1Click(Sender: TObject);
begin
 abre_tela_empresa;
end;

procedure TFrm_principal.fornecedores1Click(Sender: TObject);
begin
 abre_tela_fornecedor;
end;

procedure TFrm_principal.bt_clienteClick(Sender: TObject);
begin
 abre_tela_cliente;
end;

procedure TFrm_principal.bt_empresaClick(Sender: TObject);
begin
 abre_tela_empresa;
end;

procedure TFrm_principal.bt_forma_pgtoClick(Sender: TObject);
begin
 abre_tela_forma_pgto;
end;

procedure TFrm_principal.bt_fornecedorClick(Sender: TObject);
begin
 abre_tela_fornecedor;
end;

procedure TFrm_principal.bt_produtoClick(Sender: TObject);
begin
 abre_tela_produto;
end;

procedure TFrm_principal.bt_fecharClick(Sender: TObject);
begin
 if MessageDlg('Deseja sair do sistema?', mtconfirmation,[mbYES,mbNO],0)=mrYES then
    begin
     application.terminate;
    end
    else
    abort;
close;
end;

procedure TFrm_principal.Timer1Timer(Sender: TObject);
begin
                        // insere dados na stausbar
  statusbar1.panels[0].Text:=datetostr(now);
  statusbar1.Panels[1].Text:=timetostr(now);
  statusbar1.panels[2].text:='SEJA BEM VINDO AO SISTEMA';

end;

end.

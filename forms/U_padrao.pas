unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_atualizar: TBitBtn;
    bt_deletar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_gravar: TBitBtn;
    bt_editar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bt_Pesquisar: TBitBtn;
    q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    bt_sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure tratabotoes();
    procedure bt_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM, u_principal;

procedure TFrm_padrao.bt_atualizarClick(Sender: TObject);
begin
// atualiza o registro
 tratabotoes;
 q_padrao.Refresh;
 messagedlg('Registro atualizado comsucesso!',mtinformation,[mbOk],0);
end;

procedure TFrm_padrao.bt_cancelarClick(Sender: TObject);
begin
// cancela a a��o
 tratabotoes;
 q_padrao.Cancel;
 messagedlg('A��o cancelada pelo usu�rio!',mtinformation,[mbOk],0);
end;

procedure TFrm_padrao.bt_deletarClick(Sender: TObject);
begin
// deleta o registro
tratabotoes();
 if messagedlg('Deseja deletar este  registro?',mtconfirmation,[mbok,mbno],0)=mrOk then
   begin
    q_padrao.Delete;
    messagedlg('Registro deletado com sucesso!',mtinformation,[mbOk],0);
    tratabotoes;
   end
   else
   tratabotoes();
   abort;
end;

procedure TFrm_padrao.bt_editarClick(Sender: TObject);
begin
// abre para edi��o de registros
tratabotoes;
if messagedlg('Deseja editar este  registro?',mtconfirmation,[mbOk,mbNo],0)=mrOk then
  begin
   q_padrao.edit;
  end
  else
  tratabotoes;
  abort;
end;

procedure TFrm_padrao.bt_gravarClick(Sender: TObject);
begin
// salva o registro
 tratabotoes;
 q_padrao.Post;
 messagedlg('Registro salvo com sucesso!',mtinformation,[mbOk],0);
end;

procedure TFrm_padrao.bt_novoClick(Sender: TObject);
begin
// cria um novo registro
 q_padrao.Open;
 tratabotoes();
 q_padrao.Append;
end;

procedure TFrm_padrao.bt_sairClick(Sender: TObject);
begin
 close;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
// faz a fun��o da tecla tab
  if key=#13 then
  begin
    key:=#0;
    perform(wm_nextdlgctl,0,0);
  end;
end;

procedure TFrm_padrao.tratabotoes;
begin
// habilita e desabilita bot�es
  bt_novo.Enabled:=not bt_novo.Enabled;
  bt_deletar.Enabled:=not bt_deletar.Enabled;
  bt_editar.Enabled:=not bt_editar.Enabled;
  bt_gravar.Enabled:=not bt_gravar.Enabled;
  bt_atualizar.Enabled:=not bt_atualizar.Enabled;
end;

end.
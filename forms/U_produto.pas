unit U_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_produto = class(TFrm_padrao)
    q_padraoPRODUTO_DESCRICAO: TStringField;
    q_padraoVL_CUSTO: TBCDField;
    q_padraoVL_VENDA: TBCDField;
    q_padraoESTOQUE: TBCDField;
    q_padraoESTOQUE_MIN: TBCDField;
    q_padraoUNIDADE: TStringField;
    q_padraoCADASTRO: TDateField;
    q_padraoID_FORNECEDOR: TIntegerField;
    q_padraoNOME: TStringField;
    Label1: TLabel;
    db_id_produto: TDBEdit;
    Label2: TLabel;
    db_descricao: TDBEdit;
    Label3: TLabel;
    db_vl_custo: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    db_cadastro: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    dbc_unidade: TDBComboBox;
    Label7: TLabel;
    q_padraoID_PRODUTO: TIntegerField;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_produto: TFrm_produto;

implementation

{$R *.dfm}

procedure TFrm_produto.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text:=datetostr(now);
  db_id_produto.SetFocus;
end;

end.

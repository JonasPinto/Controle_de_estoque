unit U_form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_pesquisa_padrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    Label1: TLabel;
    ed_nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_pesquisa: TBitBtn;
    bt_transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisa_padrao: Tfrm_pesquisa_padrao;

implementation

{$R *.dfm}

uses U_DM;

end.

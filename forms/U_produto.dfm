inherited Frm_produto: TFrm_produto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 386
  ClientWidth = 832
  ExplicitWidth = 838
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 98
    Top = 96
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = db_id_produto
  end
  object Label2: TLabel [1]
    Left = 98
    Top = 136
    Width = 114
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = db_descricao
  end
  object Label3: TLabel [2]
    Left = 98
    Top = 176
    Width = 51
    Height = 13
    Caption = 'VL_CUSTO'
    FocusControl = db_vl_custo
  end
  object Label4: TLabel [3]
    Left = 246
    Top = 176
    Width = 50
    Height = 13
    Caption = 'VL_VENDA'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 399
    Top = 176
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 564
    Top = 176
    Width = 72
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [6]
    Left = 238
    Top = 96
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  object Label9: TLabel [7]
    Left = 196
    Top = 219
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [8]
    Left = 348
    Top = 219
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit10
  end
  object Label7: TLabel [9]
    Left = 98
    Top = 219
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  inherited Panel1: TPanel
    Width = 832
    ExplicitWidth = 832
  end
  inherited Panel2: TPanel
    Top = 345
    Width = 832
    ExplicitTop = 345
    ExplicitWidth = 832
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_id_produto: TDBEdit [13]
    Left = 98
    Top = 112
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_descricao: TDBEdit [14]
    Left = 98
    Top = 149
    Width = 600
    Height = 21
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_vl_custo: TDBEdit [15]
    Left = 98
    Top = 192
    Width = 134
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [16]
    Left = 246
    Top = 192
    Width = 134
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit5: TDBEdit [17]
    Left = 399
    Top = 192
    Width = 134
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit6: TDBEdit [18]
    Left = 564
    Top = 192
    Width = 134
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_cadastro: TDBEdit [19]
    Left = 238
    Top = 112
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [20]
    Left = 196
    Top = 235
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [21]
    Left = 348
    Top = 235
    Width = 350
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object dbc_unidade: TDBComboBox [22]
    Left = 98
    Top = 235
    Width = 79
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN')
    TabOrder = 12
  end
  inherited q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID_PRODUTO,'
      '    A.PRODUTO_DESCRICAO,'
      '    A.VL_CUSTO,'
      '    A.VL_VENDA,'
      '    A.ESTOQUE,'
      '    A.ESTOQUE_MIN,'
      '    A.UNIDADE,'
      '    A.CADASTRO,'
      '    A.ID_FORNECEDOR,'
      '    B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR ')
    Left = 760
    Top = 80
    object q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object q_padraoVL_CUSTO: TBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoVL_VENDA: TBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoESTOQUE_MIN: TBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited ds_padrao: TDataSource
    Left = 760
    Top = 144
  end
end

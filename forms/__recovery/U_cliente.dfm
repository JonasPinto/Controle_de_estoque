inherited Frm_cliente: TFrm_cliente
  Caption = 'CADASTRO DE CLIENTE'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 176
    Top = 48
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 176
    Top = 128
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 176
    Top = 168
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 176
    Top = 208
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 176
    Top = 248
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 176
    Top = 288
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 176
    Top = 328
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 176
    Top = 368
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 176
    Top = 408
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 176
    Top = 448
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 176
    Top = 488
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DBEdit12
  end
  inherited DBNavigator1: TDBNavigator
    Hints.Strings = ()
  end
  object DBEdit1: TDBEdit [16]
    Left = 176
    Top = 64
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [17]
    Left = 176
    Top = 104
    Width = 1304
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [18]
    Left = 176
    Top = 144
    Width = 1304
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [19]
    Left = 176
    Top = 184
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit5: TDBEdit [20]
    Left = 176
    Top = 224
    Width = 1304
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit6: TDBEdit [21]
    Left = 176
    Top = 264
    Width = 1304
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit7: TDBEdit [22]
    Left = 176
    Top = 304
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit8: TDBEdit [23]
    Left = 176
    Top = 344
    Width = 212
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBEdit9: TDBEdit [24]
    Left = 176
    Top = 384
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBEdit10: TDBEdit [25]
    Left = 176
    Top = 424
    Width = 212
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DBEdit11: TDBEdit [26]
    Left = 176
    Top = 464
    Width = 1304
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 14
  end
  object DBEdit12: TDBEdit [27]
    Left = 176
    Top = 504
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 15
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gen_id_cliente'
    UpdateOptions.AutoIncFields = 'id_cliente'
    SQL.Strings = (
      'select '
      '     id_cliente,'
      '     nome,'
      '     endereco,'
      '     numero,'
      '     bairro,'
      '     cidade,'
      '     uf,'
      '     cep,'
      '     telefone,'
      '     cpf,'
      '     email,'
      '     cadastro'
      'from cliente'
      'order by id_cliente')
    object q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

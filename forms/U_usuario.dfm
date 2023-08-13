inherited Frm_usuario: TFrm_usuario
  Align = alClient
  Caption = 'CADASTRO DE USU'#193'RIOS'
  ExplicitTop = 2
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 29
    Top = 117
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 29
    Top = 164
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 29
    Top = 210
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = db_senha
  end
  object Label4: TLabel [3]
    Left = 246
    Top = 210
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 468
    Top = 210
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 5
    ExplicitWidth = 824
  end
  inherited Panel2: TPanel
    TabOrder = 6
    ExplicitTop = 1679
    ExplicitWidth = 830
    inherited DBNavigator1: TDBNavigator
      Top = 443
      Hints.Strings = ()
      ExplicitTop = 443
    end
  end
  inherited bt_sair: TBitBtn
    TabOrder = 7
  end
  object DBEdit1: TDBEdit [8]
    Left = 29
    Top = 136
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [9]
    Left = 29
    Top = 183
    Width = 573
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_senha: TDBEdit [10]
    Left = 29
    Top = 229
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object db_cadastro: TDBEdit [11]
    Left = 468
    Top = 229
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object db_tipo: TDBComboBox [12]
    Left = 246
    Top = 229
    Width = 200
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select'
      '       id_usuario,'
      '       nome,'
      '       senha,'
      '       tipo,'
      '       cadastro'
      'from usuario'
      'order by id_usuario'
      ''
      '')
    Left = 752
    Top = 56
    object q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 752
    Top = 144
  end
end

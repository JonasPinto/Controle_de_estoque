object DM: TDM
  OldCreateOrder = False
  Height = 328
  Width = 505
  object conecxao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\jonas\OneDrive\GitHub\controle_de_estoque\exe\' +
        'banco\ESTOQUE.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 304
    Top = 72
  end
  object transacao: TFDTransaction
    Connection = conecxao
    Left = 72
    Top = 104
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 176
    Top = 32
  end
end

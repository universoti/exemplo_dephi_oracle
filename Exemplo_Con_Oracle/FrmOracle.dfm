object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 305
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 208
    Top = 16
    Width = 185
    Height = 25
    Caption = 'Carregar Alunos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 641
    Height = 169
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DevartOracle'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=xe'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=1234'
      'Oracle TransIsolation=ReadCommitted'
      'User_Name=erick'
      'UseQuoteChar=False'
      'UseUnicode=True'
      'GetDriverFunc=getSQLDriverORA'
      'LibraryName=dbexpoda41.dll'
      'VendorLib=OCI.DLL'
      'ProductName=DevartOracle'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver260.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartOracleMetaDataCommandFactory,Dbx' +
        'DevartOracleDriver260.bpl'
      'DriverUnit=DBXDevartOracle')
    Connected = True
    Left = 448
    Top = 16
  end
  object SQLQuery1: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  ta.nome,ta.cidade FROM taluno  ta')
    SQLConnection = SQLConnection1
    Left = 528
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E00046E6F6D
      6501004900000001000557494454480200020096000663696461646501004900
      000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 80
    object ClientDataSet1nome: TStringField
      DisplayWidth = 50
      FieldName = 'nome'
      Size = 150
    end
    object ClientDataSet1cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 536
    Top = 80
  end
end

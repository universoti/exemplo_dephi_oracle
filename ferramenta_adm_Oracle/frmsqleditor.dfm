object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 536
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 480
    Width = 62
    Height = 13
    Caption = 'COD_ALUNO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 88
    Top = 1400
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 88
    Top = 2320
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 88
    Top = 3240
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 88
    Top = 4160
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 88
    Top = 5080
    Width = 44
    Height = 13
    Caption = 'SALARIO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 88
    Top = 6000
    Width = 66
    Height = 13
    Caption = 'NASCIMENTO'
    FocusControl = DBEdit7
  end
  object edt_host: TLabeledEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Host'
    TabOrder = 0
  end
  object edt_caminho_bd: TLabeledEdit
    Left = -33
    Top = 59
    Width = 450
    Height = 21
    EditLabel.Width = 89
    EditLabel.Height = 13
    EditLabel.Caption = 'caminho do banco '
    TabOrder = 1
  end
  object Button1: TButton
    Left = 600
    Top = 30
    Width = 97
    Height = 25
    Caption = 'Testar/Conectar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object TabControl1: TTabControl
    Left = 24
    Top = 72
    Width = 561
    Height = 209
    MultiLine = True
    MultiSelect = True
    TabOrder = 3
    Tabs.Strings = (
      'A'#231#227'o')
    TabIndex = 0
    OnChange = TabControl1Change
    object Memo_sql: TMemo
      Left = 16
      Top = 40
      Width = 505
      Height = 153
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 312
    Width = 561
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn_comando: TButton
    Left = 602
    Top = 166
    Width = 97
    Height = 25
    Caption = 'Executar SQL'
    TabOrder = 5
    OnClick = btn_comandoClick
  end
  object btn_limpar: TButton
    Left = 600
    Top = 197
    Width = 97
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 597
    Top = 244
    Width = 100
    Height = 21
    ItemIndex = 0
    TabOrder = 7
    Text = 'SELECT'
    Items.Strings = (
      'SELECT'
      'ALTERA'#199#213'ES')
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 438
    Width = 561
    Height = 86
    DataSource = DataSource2
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 936
    Width = 433
    Height = 21
    DataField = 'COD_ALUNO'
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 1856
    Width = 394
    Height = 21
    DataField = 'NOME'
    TabOrder = 10
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 2776
    Width = 394
    Height = 21
    DataField = 'CIDADE'
    TabOrder = 11
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 3696
    Width = 134
    Height = 21
    DataField = 'CEP'
    TabOrder = 12
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 4616
    Width = 30
    Height = 21
    DataField = 'ESTADO'
    TabOrder = 13
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 5536
    Width = 147
    Height = 21
    DataField = 'SALARIO'
    TabOrder = 14
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 6456
    Width = 446
    Height = 21
    DataField = 'NASCIMENTO'
    TabOrder = 15
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 480
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 16
    OnClick = BitBtn1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 616
    Top = 72
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 624
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 656
    Top = 128
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
    Left = 640
    Top = 360
  end
  object SQLQuery1: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from taluno')
    SQLConnection = SQLConnection1
    Left = 648
    Top = 416
    object SQLQuery1COD_ALUNO: TFMTBCDField
      FieldName = 'COD_ALUNO'
      Required = True
      Precision = 32
      Size = 0
    end
    object SQLQuery1NOME: TWideStringField
      FieldName = 'NOME'
      Size = 30
    end
    object SQLQuery1CIDADE: TWideStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object SQLQuery1CEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLQuery1ESTADO: TWideStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object SQLQuery1SALARIO: TBCDField
      FieldName = 'SALARIO'
      Precision = 10
    end
    object SQLQuery1NASCIMENTO: TSQLTimeStampField
      FieldName = 'NASCIMENTO'
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 616
    Top = 296
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      490000009619E0BD010000001800000002000000000003000000490009434F44
      5F414C554E4F0400010000000000084E4D5F414C554E4F020049000000010005
      574944544802000200F4010000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 432
    object ClientDataSet1COD_ALUNO: TIntegerField
      FieldName = 'COD_ALUNO'
    end
    object ClientDataSet1NM_ALUNO: TStringField
      FieldName = 'NM_ALUNO'
      Size = 500
    end
  end
  object DataSource3: TDataSource
    DataSet = SQLQuery1
    Left = 664
    Top = 296
  end
end

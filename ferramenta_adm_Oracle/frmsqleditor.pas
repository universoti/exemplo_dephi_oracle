unit frmsqleditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, DBXDevartOracle, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    edt_host: TLabeledEdit;
    edt_caminho_bd: TLabeledEdit;
    Button1: TButton;
    TabControl1: TTabControl;
    DBGrid1: TDBGrid;
    btn_comando: TButton;
    btn_limpar: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Memo_sql: TMemo;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    DataSource2: TDataSource;
    SQLQuery1COD_ALUNO: TFMTBCDField;
    SQLQuery1NOME: TWideStringField;
    SQLQuery1CIDADE: TWideStringField;
    SQLQuery1CEP: TWideStringField;
    SQLQuery1ESTADO: TWideStringField;
    SQLQuery1SALARIO: TBCDField;
    SQLQuery1NASCIMENTO: TSQLTimeStampField;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1COD_ALUNO: TIntegerField;
    ClientDataSet1NM_ALUNO: TStringField;
    DataSource3: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure btn_comandoClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  SQLQuery1.Active:=FALSE;
  SQLQuery1.SQL.CommaText:='select * from taluno';
  SQLQuery1.Active:=TRUE;
  SQLQuery1.First;
  while NOT SQLQuery1.Eof do
  BEGIN
    ClientDataSet1.Append;
    ClientDataSet1.FieldByName('COD_ALUNO').AsString:=SQLQuery1.FieldByName('COD_ALUNO').AsString;
    ClientDataSet1.FieldByName('NM_ALUNO').AsString:=SQLQuery1.FieldByName('NOME').AsString;
    ClientDataSet1.Post;
    SQLQuery1.Next;
  END;

end;

procedure TForm1.btn_comandoClick(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  BEGIN
     FDQuery1.Active:=false;
     FDQuery1.SQL.Clear;
     FDQuery1.SQL.Text:=Memo_sql.Lines.Text;
     FDQuery1.Active:=true;
  END
  ELSE
  BEGIN

      try
         FDQuery1.ExecSQL(Memo_sql.Lines.Text)   ;
         ShowMessage('OK');
      except
        ShowMessage('COMANDO ERRADO');
      end;

  END;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   try
    FDConnection1.Params.Database:=edt_host.Text+':'+edt_caminho_bd.Text;
    FDConnection1.Params.UserName:='SYSDBA';
    FDConnection1.Params.Password:='masterkey' ;
    FDConnection1.Connected:=true;
    if  FDConnection1.Connected=true then
      ShowMessage('banco conectado')
    else
      ShowMessage('banco n�o conectado');
   except
      ShowMessage('banco n�o conectado');

   end;


end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
     Memo_sql.Lines.Clear;
end;

end.

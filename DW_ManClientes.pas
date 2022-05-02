unit DW_ManClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TFManClientes = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBCliente: TDBEdit;
    DBENombre: TDBEdit;
    DBEDireccion: TDBEdit;
    Button1: TButton;
    DBNavigator: TDBNavigator;
    ADOTable: TADOTable;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    ADOQueryCLIENTE: TIntegerField;
    ADOQueryNOMBRE_CLIENTE: TWideStringField;
    ADOQueryDIRECCION: TWideStringField;
    ADOTableCLIENTE: TIntegerField;
    ADOTableNOMBRE_CLIENTE: TWideStringField;
    ADOTableDIRECCION: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManClientes: TFManClientes;

implementation


{$R *.dfm}

procedure TFManClientes.FormCreate(Sender: TObject);
begin
   ADOQuery.Active:= False;
  ADOQuery.SQL.Text:= 'Select * From Clientes';
  ADOQuery.Active := True;
  //ADOQuery.Refresh;
end;

procedure TFManClientes.Button1Click(Sender: TObject);
begin
   ADOQuery.Active := False;
  Close;
end;

end.

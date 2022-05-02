unit DW_ManFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ADODB, DB, Mask, ExtCtrls;

type
  TFManFacturas = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNumero: TDBEdit;
    DBEFecha: TDBEdit;
    DBETotal: TDBEdit;
    ADOTable: TADOTable;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    ADOQueryNUMERO: TIntegerField;
    ADOQueryFECHA: TDateTimeField;
    ADOQueryCLIENTE: TIntegerField;
    ADOQueryTOTAL: TIntegerField;
    edCliente: TEdit;
    DBNavigator: TDBNavigator;
    ADOQCliente: TADOQuery;
    ADOQClienteCLIENTE: TIntegerField;
    ADOQClienteNOMBRE_CLIENTE: TWideStringField;
    dsCliente: TDataSource;
    DBLcbCliente: TDBLookupComboBox;
    Label2: TLabel;
    ADOTableNUMERO: TIntegerField;
    ADOTableFECHA: TDateTimeField;
    ADOTableCLIENTE: TIntegerField;
    ADOTableTOTAL: TIntegerField;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DBLcbClienteCloseUp(Sender: TObject);
    procedure ADOTableAfterScroll(DataSet: TDataSet);
    procedure ADOQueryAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManFacturas: TFManFacturas;

implementation

uses DW_ManDetalle;

{$R *.dfm}

procedure TFManFacturas.FormCreate(Sender: TObject);
begin
  ADOQuery.Active:= False;
  ADOQuery.SQL.Text:= 'Select * From CABEZA_FACTURA';
  ADOQuery.Active := True;

  ADOQCliente.Active := False;
  ADOQCliente.SQL.Text:= 'Select CLIENTE, NOMBRE_CLIENTE FROM CLIENTES';
  ADOQCliente.Active := True;

end;

procedure TFManFacturas.DBLcbClienteCloseUp(Sender: TObject);
begin
  if ADOQueryCLIENTE.IsNull then
    edCliente.Clear
  else
  begin
    ADOQCliente.Locate('CLIENTE',ADOQueryCLIENTE.Value,[loCaseInsensitive]);
    edCliente.Text := ADOQClienteNOMBRE_CLIENTE.AsString;
  end;
end;

procedure TFManFacturas.ADOTableAfterScroll(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CLIENTE').IsNull then
    edCliente.Clear
  else
  begin
    ADOQCliente.Locate('CLIENTE', DataSet.FieldByName('CLIENTE').Value,[loCaseInsensitive]);
    edCliente.Text := ADOQClienteNOMBRE_CLIENTE.AsString
  end;

end;

procedure TFManFacturas.ADOQueryAfterScroll(DataSet: TDataSet);
begin

  if not ADOQCliente.Active then
    exit;

  if DataSet.FieldByName('CLIENTE').IsNull then
    edCliente.Clear
  else
  begin
    ADOQCliente.Locate('CLIENTE', DataSet.FieldByName('CLIENTE').Value,[loCaseInsensitive]);
    edCliente.Text := ADOQClienteNOMBRE_CLIENTE.AsString
  end;
end;

procedure TFManFacturas.Button3Click(Sender: TObject);
begin
    ADOQuery.Active := False;
   ADOQCliente.Active := False;
  Close;
end;

procedure TFManFacturas.Button2Click(Sender: TObject);
begin
  FManDetalle := TFManDetalle.Create(Self);
  FManDetalle.nuFactura := ADOQueryNUMERO.Value;
  FManDetalle.Show;
end;

end.

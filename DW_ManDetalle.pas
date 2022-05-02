unit DW_ManDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TFManDetalle = class(TForm)
    Panel3: TPanel;
    Label5: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEFactDeta: TDBEdit;
    DBECantidad: TDBEdit;
    DBEValue: TDBEdit;
    EdProductoNombre: TEdit;
    DBLCBProducts: TDBLookupComboBox;
    ADODetalle: TADOTable;
    ADODetalleNUMERO: TIntegerField;
    ADODetallePRODUCTO: TIntegerField;
    ADODetalleCANTIDAD: TIntegerField;
    ADODetalleVALOR: TIntegerField;
    ADOQDetalle: TADOQuery;
    ADOQDetalleNUMERO: TIntegerField;
    ADOQDetallePRODUCTO: TIntegerField;
    ADOQDetalleCANTIDAD: TIntegerField;
    ADOQDetalleVALOR: TIntegerField;
    dsDetalle: TDataSource;
    ADOQProducts: TADOQuery;
    ADOQProductsPRODUCTO: TIntegerField;
    ADOQProductsNOMBRE_PRODUCTO: TWideStringField;
    ADOQProductsVALOR: TIntegerField;
    dsProducts: TDataSource;
    DBNavigator: TDBNavigator;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLCBProductsCloseUp(Sender: TObject);
    procedure ADOQDetalleCANTIDADChange(Sender: TField);
    procedure ADODetalleAfterScroll(DataSet: TDataSet);
    procedure ADOQDetalleAfterScroll(DataSet: TDataSet);
    procedure ADOQDetalleAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    nuFactura : integer;
  end;

var
  FManDetalle: TFManDetalle;


implementation

{$R *.dfm}

procedure TFManDetalle.Button3Click(Sender: TObject);
begin
  ADOQDetalle.Active := False;
  ADOQProducts.Active := False;
  Close;
end;

procedure TFManDetalle.FormCreate(Sender: TObject);
begin
  ADOQDetalle.Active := False;
  ADOQDetalle.SQL.Text:= 'Select * FROM DETALLE_FACTURA';
  ADOQDetalle.Active := True;

  ADOQProducts.Active := False;
  ADOQProducts.SQL.Text:= 'Select PRODUCTO, NOMBRE_PRODUCTO, VALOR FROM PRODUCTOS';
  ADOQProducts.Active := True;
end;

procedure TFManDetalle.DBLCBProductsCloseUp(Sender: TObject);
begin
  if ADOQDetallePRODUCTO.IsNull then
    EdProductoNombre.Clear
  else
  begin
    ADOQProducts.Locate('PRODUCTO',ADOQDetallePRODUCTO.Value,[loCaseInsensitive]);
    EdProductoNombre.Text := ADOQProductsNOMBRE_PRODUCTO.AsString;
    DBEValue.EditText := IntToStr(ADOQProductsVALOR.Value);
  end;
end;

procedure TFManDetalle.ADOQDetalleCANTIDADChange(Sender: TField);
begin
    DBEValue.EditText := IntToStr(ADOQProductsVALOR.Value * ADOQDetalleCANTIDAD.Value);
end;

procedure TFManDetalle.ADODetalleAfterScroll(DataSet: TDataSet);
begin
  if DataSet.FieldByName('PRODUCTO').IsNull then
    EdProductoNombre.Clear
  else
  begin
    ADOQProducts.Locate('PRODUCTO', DataSet.FieldByName('PRODUCTO').Value,[loCaseInsensitive]);
    EdProductoNombre.Text := ADOQProductsNOMBRE_PRODUCTO.AsString
  end;
end;

procedure TFManDetalle.ADOQDetalleAfterScroll(DataSet: TDataSet);
begin
  if not ADOQProducts.Active then
    exit;

  if DataSet.FieldByName('PRODUCTO').IsNull then
    EdProductoNombre.Clear
  else
  begin
    ADOQProducts.Locate('PRODUCTO', DataSet.FieldByName('PRODUCTO').Value,[loCaseInsensitive]);
    EdProductoNombre.Text := ADOQProductsNOMBRE_PRODUCTO.AsString
  end;
end;

procedure TFManDetalle.ADOQDetalleAfterInsert(DataSet: TDataSet);
begin
  ADOQDetalleNUMERO.Value := nuFactura;
end;

end.

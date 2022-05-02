unit DW_ManProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TFManProductos = class(TForm)
    Panel1: TPanel;
    Label11: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBProducto: TDBEdit;
    DBENombre: TDBEdit;
    DBEValor: TDBEdit;
    DBNavigator: TDBNavigator;
    Button1: TButton;
    ADOTable: TADOTable;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    ADOQueryPRODUCTO: TIntegerField;
    ADOQueryNOMBRE_PRODUCTO: TWideStringField;
    ADOQueryVALOR: TIntegerField;
    ADOTablePRODUCTO: TIntegerField;
    ADOTableNOMBRE_PRODUCTO: TWideStringField;
    ADOTableVALOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManProductos: TFManProductos;

implementation


{$R *.dfm}


procedure TFManProductos.FormCreate(Sender: TObject);
begin
   ADOQuery.Active:= False;
  ADOQuery.SQL.Text:= 'Select * From Productos';
  ADOQuery.Active := True;
  //ADOQuery.Refresh;
end;

procedure TFManProductos.Button1Click(Sender: TObject);
begin
   ADOQuery.Active := False;
  Close;
end;

end.

unit DW_Principial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses  DW_ManClientes, DW_ManProductos, DW_ManFacturas, DW_ManDetalle;

{$R *.dfm}

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  FManClientes := TFManClientes.Create(Self);
  FManClientes.Show;
end;


procedure TFPrincipal.Button2Click(Sender: TObject);
begin
  FManProductos := TFManProductos.Create(Self);
  FManProductos.Show;
end;

procedure TFPrincipal.Button3Click(Sender: TObject);
begin
  FManFacturas := TFManFacturas.Create(Self);
  FManFacturas.Show;
end;

procedure TFPrincipal.Button4Click(Sender: TObject);
begin
  FManDetalle := TFManDetalle.Create(Self);
  FManDetalle.Show;
end;

end.

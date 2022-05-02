program DW_Facturas;

uses
  Forms,
  DW_ManClientes in 'DW_ManClientes.pas' {FManClientes},
  DW_DModule in 'DW_DModule.pas' {DWDModule: TDataModule},
  DW_ManProductos in 'DW_ManProductos.pas' {FManProductos},
  DW_Principial in 'DW_Principial.pas' {FPrincipal},
  DW_ManFacturas in 'DW_MAnFacturas.pas' {FManFacturas},
  DW_ManDetalle in 'DW_ManDetalle.pas' {FManDetalle};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TDWDModule, DWDModule);
  Application.CreateForm(TFManFacturas, FManFacturas);
  Application.CreateForm(TFManDetalle, FManDetalle);
  Application.Run;
end.

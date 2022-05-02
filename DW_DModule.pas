unit DW_DModule;

interface

uses
  SysUtils, Classes, IniFiles, DB, ADODB, Forms, Dialogs;

type
  TDWDModule = class(TDataModule)
    AC1: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DWDModule: TDWDModule;

implementation

{$R *.dfm}

procedure TDWDModule.DataModuleCreate(Sender: TObject);
Var BaseDeDatos, ConStr : String;
    IniFile: TIniFile;

begin
   // Obtiene la ruta y el nombre de la base de datos
   IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'DW_Facturas.ini');
   BasedeDatos := IniFile.ReadString('BD','Path','');
   If BasedeDatos = '' then ShowMessage('Error al cargar Base de Datos');
   ConStr := 'Provider=Microsoft.Jet.OLEDB.4.0;'+
             'Data Source='+BaseDeDatos+';'+
             'Persist Security Info=False'; //'+
           //  'Jet OLEDB:Database Password=admin';
   AC1.ConnectionString := ConStr;
   AC1.Open;

end;

end.

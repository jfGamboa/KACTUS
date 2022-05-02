object DWDModule: TDWDModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 665
  Top = 306
  Height = 150
  Width = 215
  object AC1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=S:\Di' +
      'gitalWare\Facturas\bd\facturas.mdb;Mode=Share Deny None;Extended' +
      ' Properties="";Persist Security Info=False;Jet OLEDB:System data' +
      'base="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=a' +
      'dmin;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;J' +
      'et OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transac' +
      'tions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syst' +
      'em Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don' +
      #39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replic' +
      'a Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
end

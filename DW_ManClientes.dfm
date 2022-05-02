object FManClientes: TFManClientes
  Left = 464
  Top = 165
  BorderStyle = bsDialog
  Caption = 'Mantenimiento Clientes'
  ClientHeight = 248
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label11: TLabel
      Left = 104
      Top = 8
      Width = 214
      Height = 20
      Caption = 'Mantenimiento de Clientes'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 441
    Height = 145
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
      FocusControl = DBCliente
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = DBENombre
    end
    object Label4: TLabel
      Left = 24
      Top = 88
      Width = 45
      Height = 13
      Caption = 'Direccion'
      FocusControl = DBEDireccion
    end
    object DBCliente: TDBEdit
      Left = 24
      Top = 24
      Width = 105
      Height = 21
      DataField = 'CLIENTE'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBENombre: TDBEdit
      Left = 24
      Top = 64
      Width = 393
      Height = 21
      DataField = 'NOMBRE_CLIENTE'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEDireccion: TDBEdit
      Left = 24
      Top = 104
      Width = 393
      Height = 21
      DataField = 'DIRECCION'
      DataSource = DataSource
      TabOrder = 2
    end
  end
  object Button1: TButton
    Left = 368
    Top = 200
    Width = 75
    Height = 41
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 200
    Width = 320
    Height = 41
    DataSource = DataSource
    TabOrder = 3
  end
  object ADOTable: TADOTable
    Connection = DWDModule.AC1
    TableName = 'CLIENTES'
    Left = 224
    Top = 56
    object ADOTableCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ADOTableNOMBRE_CLIENTE: TWideStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
    object ADOTableDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 50
    end
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 264
    Top = 56
  end
  object ADOQuery: TADOQuery
    Connection = DWDModule.AC1
    Parameters = <>
    SQL.Strings = (
      'Select * From Clientes')
    Left = 304
    Top = 56
    object ADOQueryCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
    end
    object ADOQueryNOMBRE_CLIENTE: TWideStringField
      DisplayLabel = 'Nombre Cliente'
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
    object ADOQueryDIRECCION: TWideStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 50
    end
  end
end

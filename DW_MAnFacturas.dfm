object FManFacturas: TFManFacturas
  Left = 468
  Top = 6
  BorderStyle = bsDialog
  Caption = 'Mantenimiento Facturas'
  ClientHeight = 255
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
      Width = 193
      Height = 20
      Caption = 'Encabezado de Factura'
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
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = DBNumero
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label4: TLabel
      Left = 24
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBETotal
    end
    object Label2: TLabel
      Left = 280
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
      FocusControl = DBNumero
    end
    object DBNumero: TDBEdit
      Left = 24
      Top = 24
      Width = 105
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEFecha: TDBEdit
      Left = 280
      Top = 24
      Width = 153
      Height = 21
      DataField = 'FECHA'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBETotal: TDBEdit
      Left = 24
      Top = 104
      Width = 105
      Height = 21
      DataField = 'TOTAL'
      DataSource = DataSource
      TabOrder = 2
    end
    object edCliente: TEdit
      Left = 152
      Top = 64
      Width = 281
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object DBLcbCliente: TDBLookupComboBox
      Left = 24
      Top = 64
      Width = 105
      Height = 21
      DataField = 'CLIENTE'
      DataSource = DataSource
      KeyField = 'CLIENTE'
      ListField = 'CLIENTE'
      ListSource = dsCliente
      TabOrder = 4
      OnCloseUp = DBLcbClienteCloseUp
    end
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 200
    Width = 320
    Height = 41
    DataSource = DataSource
    TabOrder = 2
  end
  object Button2: TButton
    Left = 368
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Detalle'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object ADOTable: TADOTable
    Connection = DWDModule.AC1
    AfterScroll = ADOTableAfterScroll
    TableName = 'CABEZA_FACTURA'
    Left = 152
    Top = 144
    object ADOTableNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOTableFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ADOTableCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ADOTableTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 224
    Top = 144
  end
  object ADOQuery: TADOQuery
    Connection = DWDModule.AC1
    AfterScroll = ADOQueryAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select * From CABEZA_FACTURA')
    Left = 188
    Top = 144
    object ADOQueryNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOQueryFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ADOQueryCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ADOQueryTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object ADOQCliente: TADOQuery
    Connection = DWDModule.AC1
    Parameters = <>
    SQL.Strings = (
      'Select CLIENTE, NOMBRE_CLIENTE'
      'FROM CLIENTES')
    Left = 260
    Top = 144
    object ADOQClienteCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ADOQClienteNOMBRE_CLIENTE: TWideStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = ADOQCliente
    Left = 296
    Top = 144
  end
end

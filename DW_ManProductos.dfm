object FManProductos: TFManProductos
  Left = 404
  Top = 255
  BorderStyle = bsDialog
  Caption = 'Mantenimiento Productos'
  ClientHeight = 246
  ClientWidth = 446
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
      Width = 230
      Height = 20
      Caption = 'Mantenimiento de Productos'
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
      Width = 43
      Height = 13
      Caption = 'Producto'
      FocusControl = DBProducto
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
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEValor
    end
    object DBProducto: TDBEdit
      Left = 24
      Top = 24
      Width = 105
      Height = 21
      DataField = 'PRODUCTO'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBENombre: TDBEdit
      Left = 24
      Top = 64
      Width = 393
      Height = 21
      DataField = 'NOMBRE_PRODUCTO'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEValor: TDBEdit
      Left = 24
      Top = 104
      Width = 105
      Height = 21
      DataField = 'VALOR'
      DataSource = DataSource
      TabOrder = 2
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
  object Button1: TButton
    Left = 368
    Top = 200
    Width = 75
    Height = 41
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ADOTable: TADOTable
    Connection = DWDModule.AC1
    TableName = 'PRODUCTOS'
    Left = 224
    Top = 56
    object ADOTablePRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object ADOTableNOMBRE_PRODUCTO: TWideStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 50
    end
    object ADOTableVALOR: TIntegerField
      FieldName = 'VALOR'
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
      'Select * From Productos')
    Left = 304
    Top = 56
    object ADOQueryPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object ADOQueryNOMBRE_PRODUCTO: TWideStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 50
    end
    object ADOQueryVALOR: TIntegerField
      FieldName = 'VALOR'
    end
  end
end

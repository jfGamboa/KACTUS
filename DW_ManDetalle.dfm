object FManDetalle: TFManDetalle
  Left = 549
  Top = 7
  Width = 457
  Height = 285
  Caption = 'Detalle Factura'
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
  object Panel3: TPanel
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
    object Label5: TLabel
      Left = 104
      Top = 8
      Width = 150
      Height = 20
      Caption = 'Detalle de Factura'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 48
    Width = 441
    Height = 145
    TabOrder = 1
    object Label6: TLabel
      Left = 24
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Factura'
      FocusControl = DBEFactDeta
    end
    object Label7: TLabel
      Left = 24
      Top = 48
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object Label8: TLabel
      Left = 328
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEValue
    end
    object Label9: TLabel
      Left = 24
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Cantidad'
      FocusControl = DBEFactDeta
    end
    object DBEFactDeta: TDBEdit
      Left = 24
      Top = 24
      Width = 105
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsDetalle
      Enabled = False
      TabOrder = 0
    end
    object DBECantidad: TDBEdit
      Left = 24
      Top = 104
      Width = 153
      Height = 21
      DataField = 'CANTIDAD'
      DataSource = dsDetalle
      TabOrder = 1
    end
    object DBEValue: TDBEdit
      Left = 328
      Top = 104
      Width = 105
      Height = 21
      DataField = 'VALOR'
      DataSource = dsDetalle
      Enabled = False
      TabOrder = 2
    end
    object EdProductoNombre: TEdit
      Left = 152
      Top = 64
      Width = 281
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object DBLCBProducts: TDBLookupComboBox
      Left = 24
      Top = 64
      Width = 105
      Height = 21
      DataField = 'PRODUCTO'
      DataSource = dsDetalle
      KeyField = 'PRODUCTO'
      ListField = 'PRODUCTO'
      ListSource = dsProducts
      TabOrder = 4
      OnCloseUp = DBLCBProductsCloseUp
    end
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 200
    Width = 320
    Height = 41
    DataSource = dsDetalle
    TabOrder = 2
  end
  object Button3: TButton
    Left = 368
    Top = 200
    Width = 75
    Height = 41
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ADODetalle: TADOTable
    Connection = DWDModule.AC1
    AfterScroll = ADODetalleAfterScroll
    TableName = 'DETALLE_FACTURA'
    Left = 192
    Top = 56
    object ADODetalleNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADODetallePRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object ADODetalleCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object ADODetalleVALOR: TIntegerField
      FieldName = 'VALOR'
    end
  end
  object ADOQDetalle: TADOQuery
    Connection = DWDModule.AC1
    AfterInsert = ADOQDetalleAfterInsert
    AfterScroll = ADOQDetalleAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select * FROM DETALLE_FACTURA')
    Left = 228
    Top = 56
    object ADOQDetalleNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object ADOQDetallePRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object ADOQDetalleCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      OnChange = ADOQDetalleCANTIDADChange
      EditFormat = '1'
    end
    object ADOQDetalleVALOR: TIntegerField
      FieldName = 'VALOR'
    end
  end
  object dsDetalle: TDataSource
    DataSet = ADOQDetalle
    Left = 264
    Top = 56
  end
  object ADOQProducts: TADOQuery
    Connection = DWDModule.AC1
    Parameters = <>
    SQL.Strings = (
      'Select PRODUCTO, NOMBRE_PRODUCTO, VALOR FROM PRODUCTOS')
    Left = 308
    Top = 56
    object ADOQProductsPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object ADOQProductsNOMBRE_PRODUCTO: TWideStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 50
    end
    object ADOQProductsVALOR: TIntegerField
      FieldName = 'VALOR'
    end
  end
  object dsProducts: TDataSource
    DataSet = ADOQProducts
    Left = 344
    Top = 56
  end
end

object FrmReajuste: TFrmReajuste
  Left = 192
  Top = 122
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reajuste'
  ClientHeight = 302
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 475
    Height = 221
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 8
      Width = 91
      Height = 13
      Caption = 'C'#243'digo do Produto:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 28
      Top = 48
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 28
      Top = 88
      Width = 34
      Height = 13
      Caption = 'Se'#231#227'o:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 28
      Top = 128
      Width = 56
      Height = 13
      Caption = 'Sub-Se'#231#227'o:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 340
      Top = 104
      Width = 84
      Height = 13
      Caption = 'C'#243'digo do Barras:'
      Transparent = True
      Visible = False
    end
    object Label6: TLabel
      Left = 26
      Top = 168
      Width = 108
      Height = 13
      Caption = 'Percentual a Reajustar'
      Transparent = True
    end
    object Label23: TLabel
      Left = 151
      Top = 187
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtCDPROD: TEdit
      Left = 28
      Top = 24
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 0
      OnExit = edtCDPRODExit
      OnKeyPress = edtCDPRODKeyPress
    end
    object cmbSecao: TComboBox
      Left = 28
      Top = 104
      Width = 300
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
      OnEnter = cmbSecaoEnter
      OnExit = cmbSecaoExit
    end
    object edtBARRAS: TEdit
      Left = 340
      Top = 120
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 4
      Visible = False
      OnKeyPress = edtBARRASKeyPress
    end
    object edtPERC: TCurrencyEdit
      Left = 26
      Top = 184
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      MaxLength = 6
      MaxValue = 100.000000000000000000
      TabOrder = 5
    end
    object cmbSubSecao: TComboBox
      Left = 28
      Top = 144
      Width = 300
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 3
    end
    object cmbFabricante: TComboBox
      Left = 28
      Top = 64
      Width = 300
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
    end
  end
  object pnlProgressao: TPanel
    Left = 0
    Top = 221
    Width = 475
    Height = 40
    Align = alBottom
    TabOrder = 1
    Visible = False
    object lbl_QTREGI: TLabel
      Left = 8
      Top = 13
      Width = 21
      Height = 13
      Caption = '0/0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblPercentual: TLabel
      Left = 428
      Top = 13
      Width = 17
      Height = 13
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object BmsXPProgressBar1: TBmsXPProgressBar
      Left = 32
      Top = 12
      Width = 392
      Height = 16
      BackColors.StartColor = 14671839
      BackColors.EndColor = clWhite
      BarColors.StartColor = 11530400
      BarColors.EndColor = 5290064
      TabOrder = 0
      Visible = False
    end
  end
  object pnlInferior: TPanel
    Left = 0
    Top = 261
    Width = 475
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object btConfirma: TBitBtn
      Left = 292
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = btConfirmaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtSair: TBitBtn
      Left = 375
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtSairClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000006400004242
        42008C6363009A666600B9666600BB686800B0717200C3686900C66A6B00C76A
        6D00CF6C6E00D2686900D16D6E00CC6E7100C0797A00D2707200D4707100D572
        7300D0727500D3747600D9757600D8767700E37D7E000080000000960000DC7F
        8000FF00FF00D7868700DA888800D8888A00DA888A00DF898A00E6808100E085
        8500E9818200EE868700E3888900E78C8D00F0878800F18B8C00F28B8C00F18D
        8E00F48C8D00F48E8F00EB8F9000EC969700E49A9800F3919200F7909100F791
        9200F2939400F9909200F9949500FA949500F9969700F0999A00FC999A00FF9D
        9E00F7B58400F5A7A500FACCAA00FBD6BB00FADCDC00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1A1A1A
        1A02011A1A1A1A1A1A1A1A1A1A1A02030405011A1A1A1A1A1A1A1A1A0203080B
        0B07010303030303031A1A1A030C0C0C0A09010E1F323B3B031A1A1A030C0C10
        0F0D01181818183B031A1A1A03111114151201181818183B031A1A1A03161616
        201301181717173B031A1A1A0326222D3E1D01171700003B031A1A1A03262337
        3F1E013C3A3A3A3B031A1A1A03272B282A19013C3D3D3D3B031A1A1A03273031
        2921013C3D3D3D3B031A1A1A032734352F24013C3D3D3D3B031A1A1A03273338
        3625013C3D3D3D3B031A1A1A03032E33392C013C3D3D3D3B031A1A1A1A1A0306
        1B1C010303030303031A1A1A1A1A1A1A0303011A1A1A1A1A1A1A}
    end
  end
  object ZQryProdutos: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select "PRO_CODIGO", "PRO_BARRAS", "PRO_VLCOMPRA", "PRO_VLVENDA"' +
        ', "PRO_LUCROBRUTO", "PRO_LUCROLIQUIDO", "PRO_DTALTERACAO", "PRO_' +
        'HOREAJUTE",'
      
        '"PRO_USUARIO_REAJUSTE", "PRO_VALOR_ANTERIOR", "SEC_CODIGO", "SUB' +
        '_CODIGO", "FOR_CODIGO", "PRO_TAXAS", "PRO_IPI", "PRO_FRETE", "TR' +
        'I_CODIGO", "PRO_REDUCAOICMS" from "PRODUTOS"')
    Params = <>
    Left = 192
    Top = 25
    object ZQryProdutosPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object ZQryProdutosPRO_BARRAS: TStringField
      FieldName = 'PRO_BARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ZQryProdutosPRO_VLCOMPRA: TFloatField
      FieldName = 'PRO_VLCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_LUCROBRUTO: TFloatField
      FieldName = 'PRO_LUCROBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_LUCROLIQUIDO: TFloatField
      FieldName = 'PRO_LUCROLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_DTALTERACAO: TDateField
      FieldName = 'PRO_DTALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_HOREAJUTE: TStringField
      FieldName = 'PRO_HOREAJUTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryProdutosPRO_USUARIO_REAJUSTE: TIntegerField
      FieldName = 'PRO_USUARIO_REAJUSTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_VALOR_ANTERIOR: TFloatField
      FieldName = 'PRO_VALOR_ANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_TAXAS: TFloatField
      FieldName = 'PRO_TAXAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_IPI: TFloatField
      FieldName = 'PRO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_FRETE: TFloatField
      FieldName = 'PRO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryProdutosPRO_REDUCAOICMS: TFloatField
      FieldName = 'PRO_REDUCAOICMS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = ZQryProdutos
    Options = [poAllowCommandText]
    OnGetTableName = dspProdutosGetTableName
    Left = 232
    Top = 25
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 272
    Top = 25
    object cdsProdutosPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      Required = True
      Size = 13
    end
    object cdsProdutosPRO_BARRAS: TStringField
      FieldName = 'PRO_BARRAS'
      Size = 13
    end
    object cdsProdutosPRO_VLCOMPRA: TFloatField
      FieldName = 'PRO_VLCOMPRA'
    end
    object cdsProdutosPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
    end
    object cdsProdutosPRO_LUCROBRUTO: TFloatField
      FieldName = 'PRO_LUCROBRUTO'
    end
    object cdsProdutosPRO_LUCROLIQUIDO: TFloatField
      FieldName = 'PRO_LUCROLIQUIDO'
    end
    object cdsProdutosPRO_DTALTERACAO: TDateField
      FieldName = 'PRO_DTALTERACAO'
    end
    object cdsProdutosPRO_HOREAJUTE: TStringField
      FieldName = 'PRO_HOREAJUTE'
      Size = 5
    end
    object cdsProdutosPRO_USUARIO_REAJUSTE: TIntegerField
      FieldName = 'PRO_USUARIO_REAJUSTE'
    end
    object cdsProdutosPRO_VALOR_ANTERIOR: TFloatField
      FieldName = 'PRO_VALOR_ANTERIOR'
    end
    object cdsProdutosSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
    end
    object cdsProdutosSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
    end
    object cdsProdutosFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
    end
    object cdsProdutosPRO_TAXAS: TFloatField
      FieldName = 'PRO_TAXAS'
    end
    object cdsProdutosPRO_IPI: TFloatField
      FieldName = 'PRO_IPI'
    end
    object cdsProdutosPRO_FRETE: TFloatField
      FieldName = 'PRO_FRETE'
    end
    object cdsProdutosTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
    end
    object cdsProdutosPRO_REDUCAOICMS: TFloatField
      FieldName = 'PRO_REDUCAOICMS'
    end
  end
  object dsDados: TDataSource
    AutoEdit = False
    DataSet = cdsProdutos
    Left = 376
    Top = 48
  end
end

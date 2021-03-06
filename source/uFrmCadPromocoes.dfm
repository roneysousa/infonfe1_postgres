inherited frmCadPromocoes: TfrmCadPromocoes
  Left = 208
  Top = 126
  Caption = 'Cadastro de Promo'#231#245'es'
  ClientHeight = 357
  ClientWidth = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 621
    Height = 338
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        Left = 496
        Top = 205
        Visible = False
      end
      inherited Label1: TLabel
        Left = 496
        Top = 189
        Visible = False
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 24
        Width = 73
        Height = 13
        Caption = 'C'#243'digo Produto'
        FocusControl = dbeCodigo
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 64
        Width = 68
        Height = 13
        Caption = 'Per'#237'odo Inicial'
        Transparent = True
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 104
        Width = 63
        Height = 13
        Caption = 'Per'#237'odo Final'
        Transparent = True
      end
      object Label5: TLabel [5]
        Left = 16
        Top = 144
        Width = 59
        Height = 13
        Caption = 'Valor a Vista'
        FocusControl = dbeValorAvista
        Transparent = True
      end
      object Label6: TLabel [6]
        Left = 16
        Top = 184
        Width = 63
        Height = 13
        Caption = 'Valor a Prazo'
        FocusControl = dbeValorAPrazo
        Transparent = True
      end
      object sbLocProduto: TSpeedButton [7]
        Left = 149
        Top = 39
        Width = 23
        Height = 22
        Hint = 'Localiza produto'
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        OnClick = sbLocProdutoClick
      end
      object Label7: TLabel [8]
        Left = 176
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
      end
      inherited pnlBotoes: TPanel
        Top = 269
        Width = 613
        inherited BtSair: TBitBtn
          Left = 502
        end
      end
      object dbeCodigo: TDBEdit
        Left = 16
        Top = 40
        Width = 132
        Height = 21
        DataField = 'PRM_IDPRODUTO'
        DataSource = dsCadastro
        TabOrder = 1
        OnChange = dbeCodigoChange
        OnExit = dbeCodigoExit
        OnKeyPress = dbeCodigoKeyPress
      end
      object dbeDTINIC: TDBDateEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 21
        DataField = 'PRM_DATAINICIAL'
        DataSource = dsCadastro
        NumGlyphs = 2
        TabOrder = 2
        OnExit = dbeDTINICExit
      end
      object dbeDTFINA: TDBDateEdit
        Left = 16
        Top = 120
        Width = 121
        Height = 21
        DataField = 'PRM_DATA_FINAL'
        DataSource = dsCadastro
        NumGlyphs = 2
        TabOrder = 3
        OnExit = dbeDTFINAExit
      end
      object dbeValorAvista: TDBEdit
        Left = 16
        Top = 160
        Width = 121
        Height = 21
        DataField = 'PRM_VALORAVISTA'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object dbeValorAPrazo: TDBEdit
        Left = 16
        Top = 200
        Width = 121
        Height = 21
        DataField = 'PRM_VALORAPRAZO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object dbeDescricao: TDBEdit
        Left = 176
        Top = 40
        Width = 409
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'PRM_NMPROD'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 613
        inherited lblConsultar: TLabel
          Top = 10
        end
        inherited edtConsultar: TEdit
          Top = 25
          Width = 355
        end
        inherited btnConsultar: TBitBtn
          Left = 504
          Top = 20
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 579
        Height = 237
      end
      inherited grdConsultar: TDBGrid
        Width = 579
        Height = 237
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRM_IDPRODUTO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 267
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRM_VALORAVISTA'
            Title.Caption = 'Valor a Vista'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRM_VALORAPRAZO'
            Title.Caption = 'Valor a Prazo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 338
    Width = 621
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarPRM_IDPRODUTO: TStringField
      FieldName = 'PRM_IDPRODUTO'
      Required = True
      Size = 13
    end
    object cdsConsultarPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 60
    end
    object cdsConsultarPRM_VALORAVISTA: TFloatField
      FieldName = 'PRM_VALORAVISTA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsConsultarPRM_VALORAPRAZO: TFloatField
      FieldName = 'PRM_VALORAPRAZO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsPromocoes
    OnDataChange = dsCadastroDataChange
    Left = 252
    Top = 104
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select PM."PRM_IDPRODUTO", P."PRO_DESCRICAO", PM."PRM_VALORAVIST' +
        'A", pm."PRM_VALORAPRAZO" from "PROMOCAO" PM'
      
        'INNER JOIN "PRODUTOS" P ON P."PRO_CODIGO" = PM."PRM_IDPRODUTO" o' +
        'rder by P."PRO_DESCRICAO"')
  end
end

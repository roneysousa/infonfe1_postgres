object FrmCadEntradaMercadorias: TFrmCadEntradaMercadorias
  Left = 168
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada de Mercadoria'
  ClientHeight = 527
  ClientWidth = 801
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 486
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 799
      Height = 484
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = '&Dados'
        object pnlSuperior: TPanel
          Left = 0
          Top = 0
          Width = 791
          Height = 137
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 8
            Width = 20
            Height = 13
            Caption = 'Loja'
            Transparent = True
          end
          object Label2: TLabel
            Left = 555
            Top = 88
            Width = 33
            Height = 13
            Caption = 'Pedido'
            Transparent = True
            Visible = False
          end
          object Label3: TLabel
            Left = 11
            Top = 48
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            Transparent = True
          end
          object Label4: TLabel
            Left = 11
            Top = 88
            Width = 59
            Height = 13
            Caption = 'Data Pedido'
            Transparent = True
          end
          object Label5: TLabel
            Left = 120
            Top = 88
            Width = 65
            Height = 13
            Caption = 'Data Emiss'#227'o'
            Transparent = True
          end
          object Label6: TLabel
            Left = 227
            Top = 88
            Width = 89
            Height = 13
            Caption = 'Data Recebimento'
            Transparent = True
          end
          object Label7: TLabel
            Left = 332
            Top = 88
            Width = 41
            Height = 13
            Caption = 'N'#186'. Nota'
            Transparent = True
          end
          object Label8: TLabel
            Left = 441
            Top = 88
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
            Transparent = True
          end
          object spFornecedor: TSpeedButton
            Left = 113
            Top = 64
            Width = 23
            Height = 22
            Hint = 'Localizar Fornecedor'
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
            OnClick = spFornecedorClick
          end
          object dbeNRPEDI: TEdit
            Left = 555
            Top = 104
            Width = 100
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
            Visible = False
          end
          object edtCDFORN: TEdit
            Left = 12
            Top = 64
            Width = 100
            Height = 21
            MaxLength = 5
            TabOrder = 2
            OnExit = edtCDFORNExit
            OnKeyPress = edtCDFORNKeyPress
          end
          object dbeNRNOTA: TMaskEdit
            Left = 333
            Top = 104
            Width = 100
            Height = 21
            TabOrder = 6
            OnExit = dbeNRNOTAExit
          end
          object dbeSERIE: TMaskEdit
            Left = 441
            Top = 104
            Width = 43
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 2
            TabOrder = 7
            OnExit = dbeSERIEExit
          end
          object cmbLoja: TComboBox
            Left = 12
            Top = 24
            Width = 301
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 1
          end
          object GroupBox1: TGroupBox
            Left = 629
            Top = 8
            Width = 151
            Height = 57
            Caption = 'N'#186'. Pedido'
            TabOrder = 8
            object lbl_NRPEDIDO: TLabel
              Left = 22
              Top = 21
              Width = 110
              Height = 22
              Caption = '0000000000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object dbeDTPEDI: TDateEdit
            Left = 11
            Top = 104
            Width = 100
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
            OnExit = dbeDTPEDIExit
          end
          object dbeDTEMISS: TDateEdit
            Left = 120
            Top = 104
            Width = 100
            Height = 21
            NumGlyphs = 2
            TabOrder = 4
            OnExit = dbeDTEMISSExit
          end
          object dbeDTRECE: TDateEdit
            Left = 227
            Top = 104
            Width = 100
            Height = 21
            NumGlyphs = 2
            TabOrder = 5
            OnExit = dbeDTRECEExit
          end
          object lbl_NMFORN: TEdit
            Left = 144
            Top = 64
            Width = 291
            Height = 21
            TabStop = False
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 137
          Width = 791
          Height = 198
          Align = alClient
          TabOrder = 1
          object grdConsultar: TDBGrid
            Left = 1
            Top = 1
            Width = 789
            Height = 196
            Align = alClient
            Ctl3D = False
            DataSource = dsItensNota
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CDS_CDPROD'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_DESCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 250
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CDS_UNDCOM'
                Title.Alignment = taCenter
                Title.Caption = 'Unid.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CDS_QTDECOM'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLUNITARIO'
                Title.Caption = 'Vl. Unit'#225'rio'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_ALIQIPI'
                Title.Alignment = taCenter
                Title.Caption = 'IPI'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_ALIQICMS'
                Title.Alignment = taCenter
                Title.Caption = 'ICMS'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_SUB_TOT_ENT'
                Title.Alignment = taRightJustify
                Title.Caption = 'Sub-Total'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end>
          end
        end
        object pnlDados: TPanel
          Left = 0
          Top = 335
          Width = 791
          Height = 75
          Align = alBottom
          TabOrder = 2
          object Label10: TLabel
            Left = 6
            Top = 6
            Width = 78
            Height = 13
            Caption = '&C'#243'digo/Nome'
            FocusControl = edtCDPROD
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object spProdutos: TSpeedButton
            Left = 127
            Top = 20
            Width = 23
            Height = 22
            Hint = 'Localizar Produto'
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
            OnClick = spProdutosClick
          end
          object Label11: TLabel
            Left = 327
            Top = 6
            Width = 48
            Height = 13
            Caption = '&Unidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 411
            Top = 6
            Width = 39
            Height = 13
            Caption = '&Quant.'
            FocusControl = edtQUANT
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 522
            Top = 6
            Width = 30
            Height = 13
            Caption = '&Valor'
            FocusControl = edtValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 594
            Top = 6
            Width = 17
            Height = 13
            Caption = '&IPI'
            FocusControl = edtIPI
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 643
            Top = 6
            Width = 31
            Height = 13
            Caption = 'I&CMS'
            FocusControl = edtICMS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 721
            Top = 6
            Width = 56
            Height = 13
            Caption = '&Sub-Total'
            FocusControl = edtSubTotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object edtCDPROD: TEdit
            Left = 5
            Top = 21
            Width = 121
            Height = 21
            MaxLength = 13
            TabOrder = 0
            OnChange = edtCDPRODChange
            OnExit = edtCDPRODExit
            OnKeyPress = edtCDPRODKeyPress
          end
          object lbl_NMPROD: TEdit
            Left = 5
            Top = 46
            Width = 382
            Height = 21
            TabStop = False
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object cmbUNIDADE: TComboBox
            Left = 328
            Top = 21
            Width = 60
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 2
            OnKeyPress = cmbUNIDADEKeyPress
          end
          object edtQUANT: TCurrencyEdit
            Left = 391
            Top = 21
            Width = 60
            Height = 21
            AutoSize = False
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            MaxLength = 9
            TabOrder = 3
            OnExit = edtQUANTExit
            OnKeyPress = edtQUANTKeyPress
          end
          object edtValor: TCurrencyEdit
            Left = 455
            Top = 21
            Width = 99
            Height = 21
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = '0.0000;'
            MaxLength = 10
            TabOrder = 4
            OnExit = edtValorExit
            OnKeyPress = edtValorKeyPress
          end
          object edtIPI: TCurrencyEdit
            Left = 558
            Top = 21
            Width = 55
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            MaxLength = 5
            TabOrder = 5
            OnKeyPress = edtIPIKeyPress
          end
          object edtICMS: TCurrencyEdit
            Left = 617
            Top = 21
            Width = 55
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            MaxLength = 5
            TabOrder = 6
            OnKeyPress = edtICMSKeyPress
          end
          object edtSubTotal: TCurrencyEdit
            Left = 675
            Top = 21
            Width = 103
            Height = 21
            AutoSize = False
            Color = clSilver
            DecimalPlaces = 4
            DisplayFormat = '0.0000;'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnExit = edtSubTotalExit
            OnKeyPress = edtSubTotalKeyPress
          end
        end
        object pnlTotal: TPanel
          Left = 0
          Top = 410
          Width = 791
          Height = 46
          Align = alBottom
          TabOrder = 3
          object pnlTotPedido: TPanel
            Left = 552
            Top = 1
            Width = 238
            Height = 44
            Align = alRight
            Alignment = taRightJustify
            Caption = '0,00'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -35
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'I&mpostos'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 791
          Height = 456
          Align = alClient
          TabOrder = 0
          object Label20: TLabel
            Left = 29
            Top = 17
            Width = 75
            Height = 13
            Caption = 'Transportadora:'
            Transparent = True
          end
          object spTransportadora: TSpeedButton
            Left = 148
            Top = 33
            Width = 23
            Height = 22
            Hint = 'Localizar Transportadora'
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
            OnClick = spTransportadoraClick
          end
          object Label9: TLabel
            Left = 29
            Top = 56
            Width = 114
            Height = 13
            Caption = 'Valores da Mercadorias:'
            Transparent = True
          end
          object Label17: TLabel
            Left = 29
            Top = 94
            Width = 77
            Height = 13
            Caption = 'B. Calculo ICMS'
            Transparent = True
          end
          object Label18: TLabel
            Left = 312
            Top = 94
            Width = 68
            Height = 13
            Caption = 'Valor do ICMS'
            Transparent = True
          end
          object Label19: TLabel
            Left = 29
            Top = 131
            Width = 71
            Height = 13
            Caption = 'B. Substitui'#231#227'o'
            Transparent = True
          end
          object Label21: TLabel
            Left = 312
            Top = 131
            Width = 100
            Height = 13
            Caption = 'Valor de Substitui'#231#227'o'
            Transparent = True
          end
          object Label23: TLabel
            Left = 312
            Top = 167
            Width = 66
            Height = 13
            Caption = 'Valor do Frete'
            Transparent = True
          end
          object Label24: TLabel
            Left = 29
            Top = 205
            Width = 55
            Height = 13
            Caption = 'Valor do IPI'
            Transparent = True
          end
          object Label25: TLabel
            Left = 312
            Top = 205
            Width = 76
            Height = 13
            Caption = 'Valor do Seguro'
            Transparent = True
          end
          object Label26: TLabel
            Left = 29
            Top = 242
            Width = 81
            Height = 13
            Caption = 'Outras Despesas'
            Transparent = True
          end
          object Label27: TLabel
            Left = 312
            Top = 242
            Width = 93
            Height = 13
            Caption = 'Desconto/Repasse'
            Transparent = True
          end
          object Label28: TLabel
            Left = 29
            Top = 280
            Width = 65
            Height = 13
            Caption = 'Valor da Nota'
            Transparent = True
          end
          object edtCDTRANSP: TEdit
            Left = 29
            Top = 33
            Width = 120
            Height = 21
            MaxLength = 5
            TabOrder = 0
            OnChange = edtCDTRANSPChange
            OnExit = edtCDTRANSPExit
            OnKeyPress = edtCDTRANSPKeyPress
          end
          object lbl_Transportadora: TEdit
            Left = 176
            Top = 33
            Width = 338
            Height = 21
            TabStop = False
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtVLMERC: TCurrencyEdit
            Left = 29
            Top = 71
            Width = 200
            Height = 21
            TabStop = False
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = '0.0000;'
            ReadOnly = True
            TabOrder = 2
            OnExit = edtVLMERCExit
          end
          object edtBASEICMS: TCurrencyEdit
            Left = 29
            Top = 108
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 3
          end
          object edtVLICMS: TCurrencyEdit
            Left = 312
            Top = 108
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 4
          end
          object edtBASESUBS: TCurrencyEdit
            Left = 29
            Top = 144
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 5
          end
          object edtVLSUBST: TCurrencyEdit
            Left = 312
            Top = 144
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 6
          end
          object rbgTipoFrete: TRadioGroup
            Left = 29
            Top = 167
            Width = 201
            Height = 35
            Caption = '[ Tipo de Frete ]'
            Columns = 2
            Items.Strings = (
              'CIF'
              'FOB')
            TabOrder = 7
          end
          object edtVLFRETE: TCurrencyEdit
            Left = 312
            Top = 181
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 8
            OnExit = edtVLFRETEExit
          end
          object edtVLIPI: TCurrencyEdit
            Left = 29
            Top = 219
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 9
          end
          object edtVLSEGURO: TCurrencyEdit
            Left = 312
            Top = 219
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 10
            OnExit = edtVLSEGUROExit
          end
          object edtDespesas: TCurrencyEdit
            Left = 29
            Top = 257
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 11
            OnExit = edtDespesasExit
          end
          object edtDesconto: TCurrencyEdit
            Left = 312
            Top = 257
            Width = 200
            Height = 21
            AutoSize = False
            DisplayFormat = '0.00;-0.00'
            TabOrder = 12
            OnExit = edtDescontoExit
          end
          object edtVLNOTA: TCurrencyEdit
            Left = 29
            Top = 295
            Width = 200
            Height = 21
            TabStop = False
            AutoSize = False
            DecimalPlaces = 4
            DisplayFormat = '0.0000;'
            ReadOnly = True
            TabOrder = 13
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 486
    Width = 801
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BtAdicionar: TBitBtn
      Left = 10
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Incluir novo registro'
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BtAdicionarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000031319C003131
        A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
        E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
        FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
        FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
        0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
        0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
        0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
        1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
        0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
        111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtGravar: TBitBtn
      Left = 537
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar dados'
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = BtGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
        1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
        1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
        1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
        13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtCancelar: TBitBtn
      Left = 618
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = BtCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object BtSair: TBitBtn
      Left = 712
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = BtSairClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object dsItensNota: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsItemsNotaFiscal
    Left = 468
    Top = 40
  end
end

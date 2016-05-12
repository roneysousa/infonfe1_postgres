object FrmNotaFiscalEletronicaNew: TFrmNotaFiscalEletronicaNew
  Left = 133
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Nota Fiscal Eletr'#244'nica'
  ClientHeight = 580
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 814
    Height = 539
    ActivePage = tbsDados
    Align = alClient
    TabOrder = 0
    object tbsDados: TTabSheet
      Caption = '&Dados'
      object pnlTopo: TPanel
        Left = 0
        Top = 0
        Width = 806
        Height = 183
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 6
          Width = 27
          Height = 13
          Caption = 'Loja *'
          FocusControl = cmbEmpresa
          Transparent = True
        end
        object Label2: TLabel
          Left = 81
          Top = 46
          Width = 59
          Height = 13
          Caption = 'CNPJ/CPF *'
          FocusControl = dbeCNPJCPF
          Transparent = True
        end
        object Label3: TLabel
          Left = 280
          Top = 46
          Width = 96
          Height = 13
          Caption = 'Raz'#227'o Social/Nome'
          FocusControl = dbeRazaoDestinatario
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 86
          Width = 35
          Height = 13
          Caption = 'Modelo'
          FocusControl = dbeModelo
          Transparent = True
        end
        object Label5: TLabel
          Left = 68
          Top = 86
          Width = 44
          Height = 13
          Caption = 'N'#250'mero *'
          FocusControl = dbeNumero
          Transparent = True
        end
        object Label6: TLabel
          Left = 206
          Top = 86
          Width = 31
          Height = 13
          Caption = 'S'#233'rie *'
          FocusControl = dbeSerie
          Transparent = True
        end
        object Label7: TLabel
          Left = 280
          Top = 86
          Width = 72
          Height = 13
          Caption = 'Data Emiss'#227'o *'
          FocusControl = dbeDTEMIS
        end
        object Label8: TLabel
          Left = 404
          Top = 86
          Width = 51
          Height = 13
          Caption = 'N'#186'. Cupom'
          FocusControl = dbeCupom
        end
        object Label9: TLabel
          Left = 490
          Top = 86
          Width = 115
          Height = 13
          Caption = 'Natureza da Opera'#231#227'o *'
          FocusControl = cmbNatureza
        end
        object Label10: TLabel
          Left = 16
          Top = 128
          Width = 108
          Height = 13
          Caption = 'Forma de Pagamento *'
          FocusControl = cmbFormaPaga
        end
        object Label11: TLabel
          Left = 280
          Top = 128
          Width = 93
          Height = 13
          Caption = 'Forma de Emiss'#227'o *'
          FocusControl = cmbEmissao
        end
        object Label12: TLabel
          Left = 438
          Top = 128
          Width = 112
          Height = 13
          Caption = 'Finalidade de Emiss'#227'o *'
          FocusControl = cmbFinalidadeEmissao
        end
        object spLocCliente: TSpeedButton
          Left = 254
          Top = 61
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar destinat'#225'rio'
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
          OnClick = spLocClienteClick
        end
        object Label51: TLabel
          Left = 16
          Top = 46
          Width = 28
          Height = 13
          Caption = 'Tipo *'
          FocusControl = dbeCNPJCPF
          Transparent = True
        end
        object cmbEmpresa: TDBLookupComboBox
          Left = 16
          Top = 22
          Width = 259
          Height = 21
          DataField = 'NFE_NMEMITENTE'
          DataSource = dsCadastro
          TabOrder = 0
          OnExit = cmbEmpresaExit
        end
        object dbeCNPJCPF: TDBEdit
          Left = 80
          Top = 62
          Width = 173
          Height = 21
          DataField = 'NTF_CNPJCPF'
          DataSource = dsCadastro
          TabOrder = 3
          OnExit = dbeCNPJCPFExit
          OnKeyPress = dbeCNPJCPFKeyPress
        end
        object dbeRazaoDestinatario: TDBEdit
          Left = 280
          Top = 62
          Width = 430
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'NTF_RAZAOSOCIAL'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object dbeModelo: TDBEdit
          Left = 16
          Top = 102
          Width = 49
          Height = 21
          TabStop = False
          Color = clSilver
          DataField = 'NTF_MODELO'
          DataSource = dsCadastro
          ReadOnly = True
          TabOrder = 5
        end
        object dbeNumero: TDBEdit
          Left = 68
          Top = 102
          Width = 134
          Height = 21
          DataField = 'NTF_NUMERONOTA'
          DataSource = dsCadastro
          TabOrder = 6
        end
        object dbeSerie: TDBEdit
          Left = 206
          Top = 102
          Width = 69
          Height = 21
          DataField = 'NTF_SERIE'
          DataSource = dsCadastro
          TabOrder = 7
          OnKeyPress = dbeSerieKeyPress
        end
        object dbeDTEMIS: TDBDateEdit
          Left = 280
          Top = 102
          Width = 121
          Height = 21
          DataField = 'NTF_DTEMISSAO'
          DataSource = dsCadastro
          NumGlyphs = 2
          TabOrder = 8
          OnExit = dbeDTEMISExit
        end
        object dbeCupom: TDBEdit
          Left = 404
          Top = 102
          Width = 82
          Height = 21
          DataField = 'NTF_NUMCUPOM'
          DataSource = dsCadastro
          TabOrder = 9
          OnExit = dbeCupomExit
          OnKeyPress = dbeCupomKeyPress
        end
        object cmbNatureza: TDBLookupComboBox
          Left = 490
          Top = 102
          Width = 211
          Height = 21
          DataField = 'NTF_NMNATUREZAOP'
          DataSource = dsCadastro
          TabOrder = 10
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 280
          Top = 8
          Width = 204
          Height = 36
          Caption = '[ Tipo * ]'
          Columns = 2
          DataField = 'NTF_TIPODOCUMENTO'
          DataSource = dsCadastro
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          TabOrder = 1
          Values.Strings = (
            '0'
            '1')
        end
        object cmbFormaPaga: TDBLookupComboBox
          Left = 16
          Top = 144
          Width = 260
          Height = 21
          DataField = 'NTF_FMPAGA'
          DataSource = dsCadastro
          TabOrder = 11
        end
        object cmbEmissao: TDBLookupComboBox
          Left = 280
          Top = 144
          Width = 153
          Height = 21
          DataField = 'NTF_FMEMISSAO'
          DataSource = dsCadastro
          TabOrder = 12
        end
        object cmbFinalidadeEmissao: TDBLookupComboBox
          Left = 438
          Top = 144
          Width = 273
          Height = 21
          DataField = 'NTF_FNEMISSAO'
          DataSource = dsCadastro
          TabOrder = 13
        end
        object cmbTipoPessoa: TComboBox
          Left = 16
          Top = 62
          Width = 61
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 2
          Text = 'CPF'
          OnExit = cmbTipoPessoaExit
          Items.Strings = (
            'CPF'
            'CNPJ')
        end
      end
      object pnlDados: TPanel
        Left = 0
        Top = 183
        Width = 806
        Height = 194
        Align = alClient
        TabOrder = 1
        object grdConsultar: TDBGrid
          Left = 1
          Top = 1
          Width = 804
          Height = 192
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
              FieldName = 'CDS_VLDESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Desc.(R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_VLACRESCIMO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Acr'#233's.(R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDS_SUBTOTAL'
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
      object pnlDetalheDados: TPanel
        Left = 0
        Top = 377
        Width = 806
        Height = 93
        Align = alBottom
        TabOrder = 2
        object Label13: TLabel
          Left = 8
          Top = 5
          Width = 86
          Height = 13
          Caption = 'C'#243'digo/Descri'#231#227'o'
          FocusControl = edtCDPROD
          Transparent = True
        end
        object spLocProduto: TSpeedButton
          Left = 138
          Top = 21
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar produto/servi'#231'o'
          Enabled = False
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
          OnClick = spLocProdutoClick
        end
        object spCFOP: TSpeedButton
          Left = 85
          Top = 61
          Width = 23
          Height = 22
          Hint = 'Clique aqui para localizar CFOP do produto/servi'#231'o'
          Enabled = False
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
          OnClick = spCFOPClick
        end
        object Label15: TLabel
          Left = 7
          Top = 45
          Width = 28
          Height = 13
          Caption = 'CFOP'
        end
        object Label14: TLabel
          Left = 114
          Top = 45
          Width = 55
          Height = 13
          Caption = 'Quantidade'
        end
        object Label16: TLabel
          Left = 210
          Top = 45
          Width = 86
          Height = 13
          Caption = 'Valor Unit'#225'rio (R$)'
        end
        object Label17: TLabel
          Left = 306
          Top = 45
          Width = 63
          Height = 13
          Caption = 'Desconto (%)'
        end
        object Label18: TLabel
          Left = 402
          Top = 45
          Width = 66
          Height = 13
          Caption = 'Acr'#233'scimo (%)'
        end
        object Label19: TLabel
          Left = 497
          Top = 45
          Width = 43
          Height = 13
          Caption = 'ICMS (%)'
        end
        object Label20: TLabel
          Left = 592
          Top = 45
          Width = 30
          Height = 13
          Caption = 'IPI (%)'
        end
        object Label21: TLabel
          Left = 741
          Top = 45
          Width = 46
          Height = 13
          Caption = 'Sub-Total'
        end
        object edtCDPROD: TEdit
          Left = 8
          Top = 21
          Width = 129
          Height = 21
          MaxLength = 14
          TabOrder = 0
          OnChange = edtCDPRODChange
          OnExit = edtCDPRODExit
          OnKeyPress = edtCDPRODKeyPress
        end
        object edtDescricao: TEdit
          Left = 162
          Top = 21
          Width = 626
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
          TabOrder = 3
        end
        object edtCFOP: TEdit
          Left = 8
          Top = 61
          Width = 75
          Height = 21
          MaxLength = 4
          TabOrder = 1
          OnExit = edtCFOPExit
          OnKeyPress = edtCFOPKeyPress
        end
        object edtQTDE: TCurrencyEdit
          Left = 115
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',0.000;'
          MaxLength = 15
          TabOrder = 2
          OnExit = edtQTDEExit
          OnKeyPress = edtQTDEKeyPress
        end
        object edtValorUnitario: TCurrencyEdit
          Left = 211
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 15
          TabOrder = 4
          OnExit = edtValorUnitarioExit
          OnKeyPress = edtValorUnitarioKeyPress
        end
        object edtDesconto: TCurrencyEdit
          Left = 306
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          TabOrder = 5
          OnExit = edtDescontoExit
          OnKeyPress = edtDescontoKeyPress
        end
        object edtAcrescimo: TCurrencyEdit
          Left = 402
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          TabOrder = 6
          OnExit = edtAcrescimoExit
          OnKeyPress = edtAcrescimoKeyPress
        end
        object edtICMS: TCurrencyEdit
          Left = 497
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          MaxValue = 50.000000000000000000
          TabOrder = 7
          OnExit = edtICMSExit
          OnKeyPress = edtICMSKeyPress
        end
        object edtIPI: TCurrencyEdit
          Left = 592
          Top = 61
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;'
          MaxLength = 5
          MaxValue = 50.000000000000000000
          TabOrder = 8
          OnExit = edtIPIExit
          OnKeyPress = edtIPIKeyPress
        end
        object edtSubTotal: TCurrencyEdit
          Left = 685
          Top = 61
          Width = 101
          Height = 21
          TabStop = False
          AutoSize = False
          Color = clSilver
          DisplayFormat = ',0.00;'
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
      object pnlBotoes: TPanel
        Left = 0
        Top = 470
        Width = 806
        Height = 41
        Align = alBottom
        Enabled = False
        TabOrder = 3
        object btnNovoItem: TBitBtn
          Left = 8
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Adiciona novo item '
          Caption = '&Novo Item'
          TabOrder = 0
          OnClick = btnNovoItemClick
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
        object btnExcluiItem: TBitBtn
          Left = 114
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Excluir item selecionado'
          Caption = '&Excluir Item'
          TabOrder = 1
          OnClick = btnExcluiItemClick
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
            0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
            0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
            0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnSalvarItem: TBitBtn
          Left = 325
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Salva item'
          Caption = '&Salvar Item'
          Enabled = False
          TabOrder = 2
          OnClick = btnSalvarItemClick
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
        object btnCancelarItem: TBitBtn
          Left = 429
          Top = 8
          Width = 97
          Height = 25
          Hint = 'Cancela item'
          Caption = 'Ca&ncelar Item'
          Enabled = False
          TabOrder = 3
          OnClick = btnCancelarItemClick
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
        object pnlTotalItens: TPanel
          Left = 571
          Top = 1
          Width = 234
          Height = 39
          Align = alRight
          Alignment = taRightJustify
          Caption = '0,00'
          Color = clRed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Emitente'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 16
        Top = 16
        Width = 761
        Height = 234
        Caption = '[ Identifica'#231#227'o ]'
        TabOrder = 0
        object Label67: TLabel
          Left = 13
          Top = 16
          Width = 34
          Height = 13
          Caption = 'CNPJ *'
          FocusControl = dbeCNPJEmitente
        end
        object Label68: TLabel
          Left = 13
          Top = 56
          Width = 70
          Height = 13
          Caption = 'Raz'#227'o Social *'
          FocusControl = dbeRazaoEmitente
          Transparent = True
        end
        object Label69: TLabel
          Left = 13
          Top = 96
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit35
          Transparent = True
        end
        object Label70: TLabel
          Left = 13
          Top = 136
          Width = 94
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual *'
          FocusControl = dbeEmiInsEstadual
          Transparent = True
        end
        object Label71: TLabel
          Left = 208
          Top = 136
          Width = 139
          Height = 13
          Caption = 'Insc. Est. do Subst. Tribut'#225'rio'
          FocusControl = DBEdit37
          Transparent = True
        end
        object Label72: TLabel
          Left = 13
          Top = 176
          Width = 91
          Height = 13
          Caption = 'Inscri'#231#227'o Municipal'
          FocusControl = DBEdit38
          Transparent = True
        end
        object Label73: TLabel
          Left = 208
          Top = 176
          Width = 29
          Height = 13
          Caption = 'CNAE'
          FocusControl = DBEdit39
          Transparent = True
        end
        object dbeCNPJEmitente: TDBEdit
          Left = 13
          Top = 32
          Width = 186
          Height = 21
          TabStop = False
          Color = clSilver
          DataField = 'NTF_EMITENTE_CNPJ'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbeRazaoEmitente: TDBEdit
          Left = 13
          Top = 72
          Width = 732
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_RAZAO'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit35: TDBEdit
          Left = 13
          Top = 112
          Width = 732
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_FANTASIA'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbeEmiInsEstadual: TDBEdit
          Left = 13
          Top = 152
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_IE'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit37: TDBEdit
          Left = 208
          Top = 152
          Width = 186
          Height = 21
          DataField = 'NTF_EMINTENTE_IEST'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBEdit38: TDBEdit
          Left = 13
          Top = 192
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_IM'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object DBEdit39: TDBEdit
          Left = 208
          Top = 192
          Width = 95
          Height = 21
          DataField = 'NTF_EMITENTE_CNAE'
          DataSource = dsCadastro
          TabOrder = 6
        end
      end
      object GroupBox6: TGroupBox
        Left = 16
        Top = 259
        Width = 761
        Height = 197
        Caption = '[ Endere'#231'o ]'
        TabOrder = 1
        object Label74: TLabel
          Left = 13
          Top = 19
          Width = 61
          Height = 13
          Caption = 'Logradouro *'
          FocusControl = dbeLogradouroEmitente
          Transparent = True
        end
        object Label75: TLabel
          Left = 638
          Top = 19
          Width = 44
          Height = 13
          Caption = 'N'#250'mero *'
          FocusControl = dbeNumeroEmissor
        end
        object Label76: TLabel
          Left = 13
          Top = 59
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit42
        end
        object Label77: TLabel
          Left = 638
          Top = 59
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit43
        end
        object Label78: TLabel
          Left = 258
          Top = 59
          Width = 34
          Height = 13
          Caption = 'Bairro *'
          FocusControl = dbeBairroEmissor
        end
        object Label79: TLabel
          Left = 13
          Top = 99
          Width = 21
          Height = 13
          Caption = 'UF *'
        end
        object Label80: TLabel
          Left = 78
          Top = 99
          Width = 40
          Height = 13
          Caption = 'Cidade *'
          FocusControl = dbeCidadeEmissor
        end
        object Label81: TLabel
          Left = 638
          Top = 99
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit46
        end
        object Label82: TLabel
          Left = 13
          Top = 142
          Width = 24
          Height = 13
          Caption = 'PA'#205'S'
          FocusControl = DBEdit47
        end
        object dbeLogradouroEmitente: TDBEdit
          Left = 13
          Top = 35
          Width = 618
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_LOGRADOURO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object dbeNumeroEmissor: TDBEdit
          Left = 638
          Top = 35
          Width = 108
          Height = 21
          DataField = 'NTF_EMITENTE_NUMERO'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit42: TDBEdit
          Left = 13
          Top = 75
          Width = 240
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_COMPLEMENTO'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object DBEdit43: TDBEdit
          Left = 638
          Top = 75
          Width = 108
          Height = 21
          DataField = 'NTF_EMITENTE_CEP'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object dbeBairroEmissor: TDBEdit
          Left = 258
          Top = 75
          Width = 374
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMINTENTE_BAIRRO'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object cmbUFEmitente: TDBComboBox
          Left = 13
          Top = 115
          Width = 61
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'NTF_EMITENTE_UF'
          DataSource = dsCadastro
          ItemHeight = 16
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PR'
            'PI'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          TabOrder = 5
        end
        object dbeCidadeEmissor: TDBEdit
          Left = 78
          Top = 115
          Width = 554
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NTF_EMITENTE_NOME_MUNICIPIO'
          DataSource = dsCadastro
          TabOrder = 6
          OnExit = dbeCidadeEmissorExit
        end
        object DBEdit46: TDBEdit
          Left = 638
          Top = 115
          Width = 108
          Height = 21
          DataField = 'NTF_EMITENTE_TELEFONE'
          DataSource = dsCadastro
          TabOrder = 7
        end
        object DBEdit47: TDBEdit
          Left = 13
          Top = 158
          Width = 240
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'NTF_EMITENTE_NOME_PAIS'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
      end
    end
    object tbsDestinatario: TTabSheet
      Caption = 'Destinat'#225'rio/Remetente'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 806
        Height = 305
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 16
          Top = 3
          Width = 761
          Height = 190
          Caption = '[ Dados ]'
          TabOrder = 0
          object Label39: TLabel
            Left = 16
            Top = 24
            Width = 59
            Height = 13
            Caption = 'CNPJ/CPF *'
            FocusControl = dbeCNPJCPFDest
          end
          object Label40: TLabel
            Left = 16
            Top = 64
            Width = 103
            Height = 13
            Caption = 'Raz'#227'o Social/Nome *'
            FocusControl = dbeRazaoDest
          end
          object Label41: TLabel
            Left = 16
            Top = 104
            Width = 87
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual'
            FocusControl = DBEdit20
          end
          object Label42: TLabel
            Left = 275
            Top = 105
            Width = 98
            Height = 13
            Caption = 'Inscri'#231#227'o SUFRAMA'
            FocusControl = DBEdit21
          end
          object Label43: TLabel
            Left = 16
            Top = 144
            Width = 25
            Height = 13
            Caption = 'Email'
            FocusControl = dbeEmailDest
          end
          object Label48: TLabel
            Left = 209
            Top = 104
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object dbeCNPJCPFDest: TDBEdit
            Left = 16
            Top = 40
            Width = 186
            Height = 21
            TabStop = False
            DataField = 'NTF_CNPJCPF'
            DataSource = dsCadastro
            ReadOnly = True
            TabOrder = 0
          end
          object dbeRazaoDest: TDBEdit
            Left = 16
            Top = 80
            Width = 500
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_RAZAOSOCIAL'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit20: TDBEdit
            Left = 16
            Top = 120
            Width = 186
            Height = 21
            DataField = 'NTF_DEST_IE'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit21: TDBEdit
            Left = 275
            Top = 121
            Width = 121
            Height = 21
            DataField = 'NTF_DEST_ISUF'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object dbeEmailDest: TDBEdit
            Left = 16
            Top = 160
            Width = 500
            Height = 21
            CharCase = ecLowerCase
            DataField = 'NTF_DEST_EMAIL'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object cmbUFIEDest: TDBComboBox
            Left = 209
            Top = 120
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'NTF_DEST_ISUF'
            DataSource = dsCadastro
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PR'
              'PI'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 5
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 196
          Width = 761
          Height = 104
          Caption = '[ Endere'#231'o ]'
          TabOrder = 1
          object Label44: TLabel
            Left = 8
            Top = 16
            Width = 61
            Height = 13
            Caption = 'Logradouro *'
            FocusControl = dbeLogradouroDest
          end
          object Label45: TLabel
            Left = 598
            Top = 16
            Width = 44
            Height = 13
            Caption = 'N'#250'mero *'
            FocusControl = dbeNumeroDest
          end
          object Label46: TLabel
            Left = 8
            Top = 56
            Width = 34
            Height = 13
            Caption = 'Bairro *'
            FocusControl = dbeBairroDest
          end
          object Label47: TLabel
            Left = 264
            Top = 56
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit26
          end
          object Label49: TLabel
            Left = 379
            Top = 56
            Width = 21
            Height = 13
            Caption = 'UF *'
          end
          object Label50: TLabel
            Left = 445
            Top = 56
            Width = 40
            Height = 13
            Caption = 'Cidade *'
            FocusControl = dbeCidadeDest
          end
          object dbeLogradouroDest: TDBEdit
            Left = 8
            Top = 32
            Width = 585
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_LOGRADOURO'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object dbeNumeroDest: TDBEdit
            Left = 598
            Top = 32
            Width = 134
            Height = 21
            DataField = 'NTF_DEST_NUMERO'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object dbeBairroDest: TDBEdit
            Left = 8
            Top = 72
            Width = 249
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_DEST_BAIRRO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit26: TDBEdit
            Left = 264
            Top = 72
            Width = 108
            Height = 21
            DataField = 'NTF_DEST_CEP'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object cmbUFDest: TDBComboBox
            Left = 379
            Top = 72
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'NTF_DEST_UF'
            DataSource = dsCadastro
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PR'
              'PI'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 4
          end
          object dbeCidadeDest: TDBEdit
            Left = 445
            Top = 72
            Width = 286
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_DEST_NOME_MUNICIPIO'
            DataSource = dsCadastro
            TabOrder = 5
            OnExit = dbeCidadeDestExit
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 305
        Width = 806
        Height = 206
        Align = alClient
        TabOrder = 1
        object pcRetiradaEntrega: TPageControl
          Left = 1
          Top = 1
          Width = 804
          Height = 204
          ActivePage = TabSheet7
          Align = alClient
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'Retirada'
            object Label95: TLabel
              Left = 374
              Top = 0
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = dbeCNPJ
              Transparent = True
            end
            object Label96: TLabel
              Left = 16
              Top = 37
              Width = 61
              Height = 13
              Caption = 'Logradouro *'
              FocusControl = dbeRetiradaLogradouro
              Transparent = True
            end
            object Label97: TLabel
              Left = 640
              Top = 36
              Width = 44
              Height = 13
              Caption = 'N'#250'mero *'
              FocusControl = dbeRetiradaNumero
              Transparent = True
            end
            object Label98: TLabel
              Left = 16
              Top = 80
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = dbeRetiradaComp
              Transparent = True
            end
            object Label99: TLabel
              Left = 374
              Top = 80
              Width = 34
              Height = 13
              Caption = 'Bairro *'
              FocusControl = dbeRetiradaBairro
              Transparent = True
            end
            object Label100: TLabel
              Left = 16
              Top = 120
              Width = 21
              Height = 13
              Caption = 'UF *'
              Transparent = True
            end
            object Label101: TLabel
              Left = 81
              Top = 120
              Width = 40
              Height = 13
              Caption = 'Cidade *'
              FocusControl = dbeCidadeRetirada
              Transparent = True
            end
            object cbxRetirada: TCheckBox
              Left = 16
              Top = 13
              Width = 217
              Height = 17
              Caption = 'Local de retirada diferente do emitente'
              Enabled = False
              TabOrder = 0
            end
            object dbeCNPJ: TDBEdit
              Left = 374
              Top = 16
              Width = 186
              Height = 21
              DataField = 'NTF_RETIRADA_CNPJCPF'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeCNPJExit
            end
            object dbeRetiradaLogradouro: TDBEdit
              Left = 16
              Top = 53
              Width = 617
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_RETIRADA_LOGRADOURO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object dbeRetiradaNumero: TDBEdit
              Left = 640
              Top = 53
              Width = 134
              Height = 21
              DataField = 'NTF_RETIRADA_NUMERO'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object dbeRetiradaComp: TDBEdit
              Left = 16
              Top = 96
              Width = 350
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_RETIRADA_COMPLEMENTO'
              DataSource = dsCadastro
              TabOrder = 4
            end
            object dbeRetiradaBairro: TDBEdit
              Left = 374
              Top = 96
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_RETIRADA_BAIRRO'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object cmbUFRetiratada: TDBComboBox
              Left = 16
              Top = 136
              Width = 61
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'NTF_RETIRADA_UF'
              DataSource = dsCadastro
              ItemHeight = 16
              Items.Strings = (
                'AC'
                'AL'
                'AM'
                'AP'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MS'
                'MT'
                'PA'
                'PB'
                'PE'
                'PR'
                'PI'
                'RJ'
                'RN'
                'RO'
                'RR'
                'RS'
                'SC'
                'SE'
                'SP'
                'TO')
              TabOrder = 6
            end
            object dbeCidadeRetirada: TDBEdit
              Left = 81
              Top = 136
              Width = 691
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_RETIRADA_NOME_MUNICIPIO'
              DataSource = dsCadastro
              TabOrder = 7
              OnExit = dbeCidadeRetiradaExit
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Entrega'
            ImageIndex = 1
            object Label102: TLabel
              Left = 374
              Top = 0
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = dbeEntregaCNPJ
              Transparent = True
            end
            object Label103: TLabel
              Left = 16
              Top = 37
              Width = 54
              Height = 13
              Caption = 'Logradouro'
              FocusControl = dbeEntregaLogradouro
              Transparent = True
            end
            object Label104: TLabel
              Left = 640
              Top = 37
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = dbeEntregaNumero
              Transparent = True
            end
            object Label105: TLabel
              Left = 16
              Top = 80
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = dbeEntregaComp
              Transparent = True
            end
            object Label106: TLabel
              Left = 374
              Top = 80
              Width = 27
              Height = 13
              Caption = 'Bairro'
              FocusControl = dbeEntregaBairro
              Transparent = True
            end
            object Label107: TLabel
              Left = 16
              Top = 120
              Width = 14
              Height = 13
              Caption = 'UF'
              Transparent = True
            end
            object Label108: TLabel
              Left = 81
              Top = 120
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = dbeCidadeEntrega
              Transparent = True
            end
            object cbxEntrega: TCheckBox
              Left = 16
              Top = 13
              Width = 257
              Height = 17
              Caption = 'Local de entrega diferente do destinat'#225'rio'
              Enabled = False
              TabOrder = 0
            end
            object dbeEntregaCNPJ: TDBEdit
              Left = 374
              Top = 16
              Width = 186
              Height = 21
              DataField = 'NTF_ENTREGA_CNPJCPF'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeEntregaCNPJExit
            end
            object dbeEntregaLogradouro: TDBEdit
              Left = 16
              Top = 53
              Width = 617
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_ENTREGA_LOGRADOURO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object dbeEntregaNumero: TDBEdit
              Left = 640
              Top = 53
              Width = 134
              Height = 21
              DataField = 'NTF_ENTREGA_NUMERO'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object dbeEntregaComp: TDBEdit
              Left = 16
              Top = 96
              Width = 350
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_ENTREGA_COMPLEMENTO'
              DataSource = dsCadastro
              TabOrder = 4
            end
            object dbeEntregaBairro: TDBEdit
              Left = 374
              Top = 96
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_ENTREGA_BAIRRO'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object cmbUFEntrega: TDBComboBox
              Left = 16
              Top = 136
              Width = 61
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'NTF_ENTREGA_UF'
              DataSource = dsCadastro
              ItemHeight = 16
              Items.Strings = (
                'AC'
                'AL'
                'AM'
                'AP'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MS'
                'MT'
                'PA'
                'PB'
                'PE'
                'PR'
                'PI'
                'RJ'
                'RN'
                'RO'
                'RR'
                'RS'
                'SC'
                'SE'
                'SP'
                'TO')
              TabOrder = 6
            end
            object dbeCidadeEntrega: TDBEdit
              Left = 81
              Top = 136
              Width = 691
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_ENTREGA_NOME_MUNICIPIO'
              DataSource = dsCadastro
              TabOrder = 7
              OnExit = dbeCidadeEntregaExit
            end
          end
        end
      end
    end
    object tsbTotais: TTabSheet
      Caption = 'Totais'
      ImageIndex = 2
      object PageControlImpostos: TPageControl
        Left = 0
        Top = 0
        Width = 806
        Height = 511
        ActivePage = tbsICMS
        Align = alClient
        TabOrder = 0
        object tbsICMS: TTabSheet
          Caption = 'ICMS'
          object Label22: TLabel
            Left = 16
            Top = 22
            Width = 139
            Height = 13
            Caption = 'Total dos produtos e servi'#231'os'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label23: TLabel
            Left = 16
            Top = 64
            Width = 121
            Height = 13
            Caption = 'Base de C'#225'lculo de ICMS'
            FocusControl = DBEdit4
            Transparent = True
          end
          object Label25: TLabel
            Left = 16
            Top = 102
            Width = 148
            Height = 13
            Caption = 'Base de C'#225'lculo da Subtitui'#231#227'o'
            FocusControl = DBEdit6
            Transparent = True
          end
          object Label24: TLabel
            Left = 296
            Top = 64
            Width = 68
            Height = 13
            Caption = 'Valor do ICMS'
            FocusControl = DBEdit5
            Transparent = True
          end
          object Label26: TLabel
            Left = 296
            Top = 102
            Width = 95
            Height = 13
            Caption = 'Valor da Subtitui'#231#227'o'
            FocusControl = DBEdit7
            Transparent = True
          end
          object Label27: TLabel
            Left = 296
            Top = 141
            Width = 66
            Height = 13
            Caption = 'Total de Frete'
            FocusControl = DBEdit8
            Transparent = True
          end
          object Label28: TLabel
            Left = 16
            Top = 185
            Width = 55
            Height = 13
            Caption = 'Total do IPI'
            FocusControl = DBEdit9
            Transparent = True
          end
          object Label29: TLabel
            Left = 296
            Top = 185
            Width = 76
            Height = 13
            Caption = 'Total do Seguro'
            FocusControl = DBEdit10
            Transparent = True
          end
          object Label30: TLabel
            Left = 16
            Top = 227
            Width = 132
            Height = 13
            Caption = 'Outras despesas acess'#243'rias'
            FocusControl = DBEdit11
            Transparent = True
          end
          object Label31: TLabel
            Left = 16
            Top = 267
            Width = 65
            Height = 13
            Caption = 'Total da Nota'
            FocusControl = dbeValorNota
            Transparent = True
          end
          object Label109: TLabel
            Left = 296
            Top = 224
            Width = 88
            Height = 13
            Caption = 'Valor de Desconto'
            FocusControl = DBEdit2
            Transparent = True
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_ITENS'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataField = 'NTF_BASECALCULOICMS'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit6: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataField = 'NTF_BASECALCULOSUBSTITUICAO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 296
            Top = 80
            Width = 251
            Height = 21
            DataField = 'NTF_VALORICMS'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 296
            Top = 118
            Width = 251
            Height = 21
            DataField = 'NTF_VALORSUBSTITUICAO'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object rgTipoFrete: TDBRadioGroup
            Left = 16
            Top = 143
            Width = 251
            Height = 39
            Caption = '[ Tipo de Frete ]'
            Columns = 2
            DataField = 'NTF_TIPOFRETE'
            DataSource = dsCadastro
            Items.Strings = (
              'CIF'
              'FOB')
            TabOrder = 5
            Values.Strings = (
              'C'
              'F')
          end
          object DBEdit8: TDBEdit
            Left = 296
            Top = 157
            Width = 251
            Height = 21
            DataField = 'NTF_VALORFRETE'
            DataSource = dsCadastro
            TabOrder = 6
            OnExit = DBEdit8Exit
          end
          object DBEdit10: TDBEdit
            Left = 296
            Top = 203
            Width = 251
            Height = 21
            DataField = 'NTF_VALORSEGURO'
            DataSource = dsCadastro
            TabOrder = 8
            OnExit = DBEdit10Exit
          end
          object DBEdit9: TDBEdit
            Left = 16
            Top = 203
            Width = 251
            Height = 21
            DataField = 'NTF_VALORIPI'
            DataSource = dsCadastro
            TabOrder = 7
          end
          object DBEdit11: TDBEdit
            Left = 16
            Top = 244
            Width = 251
            Height = 21
            DataField = 'NTF_OUTRASPESPESAS'
            DataSource = dsCadastro
            TabOrder = 9
            OnExit = DBEdit11Exit
          end
          object dbeValorNota: TDBEdit
            Left = 16
            Top = 284
            Width = 251
            Height = 21
            TabStop = False
            DataField = 'NTF_VALORTOTALNOTA'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit2: TDBEdit
            Left = 296
            Top = 240
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_DESCONTO'
            DataSource = dsCadastro
            TabOrder = 10
            OnExit = DBEdit2Exit
          end
        end
        object tbsISSQN: TTabSheet
          Caption = 'ISSQN'
          ImageIndex = 1
          object Label83: TLabel
            Left = 16
            Top = 22
            Width = 111
            Height = 13
            Caption = 'Base de c'#225'lculo do ISS'
            FocusControl = DBEdit18
            Transparent = True
          end
          object Label84: TLabel
            Left = 16
            Top = 64
            Width = 44
            Height = 13
            Caption = 'Total ISS'
            FocusControl = DBEdit19
            Transparent = True
          end
          object Label85: TLabel
            Left = 16
            Top = 102
            Width = 88
            Height = 13
            Caption = 'PIS sobre servi'#231'os'
            FocusControl = DBEdit22
            Transparent = True
          end
          object Label86: TLabel
            Left = 16
            Top = 141
            Width = 118
            Height = 13
            Caption = 'CONFINS sobre servi'#231'os'
            FocusControl = DBEdit23
            Transparent = True
          end
          object Label87: TLabel
            Left = 16
            Top = 185
            Width = 315
            Height = 13
            Caption = 
              'Total dos servi'#231'os sob n'#227'o-incid'#234'ncia ou n'#227'o tributados pelo ICM' +
              'S'
            FocusControl = DBEdit24
            Transparent = True
          end
          object DBEdit18: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataField = 'NTF_BCISS'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataField = 'NTF_TOTAL_ISS'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataField = 'NTF_PIS_SERVICO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 16
            Top = 157
            Width = 251
            Height = 21
            DataField = 'NTF_CONFINS_SERVICO'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit24: TDBEdit
            Left = 16
            Top = 203
            Width = 251
            Height = 21
            DataField = 'NTF_TOTAL_SERVICO_N_INCIDENCIA'
            DataSource = dsCadastro
            TabOrder = 4
          end
        end
        object tbsRetencao: TTabSheet
          Caption = 'Reten'#231#227'o de Tributos'
          ImageIndex = 2
          object Label88: TLabel
            Left = 16
            Top = 22
            Width = 88
            Height = 13
            Caption = 'Valor retido de PIS'
            FocusControl = DBEdit25
            Transparent = True
          end
          object Label89: TLabel
            Left = 16
            Top = 64
            Width = 118
            Height = 13
            Caption = 'Valor retido de CONFINS'
            FocusControl = DBEdit27
            Transparent = True
          end
          object Label90: TLabel
            Left = 16
            Top = 102
            Width = 97
            Height = 13
            Caption = 'Valor retido de CSLL'
            FocusControl = DBEdit36
            Transparent = True
          end
          object Label91: TLabel
            Left = 16
            Top = 141
            Width = 119
            Height = 13
            Caption = 'Base de c'#225'lculo do IRRF'
            FocusControl = DBEdit40
            Transparent = True
          end
          object Label92: TLabel
            Left = 16
            Top = 185
            Width = 96
            Height = 13
            Caption = 'Valor retido do IRRF'
            FocusControl = DBEdit41
            Transparent = True
          end
          object Label93: TLabel
            Left = 16
            Top = 227
            Width = 119
            Height = 13
            Caption = 'BC da ret. da Prev.Social'
            FocusControl = DBEdit44
            Transparent = True
          end
          object Label94: TLabel
            Left = 16
            Top = 267
            Width = 119
            Height = 13
            Caption = 'Reten'#231#227'o da Prev.Social'
            FocusControl = DBEdit45
            Transparent = True
          end
          object DBEdit25: TDBEdit
            Left = 16
            Top = 39
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_RETIDO_PIS'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit27: TDBEdit
            Left = 16
            Top = 80
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_RETIDO_CONFINS'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit36: TDBEdit
            Left = 16
            Top = 118
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_RETIDO_CSLL'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit40: TDBEdit
            Left = 16
            Top = 157
            Width = 251
            Height = 21
            DataField = 'NTF_BC_IRRF'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit41: TDBEdit
            Left = 16
            Top = 203
            Width = 251
            Height = 21
            DataField = 'NTF_VALOR_RETIDO_IRRF'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object DBEdit44: TDBEdit
            Left = 16
            Top = 244
            Width = 251
            Height = 21
            DataField = 'NTF_BC_RETIDO_PREV_SOCIAL'
            DataSource = dsCadastro
            TabOrder = 5
          end
          object DBEdit45: TDBEdit
            Left = 16
            Top = 283
            Width = 251
            Height = 21
            DataField = 'NTF_RETENCAO_PREV_SOCIAL'
            DataSource = dsCadastro
            TabOrder = 6
          end
        end
      end
    end
    object tbsTransportes: TTabSheet
      Caption = 'Transportes'
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 806
        Height = 511
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Transportador'
          object GroupBox1: TGroupBox
            Left = 16
            Top = 208
            Width = 713
            Height = 129
            Caption = '[ Endere'#231'o ]'
            TabOrder = 1
            object Label36: TLabel
              Left = 16
              Top = 16
              Width = 93
              Height = 13
              Caption = 'Endere'#231'o Completo'
              FocusControl = DBEdit16
              Transparent = True
            end
            object Label37: TLabel
              Left = 16
              Top = 60
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label38: TLabel
              Left = 82
              Top = 60
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = DBEdit17
              Transparent = True
            end
            object DBEdit16: TDBEdit
              Left = 16
              Top = 32
              Width = 683
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_TRANSP_ENDERECO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object cmbUFTransp: TDBComboBox
              Left = 16
              Top = 75
              Width = 61
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'NTF_TRANSP_UF'
              DataSource = dsCadastro
              ItemHeight = 16
              Items.Strings = (
                'AC'
                'AL'
                'AM'
                'AP'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MS'
                'MT'
                'PA'
                'PB'
                'PE'
                'PR'
                'PI'
                'RJ'
                'RN'
                'RO'
                'RR'
                'RS'
                'SC'
                'SE'
                'SP'
                'TO')
              TabOrder = 1
            end
            object DBEdit17: TDBEdit
              Left = 82
              Top = 75
              Width = 616
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_TRANSP_NOME_MUNICIPIO'
              DataSource = dsCadastro
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 16
            Top = 16
            Width = 713
            Height = 188
            Caption = '[ Identifica'#231#227'o ]'
            TabOrder = 0
            object Label32: TLabel
              Left = 16
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Transportadora'
              FocusControl = dbeTransportadora
              Transparent = True
            end
            object spTransportadora: TSpeedButton
              Left = 139
              Top = 31
              Width = 23
              Height = 22
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
            object Label33: TLabel
              Left = 16
              Top = 59
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = dbeCNPJTransporte
              Transparent = True
            end
            object Label34: TLabel
              Left = 16
              Top = 99
              Width = 63
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = dbeTransRazao
              Transparent = True
            end
            object Label35: TLabel
              Left = 16
              Top = 139
              Width = 87
              Height = 13
              Caption = 'Inscri'#231#227'o Estadual'
              FocusControl = DBEdit15
              Transparent = True
            end
            object dbeTransportadora: TDBEdit
              Left = 16
              Top = 32
              Width = 121
              Height = 21
              DataField = 'NTF_CODTRANSPORTADORA'
              DataSource = dsCadastro
              TabOrder = 0
              OnChange = dbeTransportadoraChange
              OnExit = dbeTransportadoraExit
              OnKeyPress = dbeTransportadoraKeyPress
            end
            object dbeCNPJTransporte: TDBEdit
              Left = 16
              Top = 75
              Width = 186
              Height = 21
              DataField = 'NTF_TRANSP_CNPJCPF'
              DataSource = dsCadastro
              TabOrder = 1
              OnExit = dbeCNPJTransporteExit
            end
            object dbeTransRazao: TDBEdit
              Left = 16
              Top = 115
              Width = 683
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_TRANSP_RAZAO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBEdit15: TDBEdit
              Left = 16
              Top = 155
              Width = 186
              Height = 21
              DataField = 'NTF_TRANSP_IE'
              DataSource = dsCadastro
              TabOrder = 3
              OnKeyPress = DBEdit15KeyPress
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Reten'#231#227'o ICMS'
          ImageIndex = 3
          object Label57: TLabel
            Left = 16
            Top = 16
            Width = 76
            Height = 13
            Caption = 'Base de c'#225'lculo'
            FocusControl = DBEdit14
            Transparent = True
          end
          object Label58: TLabel
            Left = 16
            Top = 56
            Width = 40
            Height = 13
            Caption = 'Al'#237'quota'
            FocusControl = DBEdit28
            Transparent = True
          end
          object Label59: TLabel
            Left = 16
            Top = 97
            Width = 76
            Height = 13
            Caption = 'Valor do servi'#231'o'
            FocusControl = DBEdit29
            Transparent = True
          end
          object Label60: TLabel
            Left = 16
            Top = 138
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object Label61: TLabel
            Left = 82
            Top = 138
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = dbeCidadeRetencao
            Transparent = True
          end
          object Label62: TLabel
            Left = 16
            Top = 180
            Width = 28
            Height = 13
            Caption = 'CFOP'
            FocusControl = dbeCFOPRetencaoICMS
            Transparent = True
          end
          object Label63: TLabel
            Left = 16
            Top = 221
            Width = 55
            Height = 13
            Caption = 'ICMS retido'
            FocusControl = dbeICMSRetido
            Transparent = True
          end
          object spCFOPRetencao: TSpeedButton
            Left = 166
            Top = 195
            Width = 23
            Height = 22
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
            OnClick = spCFOPRetencaoClick
          end
          object DBEdit14: TDBEdit
            Left = 16
            Top = 32
            Width = 150
            Height = 21
            DataField = 'NTF_RETTRANSP_BCRET'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit28: TDBEdit
            Left = 16
            Top = 72
            Width = 150
            Height = 21
            DataField = 'NTF_RETTRANSP_ICMSRET'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit29: TDBEdit
            Left = 16
            Top = 113
            Width = 150
            Height = 21
            DataField = 'NTF_RETTRANSP_VALOR_SERVICO'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object cmbUFRetencao: TDBComboBox
            Left = 16
            Top = 155
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'NTF_RETTRANSP_UF'
            DataSource = dsCadastro
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PR'
              'PI'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 3
          end
          object dbeCidadeRetencao: TDBEdit
            Left = 82
            Top = 155
            Width = 337
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_RETTRANSP_NOME_MUNICIPIO'
            DataSource = dsCadastro
            TabOrder = 4
            OnExit = dbeCidadeRetencaoExit
          end
          object dbeCFOPRetencaoICMS: TDBEdit
            Left = 16
            Top = 196
            Width = 150
            Height = 21
            DataField = 'NTF_RETTRANSP_CFOP'
            DataSource = dsCadastro
            MaxLength = 4
            TabOrder = 5
            OnExit = dbeCFOPRetencaoICMSExit
            OnKeyPress = dbeCFOPRetencaoICMSKeyPress
          end
          object dbeICMSRetido: TDBEdit
            Left = 16
            Top = 237
            Width = 150
            Height = 21
            DataField = 'NTF_RETTRANSP_ICMSRE'
            DataSource = dsCadastro
            TabOrder = 6
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Ve'#237'culo'
          ImageIndex = 2
          object Label54: TLabel
            Left = 16
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Placa'
            FocusControl = dbeVeiculoPlaca
            Transparent = True
          end
          object Label55: TLabel
            Left = 16
            Top = 56
            Width = 30
            Height = 13
            Caption = 'RNTC'
            FocusControl = dbeVeiculoRNTC
            Transparent = True
          end
          object Label56: TLabel
            Left = 16
            Top = 96
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object dbeVeiculoPlaca: TDBEdit
            Left = 16
            Top = 32
            Width = 264
            Height = 21
            DataField = 'NTF_VEICTRANSP_PLACA'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object dbeVeiculoRNTC: TDBEdit
            Left = 16
            Top = 72
            Width = 264
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_VEICTRANSP_RNTC'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object cmbUFVeiculo: TDBComboBox
            Left = 17
            Top = 112
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'NTF_VEICTRANSP_UF'
            DataSource = dsCadastro
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PR'
              'PI'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 2
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Reboque'
          ImageIndex = 3
          object Label64: TLabel
            Left = 16
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Placa'
            FocusControl = dbeRecoquePlaca
          end
          object Label65: TLabel
            Left = 16
            Top = 60
            Width = 30
            Height = 13
            Caption = 'RNTC'
            FocusControl = dbeReboqueRNTC
          end
          object Label66: TLabel
            Left = 16
            Top = 102
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object dbeRecoquePlaca: TDBEdit
            Left = 16
            Top = 33
            Width = 108
            Height = 21
            DataField = 'NTF_REBOQUE_PLACA'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object dbeReboqueRNTC: TDBEdit
            Left = 16
            Top = 76
            Width = 298
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NTF_REBOQUE_RNTC'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object cmbReboqueUF: TDBComboBox
            Left = 16
            Top = 118
            Width = 61
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'NTF_REBOQUE_UF'
            DataSource = dsCadastro
            ItemHeight = 16
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PR'
              'PI'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO')
            TabOrder = 2
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Volume'
          ImageIndex = 4
          object DBGridVolumes: TDBGrid
            Left = 0
            Top = 0
            Width = 798
            Height = 438
            Align = alClient
            Ctl3D = False
            DataSource = dsVolumes
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
                Expanded = False
                FieldName = 'VOL_ITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_QUANTIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Qtde Vol.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_ESPECIE'
                Title.Alignment = taCenter
                Title.Caption = 'Esp'#233'cie'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_MARCA'
                Title.Alignment = taCenter
                Title.Caption = 'Marca'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 187
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_NUMERACAO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero Vol.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_PESO_LIQUIDO'
                Title.Alignment = taCenter
                Title.Caption = 'Peso Liq.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOL_PESO_BRUTO'
                Title.Alignment = taCenter
                Title.Caption = 'Peso Bruto'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end>
          end
          object Panel2: TPanel
            Left = 0
            Top = 438
            Width = 798
            Height = 45
            Align = alBottom
            TabOrder = 1
            object btnIncVolume: TBitBtn
              Left = 16
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Incluir'
              TabOrder = 0
              OnClick = btnIncVolumeClick
            end
            object btnEditarVol: TBitBtn
              Left = 104
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Editar'
              TabOrder = 1
              OnClick = btnEditarVolClick
            end
            object btnExcluir: TBitBtn
              Left = 192
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Excluir'
              TabOrder = 2
              OnClick = btnExcluirClick
            end
          end
        end
      end
    end
    object tsbInformacoes: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 4
      object Label52: TLabel
        Left = 16
        Top = 24
        Width = 208
        Height = 13
        Caption = 'Informa'#231#245'es adicionais de interesse do fisco'
        FocusControl = DBMemo1
        Transparent = True
      end
      object Label53: TLabel
        Left = 16
        Top = 144
        Width = 271
        Height = 13
        Caption = 'Informa'#231#245'es complementares de interesse do contribuinte'
        FocusControl = DBMemo2
        Transparent = True
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 40
        Width = 700
        Height = 89
        DataField = 'NTF_INFORM_ADICIONAIS_FISCO'
        DataSource = dsCadastro
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 160
        Width = 700
        Height = 89
        DataField = 'NTF_INF_ADIC_CONTRIBUITE'
        DataSource = dsCadastro
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 539
    Width = 814
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object BtAdicionar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Adicionar nova nota'
      Caption = '&Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtAdicionarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
        8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
        9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
        AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
        B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
        C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
        DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
        09090909090909090937373710302926231A16110E0E0E130937373710302C28
        26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
        292823221A11110E093737371736322E2E2C2826221A11110937373718383432
        2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
        34322E2C28262323093737371D3838383532312E2C282822093737371E383838
        3835323131302719093737371F383838383834342E0D0C0A093737371F383838
        383838362A0204000137373725383838383838382B070503373737371F353434
        343434342A070B37373737371F212121211F1F211C0637373737}
    end
    object BtCancelar: TBitBtn
      Left = 628
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000AD4A0000B54A
        0000B5520000BD520000BD5A0000C65A0000C6630000CE630000CE6B0000D673
        0000DE730000DE7B0000E77B0000E7840000F7940000CE6B0800FF9C0800A542
        1000AD4A1000B5521000C6631000B55A2100CE732100B55A3100BD633100FFAD
        3100CE7B3900BD6B4200C6734200CE844200CE844A00BD735200BD7B5200C67B
        5200C6845A00C6846300FFBD6300C68C7300CE947B00CE9C8400FF00FF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282828282828
        2828281F05002828282828282828282828282817050713282828282828282828
        2828282817060715282828282828282828282828281507062328280004040404
        040404232828000701282802090807070707061B28282706062328040B090711
        2727272828282800071328060D070A07232828282828281C070128070E13020B
        082028282828281C0701280F101D28020D0818282828280107132816191E2828
        140D0C03212513060623281A2421282828150C0D0B0908061228282622282828
        282827140808041B282828282828282828282828282828282828282828282828
        2828282828282828282828282828282828282828282828282828}
    end
    object BtGravar: TBitBtn
      Left = 548
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar nota'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000942929009431
        31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
        4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
        5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
        73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
        8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
        A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
        BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
        CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
        E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
        33343433332505050B4848191516111B27384647452D0002131048191515111A
        05184046492E0102121048191515111C03032F42493200011210481915151120
        0601243A493200011210481915151221231D1F27322C04041310481915151515
        1515151313151515160F48190D111E282B292B2828292B26150C481909384544
        4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
        3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
        4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
        4343434343434630130F4848092D3A363636363636363A2A0748}
    end
    object BtSair: TBitBtn
      Left = 724
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar esta janela'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object BtEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtEditarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000520B0000520B000000010000000100002D2D2D001855
        6F004544420058534E005160610054777B007C707800B56D3E00C1713500C076
        38008A5B5200947E7500AD7B7300BD847B00EFA65A00EDA75F00F0A85C00C694
        7B0000009A000316AC0041749600477AA9000018C6001029D600106BFF00FF00
        FF0035A8F5004A9EED006D8AFD00B5848400BD9494009891A200C6A59C00F1BC
        8600C6ADA500C6ADAD00CEB5AD00D6B5AD00C6B5B500D6BDB500DEBDB500F8C2
        8C00F9C48D00EFCE9400EFCE9C00F7D69C00DEC6B500D6C6BD00EFD6AD00F7D6
        A500FBD3A900E7C6B500EFCEB500EFCEBD00F7DEB500F7DEBD00C6C6C600E7CE
        CE00E7D6CE00F7E7C600FFEFD600FFEFE700FFF7E700FFF7EF00FFF7F700FFFF
        F700FFFFFF000000000000000000000000000000000000000000000000000000
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
        000000000000000000000000000000000000000000000000000019191D1D1D1D
        1D1D1D1D1D1D1D1D1D191919203C3B373630312C2B2B2B2D1D191919203C3838
        383838383838382C1D191919223D00032F37302C2C2C2B2C1D191919223E0302
        042F36302C2C2C2B1D1919192441380515010A263838382C1D19191925423F05
        140B080A2F3030301D1919192742403F062110090A2F30301D19191927423838
        0C322A0E090A262F1E19191928424242400C322A10080A2F231919192E424242
        42400C32290F070A26191919334238383838380C321F1A131219191933424242
        424242410C1B17171312191935424242424242423A161C181719191933403F3F
        3F3F3F3F39111616191919193334343434333334270D19191919}
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsNotaFiscal
    OnDataChange = dsCadastroDataChange
    Left = 412
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 572
    Top = 48
  end
  object dsItensNota: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsItemsNotaFiscal
    OnDataChange = dsItensNotaDataChange
    Left = 468
    Top = 40
  end
  object dsVolumes: TDataSource
    AutoEdit = False
    Left = 520
    Top = 32
  end
end

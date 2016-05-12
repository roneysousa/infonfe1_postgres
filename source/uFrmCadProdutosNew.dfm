inherited frmCadProdutosNew: TfrmCadProdutosNew
  Left = 200
  Top = 119
  Caption = 'Cadastro de Produtos'
  ClientHeight = 526
  ClientWidth = 675
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 675
    Height = 507
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        Visible = False
      end
      inherited Label1: TLabel
        Visible = False
      end
      inherited pnlBotoes: TPanel
        Top = 438
        Width = 667
        inherited BtGravar: TBitBtn
          Left = 389
        end
        inherited BtCancelar: TBitBtn
          Left = 470
        end
        inherited BtSair: TBitBtn
          Left = 573
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 667
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 18
          Top = 10
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object DBText2: TDBText
          Left = 496
          Top = 27
          Width = 80
          Height = 22
          AutoSize = True
          DataField = 'PRO_CODIGO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object lblCodigo: TLabel
          Left = 18
          Top = 27
          Width = 88
          Height = 22
          Caption = '00000000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 57
        Width = 667
        Height = 381
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 2
        object TabSheet3: TTabSheet
          Caption = 'Identifica'#231#227'o'
          object Label3: TLabel
            Left = 201
            Top = 9
            Width = 81
            Height = 13
            Caption = 'C'#243'digo de Barras'
            FocusControl = dbeBARRAS
            Transparent = True
          end
          object Label35: TLabel
            Left = 323
            Top = 9
            Width = 52
            Height = 13
            Caption = 'Refer'#234'ncia'
            FocusControl = dbeReferencia
          end
          object Label4: TLabel
            Left = 11
            Top = 52
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = dbeNMDESC
            Transparent = True
          end
          object Label5: TLabel
            Left = 11
            Top = 93
            Width = 47
            Height = 13
            Caption = 'Aplica'#231#227'o'
            Transparent = True
          end
          object Label40: TLabel
            Left = 246
            Top = 93
            Width = 57
            Height = 13
            Caption = 'Localiza'#231#227'o'
            FocusControl = cmbLocalizacao
            Transparent = True
          end
          object Label6: TLabel
            Left = 11
            Top = 132
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            FocusControl = dbeCDFORN
            Transparent = True
          end
          object spLocFornecedor: TSpeedButton
            Left = 67
            Top = 147
            Width = 23
            Height = 22
            Hint = 'Localizar fornecedor'
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
            OnClick = spLocFornecedorClick
          end
          object Label47: TLabel
            Left = 294
            Top = 132
            Width = 50
            Height = 13
            Caption = 'Fabricante'
            FocusControl = dbeCDFabricante
            Transparent = True
          end
          object spLocFabricante: TSpeedButton
            Left = 353
            Top = 147
            Width = 23
            Height = 22
            Hint = 'Localizar fabricante'
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
            OnClick = spLocFabricanteClick
          end
          object Label7: TLabel
            Left = 11
            Top = 171
            Width = 40
            Height = 13
            Caption = 'Unidade'
            FocusControl = cmbUnidade
            Transparent = True
          end
          object Label8: TLabel
            Left = 153
            Top = 171
            Width = 123
            Height = 13
            Caption = 'Forma de Armazenamento'
            FocusControl = DBLookupComboBox2
            Transparent = True
          end
          object Label45: TLabel
            Left = 295
            Top = 172
            Width = 106
            Height = 13
            Caption = 'Unid./Armazenamento'
            FocusControl = DBEdit4
          end
          object Label46: TLabel
            Left = 429
            Top = 172
            Width = 24
            Height = 13
            Caption = 'Peso'
            FocusControl = DBEdit5
          end
          object Label9: TLabel
            Left = 11
            Top = 210
            Width = 31
            Height = 13
            Caption = 'Se'#231#227'o'
            FocusControl = cmbSecao
            Transparent = True
          end
          object Label10: TLabel
            Left = 248
            Top = 210
            Width = 48
            Height = 13
            Caption = 'Subse'#231#227'o'
            FocusControl = cdmSubSecao
            Transparent = True
          end
          object Label22: TLabel
            Left = 11
            Top = 248
            Width = 73
            Height = 13
            Caption = 'Valor de Venda'
            FocusControl = dbeValorVenda
            Transparent = True
          end
          object Label11: TLabel
            Left = 129
            Top = 248
            Width = 71
            Height = 13
            Caption = 'Valor Revenda'
            FocusControl = dbeValorRevenda
            Transparent = True
          end
          object rbtTipo: TDBRadioGroup
            Left = 10
            Top = 6
            Width = 185
            Height = 41
            Caption = 'Tipo de Produtos'
            Columns = 2
            DataField = 'PRO_FLPROD'
            DataSource = dsCadastro
            Items.Strings = (
              'Produto'
              'Servi'#231'o')
            TabOrder = 0
            Values.Strings = (
              'P'
              'S')
          end
          object dbeBARRAS: TDBEdit
            Left = 201
            Top = 25
            Width = 115
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRO_BARRAS'
            DataSource = dsCadastro
            TabOrder = 1
            OnExit = dbeBARRASExit
          end
          object dbeReferencia: TDBEdit
            Left = 323
            Top = 25
            Width = 115
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRO_REFERENCIA'
            DataSource = dsCadastro
            TabOrder = 2
            OnExit = dbeReferenciaExit
          end
          object dbeNMDESC: TDBEdit
            Left = 11
            Top = 68
            Width = 540
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PRO_DESCRICAO'
            DataSource = dsCadastro
            TabOrder = 3
            OnExit = dbeNMDESCExit
          end
          object cmbAplicacao: TDBLookupComboBox
            Left = 11
            Top = 108
            Width = 231
            Height = 21
            DataField = 'PRO_NOME_APLICACAO'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object cmbLocalizacao: TDBLookupComboBox
            Left = 246
            Top = 108
            Width = 304
            Height = 21
            DataField = 'PRO_NMLOCA'
            DataSource = dsCadastro
            TabOrder = 5
          end
          object dbeCDFORN: TDBEdit
            Left = 11
            Top = 148
            Width = 56
            Height = 21
            DataField = 'FOR_CODIGO'
            DataSource = dsCadastro
            TabOrder = 6
            OnExit = dbeCDFORNExit
            OnKeyPress = dbeCDFORNKeyPress
          end
          object lbl_NMFORC: TEdit
            Left = 92
            Top = 148
            Width = 199
            Height = 21
            TabStop = False
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object dbeCDFabricante: TDBEdit
            Left = 296
            Top = 148
            Width = 56
            Height = 21
            DataField = 'PRO_CODFABRICANTE'
            DataSource = dsCadastro
            TabOrder = 8
            OnExit = dbeCDFabricanteExit
            OnKeyPress = dbeCDFabricanteKeyPress
          end
          object txtFabicante: TEdit
            Left = 380
            Top = 148
            Width = 170
            Height = 21
            TabStop = False
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object cmbUnidade: TDBLookupComboBox
            Left = 11
            Top = 187
            Width = 130
            Height = 21
            DataField = 'PRO_NMUNID'
            DataSource = dsCadastro
            TabOrder = 10
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 153
            Top = 187
            Width = 130
            Height = 21
            DataField = 'PRO_NMUNDARM'
            DataSource = dsCadastro
            TabOrder = 11
          end
          object DBEdit4: TDBEdit
            Left = 295
            Top = 186
            Width = 121
            Height = 21
            DataField = 'PRO_QUANT_ARMAZENAMENTO'
            DataSource = dsCadastro
            TabOrder = 12
          end
          object DBEdit5: TDBEdit
            Left = 429
            Top = 186
            Width = 121
            Height = 21
            DataField = 'PRO_PESO'
            DataSource = dsCadastro
            TabOrder = 13
          end
          object cmbSecao: TDBLookupComboBox
            Left = 11
            Top = 225
            Width = 232
            Height = 21
            DataField = 'PRO_SECAO'
            DataSource = dsCadastro
            TabOrder = 14
          end
          object cdmSubSecao: TDBLookupComboBox
            Left = 248
            Top = 225
            Width = 303
            Height = 21
            DataField = 'SUB_NOME'
            DataSource = dsCadastro
            TabOrder = 15
            OnEnter = cdmSubSecaoEnter
          end
          object dbeValorVenda: TDBEdit
            Left = 11
            Top = 266
            Width = 113
            Height = 21
            DataField = 'PRO_VLVENDA'
            DataSource = dsCadastro
            TabOrder = 16
            OnExit = dbeValorVendaExit
          end
          object dbeValorRevenda: TDBEdit
            Left = 129
            Top = 266
            Width = 113
            Height = 21
            DataField = 'PRO_REVENDA_VALOR'
            DataSource = dsCadastro
            TabOrder = 17
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Impostos'
          ImageIndex = 1
          object Label12: TLabel
            Left = 16
            Top = 16
            Width = 78
            Height = 13
            Caption = 'Valor de Compra'
            FocusControl = dbeVLCOMP
            Transparent = True
          end
          object Label18: TLabel
            Left = 151
            Top = 16
            Width = 29
            Height = 13
            Caption = 'Taxas'
            FocusControl = dbeVLTAXA
            Transparent = True
          end
          object Label17: TLabel
            Left = 371
            Top = 16
            Width = 73
            Height = 13
            Caption = 'Redu'#231#227'o ICMS'
            FocusControl = dbeVLICMS
            Transparent = True
          end
          object Label28: TLabel
            Left = 276
            Top = 36
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
          object Label23: TLabel
            Left = 495
            Top = 34
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
          object Label16: TLabel
            Left = 510
            Top = 16
            Width = 51
            Height = 13
            Caption = 'Tributa'#231#227'o'
            Transparent = True
          end
          object Label19: TLabel
            Left = 16
            Top = 57
            Width = 13
            Height = 13
            Caption = 'IPI'
            FocusControl = dbeVALIPI
            Transparent = True
          end
          object Label24: TLabel
            Left = 138
            Top = 78
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
          object Label20: TLabel
            Left = 151
            Top = 57
            Width = 24
            Height = 13
            Caption = 'Frete'
            FocusControl = dbeVLFRET
            Transparent = True
          end
          object Label27: TLabel
            Left = 276
            Top = 78
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
          object Label36: TLabel
            Left = 371
            Top = 60
            Width = 104
            Height = 13
            Caption = 'Antecipa'#231#227'o de ICMS'
            FocusControl = dbeAntICMS
          end
          object Label13: TLabel
            Left = 510
            Top = 60
            Width = 69
            Height = 13
            Caption = 'Valor de Custo'
            FocusControl = dbeVLCUST
            Transparent = True
          end
          object Label37: TLabel
            Left = 494
            Top = 79
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
          object Label29: TLabel
            Left = 16
            Top = 98
            Width = 55
            Height = 13
            Caption = 'Lucro Bruto'
            FocusControl = dbeLucroBruto
            Transparent = True
          end
          object Label32: TLabel
            Left = 138
            Top = 118
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
          object Label30: TLabel
            Left = 151
            Top = 98
            Width = 66
            Height = 13
            Caption = 'Lucro L'#237'quido'
            FocusControl = dbeLucroLiquido
            Transparent = True
          end
          object Label33: TLabel
            Left = 276
            Top = 118
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
          object Label15: TLabel
            Left = 371
            Top = 98
            Width = 80
            Height = 13
            Caption = 'Valor Fracionado'
            FocusControl = dbeVLFRAC
            Transparent = True
          end
          object Label14: TLabel
            Left = 510
            Top = 98
            Width = 73
            Height = 13
            Caption = 'Valor de Venda'
            FocusControl = dbeVLVEND
            Transparent = True
          end
          object Label21: TLabel
            Left = 151
            Top = 138
            Width = 45
            Height = 13
            Caption = 'Comiss'#227'o'
            FocusControl = DBEdit1
          end
          object Label25: TLabel
            Left = 276
            Top = 159
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
          object Label26: TLabel
            Left = 510
            Top = 138
            Width = 91
            Height = 13
            Caption = 'Limite de Desconto'
            FocusControl = dbeLIMDES
            Transparent = True
          end
          object Label31: TLabel
            Left = 635
            Top = 159
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
          object Label38: TLabel
            Left = 16
            Top = 179
            Width = 102
            Height = 13
            Caption = 'Lucro Bruto Revenda'
            FocusControl = dbeLucroBrutoRevenda
            Transparent = True
          end
          object Label39: TLabel
            Left = 151
            Top = 179
            Width = 113
            Height = 13
            Caption = 'Lucro L'#237'quido Revenda'
            FocusControl = dbeLucroLiquidoRevenda
            Transparent = True
          end
          object Label41: TLabel
            Left = 371
            Top = 179
            Width = 17
            Height = 13
            Caption = 'PIS'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label42: TLabel
            Left = 510
            Top = 179
            Width = 39
            Height = 13
            Caption = 'COFINS'
            FocusControl = DBEdit3
            Transparent = True
          end
          object Label43: TLabel
            Left = 16
            Top = 220
            Width = 96
            Height = 13
            Caption = 'CLassifica'#231#227'o Fiscal'
            FocusControl = cmbClassiFiscal
            Transparent = True
          end
          object Label48: TLabel
            Left = 371
            Top = 220
            Width = 36
            Height = 13
            Caption = 'Origem '
            FocusControl = DBLookupComboBox4
            Transparent = True
          end
          object Label34: TLabel
            Left = 16
            Top = 261
            Width = 118
            Height = 13
            Caption = 'Situa'#231#227'o Tribut'#225'rio ICMS'
            FocusControl = DBLookupComboBox5
            Transparent = True
          end
          object Label49: TLabel
            Left = 371
            Top = 261
            Width = 105
            Height = 13
            Caption = 'Situa'#231#227'o Tribut'#225'rio IPI'
            FocusControl = DBLookupComboBox6
          end
          object Label50: TLabel
            Left = 16
            Top = 302
            Width = 109
            Height = 13
            Caption = 'Situa'#231#227'o Tribut'#225'ria PIS'
            FocusControl = DBLookupComboBox7
          end
          object dbeVLCOMP: TDBEdit
            Left = 16
            Top = 32
            Width = 121
            Height = 21
            DataField = 'PRO_VLCOMPRA'
            DataSource = dsCadastro
            TabOrder = 0
            OnExit = dbeVLCOMPExit
          end
          object dbeVLTAXA: TDBEdit
            Left = 151
            Top = 32
            Width = 121
            Height = 21
            DataField = 'PRO_TAXAS'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 1
            OnExit = dbeVLCOMPExit
          end
          object dbeVLICMS: TDBEdit
            Left = 371
            Top = 32
            Width = 121
            Height = 21
            DataField = 'PRO_REDUCAOICMS'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 2
            OnExit = dbeVLCOMPExit
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 510
            Top = 32
            Width = 121
            Height = 21
            DataField = 'TRI_NOME'
            DataSource = dsCadastro
            TabOrder = 3
            OnExit = dbeVLCOMPExit
          end
          object dbeVALIPI: TDBEdit
            Left = 16
            Top = 73
            Width = 121
            Height = 21
            DataField = 'PRO_IPI'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 4
            OnExit = dbeVLCOMPExit
          end
          object dbeVLFRET: TDBEdit
            Left = 151
            Top = 73
            Width = 121
            Height = 21
            DataField = 'PRO_FRETE'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 5
            OnExit = dbeVLCOMPExit
          end
          object dbeAntICMS: TDBEdit
            Left = 371
            Top = 75
            Width = 121
            Height = 21
            DataField = 'PRO_ANTECIPACAO_ICMS'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 6
            OnExit = dbeVLCOMPExit
          end
          object dbeVLCUST: TDBEdit
            Left = 510
            Top = 75
            Width = 121
            Height = 21
            DataField = 'PRO_VLCUSTO'
            DataSource = dsCadastro
            TabOrder = 7
            OnExit = dbeVLCOMPExit
          end
          object dbeLucroBruto: TDBEdit
            Left = 16
            Top = 113
            Width = 121
            Height = 21
            DataField = 'PRO_LUCROBRUTO'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 8
            OnExit = dbeLucroBrutoExit
          end
          object dbeLucroLiquido: TDBEdit
            Left = 151
            Top = 113
            Width = 121
            Height = 21
            DataField = 'PRO_LUCROLIQUIDO'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 9
            OnExit = dbeLucroLiquidoExit
          end
          object dbeVLFRAC: TDBEdit
            Left = 371
            Top = 113
            Width = 121
            Height = 21
            DataField = 'PRO_VLFRACAO'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 10
          end
          object dbeVLVEND: TDBEdit
            Left = 510
            Top = 113
            Width = 121
            Height = 21
            DataField = 'PRO_VLVENDA'
            DataSource = dsCadastro
            TabOrder = 11
            OnExit = dbeValorVendaExit
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 16
            Top = 140
            Width = 121
            Height = 34
            Caption = 'Comissionado'
            Columns = 2
            DataField = 'PRO_COMISSIONADO'
            DataSource = dsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit1: TDBEdit
            Left = 151
            Top = 154
            Width = 121
            Height = 21
            DataField = 'PRO_PERC_COMISSAO'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 13
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 371
            Top = 140
            Width = 121
            Height = 34
            Caption = 'Bloq. Limite Desc.'
            Columns = 2
            DataField = 'PRO_BLOQUEIO_LIM_DESCONTO'
            DataSource = dsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 14
            Values.Strings = (
              'S'
              'N')
          end
          object dbeLIMDES: TDBEdit
            Left = 510
            Top = 154
            Width = 121
            Height = 21
            DataField = 'PRO_LIMDESCONTO'
            DataSource = dsCadastro
            MaxLength = 6
            TabOrder = 15
          end
          object dbeLucroBrutoRevenda: TDBEdit
            Left = 16
            Top = 195
            Width = 121
            Height = 21
            DataField = 'PRO_REVENDA_LUCRO_BRUTO'
            DataSource = dsCadastro
            TabOrder = 16
          end
          object dbeLucroLiquidoRevenda: TDBEdit
            Left = 151
            Top = 195
            Width = 121
            Height = 21
            DataField = 'PRO_REVENDA_LUCRO_LIQUIDO'
            DataSource = dsCadastro
            TabOrder = 17
          end
          object DBEdit2: TDBEdit
            Left = 371
            Top = 195
            Width = 121
            Height = 21
            DataField = 'PRO_PIS'
            DataSource = dsCadastro
            TabOrder = 18
          end
          object DBEdit3: TDBEdit
            Left = 510
            Top = 195
            Width = 121
            Height = 21
            DataField = 'PRO_COFINS'
            DataSource = dsCadastro
            TabOrder = 19
          end
          object cmbClassiFiscal: TDBLookupComboBox
            Left = 16
            Top = 236
            Width = 257
            Height = 21
            DataField = 'PRO_NOME_CLASSFISCAL'
            DataSource = dsCadastro
            TabOrder = 20
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 371
            Top = 236
            Width = 258
            Height = 21
            DataField = 'PRO_NMORIG'
            DataSource = dsCadastro
            TabOrder = 21
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 16
            Top = 277
            Width = 257
            Height = 21
            DataField = 'PRO_NMTT_CST'
            DataSource = dsCadastro
            TabOrder = 22
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 371
            Top = 277
            Width = 258
            Height = 21
            DataField = 'PRO_CST_IPI'
            DataSource = dsCadastro
            TabOrder = 23
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 16
            Top = 317
            Width = 257
            Height = 21
            DataField = 'PRO_CST_PIS'
            DataSource = dsCadastro
            TabOrder = 24
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 667
        Height = 85
        inherited lblConsultar: TLabel
          Top = 21
        end
        inherited rgConsultar: TRadioGroup
          Height = 78
          Items.Strings = (
            'C'#243'di&go'
            '&Nome/Descri'#231#227'o'
            '&Refer'#234'ncia'
            '&Localiza'#231#227'o')
        end
        inherited edtConsultar: TEdit
          Top = 36
          Width = 410
        end
        inherited btnConsultar: TBitBtn
          Left = 560
          Top = 32
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 633
        Top = 85
        Height = 394
      end
      inherited grdConsultar: TDBGrid
        Top = 85
        Width = 633
        Height = 394
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
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
            FieldName = 'PRO_REFERENCIA'
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 80
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
            Width = 258
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VLVENDA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vl. Venda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_LOCALIZACAO'
            Title.Caption = 'Localiza'#231#227'o'
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
    Top = 507
    Width = 675
  end
  inherited dsConsultar: TDataSource
    Left = 380
    Top = 66
  end
  inherited dspConsultar: TDataSetProvider
    Left = 444
    Top = 66
  end
  inherited cdsConsultar: TClientDataSet
    Left = 484
    Top = 66
    object cdsConsultarPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      Required = True
      Size = 13
    end
    object cdsConsultarPRO_BARRAS: TStringField
      FieldName = 'PRO_BARRAS'
      Size = 13
    end
    object cdsConsultarPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 60
    end
    object cdsConsultarPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
      DisplayFormat = '#,##0.#00'
      EditFormat = '#,##0.#00'
    end
    object cdsConsultarPRO_IPI: TFloatField
      FieldName = 'PRO_IPI'
    end
    object cdsConsultarPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      Size = 14
    end
    object cdsConsultarPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      Size = 80
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsProduto
    OnDataChange = dsCadastroDataChange
    Left = 284
    Top = 64
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "PRO_CODIGO", "PRO_BARRAS", "PRO_DESCRICAO", "PRO_VLVENDA' +
        '", '
      '"PRO_IPI", "PRO_REFERENCIA", "PRO_LOCALIZACAO" from "PRODUTOS"')
    Left = 412
    Top = 64
  end
end

object frmEmissaoNotaFiscal: TfrmEmissaoNotaFiscal
  Left = 117
  Top = 40
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o Nota Fiscal'
  ClientHeight = 523
  ClientWidth = 743
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
    Width = 743
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = dbeNumero
      Transparent = True
    end
    object Label2: TLabel
      Left = 148
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Chave'
      FocusControl = dbeChave
      Transparent = True
    end
    object Label3: TLabel
      Left = 572
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Status'
      FocusControl = dbeStatus
      Transparent = True
    end
    object dbeNumero: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'NTF_NUMERONOTA'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dbeChave: TDBEdit
      Left = 148
      Top = 24
      Width = 418
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'NTF_CHAVE'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object dbeStatus: TDBEdit
      Left = 572
      Top = 24
      Width = 114
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'NTF_SITUACAO_ENUM'
      DataSource = dsCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 58
    Width = 743
    Height = 424
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 741
      Height = 422
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados da NF-e'
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 733
          Height = 394
          ActivePage = TabSheet7
          Align = alClient
          TabOrder = 0
          object TabSheet7: TTabSheet
            Caption = 'NF-e'
            object Label4: TLabel
              Left = 8
              Top = 16
              Width = 35
              Height = 13
              Caption = 'Modelo'
              FocusControl = dbeModelo
              Transparent = True
            end
            object Label5: TLabel
              Left = 52
              Top = 16
              Width = 31
              Height = 13
              Caption = 'S'#233'rie *'
              FocusControl = dbeSerie
              Transparent = True
            end
            object Label6: TLabel
              Left = 127
              Top = 16
              Width = 86
              Height = 13
              Caption = 'Data de emiss'#227'o *'
              FocusControl = dbeDTEMIS
              Transparent = True
            end
            object Label7: TLabel
              Left = 254
              Top = 16
              Width = 109
              Height = 13
              Caption = 'Data de sa'#237'da/entrada'
            end
            object Label8: TLabel
              Left = 8
              Top = 56
              Width = 115
              Height = 13
              Caption = 'Natureza da Opera'#231#227'o *'
              FocusControl = dbeNatureza
              Transparent = True
            end
            object Label9: TLabel
              Left = 380
              Top = 56
              Width = 108
              Height = 13
              Caption = 'Forma de Pagamento *'
              FocusControl = cmbFormaPaga
              Transparent = True
            end
            object Label10: TLabel
              Left = 8
              Top = 96
              Width = 92
              Height = 13
              Caption = 'Forma de emiss'#227'o *'
              FocusControl = cmbFormaEmissao
              Transparent = True
            end
            object Label11: TLabel
              Left = 213
              Top = 96
              Width = 111
              Height = 13
              Caption = 'Finalidade de emiss'#227'o *'
              FocusControl = cmbFinalidade
            end
            object Label15: TLabel
              Left = 380
              Top = 96
              Width = 21
              Height = 13
              Caption = 'UF *'
              Transparent = True
            end
            object Label12: TLabel
              Left = 438
              Top = 96
              Width = 54
              Height = 13
              Caption = 'Munic'#237'pio *'
              FocusControl = DBLookupComboBox1
              Transparent = True
            end
            object Label56: TLabel
              Left = 544
              Top = 16
              Width = 81
              Height = 13
              Caption = 'N'#186'. Cupom Fiscal'
              FocusControl = dbeNRCUPOM
              Transparent = True
            end
            object dbeModelo: TDBEdit
              Left = 8
              Top = 32
              Width = 40
              Height = 21
              Color = clSilver
              DataField = 'NTF_MODELO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object dbeSerie: TDBEdit
              Left = 52
              Top = 32
              Width = 69
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NTF_SERIE'
              DataSource = dsCadastro
              MaxLength = 3
              TabOrder = 1
            end
            object dbeDTEMIS: TDBDateEdit
              Left = 127
              Top = 32
              Width = 121
              Height = 21
              DataField = 'NTF_DTEMISSAO'
              DataSource = dsCadastro
              NumGlyphs = 2
              TabOrder = 2
              OnExit = dbeDTEMISExit
            end
            object dbeDtSaidaEntrada: TDBDateEdit
              Left = 253
              Top = 32
              Width = 121
              Height = 21
              DataField = 'NTF_DTSAIDA_ENTRADA'
              DataSource = dsCadastro
              NumGlyphs = 2
              TabOrder = 3
            end
            object grbTipoDoc: TDBRadioGroup
              Left = 379
              Top = 16
              Width = 160
              Height = 37
              Caption = '[ Tipo de Documento ]'
              Columns = 2
              DataField = 'NTF_TIPODOCUMENTO'
              DataSource = dsCadastro
              Items.Strings = (
                '0 - Entrada'
                '1 - Sa'#237'da')
              TabOrder = 4
              Values.Strings = (
                '0'
                '1')
            end
            object dbeNatureza: TDBEdit
              Left = 8
              Top = 72
              Width = 363
              Height = 21
              Hint = 
                'Informar a natureza da opera'#231#227'o de que decorrer a sa'#237'da ou a ent' +
                'rada, tais como: venda, compra, transfer'#234'ncia, devolu'#231#227'o, import' +
                'a'#231#227'o, consigna'#231#227'o, remessa (para fins de demonstra'#231#227'o, de indust' +
                'rializa'#231#227'o ou outra), conforme previsto na al'#237'nea '#39'i'#39', inciso I,' +
                ' art. 19 do CONV'#202'NIO S/N'#186', de 15 de dezembro de 1970.'
              CharCase = ecUpperCase
              DataField = 'NTF_DESCNATUREZA'
              DataSource = dsCadastro
              TabOrder = 6
            end
            object cmbFormaPaga: TDBLookupComboBox
              Left = 380
              Top = 72
              Width = 274
              Height = 21
              DataField = 'NTF_DESCFPAGA'
              DataSource = dsCadastro
              TabOrder = 7
            end
            object cmbFormaEmissao: TDBLookupComboBox
              Left = 8
              Top = 112
              Width = 200
              Height = 21
              DataField = 'NTF_DESCEMISSAO'
              DataSource = dsCadastro
              TabOrder = 8
            end
            object cmbFinalidade: TDBLookupComboBox
              Left = 213
              Top = 112
              Width = 161
              Height = 21
              DataField = 'NTF_DESCFINALIDADE'
              DataSource = dsCadastro
              TabOrder = 9
            end
            object cmbUF: TDBComboBox
              Left = 380
              Top = 112
              Width = 52
              Height = 22
              Style = csOwnerDrawFixed
              CharCase = ecUpperCase
              DataField = 'NTF_UFDESTINO'
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
              TabOrder = 10
              OnExit = cmbUFExit
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 438
              Top = 112
              Width = 215
              Height = 21
              DataField = 'NTF_NMCIDADE'
              DataSource = dsCadastro
              TabOrder = 11
            end
            object GroupBox1: TGroupBox
              Left = 8
              Top = 143
              Width = 644
              Height = 114
              TabOrder = 12
              object Label13: TLabel
                Left = 16
                Top = 12
                Width = 71
                Height = 13
                Caption = 'Valor total nota'
                FocusControl = DBEdit1
              end
              object Label14: TLabel
                Left = 160
                Top = 12
                Width = 71
                Height = 13
                Caption = 'Valor do ICMS '
                FocusControl = DBEdit2
              end
              object Label16: TLabel
                Left = 304
                Top = 12
                Width = 70
                Height = 13
                Caption = 'Valor ICSM ST'
                FocusControl = DBEdit3
              end
              object Label17: TLabel
                Left = 16
                Top = 53
                Width = 45
                Height = 13
                Caption = 'Protocolo'
                FocusControl = DBEdit4
              end
              object Label18: TLabel
                Left = 304
                Top = 53
                Width = 23
                Height = 13
                Caption = 'Data'
                FocusControl = DBEdit5
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 28
                Width = 134
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NTF_VALORTOTALNOTA'
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
              object DBEdit2: TDBEdit
                Left = 160
                Top = 28
                Width = 134
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NTF_VALORICMS'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 304
                Top = 28
                Width = 134
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NTF_VALORICMSST'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 16
                Top = 69
                Width = 278
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NTF_PROTOCOLO'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 304
                Top = 69
                Width = 134
                Height = 21
                TabStop = False
                Color = clSilver
                DataField = 'NTF_DATAPROTOCOLO'
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
            end
            object dbeNRCUPOM: TDBEdit
              Left = 544
              Top = 32
              Width = 108
              Height = 21
              DataField = 'NTF_NUMCUPOM'
              DataSource = dsCadastro
              TabOrder = 5
              OnKeyPress = dbeNRCUPOMKeyPress
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Notas Fiscais Referenciadas'
            ImageIndex = 1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Emitente'
        ImageIndex = 1
        object GroupBox2: TGroupBox
          Left = 8
          Top = 6
          Width = 665
          Height = 187
          Caption = '[ Identifica'#231#227'o ]'
          TabOrder = 0
          object Label19: TLabel
            Left = 8
            Top = 17
            Width = 48
            Height = 13
            Caption = 'Emitente *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label20: TLabel
            Left = 122
            Top = 17
            Width = 70
            Height = 13
            Caption = 'Raz'#227'o Social *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label21: TLabel
            Left = 8
            Top = 98
            Width = 34
            Height = 13
            Caption = 'CNPJ *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label22: TLabel
            Left = 229
            Top = 98
            Width = 94
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label23: TLabel
            Left = 448
            Top = 98
            Width = 199
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual do Substituto Tribut'#225'rio'
            Transparent = True
          end
          object Label24: TLabel
            Left = 8
            Top = 137
            Width = 91
            Height = 13
            Caption = 'Inscri'#231#227'o Municipal'
            Transparent = True
          end
          object Label25: TLabel
            Left = 230
            Top = 137
            Width = 29
            Height = 13
            Caption = 'CNAE'
            Transparent = True
          end
          object Label26: TLabel
            Left = 8
            Top = 57
            Width = 47
            Height = 13
            Caption = 'Fantasia *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object spLocEmitente: TSpeedButton
            Left = 89
            Top = 33
            Width = 23
            Height = 22
            Hint = 'Clique aqui para localizar emitente'
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
            OnClick = spLocEmitenteClick
          end
          object dbeEmitente: TDBEdit
            Left = 8
            Top = 33
            Width = 81
            Height = 21
            DataField = 'NTF_EMITENTE'
            DataSource = dsCadastro
            TabOrder = 0
            OnChange = dbeEmitenteChange
            OnExit = dbeEmitenteExit
          end
          object DBEdit6: TDBEdit
            Left = 120
            Top = 33
            Width = 537
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMI_RAZAOSOCIAL'
            DataSource = dsEmitente
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 8
            Top = 72
            Width = 649
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMI_FANTASIA'
            DataSource = dsEmitente
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 8
            Top = 114
            Width = 209
            Height = 21
            TabStop = False
            Color = clSilver
            DataField = 'EMI_CNPJ'
            DataSource = dsEmitente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit9: TDBEdit
            Left = 229
            Top = 114
            Width = 209
            Height = 21
            DataField = 'EMI_INSCRICAOESTADUAL'
            DataSource = dsEmitente
            TabOrder = 4
            OnKeyPress = DBEdit9KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 448
            Top = 114
            Width = 209
            Height = 21
            DataField = 'EMI_IEST'
            DataSource = dsEmitente
            TabOrder = 5
            OnKeyPress = DBEdit10KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 153
            Width = 209
            Height = 21
            DataField = 'EMI_INSMUNICIPAL'
            DataSource = dsEmitente
            TabOrder = 6
            OnKeyPress = DBEdit11KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 229
            Top = 153
            Width = 209
            Height = 21
            DataField = 'EMI_CNAE_FISCAL'
            DataSource = dsEmitente
            TabOrder = 7
            OnKeyPress = DBEdit12KeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 198
          Width = 665
          Height = 153
          Caption = '[ Endere'#231'o ]'
          TabOrder = 1
          object Label27: TLabel
            Left = 8
            Top = 17
            Width = 61
            Height = 13
            Caption = 'Logradouro *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label28: TLabel
            Left = 558
            Top = 17
            Width = 44
            Height = 13
            Caption = 'Numero *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label29: TLabel
            Left = 8
            Top = 56
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label30: TLabel
            Left = 229
            Top = 56
            Width = 34
            Height = 13
            Caption = 'Bairro *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label31: TLabel
            Left = 448
            Top = 56
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label32: TLabel
            Left = 8
            Top = 98
            Width = 21
            Height = 13
            Caption = 'UF *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label33: TLabel
            Left = 65
            Top = 98
            Width = 54
            Height = 13
            Caption = 'Munic'#237'pio *'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object Label34: TLabel
            Left = 448
            Top = 98
            Width = 24
            Height = 13
            Caption = 'Fone'
            FocusControl = dbeEmitente
            Transparent = True
          end
          object DBEdit13: TDBEdit
            Left = 8
            Top = 32
            Width = 543
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMI_LOGRADOURO'
            DataSource = dsEmitente
            TabOrder = 0
          end
          object DBEdit14: TDBEdit
            Left = 558
            Top = 32
            Width = 100
            Height = 21
            DataField = 'EMI_NUMERO'
            DataSource = dsEmitente
            TabOrder = 1
          end
          object DBEdit15: TDBEdit
            Left = 8
            Top = 72
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMI_NUMERO'
            DataSource = dsEmitente
            TabOrder = 2
          end
          object DBEdit16: TDBEdit
            Left = 229
            Top = 72
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EMI_BAIRRO'
            DataSource = dsEmitente
            TabOrder = 3
          end
          object DBEdit17: TDBEdit
            Left = 448
            Top = 72
            Width = 209
            Height = 21
            DataField = 'EMI_CEP'
            DataSource = dsEmitente
            TabOrder = 4
          end
          object DBComboBox1: TDBComboBox
            Left = 8
            Top = 114
            Width = 52
            Height = 22
            Style = csOwnerDrawFixed
            CharCase = ecUpperCase
            DataField = 'EMI_UF'
            DataSource = dsEmitente
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
          object cmbMunicipios: TDBLookupComboBox
            Left = 65
            Top = 114
            Width = 375
            Height = 21
            DataField = 'EMI_NMCIDADE'
            DataSource = dsEmitente
            TabOrder = 6
          end
          object DBEdit18: TDBEdit
            Left = 448
            Top = 114
            Width = 209
            Height = 21
            DataField = 'EMI_TELEFONE'
            DataSource = dsEmitente
            TabOrder = 7
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Destinat'#225'rio/Remetente'
        ImageIndex = 2
        object GroupBox4: TGroupBox
          Left = 8
          Top = 4
          Width = 673
          Height = 153
          Caption = '[ Identifica'#231#227'o ]'
          TabOrder = 0
          object Label35: TLabel
            Left = 8
            Top = 19
            Width = 86
            Height = 13
            Caption = 'Tipo Documento *'
            Transparent = True
          end
          object Label36: TLabel
            Left = 144
            Top = 19
            Width = 52
            Height = 13
            Caption = 'CNPJ/CPF'
            Transparent = True
          end
          object Label37: TLabel
            Left = 8
            Top = 59
            Width = 103
            Height = 13
            Caption = 'Nome/Raz'#227'o Social *'
            FocusControl = dbeRazao
            Transparent = True
          end
          object spLocCFOP: TSpeedButton
            Left = 331
            Top = 35
            Width = 23
            Height = 22
            Hint = 'Clique aqui para localizar cliente'
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
            OnClick = spLocCFOPClick
          end
          object Label38: TLabel
            Left = 8
            Top = 100
            Width = 87
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual'
            FocusControl = DBEdit19
            Transparent = True
          end
          object Label39: TLabel
            Left = 208
            Top = 100
            Width = 98
            Height = 13
            Caption = 'Inscri'#231#227'o SUFRAMA'
            FocusControl = DBEdit20
            Transparent = True
          end
          object dbeRazao: TDBEdit
            Left = 8
            Top = 75
            Width = 654
            Height = 21
            DataField = 'CLI_NOMERAZAO'
            DataSource = dsCliente
            TabOrder = 2
          end
          object dbeNumDoc: TMaskEdit
            Left = 144
            Top = 35
            Width = 184
            Height = 21
            TabOrder = 1
            OnExit = dbeNumDocExit
          end
          object DBEdit19: TDBEdit
            Left = 8
            Top = 116
            Width = 193
            Height = 21
            DataField = 'CLI_IDENINSEST'
            DataSource = dsCliente
            TabOrder = 3
            OnKeyPress = DBEdit19KeyPress
          end
          object DBEdit20: TDBEdit
            Left = 208
            Top = 116
            Width = 121
            Height = 21
            DataField = 'CLI_INSSUFRAMA'
            DataSource = dsCliente
            TabOrder = 4
            OnKeyPress = DBEdit20KeyPress
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 352
            Top = 101
            Width = 198
            Height = 40
            Caption = '[ Isento do ICMS ]'
            Columns = 2
            DataField = 'CLI_FLISENTO_ICMS'
            DataSource = dsCliente
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object cmbTipoDoc: TComboBox
            Left = 8
            Top = 35
            Width = 131
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            ItemIndex = 0
            TabOrder = 0
            Text = 'CNPJ'
            OnEnter = cmbTipoDocEnter
            OnExit = cmbTipoDocExit
            Items.Strings = (
              'CNPJ'
              'CPF')
          end
        end
        object GroupBox5: TGroupBox
          Left = 9
          Top = 318
          Width = 673
          Height = 48
          Caption = '[ Local Retirada/Entrega ]'
          TabOrder = 1
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 160
          Width = 673
          Height = 155
          Caption = '[ Endere'#231'o ]'
          TabOrder = 2
          object Label40: TLabel
            Left = 8
            Top = 21
            Width = 54
            Height = 13
            Caption = 'Logradouro'
            FocusControl = DBEdit21
            Transparent = True
          end
          object Label41: TLabel
            Left = 564
            Top = 21
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
            FocusControl = DBEdit22
            Transparent = True
          end
          object Label42: TLabel
            Left = 8
            Top = 61
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit23
            Transparent = True
          end
          object Label43: TLabel
            Left = 250
            Top = 61
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit24
            Transparent = True
          end
          object Label44: TLabel
            Left = 564
            Top = 61
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit25
            Transparent = True
          end
          object Label45: TLabel
            Left = 8
            Top = 101
            Width = 22
            Height = 13
            Caption = 'Pa'#237's'
            FocusControl = DBLookupComboBox2
            Transparent = True
          end
          object Label46: TLabel
            Left = 193
            Top = 101
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object Label47: TLabel
            Left = 250
            Top = 101
            Width = 47
            Height = 13
            Caption = 'Munic'#237'pio'
            FocusControl = DBLookupComboBox3
            Transparent = True
          end
          object Label48: TLabel
            Left = 564
            Top = 101
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit26
            Transparent = True
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 37
            Width = 549
            Height = 21
            DataField = 'CLI_LOGRADOURO'
            DataSource = dsCliente
            TabOrder = 0
          end
          object DBEdit22: TDBEdit
            Left = 564
            Top = 37
            Width = 95
            Height = 21
            DataField = 'CLI_NUMERO'
            DataSource = dsCliente
            TabOrder = 1
            OnKeyPress = DBEdit22KeyPress
          end
          object DBEdit23: TDBEdit
            Left = 8
            Top = 77
            Width = 235
            Height = 21
            DataField = 'CLI_COMPLEMENTO'
            DataSource = dsCliente
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 250
            Top = 77
            Width = 307
            Height = 21
            DataField = 'CLI_BAIRRO'
            DataSource = dsCliente
            TabOrder = 3
          end
          object DBEdit25: TDBEdit
            Left = 564
            Top = 77
            Width = 95
            Height = 21
            DataField = 'CLI_CEP'
            DataSource = dsCliente
            TabOrder = 4
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 8
            Top = 117
            Width = 179
            Height = 21
            DataField = 'CLI_NMPAIS'
            DataSource = dsCliente
            TabOrder = 5
          end
          object DBComboBox2: TDBComboBox
            Left = 193
            Top = 117
            Width = 52
            Height = 22
            Style = csOwnerDrawFixed
            CharCase = ecUpperCase
            DataField = 'CLI_UF'
            DataSource = dsCliente
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
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 250
            Top = 117
            Width = 307
            Height = 21
            DataField = 'CLI_NMCIDADE'
            DataSource = dsCliente
            TabOrder = 7
          end
          object DBEdit26: TDBEdit
            Left = 564
            Top = 117
            Width = 95
            Height = 21
            DataField = 'CLI_TELEFONE'
            DataSource = dsCliente
            TabOrder = 8
            OnKeyPress = DBEdit26KeyPress
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Produtos e Servi'#231'os'
        ImageIndex = 3
        object GroupBox7: TGroupBox
          Left = 8
          Top = 16
          Width = 713
          Height = 366
          TabOrder = 0
          object pnlBotoes: TPanel
            Left = 2
            Top = 323
            Width = 709
            Height = 41
            Align = alBottom
            TabOrder = 2
            object btnNovoItem: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Hint = 'Clique aqui para incluir novo item'
              Caption = 'Novo Item'
              TabOrder = 0
              OnClick = btnNovoItemClick
            end
            object btnEditarItem: TBitBtn
              Left = 229
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Editar Item'
              TabOrder = 1
              Visible = False
            end
            object btnExcluiItem: TBitBtn
              Left = 96
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Excluir Item'
              Enabled = False
              TabOrder = 2
              OnClick = btnExcluiItemClick
            end
            object pnlTotalItens: TPanel
              Left = 523
              Top = 1
              Width = 185
              Height = 39
              Align = alRight
              Alignment = taRightJustify
              Caption = '0,00'
              Color = clTeal
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -35
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object btnSalvarItem: TBitBtn
              Left = 344
              Top = 8
              Width = 75
              Height = 25
              Hint = 'Clique aqui para salvar item'
              Caption = 'Salvar Item'
              Enabled = False
              TabOrder = 4
              OnClick = btnSalvarItemClick
            end
            object btnCancelarItem: TBitBtn
              Left = 424
              Top = 8
              Width = 75
              Height = 25
              Hint = 'Clique aqui para cancelar item'
              Caption = 'Cancelar Item'
              Enabled = False
              TabOrder = 5
              OnClick = btnCancelarItemClick
            end
          end
          object grdConsultar: TDBGrid
            Left = 2
            Top = 15
            Width = 675
            Height = 218
            Align = alClient
            Ctl3D = False
            DataSource = dsItensNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CDS_NRITEM'
                Title.Alignment = taCenter
                Title.Caption = 'Item'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_CDPROD'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 85
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
                Width = 202
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_CFOP'
                Title.Alignment = taCenter
                Title.Caption = 'CFOP'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 40
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
                Width = 38
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_QTDECOM'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtde.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLUNITARIO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Unit'#225'rio'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 97
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
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLDESCONTO'
                Title.Caption = 'Desconto'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLACRESCIMO'
                Title.Caption = 'Acr'#233'scimo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_BCICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'BC ICMS'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vl. ICMS'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_VLIPI'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vl. IPI'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_ALIQICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Aliq. ICMS'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CDS_ALIQIPI'
                Title.Alignment = taRightJustify
                Title.Caption = 'Aliq.IPI'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Verdana'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 677
            Top = 15
            Width = 34
            Height = 218
            Align = alRight
            TabOrder = 3
            object sbProximo: TSpeedButton
              Left = 5
              Top = 83
              Width = 25
              Height = 35
              Hint = 'Pr'#243'ximo registro'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                0800000000004002000000000000000000000001000000000000FFFFFF00FFE6
                E600FEE5E500FCE3E300FBE1E100F9DFE000F7DDDE00F7DDDD00F5DBDB00F4DB
                DB00F2D9D900E6D9D900F0D6D700EED4D400EBD2D200E9D0D000E9CFD000E7CD
                CD00E5CBCB00E3C9C900E0C7C700DEC4C400DCC2C200CCC0C000D9C0BF00D7BE
                BD00D4BBBB00D3B9B900D0B7B700CFB5B500CEB4B400CCB3B300C9B0B000C7AE
                AE00C5ACAC00C3AAAA00C1A8A800C1A7A700BFA5A500BDA3A300BCA3A300BAA0
                A100BAA1A000B89E9E00B59C9C00B39A9A00AF969600AD949400A88F8F00A68D
                8D00A18888009F8686009B8382009A818100998080006633330000000000C0C0
                C000000000000000000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000393939393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939393939003939
                3939393939393939393939393939393939393939000037393939393939393939
                39393939393939393939390000370D3839393939393939393939393939393939
                39390000370D260D383939393939393939393939393939393900003706260D2E
                1138393939393939393939393939393900003706260D2C112E15383939393939
                3939393939393900003705210D2B112E15311938393939393939393939390000
                3706210D261038143019331D383939393939393939000037012106260D383938
                18331D331D38393939393939000037012106260D3839393938193321331D3839
                393939393937011D05250C3839393939393821331D170B383939393939393801
                25063839393939393939381D170B383939393939393939380638393939393939
                393939380B383939393939393939393938393939393939393939393938393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939393939393939
                3939393939393939393939393939393939393939393939393939}
              ParentShowHint = False
              ShowHint = True
            end
            object sbUltimo: TSpeedButton
              Left = 5
              Top = 122
              Width = 25
              Height = 35
              Hint = #218'ltimo registro'
              Enabled = False
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000FFFFFF006130
                30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
                0000000000000000000000000000000000000000000000000000777777777777
                7777777777777777777777777777777777777777777777777777777777777777
                7777777777777777777777777777777077777777777777777777770027777777
                7777777777777002327777777777777777770023432777777777777777700234
                3432777777777777770023434343277777777777700234343434327777777777
                0025656565656547777777700256565656565654777777772121212121212121
                2777777777777777777777777777777000000000000000007777777034343434
                3434343617777770456565656565656527777770365656565656565617777770
                4565656565656565277777771212121212121212177777777777777777777777
                7777777777777777777777777777777777777777777777777777}
              ParentShowHint = False
              ShowHint = True
            end
            object sbAnterior: TSpeedButton
              Left = 5
              Top = 44
              Width = 25
              Height = 35
              Hint = 'Registro anterior'
              Enabled = False
              Flat = True
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                0800000000004002000000000000000000000001000000000000FFFFFF00FEE5
                E400FDE3E300FBE1E100F9DFE000F7DEDD00F4DBDB00F2D9D900E6D9D900F0D7
                D700EED4D400EBD2D200E9CFCF00E7CECD00E5CBCB00E3C9C900E0C6C700DEC4
                C500DBC2C200D9C0C000CDC0C000CCC0C000D7BDBD00D5BBBB00D3B9B900D1B7
                B700CFB6B500CFB5B500CDB4B400CCB3B300C7AEAE00C6ACAC00C1A8A800BFA6
                A600BAA0A100B89E9E00B39A9A00B1989800AD949400AA919100A68D8D00A38A
                8A009F8686009D8484009C8283009A818100998080006633330000000000C0C0
                C000000000000000000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131003131313131313131
                313131003131313131313131313100002F31313131313131313100002F313131
                313131313100002F01303131313131313100002F1A3031313131313100002F01
                1E0530313131313100002F1A2A1A303131313131312F011E05210A3031313100
                002F1E2A1A1408303131313131313004210A230D303100002F1E2A1A14083031
                313131313131313005210D241130002F1A2A1A16083031313131313131313131
                300A240D26162F1A2A1A140830313131313131313131313131300D2611281A2A
                1A1408303131313131313131313131313131301128162A1A1408303131313131
                313131313131313131313130162A1A1408303131313131313131313131313131
                3131313130191408303131313131313131313131313131313131313131300830
                3131313131313131313131313131313131313131313130313131313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131313131313131313131
                3131313131313131313131313131313131313131313131313131}
              ParentShowHint = False
              ShowHint = True
            end
            object sbPrimeiro: TSpeedButton
              Left = 5
              Top = 6
              Width = 25
              Height = 35
              Hint = 'Primeiro registro'
              Enabled = False
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000FFFFFF006130
                30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
                0000000000000000000000000000000000000000000000000000777777777777
                7777777777777777777777777777777777777777777777777777777777777770
                0000000000000000777777703434343434343436177777704565656565656565
                2777777036565656565656561777777045656565656565652777777712121212
                1212121217777777777777777777777777777777777777777777777777777770
                0000000000000000777777771212121212121212177777777143434343434341
                7777777777143434343656177777777777714343436561777777777777771434
                3656177777777777777771436561777777777777777777165617777777777777
                7777777161777777777777777777777717777777777777777777777777777777
                7777777777777777777777777777777777777777777777777777}
              ParentShowHint = False
              ShowHint = True
            end
          end
          object pnlDados: TPanel
            Left = 2
            Top = 233
            Width = 709
            Height = 90
            Align = alBottom
            TabOrder = 1
            object Label49: TLabel
              Left = 8
              Top = 4
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
              Transparent = True
            end
            object Label50: TLabel
              Left = 152
              Top = 4
              Width = 48
              Height = 13
              Caption = 'Descri'#231#227'o'
              Transparent = True
            end
            object Label51: TLabel
              Left = 8
              Top = 44
              Width = 55
              Height = 13
              Caption = 'Quantidade'
              Transparent = True
            end
            object Label52: TLabel
              Left = 140
              Top = 44
              Width = 63
              Height = 13
              Caption = 'Valor Unit'#225'rio'
              Transparent = True
            end
            object Label53: TLabel
              Left = 342
              Top = 44
              Width = 46
              Height = 13
              Caption = 'Desconto'
              Transparent = True
            end
            object Label54: TLabel
              Left = 602
              Top = 44
              Width = 46
              Height = 13
              Caption = 'Sub-Total'
              Transparent = True
            end
            object Label55: TLabel
              Left = 470
              Top = 44
              Width = 49
              Height = 13
              Caption = 'Acr'#233'scimo'
              Transparent = True
            end
            object spLocProduto: TSpeedButton
              Left = 128
              Top = 19
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
            object edtCDPROD: TEdit
              Left = 8
              Top = 19
              Width = 121
              Height = 21
              MaxLength = 14
              TabOrder = 0
              OnChange = edtCDPRODChange
              OnExit = edtCDPRODExit
              OnKeyPress = edtCDPRODKeyPress
            end
            object edtDescricao: TEdit
              Left = 152
              Top = 19
              Width = 497
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 120
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object edtQTDE: TCurrencyEdit
              Left = 8
              Top = 59
              Width = 121
              Height = 21
              AutoSize = False
              DecimalPlaces = 4
              DisplayFormat = ',0.00;'
              TabOrder = 1
              OnExit = edtQTDEExit
              OnKeyPress = edtQTDEKeyPress
            end
            object edtValorUnitario: TCurrencyEdit
              Left = 138
              Top = 59
              Width = 121
              Height = 21
              AutoSize = False
              DisplayFormat = ',0.00;'
              TabOrder = 2
              OnExit = edtValorUnitarioExit
              OnKeyPress = edtValorUnitarioKeyPress
            end
            object edtDesconto: TCurrencyEdit
              Left = 268
              Top = 59
              Width = 121
              Height = 21
              AutoSize = False
              DisplayFormat = ',0.00;'
              TabOrder = 3
              OnExit = edtDescontoExit
              OnKeyPress = edtDescontoKeyPress
            end
            object edtAcrescimo: TCurrencyEdit
              Left = 399
              Top = 59
              Width = 121
              Height = 21
              AutoSize = False
              DisplayFormat = ',0.00;'
              TabOrder = 4
              OnExit = edtAcrescimoExit
              OnKeyPress = edtAcrescimoKeyPress
            end
            object edtSubTotal: TCurrencyEdit
              Left = 528
              Top = 59
              Width = 121
              Height = 21
              AutoSize = False
              Color = clSilver
              DisplayFormat = ',0.00;'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Totais'
        ImageIndex = 4
      end
      object TabSheet6: TTabSheet
        Caption = 'Transporte'
        ImageIndex = 5
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 482
    Width = 743
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 2
    object BtAdicionar: TBitBtn
      Left = 8
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
    object BtEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Alterar registro'
      Caption = '&Alterar'
      TabOrder = 1
      Visible = False
      OnClick = BtEditarClick
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
        0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
        1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
        1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
        0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
        11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
        0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
    end
    object BtGravar: TBitBtn
      Left = 446
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Gravar dados'
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
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
      Left = 527
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
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
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar janela'
      Caption = '&Fechar'
      TabOrder = 4
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
    object btnGerarXML: TBitBtn
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gerar XML'
      TabOrder = 5
      OnClick = btnGerarXMLClick
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsNotaFiscal
    OnDataChange = dsCadastroDataChange
    Left = 576
    Top = 48
  end
  object dsEmitente: TDataSource
    AutoEdit = False
    DataSet = dmDados.cdsEmitente
    Left = 608
    Top = 48
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = dmDados.cdsCliente
    Left = 648
    Top = 48
  end
  object dsItensNota: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsItemsNotaFiscal
    Left = 589
    Top = 91
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 509
    Top = 83
  end
end

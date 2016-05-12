inherited frmCadClientesFornecedores: TfrmCadClientesFornecedores
  Left = 203
  Top = 116
  Caption = 'Cadastro Clientes'
  ClientHeight = 525
  ClientWidth = 692
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 692
    Height = 506
    inherited TabSheet1: TTabSheet
      inherited pnlBotoes: TPanel
        Top = 437
        Width = 684
        inherited BtGravar: TBitBtn
          Left = 389
        end
        inherited BtCancelar: TBitBtn
          Left = 470
        end
        inherited BtSair: TBitBtn
          Left = 586
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 684
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 13
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object DBText2: TDBText
          Left = 16
          Top = 28
          Width = 80
          Height = 22
          AutoSize = True
          DataField = 'CLI_CODIGO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object rbTipoPessoa: TRadioGroup
          Left = 490
          Top = 9
          Width = 177
          Height = 40
          Caption = '[ Tipo de Pessoa ]'
          Columns = 2
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica')
          TabOrder = 0
          OnClick = rbTipoPessoaClick
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 57
        Width = 684
        Height = 380
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 2
        object TabSheet3: TTabSheet
          Caption = 'Pessoais'
          object lblCPFCNPJ: TLabel
            Left = 7
            Top = 4
            Width = 52
            Height = 13
            Caption = 'CPF/CNPJ'
            FocusControl = dbeNRCNPJ
          end
          object lblRazao: TLabel
            Left = 8
            Top = 48
            Width = 96
            Height = 13
            Caption = 'Raz'#227'o Social/Nome'
            FocusControl = dbeRazao
          end
          object lblFantasia: TLabel
            Left = 8
            Top = 88
            Width = 111
            Height = 13
            Caption = 'Nome Fantasia/Apelido'
            FocusControl = dbeNMCLIE
          end
          object lblIdentedade: TLabel
            Left = 8
            Top = 128
            Width = 50
            Height = 13
            Caption = 'Identidade'
            FocusControl = dbeIdentidade
          end
          object lblEstCivil: TLabel
            Left = 348
            Top = 128
            Width = 55
            Height = 13
            Caption = 'Estado Civil'
            FocusControl = cmbEstCivil
          end
          object Label7: TLabel
            Left = 8
            Top = 167
            Width = 48
            Height = 13
            Caption = 'Telefone1'
            FocusControl = DBEdit5
          end
          object Label8: TLabel
            Left = 141
            Top = 167
            Width = 48
            Height = 13
            Caption = 'Telefone2'
            FocusControl = DBEdit6
          end
          object Label9: TLabel
            Left = 272
            Top = 167
            Width = 48
            Height = 13
            Caption = 'Telefone3'
            FocusControl = DBEdit7
          end
          object lblOrgao: TLabel
            Left = 205
            Top = 128
            Width = 68
            Height = 13
            Caption = #211'rg'#227'o Emissor'
            FocusControl = dbeOrgao
          end
          object lblUfemissor: TLabel
            Left = 291
            Top = 128
            Width = 53
            Height = 13
            Caption = 'UF Emissor'
          end
          object lblDataAniversario: TLabel
            Left = 402
            Top = 167
            Width = 92
            Height = 13
            Caption = 'Data de anivers'#225'rio'
          end
          object Label50: TLabel
            Left = 8
            Top = 207
            Width = 25
            Height = 13
            Caption = 'Email'
            FocusControl = dbeEmail
            Transparent = True
          end
          object Label6: TLabel
            Left = 7
            Top = 249
            Width = 71
            Height = 13
            Caption = 'Tipo de Cliente'
            FocusControl = DBLookupComboBox1
          end
          object Label10: TLabel
            Left = 533
            Top = 167
            Width = 82
            Height = 13
            Caption = 'Data de cadastro'
          end
          object Label52: TLabel
            Left = 256
            Top = 249
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
          end
          object Label54: TLabel
            Left = 457
            Top = 249
            Width = 44
            Height = 13
            Caption = 'Atividade'
            FocusControl = DBLookupComboBox6
            Transparent = True
          end
          object Label55: TLabel
            Left = 8
            Top = 291
            Width = 73
            Height = 13
            Caption = 'Dia para Fatura'
            FocusControl = dbeDiaFatura
          end
          object Label57: TLabel
            Left = 114
            Top = 291
            Width = 81
            Height = 13
            Caption = 'Limite de Compra'
            FocusControl = DBEdit33
          end
          object dbeNRCNPJ: TDBEdit
            Left = 7
            Top = 20
            Width = 186
            Height = 21
            DataField = 'CLI_CGC'
            DataSource = dsCadastro
            TabOrder = 0
            OnEnter = dbeNRCNPJEnter
            OnExit = dbeNRCNPJExit
          end
          object dbeRazao: TDBEdit
            Left = 8
            Top = 64
            Width = 650
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_RAZAO'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object dbeNMCLIE: TDBEdit
            Left = 8
            Top = 104
            Width = 650
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_FANTASIA'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object dbeIdentidade: TDBEdit
            Left = 8
            Top = 144
            Width = 192
            Height = 21
            DataField = 'CLI_INSCESTADUAL'
            DataSource = dsCadastro
            TabOrder = 3
            OnKeyPress = dbeIdentidadeKeyPress
          end
          object cmbEstCivil: TDBLookupComboBox
            Left = 348
            Top = 144
            Width = 309
            Height = 21
            DataField = 'CLI_NMESTCIVIL'
            DataSource = dsCadastro
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 8
            Top = 183
            Width = 121
            Height = 21
            DataField = 'CLI_FONE1'
            DataSource = dsCadastro
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 141
            Top = 183
            Width = 121
            Height = 21
            DataField = 'CLI_FONE2'
            DataSource = dsCadastro
            TabOrder = 8
          end
          object DBEdit7: TDBEdit
            Left = 272
            Top = 183
            Width = 121
            Height = 21
            DataField = 'CLI_FONE3'
            DataSource = dsCadastro
            TabOrder = 9
          end
          object dbeOrgao: TDBEdit
            Left = 205
            Top = 144
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_ORGAOEMISSOR'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object cmbUFEMISSOR: TDBComboBox
            Left = 291
            Top = 144
            Width = 50
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'CLI_UFEMISSOR'
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
          object dbeDTNASC: TDBDateEdit
            Left = 402
            Top = 183
            Width = 121
            Height = 21
            DataField = 'CLI_DTANIVERSARIO'
            DataSource = dsCadastro
            NumGlyphs = 2
            TabOrder = 10
            OnExit = dbeDTNASCExit
          end
          object dbeEmail: TDBEdit
            Left = 8
            Top = 223
            Width = 650
            Height = 21
            CharCase = ecLowerCase
            DataField = 'CLI_EMAIL'
            DataSource = dsCadastro
            TabOrder = 12
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 7
            Top = 265
            Width = 241
            Height = 21
            DataField = 'CLI_NMTIPOCLIE'
            DataSource = dsCadastro
            TabOrder = 13
          end
          object DBDateEdit2: TDBDateEdit
            Left = 533
            Top = 183
            Width = 121
            Height = 21
            TabStop = False
            DataField = 'CLI_DATACAD'
            DataSource = dsCadastro
            ReadOnly = True
            NumGlyphs = 2
            TabOrder = 11
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 256
            Top = 265
            Width = 193
            Height = 21
            DataField = 'CLI_NOME_SITUACAO'
            DataSource = dsCadastro
            TabOrder = 14
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 457
            Top = 265
            Width = 200
            Height = 21
            DataField = 'CLI_NMATIVIDADE'
            DataSource = dsCadastro
            TabOrder = 15
          end
          object dbeDiaFatura: TDBEdit
            Left = 8
            Top = 307
            Width = 98
            Height = 21
            DataField = 'CLI_DIAFATURA'
            DataSource = dsCadastro
            TabOrder = 16
            OnExit = dbeDiaFaturaExit
            OnKeyPress = dbeDiaFaturaKeyPress
          end
          object DBEdit33: TDBEdit
            Left = 114
            Top = 307
            Width = 134
            Height = 21
            DataField = 'CLI_LIMITE_COMPRA'
            DataSource = dsCadastro
            TabOrder = 17
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 9
            Top = 3
            Width = 657
            Height = 189
            Caption = '[ Resid'#234'ncial ]'
            TabOrder = 0
            object Label12: TLabel
              Left = 8
              Top = 20
              Width = 21
              Height = 13
              Caption = 'CEP'
            end
            object Label13: TLabel
              Left = 96
              Top = 20
              Width = 46
              Height = 13
              Caption = 'Endere'#231'o'
            end
            object Label14: TLabel
              Left = 569
              Top = 20
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label15: TLabel
              Left = 8
              Top = 104
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label16: TLabel
              Left = 82
              Top = 104
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = cmbCidade
            end
            object Label17: TLabel
              Left = 369
              Top = 104
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label18: TLabel
              Left = 8
              Top = 64
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit12
            end
            object Label44: TLabel
              Left = 8
              Top = 143
              Width = 162
              Height = 13
              Caption = 'Tempo Resid'#234'ncia (Ano(s)-Meses)'
              FocusControl = DBEdit2
              Transparent = True
            end
            object dbeCEP: TDBEdit
              Left = 8
              Top = 36
              Width = 81
              Height = 21
              DataField = 'CLI_CEP'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object DBEdit10: TDBEdit
              Left = 96
              Top = 36
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_ENDERECO'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object DBEdit11: TDBEdit
              Left = 569
              Top = 36
              Width = 76
              Height = 21
              DataField = 'CLI_NUMERO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object cmbUFCliente: TDBComboBox
              Left = 8
              Top = 119
              Width = 69
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'CLI_UFCLIENTE'
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
              OnExit = cmbUFClienteExit
            end
            object cmbCidade: TDBLookupComboBox
              Left = 82
              Top = 120
              Width = 281
              Height = 21
              DataField = 'CLI_NMCIDADE'
              DataSource = dsCadastro
              TabOrder = 5
              OnExit = cmbCidadeExit
            end
            object DBEdit12: TDBEdit
              Left = 8
              Top = 80
              Width = 637
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_PONTO_REFERENCIA'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 159
              Width = 69
              Height = 21
              DataField = 'CLI_TEMPO_RESIDENCIA'
              DataSource = dsCadastro
              TabOrder = 7
            end
            object DBEdit1: TDBEdit
              Left = 368
              Top = 120
              Width = 277
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_BAIRRO'
              DataSource = dsCadastro
              TabOrder = 6
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 195
            Width = 657
            Height = 153
            Caption = '[ Cobran'#231'a ]'
            TabOrder = 1
            object Label5: TLabel
              Left = 8
              Top = 20
              Width = 21
              Height = 13
              Caption = 'CEP'
              FocusControl = DBEdit13
              Transparent = True
            end
            object Label19: TLabel
              Left = 96
              Top = 20
              Width = 46
              Height = 13
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit14
              Transparent = True
            end
            object Label20: TLabel
              Left = 569
              Top = 20
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit15
              Transparent = True
            end
            object Label21: TLabel
              Left = 8
              Top = 58
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit16
              Transparent = True
            end
            object Label22: TLabel
              Left = 8
              Top = 100
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label26: TLabel
              Left = 82
              Top = 100
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = cmbCidadeCobranca
            end
            object Label27: TLabel
              Left = 369
              Top = 100
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object DBEdit13: TDBEdit
              Left = 8
              Top = 36
              Width = 81
              Height = 21
              DataField = 'CLI_END_COBRANCA_CEP'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object DBEdit14: TDBEdit
              Left = 96
              Top = 36
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_END_COBRANCA'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object DBEdit15: TDBEdit
              Left = 569
              Top = 36
              Width = 76
              Height = 21
              DataField = 'CLI_END_COBRANCA_NUM'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 8
              Top = 74
              Width = 637
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_END_COBRANCA_COMPL'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object cmbUFCobranca: TDBComboBox
              Left = 8
              Top = 115
              Width = 69
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'CLI_END_COBRANCA_UF'
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
              OnExit = cmbUFCobrancaExit
            end
            object cmbCidadeCobranca: TDBLookupComboBox
              Left = 82
              Top = 115
              Width = 281
              Height = 21
              DataField = 'CLI_CIDADE_COBRANCA'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object DBEdit17: TDBEdit
              Left = 368
              Top = 115
              Width = 277
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_END_COBRANCA_BAIRRO'
              DataSource = dsCadastro
              TabOrder = 6
            end
          end
        end
        object tbsTrabalho: TTabSheet
          Caption = 'Trabalho'
          ImageIndex = 2
          object GroupBox3: TGroupBox
            Left = 9
            Top = 4
            Width = 657
            Height = 185
            TabOrder = 0
            object Label23: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Nome Empresa'
              FocusControl = dbeNomeEmpresa
            end
            object Label24: TLabel
              Left = 8
              Top = 56
              Width = 21
              Height = 13
              Caption = 'CEP'
              FocusControl = DBEdit18
            end
            object Label25: TLabel
              Left = 96
              Top = 56
              Width = 46
              Height = 13
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit19
            end
            object Label30: TLabel
              Left = 569
              Top = 56
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit20
            end
            object Label31: TLabel
              Left = 8
              Top = 96
              Width = 14
              Height = 13
              Caption = 'UF'
            end
            object Label32: TLabel
              Left = 82
              Top = 96
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = cmbEmpCidade
              Transparent = True
            end
            object Label33: TLabel
              Left = 370
              Top = 96
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label38: TLabel
              Left = 8
              Top = 136
              Width = 42
              Height = 13
              Caption = 'Telefone'
              FocusControl = DBEdit24
            end
            object Label39: TLabel
              Left = 136
              Top = 136
              Width = 32
              Height = 13
              Caption = 'Renda'
              FocusControl = DBEdit25
            end
            object dbeNomeEmpresa: TDBEdit
              Left = 8
              Top = 32
              Width = 638
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_EMPRESA_NOME'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object DBEdit18: TDBEdit
              Left = 8
              Top = 72
              Width = 81
              Height = 21
              DataField = 'CLI_EMPRESA_CEP'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object DBEdit19: TDBEdit
              Left = 96
              Top = 72
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_EMPRESA_ENDERECO'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBEdit20: TDBEdit
              Left = 569
              Top = 72
              Width = 76
              Height = 21
              DataField = 'CLI_EMPRESA_NUMERO'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object cmbEmpresaUF: TDBComboBox
              Left = 8
              Top = 111
              Width = 69
              Height = 22
              Style = csOwnerDrawFixed
              DataField = 'CLI_EMPRESA_UF'
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
              OnExit = cmbEmpresaUFExit
            end
            object cmbEmpCidade: TDBLookupComboBox
              Left = 82
              Top = 112
              Width = 281
              Height = 21
              DataField = 'CLI_EMPCIDADE'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object DBEdit24: TDBEdit
              Left = 8
              Top = 152
              Width = 121
              Height = 21
              DataField = 'CLI_EMPRESA_TELEFONE'
              DataSource = dsCadastro
              TabOrder = 7
            end
            object DBEdit25: TDBEdit
              Left = 136
              Top = 152
              Width = 121
              Height = 21
              DataField = 'CLI_EMPRESA_RENDA'
              DataSource = dsCadastro
              TabOrder = 8
            end
            object DBEdit34: TDBEdit
              Left = 370
              Top = 112
              Width = 274
              Height = 21
              DataField = 'CLI_EMPRESA_BAIRRO'
              DataSource = dsCadastro
              TabOrder = 6
            end
          end
        end
        object tbsRespEmp: TTabSheet
          Caption = 'Empresa'
          ImageIndex = 6
          object Label56: TLabel
            Left = 8
            Top = 173
            Width = 96
            Height = 13
            Caption = 'Faturamento Mensal'
            FocusControl = DBEdit32
          end
          object GroupBox4: TGroupBox
            Left = 8
            Top = 8
            Width = 657
            Height = 156
            Caption = '[ Respons'#225'vel pela empresa ]'
            TabOrder = 0
            object Label45: TLabel
              Left = 8
              Top = 21
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit9
              Transparent = True
            end
            object Label46: TLabel
              Left = 8
              Top = 61
              Width = 20
              Height = 13
              Caption = 'CPF'
              FocusControl = dbeCPFResponsavel
              Transparent = True
            end
            object Label47: TLabel
              Left = 161
              Top = 61
              Width = 50
              Height = 13
              Caption = 'Identidade'
              FocusControl = DBEdit29
              Transparent = True
            end
            object Label48: TLabel
              Left = 340
              Top = 61
              Width = 42
              Height = 13
              Caption = 'Telefone'
              FocusControl = DBEdit30
              Transparent = True
            end
            object Label49: TLabel
              Left = 8
              Top = 101
              Width = 25
              Height = 13
              Caption = 'Email'
              FocusControl = DBEdit31
              Transparent = True
            end
            object DBEdit9: TDBEdit
              Left = 8
              Top = 37
              Width = 638
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CLI_RESPONSAVEL_NOME'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object dbeCPFResponsavel: TDBEdit
              Left = 8
              Top = 77
              Width = 147
              Height = 21
              DataField = 'CLI_RESPONSAVEL_CPF'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object DBEdit29: TDBEdit
              Left = 161
              Top = 77
              Width = 173
              Height = 21
              DataField = 'CLI_RESPONSAVEL_RG'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBEdit30: TDBEdit
              Left = 340
              Top = 77
              Width = 134
              Height = 21
              DataField = 'CLI_RESPONSAVEL_TELEFONE'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object DBEdit31: TDBEdit
              Left = 8
              Top = 117
              Width = 638
              Height = 21
              CharCase = ecLowerCase
              DataField = 'CLI_RESPONSAVEL_EMAIL'
              DataSource = dsCadastro
              TabOrder = 4
            end
          end
          object DBEdit32: TDBEdit
            Left = 8
            Top = 189
            Width = 163
            Height = 21
            DataField = 'CLI_FATURAMENTO_MENSAL'
            DataSource = dsCadastro
            TabOrder = 1
          end
        end
        object tbsConjugue: TTabSheet
          Caption = 'Conjugue'
          ImageIndex = 3
          object Label34: TLabel
            Left = 16
            Top = 8
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = dbeCPFConjugue
            Transparent = True
          end
          object Label35: TLabel
            Left = 16
            Top = 53
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit3
            Transparent = True
          end
          object Label36: TLabel
            Left = 16
            Top = 93
            Width = 153
            Height = 13
            Caption = 'Nome da Empresa que Trabalha'
            FocusControl = DBEdit21
            Transparent = True
          end
          object Label37: TLabel
            Left = 16
            Top = 132
            Width = 36
            Height = 13
            Caption = 'Fun'#231#227'o'
            FocusControl = DBEdit22
            Transparent = True
          end
          object Label40: TLabel
            Left = 264
            Top = 132
            Width = 32
            Height = 13
            Caption = 'Renda'
            FocusControl = DBEdit23
            Transparent = True
          end
          object dbeCPFConjugue: TDBEdit
            Left = 16
            Top = 24
            Width = 147
            Height = 21
            DataField = 'CLI_CONJUGUE_CPF'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 69
            Width = 637
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_CONJUGUE_NOME'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit21: TDBEdit
            Left = 16
            Top = 109
            Width = 637
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_CONJUGUE_EMPRESA_NOME'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit22: TDBEdit
            Left = 16
            Top = 148
            Width = 241
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_CONJUGUE_FUNCAO'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit23: TDBEdit
            Left = 264
            Top = 148
            Width = 121
            Height = 21
            DataField = 'CLI_CONJUGUE_RENDA'
            DataSource = dsCadastro
            TabOrder = 4
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Refer'#234'ncias'
          ImageIndex = 4
          object Label41: TLabel
            Left = 16
            Top = 16
            Width = 50
            Height = 13
            Caption = '1'#186' Contato'
            FocusControl = dbeReferencia1
            Transparent = True
          end
          object Label42: TLabel
            Left = 472
            Top = 16
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit26
            Transparent = True
          end
          object Label43: TLabel
            Left = 16
            Top = 56
            Width = 50
            Height = 13
            Caption = '2'#186' Contato'
            FocusControl = DBEdit27
            Transparent = True
          end
          object Label51: TLabel
            Left = 472
            Top = 56
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit28
            Transparent = True
          end
          object Label3: TLabel
            Left = 16
            Top = 96
            Width = 50
            Height = 13
            Caption = '3'#186' Contato'
            FocusControl = DBEdit4
            Transparent = True
          end
          object Label4: TLabel
            Left = 472
            Top = 96
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit8
            Transparent = True
          end
          object dbeReferencia1: TDBEdit
            Left = 16
            Top = 32
            Width = 450
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_REFERENCIA1_NOME'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit26: TDBEdit
            Left = 472
            Top = 32
            Width = 134
            Height = 21
            DataField = 'CLI_REFERENCIA1_TELEFONE'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit27: TDBEdit
            Left = 16
            Top = 72
            Width = 450
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_REFERENCIA2_NOME'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object DBEdit28: TDBEdit
            Left = 472
            Top = 72
            Width = 134
            Height = 21
            DataField = 'CLI_REFERENCIA2_TELEFONE'
            DataSource = dsCadastro
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 112
            Width = 450
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_REFERENCIA3_NOME'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object DBEdit8: TDBEdit
            Left = 472
            Top = 112
            Width = 134
            Height = 21
            DataField = 'CLI_REFERENCIA3_TELEFONE'
            DataSource = dsCadastro
            TabOrder = 5
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Outros'
          ImageIndex = 5
          object Label29: TLabel
            Left = 8
            Top = 9
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
            FocusControl = DBMemo1
            Transparent = True
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 25
            Width = 650
            Height = 81
            DataField = 'CLI_OBSERVACAO'
            DataSource = dsCadastro
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 684
        Height = 83
        inherited lblConsultar: TLabel
          Top = 23
        end
        inherited rgConsultar: TRadioGroup
          Height = 77
          Items.Strings = (
            '&C'#243'digo'
            '&Fantasia/Apelido'
            '&Raz'#227'o Social/Nome'
            'C&PF/CNPJ')
        end
        inherited edtConsultar: TEdit
          Top = 38
          Width = 434
        end
        inherited btnConsultar: TBitBtn
          Left = 574
          Top = 34
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 650
        Top = 83
        Height = 395
      end
      inherited grdConsultar: TDBGrid
        Top = 83
        Width = 650
        Height = 395
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Title.Caption = 'Raz'#227'o Social/Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 241
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FANTASIA'
            Title.Caption = 'Fantasia/Apelido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 193
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPF_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CPF/CNPJ'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 506
    Width = 692
  end
  inherited cdsConsultar: TClientDataSet
    OnCalcFields = cdsConsultarCalcFields
    Left = 340
    object cdsConsultarCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
      DisplayFormat = '0000000'
      EditFormat = '0000000'
    end
    object cdsConsultarCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object cdsConsultarCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
    end
    object cdsConsultarCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsConsultarCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsConsultarCLI_CLIFOR: TStringField
      FieldName = 'CLI_CLIFOR'
      Size = 1
    end
    object cdsConsultarCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      Size = 1
    end
    object cdsConsultarCPF_CNPJ: TStringField
      FieldKind = fkCalculated
      FieldName = 'CPF_CNPJ'
      Size = 18
      Calculated = True
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsCliente
    OnDataChange = dsCadastroDataChange
    Left = 284
    Top = 136
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "CLI_CODIGO", "CLI_RAZAO", "CLI_FANTASIA", "CLI_FONE1", "' +
        'CLI_CGC", "CLI_CLIFOR", "CLI_TIPOPESSOA" from "CLIENTES"')
  end
end

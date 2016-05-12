inherited FrmCadFuncionarios: TFrmCadFuncionarios
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 471
  ClientWidth = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 586
    Height = 452
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'FUN_CODIGO'
      end
      inherited pnlBotoes: TPanel
        Top = 383
        Width = 578
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 578
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 9
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Transparent = True
        end
        object DBText2: TDBText
          Left = 16
          Top = 25
          Width = 80
          Height = 22
          AutoSize = True
          DataField = 'FUN_CODIGO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 57
        Width = 578
        Height = 326
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 2
        object TabSheet3: TTabSheet
          Caption = 'Pessoais'
          object Label3: TLabel
            Left = 8
            Top = 47
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = dbeDescricao
            Transparent = True
          end
          object Label4: TLabel
            Left = 8
            Top = 87
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label5: TLabel
            Left = 200
            Top = 87
            Width = 50
            Height = 13
            Caption = 'Identidade'
            FocusControl = dbeIdentidade
            Transparent = True
          end
          object Label6: TLabel
            Left = 363
            Top = 87
            Width = 68
            Height = 13
            Caption = #211'rg'#227'o Emissor'
            FocusControl = DBEdit4
            Transparent = True
          end
          object lblUfemissor: TLabel
            Left = 473
            Top = 87
            Width = 53
            Height = 13
            Caption = 'UF Emissor'
            Transparent = True
          end
          object Label7: TLabel
            Left = 279
            Top = 127
            Width = 55
            Height = 13
            Caption = 'Estado Civil'
            FocusControl = cmbEstadoCivil
            Transparent = True
          end
          object Label8: TLabel
            Left = 8
            Top = 127
            Width = 60
            Height = 13
            Caption = 'Naturalidade'
            FocusControl = DBEdit5
          end
          object Label9: TLabel
            Left = 8
            Top = 167
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit6
          end
          object Label28: TLabel
            Left = 151
            Top = 167
            Width = 92
            Height = 13
            Caption = 'Data de anivers'#225'rio'
          end
          object Label10: TLabel
            Left = 279
            Top = 167
            Width = 82
            Height = 13
            Caption = 'Data de cadastro'
          end
          object Label11: TLabel
            Left = 8
            Top = 207
            Width = 61
            Height = 13
            Caption = 'Nome do Pai'
            FocusControl = DBEdit7
            Transparent = True
          end
          object Label12: TLabel
            Left = 8
            Top = 247
            Width = 67
            Height = 13
            Caption = 'Nome da M'#227'e'
            FocusControl = DBEdit8
            Transparent = True
          end
          object Label33: TLabel
            Left = 8
            Top = 8
            Width = 36
            Height = 13
            Caption = 'Fun'#231#227'o'
            FocusControl = cmbFuncao
          end
          object dbeDescricao: TDBEdit
            Left = 8
            Top = 63
            Width = 524
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_NOME'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 103
            Width = 186
            Height = 21
            DataField = 'FUN_CPFCGC'
            DataSource = dsCadastro
            TabOrder = 2
          end
          object dbeIdentidade: TDBEdit
            Left = 200
            Top = 103
            Width = 157
            Height = 21
            DataField = 'FUN_IDENTIDADE'
            DataSource = dsCadastro
            TabOrder = 3
            OnKeyPress = dbeIdentidadeKeyPress
          end
          object DBEdit4: TDBEdit
            Left = 363
            Top = 103
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_ORIDEN'
            DataSource = dsCadastro
            TabOrder = 4
          end
          object cmbUFEMISSOR: TDBComboBox
            Left = 473
            Top = 103
            Width = 58
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'FUN_UFIDEN'
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
          object cmbEstadoCivil: TDBLookupComboBox
            Left = 279
            Top = 143
            Width = 249
            Height = 21
            DataField = 'FUN_NMESTCIVIL'
            DataSource = dsCadastro
            TabOrder = 7
          end
          object DBEdit5: TDBEdit
            Left = 8
            Top = 143
            Width = 264
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_NATUREZA'
            DataSource = dsCadastro
            TabOrder = 6
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 183
            Width = 134
            Height = 21
            DataField = 'FUN_FONE'
            DataSource = dsCadastro
            TabOrder = 8
          end
          object dbeDTNASC: TDBDateEdit
            Left = 151
            Top = 182
            Width = 121
            Height = 21
            DataField = 'FUN_DTNASCIMENTO'
            DataSource = dsCadastro
            NumGlyphs = 2
            TabOrder = 9
            OnExit = dbeDTNASCExit
          end
          object DBDateEdit2: TDBDateEdit
            Left = 279
            Top = 182
            Width = 121
            Height = 21
            TabStop = False
            DataField = 'FUN_DTCADA'
            DataSource = dsCadastro
            ReadOnly = True
            NumGlyphs = 2
            TabOrder = 10
          end
          object DBEdit7: TDBEdit
            Left = 8
            Top = 223
            Width = 524
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_NOMPAI'
            DataSource = dsCadastro
            TabOrder = 11
          end
          object DBEdit8: TDBEdit
            Left = 8
            Top = 263
            Width = 524
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_NOMMAE'
            DataSource = dsCadastro
            TabOrder = 12
          end
          object cmbFuncao: TDBLookupComboBox
            Left = 8
            Top = 24
            Width = 524
            Height = 21
            DataField = 'FUN_NMCARGO'
            DataSource = dsCadastro
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 1
          object Label13: TLabel
            Left = 8
            Top = 8
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = dbeCEP
          end
          object Label14: TLabel
            Left = 98
            Top = 8
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit10
          end
          object Label15: TLabel
            Left = 9
            Top = 50
            Width = 14
            Height = 13
            Caption = 'UF'
            Transparent = True
          end
          object Label16: TLabel
            Left = 71
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = cmbCidade
            Transparent = True
          end
          object Label17: TLabel
            Left = 8
            Top = 92
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit11
            Transparent = True
          end
          object dbeCEP: TDBEdit
            Left = 8
            Top = 25
            Width = 85
            Height = 21
            DataField = 'FUN_CEP'
            DataSource = dsCadastro
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 98
            Top = 24
            Width = 471
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_ENDERECO'
            DataSource = dsCadastro
            TabOrder = 1
          end
          object cmbUFfuncionario: TDBComboBox
            Left = 9
            Top = 66
            Width = 58
            Height = 22
            Style = csOwnerDrawFixed
            CharCase = ecUpperCase
            DataField = 'FUN_UFFUNC'
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
            OnExit = cmbUFfuncionarioExit
          end
          object cmbCidade: TDBLookupComboBox
            Left = 71
            Top = 66
            Width = 498
            Height = 21
            DataField = 'FUN_NMCIDADE'
            DataSource = dsCadastro
            TabOrder = 3
            OnEnter = cmbCidadeEnter
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 108
            Width = 560
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FUN_BAIRRO'
            DataSource = dsCadastro
            TabOrder = 4
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Complemento'
          ImageIndex = 2
          object Label19: TLabel
            Left = 8
            Top = 13
            Width = 36
            Height = 13
            Caption = 'Carteira'
            FocusControl = dbeCarteira
          end
          object Label20: TLabel
            Left = 8
            Top = 53
            Width = 26
            Height = 13
            Caption = 'Titulo'
            FocusControl = DBEdit13
          end
          object Label21: TLabel
            Left = 184
            Top = 53
            Width = 31
            Height = 13
            Caption = 'Se'#231#227'o'
            FocusControl = DBEdit14
          end
          object Label22: TLabel
            Left = 260
            Top = 53
            Width = 25
            Height = 13
            Caption = 'Zona'
            FocusControl = DBEdit15
          end
          object Label23: TLabel
            Left = 8
            Top = 93
            Width = 32
            Height = 13
            Caption = 'Sal'#225'rio'
            FocusControl = DBEdit16
          end
          object Label24: TLabel
            Left = 135
            Top = 93
            Width = 45
            Height = 13
            Caption = 'Comiss'#227'o'
            FocusControl = DBEdit17
          end
          object Label25: TLabel
            Left = 7
            Top = 133
            Width = 71
            Height = 13
            Caption = 'Data Admiss'#227'o'
          end
          object Label26: TLabel
            Left = 135
            Top = 133
            Width = 72
            Height = 13
            Caption = 'Data Demiss'#227'o'
          end
          object Label27: TLabel
            Left = 8
            Top = 172
            Width = 79
            Height = 13
            Caption = 'Hor'#225'rio Trabalho'
            FocusControl = DBEdit18
          end
          object Label30: TLabel
            Left = 160
            Top = 173
            Width = 42
            Height = 13
            Caption = 'S'#225'bados'
            FocusControl = DBEdit20
          end
          object Label29: TLabel
            Left = 70
            Top = 191
            Width = 11
            Height = 13
            Caption = #224's'
            Transparent = True
          end
          object Label31: TLabel
            Left = 222
            Top = 191
            Width = 11
            Height = 13
            Caption = #224's'
            Transparent = True
          end
          object Label32: TLabel
            Left = 135
            Top = 13
            Width = 65
            Height = 13
            Caption = 'Data Emiss'#227'o'
          end
          object dbeCarteira: TDBEdit
            Left = 8
            Top = 29
            Width = 121
            Height = 21
            DataField = 'FUN_NRCART'
            DataSource = dsCadastro
            TabOrder = 0
            OnKeyPress = dbeCarteiraKeyPress
          end
          object DBEdit13: TDBEdit
            Left = 8
            Top = 69
            Width = 170
            Height = 21
            DataField = 'FUN_TITULO'
            DataSource = dsCadastro
            TabOrder = 2
            OnKeyPress = DBEdit13KeyPress
          end
          object DBEdit14: TDBEdit
            Left = 184
            Top = 69
            Width = 70
            Height = 21
            DataField = 'FUN_CDSECA'
            DataSource = dsCadastro
            TabOrder = 3
            OnKeyPress = DBEdit14KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 260
            Top = 69
            Width = 43
            Height = 21
            DataField = 'FUN_CDZONA'
            DataSource = dsCadastro
            TabOrder = 4
            OnKeyPress = DBEdit15KeyPress
          end
          object DBEdit16: TDBEdit
            Left = 8
            Top = 109
            Width = 121
            Height = 21
            DataField = 'FUN_VLSALA'
            DataSource = dsCadastro
            TabOrder = 5
          end
          object DBEdit17: TDBEdit
            Left = 135
            Top = 109
            Width = 134
            Height = 21
            DataField = 'FUN_PECOMI'
            DataSource = dsCadastro
            TabOrder = 6
          end
          object dbeDTAdmissao: TDBDateEdit
            Left = 7
            Top = 148
            Width = 121
            Height = 21
            DataField = 'FUN_DTADMICAO'
            DataSource = dsCadastro
            NumGlyphs = 2
            TabOrder = 7
            OnExit = dbeDTAdmissaoExit
          end
          object dbeDtDemissao: TDBDateEdit
            Left = 135
            Top = 148
            Width = 121
            Height = 21
            TabStop = False
            DataField = 'FUN_DTDEMICAO'
            DataSource = dsCadastro
            ReadOnly = True
            NumGlyphs = 2
            TabOrder = 8
            OnExit = dbeDtDemissaoExit
          end
          object DBEdit18: TDBEdit
            Left = 8
            Top = 189
            Width = 56
            Height = 21
            DataField = 'FUN_HOENT1'
            DataSource = dsCadastro
            TabOrder = 9
          end
          object DBEdit19: TDBEdit
            Left = 88
            Top = 189
            Width = 56
            Height = 21
            DataField = 'FUN_HOSAI1'
            DataSource = dsCadastro
            TabOrder = 10
          end
          object DBEdit20: TDBEdit
            Left = 160
            Top = 189
            Width = 56
            Height = 21
            DataField = 'FUN_HOENT2'
            DataSource = dsCadastro
            TabOrder = 11
          end
          object DBEdit21: TDBEdit
            Left = 240
            Top = 189
            Width = 56
            Height = 21
            DataField = 'FUN_HOSAI2'
            DataSource = dsCadastro
            TabOrder = 12
          end
          object dbeDtEmissao: TDBDateEdit
            Left = 135
            Top = 28
            Width = 121
            Height = 21
            DataField = 'FUN_RGEMIS'
            DataSource = dsCadastro
            NumGlyphs = 2
            TabOrder = 1
            OnExit = dbeDtEmissaoExit
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 578
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 544
        Height = 351
      end
      inherited grdConsultar: TDBGrid
        Width = 544
        Height = 351
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FUN_CODIGO'
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
            FieldName = 'FUN_NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 438
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 452
    Width = 586
  end
  inherited dsConsultar: TDataSource
    Left = 236
    Top = 98
  end
  inherited dspConsultar: TDataSetProvider
    Left = 380
    Top = 98
  end
  inherited cdsConsultar: TClientDataSet
    Left = 444
    Top = 98
    object cdsConsultarFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsConsultarFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 40
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsFuncionario
    OnDataChange = dsCadastroDataChange
    Left = 540
    Top = 104
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      'select "FUN_CODIGO", "FUN_NOME" from "FUNCIONARIOS"')
    Left = 308
    Top = 96
  end
end

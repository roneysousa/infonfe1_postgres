inherited frmCadEmitente: TfrmCadEmitente
  Left = 197
  Top = 83
  Caption = 'Cadastro de Lojas'
  ClientHeight = 552
  ClientWidth = 612
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 612
    Height = 533
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'EMI_CODIGO'
      end
      inherited pnlBotoes: TPanel
        Top = 464
        Width = 604
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 51
        Width = 569
        Height = 146
        Caption = '[ Empresa ]'
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 70
          Height = 13
          Caption = 'Raz'#227'o Social *'
          FocusControl = dbeRazao
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 56
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = dbeFantasia
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 96
          Width = 34
          Height = 13
          Caption = 'CNPJ *'
          FocusControl = dbeCNPJ
          Transparent = True
        end
        object Label5: TLabel
          Left = 202
          Top = 96
          Width = 94
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual *'
          FocusControl = dbeInscricaoEstadual
          Transparent = True
        end
        object dbeRazao: TDBEdit
          Left = 8
          Top = 32
          Width = 540
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_RAZAOSOCIAL'
          DataSource = dsCadastro
          TabOrder = 0
          OnExit = dbeRazaoExit
        end
        object dbeFantasia: TDBEdit
          Left = 8
          Top = 72
          Width = 540
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_FANTASIA'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbeCNPJ: TDBEdit
          Left = 8
          Top = 112
          Width = 186
          Height = 21
          DataField = 'EMI_CNPJ'
          DataSource = dsCadastro
          TabOrder = 2
          OnExit = dbeCNPJExit
        end
        object dbeInscricaoEstadual: TDBEdit
          Left = 202
          Top = 112
          Width = 186
          Height = 21
          DataField = 'EMI_INSCRICAOESTADUAL'
          DataSource = dsCadastro
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 200
        Width = 569
        Height = 146
        Caption = '[ Endere'#231'o ]'
        TabOrder = 2
        object Label9: TLabel
          Left = 8
          Top = 16
          Width = 61
          Height = 13
          Caption = 'Logradouro *'
          FocusControl = dbeLogradouro
          Transparent = True
        end
        object Label10: TLabel
          Left = 447
          Top = 16
          Width = 44
          Height = 13
          Caption = 'N'#250'mero *'
          FocusControl = dbeNumero
          Transparent = True
        end
        object Label11: TLabel
          Left = 8
          Top = 56
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = dbeComplemento
          Transparent = True
        end
        object Label12: TLabel
          Left = 241
          Top = 56
          Width = 34
          Height = 13
          Caption = 'Bairro *'
          FocusControl = dbeBairro
          Transparent = True
        end
        object Label13: TLabel
          Left = 447
          Top = 56
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = dbeCEP
          Transparent = True
        end
        object Label14: TLabel
          Left = 8
          Top = 96
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
          Transparent = True
        end
        object Label15: TLabel
          Left = 184
          Top = 96
          Width = 21
          Height = 13
          Caption = 'UF *'
          Transparent = True
        end
        object Label16: TLabel
          Left = 241
          Top = 96
          Width = 54
          Height = 13
          Caption = 'Munic'#237'pio *'
          Transparent = True
        end
        object Label17: TLabel
          Left = 447
          Top = 96
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit16
          Transparent = True
        end
        object dbeLogradouro: TDBEdit
          Left = 8
          Top = 32
          Width = 432
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_LOGRADOURO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object dbeNumero: TDBEdit
          Left = 447
          Top = 32
          Width = 112
          Height = 21
          DataField = 'EMI_NUMERO'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbeComplemento: TDBEdit
          Left = 8
          Top = 72
          Width = 227
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_COMPLEMENTO'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbeBairro: TDBEdit
          Left = 241
          Top = 72
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_BAIRRO'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object dbeCEP: TDBEdit
          Left = 447
          Top = 72
          Width = 112
          Height = 21
          DataField = 'EMI_CEP'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 447
          Top = 112
          Width = 112
          Height = 21
          DataField = 'EMI_TELEFONE'
          DataSource = dsCadastro
          TabOrder = 8
        end
        object cmbUF: TDBComboBox
          Left = 184
          Top = 112
          Width = 52
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'EMI_UF'
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
          OnExit = cmbUFExit
        end
        object cmbPaises: TDBLookupComboBox
          Left = 8
          Top = 112
          Width = 170
          Height = 21
          DataField = 'EMI_NMPAIS'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object cmbMunicipios: TDBLookupComboBox
          Left = 241
          Top = 112
          Width = 200
          Height = 21
          DataField = 'EMI_NMCIDADE'
          DataSource = dsCadastro
          TabOrder = 7
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 349
        Width = 569
        Height = 108
        Caption = '[ Respons'#225'vel pela empresa ]'
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label7: TLabel
          Left = 8
          Top = 56
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = dbeCPF
          Transparent = True
        end
        object Label8: TLabel
          Left = 168
          Top = 56
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit3
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 32
          Width = 540
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMI_NOME_RESPONSAVEL'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object dbeCPF: TDBEdit
          Left = 8
          Top = 72
          Width = 147
          Height = 21
          DataField = 'EMI_NUMCPF'
          DataSource = dsCadastro
          TabOrder = 1
          OnExit = dbeCPFExit
        end
        object DBEdit3: TDBEdit
          Left = 168
          Top = 72
          Width = 134
          Height = 21
          DataField = 'EMI_FONE_RESPONSAVEL'
          DataSource = dsCadastro
          TabOrder = 2
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 604
        Height = 81
        inherited lblConsultar: TLabel
          Left = 139
          Top = 20
        end
        inherited rgConsultar: TRadioGroup
          Height = 66
          Items.Strings = (
            '&C'#243'digo'
            '&Nome/Descri'#231#227'o'
            'C&NPJ')
        end
        inherited edtConsultar: TEdit
          Left = 139
          Top = 35
        end
        inherited btnConsultar: TBitBtn
          Left = 476
          Top = 32
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 570
        Top = 81
        Height = 424
      end
      inherited grdConsultar: TDBGrid
        Top = 81
        Width = 570
        Height = 424
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_RAZAOSOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMI_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 533
    Width = 612
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarEMI_RAZAOSOCIAL: TStringField
      FieldName = 'EMI_RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsConsultarEMI_FANTASIA: TStringField
      FieldName = 'EMI_FANTASIA'
      Size = 50
    end
    object cdsConsultarEMI_CNPJ: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_CNPJ'
      EditMask = '##.###.###-####-##;0;_'
      Size = 14
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsEmitente
    OnDataChange = dsCadastroDataChange
    Top = 88
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      'Select "EMI_CODIGO", "EMI_RAZAOSOCIAL", "EMI_FANTASIA",'
      '"EMI_CNPJ" from "EMITENTES" ')
    Top = 176
  end
end

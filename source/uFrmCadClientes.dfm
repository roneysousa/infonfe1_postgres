inherited frmCadClientes: TfrmCadClientes
  Left = 195
  Top = 123
  Caption = 'Cadastro de Clientes'
  ClientHeight = 462
  ClientWidth = 601
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 601
    Height = 443
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'CLI_CODIGO'
      end
      inherited pnlBotoes: TPanel
        Top = 374
        Width = 593
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 56
        Width = 561
        Height = 148
        Caption = '[ Cliente ]'
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 19
          Width = 103
          Height = 13
          Caption = 'Nome/Raz'#227'o Social *'
          FocusControl = dbeRazao
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 59
          Width = 86
          Height = 13
          Caption = 'Tipo Documento *'
          FocusControl = cmbTipoDoc
          Transparent = True
        end
        object Label4: TLabel
          Left = 144
          Top = 59
          Width = 117
          Height = 13
          Caption = 'N'#250'mero do Documento *'
          FocusControl = dbeNumDoc
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 99
          Width = 87
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label14: TLabel
          Left = 208
          Top = 99
          Width = 98
          Height = 13
          Caption = 'Inscri'#231#227'o SUFRAMA'
          FocusControl = DBEdit2
          Transparent = True
        end
        object dbeRazao: TDBEdit
          Left = 8
          Top = 35
          Width = 542
          Height = 21
          DataField = 'CLI_NOMERAZAO'
          DataSource = dsCadastro
          TabOrder = 0
          OnExit = dbeRazaoExit
        end
        object cmbTipoDoc: TDBLookupComboBox
          Left = 8
          Top = 75
          Width = 129
          Height = 21
          DataField = 'CLI_TPDOCU'
          DataSource = dsCadastro
          TabOrder = 1
          OnExit = cmbTipoDocExit
        end
        object dbeNumDoc: TDBEdit
          Left = 144
          Top = 75
          Width = 186
          Height = 21
          DataField = 'CLI_NRDOCUMENTO'
          DataSource = dsCadastro
          TabOrder = 2
          OnExit = dbeNumDocExit
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 115
          Width = 193
          Height = 21
          DataField = 'CLI_IDENINSEST'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 208
          Top = 115
          Width = 121
          Height = 21
          DataField = 'CLI_INSSUFRAMA'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 352
          Top = 97
          Width = 198
          Height = 40
          Caption = '[ Isento do ICMS ]'
          Columns = 2
          DataField = 'CLI_FLISENTO_ICMS'
          DataSource = dsCadastro
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 208
        Width = 561
        Height = 155
        Caption = '[ Endere'#231'o ]'
        TabOrder = 2
        object Label5: TLabel
          Left = 8
          Top = 21
          Width = 54
          Height = 13
          Caption = 'Logradouro'
          FocusControl = DBEdit3
          Transparent = True
        end
        object Label6: TLabel
          Left = 456
          Top = 21
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label7: TLabel
          Left = 8
          Top = 61
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label8: TLabel
          Left = 250
          Top = 61
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit6
          Transparent = True
        end
        object Label9: TLabel
          Left = 456
          Top = 61
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit7
          Transparent = True
        end
        object Label10: TLabel
          Left = 8
          Top = 101
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBLookupComboBox2
          Transparent = True
        end
        object Label15: TLabel
          Left = 193
          Top = 101
          Width = 14
          Height = 13
          Caption = 'UF'
          Transparent = True
        end
        object Label11: TLabel
          Left = 250
          Top = 101
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio'
          FocusControl = DBLookupComboBox3
          Transparent = True
        end
        object Label12: TLabel
          Left = 456
          Top = 101
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit8
          Transparent = True
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 37
          Width = 442
          Height = 21
          DataField = 'CLI_LOGRADOURO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 456
          Top = 37
          Width = 95
          Height = 21
          DataField = 'CLI_NUMERO'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 77
          Width = 235
          Height = 21
          DataField = 'CLI_COMPLEMENTO'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 250
          Top = 77
          Width = 200
          Height = 21
          DataField = 'CLI_BAIRRO'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 456
          Top = 77
          Width = 95
          Height = 21
          DataField = 'CLI_CEP'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 8
          Top = 117
          Width = 179
          Height = 21
          DataField = 'CLI_NMPAIS'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object cmbUF: TDBComboBox
          Left = 193
          Top = 117
          Width = 52
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'CLI_UF'
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
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 250
          Top = 117
          Width = 200
          Height = 21
          DataField = 'CLI_NMCIDADE'
          DataSource = dsCadastro
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 456
          Top = 117
          Width = 95
          Height = 21
          DataField = 'CLI_TELEFONE'
          DataSource = dsCadastro
          TabOrder = 8
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 593
        Height = 89
        inherited lblConsultar: TLabel
          Top = 21
        end
        inherited rgConsultar: TRadioGroup
          Height = 72
          Items.Strings = (
            '&C'#243'digo'
            '&Nome/Descri'#231#227'o'
            'C&NPJ/CPF')
        end
        inherited edtConsultar: TEdit
          Top = 36
        end
        inherited btnConsultar: TBitBtn
          Top = 31
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 559
        Top = 89
        Height = 326
      end
      inherited grdConsultar: TDBGrid
        Top = 89
        Width = 559
        Height = 326
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
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOMERAZAO'
            Title.Caption = 'Nome/Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 336
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CLI_CGCCPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 129
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 443
    Width = 601
  end
  inherited dsConsultar: TDataSource
    Left = 300
    Top = 338
  end
  inherited dspConsultar: TDataSetProvider
    Left = 444
    Top = 338
  end
  inherited cdsConsultar: TClientDataSet
    OnCalcFields = cdsConsultarCalcFields
    Left = 508
    Top = 338
    object cdsConsultarCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCLI_NOMERAZAO: TStringField
      FieldName = 'CLI_NOMERAZAO'
      Required = True
      Size = 60
    end
    object cdsConsultarCLI_TPDOCUMENTO: TIntegerField
      FieldName = 'CLI_TPDOCUMENTO'
    end
    object cdsConsultarCLI_NRDOCUMENTO: TStringField
      FieldName = 'CLI_NRDOCUMENTO'
      Size = 14
    end
    object cdsConsultarCLI_CGCCPF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_CGCCPF'
      Size = 17
      Calculated = True
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsCliente
    Left = 332
    Top = 328
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "CLI_CODIGO", "CLI_NOMERAZAO", "CLI_TPDOCUMENTO", "CLI_NR' +
        'DOCUMENTO" from "CLIENTES"')
    Left = 372
    Top = 336
  end
end

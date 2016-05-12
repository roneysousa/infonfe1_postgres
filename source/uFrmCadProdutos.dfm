inherited frmCadProdutos: TfrmCadProdutos
  Left = 202
  Top = 133
  Caption = 'Cadastro de Produtos/Servi'#231'os'
  ClientHeight = 549
  ClientWidth = 679
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 679
    Height = 530
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        Top = 22
        DataField = 'PRO_CODIGO'
      end
      inherited Label1: TLabel
        Top = 6
      end
      inherited pnlBotoes: TPanel
        Top = 461
        Width = 671
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 13
        Top = 50
        Width = 644
        Height = 153
        Caption = '[ Produto ] '
        TabOrder = 2
        object Label8: TLabel
          Left = 130
          Top = 103
          Width = 40
          Height = 13
          Caption = 'Unidade'
          Transparent = True
        end
        object Label7: TLabel
          Left = 402
          Top = 62
          Width = 35
          Height = 13
          Caption = 'G'#234'nero'
          FocusControl = DBEdit6
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 103
          Width = 24
          Height = 13
          Caption = 'NCM'
          FocusControl = DBEdit3
          Transparent = True
        end
        object Label5: TLabel
          Left = 168
          Top = 62
          Width = 100
          Height = 13
          Caption = 'EAN Unid. Tribut'#225'vel'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label2: TLabel
          Left = 16
          Top = 21
          Width = 55
          Height = 13
          Caption = 'Descri'#231#227'o *'
          FocusControl = dbeDescricao
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 62
          Width = 22
          Height = 13
          Caption = 'EAN'
          FocusControl = DBEdit2
          Transparent = True
        end
        object Label6: TLabel
          Left = 285
          Top = 62
          Width = 37
          Height = 13
          Caption = 'EX TIPI'
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label9: TLabel
          Left = 232
          Top = 103
          Width = 63
          Height = 13
          Caption = 'Valor Unit'#225'rio'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 302
          Top = 103
          Width = 51
          Height = 13
          Caption = 'Tributa'#231#227'o'
          Transparent = True
        end
        object Label21: TLabel
          Left = 453
          Top = 103
          Width = 28
          Height = 13
          Caption = 'CFOP'
          FocusControl = dbeCFOP
          Transparent = True
        end
        object spLocCFOP: TSpeedButton
          Left = 537
          Top = 118
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
          OnClick = spLocCFOPClick
        end
        object DBEdit6: TDBEdit
          Left = 402
          Top = 78
          Width = 133
          Height = 21
          DataField = 'PRO_GENERO'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 118
          Width = 107
          Height = 21
          DataField = 'PRO_NCM'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 168
          Top = 78
          Width = 110
          Height = 21
          DataField = 'PRO_EAN_TRIB'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbeDescricao: TDBEdit
          Left = 16
          Top = 37
          Width = 518
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRO_DESCRICAO'
          DataSource = dsCadastro
          TabOrder = 0
          OnExit = dbeDescricaoExit
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 78
          Width = 145
          Height = 21
          DataField = 'PRO_EAN'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 285
          Top = 78
          Width = 110
          Height = 21
          DataField = 'PRO_EX_TIPI'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 209
          Top = 118
          Width = 87
          Height = 21
          DataField = 'PRO_VL_UN_COM'
          DataSource = dsCadastro
          TabOrder = 7
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 130
          Top = 118
          Width = 73
          Height = 21
          DataField = 'PRO_NMUNID'
          DataSource = dsCadastro
          TabOrder = 6
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 302
          Top = 118
          Width = 147
          Height = 21
          DataField = 'PRO_NMTRIB'
          DataSource = dsCadastro
          TabOrder = 8
        end
        object dbeCFOP: TDBEdit
          Left = 453
          Top = 118
          Width = 81
          Height = 21
          DataField = 'PRO_CFOP'
          DataSource = dsCadastro
          MaxLength = 4
          TabOrder = 9
          OnExit = dbeCFOPExit
          OnKeyPress = dbeCFOPKeyPress
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 489
        Top = 6
        Width = 166
        Height = 39
        Columns = 2
        DataField = 'PRO_TIPOPRODUTO'
        DataSource = dsCadastro
        Items.Strings = (
          'Produto'
          'Servi'#231'o')
        TabOrder = 0
        Values.Strings = (
          'P'
          'S')
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 202
        Width = 643
        Height = 251
        TabOrder = 3
        object PageControl2: TPageControl
          Left = 2
          Top = 15
          Width = 639
          Height = 234
          ActivePage = TabSheet3
          Align = alClient
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'ICMS'
            object Label11: TLabel
              Left = 8
              Top = 3
              Width = 82
              Height = 13
              Caption = 'Tipo Tributa'#231#227'o *'
              FocusControl = cmbTipoTributacao
              Transparent = True
            end
            object Label12: TLabel
              Left = 8
              Top = 40
              Width = 33
              Height = 13
              Caption = 'Origem'
              FocusControl = DBLookupComboBox3
              Transparent = True
            end
            object Label13: TLabel
              Left = 8
              Top = 81
              Width = 261
              Height = 13
              Caption = 'Modalidade de determina'#231#227'o da Base C'#225'lculo do ICMS'
              FocusControl = DBEdit1
              Transparent = True
            end
            object Label14: TLabel
              Left = 409
              Top = 81
              Width = 135
              Height = 13
              Caption = '% Redu'#231#227'o de Base C'#225'lculo'
              FocusControl = DBLookupComboBox4
              Transparent = True
            end
            object Label15: TLabel
              Left = 8
              Top = 120
              Width = 278
              Height = 13
              Caption = 'Modalidade de determina'#231#227'o da Base C'#225'lculo do ICMS ST'
              FocusControl = DBLookupComboBox5
            end
            object Label16: TLabel
              Left = 8
              Top = 160
              Width = 233
              Height = 13
              Caption = 'Percentual margem de valor adicionado ICMS ST'
              FocusControl = DBEdit7
            end
            object Label17: TLabel
              Left = 290
              Top = 160
              Width = 186
              Height = 13
              Caption = 'Percentual de redu'#231#227'o da BC ICMS ST'
              FocusControl = DBEdit9
            end
            object cmbTipoTributacao: TDBLookupComboBox
              Left = 8
              Top = 19
              Width = 537
              Height = 21
              DataField = 'PRO_NMTPTRIBUTACAO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 8
              Top = 56
              Width = 537
              Height = 21
              DataField = 'PRO_NMORIGEM'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object DBEdit1: TDBEdit
              Left = 409
              Top = 96
              Width = 134
              Height = 21
              DataField = 'PRO_PEREDUCAOBCICMS'
              DataSource = dsCadastro
              TabOrder = 3
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 8
              Top = 96
              Width = 395
              Height = 21
              DataField = 'PRO_NMMDBCICMS'
              DataSource = dsCadastro
              TabOrder = 2
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 8
              Top = 136
              Width = 395
              Height = 21
              DataField = 'PRO_NMMDST'
              DataSource = dsCadastro
              TabOrder = 4
            end
            object DBEdit7: TDBEdit
              Left = 8
              Top = 176
              Width = 254
              Height = 21
              DataField = 'PRO_PEMARGEMADICIONALICMSST'
              DataSource = dsCadastro
              TabOrder = 5
            end
            object DBEdit9: TDBEdit
              Left = 290
              Top = 176
              Width = 254
              Height = 21
              DataField = 'PRO_PEREDUCAOBCICMSST'
              DataSource = dsCadastro
              TabOrder = 6
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'IPI'
            ImageIndex = 1
            object Label18: TLabel
              Left = 8
              Top = 13
              Width = 268
              Height = 13
              Caption = 'Classe de enquadramento do IPI para cigarros e Bebidas'
              FocusControl = DBEdit10
              Transparent = True
            end
            object Label19: TLabel
              Left = 8
              Top = 54
              Width = 150
              Height = 13
              Caption = 'C'#243'digo de enquadramento legal'
              FocusControl = DBEdit11
              Transparent = True
            end
            object Label20: TLabel
              Left = 8
              Top = 96
              Width = 54
              Height = 13
              Caption = 'Fornecedor'
              FocusControl = dbeCNPJprodutor
              Transparent = True
            end
            object spLocFornecedor: TSpeedButton
              Left = 74
              Top = 111
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
              OnClick = spLocFornecedorClick
            end
            object DBEdit10: TDBEdit
              Left = 8
              Top = 29
              Width = 69
              Height = 21
              DataField = 'PRO_IPICLASSE_ENQUADRAMENTO'
              DataSource = dsCadastro
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 8
              Top = 70
              Width = 43
              Height = 21
              DataField = 'PRO_IPI_CODIGOENQUADRAMENTO'
              DataSource = dsCadastro
              TabOrder = 1
            end
            object dbeCNPJprodutor: TDBEdit
              Left = 8
              Top = 112
              Width = 65
              Height = 21
              DataField = 'PRO_FORNECEDOR'
              DataSource = dsCadastro
              TabOrder = 2
              OnExit = dbeCNPJprodutorExit
              OnKeyPress = dbeCNPJprodutorKeyPress
            end
            object DBEdit12: TDBEdit
              Left = 100
              Top = 112
              Width = 250
              Height = 21
              TabStop = False
              Color = clSilver
              DataField = 'PRO_NMFORN'
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
          end
        end
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 671
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 637
        Height = 429
      end
      inherited grdConsultar: TDBGrid
        Width = 637
        Height = 429
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Caption = 'C'#211'DIGO'
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
            Title.Caption = 'DESCRI'#199#195'O'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 343
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_VL_UN_COM'
            Title.Alignment = taRightJustify
            Title.Caption = 'VL.UNIT'#193'RIO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 530
    Width = 679
  end
  inherited dsConsultar: TDataSource
    Top = 90
  end
  inherited dspConsultar: TDataSetProvider
    Left = 252
    Top = 90
  end
  inherited cdsConsultar: TClientDataSet
    Left = 316
    Top = 90
    object cdsConsultarPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      Required = True
      Size = 14
    end
    object cdsConsultarPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Required = True
      Size = 120
    end
    object cdsConsultarPRO_V_UN_TRIB: TFloatField
      FieldName = 'PRO_V_UN_TRIB'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsConsultarPRO_VL_UN_COM: TFloatField
      FieldName = 'PRO_VL_UN_COM'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsProduto
    OnDataChange = dsCadastroDataChange
    Left = 124
    Top = 32
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "PRO_CODIGO","PRO_DESCRICAO", "PRO_VL_UN_COM", "PRO_V_UN_' +
        'TRIB" from "PRODUTOS"')
    Left = 204
    Top = 88
  end
end

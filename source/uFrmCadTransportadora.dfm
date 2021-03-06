inherited frmCadTransportadora: TfrmCadTransportadora
  Left = 199
  Top = 125
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 402
  ClientWidth = 588
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 588
    Height = 383
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'TRA_CODIGO'
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 57
        Width = 103
        Height = 13
        Caption = 'Nome/Raz'#227'o Social *'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 96
        Width = 102
        Height = 13
        Caption = 'N'#250'mero Documento *'
        FocusControl = dbeCNPJ
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 136
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit3
      end
      object Label6: TLabel [5]
        Left = 16
        Top = 178
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit4
      end
      object Label15: TLabel [6]
        Left = 17
        Top = 220
        Width = 14
        Height = 13
        Caption = 'UF'
        Transparent = True
      end
      object Label7: TLabel [7]
        Left = 74
        Top = 221
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio'
        FocusControl = DBLookupComboBox2
      end
      inherited pnlBotoes: TPanel
        Top = 314
        Width = 580
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 73
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TRA_RAZAONOME'
        DataSource = dsCadastro
        TabOrder = 1
        OnExit = dbeDescricaoExit
      end
      object dbeCNPJ: TDBEdit
        Left = 16
        Top = 112
        Width = 186
        Height = 21
        DataField = 'TRA_NR_DOCUMENTO'
        DataSource = dsCadastro
        TabOrder = 2
        OnExit = dbeCNPJExit
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 152
        Width = 186
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TRA_INSCRICAO_ESTADUAL'
        DataSource = dsCadastro
        MaxLength = 12
        TabOrder = 3
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 194
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TRA_ENDERECO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object cmbUF: TDBComboBox
        Left = 17
        Top = 236
        Width = 52
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        DataField = 'TRA_UF'
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
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 74
        Top = 237
        Width = 232
        Height = 21
        DataField = 'TRA_NMCIDADE'
        DataSource = dsCadastro
        TabOrder = 6
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 580
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 546
        Height = 282
      end
      inherited grdConsultar: TDBGrid
        Width = 546
        Height = 282
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TRA_CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRA_RAZAONOME'
            Title.Caption = 'RAZ'#195'O SOCIAL'
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
    Top = 383
    Width = 588
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsConsultarTRA_RAZAONOME: TStringField
      FieldName = 'TRA_RAZAONOME'
      Required = True
      Size = 60
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsTransp
    Left = 172
    Top = 32
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      'Select "TRA_CODIGO", "TRA_RAZAONOME" from "TRANSPORTADORAS"')
  end
end

inherited frmCadFornecedores: TfrmCadFornecedores
  Left = 205
  Top = 124
  Caption = 'Cadastro de Fornecedores/Fabricantes'
  ClientHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 375
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'FOR_CODIGO'
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 64
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
        FocusControl = dbeRazao
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 104
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
        FocusControl = dbeFantasia
        Transparent = True
      end
      object Label4: TLabel [4]
        Left = 16
        Top = 144
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        FocusControl = dbeCNPJ
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 306
      end
      object dbeRazao: TDBEdit
        Left = 16
        Top = 80
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_RAZAO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object dbeFantasia: TDBEdit
        Left = 16
        Top = 120
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FOR_FANTASIA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object dbeCNPJ: TDBEdit
        Left = 16
        Top = 160
        Width = 186
        Height = 21
        DataField = 'FOR_CNPJ'
        DataSource = dsCadastro
        TabOrder = 3
        OnExit = dbeCNPJExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Height = 274
      end
      inherited grdConsultar: TDBGrid
        Height = 274
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Caption = 'C'#243'digo'
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
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 473
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 375
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsConsultarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Required = True
      Size = 50
    end
    object cdsConsultarFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Size = 50
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsFornecedor
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "FOR_CODIGO", "FOR_RAZAO", "FOR_FANTASIA" from "FORNECEDO' +
        'RES"')
  end
end

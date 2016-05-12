inherited frmCadUF: TfrmCadUF
  Left = 206
  Top = 149
  Caption = 'Cadastro UF'
  ClientHeight = 301
  ClientWidth = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 585
    Height = 282
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        Left = 152
        Top = 21
        Visible = False
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 64
        Width = 55
        Height = 13
        Caption = 'Sigla da UF'
        FocusControl = dbeDescricao
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 213
        Width = 577
      end
      object dbeCodigo: TDBEdit
        Left = 16
        Top = 32
        Width = 65
        Height = 21
        DataField = 'UF_CODIGO'
        DataSource = dsCadastro
        MaxLength = 2
        TabOrder = 1
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 80
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UF_DESCRICAO'
        DataSource = dsCadastro
        MaxLength = 2
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 577
      end
      inherited Panel3: TPanel
        Left = 543
        Height = 181
      end
      inherited grdConsultar: TDBGrid
        Width = 543
        Height = 181
        Columns = <
          item
            Expanded = False
            FieldName = 'UF_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 463
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 282
    Width = 585
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarUF_CODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'UF_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsConsultarUF_DESCRICAO: TStringField
      FieldName = 'UF_DESCRICAO'
      Required = True
    end
  end
  inherited dsCadastro: TDataSource
    DataSet = dmDados.cdsUF
    OnDataChange = dsCadastroDataChange
    Left = 260
    Top = 56
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      'Select * from "TABELA_UF"')
  end
end

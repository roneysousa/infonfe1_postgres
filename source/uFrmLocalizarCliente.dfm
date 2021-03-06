inherited frmLocalizarCliente: TfrmLocalizarCliente
  Caption = 'Localizar Cliente'
  ClientHeight = 297
  ClientWidth = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 510
  end
  inherited Panel2: TPanel
    Width = 510
    Height = 221
    inherited grdConsultar: TDBGrid
      Width = 508
      Height = 219
      Columns = <
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 60
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
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CGC'
          Title.Alignment = taCenter
          Title.Caption = 'CPF/CNPJ'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end>
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 278
    Width = 510
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "CLI_CODIGO", "CLI_RAZAO", "CLI_FANTASIA", "CLI_CGC", "CL' +
        'I_CLIFOR", "CLI_TIPOPESSOA" from "CLIENTES"')
  end
  inherited dspConsultar: TDataSetProvider
    Left = 292
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object cdsConsultarCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 50
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
  end
end

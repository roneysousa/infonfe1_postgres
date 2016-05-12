inherited frmLocFornecedorNovo: TfrmLocFornecedorNovo
  Caption = 'Localizar Fornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
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
          FieldName = 'CLI_FANTASIA'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 341
          Visible = True
        end>
    end
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "CLI_CODIGO", "CLI_RAZAO", "CLI_FANTASIA", "CLI_CLIFOR" f' +
        'rom "CLIENTES"'
      'Where ("CLI_CLIFOR" = '#39'F'#39') AND "CLI_FANTASIA" like :pNOME')
    Params = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptInput
      end>
    ParamData = <
      item
        DataType = ftString
        Name = 'pNOME'
        ParamType = ptInput
      end>
  end
  inherited cdsConsultar: TClientDataSet
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
    object cdsConsultarCLI_CLIFOR: TStringField
      FieldName = 'CLI_CLIFOR'
      Size = 1
    end
  end
end

inherited frmLocCFOP: TfrmLocCFOP
  Caption = 'Localizar CFOP'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'CFOP_CODIGO'
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
          FieldName = 'CFOP_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 400
          Visible = True
        end>
    end
  end
  inherited dsConsultar: TDataSource
    OnStateChange = nil
    OnDataChange = nil
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      'Select "CFOP_CODIGO", "CFOP_DESCRICAO" from "TABELA_CFOP"')
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCFOP_CODIGO: TIntegerField
      FieldName = 'CFOP_CODIGO'
      Required = True
    end
    object cdsConsultarCFOP_DESCRICAO: TStringField
      FieldName = 'CFOP_DESCRICAO'
      Size = 140
    end
  end
end

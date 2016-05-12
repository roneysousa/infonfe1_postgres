inherited frmLocFornecedor: TfrmLocFornecedor
  Caption = 'Localizar Fornecedor'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited edtConsultar: TEdit
      MaxLength = 49
    end
  end
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
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
          Width = 52
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
          Width = 356
          Visible = True
        end>
    end
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'Select "FOR_CODIGO", "FOR_RAZAO", "FOR_FANTASIA" from "FORNECEDO' +
        'RES"')
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
end

inherited frmLocTransp: TfrmLocTransp
  Caption = 'Localizar Transportadora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdConsultar: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'TRA_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRA_RAZAONOME'
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
      'Select "TRA_CODIGO", "TRA_RAZAONOME" from "TRANSPORTADORAS"')
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
end

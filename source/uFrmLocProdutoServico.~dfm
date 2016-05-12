inherited frmLocProdutoServico: TfrmLocProdutoServico
  Caption = 'Localizar Produto/Servi'#231'o'
  ClientHeight = 314
  ClientWidth = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 557
    inherited edtConsultar: TEdit
      Width = 526
    end
  end
  inherited Panel2: TPanel
    Width = 557
    Height = 238
    inherited grdConsultar: TDBGrid
      Width = 555
      Height = 236
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRO_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 317
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_VLVENDA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Unit'#225'tio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end>
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 295
    Width = 557
  end
  inherited zqryConsultar: TZQuery
    SQL.Strings = (
      
        'select "PRO_CODIGO", "PRO_DESCRICAO", "PRO_VLVENDA", "PRO_REVEND' +
        'A_VALOR" from "PRODUTOS"')
  end
  inherited cdsConsultar: TClientDataSet
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
    object cdsConsultarPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
      DisplayFormat = '###,##0.#000'
      EditFormat = '###,##0.#000'
    end
    object cdsConsultarPRO_REVENDA_VALOR: TFloatField
      FieldName = 'PRO_REVENDA_VALOR'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
  end
end

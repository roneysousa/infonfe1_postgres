object dmNFe: TdmNFe
  OldCreateOrder = False
  Left = 346
  Top = 182
  Height = 422
  Width = 530
  object ZqryNotaFiscal: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "NOTA_FISCAL" Where ("NTF_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Properties.Strings = (
      'Select * from "NOTA_FISCAL" Where ("NTF_CODIGO" = :pCODIGO)')
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryNotaFiscalNTF_CODIGO: TIntegerField
      FieldName = 'NTF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryNotaFiscalNTF_NUMERONOTA: TStringField
      FieldName = 'NTF_NUMERONOTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryNotaFiscalNTF_MODELO: TIntegerField
      FieldName = 'NTF_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_SERIE: TStringField
      FieldName = 'NTF_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryNotaFiscalNTF_EMITENTE: TIntegerField
      FieldName = 'NTF_EMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZqryNotaFiscalNTF_NUMCUPOM: TStringField
      FieldName = 'NTF_NUMCUPOM'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ZqryNotaFiscalNTF_ANOMES: TStringField
      FieldName = 'NTF_ANOMES'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZqryNotaFiscalNTF_CFOP: TIntegerField
      FieldName = 'NTF_CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CLIENTE: TIntegerField
      FieldName = 'NTF_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_DTEMISSAO: TDateField
      FieldName = 'NTF_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_DTATUALIZACAO_NF: TDateField
      FieldName = 'NTF_DTATUALIZACAO_NF'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_DTDANFE: TDateField
      FieldName = 'NTF_DTDANFE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TIPO_EMISSAO_ENUM: TIntegerField
      FieldName = 'NTF_TIPO_EMISSAO_ENUM'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_C_NT: TStringField
      FieldName = 'NTF_C_NT'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object ZqryNotaFiscalNTF_C_DV: TStringField
      FieldName = 'NTF_C_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_RECIBO: TStringField
      FieldName = 'NTF_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZqryNotaFiscalNTF_UFDESTINO: TStringField
      FieldName = 'NTF_UFDESTINO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_CIDADE_DESTINO: TIntegerField
      FieldName = 'NTF_CIDADE_DESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_SITUACAO_ENUM: TIntegerField
      FieldName = 'NTF_SITUACAO_ENUM'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_EXPORTADA: TStringField
      FieldName = 'NTF_EXPORTADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_NATUREZA: TIntegerField
      FieldName = 'NTF_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TIPODOCUMENTO: TIntegerField
      FieldName = 'NTF_TIPODOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'NTF_FORMA_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_FORMA_EMISSAO: TIntegerField
      FieldName = 'NTF_FORMA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CHAVE: TStringField
      FieldName = 'NTF_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryNotaFiscalNTF_VERSAO_XML: TStringField
      FieldName = 'NTF_VERSAO_XML'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryNotaFiscalNTF_DESCNATUREZA: TStringField
      FieldName = 'NTF_DESCNATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_DTSAIDA_ENTRADA: TDateField
      FieldName = 'NTF_DTSAIDA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORTOTALNOTA: TFloatField
      FieldName = 'NTF_VALORTOTALNOTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORICMS: TFloatField
      FieldName = 'NTF_VALORICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORICMSST: TFloatField
      FieldName = 'NTF_VALORICMSST'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_BASECALCULOICMS: TFloatField
      FieldName = 'NTF_BASECALCULOICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_BASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'NTF_BASECALCULOSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORSUBSTITUICAO: TFloatField
      FieldName = 'NTF_VALORSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TIPOFRETE: TStringField
      FieldName = 'NTF_TIPOFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_VALORFRETE: TFloatField
      FieldName = 'NTF_VALORFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORIPI: TFloatField
      FieldName = 'NTF_VALORIPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALORSEGURO: TFloatField
      FieldName = 'NTF_VALORSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_OUTRASPESPESAS: TFloatField
      FieldName = 'NTF_OUTRASPESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CODTRANSPORTADORA: TIntegerField
      FieldName = 'NTF_CODTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_PROTOCOLO: TStringField
      FieldName = 'NTF_PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZqryNotaFiscalNTF_DATAPROTOCOLO: TDateField
      FieldName = 'NTF_DATAPROTOCOLO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CDFINALIDADE: TIntegerField
      FieldName = 'NTF_CDFINALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CODERRO: TStringField
      FieldName = 'NTF_CODERRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZqryNotaFiscalNTF_MENSAGEM_ERRO: TStringField
      FieldName = 'NTF_MENSAGEM_ERRO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object ZqryNotaFiscalNTF_USUARIO_CAD: TIntegerField
      FieldName = 'NTF_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_HOCADA: TStringField
      FieldName = 'NTF_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryNotaFiscalNTF_DTALTE: TDateField
      FieldName = 'NTF_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_USALTE: TIntegerField
      FieldName = 'NTF_USALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_HOALTE: TStringField
      FieldName = 'NTF_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryNotaFiscalNTF_VALOR_ITENS: TFloatField
      FieldName = 'NTF_VALOR_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CNPJCPF: TStringField
      FieldName = 'NTF_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_RAZAOSOCIAL: TStringField
      FieldName = 'NTF_RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_TIPOPESSOA: TStringField
      FieldName = 'NTF_TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_LOGRADOURO: TStringField
      FieldName = 'NTF_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_DEST_NUMERO: TIntegerField
      FieldName = 'NTF_DEST_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_DEST_COMPLEMENTO: TStringField
      FieldName = 'NTF_DEST_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_DEST_BAIRRO: TStringField
      FieldName = 'NTF_DEST_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_DEST_MUNICIPIO: TIntegerField
      FieldName = 'NTF_DEST_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_DEST_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_DEST_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_DEST_UF: TStringField
      FieldName = 'NTF_DEST_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_DEST_CEP: TStringField
      FieldName = 'NTF_DEST_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryNotaFiscalNTF_DEST_TELEFONE: TStringField
      FieldName = 'NTF_DEST_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_DEST_IE: TStringField
      FieldName = 'NTF_DEST_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_DEST_ISUF: TStringField
      FieldName = 'NTF_DEST_ISUF'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object ZqryNotaFiscalNTF_DEST_EMAIL: TStringField
      FieldName = 'NTF_DEST_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_RETIRADA_CNPJCPF: TStringField
      FieldName = 'NTF_RETIRADA_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_RETIRADA_LOGRADOURO: TStringField
      FieldName = 'NTF_RETIRADA_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_RETIRADA_NUMERO: TIntegerField
      FieldName = 'NTF_RETIRADA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETIRADA_COMPLEMENTO: TStringField
      FieldName = 'NTF_RETIRADA_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_RETIRADA_BAIRRO: TStringField
      FieldName = 'NTF_RETIRADA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_RETIRADA_MUNICIPIO: TIntegerField
      FieldName = 'NTF_RETIRADA_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETIRADA_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_RETIRADA_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_RETIRADA_UF: TStringField
      FieldName = 'NTF_RETIRADA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_ENTREGA_CNPJCPF: TStringField
      FieldName = 'NTF_ENTREGA_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_ENTREGA_LOGRADOURO: TStringField
      FieldName = 'NTF_ENTREGA_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_ENTREGA_NUMERO: TIntegerField
      FieldName = 'NTF_ENTREGA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_ENTREGA_COMPLEMENTO: TStringField
      FieldName = 'NTF_ENTREGA_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_ENTREGA_BAIRRO: TStringField
      FieldName = 'NTF_ENTREGA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_ENTREGA_MUNICIPIO: TIntegerField
      FieldName = 'NTF_ENTREGA_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_ENTREGA_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_ENTREGA_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_ENTREGA_UF: TStringField
      FieldName = 'NTF_ENTREGA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_EMITENTE_CNPJ: TStringField
      FieldName = 'NTF_EMITENTE_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_EMITENTE_RAZAO: TStringField
      FieldName = 'NTF_EMITENTE_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_FANTASIA: TStringField
      FieldName = 'NTF_EMITENTE_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_LOGRADOURO: TStringField
      FieldName = 'NTF_EMITENTE_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_NUMERO: TIntegerField
      FieldName = 'NTF_EMITENTE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_EMITENTE_COMPLEMENTO: TStringField
      FieldName = 'NTF_EMITENTE_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMINTENTE_BAIRRO: TStringField
      FieldName = 'NTF_EMINTENTE_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_MUNICIPIO: TIntegerField
      FieldName = 'NTF_EMITENTE_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_EMITENTE_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_UF: TStringField
      FieldName = 'NTF_EMITENTE_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_EMITENTE_CEP: TStringField
      FieldName = 'NTF_EMITENTE_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryNotaFiscalNTF_EMITENTE_COD_PAIS: TIntegerField
      FieldName = 'NTF_EMITENTE_COD_PAIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_EMITENTE_NOME_PAIS: TStringField
      FieldName = 'NTF_EMITENTE_NOME_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZqryNotaFiscalNTF_EMITENTE_TELEFONE: TStringField
      FieldName = 'NTF_EMITENTE_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_EMITENTE_IE: TStringField
      FieldName = 'NTF_EMITENTE_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_EMINTENTE_IEST: TStringField
      FieldName = 'NTF_EMINTENTE_IEST'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_EMITENTE_IM: TStringField
      FieldName = 'NTF_EMITENTE_IM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZqryNotaFiscalNTF_EMITENTE_CNAE: TStringField
      FieldName = 'NTF_EMITENTE_CNAE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object ZqryNotaFiscalNTF_EMINTENTE_CRT: TStringField
      FieldName = 'NTF_EMINTENTE_CRT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_VALOR_II: TFloatField
      FieldName = 'NTF_VALOR_II'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_PIS: TFloatField
      FieldName = 'NTF_VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_COFINS: TFloatField
      FieldName = 'NTF_VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_DESCONTO: TFloatField
      FieldName = 'NTF_VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_MODALIDADE_FRETE: TIntegerField
      FieldName = 'NTF_MODALIDADE_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TRANSP_CNPJCPF: TStringField
      FieldName = 'NTF_TRANSP_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_TRANSP_RAZAO: TStringField
      FieldName = 'NTF_TRANSP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_TRANSP_IE: TStringField
      FieldName = 'NTF_TRANSP_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryNotaFiscalNTF_TRANSP_ENDERECO: TStringField
      FieldName = 'NTF_TRANSP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_TRANSP_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_TRANSP_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_TRANSP_UF: TStringField
      FieldName = 'NTF_TRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_RETTRANSP_VALOR_SERVICO: TFloatField
      FieldName = 'NTF_RETTRANSP_VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_BCRET: TFloatField
      FieldName = 'NTF_RETTRANSP_BCRET'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_ICMSRET: TFloatField
      FieldName = 'NTF_RETTRANSP_ICMSRET'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_ICMSRE: TFloatField
      FieldName = 'NTF_RETTRANSP_ICMSRE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_CFOP: TIntegerField
      FieldName = 'NTF_RETTRANSP_CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_UF: TStringField
      FieldName = 'NTF_RETTRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_RETTRANSP_MUNFG: TIntegerField
      FieldName = 'NTF_RETTRANSP_MUNFG'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VEICTRANSP_PLACA: TStringField
      FieldName = 'NTF_VEICTRANSP_PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryNotaFiscalNTF_VEICTRANSP_UF: TStringField
      FieldName = 'NTF_VEICTRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_VEICTRANSP_RNTC: TStringField
      FieldName = 'NTF_VEICTRANSP_RNTC'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_REBOQUE_PLACA: TStringField
      FieldName = 'NTF_REBOQUE_PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryNotaFiscalNTF_REBOQUE_UF: TStringField
      FieldName = 'NTF_REBOQUE_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryNotaFiscalNTF_REBOQUE_RNTC: TStringField
      FieldName = 'NTF_REBOQUE_RNTC'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_INFORM_ADICIONAIS_FISCO: TMemoField
      FieldName = 'NTF_INFORM_ADICIONAIS_FISCO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZqryNotaFiscalNTF_INF_ADIC_CONTRIBUITE: TMemoField
      FieldName = 'NTF_INF_ADIC_CONTRIBUITE'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZqryNotaFiscalNTF_BCISS: TFloatField
      FieldName = 'NTF_BCISS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TOTAL_ISS: TFloatField
      FieldName = 'NTF_TOTAL_ISS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_PIS_SERVICO: TFloatField
      FieldName = 'NTF_PIS_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_CONFINS_SERVICO: TFloatField
      FieldName = 'NTF_CONFINS_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_TOTAL_SERVICO_N_INCIDENCIA: TFloatField
      FieldName = 'NTF_TOTAL_SERVICO_N_INCIDENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_RETIDO_PIS: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_RETIDO_CONFINS: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_CONFINS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_RETIDO_CSLL: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_CSLL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_BC_IRRF: TFloatField
      FieldName = 'NTF_BC_IRRF'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_VALOR_RETIDO_IRRF: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_IRRF'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_BC_RETIDO_PREV_SOCIAL: TFloatField
      FieldName = 'NTF_BC_RETIDO_PREV_SOCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETENCAO_PREV_SOCIAL: TFloatField
      FieldName = 'NTF_RETENCAO_PREV_SOCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_RETTRANSP_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_RETTRANSP_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryNotaFiscalNTF_EMITENTE_TPPESSOA: TStringField
      FieldName = 'NTF_EMITENTE_TPPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_LOCAL_RET_DIF_EMI: TStringField
      FieldName = 'NTF_LOCAL_RET_DIF_EMI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_LOCAL_ENT_DIF_DEST: TStringField
      FieldName = 'NTF_LOCAL_ENT_DIF_DEST'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryNotaFiscalNTF_PROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'NTF_PROTOCOLO_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZqryNotaFiscalNTF_DTCANCELAMENTO: TDateField
      FieldName = 'NTF_DTCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryNotaFiscalNTF_HORA_CANCELAMENTO: TStringField
      FieldName = 'NTF_HORA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryNotaFiscalNTF_JUSTIFICATIVA_CANCELAMENTO: TStringField
      FieldName = 'NTF_JUSTIFICATIVA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ZqryNotaFiscalNTF_NRLOTE: TIntegerField
      FieldName = 'NTF_NRLOTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = ZqryNotaFiscal
    Options = [poAllowCommandText]
    OnGetTableName = dspNotaFiscalGetTableName
    Left = 88
    Top = 6
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaFiscal'
    Left = 145
    Top = 24
    object cdsNotaFiscalNTF_CODIGO: TIntegerField
      FieldName = 'NTF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object cdsNotaFiscalNTF_NUMERONOTA: TStringField
      FieldName = 'NTF_NUMERONOTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsNotaFiscalNTF_MODELO: TIntegerField
      FieldName = 'NTF_MODELO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_SERIE: TStringField
      FieldName = 'NTF_SERIE'
      ProviderFlags = [pfInUpdate]
      EditMask = '###;0;_'
      Size = 5
    end
    object cdsNotaFiscalNTF_EMITENTE: TIntegerField
      FieldName = 'NTF_EMITENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNotaFiscalNTF_NUMCUPOM: TStringField
      FieldName = 'NTF_NUMCUPOM'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object cdsNotaFiscalNTF_ANOMES: TStringField
      FieldName = 'NTF_ANOMES'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsNotaFiscalNTF_CFOP: TIntegerField
      FieldName = 'NTF_CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_CLIENTE: TIntegerField
      FieldName = 'NTF_CLIENTE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0000000'
    end
    object cdsNotaFiscalNTF_DTEMISSAO: TDateField
      FieldName = 'NTF_DTEMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '##/##/####;0;_'
    end
    object cdsNotaFiscalNTF_DTATUALIZACAO_NF: TDateField
      FieldName = 'NTF_DTATUALIZACAO_NF'
      ProviderFlags = [pfInUpdate]
      EditMask = '##/##/####;0;_'
    end
    object cdsNotaFiscalNTF_DTDANFE: TDateField
      FieldName = 'NTF_DTDANFE'
      ProviderFlags = [pfInUpdate]
      EditMask = '##/##/####;0;_'
    end
    object cdsNotaFiscalNTF_TIPO_EMISSAO_ENUM: TIntegerField
      FieldName = 'NTF_TIPO_EMISSAO_ENUM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_C_NT: TStringField
      FieldName = 'NTF_C_NT'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsNotaFiscalNTF_C_DV: TStringField
      FieldName = 'NTF_C_DV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_RECIBO: TStringField
      FieldName = 'NTF_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalNTF_UFDESTINO: TStringField
      FieldName = 'NTF_UFDESTINO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_CIDADE_DESTINO: TIntegerField
      FieldName = 'NTF_CIDADE_DESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_SITUACAO_ENUM: TIntegerField
      FieldName = 'NTF_SITUACAO_ENUM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_EXPORTADA: TStringField
      FieldName = 'NTF_EXPORTADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_NATUREZA: TIntegerField
      FieldName = 'NTF_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_TIPODOCUMENTO: TIntegerField
      FieldName = 'NTF_TIPODOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'NTF_FORMA_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_FORMA_EMISSAO: TIntegerField
      FieldName = 'NTF_FORMA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_CHAVE: TStringField
      FieldName = 'NTF_CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNotaFiscalNTF_VERSAO_XML: TStringField
      FieldName = 'NTF_VERSAO_XML'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNotaFiscalNTF_DESCNATUREZA: TStringField
      FieldName = 'NTF_DESCNATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_DTSAIDA_ENTRADA: TDateField
      FieldName = 'NTF_DTSAIDA_ENTRADA'
      ProviderFlags = [pfInUpdate]
      EditMask = '##/##/####;0;_'
    end
    object cdsNotaFiscalNTF_VALORTOTALNOTA: TFloatField
      FieldName = 'NTF_VALORTOTALNOTA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALORICMS: TFloatField
      FieldName = 'NTF_VALORICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALORICMSST: TFloatField
      FieldName = 'NTF_VALORICMSST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_BASECALCULOICMS: TFloatField
      FieldName = 'NTF_BASECALCULOICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_BASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'NTF_BASECALCULOSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALORSUBSTITUICAO: TFloatField
      FieldName = 'NTF_VALORSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_TIPOFRETE: TStringField
      FieldName = 'NTF_TIPOFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_VALORFRETE: TFloatField
      FieldName = 'NTF_VALORFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALORIPI: TFloatField
      FieldName = 'NTF_VALORIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALORSEGURO: TFloatField
      FieldName = 'NTF_VALORSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_OUTRASPESPESAS: TFloatField
      FieldName = 'NTF_OUTRASPESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_CODTRANSPORTADORA: TIntegerField
      FieldName = 'NTF_CODTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '00000'
      EditFormat = '00000'
    end
    object cdsNotaFiscalNTF_PROTOCOLO: TStringField
      FieldName = 'NTF_PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalNTF_DATAPROTOCOLO: TDateField
      FieldName = 'NTF_DATAPROTOCOLO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_CDFINALIDADE: TIntegerField
      FieldName = 'NTF_CDFINALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_CODERRO: TStringField
      FieldName = 'NTF_CODERRO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsNotaFiscalNTF_MENSAGEM_ERRO: TStringField
      FieldName = 'NTF_MENSAGEM_ERRO'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsNotaFiscalNTF_USUARIO_CAD: TIntegerField
      FieldName = 'NTF_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_HOCADA: TStringField
      FieldName = 'NTF_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNotaFiscalNTF_DTALTE: TDateField
      FieldName = 'NTF_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_USALTE: TIntegerField
      FieldName = 'NTF_USALTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_HOALTE: TStringField
      FieldName = 'NTF_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNotaFiscalNTF_VALOR_ITENS: TFloatField
      FieldName = 'NTF_VALOR_ITENS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_CNPJCPF: TStringField
      FieldName = 'NTF_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalNTF_RAZAOSOCIAL: TStringField
      FieldName = 'NTF_RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_TIPOPESSOA: TStringField
      FieldName = 'NTF_TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_LOGRADOURO: TStringField
      FieldName = 'NTF_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_DEST_NUMERO: TIntegerField
      FieldName = 'NTF_DEST_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_DEST_COMPLEMENTO: TStringField
      FieldName = 'NTF_DEST_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_DEST_BAIRRO: TStringField
      FieldName = 'NTF_DEST_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_DEST_MUNICIPIO: TIntegerField
      FieldName = 'NTF_DEST_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_DEST_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_DEST_UF: TStringField
      FieldName = 'NTF_DEST_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_DEST_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'NTF_DEST_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsNotaFiscalNTF_DEST_TELEFONE: TStringField
      FieldName = 'NTF_DEST_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_DEST_IE: TStringField
      FieldName = 'NTF_DEST_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalNTF_DEST_ISUF: TStringField
      FieldName = 'NTF_DEST_ISUF'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsNotaFiscalNTF_DEST_EMAIL: TStringField
      FieldName = 'NTF_DEST_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_RETIRADA_CNPJCPF: TStringField
      Alignment = taRightJustify
      FieldName = 'NTF_RETIRADA_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_RETIRADA_LOGRADOURO: TStringField
      FieldName = 'NTF_RETIRADA_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_RETIRADA_NUMERO: TIntegerField
      FieldName = 'NTF_RETIRADA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_RETIRADA_COMPLEMENTO: TStringField
      FieldName = 'NTF_RETIRADA_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_RETIRADA_BAIRRO: TStringField
      FieldName = 'NTF_RETIRADA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_RETIRADA_MUNICIPIO: TIntegerField
      FieldName = 'NTF_RETIRADA_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_RETIRADA_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_RETIRADA_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_RETIRADA_UF: TStringField
      FieldName = 'NTF_RETIRADA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_ENTREGA_CNPJCPF: TStringField
      Alignment = taRightJustify
      FieldName = 'NTF_ENTREGA_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_ENTREGA_LOGRADOURO: TStringField
      FieldName = 'NTF_ENTREGA_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_ENTREGA_NUMERO: TIntegerField
      FieldName = 'NTF_ENTREGA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_ENTREGA_COMPLEMENTO: TStringField
      FieldName = 'NTF_ENTREGA_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_ENTREGA_BAIRRO: TStringField
      FieldName = 'NTF_ENTREGA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_ENTREGA_MUNICIPIO: TIntegerField
      FieldName = 'NTF_ENTREGA_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_ENTREGA_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_ENTREGA_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_ENTREGA_UF: TStringField
      FieldName = 'NTF_ENTREGA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_EMITENTE_CNPJ: TStringField
      FieldName = 'NTF_EMITENTE_CNPJ'
      ProviderFlags = [pfInUpdate]
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_EMITENTE_RAZAO: TStringField
      FieldName = 'NTF_EMITENTE_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_FANTASIA: TStringField
      FieldName = 'NTF_EMITENTE_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_LOGRADOURO: TStringField
      FieldName = 'NTF_EMITENTE_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_NUMERO: TIntegerField
      FieldName = 'NTF_EMITENTE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_EMITENTE_COMPLEMENTO: TStringField
      FieldName = 'NTF_EMITENTE_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMINTENTE_BAIRRO: TStringField
      FieldName = 'NTF_EMINTENTE_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_MUNICIPIO: TIntegerField
      FieldName = 'NTF_EMITENTE_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_EMITENTE_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_UF: TStringField
      FieldName = 'NTF_EMITENTE_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_EMITENTE_CEP: TStringField
      FieldName = 'NTF_EMITENTE_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsNotaFiscalNTF_EMITENTE_COD_PAIS: TIntegerField
      FieldName = 'NTF_EMITENTE_COD_PAIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_EMITENTE_NOME_PAIS: TStringField
      FieldName = 'NTF_EMITENTE_NOME_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsNotaFiscalNTF_EMITENTE_TELEFONE: TStringField
      FieldName = 'NTF_EMITENTE_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_EMITENTE_IE: TStringField
      FieldName = 'NTF_EMITENTE_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalNTF_EMINTENTE_IEST: TStringField
      FieldName = 'NTF_EMINTENTE_IEST'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalNTF_EMITENTE_IM: TStringField
      FieldName = 'NTF_EMITENTE_IM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalNTF_EMITENTE_CNAE: TStringField
      FieldName = 'NTF_EMITENTE_CNAE'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cdsNotaFiscalNTF_EMINTENTE_CRT: TStringField
      FieldName = 'NTF_EMINTENTE_CRT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_VALOR_II: TFloatField
      FieldName = 'NTF_VALOR_II'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_PIS: TFloatField
      FieldName = 'NTF_VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_COFINS: TFloatField
      FieldName = 'NTF_VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_DESCONTO: TFloatField
      FieldName = 'NTF_VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_MODALIDADE_FRETE: TIntegerField
      FieldName = 'NTF_MODALIDADE_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_TRANSP_CNPJCPF: TStringField
      FieldName = 'NTF_TRANSP_CNPJCPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsNotaFiscalNTF_TRANSP_RAZAO: TStringField
      FieldName = 'NTF_TRANSP_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_TRANSP_IE: TStringField
      FieldName = 'NTF_TRANSP_IE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsNotaFiscalNTF_TRANSP_ENDERECO: TStringField
      FieldName = 'NTF_TRANSP_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_TRANSP_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_TRANSP_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_TRANSP_UF: TStringField
      FieldName = 'NTF_TRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_RETTRANSP_VALOR_SERVICO: TFloatField
      FieldName = 'NTF_RETTRANSP_VALOR_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_RETTRANSP_BCRET: TFloatField
      FieldName = 'NTF_RETTRANSP_BCRET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_RETTRANSP_ICMSRET: TFloatField
      FieldName = 'NTF_RETTRANSP_ICMSRET'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_RETTRANSP_ICMSRE: TFloatField
      FieldName = 'NTF_RETTRANSP_ICMSRE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_RETTRANSP_CFOP: TIntegerField
      FieldName = 'NTF_RETTRANSP_CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_RETTRANSP_UF: TStringField
      FieldName = 'NTF_RETTRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_RETTRANSP_MUNFG: TIntegerField
      FieldName = 'NTF_RETTRANSP_MUNFG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_VEICTRANSP_PLACA: TStringField
      FieldName = 'NTF_VEICTRANSP_PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsNotaFiscalNTF_VEICTRANSP_UF: TStringField
      FieldName = 'NTF_VEICTRANSP_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_VEICTRANSP_RNTC: TStringField
      FieldName = 'NTF_VEICTRANSP_RNTC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_REBOQUE_PLACA: TStringField
      FieldName = 'NTF_REBOQUE_PLACA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsNotaFiscalNTF_REBOQUE_UF: TStringField
      FieldName = 'NTF_REBOQUE_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNotaFiscalNTF_REBOQUE_RNTC: TStringField
      FieldName = 'NTF_REBOQUE_RNTC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_INFORM_ADICIONAIS_FISCO: TMemoField
      FieldName = 'NTF_INFORM_ADICIONAIS_FISCO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalNTF_INF_ADIC_CONTRIBUITE: TMemoField
      FieldName = 'NTF_INF_ADIC_CONTRIBUITE'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsNotaFiscalNTF_BCISS: TFloatField
      FieldName = 'NTF_BCISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_TOTAL_ISS: TFloatField
      FieldName = 'NTF_TOTAL_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_PIS_SERVICO: TFloatField
      FieldName = 'NTF_PIS_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_CONFINS_SERVICO: TFloatField
      FieldName = 'NTF_CONFINS_SERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_TOTAL_SERVICO_N_INCIDENCIA: TFloatField
      FieldName = 'NTF_TOTAL_SERVICO_N_INCIDENCIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_RETIDO_PIS: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_RETIDO_CONFINS: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_CONFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_RETIDO_CSLL: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_CSLL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_BC_IRRF: TFloatField
      FieldName = 'NTF_BC_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_VALOR_RETIDO_IRRF: TFloatField
      FieldName = 'NTF_VALOR_RETIDO_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_BC_RETIDO_PREV_SOCIAL: TFloatField
      FieldName = 'NTF_BC_RETIDO_PREV_SOCIAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsNotaFiscalNTF_RETENCAO_PREV_SOCIAL: TFloatField
      FieldName = 'NTF_RETENCAO_PREV_SOCIAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_RETTRANSP_NOME_MUNICIPIO: TStringField
      FieldName = 'NTF_RETTRANSP_NOME_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNotaFiscalNTF_EMITENTE_TPPESSOA: TStringField
      FieldName = 'NTF_EMITENTE_TPPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_LOCAL_RET_DIF_EMI: TStringField
      FieldName = 'NTF_LOCAL_RET_DIF_EMI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST: TStringField
      FieldName = 'NTF_LOCAL_ENT_DIF_DEST'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNotaFiscalNTF_PROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'NTF_PROTOCOLO_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNotaFiscalNTF_DTCANCELAMENTO: TDateField
      FieldName = 'NTF_DTCANCELAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_HORA_CANCELAMENTO: TStringField
      FieldName = 'NTF_HORA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsNotaFiscalNTF_JUSTIFICATIVA_CANCELAMENTO: TStringField
      FieldName = 'NTF_JUSTIFICATIVA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsNotaFiscalNTF_NRLOTE: TIntegerField
      FieldName = 'NTF_NRLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNotaFiscalNTF_FNEMISSAO: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FNEMISSAO'
      LookupDataSet = cdsListaFinalEmissao
      LookupKeyFields = 'FNE_CODIGO'
      LookupResultField = 'FNE_DESCRICAO'
      KeyFields = 'NTF_CDFINALIDADE'
      Lookup = True
    end
    object cdsNotaFiscalNTF_FMPAGA: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FMPAGA'
      LookupDataSet = cdsListaFPaga
      LookupKeyFields = 'FPG_CODIGO'
      LookupResultField = 'FPG_DESCRICAO'
      KeyFields = 'NTF_FORMA_PAGAMENTO'
      Size = 25
      Lookup = True
    end
    object cdsNotaFiscalNTF_FMEMISSAO: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_FMEMISSAO'
      LookupDataSet = cdsListaFEmissao
      LookupKeyFields = 'FME_CODIGO'
      LookupResultField = 'FME_DESCRICAO'
      KeyFields = 'NTF_FORMA_EMISSAO'
      Size = 120
      Lookup = True
    end
    object cdsNotaFiscalNTF_NMNATUREZAOP: TStringField
      FieldKind = fkLookup
      FieldName = 'NTF_NMNATUREZAOP'
      LookupDataSet = cdsNaturezaOpe
      LookupKeyFields = 'NAT_CODIGO'
      LookupResultField = 'NAT_DESCRICAO'
      KeyFields = 'NTF_NATUREZA'
      Size = 60
      Lookup = True
    end
    object cdsNotaFiscalNFE_NMEMITENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'NFE_NMEMITENTE'
      LookupDataSet = cdsListaEmpresas
      LookupKeyFields = 'EMI_CODIGO'
      LookupResultField = 'EMI_FANTASIA'
      KeyFields = 'NTF_EMITENTE'
      Size = 50
      Lookup = True
    end
  end
  object cdsItemsNotaFiscal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsItemsNotaFiscalCalcFields
    Left = 264
    Top = 24
    Data = {
      B50200009619E0BD01000000180000001B000000000003000000B5020A434453
      5F4E524954454D04000100000000000A4344535F434450524F44010049000000
      0100055749445448020002000E000A4344535F434F4445414E01004900000001
      00055749445448020002000E000D4344535F44455343524943414F0100490000
      000100055749445448020002007800074344535F4E434D010049000000010005
      57494454480200020008000A4344535F45585449504901004900000001000557
      49445448020002000300084344535F43464F5001004900000001000557494454
      480200020004000A4344535F554E44434F4D0100490000000100055749445448
      0200020006000B4344535F51544445434F4D08000400000000000E4344535F56
      4C554E49544152494F0800040000000000084344535F4754494E010049000000
      0100055749445448020002000E000A4344535F554E5452494201004900000001
      000557494454480200020006000C4344535F5154444554524942080004000000
      00000C4344535F564C554E5452494208000400000000000B4344535F564C4652
      45544508000400000000000C4344535F564C53454755524F0800040000000000
      0E4344535F564C444553434F4E544F08000400000000000F4344535F564C4143
      52455343494D4F0800040000000000144344535F564C4F555452415344455350
      4553415308000400000000000A4344535F494E44544F5404000100000000000A
      4344535F424349434D5308000400000000000A4344535F564C49434D53080004
      0000000000094344535F564C49504908000400000000000C4344535F414C4951
      49434D5308000400000000000B4344535F414C49514950490800040000000000
      0A4344535F4E524C4F544501004900000001000557494454480200020014000F
      4344535F445456454E435F4C4F544504000600000000000000}
    object cdsItemsNotaFiscalCDS_NRITEM: TIntegerField
      FieldName = 'CDS_NRITEM'
      DisplayFormat = '000'
    end
    object cdsItemsNotaFiscalCDS_CDPROD: TStringField
      FieldName = 'CDS_CDPROD'
      Size = 14
    end
    object cdsItemsNotaFiscalCDS_CODEAN: TStringField
      FieldName = 'CDS_CODEAN'
      Size = 14
    end
    object cdsItemsNotaFiscalCDS_DESCRICAO: TStringField
      FieldName = 'CDS_DESCRICAO'
      Size = 120
    end
    object cdsItemsNotaFiscalCDS_NCM: TStringField
      FieldName = 'CDS_NCM'
      Size = 8
    end
    object cdsItemsNotaFiscalCDS_EXTIPI: TStringField
      FieldName = 'CDS_EXTIPI'
      Size = 3
    end
    object cdsItemsNotaFiscalCDS_CFOP: TStringField
      FieldName = 'CDS_CFOP'
      Size = 4
    end
    object cdsItemsNotaFiscalCDS_UNDCOM: TStringField
      FieldName = 'CDS_UNDCOM'
      Size = 6
    end
    object cdsItemsNotaFiscalCDS_QTDECOM: TFloatField
      FieldName = 'CDS_QTDECOM'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
    object cdsItemsNotaFiscalCDS_VLUNITARIO: TFloatField
      FieldName = 'CDS_VLUNITARIO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_SUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CDS_SUBTOTAL'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
      Calculated = True
    end
    object cdsItemsNotaFiscalCDS_GTIN: TStringField
      FieldName = 'CDS_GTIN'
      Size = 14
    end
    object cdsItemsNotaFiscalCDS_UNTRIB: TStringField
      FieldName = 'CDS_UNTRIB'
      Size = 6
    end
    object cdsItemsNotaFiscalCDS_QTDETRIB: TFloatField
      FieldName = 'CDS_QTDETRIB'
      DisplayFormat = '###,##0.#00'
      EditFormat = '###,##0.#00'
    end
    object cdsItemsNotaFiscalCDS_VLUNTRIB: TFloatField
      FieldName = 'CDS_VLUNTRIB'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLFRETE: TFloatField
      FieldName = 'CDS_VLFRETE'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLSEGURO: TFloatField
      FieldName = 'CDS_VLSEGURO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLDESCONTO: TFloatField
      FieldName = 'CDS_VLDESCONTO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLACRESCIMO: TFloatField
      FieldName = 'CDS_VLACRESCIMO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS: TFloatField
      FieldName = 'CDS_VLOUTRASDESPESAS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_INDTOT: TIntegerField
      FieldName = 'CDS_INDTOT'
    end
    object cdsItemsNotaFiscalCDS_BCICMS: TFloatField
      FieldName = 'CDS_BCICMS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLICMS: TFloatField
      FieldName = 'CDS_VLICMS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_VLIPI: TFloatField
      FieldName = 'CDS_VLIPI'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQICMS: TFloatField
      FieldName = 'CDS_ALIQICMS'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsItemsNotaFiscalCDS_ALIQIPI: TFloatField
      FieldName = 'CDS_ALIQIPI'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsItemsNotaFiscalCDS_SUB_TOT_ENT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CDS_SUB_TOT_ENT'
      DisplayFormat = '###,##0.#000'
      EditFormat = '###,##0.#000'
      Calculated = True
    end
    object cdsItemsNotaFiscalCDS_NRLOTE: TStringField
      FieldName = 'CDS_NRLOTE'
    end
    object cdsItemsNotaFiscalCDS_DTVENC_LOTE: TDateField
      FieldName = 'CDS_DTVENC_LOTE'
    end
  end
  object ZqryItensNota: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'select * from "NOTA_FISCAL_ITENS" where ("NFI_CODIGO_NOTAF" = :p' +
        'CODNOTA)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODNOTA'
        ParamType = ptInput
      end>
    Left = 24
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODNOTA'
        ParamType = ptInput
      end>
    object ZqryItensNotaNFI_CODIGO_NOTAF: TIntegerField
      FieldName = 'NFI_CODIGO_NOTAF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryItensNotaNFI_NRITEM: TIntegerField
      FieldName = 'NFI_NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryItensNotaNFI_PRODUTO: TStringField
      FieldName = 'NFI_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object ZqryItensNotaNFI_DESCRICAO_PRODUTO: TStringField
      FieldName = 'NFI_DESCRICAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object ZqryItensNotaNFI_UNIDADE: TStringField
      FieldName = 'NFI_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryItensNotaNFI_QUANTIDADE: TFloatField
      FieldName = 'NFI_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLUNITARIO: TFloatField
      FieldName = 'NFI_VLUNITARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLDESCONTO: TFloatField
      FieldName = 'NFI_VLDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLACRESCIMO: TFloatField
      FieldName = 'NFI_VLACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLFRETE: TFloatField
      FieldName = 'NFI_VLFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLSEGURO: TFloatField
      FieldName = 'NFI_VLSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_OUTRASDESPESAS: TFloatField
      FieldName = 'NFI_OUTRASDESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_INDTOT: TIntegerField
      FieldName = 'NFI_INDTOT'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLCOMPRA: TFloatField
      FieldName = 'NFI_VLCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLCUSTO: TFloatField
      FieldName = 'NFI_VLCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_ALIQUOTA_ICMS: TFloatField
      FieldName = 'NFI_ALIQUOTA_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_BCICMS: TFloatField
      FieldName = 'NFI_BCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_ALIQUOTA_IPI: TFloatField
      FieldName = 'NFI_ALIQUOTA_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLICMS: TFloatField
      FieldName = 'NFI_VLICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_BCIPI: TFloatField
      FieldName = 'NFI_BCIPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_VLIPI: TFloatField
      FieldName = 'NFI_VLIPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_EAN: TStringField
      FieldName = 'NFI_EAN'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryItensNotaNFI_NCM: TStringField
      FieldName = 'NFI_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryItensNotaNFI_EXTIPI: TStringField
      FieldName = 'NFI_EXTIPI'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZqryItensNotaNFI_CFOP: TIntegerField
      FieldName = 'NFI_CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryItensNotaNFI_CEANTRIB: TStringField
      FieldName = 'NFI_CEANTRIB'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryItensNotaNFI_COD_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_COD_SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object ZqryItensNotaNFI_ORIGEM_PRODUTO: TStringField
      FieldName = 'NFI_ORIGEM_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryItensNotaNFI_IPI_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_IPI_SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryItensNotaNFI_PIS_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_PIS_SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryItensNotaNFI_COFINS_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_COFINS_SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object dspItensNota: TDataSetProvider
    DataSet = ZqryItensNota
    Options = [poAllowCommandText]
    OnGetTableName = dspItensNotaGetTableName
    Left = 80
    Top = 72
  end
  object cdsItensNota: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODNOTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensNota'
    Left = 144
    Top = 88
    object cdsItensNotaNFI_CODIGO_NOTAF: TIntegerField
      FieldName = 'NFI_CODIGO_NOTAF'
      Required = True
    end
    object cdsItensNotaNFI_NRITEM: TIntegerField
      FieldName = 'NFI_NRITEM'
      Required = True
    end
    object cdsItensNotaNFI_PRODUTO: TStringField
      FieldName = 'NFI_PRODUTO'
      Required = True
      Size = 14
    end
    object cdsItensNotaNFI_DESCRICAO_PRODUTO: TStringField
      FieldName = 'NFI_DESCRICAO_PRODUTO'
      Size = 120
    end
    object cdsItensNotaNFI_UNIDADE: TStringField
      FieldName = 'NFI_UNIDADE'
      Size = 2
    end
    object cdsItensNotaNFI_QUANTIDADE: TFloatField
      FieldName = 'NFI_QUANTIDADE'
    end
    object cdsItensNotaNFI_VLUNITARIO: TFloatField
      FieldName = 'NFI_VLUNITARIO'
    end
    object cdsItensNotaNFI_VLDESCONTO: TFloatField
      FieldName = 'NFI_VLDESCONTO'
    end
    object cdsItensNotaNFI_VLACRESCIMO: TFloatField
      FieldName = 'NFI_VLACRESCIMO'
    end
    object cdsItensNotaNFI_VLFRETE: TFloatField
      FieldName = 'NFI_VLFRETE'
    end
    object cdsItensNotaNFI_VLSEGURO: TFloatField
      FieldName = 'NFI_VLSEGURO'
    end
    object cdsItensNotaNFI_OUTRASDESPESAS: TFloatField
      FieldName = 'NFI_OUTRASDESPESAS'
    end
    object cdsItensNotaNFI_INDTOT: TIntegerField
      FieldName = 'NFI_INDTOT'
    end
    object cdsItensNotaNFI_VLCOMPRA: TFloatField
      FieldName = 'NFI_VLCOMPRA'
    end
    object cdsItensNotaNFI_VLCUSTO: TFloatField
      FieldName = 'NFI_VLCUSTO'
    end
    object cdsItensNotaNFI_ALIQUOTA_ICMS: TFloatField
      FieldName = 'NFI_ALIQUOTA_ICMS'
    end
    object cdsItensNotaNFI_BCICMS: TFloatField
      FieldName = 'NFI_BCICMS'
    end
    object cdsItensNotaNFI_ALIQUOTA_IPI: TFloatField
      FieldName = 'NFI_ALIQUOTA_IPI'
    end
    object cdsItensNotaNFI_VLICMS: TFloatField
      FieldName = 'NFI_VLICMS'
    end
    object cdsItensNotaNFI_BCIPI: TFloatField
      FieldName = 'NFI_BCIPI'
    end
    object cdsItensNotaNFI_VLIPI: TFloatField
      FieldName = 'NFI_VLIPI'
    end
    object cdsItensNotaNFI_EAN: TStringField
      FieldName = 'NFI_EAN'
      Size = 14
    end
    object cdsItensNotaNFI_NCM: TStringField
      FieldName = 'NFI_NCM'
      Size = 8
    end
    object cdsItensNotaNFI_EXTIPI: TStringField
      FieldName = 'NFI_EXTIPI'
      Size = 3
    end
    object cdsItensNotaNFI_CFOP: TIntegerField
      FieldName = 'NFI_CFOP'
    end
    object cdsItensNotaNFI_CEANTRIB: TStringField
      FieldName = 'NFI_CEANTRIB'
      Size = 14
    end
    object cdsItensNotaNFI_COD_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_COD_SIT_TRIBUTARIA'
      Size = 7
    end
    object cdsItensNotaNFI_ORIGEM_PRODUTO: TStringField
      FieldName = 'NFI_ORIGEM_PRODUTO'
      Size = 1
    end
    object cdsItensNotaNFI_IPI_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_IPI_SIT_TRIBUTARIA'
      Size = 2
    end
    object cdsItensNotaNFI_PIS_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_PIS_SIT_TRIBUTARIA'
      Size = 2
    end
    object cdsItensNotaNFI_COFINS_SIT_TRIBUTARIA: TStringField
      FieldName = 'NFI_COFINS_SIT_TRIBUTARIA'
      Size = 2
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeRL1
    Left = 272
    Top = 88
  end
  object ZqryListas: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select "NAT_CODIGO", "NAT_DESCRICAO" from "NATUREZA_OPERACAO"')
    Params = <>
    Left = 24
    Top = 144
  end
  object dspLista: TDataSetProvider
    DataSet = ZqryListas
    Options = [poAllowCommandText]
    Left = 88
    Top = 136
  end
  object cdsListaFPaga: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "FPG_CODIGO", "FPG_DESCRICAO" from "FORMA_PAGAMENTO"'
    Params = <>
    ProviderName = 'dspLista'
    Left = 152
    Top = 152
    object cdsListaFPagaFPG_CODIGO: TIntegerField
      FieldName = 'FPG_CODIGO'
      Required = True
    end
    object cdsListaFPagaFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Required = True
      Size = 25
    end
  end
  object cdsListaFEmissao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "FME_CODIGO", "FME_DESCRICAO" from "FORMA_EMISSAO"'
    Params = <>
    ProviderName = 'dspLista'
    Left = 152
    Top = 200
    object cdsListaFEmissaoFME_CODIGO: TIntegerField
      FieldName = 'FME_CODIGO'
      Required = True
    end
    object cdsListaFEmissaoFME_DESCRICAO: TStringField
      FieldName = 'FME_DESCRICAO'
      Size = 120
    end
  end
  object cdsListaFinalEmissao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "FNE_CODIGO", "FNE_DESCRICAO" from "FINALIDADES_EMISSAO"'
    Params = <>
    ProviderName = 'dspLista'
    Left = 248
    Top = 144
    object cdsListaFinalEmissaoFNE_CODIGO: TIntegerField
      FieldName = 'FNE_CODIGO'
      Required = True
    end
    object cdsListaFinalEmissaoFNE_DESCRICAO: TStringField
      FieldName = 'FNE_DESCRICAO'
    end
  end
  object cdsListaEmpresas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "EMI_CODIGO", "EMI_RAZAOSOCIAL", "EMI_FANTASIA" from "EMI' +
      'TENTES" order by "EMI_FANTASIA"'
    Params = <>
    ProviderName = 'dspLista'
    Left = 256
    Top = 200
    object cdsListaEmpresasEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      Required = True
    end
    object cdsListaEmpresasEMI_RAZAOSOCIAL: TStringField
      FieldName = 'EMI_RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsListaEmpresasEMI_FANTASIA: TStringField
      FieldName = 'EMI_FANTASIA'
      Size = 50
    end
  end
  object cdsNaturezaOpe: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "NAT_CODIGO", "NAT_DESCRICAO" from "NATUREZA_OPERACAO"'
    Params = <>
    ProviderName = 'dspLista'
    Left = 344
    Top = 152
    object cdsNaturezaOpeNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Required = True
    end
    object cdsNaturezaOpeNAT_DESCRICAO: TStringField
      FieldName = 'NAT_DESCRICAO'
      Size = 60
    end
  end
  object ZQryVolumes: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select * from "NOTAS_FISCAIS_VOLUMES" Where ("VOL_NUMERO" = :pNU' +
        'MERO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    Left = 24
    Top = 234
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    object ZQryVolumesVOL_NUMERO: TIntegerField
      FieldName = 'VOL_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryVolumesVOL_ITEM: TIntegerField
      FieldName = 'VOL_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryVolumesVOL_QUANTIDADE: TFloatField
      FieldName = 'VOL_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVolumesVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZQryVolumesVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZQryVolumesVOL_NUMERACAO: TStringField
      FieldName = 'VOL_NUMERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZQryVolumesVOL_PESO_LIQUIDO: TFloatField
      FieldName = 'VOL_PESO_LIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVolumesVOL_PESO_BRUTO: TFloatField
      FieldName = 'VOL_PESO_BRUTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspVolumes: TDataSetProvider
    DataSet = ZQryVolumes
    Options = [poAllowCommandText]
    OnGetTableName = dspVolumesGetTableName
    Left = 80
    Top = 218
  end
  object cdsVolumes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    ProviderName = 'dspVolumes'
    Left = 144
    Top = 258
    object cdsVolumesVOL_NUMERO: TIntegerField
      FieldName = 'VOL_NUMERO'
      Required = True
    end
    object cdsVolumesVOL_ITEM: TIntegerField
      FieldName = 'VOL_ITEM'
      Required = True
    end
    object cdsVolumesVOL_QUANTIDADE: TFloatField
      FieldName = 'VOL_QUANTIDADE'
    end
    object cdsVolumesVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
      Size = 60
    end
    object cdsVolumesVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
      Size = 60
    end
    object cdsVolumesVOL_NUMERACAO: TStringField
      FieldName = 'VOL_NUMERACAO'
      Size = 60
    end
    object cdsVolumesVOL_PESO_LIQUIDO: TFloatField
      FieldName = 'VOL_PESO_LIQUIDO'
    end
    object cdsVolumesVOL_PESO_BRUTO: TFloatField
      FieldName = 'VOL_PESO_BRUTO'
    end
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    Left = 360
    Top = 88
  end
end

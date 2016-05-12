unit udmNFe;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Forms,
  DBClient, Provider, XMLDoc, XMLIntf, xmldom, ACBrNFe,
  pcnConversao, pcnConversaoNFe, ACBrNFeDANFEClass, ACBrUtil, ACBrBase,
  ACBrDFe, ACBrNFeDANFeRLClass;

type
  TdmNFe = class(TDataModule)
    ZqryNotaFiscal: TZQuery;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    cdsItemsNotaFiscal: TClientDataSet;
    cdsItemsNotaFiscalCDS_NRITEM: TIntegerField;
    cdsItemsNotaFiscalCDS_CDPROD: TStringField;
    cdsItemsNotaFiscalCDS_CODEAN: TStringField;
    cdsItemsNotaFiscalCDS_DESCRICAO: TStringField;
    cdsItemsNotaFiscalCDS_NCM: TStringField;
    cdsItemsNotaFiscalCDS_EXTIPI: TStringField;
    cdsItemsNotaFiscalCDS_CFOP: TStringField;
    cdsItemsNotaFiscalCDS_UNDCOM: TStringField;
    cdsItemsNotaFiscalCDS_QTDECOM: TFloatField;
    cdsItemsNotaFiscalCDS_VLUNITARIO: TFloatField;
    cdsItemsNotaFiscalCDS_SUBTOTAL: TFloatField;
    cdsItemsNotaFiscalCDS_GTIN: TStringField;
    cdsItemsNotaFiscalCDS_UNTRIB: TStringField;
    cdsItemsNotaFiscalCDS_QTDETRIB: TFloatField;
    cdsItemsNotaFiscalCDS_VLUNTRIB: TFloatField;
    cdsItemsNotaFiscalCDS_VLFRETE: TFloatField;
    cdsItemsNotaFiscalCDS_VLSEGURO: TFloatField;
    cdsItemsNotaFiscalCDS_VLDESCONTO: TFloatField;
    cdsItemsNotaFiscalCDS_VLACRESCIMO: TFloatField;
    cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS: TFloatField;
    cdsItemsNotaFiscalCDS_INDTOT: TIntegerField;
    cdsItemsNotaFiscalCDS_BCICMS: TFloatField;
    cdsItemsNotaFiscalCDS_VLICMS: TFloatField;
    cdsItemsNotaFiscalCDS_VLIPI: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQICMS: TFloatField;
    cdsItemsNotaFiscalCDS_ALIQIPI: TFloatField;
    ZqryItensNota: TZQuery;
    dspItensNota: TDataSetProvider;
    cdsItensNota: TClientDataSet;
    ACBrNFe1: TACBrNFe;
    ZqryNotaFiscalNTF_CODIGO: TIntegerField;
    ZqryNotaFiscalNTF_NUMERONOTA: TStringField;
    ZqryNotaFiscalNTF_MODELO: TIntegerField;
    ZqryNotaFiscalNTF_SERIE: TStringField;
    ZqryNotaFiscalNTF_EMITENTE: TIntegerField;
    ZqryNotaFiscalNTF_NUMCUPOM: TStringField;
    ZqryNotaFiscalNTF_ANOMES: TStringField;
    ZqryNotaFiscalNTF_CFOP: TIntegerField;
    ZqryNotaFiscalNTF_CLIENTE: TIntegerField;
    ZqryNotaFiscalNTF_DTEMISSAO: TDateField;
    ZqryNotaFiscalNTF_DTATUALIZACAO_NF: TDateField;
    ZqryNotaFiscalNTF_DTDANFE: TDateField;
    ZqryNotaFiscalNTF_TIPO_EMISSAO_ENUM: TIntegerField;
    ZqryNotaFiscalNTF_C_NT: TStringField;
    ZqryNotaFiscalNTF_C_DV: TStringField;
    ZqryNotaFiscalNTF_RECIBO: TStringField;
    ZqryNotaFiscalNTF_UFDESTINO: TStringField;
    ZqryNotaFiscalNTF_CIDADE_DESTINO: TIntegerField;
    ZqryNotaFiscalNTF_SITUACAO_ENUM: TIntegerField;
    ZqryNotaFiscalNTF_EXPORTADA: TStringField;
    ZqryNotaFiscalNTF_NATUREZA: TIntegerField;
    ZqryNotaFiscalNTF_TIPODOCUMENTO: TIntegerField;
    ZqryNotaFiscalNTF_FORMA_PAGAMENTO: TIntegerField;
    ZqryNotaFiscalNTF_FORMA_EMISSAO: TIntegerField;
    ZqryNotaFiscalNTF_CHAVE: TStringField;
    ZqryNotaFiscalNTF_VERSAO_XML: TStringField;
    ZqryNotaFiscalNTF_DESCNATUREZA: TStringField;
    ZqryNotaFiscalNTF_DTSAIDA_ENTRADA: TDateField;
    ZqryNotaFiscalNTF_VALORTOTALNOTA: TFloatField;
    ZqryNotaFiscalNTF_VALORICMS: TFloatField;
    ZqryNotaFiscalNTF_VALORICMSST: TFloatField;
    ZqryNotaFiscalNTF_BASECALCULOICMS: TFloatField;
    ZqryNotaFiscalNTF_BASECALCULOSUBSTITUICAO: TFloatField;
    ZqryNotaFiscalNTF_VALORSUBSTITUICAO: TFloatField;
    ZqryNotaFiscalNTF_TIPOFRETE: TStringField;
    ZqryNotaFiscalNTF_VALORFRETE: TFloatField;
    ZqryNotaFiscalNTF_VALORIPI: TFloatField;
    ZqryNotaFiscalNTF_VALORSEGURO: TFloatField;
    ZqryNotaFiscalNTF_OUTRASPESPESAS: TFloatField;
    ZqryNotaFiscalNTF_CODTRANSPORTADORA: TIntegerField;
    ZqryNotaFiscalNTF_PROTOCOLO: TStringField;
    ZqryNotaFiscalNTF_DATAPROTOCOLO: TDateField;
    ZqryNotaFiscalNTF_CDFINALIDADE: TIntegerField;
    ZqryNotaFiscalNTF_CODERRO: TStringField;
    ZqryNotaFiscalNTF_MENSAGEM_ERRO: TStringField;
    ZqryNotaFiscalNTF_USUARIO_CAD: TIntegerField;
    ZqryNotaFiscalNTF_HOCADA: TStringField;
    ZqryNotaFiscalNTF_DTALTE: TDateField;
    ZqryNotaFiscalNTF_USALTE: TIntegerField;
    ZqryNotaFiscalNTF_HOALTE: TStringField;
    ZqryNotaFiscalNTF_VALOR_ITENS: TFloatField;
    ZqryNotaFiscalNTF_CNPJCPF: TStringField;
    ZqryNotaFiscalNTF_RAZAOSOCIAL: TStringField;
    ZqryNotaFiscalNTF_TIPOPESSOA: TStringField;
    ZqryNotaFiscalNTF_LOGRADOURO: TStringField;
    ZqryNotaFiscalNTF_DEST_NUMERO: TIntegerField;
    ZqryNotaFiscalNTF_DEST_COMPLEMENTO: TStringField;
    ZqryNotaFiscalNTF_DEST_BAIRRO: TStringField;
    ZqryNotaFiscalNTF_DEST_MUNICIPIO: TIntegerField;
    ZqryNotaFiscalNTF_DEST_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_DEST_UF: TStringField;
    ZqryNotaFiscalNTF_DEST_CEP: TStringField;
    ZqryNotaFiscalNTF_DEST_TELEFONE: TStringField;
    ZqryNotaFiscalNTF_DEST_IE: TStringField;
    ZqryNotaFiscalNTF_DEST_ISUF: TStringField;
    ZqryNotaFiscalNTF_DEST_EMAIL: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_CNPJCPF: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_LOGRADOURO: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_NUMERO: TIntegerField;
    ZqryNotaFiscalNTF_RETIRADA_COMPLEMENTO: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_BAIRRO: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_MUNICIPIO: TIntegerField;
    ZqryNotaFiscalNTF_RETIRADA_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_RETIRADA_UF: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_CNPJCPF: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_LOGRADOURO: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_NUMERO: TIntegerField;
    ZqryNotaFiscalNTF_ENTREGA_COMPLEMENTO: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_BAIRRO: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_MUNICIPIO: TIntegerField;
    ZqryNotaFiscalNTF_ENTREGA_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_ENTREGA_UF: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_CNPJ: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_RAZAO: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_FANTASIA: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_LOGRADOURO: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_NUMERO: TIntegerField;
    ZqryNotaFiscalNTF_EMITENTE_COMPLEMENTO: TStringField;
    ZqryNotaFiscalNTF_EMINTENTE_BAIRRO: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_MUNICIPIO: TIntegerField;
    ZqryNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_UF: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_CEP: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_COD_PAIS: TIntegerField;
    ZqryNotaFiscalNTF_EMITENTE_NOME_PAIS: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_TELEFONE: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_IE: TStringField;
    ZqryNotaFiscalNTF_EMINTENTE_IEST: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_IM: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_CNAE: TStringField;
    ZqryNotaFiscalNTF_EMINTENTE_CRT: TStringField;
    ZqryNotaFiscalNTF_VALOR_II: TFloatField;
    ZqryNotaFiscalNTF_VALOR_PIS: TFloatField;
    ZqryNotaFiscalNTF_VALOR_COFINS: TFloatField;
    ZqryNotaFiscalNTF_VALOR_DESCONTO: TFloatField;
    ZqryNotaFiscalNTF_MODALIDADE_FRETE: TIntegerField;
    ZqryNotaFiscalNTF_TRANSP_CNPJCPF: TStringField;
    ZqryNotaFiscalNTF_TRANSP_RAZAO: TStringField;
    ZqryNotaFiscalNTF_TRANSP_IE: TStringField;
    ZqryNotaFiscalNTF_TRANSP_ENDERECO: TStringField;
    ZqryNotaFiscalNTF_TRANSP_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_TRANSP_UF: TStringField;
    ZqryNotaFiscalNTF_RETTRANSP_VALOR_SERVICO: TFloatField;
    ZqryNotaFiscalNTF_RETTRANSP_BCRET: TFloatField;
    ZqryNotaFiscalNTF_RETTRANSP_ICMSRET: TFloatField;
    ZqryNotaFiscalNTF_RETTRANSP_ICMSRE: TFloatField;
    ZqryNotaFiscalNTF_RETTRANSP_CFOP: TIntegerField;
    ZqryNotaFiscalNTF_RETTRANSP_UF: TStringField;
    ZqryNotaFiscalNTF_RETTRANSP_MUNFG: TIntegerField;
    ZqryNotaFiscalNTF_VEICTRANSP_PLACA: TStringField;
    ZqryNotaFiscalNTF_VEICTRANSP_UF: TStringField;
    ZqryNotaFiscalNTF_VEICTRANSP_RNTC: TStringField;
    ZqryNotaFiscalNTF_REBOQUE_PLACA: TStringField;
    ZqryNotaFiscalNTF_REBOQUE_UF: TStringField;
    ZqryNotaFiscalNTF_REBOQUE_RNTC: TStringField;
    ZqryNotaFiscalNTF_INFORM_ADICIONAIS_FISCO: TMemoField;
    ZqryNotaFiscalNTF_INF_ADIC_CONTRIBUITE: TMemoField;
    ZqryNotaFiscalNTF_BCISS: TFloatField;
    ZqryNotaFiscalNTF_TOTAL_ISS: TFloatField;
    ZqryNotaFiscalNTF_PIS_SERVICO: TFloatField;
    ZqryNotaFiscalNTF_CONFINS_SERVICO: TFloatField;
    ZqryNotaFiscalNTF_TOTAL_SERVICO_N_INCIDENCIA: TFloatField;
    ZqryNotaFiscalNTF_VALOR_RETIDO_PIS: TFloatField;
    ZqryNotaFiscalNTF_VALOR_RETIDO_CONFINS: TFloatField;
    ZqryNotaFiscalNTF_VALOR_RETIDO_CSLL: TFloatField;
    ZqryNotaFiscalNTF_BC_IRRF: TFloatField;
    ZqryNotaFiscalNTF_VALOR_RETIDO_IRRF: TFloatField;
    ZqryNotaFiscalNTF_BC_RETIDO_PREV_SOCIAL: TFloatField;
    ZqryNotaFiscalNTF_RETENCAO_PREV_SOCIAL: TFloatField;
    ZqryNotaFiscalNTF_RETTRANSP_NOME_MUNICIPIO: TStringField;
    ZqryNotaFiscalNTF_EMITENTE_TPPESSOA: TStringField;
    ZqryNotaFiscalNTF_LOCAL_RET_DIF_EMI: TStringField;
    ZqryNotaFiscalNTF_LOCAL_ENT_DIF_DEST: TStringField;
    ZqryNotaFiscalNTF_PROTOCOLO_CANCELAMENTO: TStringField;
    ZqryNotaFiscalNTF_DTCANCELAMENTO: TDateField;
    ZqryNotaFiscalNTF_HORA_CANCELAMENTO: TStringField;
    ZqryNotaFiscalNTF_JUSTIFICATIVA_CANCELAMENTO: TStringField;
    ZqryNotaFiscalNTF_NRLOTE: TIntegerField;
    cdsNotaFiscalNTF_CODIGO: TIntegerField;
    cdsNotaFiscalNTF_NUMERONOTA: TStringField;
    cdsNotaFiscalNTF_MODELO: TIntegerField;
    cdsNotaFiscalNTF_SERIE: TStringField;
    cdsNotaFiscalNTF_EMITENTE: TIntegerField;
    cdsNotaFiscalNTF_NUMCUPOM: TStringField;
    cdsNotaFiscalNTF_ANOMES: TStringField;
    cdsNotaFiscalNTF_CFOP: TIntegerField;
    cdsNotaFiscalNTF_CLIENTE: TIntegerField;
    cdsNotaFiscalNTF_DTEMISSAO: TDateField;
    cdsNotaFiscalNTF_DTATUALIZACAO_NF: TDateField;
    cdsNotaFiscalNTF_DTDANFE: TDateField;
    cdsNotaFiscalNTF_TIPO_EMISSAO_ENUM: TIntegerField;
    cdsNotaFiscalNTF_C_NT: TStringField;
    cdsNotaFiscalNTF_C_DV: TStringField;
    cdsNotaFiscalNTF_RECIBO: TStringField;
    cdsNotaFiscalNTF_UFDESTINO: TStringField;
    cdsNotaFiscalNTF_CIDADE_DESTINO: TIntegerField;
    cdsNotaFiscalNTF_SITUACAO_ENUM: TIntegerField;
    cdsNotaFiscalNTF_EXPORTADA: TStringField;
    cdsNotaFiscalNTF_NATUREZA: TIntegerField;
    cdsNotaFiscalNTF_TIPODOCUMENTO: TIntegerField;
    cdsNotaFiscalNTF_FORMA_PAGAMENTO: TIntegerField;
    cdsNotaFiscalNTF_FORMA_EMISSAO: TIntegerField;
    cdsNotaFiscalNTF_CHAVE: TStringField;
    cdsNotaFiscalNTF_VERSAO_XML: TStringField;
    cdsNotaFiscalNTF_DESCNATUREZA: TStringField;
    cdsNotaFiscalNTF_DTSAIDA_ENTRADA: TDateField;
    cdsNotaFiscalNTF_VALORTOTALNOTA: TFloatField;
    cdsNotaFiscalNTF_VALORICMS: TFloatField;
    cdsNotaFiscalNTF_VALORICMSST: TFloatField;
    cdsNotaFiscalNTF_BASECALCULOICMS: TFloatField;
    cdsNotaFiscalNTF_BASECALCULOSUBSTITUICAO: TFloatField;
    cdsNotaFiscalNTF_VALORSUBSTITUICAO: TFloatField;
    cdsNotaFiscalNTF_TIPOFRETE: TStringField;
    cdsNotaFiscalNTF_VALORFRETE: TFloatField;
    cdsNotaFiscalNTF_VALORIPI: TFloatField;
    cdsNotaFiscalNTF_VALORSEGURO: TFloatField;
    cdsNotaFiscalNTF_OUTRASPESPESAS: TFloatField;
    cdsNotaFiscalNTF_CODTRANSPORTADORA: TIntegerField;
    cdsNotaFiscalNTF_PROTOCOLO: TStringField;
    cdsNotaFiscalNTF_DATAPROTOCOLO: TDateField;
    cdsNotaFiscalNTF_CDFINALIDADE: TIntegerField;
    cdsNotaFiscalNTF_CODERRO: TStringField;
    cdsNotaFiscalNTF_MENSAGEM_ERRO: TStringField;
    cdsNotaFiscalNTF_USUARIO_CAD: TIntegerField;
    cdsNotaFiscalNTF_HOCADA: TStringField;
    cdsNotaFiscalNTF_DTALTE: TDateField;
    cdsNotaFiscalNTF_USALTE: TIntegerField;
    cdsNotaFiscalNTF_HOALTE: TStringField;
    cdsNotaFiscalNTF_VALOR_ITENS: TFloatField;
    cdsNotaFiscalNTF_CNPJCPF: TStringField;
    cdsNotaFiscalNTF_RAZAOSOCIAL: TStringField;
    cdsNotaFiscalNTF_TIPOPESSOA: TStringField;
    cdsNotaFiscalNTF_LOGRADOURO: TStringField;
    cdsNotaFiscalNTF_DEST_NUMERO: TIntegerField;
    cdsNotaFiscalNTF_DEST_COMPLEMENTO: TStringField;
    cdsNotaFiscalNTF_DEST_BAIRRO: TStringField;
    cdsNotaFiscalNTF_DEST_MUNICIPIO: TIntegerField;
    cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_DEST_UF: TStringField;
    cdsNotaFiscalNTF_DEST_CEP: TStringField;
    cdsNotaFiscalNTF_DEST_TELEFONE: TStringField;
    cdsNotaFiscalNTF_DEST_IE: TStringField;
    cdsNotaFiscalNTF_DEST_ISUF: TStringField;
    cdsNotaFiscalNTF_DEST_EMAIL: TStringField;
    cdsNotaFiscalNTF_RETIRADA_CNPJCPF: TStringField;
    cdsNotaFiscalNTF_RETIRADA_LOGRADOURO: TStringField;
    cdsNotaFiscalNTF_RETIRADA_NUMERO: TIntegerField;
    cdsNotaFiscalNTF_RETIRADA_COMPLEMENTO: TStringField;
    cdsNotaFiscalNTF_RETIRADA_BAIRRO: TStringField;
    cdsNotaFiscalNTF_RETIRADA_MUNICIPIO: TIntegerField;
    cdsNotaFiscalNTF_RETIRADA_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_RETIRADA_UF: TStringField;
    cdsNotaFiscalNTF_ENTREGA_CNPJCPF: TStringField;
    cdsNotaFiscalNTF_ENTREGA_LOGRADOURO: TStringField;
    cdsNotaFiscalNTF_ENTREGA_NUMERO: TIntegerField;
    cdsNotaFiscalNTF_ENTREGA_COMPLEMENTO: TStringField;
    cdsNotaFiscalNTF_ENTREGA_BAIRRO: TStringField;
    cdsNotaFiscalNTF_ENTREGA_MUNICIPIO: TIntegerField;
    cdsNotaFiscalNTF_ENTREGA_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_ENTREGA_UF: TStringField;
    cdsNotaFiscalNTF_EMITENTE_CNPJ: TStringField;
    cdsNotaFiscalNTF_EMITENTE_RAZAO: TStringField;
    cdsNotaFiscalNTF_EMITENTE_FANTASIA: TStringField;
    cdsNotaFiscalNTF_EMITENTE_LOGRADOURO: TStringField;
    cdsNotaFiscalNTF_EMITENTE_NUMERO: TIntegerField;
    cdsNotaFiscalNTF_EMITENTE_COMPLEMENTO: TStringField;
    cdsNotaFiscalNTF_EMINTENTE_BAIRRO: TStringField;
    cdsNotaFiscalNTF_EMITENTE_MUNICIPIO: TIntegerField;
    cdsNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_EMITENTE_UF: TStringField;
    cdsNotaFiscalNTF_EMITENTE_CEP: TStringField;
    cdsNotaFiscalNTF_EMITENTE_COD_PAIS: TIntegerField;
    cdsNotaFiscalNTF_EMITENTE_NOME_PAIS: TStringField;
    cdsNotaFiscalNTF_EMITENTE_TELEFONE: TStringField;
    cdsNotaFiscalNTF_EMITENTE_IE: TStringField;
    cdsNotaFiscalNTF_EMINTENTE_IEST: TStringField;
    cdsNotaFiscalNTF_EMITENTE_IM: TStringField;
    cdsNotaFiscalNTF_EMITENTE_CNAE: TStringField;
    cdsNotaFiscalNTF_EMINTENTE_CRT: TStringField;
    cdsNotaFiscalNTF_VALOR_II: TFloatField;
    cdsNotaFiscalNTF_VALOR_PIS: TFloatField;
    cdsNotaFiscalNTF_VALOR_COFINS: TFloatField;
    cdsNotaFiscalNTF_VALOR_DESCONTO: TFloatField;
    cdsNotaFiscalNTF_MODALIDADE_FRETE: TIntegerField;
    cdsNotaFiscalNTF_TRANSP_CNPJCPF: TStringField;
    cdsNotaFiscalNTF_TRANSP_RAZAO: TStringField;
    cdsNotaFiscalNTF_TRANSP_IE: TStringField;
    cdsNotaFiscalNTF_TRANSP_ENDERECO: TStringField;
    cdsNotaFiscalNTF_TRANSP_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_TRANSP_UF: TStringField;
    cdsNotaFiscalNTF_RETTRANSP_VALOR_SERVICO: TFloatField;
    cdsNotaFiscalNTF_RETTRANSP_BCRET: TFloatField;
    cdsNotaFiscalNTF_RETTRANSP_ICMSRET: TFloatField;
    cdsNotaFiscalNTF_RETTRANSP_ICMSRE: TFloatField;
    cdsNotaFiscalNTF_RETTRANSP_CFOP: TIntegerField;
    cdsNotaFiscalNTF_RETTRANSP_UF: TStringField;
    cdsNotaFiscalNTF_RETTRANSP_MUNFG: TIntegerField;
    cdsNotaFiscalNTF_VEICTRANSP_PLACA: TStringField;
    cdsNotaFiscalNTF_VEICTRANSP_UF: TStringField;
    cdsNotaFiscalNTF_VEICTRANSP_RNTC: TStringField;
    cdsNotaFiscalNTF_REBOQUE_PLACA: TStringField;
    cdsNotaFiscalNTF_REBOQUE_UF: TStringField;
    cdsNotaFiscalNTF_REBOQUE_RNTC: TStringField;
    cdsNotaFiscalNTF_INFORM_ADICIONAIS_FISCO: TMemoField;
    cdsNotaFiscalNTF_INF_ADIC_CONTRIBUITE: TMemoField;
    cdsNotaFiscalNTF_BCISS: TFloatField;
    cdsNotaFiscalNTF_TOTAL_ISS: TFloatField;
    cdsNotaFiscalNTF_PIS_SERVICO: TFloatField;
    cdsNotaFiscalNTF_CONFINS_SERVICO: TFloatField;
    cdsNotaFiscalNTF_TOTAL_SERVICO_N_INCIDENCIA: TFloatField;
    cdsNotaFiscalNTF_VALOR_RETIDO_PIS: TFloatField;
    cdsNotaFiscalNTF_VALOR_RETIDO_CONFINS: TFloatField;
    cdsNotaFiscalNTF_VALOR_RETIDO_CSLL: TFloatField;
    cdsNotaFiscalNTF_BC_IRRF: TFloatField;
    cdsNotaFiscalNTF_VALOR_RETIDO_IRRF: TFloatField;
    cdsNotaFiscalNTF_BC_RETIDO_PREV_SOCIAL: TFloatField;
    cdsNotaFiscalNTF_RETENCAO_PREV_SOCIAL: TFloatField;
    cdsNotaFiscalNTF_RETTRANSP_NOME_MUNICIPIO: TStringField;
    cdsNotaFiscalNTF_EMITENTE_TPPESSOA: TStringField;
    cdsNotaFiscalNTF_LOCAL_RET_DIF_EMI: TStringField;
    cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST: TStringField;
    cdsNotaFiscalNTF_PROTOCOLO_CANCELAMENTO: TStringField;
    cdsNotaFiscalNTF_DTCANCELAMENTO: TDateField;
    cdsNotaFiscalNTF_HORA_CANCELAMENTO: TStringField;
    cdsNotaFiscalNTF_JUSTIFICATIVA_CANCELAMENTO: TStringField;
    cdsNotaFiscalNTF_NRLOTE: TIntegerField;
    ZqryItensNotaNFI_CODIGO_NOTAF: TIntegerField;
    ZqryItensNotaNFI_NRITEM: TIntegerField;
    ZqryItensNotaNFI_PRODUTO: TStringField;
    ZqryItensNotaNFI_DESCRICAO_PRODUTO: TStringField;
    ZqryItensNotaNFI_UNIDADE: TStringField;
    ZqryItensNotaNFI_QUANTIDADE: TFloatField;
    ZqryItensNotaNFI_VLUNITARIO: TFloatField;
    ZqryItensNotaNFI_VLDESCONTO: TFloatField;
    ZqryItensNotaNFI_VLACRESCIMO: TFloatField;
    ZqryItensNotaNFI_VLFRETE: TFloatField;
    ZqryItensNotaNFI_VLSEGURO: TFloatField;
    ZqryItensNotaNFI_OUTRASDESPESAS: TFloatField;
    ZqryItensNotaNFI_INDTOT: TIntegerField;
    ZqryItensNotaNFI_VLCOMPRA: TFloatField;
    ZqryItensNotaNFI_VLCUSTO: TFloatField;
    ZqryItensNotaNFI_ALIQUOTA_ICMS: TFloatField;
    ZqryItensNotaNFI_BCICMS: TFloatField;
    ZqryItensNotaNFI_ALIQUOTA_IPI: TFloatField;
    ZqryItensNotaNFI_VLICMS: TFloatField;
    ZqryItensNotaNFI_BCIPI: TFloatField;
    ZqryItensNotaNFI_VLIPI: TFloatField;
    ZqryItensNotaNFI_EAN: TStringField;
    ZqryItensNotaNFI_NCM: TStringField;
    ZqryItensNotaNFI_EXTIPI: TStringField;
    ZqryItensNotaNFI_CFOP: TIntegerField;
    ZqryItensNotaNFI_CEANTRIB: TStringField;
    ZqryItensNotaNFI_COD_SIT_TRIBUTARIA: TStringField;
    ZqryItensNotaNFI_ORIGEM_PRODUTO: TStringField;
    ZqryItensNotaNFI_IPI_SIT_TRIBUTARIA: TStringField;
    ZqryItensNotaNFI_PIS_SIT_TRIBUTARIA: TStringField;
    ZqryItensNotaNFI_COFINS_SIT_TRIBUTARIA: TStringField;
    cdsItensNotaNFI_CODIGO_NOTAF: TIntegerField;
    cdsItensNotaNFI_NRITEM: TIntegerField;
    cdsItensNotaNFI_PRODUTO: TStringField;
    cdsItensNotaNFI_DESCRICAO_PRODUTO: TStringField;
    cdsItensNotaNFI_UNIDADE: TStringField;
    cdsItensNotaNFI_QUANTIDADE: TFloatField;
    cdsItensNotaNFI_VLUNITARIO: TFloatField;
    cdsItensNotaNFI_VLDESCONTO: TFloatField;
    cdsItensNotaNFI_VLACRESCIMO: TFloatField;
    cdsItensNotaNFI_VLFRETE: TFloatField;
    cdsItensNotaNFI_VLSEGURO: TFloatField;
    cdsItensNotaNFI_OUTRASDESPESAS: TFloatField;
    cdsItensNotaNFI_INDTOT: TIntegerField;
    cdsItensNotaNFI_VLCOMPRA: TFloatField;
    cdsItensNotaNFI_VLCUSTO: TFloatField;
    cdsItensNotaNFI_ALIQUOTA_ICMS: TFloatField;
    cdsItensNotaNFI_BCICMS: TFloatField;
    cdsItensNotaNFI_ALIQUOTA_IPI: TFloatField;
    cdsItensNotaNFI_VLICMS: TFloatField;
    cdsItensNotaNFI_BCIPI: TFloatField;
    cdsItensNotaNFI_VLIPI: TFloatField;
    cdsItensNotaNFI_EAN: TStringField;
    cdsItensNotaNFI_NCM: TStringField;
    cdsItensNotaNFI_EXTIPI: TStringField;
    cdsItensNotaNFI_CFOP: TIntegerField;
    cdsItensNotaNFI_CEANTRIB: TStringField;
    cdsItensNotaNFI_COD_SIT_TRIBUTARIA: TStringField;
    cdsItensNotaNFI_ORIGEM_PRODUTO: TStringField;
    cdsItensNotaNFI_IPI_SIT_TRIBUTARIA: TStringField;
    cdsItensNotaNFI_PIS_SIT_TRIBUTARIA: TStringField;
    cdsItensNotaNFI_COFINS_SIT_TRIBUTARIA: TStringField;
    ZqryListas: TZQuery;
    dspLista: TDataSetProvider;
    cdsListaFPaga: TClientDataSet;
    cdsListaFEmissao: TClientDataSet;
    cdsListaFinalEmissao: TClientDataSet;
    cdsListaEmpresas: TClientDataSet;
    cdsNaturezaOpe: TClientDataSet;
    cdsListaFPagaFPG_CODIGO: TIntegerField;
    cdsListaFPagaFPG_DESCRICAO: TStringField;
    cdsListaFEmissaoFME_CODIGO: TIntegerField;
    cdsListaFEmissaoFME_DESCRICAO: TStringField;
    cdsListaFinalEmissaoFNE_CODIGO: TIntegerField;
    cdsListaFinalEmissaoFNE_DESCRICAO: TStringField;
    cdsListaEmpresasEMI_CODIGO: TIntegerField;
    cdsListaEmpresasEMI_RAZAOSOCIAL: TStringField;
    cdsListaEmpresasEMI_FANTASIA: TStringField;
    cdsNaturezaOpeNAT_CODIGO: TIntegerField;
    cdsNaturezaOpeNAT_DESCRICAO: TStringField;
    cdsNotaFiscalNTF_FNEMISSAO: TStringField;
    cdsNotaFiscalNTF_FMPAGA: TStringField;
    cdsNotaFiscalNTF_FMEMISSAO: TStringField;
    cdsNotaFiscalNTF_NMNATUREZAOP: TStringField;
    cdsNotaFiscalNFE_NMEMITENTE: TStringField;
    ZQryVolumes: TZQuery;
    ZQryVolumesVOL_NUMERO: TIntegerField;
    ZQryVolumesVOL_ITEM: TIntegerField;
    ZQryVolumesVOL_QUANTIDADE: TFloatField;
    ZQryVolumesVOL_ESPECIE: TStringField;
    ZQryVolumesVOL_MARCA: TStringField;
    ZQryVolumesVOL_NUMERACAO: TStringField;
    ZQryVolumesVOL_PESO_LIQUIDO: TFloatField;
    ZQryVolumesVOL_PESO_BRUTO: TFloatField;
    dspVolumes: TDataSetProvider;
    cdsVolumes: TClientDataSet;
    cdsVolumesVOL_NUMERO: TIntegerField;
    cdsVolumesVOL_ITEM: TIntegerField;
    cdsVolumesVOL_QUANTIDADE: TFloatField;
    cdsVolumesVOL_ESPECIE: TStringField;
    cdsVolumesVOL_MARCA: TStringField;
    cdsVolumesVOL_NUMERACAO: TStringField;
    cdsVolumesVOL_PESO_LIQUIDO: TFloatField;
    cdsVolumesVOL_PESO_BRUTO: TFloatField;
    cdsItemsNotaFiscalCDS_SUB_TOT_ENT: TFloatField;
    cdsItemsNotaFiscalCDS_NRLOTE: TStringField;
    cdsItemsNotaFiscalCDS_DTVENC_LOTE: TDateField;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    procedure dspNotaFiscalGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsItemsNotaFiscalCalcFields(DataSet: TDataSet);
    procedure dspItensNotaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspVolumesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    {function GravarNota(iMODELO, iCUPOM, iEMITENTE, iCLIENTE,
      iTIPO_EMISSAO_ENUM, iTIPODOCUMENTO, iFORMA_PAGAMENTO, iFORMA_EMISSAO,
      iNATUREZA, iUSUARIO, iCDCIDADE, iCDFINALIDADE: Integer;
      aDTEMISSAO: TDateTime; aC_NT, aSERIE, aDESCNATUREZA,
      aUFDESTINO: String; fVALORTOTALNOTA, fVALORICMS,
      fVALORICMSST: Double; aCDSItens: TClientDataSet): Boolean;}
    { Private declarations }
  public
    { Public declarations }
    aMensagem : TStrings;
    procedure Abrir_Tabela_Itens;
    Function AddItemNota(pNRITEM : Integer;
                         pCDPROD, pCODEAN, pDESCRICAO, pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB : String;
                         pQTDECOM, pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO, pVLACRESCIMO, pVLOUTRASDESPESAS : Double;
                         pINDTOT : Integer;
                         pBCICMS, pVLICMS, pVLIPI, pALIQICMS, pALIQIPI : Double; aNRLOTE, aDtVencLote : String) : Boolean;
    Function GravarItensNotaFiscal(iCodNota : Integer; aCDSItens : TClientDataSet) : Boolean;
    Function VerificaItemNota(iCodigoNota, iItem : Integer; aProduto : String) : Boolean;
    Function GetValorNotaFiscal(aCDSItens : TClientDataSet): Double;
    Function ValidaNFE(arquivoXMLNFe : String) : Boolean;
    Function CarregarItensNota(iCodigoNota : Integer) : Boolean;
    Function GerarXML(iCodigo, iAmbiente, iTipo : Integer) : Boolean;
    Function GerarXMLManual(iCodigo, iAmbiente, iTipo : Integer) : Boolean;
    Procedure AbrirVolumesNota(iCodigo : Integer);
  end;


var
  dmNFe: TdmNFe;


implementation

uses uDMDados, uFuncoes, pcnNFe;

{$R *.dfm}

function TdmNFe.AddItemNota(pNRITEM: Integer; pCDPROD, pCODEAN, pDESCRICAO,
  pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB: String; pQTDECOM,
  pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO,
  pVLACRESCIMO, pVLOUTRASDESPESAS: Double; pINDTOT: Integer; pBCICMS,
  pVLICMS, pVLIPI, pALIQICMS, pALIQIPI: Double; aNRLOTE, aDtVencLote : String): Boolean;
begin
     Result := false;
     if not (cdsItemsNotaFiscal.Active) Then
        cdsItemsNotaFiscal.Open;
     //
     With cdsItemsNotaFiscal do
      begin
           Append;
           FieldByName('CDS_NRITEM').AsInteger := pNRITEM;
           FieldByName('CDS_CDPROD').AsString  := pCDPROD;
           FieldByName('CDS_CODEAN').AsString  := pCODEAN;
           FieldByName('CDS_DESCRICAO').AsString := pDESCRICAO;
           FieldByName('CDS_NCM').AsString     := pNCM;
           FieldByName('CDS_EXTIPI').AsString  := pEXTIPI;
           FieldByName('CDS_CFOP').AsString    := pCFOP;
           FieldByName('CDS_UNDCOM').AsString  := pUNDCOM;
           FieldByName('CDS_QTDECOM').AsFloat  := pQTDECOM;
           FieldByName('CDS_VLUNITARIO').AsFloat := pVLUNTRIB;
           FieldByName('CDS_GTIN').AsString    := pGTIN;
           FieldByName('CDS_UNTRIB').AsString  := pUNTRIB;
           FieldByName('CDS_QTDETRIB').AsFloat := pQTDETRIB;
           FieldByName('CDS_VLUNTRIB').AsFloat := pVLUNTRIB;
           FieldByName('CDS_VLFRETE').AsFloat  := pVLFRETE;
           FieldByName('CDS_VLSEGURO').AsFloat := pVLSEGURO;
           FieldByName('CDS_VLDESCONTO').AsFloat := pVLDESCONTO;
           FieldByName('CDS_VLACRESCIMO').AsFloat := pVLACRESCIMO;
           FieldByName('CDS_VLOUTRASDESPESAS').AsFloat := pVLOUTRASDESPESAS;
           FieldByName('CDS_INDTOT').AsInteger := pINDTOT;
           FieldByName('CDS_BCICMS').AsFloat   := pBCICMS;
           FieldByName('CDS_VLICMS').AsFloat   := pVLICMS;
           FieldByName('CDS_VLIPI').AsFloat    := pVLIPI;
           FieldByName('CDS_ALIQICMS').AsFloat := pALIQICMS;
           FieldByName('CDS_ALIQIPI').AsFloat  := pALIQIPI;
           FieldByName('CDS_NRLOTE').AsString  := aNRLOTE;
           FieldByName('CDS_DTVENC_LOTE').AsString := aDtVencLote; 
           //
           Post;
      End;
      //
      Result := true;
end;

procedure TdmNFe.dspNotaFiscalGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'NOTA_FISCAL'; 
end;

procedure TdmNFe.cdsItemsNotaFiscalCalcFields(DataSet: TDataSet);
begin
     If (cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat > 0)
        and (cdsItemsNotaFiscalCDS_QTDECOM.AsFloat > 0) Then
      Begin
         cdsItemsNotaFiscalCDS_SUBTOTAL.AsFloat :=
            ((cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat * cdsItemsNotaFiscalCDS_QTDECOM.AsFloat)
            + cdsItemsNotaFiscalCDS_VLACRESCIMO.AsFloat) - cdsItemsNotaFiscalCDS_VLDESCONTO.AsFloat;
         //
         cdsItemsNotaFiscalCDS_SUB_TOT_ENT.AsFloat :=
            (cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat * cdsItemsNotaFiscalCDS_QTDECOM.AsFloat);

      End;
end;

procedure TdmNFe.dspItensNotaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'NOTA_FISCAL_ITENS';
end;


function TdmNFe.GravarItensNotaFiscal(iCodNota : Integer; aCDSItens: TClientDataSet): Boolean;
begin
      Result := False;
      //
      With cdsItensNota do
        begin
             Close;
             Params.ParamByName('pCODNOTA').AsInteger := iCodNota;
             Open;
        End;
      //
      With aCDSItens do
        begin
              DisableControls;
              First;
              While not (EoF) do
                begin
                     If not (VerificaItemNota(iCodNota, FieldByName('CDS_NRITEM').AsInteger,
                           FieldByName('CDS_CDPROD').AsString)) Then
                          cdsItensNota.Append
                      Else
                          cdsItensNota.Edit;
                     //
                     cdsItensNotaNFI_CODIGO_NOTAF.AsInteger := iCodNota;
                     cdsItensNotaNFI_NRITEM.AsInteger       := FieldByName('CDS_NRITEM').AsInteger;
                     cdsItensNotaNFI_PRODUTO.AsString       := FieldByName('CDS_CDPROD').AsString;
                     cdsItensNotaNFI_DESCRICAO_PRODUTO.AsString := FieldByName('CDS_DESCRICAO').AsString;
                     cdsItensNotaNFI_CFOP.AsInteger         := FieldByName('CDS_CFOP').AsInteger;
                     cdsItensNotaNFI_UNIDADE.AsString       := FieldByName('CDS_UNDCOM').AsString;
                     cdsItensNotaNFI_QUANTIDADE.AsFloat     := FieldByName('CDS_QTDECOM').AsFloat;
                     cdsItensNotaNFI_VLUNITARIO.AsFloat     := FieldByName('CDS_VLUNITARIO').AsFloat;
                     cdsItensNotaNFI_VLDESCONTO.AsFloat     := FieldByName('CDS_VLDESCONTO').AsFloat;
                     cdsItensNotaNFI_VLACRESCIMO.AsFloat    := FieldByName('CDS_VLACRESCIMO').AsFloat;
                     cdsItensNotaNFI_VLFRETE.AsFloat        := FieldByName('CDS_VLFRETE').AsFloat;
                     cdsItensNotaNFI_VLSEGURO.AsFloat       := FieldByName('CDS_VLSEGURO').AsFloat;
                     cdsItensNotaNFI_OUTRASDESPESAS.AsFloat := FieldByName('CDS_VLOUTRASDESPESAS').AsFloat;
                     cdsItensNotaNFI_INDTOT.AsInteger       := FieldByName('CDS_INDTOT').AsInteger;
                     //
                     uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, FieldByName('CDS_CDPROD').AsString);
                     if not (DMDados.cdsProduto.IsEmpty) Then
                     begin
                          cdsItensNotaNFI_VLCOMPRA.AsFloat       := 0;
                          cdsItensNotaNFI_VLCUSTO.AsFloat        := 0;
                          //
                          DMDados.cdsProduto.Close;
                     End;
                     //
                     cdsItensNota.ApplyUpdates(0);
                     // Proximo
                     Next;
                End;
                EnableControls;
        End;
end;


function TdmNFe.VerificaItemNota(iCodigoNota, iItem: Integer;
  aProduto: String): Boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     Result := False;
     texto  := 'Select "NFI_CODIGO_NOTAF", "NFI_NRITEM", "NFI_PRODUTO" from "NOTA_FISCAL_ITENS" ';
     texto  := texto + ' where ("NFI_CODIGO_NOTAF" = :pNOTAF) and ("NFI_NRITEM" = :pNRITEM) and ("NFI_PRODUTO" = :pPRODUTO) ';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := dmDados.ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNOTAF').AsInteger  := iCodigoNota;
           Params.ParamByName('pNRITEM').AsInteger := iItem;
           Params.ParamByName('pPRODUTO').AsString := aProduto;
           Open;
           //
           If not (IsEmpty) Then
              Result := True;
      Finally
         Free;
      End;
end;

procedure TdmNFe.Abrir_Tabela_Itens;
begin
    cdsItemsNotaFiscal.Close;
    cdsItemsNotaFiscal.Open;
    cdsItemsNotaFiscal.EmptyDataSet;
end;

function TdmNFe.GetValorNotaFiscal(aCDSItens: TClientDataSet): Double;
Var
   M_VALOR : Double;
begin
      M_VALOR := 0;
      //
      With aCDSItens do
        begin
              DisableControls;
              First;
              While not (EoF) do
                begin
                     M_VALOR := M_VALOR + FieldByName('CDS_SUBTOTAL').AsFloat;
                     // Proximo
                     Next;
                End;
              EnableControls;
        End;
        //
        Result := M_VALOR;
end;

Function TdmNFe.ValidaNFE(arquivoXMLNFe : String) : Boolean;
var
     XMLDoc: TXMLDocument;
     diretorioxml : String;
begin
     XMLDoc:= TXMLDocument.Create(nil);
     diretorioxml := ExtractFilePath( Application.ExeName )+'\xml';

     Result := false;
     try
          XMLDoc.ParseOptions:= [poResolveExternals, poValidateOnParse];
          try
               XMLDoc.LoadFromFile(diretorioxml+'\assinadas\'+arquivoXMLNFe);
               XMLDoc.Active:= True;
               aMensagem.Add('O arquivo '+ arquivoXMLNFe + ' � um XML V�LIDO.');
               aMensagem.Add('');
               XMLDoc.Active:= False;
               Result := true;
          except
              on E:EDOMParseError do
              begin
                 aMensagem.Add('O arquivo '+ arquivoXMLNFe + ' � um XML INV�LIDO. Verifique: ');
                 aMensagem.Add('');
                 aMensagem.Add(E.Message);
                 aMensagem.Add('');
              end;
          end;
     finally
          XMLDoc.Free;
     end;
End;

function TdmNFe.CarregarItensNota(iCodigoNota: Integer): Boolean;
begin
     Result := False;
     //
     cdsItemsNotaFiscal.Close;
     cdsItemsNotaFiscal.Open;
     cdsItemsNotaFiscal.EmptyDataSet;
     //
     With cdsItensNota do
      begin
           Close;
           Params[0].AsInteger := iCodigoNota;
           Open;
           //
           If not (IsEmpty) then
            begin
                 DisableControls;
                 First;
                 While not (Eof) do
                  begin
                       cdsItemsNotaFiscal.Append;
                       cdsItemsNotaFiscalCDS_NRITEM.AsInteger := FieldByName('NFI_NRITEM').AsInteger;
                       cdsItemsNotaFiscalCDS_CDPROD.AsString  := FieldByName('NFI_PRODUTO').AsString;
                       cdsItemsNotaFiscalCDS_DESCRICAO.AsString := dmDados.GetNomeProduto(FieldByName('NFI_PRODUTO').AsString);
                       cdsItemsNotaFiscalCDS_CFOP.AsString    := FieldByName('NFI_CFOP').AsString;
                       //dmDados.GetCFOPProduto(FieldByName('NFI_PRODUTO').AsString);
                       cdsItemsNotaFiscalCDS_UNDCOM.AsString  := FieldByName('NFI_UNIDADE').AsString;
                       cdsItemsNotaFiscalCDS_QTDECOM.AsFloat  := FieldByName('NFI_QUANTIDADE').AsFloat;
                       cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat := FieldByName('NFI_VLUNITARIO').AsFloat;
                       cdsItemsNotaFiscalCDS_VLDESCONTO.asFloat := FieldByName('NFI_VLDESCONTO').AsFloat;
                       cdsItemsNotaFiscalCDS_VLACRESCIMO.AsFloat := FieldByName('NFI_VLACRESCIMO').AsFloat;
                       cdsItemsNotaFiscalCDS_VLFRETE.AsFloat  := FieldByName('NFI_VLFRETE').AsFloat;
                       cdsItemsNotaFiscalCDS_VLSEGURO.AsFloat := FieldByName('NFI_VLSEGURO').AsFloat;
                       cdsItemsNotaFiscalCDS_VLOUTRASDESPESAS.AsFloat := FieldByName('NFI_OUTRASDESPESAS').AsFloat;
                       cdsItemsNotaFiscalCDS_INDTOT.AsInteger := FieldByName('NFI_INDTOT').AsInteger;
                       //
                       cdsItemsNotaFiscal.Post;
                       //
                       Next;
                  End;
                  EnableControls;
            End;
      End;
end;

function TdmNFe.GerarXML(iCodigo, iAmbiente, iTipo: Integer): Boolean;
Var
    qryAux : TZQuery;
    texto : String;
    M_VLNOTA, M_VLITENS : Double;
begin
     Result := False;
     M_VLNOTA  := 0;
     M_VLITENS := 0;
     texto  := 'Select * from "NOTA_FISCAL" where ("NTF_CODIGO" = :pCODIGO)';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := dmDados.ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodigo;
           Open;
           //
           If not (IsEmpty) Then
            begin
                 // limpa componente
                 ACBrNFe1.NotasFiscais.Clear;
                 With ACBrNFe1.NotasFiscais.Add.NFe do
                  begin
                       // Identifica��o
                       infNFe.ID := FieldByName('NTF_NUMERONOTA').AsString;

                       Ide.natOp     := FieldByName('NTF_DESCNATUREZA').AsString;
                       Ide.nNF       := FieldByName('NTF_NUMERONOTA').AsInteger;
                       Ide.cNF       := FieldByName('NTF_NUMERONOTA').AsInteger;
                       Ide.modelo    := FieldByName('NTF_MODELO').AsInteger;
                       Ide.serie     := FieldByName('NTF_SERIE').AsInteger;
                       Ide.dEmi      := Date;
                       Ide.dSaiEnt   := Date;
                       if (iAmbiente = 1) Then
                          Ide.tpAmb := taProducao
                       Else
                          Ide.tpAmb := taHomologacao;
                       //
                       if (iTipo = 1) Then
                          Ide.tpNF := tnSaida
                       Else
                          Ide.tpNF := tnEntrada;
                       //
                       Case FieldByName('NTF_FORMA_PAGAMENTO').AsInteger of
                          0 : Ide.indPag    := ipVista;
                          1 : Ide.indPag    := ipPrazo;
                          2 : Ide.indPag    := ipOutras;
                       End;
                       //
                       Ide.verProc   := '1.0.0.0';
                       Ide.cUF       := 22;
                       Ide.cMunFG    := 2211001;

                       // Emitente
                       uFuncoes.FilterCDS(dmDados.cdsEmitente, fsInteger, cdsNotaFiscalNTF_EMITENTE.AsString);
                       Emit.CNPJCPF           := dmDados.cdsEmitenteEMI_CNPJ.AsString;
                       Emit.IE                := dmDados.cdsEmitenteEMI_INSCRICAOESTADUAL.AsString;
                       Emit.xNome             := dmDados.cdsEmitenteEMI_RAZAOSOCIAL.AsString;;
                       Emit.xFant             := dmDados.cdsEmitenteEMI_FANTASIA.AsString;
                       Emit.EnderEmit.fone    := dmDados.cdsEmitenteEMI_TELEFONE.AsString;
                       Emit.EnderEmit.CEP     := StrToInt(dmDados.cdsEmitenteEMI_CEP.AsString);
                       Emit.EnderEmit.xLgr    := dmDados.cdsEmitenteEMI_LOGRADOURO.AsString;
                       Emit.EnderEmit.nro     := dmDados.cdsEmitenteEMI_NUMERO.AsString;
                       Emit.EnderEmit.xCpl    := dmDados.cdsEmitenteEMI_COMPLEMENTO.AsString;
                       Emit.EnderEmit.xBairro := dmDados.cdsEmitenteEMI_BAIRRO.AsString;
                       Emit.EnderEmit.cMun    := 2211001;
                       Emit.EnderEmit.xMun    := dmDados.cdsEmitenteEMI_NMCIDADE.AsString;
                       Emit.EnderEmit.UF      := dmDados.cdsEmitenteEMI_UF.AsString;
                       Emit.enderEmit.cPais   := 1058;
                       Emit.enderEmit.xPais   := 'BRASIL';

                       // Destinat�rio
                       uFuncoes.FilterCDS(dmDados.cdsCliente, fsInteger, cdsNotaFiscalNTF_CLIENTE.AsString);
                       Dest.CNPJCPF           := dmDados.cdsClienteCLI_CGC.AsString;
                       Dest.EnderDest.CEP     := dmDados.cdsClienteCLI_CEP.AsInteger;
                       Dest.EnderDest.xLgr    := dmDados.cdsClienteCLI_ENDERECO.AsString;
                       Dest.EnderDest.nro     := dmDados.cdsClienteCLI_NUMERO.AsString;
                       Dest.EnderDest.xCpl    := dmDados.cdsClienteCLI_PONTO_REFERENCIA.AsString;
                       Dest.EnderDest.xBairro := dmDados.cdsClienteCLI_BAIRRO.AsString;
                       Dest.EnderDest.cMun    := 2211001;
                       Dest.EnderDest.xMun    := 'TERESINA'; //dmDados.cdsClienteCLI_NMCIDADE.AsString;
                       Dest.EnderDest.UF      := dmDados.cdsClienteCLI_UFCLIENTE.AsString;
                       Dest.EnderDest.Fone    := dmDados.cdsClienteCLI_FONE1.AsString;
                       If (dmDados.cdsClienteCLI_TIPOPESSOA.AsString  = 'J')
                        AND Not uFuncoes.Empty(dmDados.cdsClienteCLI_INSCESTADUAL.AsString) Then
                         Dest.IE                := dmDados.cdsClienteCLI_INSCESTADUAL.AsString;
                       Dest.xNome             := dmDados.cdsClienteCLI_RAZAO.AsString;
                       Dest.EnderDest.cPais   := 1058;
                       Dest.EnderDest.xPais   := 'BRASIL';

                       // Itens : Produtos e Servi�os
                       cdsItemsNotaFiscal.DisableControls;
                       cdsItemsNotaFiscal.First;
                       While not (cdsItemsNotaFiscal.Eof) do
                       begin
                         with Det.Add do
                          begin
                                //infAdProd     :=
                                Prod.nItem    := cdsItemsNotaFiscalCDS_NRITEM.AsInteger;
                                Prod.CFOP     := cdsItemsNotaFiscalCDS_CFOP.AsString;
                                Prod.cProd    := cdsItemsNotaFiscalCDS_CDPROD.AsString;
                                Prod.xProd    := cdsItemsNotaFiscalCDS_DESCRICAO.AsString;
                                Prod.qCom     := cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat;
                                Prod.uCom     := cdsItemsNotaFiscalCDS_UNDCOM.AsString;
                                Prod.vProd    := cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat;
                                Prod.vUnCom   := cdsItemsNotaFiscalCDS_QTDECOM.AsFloat;
                                Prod.qTrib    := cdsItemsNotaFiscalCDS_VLUNITARIO.AsFloat;
                                Prod.uTrib    := cdsItemsNotaFiscalCDS_UNDCOM.AsString;
                                Prod.vUnTrib  := cdsItemsNotaFiscalCDS_QTDECOM.AsFloat;
                                with Imposto do
                                begin
                                  with ICMS do
                                  begin
                                    CST := cst00;
                                    ICMS.modBC  := dbiPrecoTabelado;
                                    ICMS.pICMS  := 17;
                                    ICMS.vICMS  := 170;
                                    ICMS.vBC    := 1000;
                                  end;
                                  IPI.CST := ipi01;
                                end;
                          end;
                          //
                          M_VLITENS := M_VLITENS + cdsItemsNotaFiscalCDS_SUBTOTAL.AsFloat;
                          M_VLNOTA  := M_VLNOTA + cdsItemsNotaFiscalCDS_SUBTOTAL.AsFloat;
                          //
                          cdsItemsNotaFiscal.Next;
                       End;   // fim-do-enquanto produdos e servi�os
                       cdsItemsNotaFiscal.EnableControls;
                       //
                       Total.ICMSTot.vBC   := M_VLNOTA;
                       Total.ICMSTot.vICMS := 170;
                       Total.ICMSTot.vNF   := M_VLNOTA;
                       Total.ICMSTot.vProd := M_VLITENS;
                  End;
                  //
                  ACBrNFe1.Enviar(0);
            End;
      Finally
         Free;
      End;
      //
      Result := True;
end;

function TdmNFe.GerarXMLManual(iCodigo, iAmbiente,
  iTipo: Integer): Boolean;
Var
    StringList: TStringList;
    qryAux : TZQuery;
    texto : String;
    M_VLNOTA, M_VLITENS : Double;
    M_IDNOTA : String;
begin
      Result := False;
      // Chave de acesso
      M_IDNOTA := 'NFe'+uFuncoes.MontaChaveAcessoNFe_v110(1, Date(),
         dmDados.cdsEmitenteEMI_CNPJ.AsString, 55, 1,
         cdsNotaFiscalNTF_NUMERONOTA.AsInteger);
      //
      StringList := TStringList.Create;
      try
         // Cabe�alho
         StringList.Add('<?xml version="1.0" encoding="utf-8" ?>');
         StringList.Add('<NFe xmlns="http://www.portalfiscal.inf.br/nfe">');
         StringList.Add('<infNFe Id="'+M_IDNOTA+'" versao="1.10">');
         // identifica��o
         StringList.Add('<ide>');
         StringList.Add('<cUF>35</cUF>');
         StringList.Add('  <cNF>518005127</cNF>');
         StringList.Add('  <natOp>Venda a vista</natOp>');
         StringList.Add('  <indPag>0</indPag>');
         StringList.Add('  <mod>55</mod>');
         StringList.Add('  <serie>1</serie>');
         StringList.Add('  <nNF>1</nNF>');
         StringList.Add('  <dEmi>2008-05-06</dEmi>');
         StringList.Add('  <dSaiEnt>2008-05-06</dSaiEnt>');
         StringList.Add('  <tpNF>0</tpNF>');
         StringList.Add('  <cMunFG>3550308</cMunFG>');
         StringList.Add('  <tpImp>1</tpImp>');
         StringList.Add('  <tpEmis>1</tpEmis>');
         StringList.Add('  <cDV>3</cDV>');
         StringList.Add('  <tpAmb>2</tpAmb>');
         StringList.Add('  <finNFe>1</finNFe>');
         StringList.Add('  <procEmi>0</procEmi>');
         StringList.Add('  <verProc>NF-eletronica.com</verProc>');
         StringList.Add('</ide>');
         StringList.Add('</infNFe>');
         StringList.Add('</NFe>');
      Finally
         // salva Html
         StringList.SaveToFile(M_IDNOTA+'.xml');
         StringList.Free;
      End;
      Result := True;
end;

procedure TdmNFe.AbrirVolumesNota(iCodigo: Integer);
begin
     With cdsVolumes do
      begin
           Close;
           Params[0].AsInteger := iCodigo;
           Open;
      End;
end;

procedure TdmNFe.dspVolumesGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
     TableName := 'NOTAS_FISCAIS_VOLUMES';
end;

end.

unit uDMDados;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBClient, Provider, Controls, MidasLib, Forms, StdCtrls, Windows;

type
  TdmDados = class(TDataModule)
    ZConexao: TZConnection;
    ZqryConfig: TZQuery;
    ZqryConfigCFG_CODIGO: TIntegerField;
    ZqryConfigCFG_EMITENTE: TIntegerField;
    ZqryConfigCFG_CLIENTE: TIntegerField;
    ZqryConfigCFG_PRODUTO: TIntegerField;
    ZqryConfigCFG_TRANSPORTADORA: TIntegerField;
    ZqryConfigCFG_NOTAFISCAL: TIntegerField;
    ZqryConfigCFG_USUARIO: TIntegerField;
    ZqryEmitente: TZQuery;
    ZqryEmitenteEMI_CODIGO: TIntegerField;
    ZqryEmitenteEMI_RAZAOSOCIAL: TStringField;
    ZqryEmitenteEMI_FANTASIA: TStringField;
    ZqryEmitenteEMI_CNPJ: TStringField;
    ZqryEmitenteEMI_INSCRICAOESTADUAL: TStringField;
    ZqryEmitenteEMI_CNAE_FISCAL: TStringField;
    ZqryEmitenteEMI_INSMUNICIPAL: TStringField;
    ZqryEmitenteEMI_IEST: TStringField;
    ZqryEmitenteEMI_LOGRADOURO: TStringField;
    ZqryEmitenteEMI_NUMERO: TIntegerField;
    ZqryEmitenteEMI_COMPLEMENTO: TStringField;
    ZqryEmitenteEMI_BAIRRO: TStringField;
    ZqryEmitenteEMI_CEP: TStringField;
    ZqryEmitenteEMI_CDPAIS: TIntegerField;
    ZqryEmitenteEMI_UF: TStringField;
    ZqryEmitenteEMI_CDCIDADE: TIntegerField;
    ZqryEmitenteEMI_TELEFONE: TStringField;
    ZqryEmitenteEMI_DTCADA: TDateField;
    ZqryEmitenteEMI_HOCADA: TStringField;
    ZqryEmitenteEMI_USCADA: TIntegerField;
    ZqryEmitenteEMI_DTALTE: TDateField;
    ZqryEmitenteEMI_HOALTE: TStringField;
    ZqryEmitenteEMI_USALTE: TIntegerField;
    ZqryCliente: TZQuery;
    ZqryProduto: TZQuery;
    ZqryUsuario: TZQuery;
    ZqryUsuarioUSU_CODIGO: TIntegerField;
    ZqryUsuarioUSU_NOME: TStringField;
    ZqryUsuarioUSU_CARGO: TStringField;
    ZqryUsuarioUSU_SNATUAL: TStringField;
    ZqryUsuarioUSU_TERMINAL: TStringField;
    ZqryUsuarioUSU_DTATUAL: TDateField;
    ZqryUsuarioUSU_ADMIN: TStringField;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    dspEmitente: TDataSetProvider;
    dspProduto: TDataSetProvider;
    dspCliente: TDataSetProvider;
    dspUsuario: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsEmitente: TClientDataSet;
    cdsProduto: TClientDataSet;
    cdsUsuario: TClientDataSet;
    cdsConfigCFG_CODIGO: TIntegerField;
    cdsConfigCFG_EMITENTE: TIntegerField;
    cdsConfigCFG_CLIENTE: TIntegerField;
    cdsConfigCFG_PRODUTO: TIntegerField;
    cdsConfigCFG_TRANSPORTADORA: TIntegerField;
    cdsConfigCFG_NOTAFISCAL: TIntegerField;
    cdsConfigCFG_USUARIO: TIntegerField;
    cdsEmitenteEMI_CODIGO: TIntegerField;
    cdsEmitenteEMI_RAZAOSOCIAL: TStringField;
    cdsEmitenteEMI_FANTASIA: TStringField;
    cdsEmitenteEMI_CNPJ: TStringField;
    cdsEmitenteEMI_INSCRICAOESTADUAL: TStringField;
    cdsEmitenteEMI_CNAE_FISCAL: TStringField;
    cdsEmitenteEMI_INSMUNICIPAL: TStringField;
    cdsEmitenteEMI_IEST: TStringField;
    cdsEmitenteEMI_LOGRADOURO: TStringField;
    cdsEmitenteEMI_NUMERO: TIntegerField;
    cdsEmitenteEMI_COMPLEMENTO: TStringField;
    cdsEmitenteEMI_BAIRRO: TStringField;
    cdsEmitenteEMI_CEP: TStringField;
    cdsEmitenteEMI_CDPAIS: TIntegerField;
    cdsEmitenteEMI_UF: TStringField;
    cdsEmitenteEMI_CDCIDADE: TIntegerField;
    cdsEmitenteEMI_TELEFONE: TStringField;
    cdsEmitenteEMI_DTCADA: TDateField;
    cdsEmitenteEMI_HOCADA: TStringField;
    cdsEmitenteEMI_USCADA: TIntegerField;
    cdsEmitenteEMI_DTALTE: TDateField;
    cdsEmitenteEMI_HOALTE: TStringField;
    cdsEmitenteEMI_USALTE: TIntegerField;
    cdsUsuarioUSU_CODIGO: TIntegerField;
    cdsUsuarioUSU_NOME: TStringField;
    cdsUsuarioUSU_CARGO: TStringField;
    cdsUsuarioUSU_SNATUAL: TStringField;
    cdsUsuarioUSU_TERMINAL: TStringField;
    cdsUsuarioUSU_DTATUAL: TDateField;
    cdsUsuarioUSU_ADMIN: TStringField;
    ZqryPadrao: TZQuery;
    dspPadrao: TDataSetProvider;
    cdsListaPaises: TClientDataSet;
    cdsListaCidades: TClientDataSet;
    cdsListaCidadesCID_CODIGO: TIntegerField;
    cdsListaCidadesCID_NOME: TStringField;
    cdsListaPaisesPAI_CODIGO: TIntegerField;
    cdsListaPaisesPAI_NOME: TStringField;
    cdsEmitenteEMI_NMPAIS: TStringField;
    cdsEmitenteEMI_NMCIDADE: TStringField;
    ZqryConfigCFG_SEQTAREFAUSUARIOS: TIntegerField;
    cdsConfigCFG_SEQTAREFAUSUARIOS: TIntegerField;
    cdsListaDocumentos: TClientDataSet;
    cdsListaDocumentosTPD_CODIGO: TIntegerField;
    cdsListaDocumentosTPD_DESCRICAO: TStringField;
    cdsListaUnidades: TClientDataSet;
    cdsListaTributacao: TClientDataSet;
    cdsListaUnidadesUNI_CODIGO: TStringField;
    cdsListaUnidadesUNI_DESCRICAO: TStringField;
    cdsListaTributacaoTRI_CODIGO: TIntegerField;
    cdsListaTributacaoTRI_DESCRICAO: TStringField;
    ZqryTransp: TZQuery;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    ZqryTranspTRA_CODIGO: TIntegerField;
    ZqryTranspTRA_RAZAONOME: TStringField;
    ZqryTranspTRA_TPDOCUMENTO: TIntegerField;
    ZqryTranspTRA_NR_DOCUMENTO: TStringField;
    ZqryTranspTRA_INSCRICAO_ESTADUAL: TStringField;
    ZqryTranspTRA_ENDERECO: TStringField;
    ZqryTranspTRA_UF: TStringField;
    ZqryTranspTRA_CDCIDADE: TIntegerField;
    ZqryTranspTRA_IDEMITENTE: TIntegerField;
    ZqryTranspTRA_VERSAO: TStringField;
    ZqryTranspTRA_DTCADA: TDateField;
    ZqryTranspTRA_HOCADA: TStringField;
    ZqryTranspTRA_USCADA: TIntegerField;
    ZqryTranspTRA_DTALTE: TDateField;
    ZqryTranspTRA_HOALTE: TStringField;
    ZqryTranspTRA_USALTE: TIntegerField;
    cdsTranspTRA_CODIGO: TIntegerField;
    cdsTranspTRA_RAZAONOME: TStringField;
    cdsTranspTRA_TPDOCUMENTO: TIntegerField;
    cdsTranspTRA_NR_DOCUMENTO: TStringField;
    cdsTranspTRA_INSCRICAO_ESTADUAL: TStringField;
    cdsTranspTRA_ENDERECO: TStringField;
    cdsTranspTRA_UF: TStringField;
    cdsTranspTRA_CDCIDADE: TIntegerField;
    cdsTranspTRA_IDEMITENTE: TIntegerField;
    cdsTranspTRA_VERSAO: TStringField;
    cdsTranspTRA_DTCADA: TDateField;
    cdsTranspTRA_HOCADA: TStringField;
    cdsTranspTRA_USCADA: TIntegerField;
    cdsTranspTRA_DTALTE: TDateField;
    cdsTranspTRA_HOALTE: TStringField;
    cdsTranspTRA_USALTE: TIntegerField;
    cdsTranspTRA_TPDOCU: TStringField;
    cdsTranspTRA_NMCIDADE: TStringField;
    cdsListaTipoTributacao: TClientDataSet;
    cdsListaTipoTributacaoTPT_CODIGO: TStringField;
    cdsListaTipoTributacaoTPT_DESCRICAO: TStringField;
    cdsListaOrigem: TClientDataSet;
    cdsListaOrigemORI_CODIGO: TIntegerField;
    cdsListaOrigemORI_DESCRICAO: TStringField;
    cdsListaModaBaseCalculo: TClientDataSet;
    cdsListaModaBaseCalculoMBC_CODIGO: TIntegerField;
    cdsListaModaBaseCalculoMBC_DESCRICAO: TStringField;
    cdsListaModaBaseCalculoST: TClientDataSet;
    cdsListaModaBaseCalculoSTMDD_CODIGO: TIntegerField;
    cdsListaModaBaseCalculoSTMDD_DESCRICAO: TStringField;
    ZqryFornecedor: TZQuery;
    ZqryFornecedorFOR_CODIGO: TIntegerField;
    ZqryFornecedorFOR_CNPJ: TStringField;
    ZqryFornecedorFOR_RAZAO: TStringField;
    ZqryFornecedorFOR_FANTASIA: TStringField;
    ZqryConfigCFG_FORNECEDOR: TIntegerField;
    cdsConfigCFG_FORNECEDOR: TIntegerField;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    cdsFornecedorFOR_CODIGO: TIntegerField;
    cdsFornecedorFOR_CNPJ: TStringField;
    cdsFornecedorFOR_RAZAO: TStringField;
    cdsFornecedorFOR_FANTASIA: TStringField;
    cdsListaCFOP: TClientDataSet;
    cdsListaCFOPCFOP_CODIGO: TIntegerField;
    cdsListaCFOPCFOP_DESCRICAO: TStringField;
    cdsListaFPagamento: TClientDataSet;
    cdsListaFPagamentoFPG_CODIGO: TIntegerField;
    cdsListaFPagamentoFPG_DESCRICAO: TStringField;
    cdsListaEmissao: TClientDataSet;
    cdsListaEmissaoFME_CODIGO: TIntegerField;
    cdsListaEmissaoFME_DESCRICAO: TStringField;
    cdsListaFinalidadeEmissao: TClientDataSet;
    cdsListaFinalidadeEmissaoFNE_CODIGO: TIntegerField;
    cdsListaFinalidadeEmissaoFNE_DESCRICAO: TStringField;
    cdsListaCidadesCID_CODIBGE: TIntegerField;
    cdsListaCidadesCID_UFCIDADE: TStringField;
    ZqryConfigCFG_CODPAIS: TIntegerField;
    cdsConfigCFG_CODPAIS: TIntegerField;
    ZqryUF: TZQuery;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    ZqryUFUF_CODIGO: TIntegerField;
    ZqryUFUF_DESCRICAO: TStringField;
    cdsUFUF_CODIGO: TIntegerField;
    cdsUFUF_DESCRICAO: TStringField;
    ZqryConfigCFG_PECOFINS: TFloatField;
    ZqryConfigCFG_PERPIS: TFloatField;
    cdsConfigCFG_PECOFINS: TFloatField;
    cdsConfigCFG_PERPIS: TFloatField;
    cdsListaNaturezaOpe: TClientDataSet;
    cdsListaNaturezaOpeNAT_CODIGO: TIntegerField;
    cdsListaNaturezaOpeNAT_DESCRICAO: TStringField;
    ZqryProdutoPRO_CODIGO: TStringField;
    ZqryProdutoPRO_BARRAS: TStringField;
    ZqryProdutoPRO_DESCRICAO: TStringField;
    ZqryProdutoFOR_CODIGO: TIntegerField;
    ZqryProdutoPRO_FRACAO: TIntegerField;
    ZqryProdutoSEC_CODIGO: TIntegerField;
    ZqryProdutoSUB_CODIGO: TIntegerField;
    ZqryProdutoPRO_VLCOMPRA: TFloatField;
    ZqryProdutoPRO_VLCUSTO: TFloatField;
    ZqryProdutoPRO_VLVENDA: TFloatField;
    ZqryProdutoPRO_VLFRACAO: TFloatField;
    ZqryProdutoTRI_CODIGO: TIntegerField;
    ZqryProdutoPRO_REDUCAOICMS: TFloatField;
    ZqryProdutoPRO_TAXAS: TFloatField;
    ZqryProdutoPRO_IPI: TFloatField;
    ZqryProdutoPRO_FRETE: TFloatField;
    ZqryProdutoPRO_LIMDESCONTO: TFloatField;
    ZqryProdutoPRO_COMISSIONADO: TStringField;
    ZqryProdutoPRO_PERCENTUAL_DESCONTO: TFloatField;
    ZqryProdutoPRO_DTCADASTRO: TDateField;
    ZqryProdutoPRO_DTALTERACAO: TDateField;
    ZqryProdutoSEN_CODIGO: TIntegerField;
    ZqryProdutoUNI_CODIGO: TStringField;
    ZqryProdutoUNI_ARMAZENAMENTO: TStringField;
    ZqryProdutoPRO_QUANT_ARMAZENAMENTO: TFloatField;
    ZqryProdutoPRO_LUCROBRUTO: TFloatField;
    ZqryProdutoPRO_LUCROLIQUIDO: TFloatField;
    ZqryProdutoPRO_CONTROLELOTE: TStringField;
    ZqryProdutoPRO_CODIGOBAIXA: TStringField;
    ZqryProdutoPRO_HOREAJUTE: TStringField;
    ZqryProdutoPRO_USUARIO_REAJUSTE: TIntegerField;
    ZqryProdutoPRO_VALOR_ANTERIOR: TFloatField;
    ZqryProdutoPRO_COR: TIntegerField;
    ZqryProdutoPRO_REFERENCIA: TStringField;
    ZqryProdutoPRO_USUARIO_CAD: TIntegerField;
    ZqryProdutoPRO_HOCADA: TStringField;
    ZqryProdutoPRO_USUARIO_ALT: TIntegerField;
    ZqryProdutoPRO_HOALTE: TStringField;
    ZqryProdutoPRO_FLPROD: TStringField;
    ZqryProdutoPRO_ANTECIPACAO_ICMS: TFloatField;
    ZqryProdutoPRO_CDAPLICACAO: TIntegerField;
    ZqryProdutoPRO_CODLOCALIZACAO: TIntegerField;
    ZqryProdutoPRO_COD_CLASSIFICAO_FISCAL: TIntegerField;
    ZqryProdutoPRO_PESO: TFloatField;
    ZqryProdutoPRO_CODFABRICANTE: TIntegerField;
    ZqryProdutoPRO_BLOQUEIO_LIM_DESCONTO: TStringField;
    ZqryProdutoPRO_PIS: TFloatField;
    ZqryProdutoPRO_COFINS: TFloatField;
    ZqryProdutoPRO_REVENDA_VALOR: TFloatField;
    ZqryProdutoPRO_REVENDA_LUCRO_BRUTO: TFloatField;
    ZqryProdutoPRO_REVENDA_LUCRO_LIQUIDO: TFloatField;
    ZqryProdutoPRO_PERC_COMISSAO: TFloatField;
    ZqryProdutoPRO_ORIGEM: TStringField;
    ZqryProdutoPRO_IPI_CST: TStringField;
    ZqryProdutoPRO_ICMS_CST: TStringField;
    ZqryProdutoPRO_PIS_CST: TStringField;
    ZqryProdutoPRO_COFINS_CST: TStringField;
    cdsProdutoPRO_CODIGO: TStringField;
    cdsProdutoPRO_BARRAS: TStringField;
    cdsProdutoPRO_DESCRICAO: TStringField;
    cdsProdutoFOR_CODIGO: TIntegerField;
    cdsProdutoPRO_FRACAO: TIntegerField;
    cdsProdutoSEC_CODIGO: TIntegerField;
    cdsProdutoSUB_CODIGO: TIntegerField;
    cdsProdutoPRO_VLCOMPRA: TFloatField;
    cdsProdutoPRO_VLCUSTO: TFloatField;
    cdsProdutoPRO_VLVENDA: TFloatField;
    cdsProdutoPRO_VLFRACAO: TFloatField;
    cdsProdutoTRI_CODIGO: TIntegerField;
    cdsProdutoPRO_REDUCAOICMS: TFloatField;
    cdsProdutoPRO_TAXAS: TFloatField;
    cdsProdutoPRO_IPI: TFloatField;
    cdsProdutoPRO_FRETE: TFloatField;
    cdsProdutoPRO_LIMDESCONTO: TFloatField;
    cdsProdutoPRO_COMISSIONADO: TStringField;
    cdsProdutoPRO_PERCENTUAL_DESCONTO: TFloatField;
    cdsProdutoPRO_DTCADASTRO: TDateField;
    cdsProdutoPRO_DTALTERACAO: TDateField;
    cdsProdutoSEN_CODIGO: TIntegerField;
    cdsProdutoUNI_CODIGO: TStringField;
    cdsProdutoUNI_ARMAZENAMENTO: TStringField;
    cdsProdutoPRO_QUANT_ARMAZENAMENTO: TFloatField;
    cdsProdutoPRO_LUCROBRUTO: TFloatField;
    cdsProdutoPRO_LUCROLIQUIDO: TFloatField;
    cdsProdutoPRO_CONTROLELOTE: TStringField;
    cdsProdutoPRO_CODIGOBAIXA: TStringField;
    cdsProdutoPRO_HOREAJUTE: TStringField;
    cdsProdutoPRO_USUARIO_REAJUSTE: TIntegerField;
    cdsProdutoPRO_VALOR_ANTERIOR: TFloatField;
    cdsProdutoPRO_COR: TIntegerField;
    cdsProdutoPRO_REFERENCIA: TStringField;
    cdsProdutoPRO_USUARIO_CAD: TIntegerField;
    cdsProdutoPRO_HOCADA: TStringField;
    cdsProdutoPRO_USUARIO_ALT: TIntegerField;
    cdsProdutoPRO_HOALTE: TStringField;
    cdsProdutoPRO_FLPROD: TStringField;
    cdsProdutoPRO_ANTECIPACAO_ICMS: TFloatField;
    cdsProdutoPRO_CDAPLICACAO: TIntegerField;
    cdsProdutoPRO_CODLOCALIZACAO: TIntegerField;
    cdsProdutoPRO_COD_CLASSIFICAO_FISCAL: TIntegerField;
    cdsProdutoPRO_PESO: TFloatField;
    cdsProdutoPRO_CODFABRICANTE: TIntegerField;
    cdsProdutoPRO_BLOQUEIO_LIM_DESCONTO: TStringField;
    cdsProdutoPRO_PIS: TFloatField;
    cdsProdutoPRO_COFINS: TFloatField;
    cdsProdutoPRO_REVENDA_VALOR: TFloatField;
    cdsProdutoPRO_REVENDA_LUCRO_BRUTO: TFloatField;
    cdsProdutoPRO_REVENDA_LUCRO_LIQUIDO: TFloatField;
    cdsProdutoPRO_PERC_COMISSAO: TFloatField;
    cdsProdutoPRO_ORIGEM: TStringField;
    cdsProdutoPRO_IPI_CST: TStringField;
    cdsProdutoPRO_ICMS_CST: TStringField;
    cdsProdutoPRO_PIS_CST: TStringField;
    cdsProdutoPRO_COFINS_CST: TStringField;
    cdsProdutoPRO_NMFORN: TStringField;
    ZqryClienteCLI_CODIGO: TIntegerField;
    ZqryClienteCLI_TIPOPESSOA: TStringField;
    ZqryClienteCLI_CGC: TStringField;
    ZqryClienteCLI_FANTASIA: TStringField;
    ZqryClienteCLI_RAZAO: TStringField;
    ZqryClienteCLI_ENDERECO: TStringField;
    ZqryClienteCLI_NUMERO: TIntegerField;
    ZqryClienteCLI_CEP: TStringField;
    ZqryClienteCLI_BAIRRO: TStringField;
    ZqryClienteCLI_CIDADE: TIntegerField;
    ZqryClienteCLI_UFCLIENTE: TStringField;
    ZqryClienteCLI_FONE1: TStringField;
    ZqryClienteCLI_FONE2: TStringField;
    ZqryClienteCLI_FONE3: TStringField;
    ZqryClienteCLI_RAMAL1: TStringField;
    ZqryClienteCLI_RAMAL2: TStringField;
    ZqryClienteCLI_RAMAL3: TStringField;
    ZqryClienteCLI_FAX: TStringField;
    ZqryClienteCLI_INSCESTADUAL: TStringField;
    ZqryClienteCLI_DATACAD: TDateField;
    ZqryClienteSIT_CODIGO: TIntegerField;
    ZqryClienteCLI_PAGINA: TStringField;
    ZqryClienteATI_CODIGO: TIntegerField;
    ZqryClienteCLI_ORGAOEMISSOR: TStringField;
    ZqryClienteCLI_UFEMISSOR: TStringField;
    ZqryClienteCLI_DTANIVERSARIO: TDateField;
    ZqryClienteCLI_TIPOCLIENTE: TIntegerField;
    ZqryClienteCLI_REGIAO: TIntegerField;
    ZqryClienteCLI_FLMATRIZ: TStringField;
    ZqryClienteCLI_USUARIO_INC: TIntegerField;
    ZqryClienteCLI_USUARIO_ALT: TIntegerField;
    ZqryClienteCLI_DATA_INC: TDateField;
    ZqryClienteCLI_HORA_INC: TStringField;
    ZqryClienteCLI_DATA_ALT: TDateField;
    ZqryClienteCLI_HORA_ALT: TStringField;
    ZqryClienteCLI_END_COBRANCA: TStringField;
    ZqryClienteCLI_CODIGO_MATRIZ: TIntegerField;
    ZqryClienteCLI_PONTO_REFERENCIA: TStringField;
    ZqryClienteCLI_EMAIL: TStringField;
    ZqryClienteCLI_END_COBRANCA_NUM: TIntegerField;
    ZqryClienteCLI_END_COBRANCA_CEP: TStringField;
    ZqryClienteCLI_END_COBRANCA_COMPL: TStringField;
    ZqryClienteCLI_END_COBRANCA_CIDADE: TIntegerField;
    ZqryClienteCLI_END_COBRANCA_UF: TStringField;
    ZqryClienteCLI_ESTADO_CIVIL: TIntegerField;
    ZqryClienteCLI_FATURAMENTO_MENSAL: TFloatField;
    ZqryClienteCLI_LIMITE_COMPRA: TFloatField;
    ZqryClienteCLI_RESPONSAVEL_NOME: TStringField;
    ZqryClienteCLI_RESPONSAVEL_CPF: TStringField;
    ZqryClienteCLI_RESPONSAVEL_RG: TStringField;
    ZqryClienteCLI_RESPONSAVEL_TELEFONE: TStringField;
    ZqryClienteCLI_RESPONSAVEL_EMAIL: TStringField;
    ZqryClienteCLI_EMPRESA_NOME: TStringField;
    ZqryClienteCLI_EMPRESA_ENDERECO: TStringField;
    ZqryClienteCLI_EMPRESA_NUMERO: TIntegerField;
    ZqryClienteCLI_EMPRESA_CIDADE: TIntegerField;
    ZqryClienteCLI_EMPRESA_UF: TStringField;
    ZqryClienteCLI_EMPRESA_CEP: TStringField;
    ZqryClienteCLI_EMPRESA_BAIRRO: TStringField;
    ZqryClienteCLI_EMPRESA_TELEFONE: TStringField;
    ZqryClienteCLI_EMPRESA_RENDA: TFloatField;
    ZqryClienteCLI_DIAFATURA: TIntegerField;
    ZqryClienteCLI_TEMPO_RESIDENCIA: TStringField;
    ZqryClienteCLI_CONJUGUE_NOME: TStringField;
    ZqryClienteCLI_CONJUGUE_CPF: TStringField;
    ZqryClienteCLI_CONJUGUE_EMPRESA_NOME: TStringField;
    ZqryClienteCLI_CONJUGUE_FUNCAO: TStringField;
    ZqryClienteCLI_CONJUGUE_RENDA: TFloatField;
    ZqryClienteCLI_REFERENCIA1_NOME: TStringField;
    ZqryClienteCLI_REFERENCIA1_TELEFONE: TStringField;
    ZqryClienteCLI_REFERENCIA2_NOME: TStringField;
    ZqryClienteCLI_REFERENCIA2_TELEFONE: TStringField;
    ZqryClienteCLI_OBSERVACAO: TMemoField;
    cdsClienteCLI_CODIGO: TIntegerField;
    cdsClienteCLI_TIPOPESSOA: TStringField;
    cdsClienteCLI_CGC: TStringField;
    cdsClienteCLI_FANTASIA: TStringField;
    cdsClienteCLI_RAZAO: TStringField;
    cdsClienteCLI_ENDERECO: TStringField;
    cdsClienteCLI_NUMERO: TIntegerField;
    cdsClienteCLI_CEP: TStringField;
    cdsClienteCLI_BAIRRO: TStringField;
    cdsClienteCLI_CIDADE: TIntegerField;
    cdsClienteCLI_UFCLIENTE: TStringField;
    cdsClienteCLI_FONE2: TStringField;
    cdsClienteCLI_FONE3: TStringField;
    cdsClienteCLI_RAMAL1: TStringField;
    cdsClienteCLI_RAMAL2: TStringField;
    cdsClienteCLI_RAMAL3: TStringField;
    cdsClienteCLI_FAX: TStringField;
    cdsClienteCLI_INSCESTADUAL: TStringField;
    cdsClienteCLI_DATACAD: TDateField;
    cdsClienteSIT_CODIGO: TIntegerField;
    cdsClienteCLI_PAGINA: TStringField;
    cdsClienteATI_CODIGO: TIntegerField;
    cdsClienteCLI_ORGAOEMISSOR: TStringField;
    cdsClienteCLI_UFEMISSOR: TStringField;
    cdsClienteCLI_DTANIVERSARIO: TDateField;
    cdsClienteCLI_TIPOCLIENTE: TIntegerField;
    cdsClienteCLI_REGIAO: TIntegerField;
    cdsClienteCLI_FLMATRIZ: TStringField;
    cdsClienteCLI_USUARIO_INC: TIntegerField;
    cdsClienteCLI_USUARIO_ALT: TIntegerField;
    cdsClienteCLI_DATA_INC: TDateField;
    cdsClienteCLI_HORA_INC: TStringField;
    cdsClienteCLI_DATA_ALT: TDateField;
    cdsClienteCLI_HORA_ALT: TStringField;
    cdsClienteCLI_END_COBRANCA: TStringField;
    cdsClienteCLI_CODIGO_MATRIZ: TIntegerField;
    cdsClienteCLI_PONTO_REFERENCIA: TStringField;
    cdsClienteCLI_EMAIL: TStringField;
    cdsClienteCLI_END_COBRANCA_NUM: TIntegerField;
    cdsClienteCLI_END_COBRANCA_CEP: TStringField;
    cdsClienteCLI_END_COBRANCA_COMPL: TStringField;
    cdsClienteCLI_END_COBRANCA_CIDADE: TIntegerField;
    cdsClienteCLI_END_COBRANCA_UF: TStringField;
    cdsClienteCLI_ESTADO_CIVIL: TIntegerField;
    cdsClienteCLI_FATURAMENTO_MENSAL: TFloatField;
    cdsClienteCLI_LIMITE_COMPRA: TFloatField;
    cdsClienteCLI_RESPONSAVEL_NOME: TStringField;
    cdsClienteCLI_RESPONSAVEL_CPF: TStringField;
    cdsClienteCLI_RESPONSAVEL_RG: TStringField;
    cdsClienteCLI_RESPONSAVEL_TELEFONE: TStringField;
    cdsClienteCLI_RESPONSAVEL_EMAIL: TStringField;
    cdsClienteCLI_EMPRESA_NOME: TStringField;
    cdsClienteCLI_EMPRESA_ENDERECO: TStringField;
    cdsClienteCLI_EMPRESA_NUMERO: TIntegerField;
    cdsClienteCLI_EMPRESA_CIDADE: TIntegerField;
    cdsClienteCLI_EMPRESA_UF: TStringField;
    cdsClienteCLI_EMPRESA_CEP: TStringField;
    cdsClienteCLI_EMPRESA_BAIRRO: TStringField;
    cdsClienteCLI_EMPRESA_TELEFONE: TStringField;
    cdsClienteCLI_EMPRESA_RENDA: TFloatField;
    cdsClienteCLI_DIAFATURA: TIntegerField;
    cdsClienteCLI_TEMPO_RESIDENCIA: TStringField;
    cdsClienteCLI_CONJUGUE_NOME: TStringField;
    cdsClienteCLI_CONJUGUE_CPF: TStringField;
    cdsClienteCLI_CONJUGUE_EMPRESA_NOME: TStringField;
    cdsClienteCLI_CONJUGUE_FUNCAO: TStringField;
    cdsClienteCLI_CONJUGUE_RENDA: TFloatField;
    cdsClienteCLI_REFERENCIA1_NOME: TStringField;
    cdsClienteCLI_REFERENCIA1_TELEFONE: TStringField;
    cdsClienteCLI_REFERENCIA2_NOME: TStringField;
    cdsClienteCLI_REFERENCIA2_TELEFONE: TStringField;
    cdsClienteCLI_OBSERVACAO: TMemoField;
    ZqryClienteCLI_CLIFOR: TStringField;
    cdsClienteCLI_CLIFOR: TStringField;
    ZqryClienteCLI_END_COBRANCA_BAIRRO: TStringField;
    cdsClienteCLI_END_COBRANCA_BAIRRO: TStringField;
    cdsClienteCLI_NMCIDADE: TStringField;
    cdsListaCidEmpresa: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    cdsListaCidCobraca: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    cdsClienteCLI_CIDADE_COBRANCA: TStringField;
    cdsClienteCLI_EMPCIDADE: TStringField;
    cdsListaEstCivil: TClientDataSet;
    cdsListaEstCivilECV_CODIGO: TIntegerField;
    cdsListaEstCivilECV_DESCRICAO: TStringField;
    cdsClienteCLI_NMESTCIVIL: TStringField;
    cdsListaSecao: TClientDataSet;
    cdsListaSubSecao: TClientDataSet;
    cdsListaAplicacao: TClientDataSet;
    cdsListaAplicacaoAPP_CODIGO: TIntegerField;
    cdsListaAplicacaoAPP_DESCRICAO: TStringField;
    cdsProdutoPRO_NOME_APLICACAO: TStringField;
    cdsListaLocalizacao: TClientDataSet;
    cdsListaLocalizacaoLCP_CODIGO: TIntegerField;
    cdsListaLocalizacaoLCP_DESCRICAO: TStringField;
    ZqryProdutoPRO_LOCALIZACAO: TStringField;
    cdsProdutoPRO_LOCALIZACAO: TStringField;
    cdsProdutoPRO_NMLOCA: TStringField;
    cdsListaSecoes: TClientDataSet;
    cdsListaSubSecoes: TClientDataSet;
    cdsListaSecoesSEC_CODIGO: TIntegerField;
    cdsListaSecoesSEC_DESCRICAO: TStringField;
    cdsListaSubSecoesSUB_CODIGO: TIntegerField;
    cdsListaSubSecoesSUB_DESCRICAO: TStringField;
    cdsListaSubSecoesSEC_CODIGO: TIntegerField;
    cdsProdutoPRO_SECAO: TStringField;
    cdsProdutoSUB_NOME: TStringField;
    cdsListaClassfiscal: TClientDataSet;
    cdsListaClassfiscalCLF_CODIGO: TIntegerField;
    cdsListaClassfiscalCLF_DESCRICAO: TStringField;
    cdsProdutoPRO_NOME_CLASSFISCAL: TStringField;
    cdsProdutoPRO_NMORIG: TStringField;
    cdsProdutoPRO_NMUNID: TStringField;
    cdsListaUndArm: TClientDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    cdsProdutoPRO_NMUNDARM: TStringField;
    cdsProdutoTRI_NOME: TStringField;
    cdsSituacaoTribICMS: TClientDataSet;
    cdsSituacaoTribICMSTPT_CODIGO: TStringField;
    cdsSituacaoTribICMSTPT_DESCRICAO: TStringField;
    cdsProdutoPRO_NMTT_CST: TStringField;
    cdsListaCST_IPI: TClientDataSet;
    cdsListaCST_PIS: TClientDataSet;
    cdsListaCST_IPIIPI_CODIGO: TIntegerField;
    cdsListaCST_IPIIPI_DESCRICAO: TStringField;
    cdsListaCST_PISPIS_CODIGO: TIntegerField;
    cdsListaCST_PISPIS_DESCRICAO: TStringField;
    cdsProdutoPRO_CST_IPI: TStringField;
    cdsProdutoPRO_CST_PIS: TStringField;
    ZqryConfigCFG_PECOMI: TFloatField;
    ZqryConfigCFG_PEIPMF: TFloatField;
    cdsConfigCFG_PECOMI: TFloatField;
    cdsConfigCFG_PEIPMF: TFloatField;
    cdsListaTipoCliente: TClientDataSet;
    cdsListaTipoClienteTPC_CODIGO: TIntegerField;
    cdsListaTipoClienteTPC_DESCRICAO: TStringField;
    cdsClienteCLI_NMTIPOCLIE: TStringField;
    ZqryClienteCLI_CDBANC: TStringField;
    ZqryClienteCLI_AGENCIA: TStringField;
    ZqryClienteCLI_OPERACAO: TIntegerField;
    ZqryClienteCLI_NRCONTA: TStringField;
    cdsClienteCLI_CDBANC: TStringField;
    cdsClienteCLI_AGENCIA: TStringField;
    cdsClienteCLI_OPERACAO: TIntegerField;
    cdsClienteCLI_NRCONTA: TStringField;
    cdsListaBancos: TClientDataSet;
    cdsListaBancosBAN_CODIGO: TStringField;
    cdsListaBancosBAN_NOME: TStringField;
    cdsClienteCLI_NMBANCO: TStringField;
    cdsClienteCLI_FONE1: TStringField;
    cdsListaAtividades: TClientDataSet;
    cdsListaSituacoaClie: TClientDataSet;
    cdsListaSituacoaClieSIT_CODIGO: TIntegerField;
    cdsListaSituacoaClieSIT_NOME: TStringField;
    cdsListaAtividadesATI_CODIGO: TIntegerField;
    cdsListaAtividadesATI_NOME: TStringField;
    cdsClienteCLI_NOME_SITUACAO: TStringField;
    cdsClienteCLI_NMATIVIDADE: TStringField;
    ZQryPromocoes: TZQuery;
    dspPromocoes: TDataSetProvider;
    cdsPromocoes: TClientDataSet;
    ZQryPromocoesPRM_IDPRODUTO: TStringField;
    ZQryPromocoesPRM_VLSEGU: TFloatField;
    ZQryPromocoesPRM_VLTERC: TFloatField;
    ZQryPromocoesPRM_VLQUAR: TFloatField;
    ZQryPromocoesPRM_VLQUIN: TFloatField;
    ZQryPromocoesPRM_VLSEXT: TFloatField;
    ZQryPromocoesPRM_VLSABA: TFloatField;
    ZQryPromocoesPRM_VLDOMI: TFloatField;
    ZQryPromocoesPRM_DATAINICIAL: TDateField;
    ZQryPromocoesPRM_DATA_FINAL: TDateField;
    ZQryPromocoesPRM_VALORAVISTA: TFloatField;
    ZQryPromocoesPRM_VALORAPRAZO: TFloatField;
    ZQryPromocoesPRM_DTCADA: TDateField;
    ZQryPromocoesPRM_CADUSU: TIntegerField;
    ZQryPromocoesPRM_DTALTE: TDateField;
    ZQryPromocoesPRM_ALTUSU: TIntegerField;
    cdsPromocoesPRM_IDPRODUTO: TStringField;
    cdsPromocoesPRM_VLSEGU: TFloatField;
    cdsPromocoesPRM_VLTERC: TFloatField;
    cdsPromocoesPRM_VLQUAR: TFloatField;
    cdsPromocoesPRM_VLQUIN: TFloatField;
    cdsPromocoesPRM_VLSEXT: TFloatField;
    cdsPromocoesPRM_VLSABA: TFloatField;
    cdsPromocoesPRM_VLDOMI: TFloatField;
    cdsPromocoesPRM_DATAINICIAL: TDateField;
    cdsPromocoesPRM_DATA_FINAL: TDateField;
    cdsPromocoesPRM_VALORAVISTA: TFloatField;
    cdsPromocoesPRM_VALORAPRAZO: TFloatField;
    cdsPromocoesPRM_DTCADA: TDateField;
    cdsPromocoesPRM_CADUSU: TIntegerField;
    cdsPromocoesPRM_DTALTE: TDateField;
    cdsPromocoesPRM_ALTUSU: TIntegerField;
    cdsPromocoesPRM_NMPROD: TStringField;
    ZQryFuncionario: TZQuery;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    ZQryFuncionarioFUN_CODIGO: TIntegerField;
    ZQryFuncionarioFUN_NOME: TStringField;
    ZQryFuncionarioFUN_ENDERECO: TStringField;
    ZQryFuncionarioFUN_BAIRRO: TStringField;
    ZQryFuncionarioFUN_CIDADE: TIntegerField;
    ZQryFuncionarioFUN_UFFUNC: TStringField;
    ZQryFuncionarioFUN_NATUREZA: TStringField;
    ZQryFuncionarioFUN_CEP: TStringField;
    ZQryFuncionarioFUN_FONE: TStringField;
    ZQryFuncionarioFUN_TPFUNC: TStringField;
    ZQryFuncionarioFUN_PECOMI: TFloatField;
    ZQryFuncionarioFUN_DTNASCIMENTO: TDateField;
    ZQryFuncionarioFUN_DTADMICAO: TDateField;
    ZQryFuncionarioFUN_DTDEMICAO: TDateField;
    ZQryFuncionarioFUN_VLDEBITO: TFloatField;
    ZQryFuncionarioFUN_CPFCGC: TStringField;
    ZQryFuncionarioFUN_IDENTIDADE: TStringField;
    ZQryFuncionarioFUN_ORIDEN: TStringField;
    ZQryFuncionarioFUN_UFIDEN: TStringField;
    ZQryFuncionarioFUN_NRCART: TStringField;
    ZQryFuncionarioFUN_SECART: TStringField;
    ZQryFuncionarioFUN_UFCART: TStringField;
    ZQryFuncionarioFUN_CAREMI: TStringField;
    ZQryFuncionarioFUN_TITULO: TStringField;
    ZQryFuncionarioFUN_CDSECA: TStringField;
    ZQryFuncionarioFUN_CDZONA: TStringField;
    ZQryFuncionarioFUN_VLSALA: TFloatField;
    ZQryFuncionarioFUN_LIONIB: TStringField;
    ZQryFuncionarioFUN_HOENT1: TStringField;
    ZQryFuncionarioFUN_HOSAI1: TStringField;
    ZQryFuncionarioFUN_HOENT2: TStringField;
    ZQryFuncionarioFUN_HOSAI2: TStringField;
    ZQryFuncionarioFUN_NOMPAI: TStringField;
    ZQryFuncionarioFUN_NOMMAE: TStringField;
    ZQryFuncionarioFUN_COMPO1: TStringField;
    ZQryFuncionarioFUN_COMPO2: TStringField;
    ZQryFuncionarioFUN_COMPO3: TStringField;
    ZQryFuncionarioFUN_ASSID1: TStringField;
    ZQryFuncionarioFUN_ASSID2: TStringField;
    ZQryFuncionarioFUN_ASSID3: TStringField;
    ZQryFuncionarioFUN_HONES1: TStringField;
    ZQryFuncionarioFUN_HONES2: TStringField;
    ZQryFuncionarioFUN_HONES3: TStringField;
    ZQryFuncionarioFUN_CARAT1: TStringField;
    ZQryFuncionarioFUN_CARAT2: TStringField;
    ZQryFuncionarioFUN_CARAT3: TStringField;
    ZQryFuncionarioFUN_COMPR1: TMemoField;
    ZQryFuncionarioFUN_RESPO1: TMemoField;
    ZQryFuncionarioFUN_ATEST1: TMemoField;
    ZQryFuncionarioFUN_FUNCAO: TIntegerField;
    ZQryFuncionarioFUN_RGEMIS: TDateField;
    ZQryFuncionarioFUN_CODCARGO: TIntegerField;
    ZQryFuncionarioFUN_ESTADOCIVIL: TIntegerField;
    ZQryFuncionarioFUN_DTCADA: TDateField;
    ZQryFuncionarioFUN_HOCADA: TStringField;
    ZQryFuncionarioFUN_USUARIO_CAD: TIntegerField;
    ZQryFuncionarioFUN_DTALTE: TDateField;
    ZQryFuncionarioFUN_HOALTE: TStringField;
    ZQryFuncionarioFUN_USUARIO_ALT: TIntegerField;
    cdsFuncionarioFUN_CODIGO: TIntegerField;
    cdsFuncionarioFUN_NOME: TStringField;
    cdsFuncionarioFUN_ENDERECO: TStringField;
    cdsFuncionarioFUN_BAIRRO: TStringField;
    cdsFuncionarioFUN_CIDADE: TIntegerField;
    cdsFuncionarioFUN_UFFUNC: TStringField;
    cdsFuncionarioFUN_NATUREZA: TStringField;
    cdsFuncionarioFUN_CEP: TStringField;
    cdsFuncionarioFUN_FONE: TStringField;
    cdsFuncionarioFUN_TPFUNC: TStringField;
    cdsFuncionarioFUN_PECOMI: TFloatField;
    cdsFuncionarioFUN_DTNASCIMENTO: TDateField;
    cdsFuncionarioFUN_DTADMICAO: TDateField;
    cdsFuncionarioFUN_DTDEMICAO: TDateField;
    cdsFuncionarioFUN_VLDEBITO: TFloatField;
    cdsFuncionarioFUN_CPFCGC: TStringField;
    cdsFuncionarioFUN_IDENTIDADE: TStringField;
    cdsFuncionarioFUN_ORIDEN: TStringField;
    cdsFuncionarioFUN_UFIDEN: TStringField;
    cdsFuncionarioFUN_NRCART: TStringField;
    cdsFuncionarioFUN_SECART: TStringField;
    cdsFuncionarioFUN_UFCART: TStringField;
    cdsFuncionarioFUN_CAREMI: TStringField;
    cdsFuncionarioFUN_TITULO: TStringField;
    cdsFuncionarioFUN_CDSECA: TStringField;
    cdsFuncionarioFUN_CDZONA: TStringField;
    cdsFuncionarioFUN_VLSALA: TFloatField;
    cdsFuncionarioFUN_LIONIB: TStringField;
    cdsFuncionarioFUN_HOENT1: TStringField;
    cdsFuncionarioFUN_HOSAI1: TStringField;
    cdsFuncionarioFUN_HOENT2: TStringField;
    cdsFuncionarioFUN_HOSAI2: TStringField;
    cdsFuncionarioFUN_NOMPAI: TStringField;
    cdsFuncionarioFUN_NOMMAE: TStringField;
    cdsFuncionarioFUN_COMPO1: TStringField;
    cdsFuncionarioFUN_COMPO2: TStringField;
    cdsFuncionarioFUN_COMPO3: TStringField;
    cdsFuncionarioFUN_ASSID1: TStringField;
    cdsFuncionarioFUN_ASSID2: TStringField;
    cdsFuncionarioFUN_ASSID3: TStringField;
    cdsFuncionarioFUN_HONES1: TStringField;
    cdsFuncionarioFUN_HONES2: TStringField;
    cdsFuncionarioFUN_HONES3: TStringField;
    cdsFuncionarioFUN_CARAT1: TStringField;
    cdsFuncionarioFUN_CARAT2: TStringField;
    cdsFuncionarioFUN_CARAT3: TStringField;
    cdsFuncionarioFUN_COMPR1: TMemoField;
    cdsFuncionarioFUN_RESPO1: TMemoField;
    cdsFuncionarioFUN_ATEST1: TMemoField;
    cdsFuncionarioFUN_FUNCAO: TIntegerField;
    cdsFuncionarioFUN_RGEMIS: TDateField;
    cdsFuncionarioFUN_CODCARGO: TIntegerField;
    cdsFuncionarioFUN_ESTADOCIVIL: TIntegerField;
    cdsFuncionarioFUN_DTCADA: TDateField;
    cdsFuncionarioFUN_HOCADA: TStringField;
    cdsFuncionarioFUN_USUARIO_CAD: TIntegerField;
    cdsFuncionarioFUN_DTALTE: TDateField;
    cdsFuncionarioFUN_HOALTE: TStringField;
    cdsFuncionarioFUN_USUARIO_ALT: TIntegerField;
    cdsFuncionarioFUN_NMCIDADE: TStringField;
    cdsListaCargos: TClientDataSet;
    cdsListaCargosCAR_CODIGO: TIntegerField;
    cdsListaCargosCAR_DESCRICAO: TStringField;
    cdsFuncionarioFUN_NMCARGO: TStringField;
    cdsFuncionarioFUN_NMESTCIVIL: TStringField;
    ZqryConfigCFG_FUNCIONARIOS: TIntegerField;
    cdsConfigCFG_FUNCIONARIOS: TIntegerField;
    ZqryConfigCFG_SEQUENCIA: TIntegerField;
    ZqryConfigCFG_ENTRADAS: TIntegerField;
    cdsConfigCFG_SEQUENCIA: TIntegerField;
    cdsConfigCFG_ENTRADAS: TIntegerField;
    ZqryClienteCLI_FLCLIFOR: TStringField;
    cdsClienteCLI_FLCLIFOR: TStringField;
    cdsListaFuncionarios: TClientDataSet;
    cdsListaFuncionariosFUN_CODIGO: TIntegerField;
    cdsListaFuncionariosFUN_NOME: TStringField;
    ZqryConfigCFG_TRANSFERENCIA: TIntegerField;
    cdsConfigCFG_TRANSFERENCIA: TIntegerField;
    ZqryClienteCLI_REFERENCIA3_NOME: TStringField;
    ZqryClienteCLI_REFERENCIA3_TELEFONE: TStringField;
    cdsClienteCLI_REFERENCIA3_NOME: TStringField;
    cdsClienteCLI_REFERENCIA3_TELEFONE: TStringField;
    ZqryEmitenteEMI_NUMCPF: TStringField;
    ZqryEmitenteEMI_NOME_RESPONSAVEL: TStringField;
    ZqryEmitenteEMI_FONE_RESPONSAVEL: TStringField;
    cdsEmitenteEMI_NUMCPF: TStringField;
    cdsEmitenteEMI_NOME_RESPONSAVEL: TStringField;
    cdsEmitenteEMI_FONE_RESPONSAVEL: TStringField;
    ZqryConfigCFG_RESP_EMPRESA: TIntegerField;
    cdsConfigCFG_RESP_EMPRESA: TIntegerField;
    ZqryConfigCFG_SCREEN_WIDTH: TIntegerField;
    ZqryConfigCFG_SCREEN_HEIGTH: TIntegerField;
    cdsConfigCFG_SCREEN_WIDTH: TIntegerField;
    cdsConfigCFG_SCREEN_HEIGTH: TIntegerField;
    ZqryConfigCFG_FLVENDAESTOQUE: TStringField;
    cdsConfigCFG_FLVENDAESTOQUE: TStringField;
    ZqryConfigCFG_CAIXA: TIntegerField;
    ZqryConfigCFG_NATUREZA: TIntegerField;
    ZqryConfigCFG_MODALIDADE: TIntegerField;
    ZqryConfigCFG_DATA_ATUAL: TDateField;
    cdsConfigCFG_CAIXA: TIntegerField;
    cdsConfigCFG_NATUREZA: TIntegerField;
    cdsConfigCFG_MODALIDADE: TIntegerField;
    cdsConfigCFG_DATA_ATUAL: TDateField;
    ZqryConfigCFG_SECAO: TIntegerField;
    ZqryConfigCFG_SUBSECAO: TIntegerField;
    ZqryConfigCFG_VENDA: TIntegerField;
    ZqryConfigCFG_CREDITO: TIntegerField;
    ZqryConfigCFG_CEDENTE: TIntegerField;
    ZqryConfigCFG_CIDADE: TIntegerField;
    ZqryConfigCFG_SITUACAO: TIntegerField;
    ZqryConfigCFG_ATIVIDADE: TIntegerField;
    ZqryConfigCFG_CARGO: TIntegerField;
    ZqryConfigCFG_TRIBUTACAO: TIntegerField;
    cdsConfigCFG_SECAO: TIntegerField;
    cdsConfigCFG_SUBSECAO: TIntegerField;
    cdsConfigCFG_VENDA: TIntegerField;
    cdsConfigCFG_CREDITO: TIntegerField;
    cdsConfigCFG_CEDENTE: TIntegerField;
    cdsConfigCFG_CIDADE: TIntegerField;
    cdsConfigCFG_SITUACAO: TIntegerField;
    cdsConfigCFG_ATIVIDADE: TIntegerField;
    cdsConfigCFG_CARGO: TIntegerField;
    cdsConfigCFG_TRIBUTACAO: TIntegerField;
    ZqryConfigCFG_FLLOTE: TStringField;
    cdsConfigCFG_FLLOTE: TStringField;
    ZqryConfigCFG_FLVENDEDOR: TStringField;
    cdsConfigCFG_FLVENDEDOR: TStringField;
    ZqryConfigCFG_FLVENDEDOR_ITEM_VENDA: TStringField;
    cdsConfigCFG_FLVENDEDOR_ITEM_VENDA: TStringField;
    ZqryConfigCFG_IMPRESSORA: TIntegerField;
    cdsConfigCFG_IMPRESSORA: TIntegerField;
    ZqryConfigCFG_TAXA_SERVICO: TFloatField;
    cdsConfigCFG_TAXA_SERVICO: TFloatField;
    ZqryConfigCFG_MENSAGEM_CUPOM: TStringField;
    cdsConfigCFG_MENSAGEM_CUPOM: TStringField;
    ZqryUsuarioUSU_LOJA: TIntegerField;
    ZqryUsuarioUSU_FLSUPER: TStringField;
    ZqryUsuarioUSU_FLCAIXA: TStringField;
    ZqryUsuarioUSU_LIMITEDESCONTO: TFloatField;
    ZqryUsuarioUSU_GRUPO: TIntegerField;
    ZqryUsuarioUSU_FLEXCLUSAO: TStringField;
    ZqryUsuarioUSU_LICHEQ: TFloatField;
    ZqryUsuarioUSU_ECF: TIntegerField;
    ZqryUsuarioUSU_FLIMPRESSORA: TIntegerField;
    ZqryUsuarioUSU_PASTA_CUPOM: TStringField;
    ZqryUsuarioUSU_PASTA_ECF: TStringField;
    cdsUsuarioUSU_LOJA: TIntegerField;
    cdsUsuarioUSU_FLSUPER: TStringField;
    cdsUsuarioUSU_FLCAIXA: TStringField;
    cdsUsuarioUSU_LIMITEDESCONTO: TFloatField;
    cdsUsuarioUSU_GRUPO: TIntegerField;
    cdsUsuarioUSU_FLEXCLUSAO: TStringField;
    cdsUsuarioUSU_LICHEQ: TFloatField;
    cdsUsuarioUSU_ECF: TIntegerField;
    cdsUsuarioUSU_FLIMPRESSORA: TIntegerField;
    cdsUsuarioUSU_PASTA_CUPOM: TStringField;
    cdsUsuarioUSU_PASTA_ECF: TStringField;
    ZqryConfigCFG_SEQCREDITO: TIntegerField;
    cdsConfigCFG_SEQCREDITO: TIntegerField;
    cdsListaLotesProd: TClientDataSet;
    cdsListaLotesProdLOT_PROCODIGO: TStringField;
    cdsListaLotesProdLOT_NRLOTE: TStringField;
    cdsListaLotesProdLOT_QUANTIDADE: TFloatField;
    cdsListaLotesProdLOT_DTVENCIMENTO: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dspConfigGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspEmitenteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspClienteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspProdutoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspUsuarioGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspTranspGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsProdutoCalcFields(DataSet: TDataSet);
    procedure dspUFGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsPromocoesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Function IncluirTarefaUsuario(iCodigo : Integer; aAcao : String) : Boolean;
    Function ProcurarValor(aValor, aCampo, aTabela : String) : Boolean;
    Function GetHora() : String;
    Function GetNomeClienteForn(iCodigo : Integer) : String;
    Function GetNomeFornecedor(iCodigo : Integer) : String;
    Function GetCodigoFornecedor(aNome : String) : Integer;
    Function ValidarCodigoFornecedor(iCodigo : Integer) : boolean;
    procedure AbrirCidade(aUF : String);
    Function GetCodigoClienteCGCCPF(aCGCCPF : String) : Integer;
    Function GetNomeProduto(aCodigo : String) : String;
    Function GetCFOPProduto(aCodigo : String) : String;
    Function GetAliquotaICMS(iCodigo : Integer) : Double;
    Function GetCodigoCNPJCPF(aCNPJCPF, aCampoPesquisa, aCampoRetorno, aTabela : String) : Integer;
    Function GetCodigoCidadeIBGE(aUF, aCidade : String): Integer;
    Procedure AbrirCidades(aCDS : TClientDataSet; aUF : String);
    Procedure AbrirCidadeUF(aCDS : TClientDataSet; aUF : String);
    Procedure FormataCampoTipoPessoa(aTipo : String);
    Procedure CarregarLojas(aCombo : TComboBox);
    Procedure CarregarListaFuncionarios(aCombo : TComboBox);
    Procedure CarregarListaFornecedores(aCombo : TComboBox);
    Procedure CarregarListaSecoes(aCombo : TComboBox);
    Procedure CarregarListaSubsecoes(iSecao: integer; aCombo : TComboBox);
    Function VALIDAR_NOTA_ENTRADA(iFornecedor, iNumero : Integer; aSerie : String) : Boolean;
    Function GetCodigoLoja(aNome : String) : Integer;
    Function SetClienteForne(iCodigo : Integer; aStatus : String): Boolean;
    Function GetClienteFornCPFCNPJ(aCPFCNPJ : String): Integer;
    Function GetCodigoFuncionario(aNome : String) : Integer;
    Function GetCodigoSecao(aNome : String) : Integer;
    Function GetCodigoSubSecao(aNomeSubSecao : String; iCodSecao : Integer) : Integer;
    Function GetCodProdutoBarras(aBarras : String): String;
    Function GetIndiceECF(aProduto : String) : String;
    Function Impressora(iCDCAIX : integer) : Integer;
    Function GetVerificaSuperUsuario(iUsuario : Integer) : Boolean;
    Function GetCodigoModalidade(iCodigo : Integer) : Boolean;
    Function GetVerificaModalidadeCartao(iCodigo : Integer) : Boolean;
    Function GetNomeFormaPagamento(iCodigo : Integer) : String;
  end;

var
  dmDados: TdmDados;
  M_NRMENS : Integer;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
   try
     With ZConexao do
      begin
           Connected := false;
           Database := 'infonfe';
           HostName := 'localhost';
           Port     := 5432;
           Protocol := 'postgresql-7';
           User     := 'postgres';
           Password := 'admg2';
           Connected := true;
      End;
   Except
         on e: exception do
          begin
              Application.MessageBox(PChar('Erro na abertura de Base de Dados! Erro:'+#13
                      + E.Message), 'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              ZConexao.Connected := False;
              Application.Terminate;
          End;
   End;
end;

procedure TdmDados.DataModuleDestroy(Sender: TObject);
begin
     ZConexao.Connected := False;
end;

procedure TdmDados.dspConfigGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CONFIG';
end;

procedure TdmDados.dspEmitenteGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
    TableName := 'EMITENTE';
end;

procedure TdmDados.dspClienteGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
    TableName := 'CLIENTES';
end;

procedure TdmDados.dspProdutoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
    TableName := 'PRODUTOS';
end;

procedure TdmDados.dspUsuarioGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'USUARIOS';
end;

function TdmDados.IncluirTarefaUsuario(iCodigo: Integer;
  aAcao: String): Boolean;
Var
   aTexto, aHora, aComputador : String;
   qryInclusao : TZQuery;
   aData : TDate;
   iSeq : Integer;
begin
   Result := False;
   aData := Date();
   aHora := Copy(TimetoStr(Time),1,5);
   aComputador := uFuncoes.SysComputerName();
   aTexto := 'Insert into "TAREFAS_USUARIOS" ("TAR_SEQUENCIA", "TAR_USUARIO", "TAR_DTMOVI", "TAR_HOMOVI", "TAR_COMPUTADOR", "TAR_ACAO") ';
   aTexto := aTexto +' values (:pSEQ, :pUSUARIO, :pDTMOVI, :pHOMOVI, :pCOMPUTADOR, :pACAO)';
   //
   uFuncoes.RefreshCDS(dmDados.cdsConfig);
   dmDados.cdsConfig.Edit;
   dmDados.cdsConfigCFG_SEQTAREFAUSUARIOS.AsInteger :=
      dmDados.cdsConfigCFG_SEQTAREFAUSUARIOS.AsInteger + 1;
   dmDados.cdsConfig.ApplyUpdates(0);
   iSeq := dmDados.cdsConfigCFG_SEQTAREFAUSUARIOS.AsInteger;
   //
   qryInclusao := TZQuery.Create(nil);
   with qryInclusao do
    try
         Connection := ZConexao;
         Close;
         SQL.Add(aTexto);
         Params.ParamByName('pSEQ').AsInteger     := iSeq;
         Params.ParamByName('pUSUARIO').AsInteger := iCodigo;
         Params.ParamByName('pDTMOVI').AsDate     := aData;
         Params.ParamByName('pHOMOVI').AsString   := aHora;
         Params.ParamByName('pCOMPUTADOR').AsString := aComputador;
         Params.ParamByName('pACAO').AsString     := aAcao;
         ExecSQL();
         //
         Result := True;
    Finally
         Free;
    End;
end;

function TdmDados.ProcurarValor(aValor, aCampo, aTabela: String): Boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     result := False;
     texto  := 'select "'+aCampo+'" from "'+aTabela+'" where ("'+aCampo+'" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aValor;
           Open;
           //
           If not (IsEmpty) Then
                Result := True;
      Finally
         Free;
      End;
end;

function TdmDados.GetHora: String;
begin
     Result := Copy(TimetoStr(Time()),1,5);
end;

procedure TdmDados.dspTranspGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'TRANSPORTADORAS';
end;

procedure TdmDados.cdsProdutoCalcFields(DataSet: TDataSet);
begin
      If not uFuncoes.Empty(cdsProdutoFOR_CODIGO.AsString) Then
         cdsProdutoPRO_NMFORN.AsString := GetNomeFornecedor(cdsProdutoFOR_CODIGO.AsInteger)
      Else
         cdsProdutoPRO_NMFORN.AsString := ' ';
end;

function TdmDados.GetNomeFornecedor(iCodigo: Integer): String;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'select "FOR_CODIGO", "FOR_RAZAO" from "FORNECEDORES" where ("FOR_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsInteger := iCodigo;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('FOR_RAZAO').AsString;
      Finally
         Free;
      End;
end;

procedure TdmDados.AbrirCidade(aUF: String);
begin
      with cdsListaCidades do
        begin
            DisableControls;
            Close;
            Params[0].AsString := aUF;
            Open;
            EnableControls;
        End;
end;

Function TdmDados.GetCodigoClienteCGCCPF(aCGCCPF: String): Integer;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     Result := 0;
     texto  := 'Select "CLI_CODIGO", "CLI_NRDOCUMENTO" from "CLIENTES" where ("CLI_NRDOCUMENTO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aCGCCPF;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('CLI_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetNomeProduto(aCodigo: String): String;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Select "PRO_CODIGO", "PRO_DESCRICAO" from "PRODUTOS" where ("PRO_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aCodigo;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('PRO_DESCRICAO').AsString;
      Finally
         Free;
      End;
end;

procedure TdmDados.dspUFGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
     TableName := 'TABELA_UF';
end;

function TdmDados.GetCFOPProduto(aCodigo: String): String;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Select "PRO_CODIGO", "PRO_CFOP" from "PRODUTOS" where ("PRO_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aCodigo;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('PRO_CFOP').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetAliquotaICMS(iCodigo: Integer): Double;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     result := 0;
     texto  := 'Select "TRI_CODIGO", "TRI_ICMS" from "TRIBUTACOES" Where ("TRI_CODIGO" = :pCODIGO) ';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCodigo;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('TRI_ICMS').AsFloat;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoCNPJCPF(aCNPJCPF, aCampoPesquisa, aCampoRetorno,
  aTabela: String): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "'+ aCampoRetorno+'", "'+ aCampoPesquisa +'" from "'+aTabela+'" Where ("'+aCampoPesquisa+'" = :pDescricao) ';
     //
     qryAux:= TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pDescricao').AsString := aCNPJCPF;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName(aCampoRetorno).AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoCidadeIBGE(aUF, aCidade: String): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select * from "CIDADES" Where ("CID_UFCIDADE" = :pUF) and ("CID_NOME" = :pNOME) ';
     //
     qryAux:= TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pUF').AsString   := aUF;
           Params.ParamByName('pNOME').AsString := aCidade;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('CID_CODIBGE').AsInteger;
      Finally
         Free;
      End;
end;

procedure TdmDados.AbrirCidades(aCDS: TClientDataSet; aUF: String);
begin
      with aCDS do
         begin
              Close;
              Params[0].AsString := aUF;
              Open;
         End;
end;

procedure TdmDados.AbrirCidadeUF(aCDS: TClientDataSet; aUF: String);
begin
     With aCDS do
      begin
           Close;
           Params[0].AsString := aUF;
           Open;
      End;
end;


function TdmDados.GetNomeClienteForn(iCodigo: Integer): String;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'select "CLI_CODIGO", "CLI_RAZAO", "CLI_FANTASIA" from "CLIENTES" where ("CLI_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsInteger := iCodigo;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('CLI_RAZAO').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.ValidarCodigoFornecedor(iCodigo: Integer): boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'select "CLI_CODIGO", "CLI_CLIFOR" from "CLIENTES" where ("CLI_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsInteger := iCodigo;
           Open;
           //
           If not (IsEmpty) Then
              if (FieldByName('CLI_CLIFOR').AsString = 'F') Then
                  Result := True
              Else
                  Result := False;
      Finally
         Free;
      End;
end;

procedure TdmDados.FormataCampoTipoPessoa(aTipo : String);
begin
     If (aTipo = 'F') Then
          dmDados.CdsClienteCLI_CGC.EditMask := '999.999.999-99;0'
     Else
          dmDados.CdsClienteCLI_CGC.EditMask := '99.999.999/9999-99;0';
end;

procedure TdmDados.cdsPromocoesCalcFields(DataSet: TDataSet);
begin
      If not uFuncoes.Empty(cdsPromocoesPRM_IDPRODUTO.AsString) Then
          cdsPromocoesPRM_NMPROD.AsString := GetNomeProduto(cdsPromocoesPRM_IDPRODUTO.AsString)
      Else
          cdsPromocoesPRM_NMPROD.AsString := '';
end;

procedure TdmDados.CarregarLojas(aCombo: TComboBox);
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Select "EMI_CODIGO", "EMI_FANTASIA", "EMI_RAZAOSOCIAL" from "EMITENTES" order by "EMI_FANTASIA" ';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Open;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 aCombo.Clear;
                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('EMI_FANTASIA').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

function TdmDados.VALIDAR_NOTA_ENTRADA(iFornecedor, iNumero: Integer;
  aSerie: String): Boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     Result := False;
     texto  := 'Select "ENT_NUMERONOTA", "ENT_FORNECEDOR", "ENT_SERIENOTA" from "ENTRADAS" ';
     texto  := texto + 'Where ("ENT_NUMERONOTA" = :pNUMERONOTA) ';
     texto  := texto + ' and ("ENT_FORNECEDOR" = :pFORNECEDOR) ';
     texto  := texto + ' and ("ENT_SERIENOTA" = :pSERIENOTA) ';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNUMERONOTA').AsInteger := iNumero;
           Params.ParamByName('pFORNECEDOR').AsInteger := iFornecedor;
           Params.ParamByName('pSERIENOTA').AsString   := aSerie;
           Open;
           //
           If not (IsEmpty) Then
              Result := True;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoLoja(aNome: String): Integer;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'select "EMI_CODIGO", "EMI_RAZAOSOCIAL", "EMI_FANTASIA" from "EMITENTES" where ("EMI_FANTASIA" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsString := aNome;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('EMI_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.SetClienteForne(iCodigo: Integer;
  aStatus: String): Boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Update "CLIENTES" Set "CLI_FLCLIFOR" = :pStatus where ("CLI_CODIGO" = :pValor)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pValor').AsInteger := iCodigo;
           Params.ParamByName('pStatus').AsString := aStatus;
           ExecSQL();
           //
           Result := true;
      Finally
         Free;
      End;
end;

function TdmDados.GetClienteFornCPFCNPJ(aCPFCNPJ: String): Integer;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'select "CLI_CODIGO", "CLI_CGC" from "CLIENTES" where ("CLI_CGC" = :pCPFCNPJ)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCPFCNPJ').AsString := aCPFCNPJ;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('CLI_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

procedure TdmDados.CarregarListaFuncionarios(aCombo: TComboBox);
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "FUN_CODIGO", "FUN_NOME" from "FUNCIONARIOS" order by "FUN_NOME" ';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Open;
           //
           aCombo.Clear;
           If not (IsEmpty) Then
            begin
                 First;

                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('FUN_NOME').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoFuncionario(aNome: String): Integer;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Select "FUN_CODIGO", "FUN_NOME" from "FUNCIONARIOS" where ("FUN_NOME" = :pNOME)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString := aNome;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('FUN_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

procedure TdmDados.CarregarListaFornecedores(aCombo: TComboBox);
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "CLI_CODIGO", "CLI_FANTASIA", "CLI_CLIFOR", "CLI_FLCLIFOR" from "CLIENTES" ';
     texto  := texto + 'Where ("CLI_CLIFOR" = '+QuotedStr('F')+') order by "CLI_FANTASIA"';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Open;
           //
           aCombo.Clear;
           If not (IsEmpty) Then
            begin
                 First;

                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('CLI_FANTASIA').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

procedure TdmDados.CarregarListaSecoes(aCombo: TComboBox);
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "SEC_CODIGO", "SEC_DESCRICAO" from "SECAO" order by "SEC_DESCRICAO" ';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Open;
           //
           aCombo.Clear;
           If not (IsEmpty) Then
            begin
                 First;

                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('SEC_DESCRICAO').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

procedure TdmDados.CarregarListaSubsecoes(iSecao: integer; aCombo: TComboBox);
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "SUB_CODIGO", "SUB_DESCRICAO", "SEC_CODIGO" from "SUBSECAO" where ("SEC_CODIGO" = :pCODIGO) order by "SUB_DESCRICAO" ';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params[0].AsInteger := iSecao;
           Open;
           //
           aCombo.Clear;
           If not (IsEmpty) Then
            begin
                 First;
                 While not (Eof) do
                  begin
                       aCombo.Items.add(FieldByName('SUB_DESCRICAO').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoSecao(aNome: String): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     Result := 0;
     texto  := 'Select "SEC_CODIGO", "SEC_DESCRICAO" from "SECAO" where ("SEC_DESCRICAO" = :pNOME)';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString := aNome;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('SEC_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoFornecedor(aNome: String): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     Result := 0;
     texto  := 'Select "CLI_CODIGO", "CLI_FANTASIA", "CLI_CLIFOR", "CLI_FLCLIFOR" from "CLIENTES" where ("CLI_FANTASIA" = :pNOME)';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString := aNome;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('CLI_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodigoSubSecao(aNomeSubSecao: String;
  iCodSecao: Integer): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     Result := 0;
     texto  := 'Select * from "SUBSECAO" where ("SUB_DESCRICAO" = :pNOME) and ("SEC_CODIGO" = :pSECAO)';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNOME').AsString   := aNomeSubSecao;
           Params.ParamByName('pSECAO').AsInteger := iCodSecao;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('SUB_CODIGO').AsInteger;
      Finally
         Free;
      End;
end;

function TdmDados.GetCodProdutoBarras(aBarras: String): String;
Var
    qryAux : TZQuery;
    texto : String;
begin
     Result := '';
     texto  := 'Select "PRO_CODIGO", "PRO_BARRAS" from "PRODUTOS" where ("PRO_BARRAS" = :pBARRAS)';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pBARRAS').AsString := aBarras;
           Open;
           //
           If not (IsEmpty) Then
                Result := FieldByName('PRO_CODIGO').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.GetIndiceECF(aProduto: String): String;
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select P."PRO_CODIGO", P."TRI_CODIGO", T."TRI_INDICE" from "PRODUTOS" P ';
     texto  := texto + 'INNER join "TRIBUTACOES" T ON T."TRI_CODIGO" = P."TRI_CODIGO" ';
     texto  := texto + 'Where (P."PRO_CODIGO" = :pCODIGO) ';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsString := aProduto;
           Open;
           //
           If not (IsEmpty) Then
              Result := FieldByName('TRI_INDICE').AsString;
      Finally
         Free;
      End;
end;

function TdmDados.Impressora(iCDCAIX: integer): Integer;
Var
    qryAux : TZQuery;
    texto : String;
begin
     texto  := 'Select "USU_CODIGO", "USU_ECF", "USU_FLIMPRESSORA" from "USUARIOS" Where ("USU_CODIGO" = :pCODIGO) ';
     //
     qryAux := TZQuery.Create(nil);
     with qryAux do
      try
           Connection := ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pCODIGO').AsInteger := iCDCAIX;
           Open;
           //
           If not (IsEmpty) Then
            begin
               If (FieldByName('SEN_FLIMPRESSORA').AsString = '1') Then
                 Result := FieldByName('SEN_ECF').AsInteger;
            End
            Else
                Result := 0;
      Finally
         Free;
      End;
end;

function TdmDados.GetVerificaSuperUsuario(iUsuario: Integer): Boolean;
var qraux : TZquery;
    texto : string;
begin
    Result := False;
    texto := 'Select "USU_CODIGO", "USU_NOME", "USU_SNATUAL", "USU_FLCAIXA", "USU_FLSUPER" , "USU_ADMIN" from "USUARIOS" ';
    texto := texto + 'Where ("USU_CODIGO" = :pCODIGO)';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iUsuario;
       Open;
       //
       if not (IsEmpty) Then
          If (FieldByName('SEN_FLSUPER').AsString = 'N')
             Or uFuncoes.Empty(FieldByName('SEN_FLSUPER').AsString) Then
              Result := True;
       finally
         free;
       end;
end;

function TdmDados.GetCodigoModalidade(iCodigo: Integer): Boolean;
var qraux : TZquery;
    texto : string;
begin
    Result := False;
    texto := 'Select "MOD_CODIGO", "MOD_NOME" from "MODALIDADES" where ("MOD_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       if not (IsEmpty) Then
            Result := True;
       finally
         free;
       end;
end;

function TdmDados.GetVerificaModalidadeCartao(iCodigo: Integer): Boolean;
var qraux : TZquery;
    texto : string;
begin
    Result := False;
    texto := 'Select "MOD_CODIGO", "MOD_FLFIXA" from "MODALIDADES" where ("MOD_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       if not (IsEmpty) Then
         If (FieldByName('MOD_FLFIXA').AsString = 'C') Then
            Result := True;
       finally
         free;
       end;
end;

function TdmDados.GetNomeFormaPagamento(iCodigo: Integer): String;
var qraux : TZquery;
    texto : string;
begin
    texto := 'Select "MOD_CODIGO", "MOD_NOME" from "MODALIDADES" Where ("MOD_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       If not (IsEmpty) Then
           result := FieldByName('MOD_NOME').AsString
       Else
           result := 'NÃO ENCONTRADA';
     finally
         free;
     end;
end;

end.


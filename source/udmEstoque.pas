unit udmEstoque;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Provider, DBClient;

type
  TdmEstoque = class(TDataModule)
    ZQryEstoque: TZQuery;
    ZQryHistorico: TZQuery;
    ZQryEntrada: TZQuery;
    ZQryEntradasItens: TZQuery;
    ZQryEstoqueEST_CODLOJA: TIntegerField;
    ZQryEstoqueEST_PRODUTO: TStringField;
    ZQryEstoqueEST_UNIDADE: TStringField;
    ZQryEstoqueEST_TAMANHO: TStringField;
    ZQryEstoqueEST_DTENTRADA: TDateField;
    ZQryEstoqueEST_QUANTENTRADA: TFloatField;
    ZQryEstoqueEST_DTSAIDA: TDateField;
    ZQryEstoqueEST_QUANTSAIDA: TFloatField;
    ZQryEstoqueEST_CUSTOANTERIOR: TFloatField;
    ZQryEstoqueEST_CUSTOMEDIO: TFloatField;
    ZQryEstoqueEST_MAIORCUSTO: TFloatField;
    ZQryEstoqueEST_QUANTIDADE: TFloatField;
    ZQryEstoqueEST_MINIMO: TFloatField;
    ZQryEstoqueULTREAJUST: TDateField;
    ZQryHistoricoHIS_SEQUENCIA: TIntegerField;
    ZQryHistoricoHIS_LOJA: TIntegerField;
    ZQryHistoricoHIS_ITEM: TIntegerField;
    ZQryHistoricoHIS_PRODUTO: TStringField;
    ZQryHistoricoHIS_UNIDADE: TStringField;
    ZQryHistoricoHIS_TAMANHO: TStringField;
    ZQryHistoricoHIS_DATA: TDateField;
    ZQryHistoricoHIS_HORA: TStringField;
    ZQryHistoricoHIS_TIPO: TStringField;
    ZQryHistoricoHIS_DOCUMENTO: TIntegerField;
    ZQryHistoricoHIS_ANTERIOR: TFloatField;
    ZQryHistoricoHIS_MOVIMENTO: TFloatField;
    ZQryHistoricoHIS_ATUAL: TFloatField;
    ZQryHistoricoHIS_MOTIVO: TIntegerField;
    ZQryHistoricoHIS_VLCUSTO: TFloatField;
    ZQryHistoricoHIS_VLCOMPRA: TFloatField;
    ZQryHistoricoHIS_VLVENDA: TFloatField;
    ZQryHistoricoHIS_CODIGOBAIXA: TStringField;
    ZQryHistoricoHIS_VENDEDOR: TIntegerField;
    ZQryHistoricoHIS_USUARIO: TIntegerField;
    ZQryEntradaENT_NUMERO: TIntegerField;
    ZQryEntradaENT_LOJA: TIntegerField;
    ZQryEntradaENT_FORNECEDOR: TIntegerField;
    ZQryEntradaENT_TRANSPORTADORA: TIntegerField;
    ZQryEntradaENT_DATAPEDIDO: TDateField;
    ZQryEntradaENT_DATAENTRADA: TDateField;
    ZQryEntradaENT_NATUREZAOPERACAO: TStringField;
    ZQryEntradaENT_DATAEMISSAONOTA: TDateField;
    ZQryEntradaENT_NUMERONOTA: TStringField;
    ZQryEntradaENT_SERIENOTA: TStringField;
    ZQryEntradaENT_VALORMERCADORIAS: TFloatField;
    ZQryEntradaENT_TIPOFRETE: TStringField;
    ZQryEntradaENT_VALORFRETE: TFloatField;
    ZQryEntradaENT_BASECALCULOICMS: TFloatField;
    ZQryEntradaENT_VALORICMS: TFloatField;
    ZQryEntradaENT_BASECALCULOSUBSTITUICAO: TFloatField;
    ZQryEntradaENT_VALORSUBSTITUICAO: TFloatField;
    ZQryEntradaENT_VALORIPI: TFloatField;
    ZQryEntradaENT_VALORSEGURO: TFloatField;
    ZQryEntradaENT_OUTRASPESPESAS: TFloatField;
    ZQryEntradaENT_VALORDESCONTO: TFloatField;
    ZQryEntradaENT_VALORNOTA: TFloatField;
    ZQryEntradaENT_SITUACAO: TStringField;
    ZQryEntradaENT_USUARIO: TIntegerField;
    ZQryEntradasItensENP_NUMERO: TIntegerField;
    ZQryEntradasItensENP_NRITEM: TIntegerField;
    ZQryEntradasItensENP_PRODUTO: TStringField;
    ZQryEntradasItensENP_UNIDADE: TStringField;
    ZQryEntradasItensENP_TAMANHO: TStringField;
    ZQryEntradasItensENP_QUANTIDADE: TFloatField;
    ZQryEntradasItensENP_VALOR: TFloatField;
    ZQryEntradasItensENP_IPI: TFloatField;
    ZQryEntradasItensENP_ICMS: TFloatField;
    dspEstoque: TDataSetProvider;
    dspHistorico: TDataSetProvider;
    dspEntrada: TDataSetProvider;
    dspItensEntrada: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    cdsEstoqueEST_CODLOJA: TIntegerField;
    cdsEstoqueEST_PRODUTO: TStringField;
    cdsEstoqueEST_UNIDADE: TStringField;
    cdsEstoqueEST_TAMANHO: TStringField;
    cdsEstoqueEST_DTENTRADA: TDateField;
    cdsEstoqueEST_QUANTENTRADA: TFloatField;
    cdsEstoqueEST_DTSAIDA: TDateField;
    cdsEstoqueEST_QUANTSAIDA: TFloatField;
    cdsEstoqueEST_CUSTOANTERIOR: TFloatField;
    cdsEstoqueEST_CUSTOMEDIO: TFloatField;
    cdsEstoqueEST_MAIORCUSTO: TFloatField;
    cdsEstoqueEST_QUANTIDADE: TFloatField;
    cdsEstoqueEST_MINIMO: TFloatField;
    cdsEstoqueULTREAJUST: TDateField;
    cdsHistorico: TClientDataSet;
    cdsHistoricoHIS_SEQUENCIA: TIntegerField;
    cdsHistoricoHIS_LOJA: TIntegerField;
    cdsHistoricoHIS_ITEM: TIntegerField;
    cdsHistoricoHIS_PRODUTO: TStringField;
    cdsHistoricoHIS_UNIDADE: TStringField;
    cdsHistoricoHIS_TAMANHO: TStringField;
    cdsHistoricoHIS_DATA: TDateField;
    cdsHistoricoHIS_HORA: TStringField;
    cdsHistoricoHIS_TIPO: TStringField;
    cdsHistoricoHIS_DOCUMENTO: TIntegerField;
    cdsHistoricoHIS_ANTERIOR: TFloatField;
    cdsHistoricoHIS_MOVIMENTO: TFloatField;
    cdsHistoricoHIS_ATUAL: TFloatField;
    cdsHistoricoHIS_MOTIVO: TIntegerField;
    cdsHistoricoHIS_VLCUSTO: TFloatField;
    cdsHistoricoHIS_VLCOMPRA: TFloatField;
    cdsHistoricoHIS_VLVENDA: TFloatField;
    cdsHistoricoHIS_CODIGOBAIXA: TStringField;
    cdsHistoricoHIS_VENDEDOR: TIntegerField;
    cdsHistoricoHIS_USUARIO: TIntegerField;
    cdsEntradaProd: TClientDataSet;
    cdsItensEntrada: TClientDataSet;
    cdsItensEntradaENP_NUMERO: TIntegerField;
    cdsItensEntradaENP_NRITEM: TIntegerField;
    cdsItensEntradaENP_PRODUTO: TStringField;
    cdsItensEntradaENP_UNIDADE: TStringField;
    cdsItensEntradaENP_TAMANHO: TStringField;
    cdsItensEntradaENP_QUANTIDADE: TFloatField;
    cdsItensEntradaENP_VALOR: TFloatField;
    cdsItensEntradaENP_IPI: TFloatField;
    cdsItensEntradaENP_ICMS: TFloatField;
    cdsEntradaProdENT_NUMERO: TIntegerField;
    cdsEntradaProdENT_LOJA: TIntegerField;
    cdsEntradaProdENT_FORNECEDOR: TIntegerField;
    cdsEntradaProdENT_TRANSPORTADORA: TIntegerField;
    cdsEntradaProdENT_DATAPEDIDO: TDateField;
    cdsEntradaProdENT_DATAENTRADA: TDateField;
    cdsEntradaProdENT_NATUREZAOPERACAO: TStringField;
    cdsEntradaProdENT_DATAEMISSAONOTA: TDateField;
    cdsEntradaProdENT_NUMERONOTA: TStringField;
    cdsEntradaProdENT_SERIENOTA: TStringField;
    cdsEntradaProdENT_VALORMERCADORIAS: TFloatField;
    cdsEntradaProdENT_TIPOFRETE: TStringField;
    cdsEntradaProdENT_VALORFRETE: TFloatField;
    cdsEntradaProdENT_BASECALCULOICMS: TFloatField;
    cdsEntradaProdENT_VALORICMS: TFloatField;
    cdsEntradaProdENT_BASECALCULOSUBSTITUICAO: TFloatField;
    cdsEntradaProdENT_VALORSUBSTITUICAO: TFloatField;
    cdsEntradaProdENT_VALORIPI: TFloatField;
    cdsEntradaProdENT_VALORSEGURO: TFloatField;
    cdsEntradaProdENT_OUTRASPESPESAS: TFloatField;
    cdsEntradaProdENT_VALORDESCONTO: TFloatField;
    cdsEntradaProdENT_VALORNOTA: TFloatField;
    cdsEntradaProdENT_SITUACAO: TStringField;
    cdsEntradaProdENT_USUARIO: TIntegerField;
    cdsItensTransf: TClientDataSet;
    cdsItensTransfPRT_CODIGO: TStringField;
    cdsItensTransfPRT_DESCRICAO: TStringField;
    cdsItensTransfPRT_UNIDADE: TStringField;
    cdsItensTransfPRT_QUANTIDADE: TFloatField;
    cdsItensTransfPRT_VLCOMPRA: TCurrencyField;
    cdsItensTransfPRT_VLCUSTO: TCurrencyField;
    cdsItensTransfPRT_VLVENDA: TCurrencyField;
    cdsItensTransfPRT_SUBTOTAL: TCurrencyField;
    cdsItensTransfPRT_TAMANHO: TStringField;
    ZQryTransferencia: TZQuery;
    dspTransferencia: TDataSetProvider;
    cdsTransferencia: TClientDataSet;
    ZQryTransferenciaTRA_NRTRANSFERENCIA: TIntegerField;
    ZQryTransferenciaTRA_LOJAORIGEM: TIntegerField;
    ZQryTransferenciaTRA_LOJADESTINO: TIntegerField;
    ZQryTransferenciaTRA_ENTREGADOR: TIntegerField;
    ZQryTransferenciaTRA_DATA: TDateField;
    ZQryTransferenciaTRA_HORA: TStringField;
    ZQryTransferenciaTRA_SITUACAO: TStringField;
    ZQryTransferenciaTRA_USUARIO: TIntegerField;
    cdsTransferenciaTRA_NRTRANSFERENCIA: TIntegerField;
    cdsTransferenciaTRA_LOJAORIGEM: TIntegerField;
    cdsTransferenciaTRA_LOJADESTINO: TIntegerField;
    cdsTransferenciaTRA_ENTREGADOR: TIntegerField;
    cdsTransferenciaTRA_DATA: TDateField;
    cdsTransferenciaTRA_HORA: TStringField;
    cdsTransferenciaTRA_SITUACAO: TStringField;
    cdsTransferenciaTRA_USUARIO: TIntegerField;
    cdsItensVendas: TClientDataSet;
    cdsItensVendasITE_NRITEN: TStringField;
    cdsItensVendasITE_CDITEN: TStringField;
    cdsItensVendasITE_NMDESC: TStringField;
    cdsItensVendasITE_QTITEN: TFloatField;
    cdsItensVendasITE_CDUNID: TStringField;
    cdsItensVendasITE_VLUNIT: TCurrencyField;
    cdsItensVendasITE_VLSUBT: TCurrencyField;
    cdsItensVendasITE_FLCANC: TStringField;
    cdsItensVendasITE_VLCOMP: TCurrencyField;
    cdsItensVendasITE_VLCUST: TCurrencyField;
    cdsItensVendasITE_NRLOTE: TStringField;
    cdsItensVendasITE_CDBAIX: TStringField;
    cdsItensVendasITE_VLDESC: TFloatField;
    cdsItensVendasITE_VLACRE: TFloatField;
    cdsItensVendasITE_VENDEDOR: TIntegerField;
    cdsItensVendasITE_CODCOR: TIntegerField;
    cdsItensVendasITE_VALIPI: TFloatField;
    cdsParcelasVenda: TClientDataSet;
    cdsParcelasVendaPAR_NRPARCELA: TIntegerField;
    cdsParcelasVendaPAR_VENCIMENTO: TDateField;
    cdsParcelasVendaPAR_VALOR: TCurrencyField;
    cdsParcelasVendaPAR_BANCO: TStringField;
    cdsParcelasVendaPAR_AGENCIA: TStringField;
    cdsParcelasVendaPAR_CONTA: TStringField;
    cdsParcelasVendaPAR_CHEQUE: TStringField;
    cdsParcelasVendaPAR_QTPARCELAS: TIntegerField;
    cdsParcelasVendaPAR_MODALIDADE: TIntegerField;
    cdsModalidades: TClientDataSet;
    cdsModalidadesCDS_ITEM: TIntegerField;
    cdsModalidadesCDS_CODIGO: TIntegerField;
    cdsModalidadesCDS_NOME: TStringField;
    cdsModalidadesCDS_ABREVIACAO: TStringField;
    cdsModalidadesCDS_NRPARCLA: TIntegerField;
    cdsModalidadesCDS_FLFIXA: TStringField;
    cdsModalidadesCDS_AVISTA: TStringField;
    cdsModalidadesCDS_FLTEF: TStringField;
    cdsModalidadesCDS_VLRECEBIDO: TFloatField;
    cdsModalidadesCDS_FLSUCESSO: TBooleanField;
    cdsParcelas: TClientDataSet;
    cdsParcelasPAR_NRPARCELA: TIntegerField;
    cdsParcelasPAR_VENCIMENTO: TDateField;
    cdsParcelasPAR_VALOR: TCurrencyField;
    cdsParcelasPAR_BANCO: TStringField;
    cdsParcelasPAR_AGENCIA: TStringField;
    cdsParcelasPAR_CONTA: TStringField;
    cdsParcelasPAR_CHEQUE: TStringField;
    ZQryVenda: TZQuery;
    ZQryVendaItens: TZQuery;
    dspVenda: TDataSetProvider;
    dspVendaItens: TDataSetProvider;
    cdsVenda: TClientDataSet;
    cdsVendaItens: TClientDataSet;
    ZQryVendaMOV_PEDIDO: TIntegerField;
    ZQryVendaMOV_CUPOM: TIntegerField;
    ZQryVendaMOV_LOJA: TIntegerField;
    ZQryVendaMOV_SEQUENCIA: TIntegerField;
    ZQryVendaMOV_CLIENTE: TIntegerField;
    ZQryVendaMOV_DATAVENDA: TDateField;
    ZQryVendaMOV_HORAVENDA: TStringField;
    ZQryVendaMOV_DATACANC: TDateField;
    ZQryVendaMOV_HORACANC: TStringField;
    ZQryVendaMOV_MOTCANC: TStringField;
    ZQryVendaMOV_VENDEDOR: TIntegerField;
    ZQryVendaMOV_VALOR: TFloatField;
    ZQryVendaMOV_ENTRADA: TFloatField;
    ZQryVendaMOV_DESCONTO: TFloatField;
    ZQryVendaMOV_ACRESCIMO: TFloatField;
    ZQryVendaMOV_DEVOLUSAO: TFloatField;
    ZQryVendaMOV_TROCO: TFloatField;
    ZQryVendaMOV_SITUACAO: TStringField;
    ZQryVendaDOM_ENDERECO: TStringField;
    ZQryVendaDOM_NUMERO: TStringField;
    ZQryVendaDOM_COMPLEMENTO: TStringField;
    ZQryVendaDOM_BAIRRO: TStringField;
    ZQryVendaDOM_CIDADE: TStringField;
    ZQryVendaDOM_REFERE: TStringField;
    ZQryVendaDOM_NRFONE: TStringField;
    ZQryVendaMOV_NOMECLIENTE: TStringField;
    ZQryVendaMOV_TABELA: TIntegerField;
    ZQryVendaMOV_TIPO_FRETE: TStringField;
    ZQryVendaMOV_PERC_FRETE: TFloatField;
    ZQryVendaMOV_IDTRANSPORTADORA: TIntegerField;
    ZQryVendaMOV_TABELA_PLANO: TIntegerField;
    ZQryVendaMOV_OBSERVACAO: TMemoField;
    ZQryVendaMOV_MODALIDADE_PEDIDO: TIntegerField;
    ZQryVendaMOV_OBS1: TMemoField;
    ZQryVendaMOV_OBS2: TMemoField;
    ZQryVendaMOV_NRMESA: TStringField;
    ZQryVendaMOV_TAXA_SERVICO: TFloatField;
    cdsVendaMOV_PEDIDO: TIntegerField;
    cdsVendaMOV_CUPOM: TIntegerField;
    cdsVendaMOV_LOJA: TIntegerField;
    cdsVendaMOV_SEQUENCIA: TIntegerField;
    cdsVendaMOV_CLIENTE: TIntegerField;
    cdsVendaMOV_DATAVENDA: TDateField;
    cdsVendaMOV_HORAVENDA: TStringField;
    cdsVendaMOV_DATACANC: TDateField;
    cdsVendaMOV_HORACANC: TStringField;
    cdsVendaMOV_MOTCANC: TStringField;
    cdsVendaMOV_VENDEDOR: TIntegerField;
    cdsVendaMOV_VALOR: TFloatField;
    cdsVendaMOV_ENTRADA: TFloatField;
    cdsVendaMOV_DESCONTO: TFloatField;
    cdsVendaMOV_ACRESCIMO: TFloatField;
    cdsVendaMOV_DEVOLUSAO: TFloatField;
    cdsVendaMOV_TROCO: TFloatField;
    cdsVendaMOV_SITUACAO: TStringField;
    cdsVendaDOM_ENDERECO: TStringField;
    cdsVendaDOM_NUMERO: TStringField;
    cdsVendaDOM_COMPLEMENTO: TStringField;
    cdsVendaDOM_BAIRRO: TStringField;
    cdsVendaDOM_CIDADE: TStringField;
    cdsVendaDOM_REFERE: TStringField;
    cdsVendaDOM_NRFONE: TStringField;
    cdsVendaMOV_NOMECLIENTE: TStringField;
    cdsVendaMOV_TABELA: TIntegerField;
    cdsVendaMOV_TIPO_FRETE: TStringField;
    cdsVendaMOV_PERC_FRETE: TFloatField;
    cdsVendaMOV_IDTRANSPORTADORA: TIntegerField;
    cdsVendaMOV_TABELA_PLANO: TIntegerField;
    cdsVendaMOV_OBSERVACAO: TMemoField;
    cdsVendaMOV_MODALIDADE_PEDIDO: TIntegerField;
    cdsVendaMOV_OBS1: TMemoField;
    cdsVendaMOV_OBS2: TMemoField;
    cdsVendaMOV_NRMESA: TStringField;
    cdsVendaMOV_TAXA_SERVICO: TFloatField;
    ZQryVendaItensMOP_PEDIDO: TIntegerField;
    ZQryVendaItensMOP_NRITEM: TIntegerField;
    ZQryVendaItensMOP_PRODUTO: TStringField;
    ZQryVendaItensMOP_QUANTIDADE: TFloatField;
    ZQryVendaItensMOP_UNIDADE: TStringField;
    ZQryVendaItensMOP_ARMAZENAMENTO: TStringField;
    ZQryVendaItensMOP_VALOR: TFloatField;
    ZQryVendaItensMOP_DESCONTO: TFloatField;
    ZQryVendaItensMOP_SERIE: TStringField;
    ZQryVendaItensMOP_CUSTO: TFloatField;
    ZQryVendaItensMOP_COMPRA: TFloatField;
    ZQryVendaItensMOP_CODCOR: TIntegerField;
    ZQryVendaItensMOP_VALIPI: TFloatField;
    ZQryVendaItensMOP_CDVENDEDOR: TIntegerField;
    cdsVendaItensMOP_PEDIDO: TIntegerField;
    cdsVendaItensMOP_NRITEM: TIntegerField;
    cdsVendaItensMOP_PRODUTO: TStringField;
    cdsVendaItensMOP_QUANTIDADE: TFloatField;
    cdsVendaItensMOP_UNIDADE: TStringField;
    cdsVendaItensMOP_ARMAZENAMENTO: TStringField;
    cdsVendaItensMOP_VALOR: TFloatField;
    cdsVendaItensMOP_DESCONTO: TFloatField;
    cdsVendaItensMOP_SERIE: TStringField;
    cdsVendaItensMOP_CUSTO: TFloatField;
    cdsVendaItensMOP_COMPRA: TFloatField;
    cdsVendaItensMOP_CODCOR: TIntegerField;
    cdsVendaItensMOP_VALIPI: TFloatField;
    cdsVendaItensMOP_CDVENDEDOR: TIntegerField;
    ZQryVendaItensMOP_TAMANHO: TStringField;
    cdsVendaItensMOP_TAMANHO: TStringField;
    ZQryCaixa: TZQuery;
    ZQryMovCaixa: TZQuery;
    ZQryCaixaCAI_NUMERO: TIntegerField;
    ZQryCaixaCAI_LOJA: TIntegerField;
    ZQryCaixaCAI_DTABERTURA: TDateField;
    ZQryCaixaCAI_DTFECHAMENTO: TDateField;
    ZQryCaixaCAI_HOABERTURA: TStringField;
    ZQryCaixaCAI_HOFECHAMENTO: TStringField;
    ZQryCaixaCAI_RGINICIAL: TIntegerField;
    ZQryCaixaCAI_RGFINAL: TIntegerField;
    ZQryCaixaCAI_CAIXA: TIntegerField;
    ZQryCaixaCAI_SITUACAO: TStringField;
    ZQryMovCaixaMCA_SEQUENCIA: TIntegerField;
    ZQryMovCaixaMCA_LOJA: TIntegerField;
    ZQryMovCaixaMCA_VENDA: TIntegerField;
    ZQryMovCaixaMCA_TIPOMOV: TStringField;
    ZQryMovCaixaMCA_DTMOVIMENTO: TDateField;
    ZQryMovCaixaMCA_HRMOVIMENTO: TStringField;
    ZQryMovCaixaMCA_MODALIDADE: TIntegerField;
    ZQryMovCaixaMCA_VLMODALIDADE: TFloatField;
    ZQryMovCaixaMCA_TOVENDA: TFloatField;
    ZQryMovCaixaMCA_VLTROCO: TFloatField;
    ZQryMovCaixaMCA_OBSEVACAO: TStringField;
    ZQryMovCaixaMCA_SITUACAO: TStringField;
    ZQryMovCaixaMCA_CAIXA: TIntegerField;
    ZQryMovCaixaMCA_NATUREZA: TIntegerField;
    ZQryMovCaixaMCA_FUNCIONARIO: TIntegerField;
    dspCaixa: TDataSetProvider;
    dspMovCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    cdsMovCaixa: TClientDataSet;
    cdsMovCaixaMCA_SEQUENCIA: TIntegerField;
    cdsMovCaixaMCA_LOJA: TIntegerField;
    cdsMovCaixaMCA_VENDA: TIntegerField;
    cdsMovCaixaMCA_TIPOMOV: TStringField;
    cdsMovCaixaMCA_DTMOVIMENTO: TDateField;
    cdsMovCaixaMCA_HRMOVIMENTO: TStringField;
    cdsMovCaixaMCA_MODALIDADE: TIntegerField;
    cdsMovCaixaMCA_VLMODALIDADE: TFloatField;
    cdsMovCaixaMCA_TOVENDA: TFloatField;
    cdsMovCaixaMCA_VLTROCO: TFloatField;
    cdsMovCaixaMCA_OBSEVACAO: TStringField;
    cdsMovCaixaMCA_SITUACAO: TStringField;
    cdsMovCaixaMCA_CAIXA: TIntegerField;
    cdsMovCaixaMCA_NATUREZA: TIntegerField;
    cdsMovCaixaMCA_FUNCIONARIO: TIntegerField;
    ZQryLotes: TZQuery;
    ZQryLotesLOT_PROCODIGO: TStringField;
    ZQryLotesLOT_NRLOTE: TStringField;
    ZQryLotesLOT_QUANTIDADE: TFloatField;
    ZQryLotesLOT_DTVENCIMENTO: TDateField;
    dspLotes: TDataSetProvider;
    cdsLotes: TClientDataSet;
    cdsLotesLOT_PROCODIGO: TStringField;
    cdsLotesLOT_NRLOTE: TStringField;
    cdsLotesLOT_QUANTIDADE: TFloatField;
    cdsLotesLOT_DTVENCIMENTO: TDateField;
    procedure cdsItensTransfCalcFields(DataSet: TDataSet);
    procedure cdsItensVendasCalcFields(DataSet: TDataSet);
    procedure dspVendaItensGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspVendaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Function AdicionarEstoqueProduto(
       iCODLOJA : Integer; aTipo, aPRODUTO, aUNIDADE, aTAMANHO : String;
       aDTENTRADA, aDTSAIDA, aULTREAJUST : String;
       fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR, fCUSTOMEDIO, fMAIORCUSTO,
       fQUANTIDADE, fMINIMO  : Double) : Boolean;
    Function AdicionarHistoricoProduto(
       iSequencia, iLOJA, iITEM, iDOCUMENTO, iMOTIVO, iVENDEDOR, iUSUARIO : Integer;
       aPRODUTO, aUNIDADE, aTAMANHO, aHORA, aTIPO, aCODIGOBAIXA : String;
       aDATA : Tdatetime;
       fANTERIOR, fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA : Double) : Boolean;
    Function DeleteNotaEntrada(iCodigo : Integer): Boolean;
    Function GetProdutoEstoque(iLoja : Integer; aProduto : String) : Boolean;
    Function AdicionarItemTransf(aCodigo, aDescricao, aTamanho, aUnidade : String;
         fQuantidade, fVenda, fCusto, fCompra : Double): Boolean;
    procedure AbrirTabelaTransf();
    Function AddTransferencia(iNRTRANSFERENCIA, iSequencia, iLOJAORIGEM, iLOJADESTINO, iENTREGADOR, iUSUARIO : Integer;
            aDATA : TDatetime; aHORA, aSITUACAO : String; aCDS : TClientDataSet): Integer;
    Function IncluirItem(aItem, aProduto, aDescricao, aUnidade, aLote, aCodBaixa : String;
         fQuantidade, fValorUnt, fValorCompra, fValorCusto, fValorDesc, fValorAcrescimo, fValorIPI : Double;
         iVendedor, iCor : Integer; aNRLOTE : String) : Boolean;
    Function CalcularTotalVenda(aCDS : TClientDataSet) : Double;
    Procedure CRIAR_PARCELAS(fValorTotal : Double; iQuantidade : Integer);
    Function AddModalidadeVenda(iItem, iCodigo : Integer; fValor : Double) : Boolean;
    Function ExcluirModalidadeVenda(iCodigo : Integer) : Boolean;
    Function GetVerificaModalidadeCartao(iCodigo : Integer) : Boolean;
    Function AdicionarVenda(iPEDIDO, iCUPOM, iLOJA, iSEQUENCIA, iCLIENTE, iVENDEDOR : Integer;
             aDATAVENDA : TDateTime; aHORAVENDA, aSituacao, aTIPO_FRETE : String;
             fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO, fTROCO, fPERC_FRETE, fTAXA_SERVICO : Double;
             aENDERECO, aNUMERO, aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone, aNomeCliente : String;
             iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO, iMODALIDADE_PEDIDO : Integer;
             aOBSERVACAO, aOBS1, aOBS2, aNRMESA : String ) : Integer;
    Function AdicionarItemVenda(iPEDIDO, iNRITEM, iCDVENDEDOR, iCor: Integer;
            aProduto, aUNIDADE, aARMAZENAMENTO, aSERIE : String;
            fQUANTIDADE, fValorUnitario, fDesconto, fVCusto, fCompra, fValorIPI : Double): Boolean;
    Function AbrirRegistroCaixa(
      iNUMERO, iLOJA, iRGINICIAL, iCAIXA : integer;
      aDTABERTURA : TDatetime; aHOABERTURA, aSITUACAO : String): Boolean;
    Function FecharRegistroCaixa(
        iNUMERO, iLOJA, iRGFINAL, iCAIXA : integer;
        aDTFECHAMENTO : TDatetime; aHOFECHAMENTO, aSITUACAO : String): Boolean;
    Function GetVerificaSituacaoCaixa(iCaixa : Integer; aSituacao : String) : Boolean;
    Function GetLojaCaixaAberto(iCaixa : Integer; aSituacao : String) : Integer;
    Function AdicionarMovCaixa(
        iSEQUENCIA, iLOJA, iVenda, iMODALIDADE, iCaixa, iNatureza, iFuncionario : Integer;
        aTIPOMOV, aHRMOVIMENTO, aOBSEVACAO, aSITUACAO : String;
        aDTMOVIMENTO : TDateTime; fVLMODALIDADE, fTOVENDA, fVLTROCO : Double) : Boolean;
    Function AtualizarLoteProduto(aProduto, aLote, aTipo, aDataVenc : String; fQuant : Double): Boolean;    
  end;

var
  dmEstoque: TdmEstoque;

implementation

uses uDMDados, uFuncoes, Math, udmCadAuxiliar, DateUtils;

{$R *.dfm}

{ TdmEstoque }

procedure TdmEstoque.AbrirTabelaTransf;
begin
    cdsItensTransf.Close;
    cdsItensTransf.Open;
    cdsItensTransf.EmptyDataSet;
end;

function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
  aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
  aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
  fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;
begin
     result := false;
     //
     try
         With cdsEstoque do
          begin
                Close;
                Params[0].AsInteger := iCODLOJA;
                Params[1].AsString  := aPRODUTO;
                Open;
                //
                if (IsEmpty) Then
                 begin
                      Append;
                      FieldByName('EST_CODLOJA').AsInteger := iCODLOJA;
                      FieldByName('EST_PRODUTO').AsString  := aPRODUTO;
                 End
                Else
                    Edit;
                //
                FieldByName('EST_UNIDADE').AsString := aUNIDADE;
                FieldByName('EST_TAMANHO').AsString := aTAMANHO;
                If not uFuncoes.Empty(aDTENTRADA) Then
                   FieldByName('EST_DTENTRADA').AsDateTime := Strtodate(aDTENTRADA);
                If not uFuncoes.Empty(aDTSAIDA) Then
                    FieldByName('EST_DTSAIDA').AsDateTime  := StrToDate(aDTSAIDA);
                If (fQUANTENTRADA > 0) Then
                   FieldByName('EST_QUANTENTRADA').AsFloat    := fQUANTENTRADA;
                If (fQUANTSAIDA > 0) Then
                   FieldByName('EST_QUANTSAIDA').AsFloat      := fQUANTSAIDA;
                If (fCUSTOANTERIOR > 0) Then
                   FieldByName('EST_CUSTOANTERIOR').AsFloat   := fCUSTOANTERIOR;
                If (fCUSTOMEDIO > 0) Then
                   FieldByName('EST_CUSTOMEDIO').AsFloat      := fCUSTOMEDIO;
                If (fMAIORCUSTO > 0) Then
                   FieldByName('EST_MAIORCUSTO').AsFloat      := fMAIORCUSTO;
                // Entrada
                if (aTipo = 'E') or (aTipo =  'TE') Then
                    FieldByName('EST_QUANTIDADE').AsFloat := FieldByName('EST_QUANTIDADE').AsFloat + fQUANTIDADE;
                // Sa�da
                if (aTipo = 'S') or (aTipo = 'V') or (aTipo = 'TS') Then
                    FieldByName('EST_QUANTIDADE').AsFloat := FieldByName('EST_QUANTIDADE').AsFloat - fQUANTIDADE;
                //
                If (fMINIMO > 0) Then
                   FieldByName('EST_MINIMO').AsFloat  := fMINIMO;
                If not uFuncoes.Empty(aULTREAJUST) Then
                   FieldByName('ULTREAJUST').AsDateTime := StrtoDate(aULTREAJUST);
                // Grava registro
                ApplyUpdates(0);
          End;
         Result := true;
     Except
           DeleteNotaEntrada(1);
           raise Exception.Create('Erro ao adicionar produto no estoque.');
     End;
end;

function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
  iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
  aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
  fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;
begin
     Result := false;
     //
     try
         With cdsHistorico do
          begin
               Close;
               Params[0].AsInteger := iSequencia;
               Params[1].AsInteger := iLOJA;
               Params[2].AsInteger := iITEM;
               open;
               //
               If (IsEmpty) Then
                begin
                     Append;
                     FieldByName('HIS_SEQUENCIA').AsInteger := iSequencia;
                     FieldByName('HIS_LOJA').AsInteger      := iLOJA;
                     FieldByName('HIS_ITEM').AsInteger      := iITEM;
                     FieldByName('HIS_PRODUTO').AsString    := aPRODUTO;
                     FieldByName('HIS_UNIDADE').AsString    := aUNIDADE;
                     FieldByName('HIS_TAMANHO').AsString    := aTAMANHO;
                     FieldByName('HIS_DATA').AsDateTime     := aDATA;
                     FieldByName('HIS_HORA').AsString       := aHORA;
                     FieldByName('HIS_TIPO').AsString       := aTIPO;
                     If (iDOCUMENTO > 0) Then
                        FieldByName('HIS_DOCUMENTO').AsInteger := iDOCUMENTO;
                     FieldByName('HIS_ANTERIOR').AsFloat    := fANTERIOR;
                     FieldByName('HIS_MOVIMENTO').AsFloat   := fMOVIMENTO;
                     FieldByName('HIS_ATUAL').AsFloat       := fATUAL;
                     FieldByName('HIS_MOTIVO').AsInteger    := iMOTIVO;
                     FieldByName('HIS_VLCUSTO').AsFloat     := fVLCUSTO;
                     FieldByName('HIS_VLCOMPRA').AsFloat    := fVLCOMPRA;
                     FieldByName('HIS_VLVENDA').AsFloat     := fVLVENDA;
                     FieldByName('HIS_CODIGOBAIXA').AsString  := aCODIGOBAIXA;
                     If (iVENDEDOR > 0) Then
                        FieldByName('HIS_VENDEDOR').AsInteger  := iVENDEDOR;
                     FieldByName('HIS_USUARIO').AsInteger   := iUSUARIO;
                     // Grava registro
                     ApplyUpdates(0);
                End;
          End;
         Result := true;
     Except
          raise Exception.Create('Erro ao adicionar historico do produto.');
     End;
end;

function TdmEstoque.AdicionarItemTransf(aCodigo, aDescricao, aTamanho,
  aUnidade: String; fQuantidade, fVenda, fCusto, fCompra: Double): Boolean;
begin
     With cdsItensTransf do
      begin
           If not (Active) Then
             Open;
           //  
           Append;
           //
           FieldByname('PRT_CODIGO').AsString    := aCodigo;
           FieldByname('PRT_DESCRICAO').AsString := aDescricao;
           FieldByname('PRT_TAMANHO').AsString   := aTamanho;
           FieldByname('PRT_UNIDADE').AsString   := aUnidade;
           FieldByname('PRT_QUANTIDADE').AsFloat := fQuantidade;
           FieldByname('PRT_VLCUSTO').AsFloat    := fCusto;
           FieldByname('PRT_VLCOMPRA').AsFloat   := fCompra;
           FieldByname('PRT_VLVENDA').AsFloat    := fVenda;
           //
           Post;
      End;
end;

function TdmEstoque.DeleteNotaEntrada(iCodigo: Integer): Boolean;
Var
    qryBanco : TZQuery;
    texto : String;
begin
     Result := False;
     texto  := 'Delete from "ENTRADAS" where ("ENT_NUMERO" = :pNUMERO)';
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := dmDados.ZConexao;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNUMERO').AsInteger := iCodigo;
           ExecSQL();
           //
           texto  := 'Delete from "ENTRADAS_PRODUTOS" where ("ENP_NUMERO" = :pNUMERO)';
           //
           SQL.Clear;
           Close;
           SQL.Add(texto);
           Params.ParamByName('pNUMERO').AsInteger := iCodigo;
           ExecSQL();
           //
           Result := true;
      Finally
         Free;
      End;
end;

function TdmEstoque.GetProdutoEstoque(iLoja: Integer;
  aProduto: String): Boolean;
begin
     Result := False;
     //
     With cdsEstoque do
      begin
           Close;
           Params[0].AsInteger := iLoja;
           Params[1].AsString  := aProduto;
           Open;
           //
           If not (IsEmpty) Then
             Result := True;
      End;
end;

procedure TdmEstoque.cdsItensTransfCalcFields(DataSet: TDataSet);
begin
     cdsItensTransfPRT_SUBTOTAL.AsCurrency :=
         cdsItensTransfPRT_QUANTIDADE.AsCurrency *
         cdsItensTransfPRT_VLCOMPRA.AsCurrency;
end;

function TdmEstoque.AddTransferencia(iNRTRANSFERENCIA, iSequencia, iLOJAORIGEM,
  iLOJADESTINO, iENTREGADOR, iUSUARIO: Integer; aDATA: TDatetime; aHORA,
  aSITUACAO: String; aCDS : TClientDataSet): Integer;
Var
   fQuant, fQuantAnterior, fQuantAtual : Double;
   fValorCompra, fValorCusto, fValorVenda : Double;
   aProduto, aUnidade, aTamanho : String;
   iItem : Integer;
begin
     Result := 0;
     //
     With cdsTransferencia do
      begin
           Close;
           Params[0].AsInteger := iNRTRANSFERENCIA;
           Open;
           //
           If (IsEmpty) Then
            begin
                 Append;
                 FieldByName('TRA_NRTRANSFERENCIA').AsInteger := iNRTRANSFERENCIA;
                 FieldByName('TRA_LOJAORIGEM').AsInteger      := iLOJAORIGEM;
                 FieldByName('TRA_LOJADESTINO').AsInteger     := iLOJADESTINO;
                 FieldByName('TRA_ENTREGADOR').AsInteger      := iENTREGADOR;
                 FieldByName('TRA_DATA').AsDateTime           := aDATA;
                 FieldByName('TRA_HORA').AsString             := aHORA;
                 FieldByName('TRA_SITUACAO').AsString         := aSITUACAO;
                 FieldByName('TRA_USUARIO').AsInteger         := iUSUARIO;
                 //
                 ApplyUpdates(0);
                 // Itens da Tranferecia
                 With aCDS do
                  begin
                       DisableControls;
                       First;
                       iItem := 1;
                       While not (Eof) do
                        begin
                             aProduto := FieldByName('PRT_CODIGO').AsString;
                             fQuant   := FieldByName('PRT_QUANTIDADE').AsFloat;
                             // sa�da da loja de origem
                             // Estoque
                             fQuantAnterior := 0;
                             fQuantAtual    := 0;
                             //
                             uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                             //
                             fValorCusto := 0;
                             fValorVenda := 0;
                             fValorCompra := 0;
                             //
                             if not (dmDados.cdsProduto.IsEmpty) Then
                             begin
                                  fValorCompra := dmDados.cdsProdutoPRO_VLCOMPRA.AsFloat;
                                  fValorCusto := dmDados.cdsProdutoPRO_VLCUSTO.AsFloat;
                                  fValorVenda := dmDados.cdsProdutoPRO_VLVENDA.AsFloat;
                                  aUnidade    := dmDados.cdsProdutoUNI_CODIGO.AsString;
                                  aTamanho    := 'UN';
                             End;
                             //
                             With dmEstoque.cdsEstoque do
                               begin
                                    Close;
                                    Params[0].AsInteger := iLOJAORIGEM;
                                    Params[1].AsString  := aProduto;
                                    Open;
                                    //
                                    If not (IsEmpty) Then
                                      begin
                                           fQuantAnterior := FieldByName('EST_QUANTIDADE').AsFloat;
                                           fQuantAtual    := FieldByName('EST_QUANTIDADE').AsFloat - fQuant;
                                      End;
                                      //
                                      close;
                               End;  // with  dmEstoque.cdsEstoque
                               //
                               { function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
                                      aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
                                      aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
                                      fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;}
                               //
                               dmEstoque.AdicionarEstoqueProduto(iLOJAORIGEM, 'S', aProduto, aUnidade, aTamanho,
                                      '', DatetoStr(aDATA), '', 0, fQuant, 0, 0, 0, fQuant, 0);
                               //  Historico
                               {function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
                                      iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
                                      aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
                                      fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;}
                               dmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJAORIGEM, iItem, iNRTRANSFERENCIA,
                                       1, 0, iUsuario, aProduto, aUnidade, aTamanho,
                                       aHORA, 'TS', aProduto, aDATA, fQuantAnterior, fQuant, fQuantAtual,
                                       fValorCusto, fValorCompra, fValorVenda);
                               // Entrada na outra loja  destino
                             // Estoque
                             fQuantAnterior := 0;
                             fQuantAtual    := 0;
                             //
                             uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                             //
                             fValorCusto := 0;
                             fValorVenda := 0;
                             fValorCompra := 0;
                             //
                             if not (dmDados.cdsProduto.IsEmpty) Then
                             begin
                                  fValorCompra := dmDados.cdsProdutoPRO_VLCOMPRA.AsFloat;
                                  fValorCusto := dmDados.cdsProdutoPRO_VLCUSTO.AsFloat;
                                  fValorVenda := dmDados.cdsProdutoPRO_VLVENDA.AsFloat;
                                  aUnidade    := dmDados.cdsProdutoUNI_CODIGO.AsString;
                                  aTamanho    := 'UN';
                             End;
                             //
                             With dmEstoque.cdsEstoque do
                               begin
                                    Close;
                                    Params[0].AsInteger := iLOJADESTINO;
                                    Params[1].AsString  := aProduto;
                                    Open;
                                    //
                                    If not (IsEmpty) Then
                                      begin
                                           fQuantAnterior := FieldByName('EST_QUANTIDADE').AsFloat;
                                           fQuantAtual    := FieldByName('EST_QUANTIDADE').AsFloat + fQuant;
                                      End
                                      Else
                                          fQuantAtual := fQuant;
                                      //
                                      close;
                               End;  // with  dmEstoque.cdsEstoque
                               //
                               { function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
                                      aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
                                      aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
                                      fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;}
                               //
                               dmEstoque.AdicionarEstoqueProduto(iLOJADESTINO, 'E', aProduto, aUnidade, aTamanho,
                                      DatetoStr(aDATA), '', '', fQuant, 0, 0, 0, 0, fQuant, 0);
                               //  Historico
                               {function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
                                      iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
                                      aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
                                      fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;}
                               dmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJADESTINO, iItem, iNRTRANSFERENCIA,
                                       1, 0, iUsuario, aProduto, aUnidade, aTamanho,
                                       aHORA, 'TE', aProduto, aDATA, fQuantAnterior, fQuant, fQuantAtual,
                                       fValorCusto, fValorCompra, fValorVenda);
                             //
                             iItem := iItem + 1;
                             Next;
                        End;
                       EnableControls;
                  End;
                 //
                 Result := iNRTRANSFERENCIA;
            End;
            //
      End;
end;

function TdmEstoque.IncluirItem(aItem, aProduto, aDescricao, aUnidade,
  aLote, aCodBaixa: String; fQuantidade, fValorUnt, fValorCompra,
  fValorCusto, fValorDesc, fValorAcrescimo, fValorIPI: Double; iVendedor,
  iCor: Integer; aNRLOTE : String): Boolean;
begin
     Result := False;
     try
         if not (cdsItensVendas.Active) Then
            cdsItensVendas.Open;
         //
         With cdsItensVendas do
          begin
                Append;
                FieldByName('ITE_NRITEN').AsString := uFuncoes.StrZero(aItem,3);
                FieldByName('ITE_CDITEN').AsString := aProduto;
                FieldByName('ITE_NMDESC').AsString := aDescricao;
                FieldByName('ITE_CDUNID').AsString := aUnidade;
                FieldByName('ITE_QTITEN').AsFloat  := fQuantidade;
                FieldByName('ITE_VLUNIT').AsFloat  := fValorUnt;
                FieldByName('ITE_VLCOMP').AsFloat  := fValorCompra;
                FieldByName('ITE_VLCUST').AsFloat  := fValorCusto;
                FieldByName('ITE_NRLOTE').AsString := aLote;
                If not uFuncoes.Empty(aCodBaixa) Then
                   FieldByName('ITE_CDBAIX').AsString := aCodBaixa;
                If (fValorDesc > 0) Then
                   FieldByName('ITE_VLDESC').AsFloat  := fValorDesc
                Else
                   FieldByName('ITE_VLDESC').AsFloat  := 0;
                FieldByName('ITE_VLACRE').AsFloat  := fValorAcrescimo;
                If (iVendedor > 0) Then
                    FieldByName('ITE_VENDEDOR').AsInteger := iVendedor;
                If (iCor > 0) Then
                   FieldByName('ITE_CODCOR').AsInteger := iCor;
                If (fValorIPI > 0) Then
                   FieldByName('ITE_VALIPI').AsFloat := fValorIPI;
                FieldByName('ITE_NRLOTE').AsString := aNRLOTE;
                //
                Post;
                //
                Result := true;
          End;
     Except

     End;
end;

procedure TdmEstoque.cdsItensVendasCalcFields(DataSet: TDataSet);
begin
     If (cdsItensVendasITE_VLUNIT.AsCurrency > 0) and (cdsItensVendasITE_QTITEN.AsCurrency > 0) Then
        cdsItensVendasITE_VLSUBT.AsCurrency :=
             cdsItensVendasITE_VLUNIT.AsCurrency*cdsItensVendasITE_QTITEN.AsCurrency;
end;

Function TdmEstoque.CalcularTotalVenda(aCDS : TClientDataSet) : Double;
Var
   fValor : Double;
   fSubTotal, fAcrescimo, fDesconto : Double;
begin
     fValor := 0;
     //
     With dmEstoque.cdsItensVendas do
      begin
           DisableControls;
           First;
           while not (Eof) do
            begin
                 If (FieldByName('ITE_FLCANC').AsString <> 'C') Then
                  begin
                       fSubTotal  := FieldByName('ITE_VLSUBT').AsFloat;
                       fAcrescimo := FieldByName('ITE_VLACRE').AsFloat;
                       fDesconto  := FieldByName('ITE_VLDESC').AsFloat;
                       //
                       fValor := fValor + ((fSubTotal + fAcrescimo) - fDesconto);
                  End;
                 //
                 next;
            End;
           EnableControls;
      End;
      //
      Result := fValor;
end;

procedure TdmEstoque.CRIAR_PARCELAS(fValorTotal: Double;
  iQuantidade: Integer);
Var
    Cont : integer;
    M_TOMODA, M_VLPARC, M_VLDIFE, W_ULTIPC : Real;
begin
     M_VLPARC := 0;
     M_VLDIFE := 0;
     W_ULTIPC := 0;
     //
     If (cdsParcelas.Active = False) Then
         cdsParcelas.Open;
     //
     M_TOMODA := fValorTotal;
     //
     M_VLPARC := uFuncoes.Arredondar(M_TOMODA/iQuantidade,2);
     //
     M_VLDIFE := M_TOMODA-(M_VLPARC * iQuantidade);
     //
     If (M_VLDIFE < M_TOMODA) Then
       W_ULTIPC := M_VLPARC+M_VLDIFE;
     //
     cdsParcelas.EmptyDataSet;
     //
     cdsParcelas.DisableControls;
     For Cont := 1 to iQuantidade do
     Begin
          // Incluir
          cdsParcelas.Append;
          cdsParcelas.FieldByName('PAR_NRPARCELA').AsInteger   := Cont;
          cdsParcelas.FieldByName('PAR_VENCIMENTO').AsDateTime := IncMonth(Date,Cont);
          cdsParcelas.FieldByName('PAR_VALOR').AsCurrency      := M_VLPARC;
          //
          If (iQuantidade <> Cont) Then
              cdsParcelas.FieldByName('PAR_VALOR').AsCurrency      := M_VLPARC
          Else
              cdsParcelas.FieldByName('PAR_VALOR').AsCurrency      := W_ULTIPC;
           //
          cdsParcelas.Post;
     End;
     //
     cdsParcelas.First;
     cdsParcelas.EnableControls;
end;

function TdmEstoque.AddModalidadeVenda(iItem, iCodigo: Integer;
  fValor: Double): Boolean;
begin
     Result := False;
     //
     uFuncoes.FilterCDS(dmCadAuxiliar.cdsModalidade, fsInteger, InttoStr(iCodigo));
     //
     if not (dmCadAuxiliar.cdsModalidade.IsEmpty) Then
       begin
            If not (cdsModalidades.Active) Then
            begin
                     cdsModalidades.Open;
                     cdsModalidades.EmptyDataSet;
            End;
               cdsModalidades.DisableControls;
               cdsModalidades.Append;
               cdsModalidadesCDS_ITEM.AsInteger   := iItem;
               cdsModalidadesCDS_CODIGO.AsInteger := iCodigo;
               cdsModalidadesCDS_NOME.AsString    := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_NOME').AsString;
               cdsModalidadesCDS_ABREVIACAO.AsString := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_ABREVIACAO').AsString;
               If (dmCadAuxiliar.cdsModalidade.FieldByName('MOD_NRPARCELA').AsInteger > 0) Then
                   cdsModalidadesCDS_NRPARCLA.AsInteger  := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_NRPARCELA').AsInteger
               Else
                   cdsModalidadesCDS_NRPARCLA.AsInteger  := 0;
               cdsModalidadesCDS_FLFIXA.AsString  := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_FLFIXA').AsString;
               cdsModalidadesCDS_AVISTA.AsString  := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_AVISTA').AsString;
               cdsModalidadesCDS_FLTEF.AsString   := dmCadAuxiliar.cdsModalidade.FieldByName('MOD_FLXTEF').AsString;
               cdsModalidadesCDS_VLRECEBIDO.AsFloat := fValor;
               //
               cdsModalidades.Post;
               cdsModalidades.EnableControls;
               //
               Result := True;
       End;
end;

function TdmEstoque.ExcluirModalidadeVenda(iCodigo: Integer): Boolean;
begin
     Result := False;
     With cdsModalidades do
      begin
           DisableControls;
           Locate('CDS_ITEM', iCodigo,[]);
           Delete;
           EnableControls;
      End;
end;

function TdmEstoque.GetVerificaModalidadeCartao(iCodigo: Integer): Boolean;
var qraux : TZquery;
    texto : string;
begin
    Result := False;
    texto := 'Select "MOD_CODIGO", "MOD_FLFIXA" from "MODALIDADES" where ("MOD_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao;
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

procedure TdmEstoque.dspVendaItensGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'VENDAS_ITENS';
end;

procedure TdmEstoque.dspVendaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'VENDAS';
end;

function TdmEstoque.AdicionarVenda(iPEDIDO, iCUPOM, iLOJA, iSEQUENCIA,
  iCLIENTE, iVENDEDOR: Integer; aDATAVENDA: TDateTime; aHORAVENDA, aSituacao,
  aTIPO_FRETE: String; fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
  fTROCO, fPERC_FRETE, fTAXA_SERVICO: Double; aENDERECO, aNUMERO,
  aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone,
  aNomeCliente: String; iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
  iMODALIDADE_PEDIDO: Integer; aOBSERVACAO, aOBS1, aOBS2,
  aNRMESA: String): Integer;
begin
     result := 0;
     //
     try
         With cdsVenda do
          begin
               Close;
               Params[0].AsInteger := iPEDIDO;
               Open;
               //    se vazio
               if (IsEmpty) Then
                begin
                     Append;
                     FieldByName('MOV_PEDIDO').AsInteger := iPEDIDO;
                     FieldByName('MOV_LOJA').AsInteger   := iLOJA;
                     FieldByName('MOV_SEQUENCIA').AsInteger := iSEQUENCIA;
                     If (iCUPOM > 0) Then
                       FieldByName('MOV_CUPOM').AsInteger  := iCUPOM;
                     If (iCLIENTE > 0) Then
                       FieldByName('MOV_CLIENTE').AsInteger  := iCLIENTE;
                     FieldByName('MOV_DATAVENDA').AsDateTime := aDATAVENDA;
                     FieldByName('MOV_HORAVENDA').AsString   := aHORAVENDA;
                     If (iVENDEDOR > 0) Then
                         FieldByName('MOV_VENDEDOR').AsInteger   := iVENDEDOR;
                     FieldByName('MOV_VALOR').AsFloat        := fVALOR;
                     FieldByName('MOV_ENTRADA').AsFloat      := fENTRADA;
                     FieldByName('MOV_DESCONTO').AsFloat     := fDESCONTO;
                     FieldByName('MOV_ACRESCIMO').AsFloat    := fACRESCIMO;
                     // FieldByName('MOV_DEVOLUSAO: TFloatField;
                     FieldByName('MOV_TROCO').AsFloat        := fTROCO;
                     FieldByName('MOV_SITUACAO').AsString    := aSituacao;
                     FieldByName('DOM_ENDERECO').AsString    := aENDERECO;
                     FieldByName('DOM_NUMERO').AsString      := aNUMERO;
                     FieldByName('DOM_COMPLEMENTO').AsString := aCOMPLEMENTO;
                     FieldByName('DOM_BAIRRO').AsString      := aBAIRRO;
                     FieldByName('DOM_CIDADE').AsString      := aCidade;
                     FieldByName('DOM_REFERE').AsString      := aReferencia;
                     FieldByName('DOM_NRFONE').AsString      := aTelefone;
                     FieldByName('MOV_NOMECLIENTE').AsString := aNomeCliente;
                     FieldByName('MOV_TABELA').AsInteger     := iTABELA;
                     If not uFuncoes.Empty(aTIPO_FRETE) Then
                        FieldByName('MOV_TIPO_FRETE').AsString  := aTIPO_FRETE;
                     FieldByName('MOV_PERC_FRETE').AsFloat   := fPERC_FRETE;
                     If (iIDTRANSPORTADORA > 0) Then
                        FieldByName('MOV_IDTRANSPORTADORA').AsInteger := iIDTRANSPORTADORA;
                     If (iTABELA_PLANO > 0) Then
                        FieldByName('MOV_TABELA_PLANO').AsInteger := iTABELA_PLANO;
                     If not uFuncoes.Empty(aOBSERVACAO) Then
                        FieldByName('MOV_OBSERVACAO').AsString := aOBSERVACAO;
                     If (iMODALIDADE_PEDIDO > 0) then
                        FieldByName('MOV_MODALIDADE_PEDIDO').AsInteger := iMODALIDADE_PEDIDO;
                     If not uFuncoes.Empty(aOBS1) Then
                         FieldByName('MOV_OBS1').AsString    := aOBS1;
                     If not uFuncoes.Empty(aOBS2) Then
                         FieldByName('MOV_OBS2').AsString    := aOBS2;
                     If not uFuncoes.Empty(aNRMESA) Then
                         FieldByName('MOV_NRMESA').AsString  := aNRMESA;
                     FieldByName('MOV_TAXA_SERVICO').asfloat := fTAXA_SERVICO;
                     // Grava
                     Post;
                     ApplyUpdates(0);
                     //
                     Result := iPEDIDO;
                End;
          End;
     Except

     End;
end;

function TdmEstoque.AdicionarItemVenda(iPEDIDO, iNRITEM,
  iCDVENDEDOR, iCor: Integer; aProduto, aUNIDADE, aARMAZENAMENTO, aSERIE: String;
  fQUANTIDADE, fValorUnitario, fDesconto, fVCusto, fCompra,
  fValorIPI: Double): Boolean;
begin
     Result := False;
     //
     try
           with cdsVendaItens do
            begin
                 Close;
                 Params[0].AsInteger := iPEDIDO;
                 Params[1].AsInteger := iNRITEM;
                 Params[2].AsString  := aProduto;
                 Open;
                 //
                 if (IsEmpty) Then
                  begin
                       Append;
                       FieldByName('MOP_PEDIDO').AsInteger := iPEDIDO;
                       FieldByName('MOP_NRITEM').AsInteger := iNRITEM;
                       FieldByName('MOP_PRODUTO').AsString := aProduto;
                       FieldByName('MOP_QUANTIDADE').AsFloat := fQUANTIDADE;
                       FieldByName('MOP_UNIDADE').AsString := aUNIDADE;
                       FieldByName('MOP_ARMAZENAMENTO').AsString := aARMAZENAMENTO;
                       FieldByName('MOP_VALOR').AsFloat    := fValorUnitario;
                       If (fDesconto > 0) Then
                          FieldByName('MOP_DESCONTO').AsFloat := fDesconto;
                       If not uFuncoes.Empty(aSERIE) Then
                          FieldByName('MOP_SERIE').AsString  := aSERIE;
                       FieldByName('MOP_CUSTO').AsFloat    := fVCusto;
                       FieldByName('MOP_COMPRA').AsFloat   := fCompra;
                       If (iCor > 0) Then
                          FieldByName('MOP_CODCOR').AsFloat := iCor;
                       FieldByName('MOP_VALIPI').AsFloat   := fValorIPI;
                       If (iCDVENDEDOR > 0) Then
                          FieldByName('MOP_CDVENDEDOR').AsInteger := iCDVENDEDOR;
                       // Grava item da venda
                       Post;
                       ApplyUpdates(0);
                       //
                       Result := True;
                  End;
            End;
     Except

     End;
end;

function TdmEstoque.AbrirRegistroCaixa(iNUMERO, iLOJA, iRGINICIAL,
  iCAIXA: integer; aDTABERTURA: TDatetime; aHOABERTURA,
  aSITUACAO: String): Boolean;
begin
     result := false;
     try
         with cdsCaixa do
          begin
               Close;
               Params[0].AsInteger := iNUMERO;
               Params[1].AsInteger := iLOJA;
               Open;
               //
               if (IsEmpty) Then
                begin
                     Append;
                     //
                     FieldByName('CAI_NUMERO').AsInteger := iNUMERO;
                     FieldByName('CAI_LOJA').AsInteger   := iLOJA;
                     FieldByName('CAI_DTABERTURA').AsDateTime := aDTABERTURA;
                     FieldByName('CAI_HOABERTURA').AsString := aHOABERTURA;
                     FieldByName('CAI_RGINICIAL').AsInteger := iRGINICIAL;
                     FieldByName('CAI_CAIXA').AsInteger     := iCAIXA;
                     FieldByName('CAI_SITUACAO').AsString   := aSITUACAO;
                     //
                     ApplyUpdates(0);
                     //
                     Result := true;
                End;
          End;
     Except

     End;
end;

function TdmEstoque.FecharRegistroCaixa(iNUMERO, iLOJA, iRGFINAL,
  iCAIXA: integer; aDTFECHAMENTO: TDatetime; aHOFECHAMENTO,
  aSITUACAO: String): Boolean;
begin
     result := false;
     try
         with cdsCaixa do
          begin
               Close;
               Params[0].AsInteger := iNUMERO;
               Params[1].AsInteger := iLOJA;
               Open;
               //
               if not (IsEmpty) Then
                begin
                     Edit;
                     //
                     FieldByName('CAI_DTFECHAMENTO').AsDateTime := aDTFECHAMENTO;
                     FieldByName('CAI_HOFECHAMENTO').AsString   := aHOFECHAMENTO;
                     FieldByName('CAI_RGFINAL').AsInteger       := iRGFINAL;
                     FieldByName('CAI_SITUACAO').AsString       := aSITUACAO;
                     //
                     ApplyUpdates(0);
                     //
                     Result := true;
                End;
          End;
     Except

     End;
end;

function TdmEstoque.GetVerificaSituacaoCaixa(iCaixa: Integer;
  aSituacao: String): Boolean;
var qraux : TZquery;
    texto : string;
begin
    Result := False;
    texto := 'Select "CAI_NUMERO", "CAI_LOJA", "CAI_CAIXA", "CAI_SITUACAO" from "CAIXA" where ("CAI_CAIXA" = :pCAIXA) and ("CAI_SITUACAO" = :pSITUACAO)';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao ;
       sql.Add(texto);
       Params.ParamByName('pCAIXA').AsInteger   := iCaixa;
       Params.ParamByName('pSITUACAO').AsString := aSituacao;
       Open;
       //
       if not (IsEmpty) Then
           Result := True;
     finally
         free;
     end;
end;

function TdmEstoque.AdicionarMovCaixa(iSEQUENCIA, iLOJA, iVenda,
  iMODALIDADE, iCaixa, iNatureza, iFuncionario: Integer; aTIPOMOV,
  aHRMOVIMENTO, aOBSEVACAO, aSITUACAO: String; aDTMOVIMENTO: TDateTime;
  fVLMODALIDADE, fTOVENDA, fVLTROCO: Double): Boolean;
begin
     Result := False;
     try
        With cdsMovCaixa do
        begin
             Close;
             Params.ParamByName('pSEQUENCIA').AsInteger := iSEQUENCIA;
             Params.ParamByName('pLOJA').AsInteger      := iLOJA;
             Params.ParamByName('pCDMODA').AsInteger    := iMODALIDADE;
             open;
             // fsInteger, inttostr(iSEQUENCIA));
        End;
        //
        if (cdsMovCaixa.IsEmpty) Then
         begin
             With cdsMovCaixa do
              begin
                   Append;
                   FieldByName('MCA_SEQUENCIA').AsInteger := iSEQUENCIA;
                   FieldByName('MCA_LOJA').AsInteger      := iLOJA;
                   If (iVenda > 0) Then
                      FieldByName('MCA_VENDA').AsInteger  := iVenda;
                   FieldByName('MCA_TIPOMOV').AsString    := aTIPOMOV;
                   FieldByName('MCA_DTMOVIMENTO').AsDateTime := aDTMOVIMENTO;
                   FieldByName('MCA_HRMOVIMENTO').AsString := aHRMOVIMENTO;
                   FieldByName('MCA_MODALIDADE').AsInteger := iMODALIDADE;
                   FieldByName('MCA_VLMODALIDADE').AsFloat := fVLMODALIDADE;
                   FieldByName('MCA_TOVENDA').AsFloat      := fTOVENDA;
                   FieldByName('MCA_VLTROCO').AsFloat      := fVLTROCO;
                   FieldByName('MCA_OBSEVACAO').AsString   := aOBSEVACAO;
                   FieldByName('MCA_SITUACAO').AsString    := aSITUACAO;
                   FieldByName('MCA_CAIXA').AsInteger      := iCaixa;
                   FieldByName('MCA_NATUREZA').AsInteger   := iNatureza;
                   FieldByName('MCA_FUNCIONARIO').AsInteger := iFuncionario;
                   //
                   ApplyUpdates(0);
              End;
         End;
     Except

     End;
end;

function TdmEstoque.GetLojaCaixaAberto(iCaixa: Integer;
  aSituacao: String): Integer;
var qraux : TZquery;
    texto : string;
begin
    Result := 0;
    texto := 'Select "CAI_NUMERO", "CAI_LOJA", "CAI_CAIXA", "CAI_SITUACAO" from "CAIXA" where ("CAI_CAIXA" = :pCAIXA) and ("CAI_SITUACAO" = :pSITUACAO)';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao ;
       sql.Add(texto);
       Params.ParamByName('pCAIXA').AsInteger   := iCaixa;
       Params.ParamByName('pSITUACAO').AsString := aSituacao;
       Open;
       //
       if not (IsEmpty) Then
           Result := FieldBYname('CAI_LOJA').AsInteger;
     finally
         free;
     end;
end;

function TdmEstoque.AtualizarLoteProduto(aProduto, aLote, aTipo, aDataVenc : String;
  fQuant: Double): Boolean;
begin
     Result := false;
     //
     With cdsLotes do
      begin
           Close;
           Params.ParamByName('pPROCODIGO').AsString := aProduto;
           Params.ParamByName('pNRLOTE').AsString    := aLote;
           Open;
           //
           If (IsEmpty) Then
            begin
                 Append;
                 FieldByName('LOT_PROCODIGO').AsString  := aProduto;
                 FieldByName('LOT_NRLOTE').AsString     := aLote;
                 FieldByName('LOT_DTVENCIMENTO').AsDateTime := StrtoDate(aDataVenc);
            End
           Else
                 Edit;
           //
           If (aTipo = 'E') Then   // se for entrada
               FieldByName('LOT_QUANTIDADE').AsFloat  := FieldByName('LOT_QUANTIDADE').AsFloat + fQuant
           Else                    // se n�o sa�da
               FieldByName('LOT_QUANTIDADE').AsFloat  := FieldByName('LOT_QUANTIDADE').AsFloat - fQuant;
           //
           ApplyUpdates(0);
           Result := True;
      End;
end;

end.

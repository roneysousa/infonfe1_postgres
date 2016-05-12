object dmEstoque: TdmEstoque
  OldCreateOrder = False
  Left = 193
  Top = 123
  Height = 430
  Width = 600
  object ZQryEstoque: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "ESTOQUE" Where ("EST_CODLOJA" = :pLOJA) '
      'and ("EST_PRODUTO" = :pPRODUTO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    object ZQryEstoqueEST_CODLOJA: TIntegerField
      FieldName = 'EST_CODLOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryEstoqueEST_PRODUTO: TStringField
      FieldName = 'EST_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object ZQryEstoqueEST_UNIDADE: TStringField
      FieldName = 'EST_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryEstoqueEST_TAMANHO: TStringField
      FieldName = 'EST_TAMANHO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryEstoqueEST_DTENTRADA: TDateField
      FieldName = 'EST_DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_QUANTENTRADA: TFloatField
      FieldName = 'EST_QUANTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_DTSAIDA: TDateField
      FieldName = 'EST_DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_QUANTSAIDA: TFloatField
      FieldName = 'EST_QUANTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_CUSTOANTERIOR: TFloatField
      FieldName = 'EST_CUSTOANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_CUSTOMEDIO: TFloatField
      FieldName = 'EST_CUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_MAIORCUSTO: TFloatField
      FieldName = 'EST_MAIORCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_QUANTIDADE: TFloatField
      FieldName = 'EST_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueEST_MINIMO: TFloatField
      FieldName = 'EST_MINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEstoqueULTREAJUST: TDateField
      FieldName = 'ULTREAJUST'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZQryHistorico: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "HISTORICO" Where ("HIS_SEQUENCIA" = :pSEQUENCIA) '
      'and ("HIS_LOJA" = :pLOJA) and ("HIS_ITEM" = :pITEM)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pITEM'
        ParamType = ptInput
      end>
    Left = 24
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pITEM'
        ParamType = ptInput
      end>
    object ZQryHistoricoHIS_SEQUENCIA: TIntegerField
      FieldName = 'HIS_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryHistoricoHIS_LOJA: TIntegerField
      FieldName = 'HIS_LOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryHistoricoHIS_ITEM: TIntegerField
      FieldName = 'HIS_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryHistoricoHIS_PRODUTO: TStringField
      FieldName = 'HIS_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 14
    end
    object ZQryHistoricoHIS_UNIDADE: TStringField
      FieldName = 'HIS_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryHistoricoHIS_TAMANHO: TStringField
      FieldName = 'HIS_TAMANHO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryHistoricoHIS_DATA: TDateField
      FieldName = 'HIS_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_HORA: TStringField
      FieldName = 'HIS_HORA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryHistoricoHIS_TIPO: TStringField
      FieldName = 'HIS_TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryHistoricoHIS_DOCUMENTO: TIntegerField
      FieldName = 'HIS_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_ANTERIOR: TFloatField
      FieldName = 'HIS_ANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_MOVIMENTO: TFloatField
      FieldName = 'HIS_MOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_ATUAL: TFloatField
      FieldName = 'HIS_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_MOTIVO: TIntegerField
      FieldName = 'HIS_MOTIVO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_VLCUSTO: TFloatField
      FieldName = 'HIS_VLCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_VLCOMPRA: TFloatField
      FieldName = 'HIS_VLCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_VLVENDA: TFloatField
      FieldName = 'HIS_VLVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_CODIGOBAIXA: TStringField
      FieldName = 'HIS_CODIGOBAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZQryHistoricoHIS_VENDEDOR: TIntegerField
      FieldName = 'HIS_VENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryHistoricoHIS_USUARIO: TIntegerField
      FieldName = 'HIS_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZQryEntrada: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "ENTRADAS" Where ("ENT_NUMERO" = :pNUMERO) ')
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    object ZQryEntradaENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryEntradaENT_LOJA: TIntegerField
      FieldName = 'ENT_LOJA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQryEntradaENT_FORNECEDOR: TIntegerField
      FieldName = 'ENT_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_TRANSPORTADORA: TIntegerField
      FieldName = 'ENT_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_DATAPEDIDO: TDateField
      FieldName = 'ENT_DATAPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_DATAENTRADA: TDateField
      FieldName = 'ENT_DATAENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_NATUREZAOPERACAO: TStringField
      FieldName = 'ENT_NATUREZAOPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryEntradaENT_DATAEMISSAONOTA: TDateField
      FieldName = 'ENT_DATAEMISSAONOTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_NUMERONOTA: TStringField
      FieldName = 'ENT_NUMERONOTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object ZQryEntradaENT_SERIENOTA: TStringField
      FieldName = 'ENT_SERIENOTA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryEntradaENT_VALORMERCADORIAS: TFloatField
      FieldName = 'ENT_VALORMERCADORIAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_TIPOFRETE: TStringField
      FieldName = 'ENT_TIPOFRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryEntradaENT_VALORFRETE: TFloatField
      FieldName = 'ENT_VALORFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_BASECALCULOICMS: TFloatField
      FieldName = 'ENT_BASECALCULOICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORICMS: TFloatField
      FieldName = 'ENT_VALORICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_BASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'ENT_BASECALCULOSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORSUBSTITUICAO: TFloatField
      FieldName = 'ENT_VALORSUBSTITUICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORIPI: TFloatField
      FieldName = 'ENT_VALORIPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORSEGURO: TFloatField
      FieldName = 'ENT_VALORSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_OUTRASPESPESAS: TFloatField
      FieldName = 'ENT_OUTRASPESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORDESCONTO: TFloatField
      FieldName = 'ENT_VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_VALORNOTA: TFloatField
      FieldName = 'ENT_VALORNOTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradaENT_SITUACAO: TStringField
      FieldName = 'ENT_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryEntradaENT_USUARIO: TIntegerField
      FieldName = 'ENT_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZQryEntradasItens: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select * from "ENTRADAS_PRODUTOS" Where ("ENP_NUMERO" = :pNUMERO' +
        ') '
      'and ("ENP_NRITEM" = :pNRITEM)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end>
    Left = 32
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end>
    object ZQryEntradasItensENP_NUMERO: TIntegerField
      FieldName = 'ENP_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryEntradasItensENP_NRITEM: TIntegerField
      FieldName = 'ENP_NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryEntradasItensENP_PRODUTO: TStringField
      FieldName = 'ENP_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 14
    end
    object ZQryEntradasItensENP_UNIDADE: TStringField
      FieldName = 'ENP_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryEntradasItensENP_TAMANHO: TStringField
      FieldName = 'ENP_TAMANHO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryEntradasItensENP_QUANTIDADE: TFloatField
      FieldName = 'ENP_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradasItensENP_VALOR: TFloatField
      FieldName = 'ENP_VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradasItensENP_IPI: TFloatField
      FieldName = 'ENP_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryEntradasItensENP_ICMS: TFloatField
      FieldName = 'ENP_ICMS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = ZQryEstoque
    Options = [poAllowCommandText]
    Left = 112
    Top = 16
  end
  object dspHistorico: TDataSetProvider
    DataSet = ZQryHistorico
    Options = [poAllowCommandText]
    Left = 112
    Top = 72
  end
  object dspEntrada: TDataSetProvider
    DataSet = ZQryEntrada
    Options = [poAllowCommandText]
    Left = 104
    Top = 128
  end
  object dspItensEntrada: TDataSetProvider
    DataSet = ZQryEntradasItens
    Options = [poAllowCommandText]
    Left = 120
    Top = 184
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEstoque'
    Left = 192
    Top = 16
    object cdsEstoqueEST_CODLOJA: TIntegerField
      FieldName = 'EST_CODLOJA'
      Required = True
    end
    object cdsEstoqueEST_PRODUTO: TStringField
      FieldName = 'EST_PRODUTO'
      Required = True
      Size = 14
    end
    object cdsEstoqueEST_UNIDADE: TStringField
      FieldName = 'EST_UNIDADE'
      Size = 2
    end
    object cdsEstoqueEST_TAMANHO: TStringField
      FieldName = 'EST_TAMANHO'
      Size = 2
    end
    object cdsEstoqueEST_DTENTRADA: TDateField
      FieldName = 'EST_DTENTRADA'
    end
    object cdsEstoqueEST_QUANTENTRADA: TFloatField
      FieldName = 'EST_QUANTENTRADA'
    end
    object cdsEstoqueEST_DTSAIDA: TDateField
      FieldName = 'EST_DTSAIDA'
    end
    object cdsEstoqueEST_QUANTSAIDA: TFloatField
      FieldName = 'EST_QUANTSAIDA'
    end
    object cdsEstoqueEST_CUSTOANTERIOR: TFloatField
      FieldName = 'EST_CUSTOANTERIOR'
    end
    object cdsEstoqueEST_CUSTOMEDIO: TFloatField
      FieldName = 'EST_CUSTOMEDIO'
    end
    object cdsEstoqueEST_MAIORCUSTO: TFloatField
      FieldName = 'EST_MAIORCUSTO'
    end
    object cdsEstoqueEST_QUANTIDADE: TFloatField
      FieldName = 'EST_QUANTIDADE'
    end
    object cdsEstoqueEST_MINIMO: TFloatField
      FieldName = 'EST_MINIMO'
    end
    object cdsEstoqueULTREAJUST: TDateField
      FieldName = 'ULTREAJUST'
    end
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pITEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspHistorico'
    Left = 192
    Top = 72
    object cdsHistoricoHIS_SEQUENCIA: TIntegerField
      FieldName = 'HIS_SEQUENCIA'
      Required = True
    end
    object cdsHistoricoHIS_LOJA: TIntegerField
      FieldName = 'HIS_LOJA'
      Required = True
    end
    object cdsHistoricoHIS_ITEM: TIntegerField
      FieldName = 'HIS_ITEM'
      Required = True
    end
    object cdsHistoricoHIS_PRODUTO: TStringField
      FieldName = 'HIS_PRODUTO'
      Required = True
      Size = 14
    end
    object cdsHistoricoHIS_UNIDADE: TStringField
      FieldName = 'HIS_UNIDADE'
      Size = 2
    end
    object cdsHistoricoHIS_TAMANHO: TStringField
      FieldName = 'HIS_TAMANHO'
      Size = 2
    end
    object cdsHistoricoHIS_DATA: TDateField
      FieldName = 'HIS_DATA'
    end
    object cdsHistoricoHIS_HORA: TStringField
      FieldName = 'HIS_HORA'
      Size = 5
    end
    object cdsHistoricoHIS_TIPO: TStringField
      FieldName = 'HIS_TIPO'
      Size = 2
    end
    object cdsHistoricoHIS_DOCUMENTO: TIntegerField
      FieldName = 'HIS_DOCUMENTO'
    end
    object cdsHistoricoHIS_ANTERIOR: TFloatField
      FieldName = 'HIS_ANTERIOR'
    end
    object cdsHistoricoHIS_MOVIMENTO: TFloatField
      FieldName = 'HIS_MOVIMENTO'
    end
    object cdsHistoricoHIS_ATUAL: TFloatField
      FieldName = 'HIS_ATUAL'
    end
    object cdsHistoricoHIS_MOTIVO: TIntegerField
      FieldName = 'HIS_MOTIVO'
    end
    object cdsHistoricoHIS_VLCUSTO: TFloatField
      FieldName = 'HIS_VLCUSTO'
    end
    object cdsHistoricoHIS_VLCOMPRA: TFloatField
      FieldName = 'HIS_VLCOMPRA'
    end
    object cdsHistoricoHIS_VLVENDA: TFloatField
      FieldName = 'HIS_VLVENDA'
    end
    object cdsHistoricoHIS_CODIGOBAIXA: TStringField
      FieldName = 'HIS_CODIGOBAIXA'
      Size = 14
    end
    object cdsHistoricoHIS_VENDEDOR: TIntegerField
      FieldName = 'HIS_VENDEDOR'
    end
    object cdsHistoricoHIS_USUARIO: TIntegerField
      FieldName = 'HIS_USUARIO'
    end
  end
  object cdsEntradaProd: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEntrada'
    Left = 184
    Top = 128
    object cdsEntradaProdENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Required = True
    end
    object cdsEntradaProdENT_LOJA: TIntegerField
      FieldName = 'ENT_LOJA'
      Required = True
    end
    object cdsEntradaProdENT_FORNECEDOR: TIntegerField
      FieldName = 'ENT_FORNECEDOR'
    end
    object cdsEntradaProdENT_TRANSPORTADORA: TIntegerField
      FieldName = 'ENT_TRANSPORTADORA'
    end
    object cdsEntradaProdENT_DATAPEDIDO: TDateField
      FieldName = 'ENT_DATAPEDIDO'
    end
    object cdsEntradaProdENT_DATAENTRADA: TDateField
      FieldName = 'ENT_DATAENTRADA'
    end
    object cdsEntradaProdENT_NATUREZAOPERACAO: TStringField
      FieldName = 'ENT_NATUREZAOPERACAO'
      Size = 1
    end
    object cdsEntradaProdENT_DATAEMISSAONOTA: TDateField
      FieldName = 'ENT_DATAEMISSAONOTA'
    end
    object cdsEntradaProdENT_NUMERONOTA: TStringField
      FieldName = 'ENT_NUMERONOTA'
      Size = 12
    end
    object cdsEntradaProdENT_SERIENOTA: TStringField
      FieldName = 'ENT_SERIENOTA'
      Size = 2
    end
    object cdsEntradaProdENT_VALORMERCADORIAS: TFloatField
      FieldName = 'ENT_VALORMERCADORIAS'
    end
    object cdsEntradaProdENT_TIPOFRETE: TStringField
      FieldName = 'ENT_TIPOFRETE'
      Size = 1
    end
    object cdsEntradaProdENT_VALORFRETE: TFloatField
      FieldName = 'ENT_VALORFRETE'
    end
    object cdsEntradaProdENT_BASECALCULOICMS: TFloatField
      FieldName = 'ENT_BASECALCULOICMS'
    end
    object cdsEntradaProdENT_VALORICMS: TFloatField
      FieldName = 'ENT_VALORICMS'
    end
    object cdsEntradaProdENT_BASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'ENT_BASECALCULOSUBSTITUICAO'
    end
    object cdsEntradaProdENT_VALORSUBSTITUICAO: TFloatField
      FieldName = 'ENT_VALORSUBSTITUICAO'
    end
    object cdsEntradaProdENT_VALORIPI: TFloatField
      FieldName = 'ENT_VALORIPI'
    end
    object cdsEntradaProdENT_VALORSEGURO: TFloatField
      FieldName = 'ENT_VALORSEGURO'
    end
    object cdsEntradaProdENT_OUTRASPESPESAS: TFloatField
      FieldName = 'ENT_OUTRASPESPESAS'
    end
    object cdsEntradaProdENT_VALORDESCONTO: TFloatField
      FieldName = 'ENT_VALORDESCONTO'
    end
    object cdsEntradaProdENT_VALORNOTA: TFloatField
      FieldName = 'ENT_VALORNOTA'
    end
    object cdsEntradaProdENT_SITUACAO: TStringField
      FieldName = 'ENT_SITUACAO'
      Size = 1
    end
    object cdsEntradaProdENT_USUARIO: TIntegerField
      FieldName = 'ENT_USUARIO'
    end
  end
  object cdsItensEntrada: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensEntrada'
    Left = 200
    Top = 184
    object cdsItensEntradaENP_NUMERO: TIntegerField
      FieldName = 'ENP_NUMERO'
      Required = True
    end
    object cdsItensEntradaENP_NRITEM: TIntegerField
      FieldName = 'ENP_NRITEM'
      Required = True
    end
    object cdsItensEntradaENP_PRODUTO: TStringField
      FieldName = 'ENP_PRODUTO'
      Required = True
      Size = 14
    end
    object cdsItensEntradaENP_UNIDADE: TStringField
      FieldName = 'ENP_UNIDADE'
      Size = 2
    end
    object cdsItensEntradaENP_TAMANHO: TStringField
      FieldName = 'ENP_TAMANHO'
      Size = 2
    end
    object cdsItensEntradaENP_QUANTIDADE: TFloatField
      FieldName = 'ENP_QUANTIDADE'
    end
    object cdsItensEntradaENP_VALOR: TFloatField
      FieldName = 'ENP_VALOR'
    end
    object cdsItensEntradaENP_IPI: TFloatField
      FieldName = 'ENP_IPI'
    end
    object cdsItensEntradaENP_ICMS: TFloatField
      FieldName = 'ENP_ICMS'
    end
  end
  object cdsItensTransf: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsItensTransfCalcFields
    Left = 264
    Top = 24
    Data = {
      2B0100009619E0BD0100000018000000080000000000030000002B010A505254
      5F434F4449474F0100490000000100055749445448020002000E000D5052545F
      44455343524943414F0100490000000100055749445448020002003C000B5052
      545F54414D414E484F01004900000001000557494454480200020002000B5052
      545F554E494441444501004900000001000557494454480200020002000E5052
      545F5155414E54494441444508000400000000000C5052545F564C434F4D5052
      41080004000000010007535542545950450200490006004D6F6E6579000B5052
      545F564C435553544F080004000000010007535542545950450200490006004D
      6F6E6579000B5052545F564C56454E4441080004000000010007535542545950
      450200490006004D6F6E6579000000}
    object cdsItensTransfPRT_CODIGO: TStringField
      FieldName = 'PRT_CODIGO'
      Size = 14
    end
    object cdsItensTransfPRT_DESCRICAO: TStringField
      DisplayWidth = 60
      FieldName = 'PRT_DESCRICAO'
      Size = 60
    end
    object cdsItensTransfPRT_TAMANHO: TStringField
      FieldName = 'PRT_TAMANHO'
      Size = 2
    end
    object cdsItensTransfPRT_UNIDADE: TStringField
      FieldName = 'PRT_UNIDADE'
      Size = 2
    end
    object cdsItensTransfPRT_QUANTIDADE: TFloatField
      FieldName = 'PRT_QUANTIDADE'
      DisplayFormat = '##,##0.#00'
      EditFormat = '##,##0.#00'
    end
    object cdsItensTransfPRT_VLCOMPRA: TCurrencyField
      FieldName = 'PRT_VLCOMPRA'
      DisplayFormat = '###,###,##0.#000'
      EditFormat = '###,###,##0.#000'
    end
    object cdsItensTransfPRT_VLCUSTO: TCurrencyField
      FieldName = 'PRT_VLCUSTO'
      DisplayFormat = '###,###,##0.#000'
      EditFormat = '###,###,##0.#000'
    end
    object cdsItensTransfPRT_VLVENDA: TCurrencyField
      FieldName = 'PRT_VLVENDA'
      DisplayFormat = '###,###,##0.#000'
      EditFormat = '###,###,##0.#000'
    end
    object cdsItensTransfPRT_SUBTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRT_SUBTOTAL'
      DisplayFormat = '###,###,##0.#000'
      EditFormat = '###,###,##0.#000'
      Calculated = True
    end
  end
  object ZQryTransferencia: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select * from "TRANSFERENCIAS" where ("TRA_NRTRANSFERENCIA" = :p' +
        'CODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 250
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZQryTransferenciaTRA_NRTRANSFERENCIA: TIntegerField
      FieldName = 'TRA_NRTRANSFERENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryTransferenciaTRA_LOJAORIGEM: TIntegerField
      FieldName = 'TRA_LOJAORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryTransferenciaTRA_LOJADESTINO: TIntegerField
      FieldName = 'TRA_LOJADESTINO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryTransferenciaTRA_ENTREGADOR: TIntegerField
      FieldName = 'TRA_ENTREGADOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryTransferenciaTRA_DATA: TDateField
      FieldName = 'TRA_DATA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryTransferenciaTRA_HORA: TStringField
      FieldName = 'TRA_HORA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryTransferenciaTRA_SITUACAO: TStringField
      FieldName = 'TRA_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryTransferenciaTRA_USUARIO: TIntegerField
      FieldName = 'TRA_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTransferencia: TDataSetProvider
    DataSet = ZQryTransferencia
    Options = [poAllowCommandText]
    Left = 104
    Top = 232
  end
  object cdsTransferencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspTransferencia'
    Left = 168
    Top = 248
    object cdsTransferenciaTRA_NRTRANSFERENCIA: TIntegerField
      FieldName = 'TRA_NRTRANSFERENCIA'
      Required = True
    end
    object cdsTransferenciaTRA_LOJAORIGEM: TIntegerField
      FieldName = 'TRA_LOJAORIGEM'
    end
    object cdsTransferenciaTRA_LOJADESTINO: TIntegerField
      FieldName = 'TRA_LOJADESTINO'
    end
    object cdsTransferenciaTRA_ENTREGADOR: TIntegerField
      FieldName = 'TRA_ENTREGADOR'
    end
    object cdsTransferenciaTRA_DATA: TDateField
      FieldName = 'TRA_DATA'
    end
    object cdsTransferenciaTRA_HORA: TStringField
      FieldName = 'TRA_HORA'
      Size = 5
    end
    object cdsTransferenciaTRA_SITUACAO: TStringField
      FieldName = 'TRA_SITUACAO'
      Size = 1
    end
    object cdsTransferenciaTRA_USUARIO: TIntegerField
      FieldName = 'TRA_USUARIO'
    end
  end
  object cdsItensVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsItensVendasCalcFields
    Left = 272
    Top = 85
    Data = {
      DC0100009619E0BD010000001800000010000000000003000000DC010A495445
      5F4E524954454E01004900000001000557494454480200020014000A4954455F
      43444954454E01004900000001000557494454480200020014000A4954455F4E
      4D4445534301004900000001000557494454480200020028000A4954455F5154
      4954454E08000400000000000A4954455F4344554E4944010049000000010005
      57494454480200020014000A4954455F564C554E495408000400000001000753
      5542545950450200490006004D6F6E6579000A4954455F464C43414E43010049
      00000001000557494454480200020014000A4954455F564C434F4D5008000400
      0000010007535542545950450200490006004D6F6E6579000A4954455F564C43
      555354080004000000010007535542545950450200490006004D6F6E6579000A
      4954455F4E524C4F544501004900000001000557494454480200020014000A49
      54455F4344424149580100490000000100055749445448020002000D000A4954
      455F564C4445534308000400000000000A4954455F564C414352450800040000
      0000000C4954455F56454E4445444F5204000100000000000A4954455F434F44
      434F5204000100000000000A4954455F56414C49504908000400000000000000}
    object cdsItensVendasITE_NRITEN: TStringField
      FieldName = 'ITE_NRITEN'
    end
    object cdsItensVendasITE_CDITEN: TStringField
      FieldName = 'ITE_CDITEN'
    end
    object cdsItensVendasITE_NMDESC: TStringField
      FieldName = 'ITE_NMDESC'
      Size = 40
    end
    object cdsItensVendasITE_QTITEN: TFloatField
      FieldName = 'ITE_QTITEN'
      DisplayFormat = '#,##0.#00'
      EditFormat = '#,##0.#00'
    end
    object cdsItensVendasITE_CDUNID: TStringField
      FieldName = 'ITE_CDUNID'
    end
    object cdsItensVendasITE_VLUNIT: TCurrencyField
      FieldName = 'ITE_VLUNIT'
      DisplayFormat = '###,###,##0.#0'
      currency = False
    end
    object cdsItensVendasITE_VLSUBT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ITE_VLSUBT'
      DisplayFormat = '###,###,##0.#0'
      currency = False
      Calculated = True
    end
    object cdsItensVendasITE_FLCANC: TStringField
      FieldName = 'ITE_FLCANC'
    end
    object cdsItensVendasITE_VLCOMP: TCurrencyField
      FieldName = 'ITE_VLCOMP'
    end
    object cdsItensVendasITE_VLCUST: TCurrencyField
      FieldName = 'ITE_VLCUST'
    end
    object cdsItensVendasITE_NRLOTE: TStringField
      FieldName = 'ITE_NRLOTE'
    end
    object cdsItensVendasITE_CDBAIX: TStringField
      FieldName = 'ITE_CDBAIX'
      Size = 13
    end
    object cdsItensVendasITE_VLDESC: TFloatField
      FieldName = 'ITE_VLDESC'
    end
    object cdsItensVendasITE_VLACRE: TFloatField
      FieldName = 'ITE_VLACRE'
    end
    object cdsItensVendasITE_VENDEDOR: TIntegerField
      FieldName = 'ITE_VENDEDOR'
      DisplayFormat = '000000'
    end
    object cdsItensVendasITE_CODCOR: TIntegerField
      FieldName = 'ITE_CODCOR'
    end
    object cdsItensVendasITE_VALIPI: TFloatField
      FieldName = 'ITE_VALIPI'
    end
  end
  object cdsParcelasVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 141
    Data = {
      160100009619E0BD01000000180000000900000000000300000016010D504152
      5F4E5250415243454C4104000100000000000E5041525F56454E43494D454E54
      4F0400060000000000095041525F56414C4F5208000400000001000753554254
      5950450200490006004D6F6E657900095041525F42414E434F01004900000001
      000557494454480200020003000B5041525F4147454E43494101004900000001
      00055749445448020002000500095041525F434F4E5441010049000000010005
      5749445448020002000C000A5041525F43484551554501004900000001000557
      49445448020002000A000E5041525F515450415243454C415304000100000000
      000E5041525F4D4F44414C494441444504000100000000000000}
    object cdsParcelasVendaPAR_NRPARCELA: TIntegerField
      FieldName = 'PAR_NRPARCELA'
      DisplayFormat = '00'
    end
    object cdsParcelasVendaPAR_VENCIMENTO: TDateField
      FieldName = 'PAR_VENCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasVendaPAR_VALOR: TCurrencyField
      FieldName = 'PAR_VALOR'
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
    end
    object cdsParcelasVendaPAR_BANCO: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_BANCO'
      EditMask = '999;0;_'
      Size = 3
    end
    object cdsParcelasVendaPAR_AGENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_AGENCIA'
      EditMask = '9999-A;0;_'
      Size = 5
    end
    object cdsParcelasVendaPAR_CONTA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CONTA'
      EditMask = '9999999999;0;_'
      Size = 12
    end
    object cdsParcelasVendaPAR_CHEQUE: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CHEQUE'
      EditMask = '9999999999;0;_'
      Size = 10
    end
    object cdsParcelasVendaPAR_QTPARCELAS: TIntegerField
      FieldName = 'PAR_QTPARCELAS'
    end
    object cdsParcelasVendaPAR_MODALIDADE: TIntegerField
      FieldName = 'PAR_MODALIDADE'
    end
  end
  object cdsModalidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 192
    Data = {
      1C0100009619E0BD01000000180000000A0000000000030000001C0108434453
      5F4954454D04000100000000000A4344535F434F4449474F0400010000000000
      084344535F4E4F4D450100490000000100055749445448020002001E000E4344
      535F4142524556494143414F0100490000000100055749445448020002000300
      0C4344535F4E52504152434C4104000100000000000A4344535F464C46495841
      01004900000001000557494454480200020001000A4344535F41564953544101
      00490000000100055749445448020002000100094344535F464C544546010049
      00000001000557494454480200020001000E4344535F564C524543454249444F
      08000400000000000D4344535F464C5355434553534F02000300000000000000}
    object cdsModalidadesCDS_ITEM: TIntegerField
      FieldName = 'CDS_ITEM'
    end
    object cdsModalidadesCDS_CODIGO: TIntegerField
      FieldName = 'CDS_CODIGO'
    end
    object cdsModalidadesCDS_NOME: TStringField
      FieldName = 'CDS_NOME'
      Size = 30
    end
    object cdsModalidadesCDS_ABREVIACAO: TStringField
      FieldName = 'CDS_ABREVIACAO'
      Size = 3
    end
    object cdsModalidadesCDS_NRPARCLA: TIntegerField
      FieldName = 'CDS_NRPARCLA'
    end
    object cdsModalidadesCDS_FLFIXA: TStringField
      FieldName = 'CDS_FLFIXA'
      Size = 1
    end
    object cdsModalidadesCDS_AVISTA: TStringField
      FieldName = 'CDS_AVISTA'
      Size = 1
    end
    object cdsModalidadesCDS_FLTEF: TStringField
      FieldName = 'CDS_FLTEF'
      Size = 1
    end
    object cdsModalidadesCDS_VLRECEBIDO: TFloatField
      FieldName = 'CDS_VLRECEBIDO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsModalidadesCDS_FLSUCESSO: TBooleanField
      FieldName = 'CDS_FLSUCESSO'
    end
  end
  object cdsParcelas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 256
    Data = {
      E80000009619E0BD010000001800000007000000000003000000E8000D504152
      5F4E5250415243454C4104000100000000000E5041525F56454E43494D454E54
      4F0400060000000000095041525F56414C4F5208000400000001000753554254
      5950450200490006004D6F6E657900095041525F42414E434F01004900000001
      000557494454480200020003000B5041525F4147454E43494101004900000001
      00055749445448020002000500095041525F434F4E5441010049000000010005
      5749445448020002000C000A5041525F43484551554501004900000001000557
      49445448020002000A000000}
    object cdsParcelasPAR_NRPARCELA: TIntegerField
      FieldName = 'PAR_NRPARCELA'
      DisplayFormat = '00'
    end
    object cdsParcelasPAR_VENCIMENTO: TDateField
      FieldName = 'PAR_VENCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object cdsParcelasPAR_VALOR: TCurrencyField
      FieldName = 'PAR_VALOR'
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
    end
    object cdsParcelasPAR_BANCO: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_BANCO'
      EditMask = '999;0;_'
      Size = 3
    end
    object cdsParcelasPAR_AGENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_AGENCIA'
      EditMask = '9999-A;0;_'
      Size = 5
    end
    object cdsParcelasPAR_CONTA: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CONTA'
      EditMask = '9999999999;0;_'
      Size = 12
    end
    object cdsParcelasPAR_CHEQUE: TStringField
      Alignment = taRightJustify
      FieldName = 'PAR_CHEQUE'
      EditMask = '9999999999;0;_'
      Size = 10
    end
  end
  object ZQryVenda: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "VENDAS" Where ("MOV_PEDIDO" = :pPEDIDO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end>
    Left = 344
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end>
    object ZQryVendaMOV_PEDIDO: TIntegerField
      FieldName = 'MOV_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryVendaMOV_CUPOM: TIntegerField
      FieldName = 'MOV_CUPOM'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_LOJA: TIntegerField
      FieldName = 'MOV_LOJA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_SEQUENCIA: TIntegerField
      FieldName = 'MOV_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_CLIENTE: TIntegerField
      FieldName = 'MOV_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_DATAVENDA: TDateField
      FieldName = 'MOV_DATAVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_HORAVENDA: TStringField
      FieldName = 'MOV_HORAVENDA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryVendaMOV_DATACANC: TDateField
      FieldName = 'MOV_DATACANC'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_HORACANC: TStringField
      FieldName = 'MOV_HORACANC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryVendaMOV_MOTCANC: TStringField
      FieldName = 'MOV_MOTCANC'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZQryVendaMOV_VENDEDOR: TIntegerField
      FieldName = 'MOV_VENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_VALOR: TFloatField
      FieldName = 'MOV_VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_ENTRADA: TFloatField
      FieldName = 'MOV_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_DESCONTO: TFloatField
      FieldName = 'MOV_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_ACRESCIMO: TFloatField
      FieldName = 'MOV_ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_DEVOLUSAO: TFloatField
      FieldName = 'MOV_DEVOLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_TROCO: TFloatField
      FieldName = 'MOV_TROCO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_SITUACAO: TStringField
      FieldName = 'MOV_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryVendaDOM_ENDERECO: TStringField
      FieldName = 'DOM_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryVendaDOM_NUMERO: TStringField
      FieldName = 'DOM_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZQryVendaDOM_COMPLEMENTO: TStringField
      FieldName = 'DOM_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZQryVendaDOM_BAIRRO: TStringField
      FieldName = 'DOM_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZQryVendaDOM_CIDADE: TStringField
      FieldName = 'DOM_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaDOM_REFERE: TStringField
      FieldName = 'DOM_REFERE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZQryVendaDOM_NRFONE: TStringField
      FieldName = 'DOM_NRFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZQryVendaMOV_NOMECLIENTE: TStringField
      FieldName = 'MOV_NOMECLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZQryVendaMOV_TABELA: TIntegerField
      FieldName = 'MOV_TABELA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_TIPO_FRETE: TStringField
      FieldName = 'MOV_TIPO_FRETE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryVendaMOV_PERC_FRETE: TFloatField
      FieldName = 'MOV_PERC_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_IDTRANSPORTADORA: TIntegerField
      FieldName = 'MOV_IDTRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_TABELA_PLANO: TIntegerField
      FieldName = 'MOV_TABELA_PLANO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_OBSERVACAO: TMemoField
      FieldName = 'MOV_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryVendaMOV_MODALIDADE_PEDIDO: TIntegerField
      FieldName = 'MOV_MODALIDADE_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaMOV_OBS1: TMemoField
      FieldName = 'MOV_OBS1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryVendaMOV_OBS2: TMemoField
      FieldName = 'MOV_OBS2'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryVendaMOV_NRMESA: TStringField
      FieldName = 'MOV_NRMESA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ZQryVendaMOV_TAXA_SERVICO: TFloatField
      FieldName = 'MOV_TAXA_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZQryVendaItens: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select * from "VENDAS_ITENS" Where ("MOP_PEDIDO" = :pPEDIDO) AND' +
        ' '
      '("MOP_NRITEM" = :pNRITEM) AND ("MOP_PRODUTO" = :pPRODUTO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    Left = 344
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    object ZQryVendaItensMOP_PEDIDO: TIntegerField
      FieldName = 'MOP_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryVendaItensMOP_NRITEM: TIntegerField
      FieldName = 'MOP_NRITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryVendaItensMOP_PRODUTO: TStringField
      FieldName = 'MOP_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
    object ZQryVendaItensMOP_QUANTIDADE: TFloatField
      FieldName = 'MOP_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_UNIDADE: TStringField
      FieldName = 'MOP_UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryVendaItensMOP_ARMAZENAMENTO: TStringField
      FieldName = 'MOP_ARMAZENAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryVendaItensMOP_VALOR: TFloatField
      FieldName = 'MOP_VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_DESCONTO: TFloatField
      FieldName = 'MOP_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_SERIE: TStringField
      FieldName = 'MOP_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZQryVendaItensMOP_CUSTO: TFloatField
      FieldName = 'MOP_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_COMPRA: TFloatField
      FieldName = 'MOP_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_CODCOR: TIntegerField
      FieldName = 'MOP_CODCOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_VALIPI: TFloatField
      FieldName = 'MOP_VALIPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_CDVENDEDOR: TIntegerField
      FieldName = 'MOP_CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryVendaItensMOP_TAMANHO: TStringField
      FieldName = 'MOP_TAMANHO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = ZQryVenda
    Options = [poAllowCommandText]
    OnGetTableName = dspVendaGetTableName
    Left = 424
    Top = 16
  end
  object dspVendaItens: TDataSetProvider
    DataSet = ZQryVendaItens
    Options = [poAllowCommandText]
    OnGetTableName = dspVendaItensGetTableName
    Left = 424
    Top = 72
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda'
    Left = 512
    Top = 16
    object cdsVendaMOV_PEDIDO: TIntegerField
      FieldName = 'MOV_PEDIDO'
      Required = True
    end
    object cdsVendaMOV_CUPOM: TIntegerField
      FieldName = 'MOV_CUPOM'
    end
    object cdsVendaMOV_LOJA: TIntegerField
      FieldName = 'MOV_LOJA'
    end
    object cdsVendaMOV_SEQUENCIA: TIntegerField
      FieldName = 'MOV_SEQUENCIA'
    end
    object cdsVendaMOV_CLIENTE: TIntegerField
      FieldName = 'MOV_CLIENTE'
    end
    object cdsVendaMOV_DATAVENDA: TDateField
      FieldName = 'MOV_DATAVENDA'
    end
    object cdsVendaMOV_HORAVENDA: TStringField
      FieldName = 'MOV_HORAVENDA'
      Size = 5
    end
    object cdsVendaMOV_DATACANC: TDateField
      FieldName = 'MOV_DATACANC'
    end
    object cdsVendaMOV_HORACANC: TStringField
      FieldName = 'MOV_HORACANC'
      Size = 5
    end
    object cdsVendaMOV_MOTCANC: TStringField
      FieldName = 'MOV_MOTCANC'
      Size = 50
    end
    object cdsVendaMOV_VENDEDOR: TIntegerField
      FieldName = 'MOV_VENDEDOR'
    end
    object cdsVendaMOV_VALOR: TFloatField
      FieldName = 'MOV_VALOR'
    end
    object cdsVendaMOV_ENTRADA: TFloatField
      FieldName = 'MOV_ENTRADA'
    end
    object cdsVendaMOV_DESCONTO: TFloatField
      FieldName = 'MOV_DESCONTO'
    end
    object cdsVendaMOV_ACRESCIMO: TFloatField
      FieldName = 'MOV_ACRESCIMO'
    end
    object cdsVendaMOV_DEVOLUSAO: TFloatField
      FieldName = 'MOV_DEVOLUSAO'
    end
    object cdsVendaMOV_TROCO: TFloatField
      FieldName = 'MOV_TROCO'
    end
    object cdsVendaMOV_SITUACAO: TStringField
      FieldName = 'MOV_SITUACAO'
      Size = 1
    end
    object cdsVendaDOM_ENDERECO: TStringField
      FieldName = 'DOM_ENDERECO'
      Size = 40
    end
    object cdsVendaDOM_NUMERO: TStringField
      FieldName = 'DOM_NUMERO'
      Size = 10
    end
    object cdsVendaDOM_COMPLEMENTO: TStringField
      FieldName = 'DOM_COMPLEMENTO'
      Size = 30
    end
    object cdsVendaDOM_BAIRRO: TStringField
      FieldName = 'DOM_BAIRRO'
      Size = 30
    end
    object cdsVendaDOM_CIDADE: TStringField
      FieldName = 'DOM_CIDADE'
    end
    object cdsVendaDOM_REFERE: TStringField
      FieldName = 'DOM_REFERE'
      Size = 50
    end
    object cdsVendaDOM_NRFONE: TStringField
      FieldName = 'DOM_NRFONE'
      Size = 10
    end
    object cdsVendaMOV_NOMECLIENTE: TStringField
      FieldName = 'MOV_NOMECLIENTE'
      Size = 50
    end
    object cdsVendaMOV_TABELA: TIntegerField
      FieldName = 'MOV_TABELA'
    end
    object cdsVendaMOV_TIPO_FRETE: TStringField
      FieldName = 'MOV_TIPO_FRETE'
      Size = 1
    end
    object cdsVendaMOV_PERC_FRETE: TFloatField
      FieldName = 'MOV_PERC_FRETE'
    end
    object cdsVendaMOV_IDTRANSPORTADORA: TIntegerField
      FieldName = 'MOV_IDTRANSPORTADORA'
    end
    object cdsVendaMOV_TABELA_PLANO: TIntegerField
      FieldName = 'MOV_TABELA_PLANO'
    end
    object cdsVendaMOV_OBSERVACAO: TMemoField
      FieldName = 'MOV_OBSERVACAO'
      BlobType = ftMemo
    end
    object cdsVendaMOV_MODALIDADE_PEDIDO: TIntegerField
      FieldName = 'MOV_MODALIDADE_PEDIDO'
    end
    object cdsVendaMOV_OBS1: TMemoField
      FieldName = 'MOV_OBS1'
      BlobType = ftMemo
    end
    object cdsVendaMOV_OBS2: TMemoField
      FieldName = 'MOV_OBS2'
      BlobType = ftMemo
    end
    object cdsVendaMOV_NRMESA: TStringField
      FieldName = 'MOV_NRMESA'
      Size = 6
    end
    object cdsVendaMOV_TAXA_SERVICO: TFloatField
      FieldName = 'MOV_TAXA_SERVICO'
    end
  end
  object cdsVendaItens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pPEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pNRITEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendaItens'
    Left = 512
    Top = 64
    object cdsVendaItensMOP_PEDIDO: TIntegerField
      FieldName = 'MOP_PEDIDO'
      Required = True
    end
    object cdsVendaItensMOP_NRITEM: TIntegerField
      FieldName = 'MOP_NRITEM'
      Required = True
    end
    object cdsVendaItensMOP_PRODUTO: TStringField
      FieldName = 'MOP_PRODUTO'
      Required = True
      Size = 14
    end
    object cdsVendaItensMOP_QUANTIDADE: TFloatField
      FieldName = 'MOP_QUANTIDADE'
    end
    object cdsVendaItensMOP_UNIDADE: TStringField
      FieldName = 'MOP_UNIDADE'
      Size = 2
    end
    object cdsVendaItensMOP_ARMAZENAMENTO: TStringField
      FieldName = 'MOP_ARMAZENAMENTO'
      Size = 2
    end
    object cdsVendaItensMOP_VALOR: TFloatField
      FieldName = 'MOP_VALOR'
    end
    object cdsVendaItensMOP_DESCONTO: TFloatField
      FieldName = 'MOP_DESCONTO'
    end
    object cdsVendaItensMOP_SERIE: TStringField
      FieldName = 'MOP_SERIE'
      Size = 30
    end
    object cdsVendaItensMOP_CUSTO: TFloatField
      FieldName = 'MOP_CUSTO'
    end
    object cdsVendaItensMOP_COMPRA: TFloatField
      FieldName = 'MOP_COMPRA'
    end
    object cdsVendaItensMOP_CODCOR: TIntegerField
      FieldName = 'MOP_CODCOR'
    end
    object cdsVendaItensMOP_VALIPI: TFloatField
      FieldName = 'MOP_VALIPI'
    end
    object cdsVendaItensMOP_CDVENDEDOR: TIntegerField
      FieldName = 'MOP_CDVENDEDOR'
    end
    object cdsVendaItensMOP_TAMANHO: TStringField
      FieldName = 'MOP_TAMANHO'
      Size = 2
    end
  end
  object ZQryCaixa: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "CAIXA" where ("CAI_NUMERO" = :pNUMERO) '
      'And ("CAI_LOJA" = :pLOJA)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end>
    Left = 360
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end>
    object ZQryCaixaCAI_NUMERO: TIntegerField
      FieldName = 'CAI_NUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryCaixaCAI_LOJA: TIntegerField
      FieldName = 'CAI_LOJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryCaixaCAI_DTABERTURA: TDateField
      FieldName = 'CAI_DTABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryCaixaCAI_DTFECHAMENTO: TDateField
      FieldName = 'CAI_DTFECHAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryCaixaCAI_HOABERTURA: TStringField
      FieldName = 'CAI_HOABERTURA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryCaixaCAI_HOFECHAMENTO: TStringField
      FieldName = 'CAI_HOFECHAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryCaixaCAI_RGINICIAL: TIntegerField
      FieldName = 'CAI_RGINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryCaixaCAI_RGFINAL: TIntegerField
      FieldName = 'CAI_RGFINAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryCaixaCAI_CAIXA: TIntegerField
      FieldName = 'CAI_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryCaixaCAI_SITUACAO: TStringField
      FieldName = 'CAI_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object ZQryMovCaixa: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      
        'Select * from "MOVIMENTO_CAIXA" where ("MCA_SEQUENCIA" = :pSEQUE' +
        'NCIA)'
      'and ("MCA_LOJA" = :pLOJA) and ("MCA_MODALIDADE" = :pCDMODA)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    Left = 360
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    object ZQryMovCaixaMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryMovCaixaMCA_LOJA: TIntegerField
      FieldName = 'MCA_LOJA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQryMovCaixaMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryMovCaixaMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryMovCaixaMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_VLMODALIDADE: TFloatField
      FieldName = 'MCA_VLMODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_TOVENDA: TFloatField
      FieldName = 'MCA_TOVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_VLTROCO: TFloatField
      FieldName = 'MCA_VLTROCO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryMovCaixaMCA_SITUACAO: TStringField
      FieldName = 'MCA_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryMovCaixaMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_NATUREZA: TIntegerField
      FieldName = 'MCA_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryMovCaixaMCA_FUNCIONARIO: TIntegerField
      FieldName = 'MCA_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = ZQryCaixa
    Options = [poAllowCommandText]
    Left = 416
    Top = 144
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = ZQryMovCaixa
    Options = [poAllowCommandText]
    Left = 416
    Top = 192
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 472
    Top = 128
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMovCaixa'
    Left = 480
    Top = 184
    object cdsMovCaixaMCA_SEQUENCIA: TIntegerField
      FieldName = 'MCA_SEQUENCIA'
      Required = True
    end
    object cdsMovCaixaMCA_LOJA: TIntegerField
      FieldName = 'MCA_LOJA'
      Required = True
    end
    object cdsMovCaixaMCA_VENDA: TIntegerField
      FieldName = 'MCA_VENDA'
    end
    object cdsMovCaixaMCA_TIPOMOV: TStringField
      FieldName = 'MCA_TIPOMOV'
      Size = 1
    end
    object cdsMovCaixaMCA_DTMOVIMENTO: TDateField
      FieldName = 'MCA_DTMOVIMENTO'
    end
    object cdsMovCaixaMCA_HRMOVIMENTO: TStringField
      FieldName = 'MCA_HRMOVIMENTO'
      Size = 5
    end
    object cdsMovCaixaMCA_MODALIDADE: TIntegerField
      FieldName = 'MCA_MODALIDADE'
    end
    object cdsMovCaixaMCA_VLMODALIDADE: TFloatField
      FieldName = 'MCA_VLMODALIDADE'
    end
    object cdsMovCaixaMCA_TOVENDA: TFloatField
      FieldName = 'MCA_TOVENDA'
    end
    object cdsMovCaixaMCA_VLTROCO: TFloatField
      FieldName = 'MCA_VLTROCO'
    end
    object cdsMovCaixaMCA_OBSEVACAO: TStringField
      FieldName = 'MCA_OBSEVACAO'
      Size = 40
    end
    object cdsMovCaixaMCA_SITUACAO: TStringField
      FieldName = 'MCA_SITUACAO'
      Size = 1
    end
    object cdsMovCaixaMCA_CAIXA: TIntegerField
      FieldName = 'MCA_CAIXA'
    end
    object cdsMovCaixaMCA_NATUREZA: TIntegerField
      FieldName = 'MCA_NATUREZA'
    end
    object cdsMovCaixaMCA_FUNCIONARIO: TIntegerField
      FieldName = 'MCA_FUNCIONARIO'
    end
  end
  object ZQryLotes: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "LOTES" where ("LOT_PROCODIGO" = :pPROCODIGO) '
      'AND ("LOT_NRLOTE" = :pNRLOTE)')
    Params = <
      item
        DataType = ftString
        Name = 'pPROCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
      end>
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'pPROCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
      end>
    object ZQryLotesLOT_PROCODIGO: TStringField
      FieldName = 'LOT_PROCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object ZQryLotesLOT_NRLOTE: TStringField
      FieldName = 'LOT_NRLOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ZQryLotesLOT_QUANTIDADE: TFloatField
      FieldName = 'LOT_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryLotesLOT_DTVENCIMENTO: TDateField
      FieldName = 'LOT_DTVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspLotes: TDataSetProvider
    DataSet = ZQryLotes
    Options = [poAllowCommandText]
    Left = 80
    Top = 312
  end
  object cdsLotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPROCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspLotes'
    Left = 128
    Top = 296
    object cdsLotesLOT_PROCODIGO: TStringField
      FieldName = 'LOT_PROCODIGO'
      Required = True
      Size = 13
    end
    object cdsLotesLOT_NRLOTE: TStringField
      FieldName = 'LOT_NRLOTE'
    end
    object cdsLotesLOT_QUANTIDADE: TFloatField
      FieldName = 'LOT_QUANTIDADE'
    end
    object cdsLotesLOT_DTVENCIMENTO: TDateField
      FieldName = 'LOT_DTVENCIMENTO'
    end
  end
end

object dmCadAuxiliar: TdmCadAuxiliar
  OldCreateOrder = False
  Left = 230
  Top = 201
  Height = 260
  Width = 358
  object ZQryModalidade: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "MODALIDADES" Where ("MOD_CODIGO" = :pCDMODA)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    object ZQryModalidadeMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryModalidadeMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZQryModalidadeMOD_PECOMISSAO: TFloatField
      FieldName = 'MOD_PECOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryModalidadeMOD_ABREVIACAO: TStringField
      FieldName = 'MOD_ABREVIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZQryModalidadeMOD_NRPARCELA: TIntegerField
      FieldName = 'MOD_NRPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryModalidadeMOD_FLFIXA: TStringField
      FieldName = 'MOD_FLFIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryModalidadeMOD_CAIXA_GERAL: TIntegerField
      FieldName = 'MOD_CAIXA_GERAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryModalidadeMOD_AVISTA: TStringField
      FieldName = 'MOD_AVISTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryModalidadeMOD_FLXTEF: TStringField
      FieldName = 'MOD_FLXTEF'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryModalidadeMOD_PASTA_ENVIA_TEF: TStringField
      FieldName = 'MOD_PASTA_ENVIA_TEF'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZQryModalidadeMOD_PASTA_RECEBE_TEF: TStringField
      FieldName = 'MOD_PASTA_RECEBE_TEF'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object ZQryContaReceber: TZQuery
    Connection = dmDados.ZConexao
    SQL.Strings = (
      'Select * from "CONTASRECEBER" where ("REC_SEQUENCIA" = :pSEQ)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pSEQ'
        ParamType = ptInput
      end>
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pSEQ'
        ParamType = ptInput
      end>
    object ZQryContaReceberREC_SEQUENCIA: TIntegerField
      FieldName = 'REC_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryContaReceberREC_LOJA: TIntegerField
      FieldName = 'REC_LOJA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQryContaReceberREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQryContaReceberREC_PARCELA: TIntegerField
      FieldName = 'REC_PARCELA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZQryContaReceberREC_QTPARCELAS: TIntegerField
      FieldName = 'REC_QTPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_CLIENTE: TIntegerField
      FieldName = 'REC_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_NRVENDA: TIntegerField
      FieldName = 'REC_NRVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_DESCRICAO: TMemoField
      FieldName = 'REC_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryContaReceberREC_DATAEMISSAO: TDateField
      FieldName = 'REC_DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_DATAVENCIMENTO: TDateField
      FieldName = 'REC_DATAVENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VALORPARCELA: TFloatField
      FieldName = 'REC_VALORPARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryContaReceberREC_DATAPAGAMENTO: TDateField
      FieldName = 'REC_DATAPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VALORACRESIMO: TFloatField
      FieldName = 'REC_VALORACRESIMO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VALORJUROS: TFloatField
      FieldName = 'REC_VALORJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VALORDESCONTO: TFloatField
      FieldName = 'REC_VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_PAGO: TFloatField
      FieldName = 'REC_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_RESTANTE: TFloatField
      FieldName = 'REC_RESTANTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_BANCO: TStringField
      FieldName = 'REC_BANCO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZQryContaReceberREC_AGENCIA: TStringField
      FieldName = 'REC_AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ZQryContaReceberREC_NRCONTA: TStringField
      FieldName = 'REC_NRCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object ZQryContaReceberREC_NRCHEQUE: TStringField
      FieldName = 'REC_NRCHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZQryContaReceberREC_TIPOMODALIDADE: TIntegerField
      FieldName = 'REC_TIPOMODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_USUARIO: TIntegerField
      FieldName = 'REC_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_NATUREZA: TIntegerField
      FieldName = 'REC_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_FLBOLETO: TStringField
      FieldName = 'REC_FLBOLETO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryContaReceberREC_DATA_CREDITO: TDateField
      FieldName = 'REC_DATA_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_DTRENEGOCIACAO: TDateField
      FieldName = 'REC_DTRENEGOCIACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VLMULTA: TFloatField
      FieldName = 'REC_VLMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_NOSSO_NUMERO: TStringField
      FieldName = 'REC_NOSSO_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_SEUNUMERO: TStringField
      FieldName = 'REC_SEUNUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZQryContaReceberREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryContaReceberREC_PEDESC: TFloatField
      FieldName = 'REC_PEDESC'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_PEMULTA: TFloatField
      FieldName = 'REC_PEMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_PEJURO: TFloatField
      FieldName = 'REC_PEJURO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_CDCEDENTE: TIntegerField
      FieldName = 'REC_CDCEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_NMARQUIVO: TStringField
      FieldName = 'REC_NMARQUIVO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_VLLIQUIDO: TFloatField
      FieldName = 'REC_VLLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryContaReceberREC_NRFATURA: TStringField
      FieldName = 'REC_NRFATURA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dspModalidade: TDataSetProvider
    DataSet = ZQryModalidade
    Options = [poAllowCommandText]
    Left = 96
    Top = 8
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCDMODA'
        ParamType = ptInput
      end>
    ProviderName = 'dspModalidade'
    Left = 160
    Top = 24
    object cdsModalidadeMOD_CODIGO: TIntegerField
      FieldName = 'MOD_CODIGO'
      Required = True
      DisplayFormat = '00'
      EditFormat = '##'
    end
    object cdsModalidadeMOD_NOME: TStringField
      FieldName = 'MOD_NOME'
      Size = 30
    end
    object cdsModalidadeMOD_PECOMISSAO: TFloatField
      FieldName = 'MOD_PECOMISSAO'
    end
    object cdsModalidadeMOD_ABREVIACAO: TStringField
      FieldName = 'MOD_ABREVIACAO'
      Size = 3
    end
    object cdsModalidadeMOD_NRPARCELA: TIntegerField
      FieldName = 'MOD_NRPARCELA'
      DisplayFormat = '00'
      EditFormat = '##'
    end
    object cdsModalidadeMOD_FLFIXA: TStringField
      FieldName = 'MOD_FLFIXA'
      Size = 1
    end
    object cdsModalidadeMOD_CAIXA_GERAL: TIntegerField
      FieldName = 'MOD_CAIXA_GERAL'
    end
    object cdsModalidadeMOD_AVISTA: TStringField
      FieldName = 'MOD_AVISTA'
      Size = 1
    end
    object cdsModalidadeMOD_FLXTEF: TStringField
      FieldName = 'MOD_FLXTEF'
      Size = 1
    end
    object cdsModalidadeMOD_PASTA_ENVIA_TEF: TStringField
      FieldName = 'MOD_PASTA_ENVIA_TEF'
      Size = 60
    end
    object cdsModalidadeMOD_PASTA_RECEBE_TEF: TStringField
      FieldName = 'MOD_PASTA_RECEBE_TEF'
      Size = 60
    end
  end
  object dspContaReceber: TDataSetProvider
    DataSet = ZQryContaReceber
    Options = [poAllowCommandText]
    OnGetTableName = dspContaReceberGetTableName
    Left = 104
    Top = 72
  end
  object cdsContaReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaReceber'
    Left = 176
    Top = 88
    object cdsContaReceberREC_SEQUENCIA: TIntegerField
      FieldName = 'REC_SEQUENCIA'
      Required = True
    end
    object cdsContaReceberREC_LOJA: TIntegerField
      FieldName = 'REC_LOJA'
      Required = True
    end
    object cdsContaReceberREC_CREDITO: TIntegerField
      FieldName = 'REC_CREDITO'
      Required = True
    end
    object cdsContaReceberREC_PARCELA: TIntegerField
      FieldName = 'REC_PARCELA'
      Required = True
    end
    object cdsContaReceberREC_QTPARCELAS: TIntegerField
      FieldName = 'REC_QTPARCELAS'
    end
    object cdsContaReceberREC_CLIENTE: TIntegerField
      FieldName = 'REC_CLIENTE'
    end
    object cdsContaReceberREC_NRVENDA: TIntegerField
      FieldName = 'REC_NRVENDA'
    end
    object cdsContaReceberREC_DESCRICAO: TMemoField
      FieldName = 'REC_DESCRICAO'
      BlobType = ftMemo
    end
    object cdsContaReceberREC_DATAEMISSAO: TDateField
      FieldName = 'REC_DATAEMISSAO'
    end
    object cdsContaReceberREC_DATAVENCIMENTO: TDateField
      FieldName = 'REC_DATAVENCIMENTO'
    end
    object cdsContaReceberREC_VALORPARCELA: TFloatField
      FieldName = 'REC_VALORPARCELA'
    end
    object cdsContaReceberREC_SITUACAO: TStringField
      FieldName = 'REC_SITUACAO'
      Size = 1
    end
    object cdsContaReceberREC_DATAPAGAMENTO: TDateField
      FieldName = 'REC_DATAPAGAMENTO'
    end
    object cdsContaReceberREC_VALORACRESIMO: TFloatField
      FieldName = 'REC_VALORACRESIMO'
    end
    object cdsContaReceberREC_VALORJUROS: TFloatField
      FieldName = 'REC_VALORJUROS'
    end
    object cdsContaReceberREC_VALORDESCONTO: TFloatField
      FieldName = 'REC_VALORDESCONTO'
    end
    object cdsContaReceberREC_PAGO: TFloatField
      FieldName = 'REC_PAGO'
    end
    object cdsContaReceberREC_RESTANTE: TFloatField
      FieldName = 'REC_RESTANTE'
    end
    object cdsContaReceberREC_BANCO: TStringField
      FieldName = 'REC_BANCO'
      Size = 3
    end
    object cdsContaReceberREC_AGENCIA: TStringField
      FieldName = 'REC_AGENCIA'
      Size = 6
    end
    object cdsContaReceberREC_NRCONTA: TStringField
      FieldName = 'REC_NRCONTA'
      Size = 12
    end
    object cdsContaReceberREC_NRCHEQUE: TStringField
      FieldName = 'REC_NRCHEQUE'
      Size = 10
    end
    object cdsContaReceberREC_TIPOMODALIDADE: TIntegerField
      FieldName = 'REC_TIPOMODALIDADE'
    end
    object cdsContaReceberREC_USUARIO: TIntegerField
      FieldName = 'REC_USUARIO'
    end
    object cdsContaReceberREC_NATUREZA: TIntegerField
      FieldName = 'REC_NATUREZA'
    end
    object cdsContaReceberREC_FLBOLETO: TStringField
      FieldName = 'REC_FLBOLETO'
      Size = 1
    end
    object cdsContaReceberREC_DATA_CREDITO: TDateField
      FieldName = 'REC_DATA_CREDITO'
    end
    object cdsContaReceberREC_DTRENEGOCIACAO: TDateField
      FieldName = 'REC_DTRENEGOCIACAO'
    end
    object cdsContaReceberREC_VLMULTA: TFloatField
      FieldName = 'REC_VLMULTA'
    end
    object cdsContaReceberREC_NOSSO_NUMERO: TStringField
      FieldName = 'REC_NOSSO_NUMERO'
    end
    object cdsContaReceberREC_SEUNUMERO: TStringField
      FieldName = 'REC_SEUNUMERO'
      Size = 15
    end
    object cdsContaReceberREC_FORMABAIXA: TStringField
      FieldName = 'REC_FORMABAIXA'
      Size = 1
    end
    object cdsContaReceberREC_PEDESC: TFloatField
      FieldName = 'REC_PEDESC'
    end
    object cdsContaReceberREC_PEMULTA: TFloatField
      FieldName = 'REC_PEMULTA'
    end
    object cdsContaReceberREC_PEJURO: TFloatField
      FieldName = 'REC_PEJURO'
    end
    object cdsContaReceberREC_CDCEDENTE: TIntegerField
      FieldName = 'REC_CDCEDENTE'
    end
    object cdsContaReceberREC_NMARQUIVO: TStringField
      FieldName = 'REC_NMARQUIVO'
    end
    object cdsContaReceberREC_VLLIQUIDO: TFloatField
      FieldName = 'REC_VLLIQUIDO'
    end
    object cdsContaReceberREC_NRFATURA: TStringField
      FieldName = 'REC_NRFATURA'
      Size = 10
    end
  end
end

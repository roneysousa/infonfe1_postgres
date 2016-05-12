object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 197
  Top = 125
  Height = 570
  Width = 768
  object ZConexao: TZConnection
    Protocol = 'postgresql-7'
    HostName = 'localhost'
    Port = 5432
    Database = 'infonfe'
    User = 'postgres'
    Password = 'admg2'
    TransactIsolationLevel = tiReadCommitted
    Left = 32
    Top = 16
  end
  object ZqryConfig: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "CONFIG"  Where ("CFG_CODIGO" = 1)')
    Params = <>
    Left = 32
    Top = 72
    object ZqryConfigCFG_CODIGO: TIntegerField
      FieldName = 'CFG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryConfigCFG_EMITENTE: TIntegerField
      FieldName = 'CFG_EMITENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CLIENTE: TIntegerField
      FieldName = 'CFG_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_PRODUTO: TIntegerField
      FieldName = 'CFG_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_TRANSPORTADORA: TIntegerField
      FieldName = 'CFG_TRANSPORTADORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_NOTAFISCAL: TIntegerField
      FieldName = 'CFG_NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_USUARIO: TIntegerField
      FieldName = 'CFG_USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SEQTAREFAUSUARIOS: TIntegerField
      FieldName = 'CFG_SEQTAREFAUSUARIOS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_FORNECEDOR: TIntegerField
      FieldName = 'CFG_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CODPAIS: TIntegerField
      FieldName = 'CFG_CODPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_PECOFINS: TFloatField
      FieldName = 'CFG_PECOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_PERPIS: TFloatField
      FieldName = 'CFG_PERPIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_PECOMI: TFloatField
      FieldName = 'CFG_PECOMI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_PEIPMF: TFloatField
      FieldName = 'CFG_PEIPMF'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_FUNCIONARIOS: TIntegerField
      FieldName = 'CFG_FUNCIONARIOS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SEQUENCIA: TIntegerField
      FieldName = 'CFG_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_ENTRADAS: TIntegerField
      FieldName = 'CFG_ENTRADAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_TRANSFERENCIA: TIntegerField
      FieldName = 'CFG_TRANSFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_RESP_EMPRESA: TIntegerField
      FieldName = 'CFG_RESP_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SCREEN_WIDTH: TIntegerField
      FieldName = 'CFG_SCREEN_WIDTH'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SCREEN_HEIGTH: TIntegerField
      FieldName = 'CFG_SCREEN_HEIGTH'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_FLVENDAESTOQUE: TStringField
      FieldName = 'CFG_FLVENDAESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryConfigCFG_CAIXA: TIntegerField
      FieldName = 'CFG_CAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_NATUREZA: TIntegerField
      FieldName = 'CFG_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_MODALIDADE: TIntegerField
      FieldName = 'CFG_MODALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_DATA_ATUAL: TDateField
      FieldName = 'CFG_DATA_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SECAO: TIntegerField
      FieldName = 'CFG_SECAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SUBSECAO: TIntegerField
      FieldName = 'CFG_SUBSECAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_VENDA: TIntegerField
      FieldName = 'CFG_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CREDITO: TIntegerField
      FieldName = 'CFG_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CEDENTE: TIntegerField
      FieldName = 'CFG_CEDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CIDADE: TIntegerField
      FieldName = 'CFG_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_SITUACAO: TIntegerField
      FieldName = 'CFG_SITUACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_ATIVIDADE: TIntegerField
      FieldName = 'CFG_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_CARGO: TIntegerField
      FieldName = 'CFG_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_TRIBUTACAO: TIntegerField
      FieldName = 'CFG_TRIBUTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_FLLOTE: TStringField
      FieldName = 'CFG_FLLOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryConfigCFG_FLVENDEDOR: TStringField
      FieldName = 'CFG_FLVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryConfigCFG_FLVENDEDOR_ITEM_VENDA: TStringField
      FieldName = 'CFG_FLVENDEDOR_ITEM_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryConfigCFG_IMPRESSORA: TIntegerField
      FieldName = 'CFG_IMPRESSORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_TAXA_SERVICO: TFloatField
      FieldName = 'CFG_TAXA_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryConfigCFG_MENSAGEM_CUPOM: TStringField
      FieldName = 'CFG_MENSAGEM_CUPOM'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object ZqryConfigCFG_SEQCREDITO: TIntegerField
      FieldName = 'CFG_SEQCREDITO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ZqryEmitente: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "EMITENTES" Where ("EMI_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryEmitenteEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryEmitenteEMI_RAZAOSOCIAL: TStringField
      FieldName = 'EMI_RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object ZqryEmitenteEMI_FANTASIA: TStringField
      FieldName = 'EMI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryEmitenteEMI_CNPJ: TStringField
      FieldName = 'EMI_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryEmitenteEMI_INSCRICAOESTADUAL: TStringField
      FieldName = 'EMI_INSCRICAOESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryEmitenteEMI_CNAE_FISCAL: TStringField
      FieldName = 'EMI_CNAE_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object ZqryEmitenteEMI_INSMUNICIPAL: TStringField
      FieldName = 'EMI_INSMUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ZqryEmitenteEMI_IEST: TStringField
      FieldName = 'EMI_IEST'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryEmitenteEMI_LOGRADOURO: TStringField
      FieldName = 'EMI_LOGRADOURO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryEmitenteEMI_NUMERO: TIntegerField
      FieldName = 'EMI_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_COMPLEMENTO: TStringField
      FieldName = 'EMI_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryEmitenteEMI_BAIRRO: TStringField
      FieldName = 'EMI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZqryEmitenteEMI_CEP: TStringField
      FieldName = 'EMI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryEmitenteEMI_CDPAIS: TIntegerField
      FieldName = 'EMI_CDPAIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_UF: TStringField
      FieldName = 'EMI_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryEmitenteEMI_CDCIDADE: TIntegerField
      FieldName = 'EMI_CDCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_TELEFONE: TStringField
      FieldName = 'EMI_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryEmitenteEMI_DTCADA: TDateField
      FieldName = 'EMI_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_HOCADA: TStringField
      FieldName = 'EMI_HOCADA'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 5
    end
    object ZqryEmitenteEMI_USCADA: TIntegerField
      FieldName = 'EMI_USCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_DTALTE: TDateField
      FieldName = 'EMI_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_HOALTE: TStringField
      FieldName = 'EMI_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryEmitenteEMI_USALTE: TIntegerField
      FieldName = 'EMI_USALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryEmitenteEMI_NUMCPF: TStringField
      FieldName = 'EMI_NUMCPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ZqryEmitenteEMI_NOME_RESPONSAVEL: TStringField
      FieldName = 'EMI_NOME_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryEmitenteEMI_FONE_RESPONSAVEL: TStringField
      FieldName = 'EMI_FONE_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object ZqryCliente: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "CLIENTES" Where ("CLI_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryClienteCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryClienteCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryClienteCLI_CIDADE: TIntegerField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_UFCLIENTE: TStringField
      FieldName = 'CLI_UFCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryClienteCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_FONE3: TStringField
      FieldName = 'CLI_FONE3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_RAMAL1: TStringField
      FieldName = 'CLI_RAMAL1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZqryClienteCLI_RAMAL2: TStringField
      FieldName = 'CLI_RAMAL2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZqryClienteCLI_RAMAL3: TStringField
      FieldName = 'CLI_RAMAL3'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZqryClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_INSCESTADUAL: TStringField
      FieldName = 'CLI_INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryClienteCLI_DATACAD: TDateField
      FieldName = 'CLI_DATACAD'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteSIT_CODIGO: TIntegerField
      FieldName = 'SIT_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_PAGINA: TStringField
      FieldName = 'CLI_PAGINA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryClienteATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_ORGAOEMISSOR: TStringField
      FieldName = 'CLI_ORGAOEMISSOR'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryClienteCLI_UFEMISSOR: TStringField
      FieldName = 'CLI_UFEMISSOR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryClienteCLI_DTANIVERSARIO: TDateField
      FieldName = 'CLI_DTANIVERSARIO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_TIPOCLIENTE: TIntegerField
      FieldName = 'CLI_TIPOCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_REGIAO: TIntegerField
      FieldName = 'CLI_REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_FLMATRIZ: TStringField
      FieldName = 'CLI_FLMATRIZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_USUARIO_INC: TIntegerField
      FieldName = 'CLI_USUARIO_INC'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_USUARIO_ALT: TIntegerField
      FieldName = 'CLI_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_DATA_INC: TDateField
      FieldName = 'CLI_DATA_INC'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_HORA_INC: TStringField
      FieldName = 'CLI_HORA_INC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryClienteCLI_DATA_ALT: TDateField
      FieldName = 'CLI_DATA_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_HORA_ALT: TStringField
      FieldName = 'CLI_HORA_ALT'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryClienteCLI_END_COBRANCA: TStringField
      FieldName = 'CLI_END_COBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_CODIGO_MATRIZ: TIntegerField
      FieldName = 'CLI_CODIGO_MATRIZ'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_PONTO_REFERENCIA: TStringField
      FieldName = 'CLI_PONTO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZqryClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ZqryClienteCLI_END_COBRANCA_NUM: TIntegerField
      FieldName = 'CLI_END_COBRANCA_NUM'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_END_COBRANCA_CEP: TStringField
      FieldName = 'CLI_END_COBRANCA_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryClienteCLI_END_COBRANCA_COMPL: TStringField
      FieldName = 'CLI_END_COBRANCA_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ZqryClienteCLI_END_COBRANCA_CIDADE: TIntegerField
      FieldName = 'CLI_END_COBRANCA_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_END_COBRANCA_UF: TStringField
      FieldName = 'CLI_END_COBRANCA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryClienteCLI_ESTADO_CIVIL: TIntegerField
      FieldName = 'CLI_ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_FATURAMENTO_MENSAL: TFloatField
      FieldName = 'CLI_FATURAMENTO_MENSAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_LIMITE_COMPRA: TFloatField
      FieldName = 'CLI_LIMITE_COMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_RESPONSAVEL_NOME: TStringField
      FieldName = 'CLI_RESPONSAVEL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryClienteCLI_RESPONSAVEL_CPF: TStringField
      FieldName = 'CLI_RESPONSAVEL_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ZqryClienteCLI_RESPONSAVEL_RG: TStringField
      FieldName = 'CLI_RESPONSAVEL_RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ZqryClienteCLI_RESPONSAVEL_TELEFONE: TStringField
      FieldName = 'CLI_RESPONSAVEL_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_RESPONSAVEL_EMAIL: TStringField
      FieldName = 'CLI_RESPONSAVEL_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ZqryClienteCLI_EMPRESA_NOME: TStringField
      FieldName = 'CLI_EMPRESA_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_EMPRESA_ENDERECO: TStringField
      FieldName = 'CLI_EMPRESA_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_EMPRESA_NUMERO: TIntegerField
      FieldName = 'CLI_EMPRESA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_EMPRESA_CIDADE: TIntegerField
      FieldName = 'CLI_EMPRESA_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_EMPRESA_UF: TStringField
      FieldName = 'CLI_EMPRESA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryClienteCLI_EMPRESA_CEP: TStringField
      FieldName = 'CLI_EMPRESA_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZqryClienteCLI_EMPRESA_BAIRRO: TStringField
      FieldName = 'CLI_EMPRESA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryClienteCLI_EMPRESA_TELEFONE: TStringField
      FieldName = 'CLI_EMPRESA_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_EMPRESA_RENDA: TFloatField
      FieldName = 'CLI_EMPRESA_RENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_DIAFATURA: TIntegerField
      FieldName = 'CLI_DIAFATURA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_TEMPO_RESIDENCIA: TStringField
      FieldName = 'CLI_TEMPO_RESIDENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZqryClienteCLI_CONJUGUE_NOME: TStringField
      FieldName = 'CLI_CONJUGUE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_CONJUGUE_CPF: TStringField
      FieldName = 'CLI_CONJUGUE_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ZqryClienteCLI_CONJUGUE_EMPRESA_NOME: TStringField
      FieldName = 'CLI_CONJUGUE_EMPRESA_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZqryClienteCLI_CONJUGUE_FUNCAO: TStringField
      FieldName = 'CLI_CONJUGUE_FUNCAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_CONJUGUE_RENDA: TFloatField
      FieldName = 'CLI_CONJUGUE_RENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_REFERENCIA1_NOME: TStringField
      FieldName = 'CLI_REFERENCIA1_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_REFERENCIA1_TELEFONE: TStringField
      FieldName = 'CLI_REFERENCIA1_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_REFERENCIA2_NOME: TStringField
      FieldName = 'CLI_REFERENCIA2_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_REFERENCIA2_TELEFONE: TStringField
      FieldName = 'CLI_REFERENCIA2_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZqryClienteCLI_OBSERVACAO: TMemoField
      FieldName = 'CLI_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZqryClienteCLI_CLIFOR: TStringField
      FieldName = 'CLI_CLIFOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryClienteCLI_END_COBRANCA_BAIRRO: TStringField
      FieldName = 'CLI_END_COBRANCA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryClienteCLI_CDBANC: TStringField
      FieldName = 'CLI_CDBANC'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZqryClienteCLI_AGENCIA: TStringField
      FieldName = 'CLI_AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ZqryClienteCLI_OPERACAO: TIntegerField
      FieldName = 'CLI_OPERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryClienteCLI_NRCONTA: TStringField
      FieldName = 'CLI_NRCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object ZqryClienteCLI_FLCLIFOR: TStringField
      FieldName = 'CLI_FLCLIFOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryClienteCLI_REFERENCIA3_NOME: TStringField
      FieldName = 'CLI_REFERENCIA3_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object ZqryClienteCLI_REFERENCIA3_TELEFONE: TStringField
      FieldName = 'CLI_REFERENCIA3_TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object ZqryProduto: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "PRODUTOS" Where ("PRO_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryProdutoPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object ZqryProdutoPRO_BARRAS: TStringField
      FieldName = 'PRO_BARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ZqryProdutoPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryProdutoFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_FRACAO: TIntegerField
      FieldName = 'PRO_FRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_VLCOMPRA: TFloatField
      FieldName = 'PRO_VLCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_VLCUSTO: TFloatField
      FieldName = 'PRO_VLCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_VLFRACAO: TFloatField
      FieldName = 'PRO_VLFRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_REDUCAOICMS: TFloatField
      FieldName = 'PRO_REDUCAOICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_TAXAS: TFloatField
      FieldName = 'PRO_TAXAS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_IPI: TFloatField
      FieldName = 'PRO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_FRETE: TFloatField
      FieldName = 'PRO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_LIMDESCONTO: TFloatField
      FieldName = 'PRO_LIMDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_COMISSIONADO: TStringField
      FieldName = 'PRO_COMISSIONADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryProdutoPRO_PERCENTUAL_DESCONTO: TFloatField
      FieldName = 'PRO_PERCENTUAL_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_DTALTERACAO: TDateField
      FieldName = 'PRO_DTALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoUNI_ARMAZENAMENTO: TStringField
      FieldName = 'UNI_ARMAZENAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoPRO_QUANT_ARMAZENAMENTO: TFloatField
      FieldName = 'PRO_QUANT_ARMAZENAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_LUCROBRUTO: TFloatField
      FieldName = 'PRO_LUCROBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_LUCROLIQUIDO: TFloatField
      FieldName = 'PRO_LUCROLIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_CONTROLELOTE: TStringField
      FieldName = 'PRO_CONTROLELOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryProdutoPRO_CODIGOBAIXA: TStringField
      FieldName = 'PRO_CODIGOBAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object ZqryProdutoPRO_HOREAJUTE: TStringField
      FieldName = 'PRO_HOREAJUTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryProdutoPRO_USUARIO_REAJUSTE: TIntegerField
      FieldName = 'PRO_USUARIO_REAJUSTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_VALOR_ANTERIOR: TFloatField
      FieldName = 'PRO_VALOR_ANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_COR: TIntegerField
      FieldName = 'PRO_COR'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryProdutoPRO_USUARIO_CAD: TIntegerField
      FieldName = 'PRO_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_HOCADA: TStringField
      FieldName = 'PRO_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryProdutoPRO_USUARIO_ALT: TIntegerField
      FieldName = 'PRO_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_HOALTE: TStringField
      FieldName = 'PRO_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryProdutoPRO_FLPROD: TStringField
      FieldName = 'PRO_FLPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryProdutoPRO_ANTECIPACAO_ICMS: TFloatField
      FieldName = 'PRO_ANTECIPACAO_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_CDAPLICACAO: TIntegerField
      FieldName = 'PRO_CDAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_CODLOCALIZACAO: TIntegerField
      FieldName = 'PRO_CODLOCALIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_COD_CLASSIFICAO_FISCAL: TIntegerField
      FieldName = 'PRO_COD_CLASSIFICAO_FISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_CODFABRICANTE: TIntegerField
      FieldName = 'PRO_CODFABRICANTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_BLOQUEIO_LIM_DESCONTO: TStringField
      FieldName = 'PRO_BLOQUEIO_LIM_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryProdutoPRO_PIS: TFloatField
      FieldName = 'PRO_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_COFINS: TFloatField
      FieldName = 'PRO_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_REVENDA_VALOR: TFloatField
      FieldName = 'PRO_REVENDA_VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_REVENDA_LUCRO_BRUTO: TFloatField
      FieldName = 'PRO_REVENDA_LUCRO_BRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_REVENDA_LUCRO_LIQUIDO: TFloatField
      FieldName = 'PRO_REVENDA_LUCRO_LIQUIDO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_PERC_COMISSAO: TFloatField
      FieldName = 'PRO_PERC_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryProdutoPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryProdutoPRO_IPI_CST: TStringField
      FieldName = 'PRO_IPI_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoPRO_ICMS_CST: TStringField
      FieldName = 'PRO_ICMS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoPRO_PIS_CST: TStringField
      FieldName = 'PRO_PIS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoPRO_COFINS_CST: TStringField
      FieldName = 'PRO_COFINS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryProdutoPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object ZqryUsuario: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "USUARIOS" Where ("USU_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 224
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryUsuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object ZqryUsuarioUSU_CARGO: TStringField
      FieldName = 'USU_CARGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_SNATUAL: TStringField
      FieldName = 'USU_SNATUAL'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object ZqryUsuarioUSU_TERMINAL: TStringField
      FieldName = 'USU_TERMINAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_DTATUAL: TDateField
      FieldName = 'USU_DTATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryUsuarioUSU_LOJA: TIntegerField
      FieldName = 'USU_LOJA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_FLSUPER: TStringField
      FieldName = 'USU_FLSUPER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryUsuarioUSU_FLCAIXA: TStringField
      FieldName = 'USU_FLCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryUsuarioUSU_LIMITEDESCONTO: TFloatField
      FieldName = 'USU_LIMITEDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_GRUPO: TIntegerField
      FieldName = 'USU_GRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_FLEXCLUSAO: TStringField
      FieldName = 'USU_FLEXCLUSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZqryUsuarioUSU_LICHEQ: TFloatField
      FieldName = 'USU_LICHEQ'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_ECF: TIntegerField
      FieldName = 'USU_ECF'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_FLIMPRESSORA: TIntegerField
      FieldName = 'USU_FLIMPRESSORA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryUsuarioUSU_PASTA_CUPOM: TStringField
      FieldName = 'USU_PASTA_CUPOM'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object ZqryUsuarioUSU_PASTA_ECF: TStringField
      FieldName = 'USU_PASTA_ECF'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = ZqryConfig
    Options = [poAllowCommandText]
    OnGetTableName = dspConfigGetTableName
    Left = 96
    Top = 56
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 152
    Top = 72
    object cdsConfigCFG_CODIGO: TIntegerField
      FieldName = 'CFG_CODIGO'
      Required = True
    end
    object cdsConfigCFG_EMITENTE: TIntegerField
      FieldName = 'CFG_EMITENTE'
    end
    object cdsConfigCFG_CLIENTE: TIntegerField
      FieldName = 'CFG_CLIENTE'
    end
    object cdsConfigCFG_PRODUTO: TIntegerField
      FieldName = 'CFG_PRODUTO'
    end
    object cdsConfigCFG_TRANSPORTADORA: TIntegerField
      FieldName = 'CFG_TRANSPORTADORA'
    end
    object cdsConfigCFG_NOTAFISCAL: TIntegerField
      FieldName = 'CFG_NOTAFISCAL'
    end
    object cdsConfigCFG_USUARIO: TIntegerField
      FieldName = 'CFG_USUARIO'
    end
    object cdsConfigCFG_SEQTAREFAUSUARIOS: TIntegerField
      FieldName = 'CFG_SEQTAREFAUSUARIOS'
    end
    object cdsConfigCFG_FORNECEDOR: TIntegerField
      FieldName = 'CFG_FORNECEDOR'
    end
    object cdsConfigCFG_CODPAIS: TIntegerField
      FieldName = 'CFG_CODPAIS'
    end
    object cdsConfigCFG_PECOFINS: TFloatField
      FieldName = 'CFG_PECOFINS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsConfigCFG_PERPIS: TFloatField
      FieldName = 'CFG_PERPIS'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsConfigCFG_PECOMI: TFloatField
      FieldName = 'CFG_PECOMI'
    end
    object cdsConfigCFG_PEIPMF: TFloatField
      FieldName = 'CFG_PEIPMF'
    end
    object cdsConfigCFG_FUNCIONARIOS: TIntegerField
      FieldName = 'CFG_FUNCIONARIOS'
    end
    object cdsConfigCFG_SEQUENCIA: TIntegerField
      FieldName = 'CFG_SEQUENCIA'
    end
    object cdsConfigCFG_ENTRADAS: TIntegerField
      FieldName = 'CFG_ENTRADAS'
    end
    object cdsConfigCFG_TRANSFERENCIA: TIntegerField
      FieldName = 'CFG_TRANSFERENCIA'
    end
    object cdsConfigCFG_RESP_EMPRESA: TIntegerField
      FieldName = 'CFG_RESP_EMPRESA'
    end
    object cdsConfigCFG_SCREEN_WIDTH: TIntegerField
      FieldName = 'CFG_SCREEN_WIDTH'
    end
    object cdsConfigCFG_SCREEN_HEIGTH: TIntegerField
      FieldName = 'CFG_SCREEN_HEIGTH'
    end
    object cdsConfigCFG_FLVENDAESTOQUE: TStringField
      FieldName = 'CFG_FLVENDAESTOQUE'
      Size = 1
    end
    object cdsConfigCFG_CAIXA: TIntegerField
      FieldName = 'CFG_CAIXA'
    end
    object cdsConfigCFG_NATUREZA: TIntegerField
      FieldName = 'CFG_NATUREZA'
    end
    object cdsConfigCFG_MODALIDADE: TIntegerField
      FieldName = 'CFG_MODALIDADE'
    end
    object cdsConfigCFG_DATA_ATUAL: TDateField
      FieldName = 'CFG_DATA_ATUAL'
    end
    object cdsConfigCFG_SECAO: TIntegerField
      FieldName = 'CFG_SECAO'
    end
    object cdsConfigCFG_SUBSECAO: TIntegerField
      FieldName = 'CFG_SUBSECAO'
    end
    object cdsConfigCFG_VENDA: TIntegerField
      FieldName = 'CFG_VENDA'
    end
    object cdsConfigCFG_CREDITO: TIntegerField
      FieldName = 'CFG_CREDITO'
    end
    object cdsConfigCFG_CEDENTE: TIntegerField
      FieldName = 'CFG_CEDENTE'
    end
    object cdsConfigCFG_CIDADE: TIntegerField
      FieldName = 'CFG_CIDADE'
    end
    object cdsConfigCFG_SITUACAO: TIntegerField
      FieldName = 'CFG_SITUACAO'
    end
    object cdsConfigCFG_ATIVIDADE: TIntegerField
      FieldName = 'CFG_ATIVIDADE'
    end
    object cdsConfigCFG_CARGO: TIntegerField
      FieldName = 'CFG_CARGO'
    end
    object cdsConfigCFG_TRIBUTACAO: TIntegerField
      FieldName = 'CFG_TRIBUTACAO'
    end
    object cdsConfigCFG_FLLOTE: TStringField
      FieldName = 'CFG_FLLOTE'
      Size = 1
    end
    object cdsConfigCFG_FLVENDEDOR: TStringField
      FieldName = 'CFG_FLVENDEDOR'
      Size = 1
    end
    object cdsConfigCFG_FLVENDEDOR_ITEM_VENDA: TStringField
      FieldName = 'CFG_FLVENDEDOR_ITEM_VENDA'
      Size = 1
    end
    object cdsConfigCFG_IMPRESSORA: TIntegerField
      FieldName = 'CFG_IMPRESSORA'
    end
    object cdsConfigCFG_TAXA_SERVICO: TFloatField
      FieldName = 'CFG_TAXA_SERVICO'
    end
    object cdsConfigCFG_MENSAGEM_CUPOM: TStringField
      FieldName = 'CFG_MENSAGEM_CUPOM'
      Size = 48
    end
    object cdsConfigCFG_SEQCREDITO: TIntegerField
      FieldName = 'CFG_SEQCREDITO'
    end
  end
  object dspEmitente: TDataSetProvider
    DataSet = ZqryEmitente
    Options = [poAllowCommandText]
    OnGetTableName = dspEmitenteGetTableName
    Left = 96
    Top = 112
  end
  object dspProduto: TDataSetProvider
    DataSet = ZqryProduto
    Options = [poAllowCommandText]
    OnGetTableName = dspProdutoGetTableName
    Left = 88
    Top = 232
  end
  object dspCliente: TDataSetProvider
    DataSet = ZqryCliente
    Options = [poAllowCommandText]
    OnGetTableName = dspClienteGetTableName
    Left = 88
    Top = 176
  end
  object dspUsuario: TDataSetProvider
    DataSet = ZqryUsuario
    Options = [poAllowCommandText]
    OnGetTableName = dspUsuarioGetTableName
    Left = 224
    Top = 96
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 144
    Top = 184
    object cdsClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
      EditFormat = '0000000'
    end
    object cdsClienteCLI_TIPOPESSOA: TStringField
      FieldName = 'CLI_TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsClienteCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClienteCLI_CIDADE: TIntegerField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_UFCLIENTE: TStringField
      FieldName = 'CLI_UFCLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClienteCLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_FONE2: TStringField
      FieldName = 'CLI_FONE2'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_FONE3: TStringField
      FieldName = 'CLI_FONE3'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_RAMAL1: TStringField
      FieldName = 'CLI_RAMAL1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsClienteCLI_RAMAL2: TStringField
      FieldName = 'CLI_RAMAL2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsClienteCLI_RAMAL3: TStringField
      FieldName = 'CLI_RAMAL3'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsClienteCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_INSCESTADUAL: TStringField
      FieldName = 'CLI_INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsClienteCLI_DATACAD: TDateField
      FieldName = 'CLI_DATACAD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteSIT_CODIGO: TIntegerField
      FieldName = 'SIT_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_PAGINA: TStringField
      FieldName = 'CLI_PAGINA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClienteATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_ORGAOEMISSOR: TStringField
      FieldName = 'CLI_ORGAOEMISSOR'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsClienteCLI_UFEMISSOR: TStringField
      FieldName = 'CLI_UFEMISSOR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClienteCLI_DTANIVERSARIO: TDateField
      FieldName = 'CLI_DTANIVERSARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_TIPOCLIENTE: TIntegerField
      FieldName = 'CLI_TIPOCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_REGIAO: TIntegerField
      FieldName = 'CLI_REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_FLMATRIZ: TStringField
      FieldName = 'CLI_FLMATRIZ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsClienteCLI_USUARIO_INC: TIntegerField
      FieldName = 'CLI_USUARIO_INC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_USUARIO_ALT: TIntegerField
      FieldName = 'CLI_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_DATA_INC: TDateField
      FieldName = 'CLI_DATA_INC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_HORA_INC: TStringField
      FieldName = 'CLI_HORA_INC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsClienteCLI_DATA_ALT: TDateField
      FieldName = 'CLI_DATA_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_HORA_ALT: TStringField
      FieldName = 'CLI_HORA_ALT'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsClienteCLI_END_COBRANCA: TStringField
      FieldName = 'CLI_END_COBRANCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_CODIGO_MATRIZ: TIntegerField
      FieldName = 'CLI_CODIGO_MATRIZ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_PONTO_REFERENCIA: TStringField
      FieldName = 'CLI_PONTO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClienteCLI_END_COBRANCA_NUM: TIntegerField
      FieldName = 'CLI_END_COBRANCA_NUM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_END_COBRANCA_CEP: TStringField
      FieldName = 'CLI_END_COBRANCA_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsClienteCLI_END_COBRANCA_COMPL: TStringField
      FieldName = 'CLI_END_COBRANCA_COMPL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsClienteCLI_END_COBRANCA_CIDADE: TIntegerField
      FieldName = 'CLI_END_COBRANCA_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_END_COBRANCA_UF: TStringField
      FieldName = 'CLI_END_COBRANCA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClienteCLI_ESTADO_CIVIL: TIntegerField
      FieldName = 'CLI_ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_FATURAMENTO_MENSAL: TFloatField
      FieldName = 'CLI_FATURAMENTO_MENSAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsClienteCLI_LIMITE_COMPRA: TFloatField
      FieldName = 'CLI_LIMITE_COMPRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsClienteCLI_RESPONSAVEL_NOME: TStringField
      FieldName = 'CLI_RESPONSAVEL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClienteCLI_RESPONSAVEL_CPF: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_RESPONSAVEL_CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object cdsClienteCLI_RESPONSAVEL_RG: TStringField
      FieldName = 'CLI_RESPONSAVEL_RG'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsClienteCLI_RESPONSAVEL_TELEFONE: TStringField
      FieldName = 'CLI_RESPONSAVEL_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_RESPONSAVEL_EMAIL: TStringField
      FieldName = 'CLI_RESPONSAVEL_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsClienteCLI_EMPRESA_NOME: TStringField
      FieldName = 'CLI_EMPRESA_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_EMPRESA_ENDERECO: TStringField
      FieldName = 'CLI_EMPRESA_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_EMPRESA_NUMERO: TIntegerField
      FieldName = 'CLI_EMPRESA_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_EMPRESA_CIDADE: TIntegerField
      FieldName = 'CLI_EMPRESA_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_EMPRESA_UF: TStringField
      FieldName = 'CLI_EMPRESA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClienteCLI_EMPRESA_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_EMPRESA_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsClienteCLI_EMPRESA_BAIRRO: TStringField
      FieldName = 'CLI_EMPRESA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClienteCLI_EMPRESA_TELEFONE: TStringField
      FieldName = 'CLI_EMPRESA_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_EMPRESA_RENDA: TFloatField
      FieldName = 'CLI_EMPRESA_RENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsClienteCLI_DIAFATURA: TIntegerField
      FieldName = 'CLI_DIAFATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_TEMPO_RESIDENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_TEMPO_RESIDENCIA'
      ProviderFlags = [pfInUpdate]
      EditMask = '##-##;0;_'
      Size = 4
    end
    object cdsClienteCLI_CONJUGUE_NOME: TStringField
      FieldName = 'CLI_CONJUGUE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_CONJUGUE_CPF: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CONJUGUE_CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object cdsClienteCLI_CONJUGUE_EMPRESA_NOME: TStringField
      FieldName = 'CLI_CONJUGUE_EMPRESA_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClienteCLI_CONJUGUE_FUNCAO: TStringField
      FieldName = 'CLI_CONJUGUE_FUNCAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCLI_CONJUGUE_RENDA: TFloatField
      FieldName = 'CLI_CONJUGUE_RENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsClienteCLI_REFERENCIA1_NOME: TStringField
      FieldName = 'CLI_REFERENCIA1_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_REFERENCIA1_TELEFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_REFERENCIA1_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_REFERENCIA2_NOME: TStringField
      FieldName = 'CLI_REFERENCIA2_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClienteCLI_REFERENCIA2_TELEFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_REFERENCIA2_TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsClienteCLI_OBSERVACAO: TMemoField
      FieldName = 'CLI_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsClienteCLI_CLIFOR: TStringField
      FieldName = 'CLI_CLIFOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsClienteCLI_END_COBRANCA_BAIRRO: TStringField
      FieldName = 'CLI_END_COBRANCA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsClienteCLI_NMCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMCIDADE'
      LookupDataSet = cdsListaCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CLI_CIDADE'
      Size = 60
      Lookup = True
    end
    object cdsClienteCLI_CIDADE_COBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_CIDADE_COBRANCA'
      LookupDataSet = cdsListaCidCobraca
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CLI_END_COBRANCA_CIDADE'
      Size = 60
      Lookup = True
    end
    object cdsClienteCLI_EMPCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_EMPCIDADE'
      LookupDataSet = cdsListaCidEmpresa
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'CLI_EMPRESA_CIDADE'
      Size = 60
      Lookup = True
    end
    object cdsClienteCLI_NMESTCIVIL: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMESTCIVIL'
      LookupDataSet = cdsListaEstCivil
      LookupKeyFields = 'ECV_CODIGO'
      LookupResultField = 'ECV_DESCRICAO'
      KeyFields = 'CLI_ESTADO_CIVIL'
      Lookup = True
    end
    object cdsClienteCLI_NMTIPOCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMTIPOCLIE'
      LookupDataSet = cdsListaTipoCliente
      LookupKeyFields = 'TPC_CODIGO'
      LookupResultField = 'TPC_DESCRICAO'
      KeyFields = 'CLI_TIPOCLIENTE'
      Lookup = True
    end
    object cdsClienteCLI_CDBANC: TStringField
      FieldName = 'CLI_CDBANC'
      Size = 3
    end
    object cdsClienteCLI_AGENCIA: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_AGENCIA'
      EditMask = '#####-A;0;_'
      Size = 6
    end
    object cdsClienteCLI_OPERACAO: TIntegerField
      FieldName = 'CLI_OPERACAO'
    end
    object cdsClienteCLI_NRCONTA: TStringField
      FieldName = 'CLI_NRCONTA'
      Size = 12
    end
    object cdsClienteCLI_NMBANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMBANCO'
      LookupDataSet = cdsListaBancos
      LookupKeyFields = 'BAN_CODIGO'
      LookupResultField = 'BAN_NOME'
      KeyFields = 'CLI_CDBANC'
      Size = 40
      Lookup = True
    end
    object cdsClienteCLI_NOME_SITUACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NOME_SITUACAO'
      LookupDataSet = cdsListaSituacoaClie
      LookupKeyFields = 'SIT_CODIGO'
      LookupResultField = 'SIT_NOME'
      KeyFields = 'SIT_CODIGO'
      Size = 40
      Lookup = True
    end
    object cdsClienteCLI_NMATIVIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMATIVIDADE'
      LookupDataSet = cdsListaAtividades
      LookupKeyFields = 'ATI_CODIGO'
      LookupResultField = 'ATI_NOME'
      KeyFields = 'ATI_CODIGO'
      Size = 40
      Lookup = True
    end
    object cdsClienteCLI_FLCLIFOR: TStringField
      FieldName = 'CLI_FLCLIFOR'
      Size = 1
    end
    object cdsClienteCLI_REFERENCIA3_NOME: TStringField
      FieldName = 'CLI_REFERENCIA3_NOME'
      Size = 50
    end
    object cdsClienteCLI_REFERENCIA3_TELEFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_REFERENCIA3_TELEFONE'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
  end
  object cdsEmitente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmitente'
    Left = 152
    Top = 128
    object cdsEmitenteEMI_CODIGO: TIntegerField
      FieldName = 'EMI_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsEmitenteEMI_RAZAOSOCIAL: TStringField
      FieldName = 'EMI_RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsEmitenteEMI_FANTASIA: TStringField
      FieldName = 'EMI_FANTASIA'
      Size = 50
    end
    object cdsEmitenteEMI_CNPJ: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_CNPJ'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsEmitenteEMI_INSCRICAOESTADUAL: TStringField
      FieldName = 'EMI_INSCRICAOESTADUAL'
      Size = 14
    end
    object cdsEmitenteEMI_CNAE_FISCAL: TStringField
      FieldName = 'EMI_CNAE_FISCAL'
      Size = 7
    end
    object cdsEmitenteEMI_INSMUNICIPAL: TStringField
      FieldName = 'EMI_INSMUNICIPAL'
      Size = 15
    end
    object cdsEmitenteEMI_IEST: TStringField
      FieldName = 'EMI_IEST'
      Size = 14
    end
    object cdsEmitenteEMI_LOGRADOURO: TStringField
      FieldName = 'EMI_LOGRADOURO'
      Size = 60
    end
    object cdsEmitenteEMI_NUMERO: TIntegerField
      FieldName = 'EMI_NUMERO'
    end
    object cdsEmitenteEMI_COMPLEMENTO: TStringField
      FieldName = 'EMI_COMPLEMENTO'
      Size = 60
    end
    object cdsEmitenteEMI_BAIRRO: TStringField
      FieldName = 'EMI_BAIRRO'
      Size = 40
    end
    object cdsEmitenteEMI_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsEmitenteEMI_CDPAIS: TIntegerField
      FieldName = 'EMI_CDPAIS'
    end
    object cdsEmitenteEMI_UF: TStringField
      FieldName = 'EMI_UF'
      Size = 2
    end
    object cdsEmitenteEMI_CDCIDADE: TIntegerField
      FieldName = 'EMI_CDCIDADE'
    end
    object cdsEmitenteEMI_TELEFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_TELEFONE'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsEmitenteEMI_DTCADA: TDateField
      FieldName = 'EMI_DTCADA'
    end
    object cdsEmitenteEMI_HOCADA: TStringField
      FieldName = 'EMI_HOCADA'
      Size = 5
    end
    object cdsEmitenteEMI_USCADA: TIntegerField
      FieldName = 'EMI_USCADA'
    end
    object cdsEmitenteEMI_DTALTE: TDateField
      FieldName = 'EMI_DTALTE'
    end
    object cdsEmitenteEMI_HOALTE: TStringField
      FieldName = 'EMI_HOALTE'
      Size = 5
    end
    object cdsEmitenteEMI_USALTE: TIntegerField
      FieldName = 'EMI_USALTE'
    end
    object cdsEmitenteEMI_NMPAIS: TStringField
      FieldKind = fkLookup
      FieldName = 'EMI_NMPAIS'
      LookupDataSet = cdsListaPaises
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'EMI_CDPAIS'
      Size = 60
      Lookup = True
    end
    object cdsEmitenteEMI_NMCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'EMI_NMCIDADE'
      LookupDataSet = cdsListaCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'EMI_CDCIDADE'
      Size = 60
      Lookup = True
    end
    object cdsEmitenteEMI_NUMCPF: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_NUMCPF'
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object cdsEmitenteEMI_NOME_RESPONSAVEL: TStringField
      FieldName = 'EMI_NOME_RESPONSAVEL'
      Size = 60
    end
    object cdsEmitenteEMI_FONE_RESPONSAVEL: TStringField
      Alignment = taRightJustify
      FieldName = 'EMI_FONE_RESPONSAVEL'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspProduto'
    OnCalcFields = cdsProdutoCalcFields
    Left = 152
    Top = 240
    object cdsProdutoPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsProdutoPRO_BARRAS: TStringField
      FieldName = 'PRO_BARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsProdutoPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsProdutoFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_FRACAO: TIntegerField
      FieldName = 'PRO_FRACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_VLCOMPRA: TFloatField
      FieldName = 'PRO_VLCOMPRA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_VLCUSTO: TFloatField
      FieldName = 'PRO_VLCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_VLVENDA: TFloatField
      FieldName = 'PRO_VLVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#000'
      EditFormat = '###,##0.#000'
    end
    object cdsProdutoPRO_VLFRACAO: TFloatField
      FieldName = 'PRO_VLFRACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_REDUCAOICMS: TFloatField
      FieldName = 'PRO_REDUCAOICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_TAXAS: TFloatField
      FieldName = 'PRO_TAXAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_IPI: TFloatField
      FieldName = 'PRO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_FRETE: TFloatField
      FieldName = 'PRO_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_LIMDESCONTO: TFloatField
      FieldName = 'PRO_LIMDESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_COMISSIONADO: TStringField
      FieldName = 'PRO_COMISSIONADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdutoPRO_PERCENTUAL_DESCONTO: TFloatField
      FieldName = 'PRO_PERCENTUAL_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_DTCADASTRO: TDateField
      FieldName = 'PRO_DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_DTALTERACAO: TDateField
      FieldName = 'PRO_DTALTERACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoUNI_ARMAZENAMENTO: TStringField
      FieldName = 'UNI_ARMAZENAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoPRO_QUANT_ARMAZENAMENTO: TFloatField
      FieldName = 'PRO_QUANT_ARMAZENAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_LUCROBRUTO: TFloatField
      FieldName = 'PRO_LUCROBRUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_LUCROLIQUIDO: TFloatField
      FieldName = 'PRO_LUCROLIQUIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_CONTROLELOTE: TStringField
      FieldName = 'PRO_CONTROLELOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdutoPRO_CODIGOBAIXA: TStringField
      FieldName = 'PRO_CODIGOBAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsProdutoPRO_HOREAJUTE: TStringField
      FieldName = 'PRO_HOREAJUTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsProdutoPRO_USUARIO_REAJUSTE: TIntegerField
      FieldName = 'PRO_USUARIO_REAJUSTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_VALOR_ANTERIOR: TFloatField
      FieldName = 'PRO_VALOR_ANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_COR: TIntegerField
      FieldName = 'PRO_COR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsProdutoPRO_USUARIO_CAD: TIntegerField
      FieldName = 'PRO_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_HOCADA: TStringField
      FieldName = 'PRO_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsProdutoPRO_USUARIO_ALT: TIntegerField
      FieldName = 'PRO_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_HOALTE: TStringField
      FieldName = 'PRO_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsProdutoPRO_FLPROD: TStringField
      FieldName = 'PRO_FLPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdutoPRO_ANTECIPACAO_ICMS: TFloatField
      FieldName = 'PRO_ANTECIPACAO_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_CDAPLICACAO: TIntegerField
      FieldName = 'PRO_CDAPLICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_CODLOCALIZACAO: TIntegerField
      FieldName = 'PRO_CODLOCALIZACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_COD_CLASSIFICAO_FISCAL: TIntegerField
      FieldName = 'PRO_COD_CLASSIFICAO_FISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_PESO: TFloatField
      FieldName = 'PRO_PESO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_CODFABRICANTE: TIntegerField
      FieldName = 'PRO_CODFABRICANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_BLOQUEIO_LIM_DESCONTO: TStringField
      FieldName = 'PRO_BLOQUEIO_LIM_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdutoPRO_PIS: TFloatField
      FieldName = 'PRO_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_COFINS: TFloatField
      FieldName = 'PRO_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_REVENDA_VALOR: TFloatField
      FieldName = 'PRO_REVENDA_VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_REVENDA_LUCRO_BRUTO: TFloatField
      FieldName = 'PRO_REVENDA_LUCRO_BRUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_REVENDA_LUCRO_LIQUIDO: TFloatField
      FieldName = 'PRO_REVENDA_LUCRO_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsProdutoPRO_PERC_COMISSAO: TFloatField
      FieldName = 'PRO_PERC_COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutoPRO_ORIGEM: TStringField
      FieldName = 'PRO_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdutoPRO_IPI_CST: TStringField
      FieldName = 'PRO_IPI_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoPRO_ICMS_CST: TStringField
      FieldName = 'PRO_ICMS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoPRO_PIS_CST: TStringField
      FieldName = 'PRO_PIS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoPRO_COFINS_CST: TStringField
      FieldName = 'PRO_COFINS_CST'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsProdutoPRO_NMFORN: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRO_NMFORN'
      Size = 50
      Calculated = True
    end
    object cdsProdutoPRO_NOME_APLICACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NOME_APLICACAO'
      LookupDataSet = cdsListaAplicacao
      LookupKeyFields = 'APP_CODIGO'
      LookupResultField = 'APP_DESCRICAO'
      KeyFields = 'PRO_CDAPLICACAO'
      Size = 50
      Lookup = True
    end
    object cdsProdutoPRO_LOCALIZACAO: TStringField
      FieldName = 'PRO_LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsProdutoPRO_NMLOCA: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NMLOCA'
      LookupDataSet = cdsListaLocalizacao
      LookupKeyFields = 'LCP_CODIGO'
      LookupResultField = 'LCP_DESCRICAO'
      KeyFields = 'PRO_CODLOCALIZACAO'
      Size = 80
      Lookup = True
    end
    object cdsProdutoPRO_SECAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_SECAO'
      LookupDataSet = cdsListaSecoes
      LookupKeyFields = 'SEC_CODIGO'
      LookupResultField = 'SEC_DESCRICAO'
      KeyFields = 'SEC_CODIGO'
      Size = 30
      Lookup = True
    end
    object cdsProdutoSUB_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'SUB_NOME'
      LookupDataSet = cdsListaSubSecoes
      LookupKeyFields = 'SUB_CODIGO'
      LookupResultField = 'SUB_DESCRICAO'
      KeyFields = 'SUB_CODIGO'
      Size = 30
      Lookup = True
    end
    object cdsProdutoPRO_NOME_CLASSFISCAL: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NOME_CLASSFISCAL'
      LookupDataSet = cdsListaClassfiscal
      LookupKeyFields = 'CLF_CODIGO'
      LookupResultField = 'CLF_DESCRICAO'
      KeyFields = 'PRO_COD_CLASSIFICAO_FISCAL'
      Size = 50
      Lookup = True
    end
    object cdsProdutoPRO_NMORIG: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NMORIG'
      LookupDataSet = cdsListaOrigem
      LookupKeyFields = 'ORI_CODIGO'
      LookupResultField = 'ORI_DESCRICAO'
      KeyFields = 'PRO_ORIGEM'
      Size = 50
      Lookup = True
    end
    object cdsProdutoPRO_NMUNID: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NMUNID'
      LookupDataSet = cdsListaUnidades
      LookupKeyFields = 'UNI_CODIGO'
      LookupResultField = 'UNI_DESCRICAO'
      KeyFields = 'UNI_CODIGO'
      Size = 2
      Lookup = True
    end
    object cdsProdutoPRO_NMUNDARM: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NMUNDARM'
      LookupDataSet = cdsListaUndArm
      LookupKeyFields = 'UNI_CODIGO'
      LookupResultField = 'UNI_DESCRICAO'
      KeyFields = 'UNI_ARMAZENAMENTO'
      Size = 2
      Lookup = True
    end
    object cdsProdutoTRI_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'TRI_NOME'
      LookupDataSet = cdsListaTributacao
      LookupKeyFields = 'TRI_CODIGO'
      LookupResultField = 'TRI_DESCRICAO'
      KeyFields = 'TRI_CODIGO'
      Lookup = True
    end
    object cdsProdutoPRO_NMTT_CST: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NMTT_CST'
      LookupDataSet = cdsSituacaoTribICMS
      LookupKeyFields = 'TPT_CODIGO'
      LookupResultField = 'TPT_DESCRICAO'
      KeyFields = 'PRO_ICMS_CST'
      Size = 80
      Lookup = True
    end
    object cdsProdutoPRO_CST_IPI: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_CST_IPI'
      LookupDataSet = cdsListaCST_IPI
      LookupKeyFields = 'IPI_CODIGO'
      LookupResultField = 'IPI_DESCRICAO'
      KeyFields = 'PRO_IPI_CST'
      Size = 60
      Lookup = True
    end
    object cdsProdutoPRO_CST_PIS: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_CST_PIS'
      LookupDataSet = cdsListaCST_PIS
      LookupKeyFields = 'PIS_CODIGO'
      LookupResultField = 'PIS_DESCRICAO'
      KeyFields = 'PRO_PIS_CST'
      Size = 110
      Lookup = True
    end
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuario'
    Left = 224
    Top = 144
    object cdsUsuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object cdsUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
    end
    object cdsUsuarioUSU_CARGO: TStringField
      FieldName = 'USU_CARGO'
    end
    object cdsUsuarioUSU_SNATUAL: TStringField
      FieldName = 'USU_SNATUAL'
      Size = 6
    end
    object cdsUsuarioUSU_TERMINAL: TStringField
      FieldName = 'USU_TERMINAL'
    end
    object cdsUsuarioUSU_DTATUAL: TDateField
      FieldName = 'USU_DTATUAL'
    end
    object cdsUsuarioUSU_ADMIN: TStringField
      FieldName = 'USU_ADMIN'
      Size = 1
    end
    object cdsUsuarioUSU_LOJA: TIntegerField
      FieldName = 'USU_LOJA'
    end
    object cdsUsuarioUSU_FLSUPER: TStringField
      FieldName = 'USU_FLSUPER'
      Size = 1
    end
    object cdsUsuarioUSU_FLCAIXA: TStringField
      FieldName = 'USU_FLCAIXA'
      Size = 1
    end
    object cdsUsuarioUSU_LIMITEDESCONTO: TFloatField
      FieldName = 'USU_LIMITEDESCONTO'
    end
    object cdsUsuarioUSU_GRUPO: TIntegerField
      FieldName = 'USU_GRUPO'
    end
    object cdsUsuarioUSU_FLEXCLUSAO: TStringField
      FieldName = 'USU_FLEXCLUSAO'
      Size = 1
    end
    object cdsUsuarioUSU_LICHEQ: TFloatField
      FieldName = 'USU_LICHEQ'
    end
    object cdsUsuarioUSU_ECF: TIntegerField
      FieldName = 'USU_ECF'
    end
    object cdsUsuarioUSU_FLIMPRESSORA: TIntegerField
      FieldName = 'USU_FLIMPRESSORA'
    end
    object cdsUsuarioUSU_PASTA_CUPOM: TStringField
      FieldName = 'USU_PASTA_CUPOM'
      Size = 80
    end
    object cdsUsuarioUSU_PASTA_ECF: TStringField
      FieldName = 'USU_PASTA_ECF'
      Size = 80
    end
  end
  object ZqryPadrao: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select "PIS_CODIGO", "PIS_DESCRICAO" from "TABELA_PIS_CST"')
    Params = <>
    Left = 320
    Top = 32
  end
  object dspPadrao: TDataSetProvider
    DataSet = ZqryPadrao
    Options = [poAllowCommandText]
    Left = 400
    Top = 32
  end
  object cdsListaPaises: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "PAIS" order by "PAI_NOME"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 320
    Top = 88
    object cdsListaPaisesPAI_CODIGO: TIntegerField
      FieldName = 'PAI_CODIGO'
      Required = True
    end
    object cdsListaPaisesPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
  end
  object cdsListaCidades: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from "CIDADES" where ("CID_UFCIDADE" = :pUF) order by "' +
      'CID_NOME"'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 408
    Top = 88
    object cdsListaCidadesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object cdsListaCidadesCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 60
    end
    object cdsListaCidadesCID_CODIBGE: TIntegerField
      FieldName = 'CID_CODIBGE'
    end
    object cdsListaCidadesCID_UFCIDADE: TStringField
      FieldName = 'CID_UFCIDADE'
      Size = 2
    end
  end
  object cdsListaDocumentos: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from "TIPO_DOCUMENTO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 320
    Top = 136
    object cdsListaDocumentosTPD_CODIGO: TIntegerField
      FieldName = 'TPD_CODIGO'
      Required = True
    end
    object cdsListaDocumentosTPD_DESCRICAO: TStringField
      FieldName = 'TPD_DESCRICAO'
      Required = True
      Size = 5
    end
  end
  object cdsListaUnidades: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "UNIDADES"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 416
    Top = 144
    object cdsListaUnidadesUNI_CODIGO: TStringField
      FieldName = 'UNI_CODIGO'
      Required = True
      Size = 2
    end
    object cdsListaUnidadesUNI_DESCRICAO: TStringField
      FieldName = 'UNI_DESCRICAO'
      Required = True
    end
  end
  object cdsListaTributacao: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "TRI_CODIGO", "TRI_DESCRICAO" from "TRIBUTACOES" order by' +
      ' "TRI_CODIGO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 416
    Top = 200
    object cdsListaTributacaoTRI_CODIGO: TIntegerField
      FieldName = 'TRI_CODIGO'
      Required = True
    end
    object cdsListaTributacaoTRI_DESCRICAO: TStringField
      FieldName = 'TRI_DESCRICAO'
    end
  end
  object ZqryTransp: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "TRANSPORTADORAS" Where ("TRA_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryTranspTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryTranspTRA_RAZAONOME: TStringField
      FieldName = 'TRA_RAZAONOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object ZqryTranspTRA_TPDOCUMENTO: TIntegerField
      FieldName = 'TRA_TPDOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_NR_DOCUMENTO: TStringField
      FieldName = 'TRA_NR_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryTranspTRA_INSCRICAO_ESTADUAL: TStringField
      FieldName = 'TRA_INSCRICAO_ESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryTranspTRA_ENDERECO: TStringField
      FieldName = 'TRA_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryTranspTRA_UF: TStringField
      FieldName = 'TRA_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZqryTranspTRA_CDCIDADE: TIntegerField
      FieldName = 'TRA_CDCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_IDEMITENTE: TIntegerField
      FieldName = 'TRA_IDEMITENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_VERSAO: TStringField
      FieldName = 'TRA_VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object ZqryTranspTRA_DTCADA: TDateField
      FieldName = 'TRA_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_HOCADA: TStringField
      FieldName = 'TRA_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryTranspTRA_USCADA: TIntegerField
      FieldName = 'TRA_USCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_DTALTE: TDateField
      FieldName = 'TRA_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZqryTranspTRA_HOALTE: TStringField
      FieldName = 'TRA_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZqryTranspTRA_USALTE: TIntegerField
      FieldName = 'TRA_USALTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTransp: TDataSetProvider
    DataSet = ZqryTransp
    Options = [poAllowCommandText]
    OnGetTableName = dspTranspGetTableName
    Left = 88
    Top = 280
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspTransp'
    Left = 144
    Top = 296
    object cdsTranspTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsTranspTRA_RAZAONOME: TStringField
      FieldName = 'TRA_RAZAONOME'
      Required = True
      Size = 60
    end
    object cdsTranspTRA_TPDOCUMENTO: TIntegerField
      FieldName = 'TRA_TPDOCUMENTO'
    end
    object cdsTranspTRA_NR_DOCUMENTO: TStringField
      FieldName = 'TRA_NR_DOCUMENTO'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsTranspTRA_INSCRICAO_ESTADUAL: TStringField
      FieldName = 'TRA_INSCRICAO_ESTADUAL'
      Size = 14
    end
    object cdsTranspTRA_ENDERECO: TStringField
      FieldName = 'TRA_ENDERECO'
      Size = 60
    end
    object cdsTranspTRA_UF: TStringField
      FieldName = 'TRA_UF'
      Size = 2
    end
    object cdsTranspTRA_CDCIDADE: TIntegerField
      FieldName = 'TRA_CDCIDADE'
    end
    object cdsTranspTRA_IDEMITENTE: TIntegerField
      FieldName = 'TRA_IDEMITENTE'
    end
    object cdsTranspTRA_VERSAO: TStringField
      FieldName = 'TRA_VERSAO'
      Size = 60
    end
    object cdsTranspTRA_DTCADA: TDateField
      FieldName = 'TRA_DTCADA'
    end
    object cdsTranspTRA_HOCADA: TStringField
      FieldName = 'TRA_HOCADA'
      Size = 5
    end
    object cdsTranspTRA_USCADA: TIntegerField
      FieldName = 'TRA_USCADA'
    end
    object cdsTranspTRA_DTALTE: TDateField
      FieldName = 'TRA_DTALTE'
    end
    object cdsTranspTRA_HOALTE: TStringField
      FieldName = 'TRA_HOALTE'
      Size = 5
    end
    object cdsTranspTRA_USALTE: TIntegerField
      FieldName = 'TRA_USALTE'
    end
    object cdsTranspTRA_TPDOCU: TStringField
      FieldKind = fkLookup
      FieldName = 'TRA_TPDOCU'
      LookupDataSet = cdsListaDocumentos
      LookupKeyFields = 'TPD_CODIGO'
      LookupResultField = 'TPD_DESCRICAO'
      KeyFields = 'TRA_TPDOCUMENTO'
      Size = 5
      Lookup = True
    end
    object cdsTranspTRA_NMCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'TRA_NMCIDADE'
      LookupDataSet = cdsListaCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'TRA_CDCIDADE'
      Size = 60
      Lookup = True
    end
  end
  object cdsListaTipoTributacao: TClientDataSet
    Aggregates = <>
    CommandText = 'select "TPT_CODIGO", "TPT_DESCRICAO" from "TIPOS_TRIBUTACAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 312
    Top = 192
    object cdsListaTipoTributacaoTPT_CODIGO: TStringField
      FieldName = 'TPT_CODIGO'
      Required = True
      Size = 7
    end
    object cdsListaTipoTributacaoTPT_DESCRICAO: TStringField
      FieldName = 'TPT_DESCRICAO'
      Required = True
      Size = 80
    end
  end
  object cdsListaOrigem: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "ORIGEM"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 312
    Top = 240
    object cdsListaOrigemORI_CODIGO: TIntegerField
      FieldName = 'ORI_CODIGO'
      Required = True
    end
    object cdsListaOrigemORI_DESCRICAO: TStringField
      FieldName = 'ORI_DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object cdsListaModaBaseCalculo: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "MODA_BASE_CALCULO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 416
    Top = 256
    object cdsListaModaBaseCalculoMBC_CODIGO: TIntegerField
      FieldName = 'MBC_CODIGO'
      Required = True
    end
    object cdsListaModaBaseCalculoMBC_DESCRICAO: TStringField
      FieldName = 'MBC_DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object cdsListaModaBaseCalculoST: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "MODA_BASECALCULO_ICMSST"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 408
    Top = 304
    object cdsListaModaBaseCalculoSTMDD_CODIGO: TIntegerField
      FieldName = 'MDD_CODIGO'
      Required = True
    end
    object cdsListaModaBaseCalculoSTMDD_DESCRICAO: TStringField
      FieldName = 'MDD_DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object ZqryFornecedor: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "FORNECEDORES" Where ("FOR_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 32
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZqryFornecedorFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryFornecedorFOR_CNPJ: TStringField
      FieldName = 'FOR_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZqryFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object ZqryFornecedorFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = ZqryFornecedor
    Options = [poAllowCommandText]
    Left = 88
    Top = 336
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspFornecedor'
    Left = 152
    Top = 352
    object cdsFornecedorFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsFornecedorFOR_CNPJ: TStringField
      Alignment = taRightJustify
      FieldName = 'FOR_CNPJ'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object cdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Required = True
      Size = 50
    end
    object cdsFornecedorFOR_FANTASIA: TStringField
      FieldName = 'FOR_FANTASIA'
      Size = 50
    end
  end
  object cdsListaCFOP: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "CFOP_CODIGO", "CFOP_DESCRICAO" from "TABELA_CFOP"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 312
    Top = 288
    object cdsListaCFOPCFOP_CODIGO: TIntegerField
      FieldName = 'CFOP_CODIGO'
      Required = True
    end
    object cdsListaCFOPCFOP_DESCRICAO: TStringField
      FieldName = 'CFOP_DESCRICAO'
      Size = 140
    end
  end
  object cdsListaFPagamento: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "FORMA_PAGAMENTO" order by "FPG_CODIGO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 304
    Top = 352
    object cdsListaFPagamentoFPG_CODIGO: TIntegerField
      FieldName = 'FPG_CODIGO'
      Required = True
    end
    object cdsListaFPagamentoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Required = True
    end
  end
  object cdsListaEmissao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "FORMA_EMISSAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 400
    Top = 352
    object cdsListaEmissaoFME_CODIGO: TIntegerField
      FieldName = 'FME_CODIGO'
      Required = True
    end
    object cdsListaEmissaoFME_DESCRICAO: TStringField
      FieldName = 'FME_DESCRICAO'
      Size = 120
    end
  end
  object cdsListaFinalidadeEmissao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "FINALIDADES_EMISSAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 536
    Top = 344
    object cdsListaFinalidadeEmissaoFNE_CODIGO: TIntegerField
      FieldName = 'FNE_CODIGO'
      Required = True
    end
    object cdsListaFinalidadeEmissaoFNE_DESCRICAO: TStringField
      FieldName = 'FNE_DESCRICAO'
    end
  end
  object ZqryUF: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "TABELA_UF" Where ("UF_CODIGO" = :pUF)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pUF'
        ParamType = ptInput
      end>
    Left = 24
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pUF'
        ParamType = ptInput
      end>
    object ZqryUFUF_CODIGO: TIntegerField
      FieldName = 'UF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZqryUFUF_DESCRICAO: TStringField
      FieldName = 'UF_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspUF: TDataSetProvider
    DataSet = ZqryUF
    Options = [poAllowCommandText]
    OnGetTableName = dspUFGetTableName
    Left = 72
    Top = 408
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUF'
    Left = 128
    Top = 408
    object cdsUFUF_CODIGO: TIntegerField
      FieldName = 'UF_CODIGO'
      Required = True
      DisplayFormat = '00'
    end
    object cdsUFUF_DESCRICAO: TStringField
      FieldName = 'UF_DESCRICAO'
      Required = True
    end
  end
  object cdsListaNaturezaOpe: TClientDataSet
    Aggregates = <>
    CommandText = 'select "NAT_CODIGO","NAT_DESCRICAO" from "NATUREZA_OPERACAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 536
    Top = 136
    object cdsListaNaturezaOpeNAT_CODIGO: TIntegerField
      FieldName = 'NAT_CODIGO'
      Required = True
    end
    object cdsListaNaturezaOpeNAT_DESCRICAO: TStringField
      FieldName = 'NAT_DESCRICAO'
      Size = 60
    end
  end
  object cdsListaCidEmpresa: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from "CIDADES" where ("CID_UFCIDADE" = :pUF) order by "' +
      'CID_NOME"'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 528
    Top = 40
    object IntegerField2: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 60
    end
    object IntegerField3: TIntegerField
      FieldName = 'CID_CODIBGE'
    end
    object StringField3: TStringField
      FieldName = 'CID_UFCIDADE'
      Size = 2
    end
  end
  object cdsListaCidCobraca: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from "CIDADES" where ("CID_UFCIDADE" = :pUF) order by "' +
      'CID_NOME"'
    Params = <
      item
        DataType = ftUnknown
        Name = 'pUF'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPadrao'
    Left = 528
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 60
    end
    object IntegerField4: TIntegerField
      FieldName = 'CID_CODIBGE'
    end
    object StringField4: TStringField
      FieldName = 'CID_UFCIDADE'
      Size = 2
    end
  end
  object cdsListaEstCivil: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "ESTADO_CIVIL"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 536
    Top = 184
    object cdsListaEstCivilECV_CODIGO: TIntegerField
      FieldName = 'ECV_CODIGO'
      Required = True
    end
    object cdsListaEstCivilECV_DESCRICAO: TStringField
      FieldName = 'ECV_DESCRICAO'
    end
  end
  object cdsListaSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 536
    Top = 232
  end
  object cdsListaSubSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 280
  end
  object cdsListaAplicacao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "APP_CODIGO","APP_DESCRICAO" from "APLICACAO_PRODUTOS"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 536
    Top = 400
    object cdsListaAplicacaoAPP_CODIGO: TIntegerField
      FieldName = 'APP_CODIGO'
      Required = True
    end
    object cdsListaAplicacaoAPP_DESCRICAO: TStringField
      FieldName = 'APP_DESCRICAO'
      Size = 50
    end
  end
  object cdsListaLocalizacao: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "LCP_CODIGO","LCP_DESCRICAO" from "LOCALIZACAO_PRODUTOS"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 408
    Top = 400
    object cdsListaLocalizacaoLCP_CODIGO: TIntegerField
      FieldName = 'LCP_CODIGO'
      Required = True
    end
    object cdsListaLocalizacaoLCP_DESCRICAO: TStringField
      FieldName = 'LCP_DESCRICAO'
      Size = 80
    end
  end
  object cdsListaSecoes: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "SEC_CODIGO", "SEC_DESCRICAO" from "SECAO" order by "SEC_' +
      'DESCRICAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 200
    Top = 408
    object cdsListaSecoesSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
      Required = True
    end
    object cdsListaSecoesSEC_DESCRICAO: TStringField
      FieldName = 'SEC_DESCRICAO'
      Size = 30
    end
  end
  object cdsListaSubSecoes: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "SUB_CODIGO", "SUB_DESCRICAO", "SEC_CODIGO" from "SUBSECA' +
      'O" Where ("SEC_CODIGO" = :pCODIGO) order by "SUB_DESCRICAO"'
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 296
    Top = 408
    object cdsListaSubSecoesSUB_CODIGO: TIntegerField
      FieldName = 'SUB_CODIGO'
      Required = True
    end
    object cdsListaSubSecoesSUB_DESCRICAO: TStringField
      FieldName = 'SUB_DESCRICAO'
      Size = 30
    end
    object cdsListaSubSecoesSEC_CODIGO: TIntegerField
      FieldName = 'SEC_CODIGO'
    end
  end
  object cdsListaClassfiscal: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "CLF_CODIGO", "CLF_DESCRICAO" from "CLASSIFICACAO_FISCAL"' +
      ' '
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 224
    Top = 248
    object cdsListaClassfiscalCLF_CODIGO: TIntegerField
      FieldName = 'CLF_CODIGO'
      Required = True
    end
    object cdsListaClassfiscalCLF_DESCRICAO: TStringField
      FieldName = 'CLF_DESCRICAO'
      Size = 50
    end
  end
  object cdsListaUndArm: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from "UNIDADES"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 472
    Top = 432
    object StringField5: TStringField
      FieldName = 'UNI_CODIGO'
      Required = True
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'UNI_DESCRICAO'
      Required = True
    end
  end
  object cdsSituacaoTribICMS: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "TPT_CODIGO", "TPT_DESCRICAO" from "TIPOS_TRIBUTACAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 32
    Top = 456
    object cdsSituacaoTribICMSTPT_CODIGO: TStringField
      FieldName = 'TPT_CODIGO'
      Required = True
      Size = 7
    end
    object cdsSituacaoTribICMSTPT_DESCRICAO: TStringField
      FieldName = 'TPT_DESCRICAO'
      Required = True
      Size = 80
    end
  end
  object cdsListaCST_IPI: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "IPI_CODIGO", "IPI_DESCRICAO" from "TABELA_IPI_CST"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 128
    Top = 456
    object cdsListaCST_IPIIPI_CODIGO: TIntegerField
      FieldName = 'IPI_CODIGO'
      Required = True
    end
    object cdsListaCST_IPIIPI_DESCRICAO: TStringField
      FieldName = 'IPI_DESCRICAO'
      Size = 60
    end
  end
  object cdsListaCST_PIS: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "PIS_CODIGO", "PIS_DESCRICAO" from "TABELA_PIS_CST"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 208
    Top = 464
    object cdsListaCST_PISPIS_CODIGO: TIntegerField
      FieldName = 'PIS_CODIGO'
      Required = True
    end
    object cdsListaCST_PISPIS_DESCRICAO: TStringField
      FieldName = 'PIS_DESCRICAO'
      Size = 110
    end
  end
  object cdsListaTipoCliente: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "TPC_CODIGO","TPC_DESCRICAO" from "TIPOCLIENTE"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 352
    Top = 456
    object cdsListaTipoClienteTPC_CODIGO: TIntegerField
      FieldName = 'TPC_CODIGO'
      Required = True
    end
    object cdsListaTipoClienteTPC_DESCRICAO: TStringField
      FieldName = 'TPC_DESCRICAO'
    end
  end
  object cdsListaBancos: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "BAN_CODIGO","BAN_NOME" from "BANCOS"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 544
    Top = 456
    object cdsListaBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 3
    end
    object cdsListaBancosBAN_NOME: TStringField
      FieldName = 'BAN_NOME'
      Size = 40
    end
  end
  object cdsListaAtividades: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "ATI_CODIGO", "ATI_NOME" from "ATIVIDADES"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 664
    Top = 56
    object cdsListaAtividadesATI_CODIGO: TIntegerField
      FieldName = 'ATI_CODIGO'
      Required = True
    end
    object cdsListaAtividadesATI_NOME: TStringField
      FieldName = 'ATI_NOME'
      Size = 40
    end
  end
  object cdsListaSituacoaClie: TClientDataSet
    Aggregates = <>
    CommandText = 'Select "SIT_CODIGO", "SIT_NOME" from "SITUACAO_CLIENTE"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 664
    Top = 112
    object cdsListaSituacoaClieSIT_CODIGO: TIntegerField
      FieldName = 'SIT_CODIGO'
      Required = True
    end
    object cdsListaSituacoaClieSIT_NOME: TStringField
      FieldName = 'SIT_NOME'
      Size = 40
    end
  end
  object ZQryPromocoes: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "PROMOCAO" where ("PRM_IDPRODUTO" = :pPRODUTO)')
    Params = <
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    Left = 632
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    object ZQryPromocoesPRM_IDPRODUTO: TStringField
      FieldName = 'PRM_IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object ZQryPromocoesPRM_VLSEGU: TFloatField
      FieldName = 'PRM_VLSEGU'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLTERC: TFloatField
      FieldName = 'PRM_VLTERC'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLQUAR: TFloatField
      FieldName = 'PRM_VLQUAR'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLQUIN: TFloatField
      FieldName = 'PRM_VLQUIN'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLSEXT: TFloatField
      FieldName = 'PRM_VLSEXT'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLSABA: TFloatField
      FieldName = 'PRM_VLSABA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VLDOMI: TFloatField
      FieldName = 'PRM_VLDOMI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_DATAINICIAL: TDateField
      FieldName = 'PRM_DATAINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_DATA_FINAL: TDateField
      FieldName = 'PRM_DATA_FINAL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VALORAVISTA: TFloatField
      FieldName = 'PRM_VALORAVISTA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_VALORAPRAZO: TFloatField
      FieldName = 'PRM_VALORAPRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_DTCADA: TDateField
      FieldName = 'PRM_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_CADUSU: TIntegerField
      FieldName = 'PRM_CADUSU'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_DTALTE: TDateField
      FieldName = 'PRM_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryPromocoesPRM_ALTUSU: TIntegerField
      FieldName = 'PRM_ALTUSU'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspPromocoes: TDataSetProvider
    DataSet = ZQryPromocoes
    Options = [poAllowCommandText]
    Left = 632
    Top = 216
  end
  object cdsPromocoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pPRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPromocoes'
    OnCalcFields = cdsPromocoesCalcFields
    Left = 632
    Top = 272
    object cdsPromocoesPRM_IDPRODUTO: TStringField
      FieldName = 'PRM_IDPRODUTO'
      Required = True
      Size = 13
    end
    object cdsPromocoesPRM_VLSEGU: TFloatField
      FieldName = 'PRM_VLSEGU'
    end
    object cdsPromocoesPRM_VLTERC: TFloatField
      FieldName = 'PRM_VLTERC'
    end
    object cdsPromocoesPRM_VLQUAR: TFloatField
      FieldName = 'PRM_VLQUAR'
    end
    object cdsPromocoesPRM_VLQUIN: TFloatField
      FieldName = 'PRM_VLQUIN'
    end
    object cdsPromocoesPRM_VLSEXT: TFloatField
      FieldName = 'PRM_VLSEXT'
    end
    object cdsPromocoesPRM_VLSABA: TFloatField
      FieldName = 'PRM_VLSABA'
    end
    object cdsPromocoesPRM_VLDOMI: TFloatField
      FieldName = 'PRM_VLDOMI'
    end
    object cdsPromocoesPRM_DATAINICIAL: TDateField
      FieldName = 'PRM_DATAINICIAL'
    end
    object cdsPromocoesPRM_DATA_FINAL: TDateField
      FieldName = 'PRM_DATA_FINAL'
    end
    object cdsPromocoesPRM_VALORAVISTA: TFloatField
      FieldName = 'PRM_VALORAVISTA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsPromocoesPRM_VALORAPRAZO: TFloatField
      FieldName = 'PRM_VALORAPRAZO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsPromocoesPRM_DTCADA: TDateField
      FieldName = 'PRM_DTCADA'
    end
    object cdsPromocoesPRM_CADUSU: TIntegerField
      FieldName = 'PRM_CADUSU'
    end
    object cdsPromocoesPRM_DTALTE: TDateField
      FieldName = 'PRM_DTALTE'
    end
    object cdsPromocoesPRM_ALTUSU: TIntegerField
      FieldName = 'PRM_ALTUSU'
    end
    object cdsPromocoesPRM_NMPROD: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRM_NMPROD'
      Size = 60
      Calculated = True
    end
  end
  object ZQryFuncionario: TZQuery
    Connection = ZConexao
    SQL.Strings = (
      'Select * from "FUNCIONARIOS" Where ("FUN_CODIGO" = :pCODIGO)')
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    Left = 648
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    object ZQryFuncionarioFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ZQryFuncionarioFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryFuncionarioFUN_ENDERECO: TStringField
      FieldName = 'FUN_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryFuncionarioFUN_BAIRRO: TStringField
      FieldName = 'FUN_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_CIDADE: TIntegerField
      FieldName = 'FUN_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_UFFUNC: TStringField
      FieldName = 'FUN_UFFUNC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryFuncionarioFUN_NATUREZA: TStringField
      FieldName = 'FUN_NATUREZA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_CEP: TStringField
      FieldName = 'FUN_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZQryFuncionarioFUN_FONE: TStringField
      FieldName = 'FUN_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ZQryFuncionarioFUN_TPFUNC: TStringField
      FieldName = 'FUN_TPFUNC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object ZQryFuncionarioFUN_PECOMI: TFloatField
      FieldName = 'FUN_PECOMI'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_DTNASCIMENTO: TDateField
      FieldName = 'FUN_DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_DTADMICAO: TDateField
      FieldName = 'FUN_DTADMICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_DTDEMICAO: TDateField
      FieldName = 'FUN_DTDEMICAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_VLDEBITO: TFloatField
      FieldName = 'FUN_VLDEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_CPFCGC: TStringField
      FieldName = 'FUN_CPFCGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object ZQryFuncionarioFUN_IDENTIDADE: TStringField
      FieldName = 'FUN_IDENTIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ZQryFuncionarioFUN_ORIDEN: TStringField
      FieldName = 'FUN_ORIDEN'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_UFIDEN: TStringField
      FieldName = 'FUN_UFIDEN'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryFuncionarioFUN_NRCART: TStringField
      FieldName = 'FUN_NRCART'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object ZQryFuncionarioFUN_SECART: TStringField
      FieldName = 'FUN_SECART'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object ZQryFuncionarioFUN_UFCART: TStringField
      FieldName = 'FUN_UFCART'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object ZQryFuncionarioFUN_CAREMI: TStringField
      FieldName = 'FUN_CAREMI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ZQryFuncionarioFUN_TITULO: TStringField
      FieldName = 'FUN_TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object ZQryFuncionarioFUN_CDSECA: TStringField
      FieldName = 'FUN_CDSECA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_CDZONA: TStringField
      FieldName = 'FUN_CDZONA'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ZQryFuncionarioFUN_VLSALA: TFloatField
      FieldName = 'FUN_VLSALA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_LIONIB: TStringField
      FieldName = 'FUN_LIONIB'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_HOENT1: TStringField
      FieldName = 'FUN_HOENT1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_HOSAI1: TStringField
      FieldName = 'FUN_HOSAI1'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_HOENT2: TStringField
      FieldName = 'FUN_HOENT2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_HOSAI2: TStringField
      FieldName = 'FUN_HOSAI2'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object ZQryFuncionarioFUN_NOMPAI: TStringField
      FieldName = 'FUN_NOMPAI'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryFuncionarioFUN_NOMMAE: TStringField
      FieldName = 'FUN_NOMMAE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object ZQryFuncionarioFUN_COMPO1: TStringField
      FieldName = 'FUN_COMPO1'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_COMPO2: TStringField
      FieldName = 'FUN_COMPO2'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_COMPO3: TStringField
      FieldName = 'FUN_COMPO3'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_ASSID1: TStringField
      FieldName = 'FUN_ASSID1'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_ASSID2: TStringField
      FieldName = 'FUN_ASSID2'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_ASSID3: TStringField
      FieldName = 'FUN_ASSID3'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_HONES1: TStringField
      FieldName = 'FUN_HONES1'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_HONES2: TStringField
      FieldName = 'FUN_HONES2'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_HONES3: TStringField
      FieldName = 'FUN_HONES3'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_CARAT1: TStringField
      FieldName = 'FUN_CARAT1'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_CARAT2: TStringField
      FieldName = 'FUN_CARAT2'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_CARAT3: TStringField
      FieldName = 'FUN_CARAT3'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object ZQryFuncionarioFUN_COMPR1: TMemoField
      FieldName = 'FUN_COMPR1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryFuncionarioFUN_RESPO1: TMemoField
      FieldName = 'FUN_RESPO1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryFuncionarioFUN_ATEST1: TMemoField
      FieldName = 'FUN_ATEST1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ZQryFuncionarioFUN_FUNCAO: TIntegerField
      FieldName = 'FUN_FUNCAO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_RGEMIS: TDateField
      FieldName = 'FUN_RGEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_CODCARGO: TIntegerField
      FieldName = 'FUN_CODCARGO'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_ESTADOCIVIL: TIntegerField
      FieldName = 'FUN_ESTADOCIVIL'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_DTCADA: TDateField
      FieldName = 'FUN_DTCADA'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_HOCADA: TStringField
      FieldName = 'FUN_HOCADA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryFuncionarioFUN_USUARIO_CAD: TIntegerField
      FieldName = 'FUN_USUARIO_CAD'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_DTALTE: TDateField
      FieldName = 'FUN_DTALTE'
      ProviderFlags = [pfInUpdate]
    end
    object ZQryFuncionarioFUN_HOALTE: TStringField
      FieldName = 'FUN_HOALTE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object ZQryFuncionarioFUN_USUARIO_ALT: TIntegerField
      FieldName = 'FUN_USUARIO_ALT'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = ZQryFuncionario
    Options = [poAllowCommandText]
    Left = 640
    Top = 376
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspFuncionario'
    Left = 616
    Top = 424
    object cdsFuncionarioFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      Required = True
      DisplayFormat = '00000'
    end
    object cdsFuncionarioFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 40
    end
    object cdsFuncionarioFUN_ENDERECO: TStringField
      FieldName = 'FUN_ENDERECO'
      Size = 40
    end
    object cdsFuncionarioFUN_BAIRRO: TStringField
      FieldName = 'FUN_BAIRRO'
    end
    object cdsFuncionarioFUN_CIDADE: TIntegerField
      FieldName = 'FUN_CIDADE'
    end
    object cdsFuncionarioFUN_UFFUNC: TStringField
      FieldName = 'FUN_UFFUNC'
      Size = 2
    end
    object cdsFuncionarioFUN_NATUREZA: TStringField
      FieldName = 'FUN_NATUREZA'
    end
    object cdsFuncionarioFUN_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'FUN_CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object cdsFuncionarioFUN_FONE: TStringField
      FieldName = 'FUN_FONE'
      EditMask = '(##) ####-####;0;_'
      Size = 10
    end
    object cdsFuncionarioFUN_TPFUNC: TStringField
      FieldName = 'FUN_TPFUNC'
      Size = 1
    end
    object cdsFuncionarioFUN_PECOMI: TFloatField
      FieldName = 'FUN_PECOMI'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object cdsFuncionarioFUN_DTNASCIMENTO: TDateField
      FieldName = 'FUN_DTNASCIMENTO'
      DisplayFormat = '##0.#0'
      EditMask = '##0.#0'
    end
    object cdsFuncionarioFUN_DTADMICAO: TDateField
      FieldName = 'FUN_DTADMICAO'
      DisplayFormat = '##0.#0'
      EditMask = '##0.#0'
    end
    object cdsFuncionarioFUN_DTDEMICAO: TDateField
      FieldName = 'FUN_DTDEMICAO'
      DisplayFormat = '##0.#0'
      EditMask = '##0.#0'
    end
    object cdsFuncionarioFUN_VLDEBITO: TFloatField
      FieldName = 'FUN_VLDEBITO'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsFuncionarioFUN_CPFCGC: TStringField
      Alignment = taRightJustify
      FieldName = 'FUN_CPFCGC'
      EditMask = '###.###.###-##;0;_'
      Size = 14
    end
    object cdsFuncionarioFUN_IDENTIDADE: TStringField
      FieldName = 'FUN_IDENTIDADE'
      Size = 11
    end
    object cdsFuncionarioFUN_ORIDEN: TStringField
      FieldName = 'FUN_ORIDEN'
      Size = 4
    end
    object cdsFuncionarioFUN_UFIDEN: TStringField
      FieldName = 'FUN_UFIDEN'
      Size = 2
    end
    object cdsFuncionarioFUN_NRCART: TStringField
      FieldName = 'FUN_NRCART'
      Size = 7
    end
    object cdsFuncionarioFUN_SECART: TStringField
      FieldName = 'FUN_SECART'
      Size = 7
    end
    object cdsFuncionarioFUN_UFCART: TStringField
      FieldName = 'FUN_UFCART'
      Size = 2
    end
    object cdsFuncionarioFUN_CAREMI: TStringField
      FieldName = 'FUN_CAREMI'
      Size = 8
    end
    object cdsFuncionarioFUN_TITULO: TStringField
      FieldName = 'FUN_TITULO'
      Size = 12
    end
    object cdsFuncionarioFUN_CDSECA: TStringField
      FieldName = 'FUN_CDSECA'
      Size = 4
    end
    object cdsFuncionarioFUN_CDZONA: TStringField
      FieldName = 'FUN_CDZONA'
      Size = 3
    end
    object cdsFuncionarioFUN_VLSALA: TFloatField
      FieldName = 'FUN_VLSALA'
      DisplayFormat = '###,##0.#0'
      EditFormat = '###,##0.#0'
    end
    object cdsFuncionarioFUN_LIONIB: TStringField
      FieldName = 'FUN_LIONIB'
    end
    object cdsFuncionarioFUN_HOENT1: TStringField
      FieldName = 'FUN_HOENT1'
      EditMask = '##:##;0;_'
      Size = 4
    end
    object cdsFuncionarioFUN_HOSAI1: TStringField
      FieldName = 'FUN_HOSAI1'
      EditMask = '##:##;0;_'
      Size = 4
    end
    object cdsFuncionarioFUN_HOENT2: TStringField
      FieldName = 'FUN_HOENT2'
      EditMask = '##:##;0;_'
      Size = 4
    end
    object cdsFuncionarioFUN_HOSAI2: TStringField
      FieldName = 'FUN_HOSAI2'
      EditMask = '##:##;0;_'
      Size = 4
    end
    object cdsFuncionarioFUN_NOMPAI: TStringField
      FieldName = 'FUN_NOMPAI'
      Size = 40
    end
    object cdsFuncionarioFUN_NOMMAE: TStringField
      FieldName = 'FUN_NOMMAE'
      Size = 40
    end
    object cdsFuncionarioFUN_COMPO1: TStringField
      FieldName = 'FUN_COMPO1'
      Size = 70
    end
    object cdsFuncionarioFUN_COMPO2: TStringField
      FieldName = 'FUN_COMPO2'
      Size = 70
    end
    object cdsFuncionarioFUN_COMPO3: TStringField
      FieldName = 'FUN_COMPO3'
      Size = 70
    end
    object cdsFuncionarioFUN_ASSID1: TStringField
      FieldName = 'FUN_ASSID1'
      Size = 70
    end
    object cdsFuncionarioFUN_ASSID2: TStringField
      FieldName = 'FUN_ASSID2'
      Size = 70
    end
    object cdsFuncionarioFUN_ASSID3: TStringField
      FieldName = 'FUN_ASSID3'
      Size = 70
    end
    object cdsFuncionarioFUN_HONES1: TStringField
      FieldName = 'FUN_HONES1'
      Size = 70
    end
    object cdsFuncionarioFUN_HONES2: TStringField
      FieldName = 'FUN_HONES2'
      Size = 70
    end
    object cdsFuncionarioFUN_HONES3: TStringField
      FieldName = 'FUN_HONES3'
      Size = 70
    end
    object cdsFuncionarioFUN_CARAT1: TStringField
      FieldName = 'FUN_CARAT1'
      Size = 70
    end
    object cdsFuncionarioFUN_CARAT2: TStringField
      FieldName = 'FUN_CARAT2'
      Size = 70
    end
    object cdsFuncionarioFUN_CARAT3: TStringField
      FieldName = 'FUN_CARAT3'
      Size = 70
    end
    object cdsFuncionarioFUN_COMPR1: TMemoField
      FieldName = 'FUN_COMPR1'
      BlobType = ftMemo
    end
    object cdsFuncionarioFUN_RESPO1: TMemoField
      FieldName = 'FUN_RESPO1'
      BlobType = ftMemo
    end
    object cdsFuncionarioFUN_ATEST1: TMemoField
      FieldName = 'FUN_ATEST1'
      BlobType = ftMemo
    end
    object cdsFuncionarioFUN_FUNCAO: TIntegerField
      FieldName = 'FUN_FUNCAO'
    end
    object cdsFuncionarioFUN_RGEMIS: TDateField
      FieldName = 'FUN_RGEMIS'
    end
    object cdsFuncionarioFUN_CODCARGO: TIntegerField
      FieldName = 'FUN_CODCARGO'
    end
    object cdsFuncionarioFUN_ESTADOCIVIL: TIntegerField
      FieldName = 'FUN_ESTADOCIVIL'
    end
    object cdsFuncionarioFUN_DTCADA: TDateField
      FieldName = 'FUN_DTCADA'
    end
    object cdsFuncionarioFUN_HOCADA: TStringField
      FieldName = 'FUN_HOCADA'
      Size = 5
    end
    object cdsFuncionarioFUN_USUARIO_CAD: TIntegerField
      FieldName = 'FUN_USUARIO_CAD'
    end
    object cdsFuncionarioFUN_DTALTE: TDateField
      FieldName = 'FUN_DTALTE'
    end
    object cdsFuncionarioFUN_HOALTE: TStringField
      FieldName = 'FUN_HOALTE'
      Size = 5
    end
    object cdsFuncionarioFUN_USUARIO_ALT: TIntegerField
      FieldName = 'FUN_USUARIO_ALT'
    end
    object cdsFuncionarioFUN_NMCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMCIDADE'
      LookupDataSet = cdsListaCidades
      LookupKeyFields = 'CID_CODIGO'
      LookupResultField = 'CID_NOME'
      KeyFields = 'FUN_CIDADE'
      Size = 60
      Lookup = True
    end
    object cdsFuncionarioFUN_NMCARGO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMCARGO'
      LookupDataSet = cdsListaCargos
      LookupKeyFields = 'CAR_CODIGO'
      LookupResultField = 'CAR_DESCRICAO'
      KeyFields = 'FUN_CODCARGO'
      Size = 40
      Lookup = True
    end
    object cdsFuncionarioFUN_NMESTCIVIL: TStringField
      FieldKind = fkLookup
      FieldName = 'FUN_NMESTCIVIL'
      LookupDataSet = cdsListaEstCivil
      LookupKeyFields = 'ECV_CODIGO'
      LookupResultField = 'ECV_DESCRICAO'
      KeyFields = 'FUN_ESTADOCIVIL'
      Lookup = True
    end
  end
  object cdsListaCargos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "CAR_CODIGO", "CAR_DESCRICAO" from "CARGOS" order by "CAR' +
      '_DESCRICAO"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 224
    Top = 320
    object cdsListaCargosCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Required = True
    end
    object cdsListaCargosCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      Size = 40
    end
  end
  object cdsListaFuncionarios: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select "FUN_CODIGO", "FUN_NOME" from "FUNCIONARIOS" order by "FU' +
      'N_NOME"'
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 440
    Top = 480
    object cdsListaFuncionariosFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      Required = True
    end
    object cdsListaFuncionariosFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 40
    end
  end
  object cdsListaLotesProd: TClientDataSet
    Aggregates = <>
    CommandText = 
      'Select * from "LOTES" Where ("LOT_PROCODIGO" = :pCODIGO) AND ("L' +
      'OT_QUANTIDADE" > :pQUANTIDADE)'
    Params = <
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pQUANTIDADE'
        ParamType = ptInput
      end>
    ProviderName = 'dspPadrao'
    Left = 680
    Top = 456
    object cdsListaLotesProdLOT_PROCODIGO: TStringField
      FieldName = 'LOT_PROCODIGO'
      Required = True
      Size = 13
    end
    object cdsListaLotesProdLOT_NRLOTE: TStringField
      FieldName = 'LOT_NRLOTE'
      Required = True
    end
    object cdsListaLotesProdLOT_QUANTIDADE: TFloatField
      FieldName = 'LOT_QUANTIDADE'
      DisplayFormat = '##,##0.#00'
      EditFormat = '##,##0.#00'
    end
    object cdsListaLotesProdLOT_DTVENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'LOT_DTVENCIMENTO'
      EditMask = '##/##/####;1;_'
    end
  end
end

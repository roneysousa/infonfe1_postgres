unit udmCadAuxiliar;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmCadAuxiliar = class(TDataModule)
    ZQryModalidade: TZQuery;
    ZQryContaReceber: TZQuery;
    dspModalidade: TDataSetProvider;
    cdsModalidade: TClientDataSet;
    ZQryModalidadeMOD_CODIGO: TIntegerField;
    ZQryModalidadeMOD_NOME: TStringField;
    ZQryModalidadeMOD_PECOMISSAO: TFloatField;
    ZQryModalidadeMOD_ABREVIACAO: TStringField;
    ZQryModalidadeMOD_NRPARCELA: TIntegerField;
    ZQryModalidadeMOD_FLFIXA: TStringField;
    ZQryModalidadeMOD_CAIXA_GERAL: TIntegerField;
    ZQryModalidadeMOD_AVISTA: TStringField;
    ZQryModalidadeMOD_FLXTEF: TStringField;
    ZQryModalidadeMOD_PASTA_ENVIA_TEF: TStringField;
    ZQryModalidadeMOD_PASTA_RECEBE_TEF: TStringField;
    cdsModalidadeMOD_CODIGO: TIntegerField;
    cdsModalidadeMOD_NOME: TStringField;
    cdsModalidadeMOD_PECOMISSAO: TFloatField;
    cdsModalidadeMOD_ABREVIACAO: TStringField;
    cdsModalidadeMOD_NRPARCELA: TIntegerField;
    cdsModalidadeMOD_FLFIXA: TStringField;
    cdsModalidadeMOD_CAIXA_GERAL: TIntegerField;
    cdsModalidadeMOD_AVISTA: TStringField;
    cdsModalidadeMOD_FLXTEF: TStringField;
    cdsModalidadeMOD_PASTA_ENVIA_TEF: TStringField;
    cdsModalidadeMOD_PASTA_RECEBE_TEF: TStringField;
    dspContaReceber: TDataSetProvider;
    cdsContaReceber: TClientDataSet;
    ZQryContaReceberREC_SEQUENCIA: TIntegerField;
    ZQryContaReceberREC_LOJA: TIntegerField;
    ZQryContaReceberREC_CREDITO: TIntegerField;
    ZQryContaReceberREC_PARCELA: TIntegerField;
    ZQryContaReceberREC_QTPARCELAS: TIntegerField;
    ZQryContaReceberREC_CLIENTE: TIntegerField;
    ZQryContaReceberREC_NRVENDA: TIntegerField;
    ZQryContaReceberREC_DESCRICAO: TMemoField;
    ZQryContaReceberREC_DATAEMISSAO: TDateField;
    ZQryContaReceberREC_DATAVENCIMENTO: TDateField;
    ZQryContaReceberREC_VALORPARCELA: TFloatField;
    ZQryContaReceberREC_SITUACAO: TStringField;
    ZQryContaReceberREC_DATAPAGAMENTO: TDateField;
    ZQryContaReceberREC_VALORACRESIMO: TFloatField;
    ZQryContaReceberREC_VALORJUROS: TFloatField;
    ZQryContaReceberREC_VALORDESCONTO: TFloatField;
    ZQryContaReceberREC_PAGO: TFloatField;
    ZQryContaReceberREC_RESTANTE: TFloatField;
    ZQryContaReceberREC_BANCO: TStringField;
    ZQryContaReceberREC_AGENCIA: TStringField;
    ZQryContaReceberREC_NRCONTA: TStringField;
    ZQryContaReceberREC_NRCHEQUE: TStringField;
    ZQryContaReceberREC_TIPOMODALIDADE: TIntegerField;
    ZQryContaReceberREC_USUARIO: TIntegerField;
    ZQryContaReceberREC_NATUREZA: TIntegerField;
    ZQryContaReceberREC_FLBOLETO: TStringField;
    ZQryContaReceberREC_DATA_CREDITO: TDateField;
    ZQryContaReceberREC_DTRENEGOCIACAO: TDateField;
    ZQryContaReceberREC_VLMULTA: TFloatField;
    ZQryContaReceberREC_NOSSO_NUMERO: TStringField;
    ZQryContaReceberREC_SEUNUMERO: TStringField;
    ZQryContaReceberREC_FORMABAIXA: TStringField;
    ZQryContaReceberREC_PEDESC: TFloatField;
    ZQryContaReceberREC_PEMULTA: TFloatField;
    ZQryContaReceberREC_PEJURO: TFloatField;
    ZQryContaReceberREC_CDCEDENTE: TIntegerField;
    ZQryContaReceberREC_NMARQUIVO: TStringField;
    ZQryContaReceberREC_VLLIQUIDO: TFloatField;
    ZQryContaReceberREC_NRFATURA: TStringField;
    cdsContaReceberREC_SEQUENCIA: TIntegerField;
    cdsContaReceberREC_LOJA: TIntegerField;
    cdsContaReceberREC_CREDITO: TIntegerField;
    cdsContaReceberREC_PARCELA: TIntegerField;
    cdsContaReceberREC_QTPARCELAS: TIntegerField;
    cdsContaReceberREC_CLIENTE: TIntegerField;
    cdsContaReceberREC_NRVENDA: TIntegerField;
    cdsContaReceberREC_DESCRICAO: TMemoField;
    cdsContaReceberREC_DATAEMISSAO: TDateField;
    cdsContaReceberREC_DATAVENCIMENTO: TDateField;
    cdsContaReceberREC_VALORPARCELA: TFloatField;
    cdsContaReceberREC_SITUACAO: TStringField;
    cdsContaReceberREC_DATAPAGAMENTO: TDateField;
    cdsContaReceberREC_VALORACRESIMO: TFloatField;
    cdsContaReceberREC_VALORJUROS: TFloatField;
    cdsContaReceberREC_VALORDESCONTO: TFloatField;
    cdsContaReceberREC_PAGO: TFloatField;
    cdsContaReceberREC_RESTANTE: TFloatField;
    cdsContaReceberREC_BANCO: TStringField;
    cdsContaReceberREC_AGENCIA: TStringField;
    cdsContaReceberREC_NRCONTA: TStringField;
    cdsContaReceberREC_NRCHEQUE: TStringField;
    cdsContaReceberREC_TIPOMODALIDADE: TIntegerField;
    cdsContaReceberREC_USUARIO: TIntegerField;
    cdsContaReceberREC_NATUREZA: TIntegerField;
    cdsContaReceberREC_FLBOLETO: TStringField;
    cdsContaReceberREC_DATA_CREDITO: TDateField;
    cdsContaReceberREC_DTRENEGOCIACAO: TDateField;
    cdsContaReceberREC_VLMULTA: TFloatField;
    cdsContaReceberREC_NOSSO_NUMERO: TStringField;
    cdsContaReceberREC_SEUNUMERO: TStringField;
    cdsContaReceberREC_FORMABAIXA: TStringField;
    cdsContaReceberREC_PEDESC: TFloatField;
    cdsContaReceberREC_PEMULTA: TFloatField;
    cdsContaReceberREC_PEJURO: TFloatField;
    cdsContaReceberREC_CDCEDENTE: TIntegerField;
    cdsContaReceberREC_NMARQUIVO: TStringField;
    cdsContaReceberREC_VLLIQUIDO: TFloatField;
    cdsContaReceberREC_NRFATURA: TStringField;
    procedure dspContaReceberGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Function AdicionarContaReceber(iSEQUENCIA, iLOJA, iCREDITO, iPARCELA, iQTPARCELAS,
       iCLIENTE, iNRVENDA, iBANCO, iNATUREZA, iUSUARIO : Integer;
       aDESCRICAO, aAGENCIA, aNRCONTA, aNRCHEQUE, aSITUACAO : String;
       fVALORPARCELA : Double; aDATAEMISSAO, aDATAVENCIMENTO : TDateTime) : Boolean;
  end;

var
  dmCadAuxiliar: TdmCadAuxiliar;

implementation

uses uDMDados, uFuncoes;

{$R *.dfm}

function TdmCadAuxiliar.AdicionarContaReceber(iSEQUENCIA, iLOJA, iCREDITO,
  iPARCELA, iQTPARCELAS, iCLIENTE, iNRVENDA, iBANCO, iNATUREZA,
  iUSUARIO: Integer; aDESCRICAO, aAGENCIA, aNRCONTA, aNRCHEQUE,
  aSITUACAO: String; fVALORPARCELA: Double; aDATAEMISSAO,
  aDATAVENCIMENTO: TDateTime): Boolean;
begin
     Result := False;
     try
         uFuncoes.FilterCDS(cdsContaReceber, fsInteger, inttoStr(iSEQUENCIA));
         //
         if (cdsContaReceber.IsEmpty) Then
         begin
             with cdsContaReceber do
              begin
                    Append;
                    //
                    FieldByName('REC_SEQUENCIA').AsInteger  := iSEQUENCIA;
                    FieldByName('REC_LOJA').AsInteger       := iLOJA;
                    FieldByName('REC_CREDITO').AsInteger    := iCREDITO;
                    FieldByName('REC_PARCELA').AsInteger    := iPARCELA;
                    FieldByName('REC_QTPARCELAS').AsInteger := iQTPARCELAS;
                    FieldByName('REC_CLIENTE').AsInteger    := iCLIENTE;
                    If (iNRVENDA > 0) Then
                       FieldByName('REC_NRVENDA').AsInteger := iNRVENDA;
                    FieldByName('REC_DESCRICAO').AsString   := aDESCRICAO;
                    FieldByName('REC_VALORPARCELA').AsCurrency := fVALORPARCELA;
                    FieldByName('REC_VALORACRESIMO').AsFloat   := 0;
                    FieldByName('REC_VALORJUROS').AsFloat      := 0;
                    FieldByName('REC_VALORDESCONTO').AsFloat   := 0;
                    FieldByName('REC_DATAEMISSAO').AsDateTime  := aDATAEMISSAO;
                    FieldByName('REC_DATAVENCIMENTO').AsDateTime := aDATAVENCIMENTO;
                    If (iBANCO > 0) Then
                    begin
                        FieldByName('REC_BANCO').AsInteger     := iBANCO;
                        FieldByName('REC_AGENCIA').AsString    := aAGENCIA;
                        FieldByName('REC_NRCONTA').AsString    := aNRCONTA;
                        FieldByName('REC_NRCHEQUE').AsString   := aNRCHEQUE;
                    End;
                    //FieldByName('REC_SITUACAO').AsString       := 'A';
                    FieldByName('REC_NATUREZA').AsInteger      := iNATUREZA;
                    FieldByName('REC_USUARIO').AsInteger       := iUSUARIO;
                    //
                    ApplyUpdates(0);
              End;
         End;
     Except

     End;
end;

procedure TdmCadAuxiliar.dspContaReceberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'CONTASRECEBER';
end;

end.

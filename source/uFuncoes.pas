unit uFuncoes;

interface

uses
Windows, Dialogs, Messages, SysUtils, Classes, Controls, Graphics,
StdCtrls, Mask,Db, DBTables,DBIProcs,TypInfo,WinProcs, ExtCtrls,
DBXpress, SqlExpr, DBClient, Provider, uFrmNEFMain, DateUtils,
ZDataset, ZAbstractRODataset, ZAbstractDataset, Math, Forms;


type
   TTypeLocalizar = (fsInteger, fsString);
   TChars = set of Char;

// Funcões e procedures para o sistema.

Function StrZero(Zeros:string;Quant:integer):String;
Function StrAsterisco(Asterisco:string;Quant:integer):String;
Procedure Limpar_Status;
function Empty(inString:String): Boolean;
Function Codifica( const Str1: string): String;
Function SysComputerName: string;
Function ContaCaracs(Edit:String): integer;
Function Replicate( Caracter:String; Quant:Integer ): String;
Function CPF(num: string): boolean;
Function CGC(num: string): boolean;
Function Alltrim(const Search: string): string;
Function Datafinal(dataini:tdatetime; dias_uteis:integer):tdatetime;
Function DataExtenso(Data:TDateTime): String;
Function MesExtenso (xMes : TDateTime) : string;
function StrToPChar(const Str: string): PChar;
Function Arredondar(Valor: Double; Dec: Integer): Double;
Function tbReplChar(const Ch: Char; const Len: integer): string;
Function Padr(s:string;n:integer):string;
function PadC(S:string;Len:byte):string;
Function Justifica(mCad:string;mMAx:integer):string;
function extenso (valor: real): string;
function Maiuscula(Texto:String): String;
Function DiadaSemana(Data : String) : string;
Function OnLine(Porta:Word):Boolean;
Function EsvaziaTabela(Tabela : TTable): Boolean;
function RemoveChar(Const Texto:String):String;
function StrIsFloat(const S: string): boolean;
function StrIsInteger(const S: string): boolean;
function CalculaCnpjCpf(Numero : String) : String;
function FormataCPF(cTexto : String) : String;
function FormataCNPJ(CNPJ: string): string;
function percorreArquivoTexto ( nomeDoArquivo: String ) : String;
function mvcodigo(campo,tabela:string):integer;
function mvcodigomax(campo,tabela:string):integer;
function mvcodigomaxClienteFornecedor(campo, tabela, aTipo :string):integer;
function mscodigo(campo,tabela:string):string;
function mscodigomax(campo,tabela:string):string;
function Buscar_Dados_Str(campo, valor, tabela : String): boolean;
function RemoveVirgula(Str:String): String;
function IDTransation : String;
Procedure FilterCDS(aCds : TClientDataSet; aType : TTypeLocalizar ; aBusca : String);
procedure RefreshCDS(aDateSet : TClientDataSet);
function tbPadC(const S: string; const Len: integer; const Ch: Char): string;
Function AnoBiSexto(Ayear: Integer): Boolean;
Function DiasPorMes(Ayear, AMonth: Integer): Integer;
Function Validar_Data(M_DATA : String): boolean;
Function FormatarData(M_DATA : String): TDate;
Function FormatarData2(aData : String) : String;
Function FormatarMesReferencia(M_DATA : TDate): String;
Function FormatarDataAno(M_DATA : String): String;
function Gerapercentual(valor:real;Percent:Real):real;
function FormataCep(M_NUNCEP : string) : String;
Function Calcula_Percentual(M_VALOR1, M_VALOR2 : Double) : Double;
Function Calcula_Quantidade_Parcela(M_VALOR, M_VLPARC : Double) : Double;
Function Acrescentar_Dias_Data(M_DATA : TDate) : TDate;
Function Numero_Doc_Caixa(M_NRNOSS : String) : String;
function FormataFONE(sFONE: string): string;
function RetirarCarecterAtalho(const texto : string) : string;
Function retornaProximoCodigoMenu : integer;
function retornarCodMenu(const textoMenu : String) : Integer;
Function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
Function CopiarArquivo(aOrigem, aDestino : String) : boolean;
Function DigitoNossoNumero(aVal1:Double; aVal2, aVal3 : integer) : String;
function Data_Juliana (Data_Atual: TDateTime): String;
function CalcularJuros(ValorParcela, pJuros, pMulta : Double): Double;
Procedure MesesEntreDatas(DataFinal,DataInicial : TDate; var Anos,Meses,Dias : Integer);
Function StrToReal(inString :String): Real;
function Idade(Nasc : TDate) : String;
Function StrPontos(Pontos : string;Quant:integer):String;
Function UF_N(UF:String): Integer;
Function MontaChaveAcessoNFe_v110( codUF: integer; dtEmissao: TDateTime; CNPJ:string;
         Modelo, Serie, NumeroNF: integer): string;
Function StrZero2(Num : Real; Zeros, Deci: Integer): string;
Function Modulo11(Numero: String): String;

function GetVerificarDescricaoCidade(aNome, aUF : String) : Boolean;
Function GetAnoMesData(aData : TDatetime) : String;
function FilterChars(const S: string; const ValidChars: TChars): string;
Function GetCNPJEmpresa(iCodigo : Integer) : String;
Function ValidaAnoInutilizacaoNumeracao(aData : TDatetime) : Integer;
function GetCidade(M_CDCIDA : integer) : String;
function GetBairro(M_CDCIDA, M_CDBAIR : integer) : String;
Function UF_Combo(aUF : String) : Integer;
Function GetReferencia(aDesc : String) : Boolean;
Function GetVerificaCNPJ(aCNPJ, aTipo : String) : Boolean;
//
function CALCULA_PRECOVENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LULIQU, W_ICMSAN : Real;
  W_CDTRIB : Integer) : Real;
function CALCULA_LUCROLIQUIDO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : Real;
  W_CDTRIB : Integer) : Real;
function CALCULA_LUCROBRUTO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQUIDO : Real;
  W_CDTRIB : Integer) : Real;
function VALOR_VENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : Real;
  W_CDTRIB : Integer) : Real;
//
Function Venda(iCUPOM, iLOJA, iCLIENTE, iVENDEDOR, iCaixa : Integer; aDATAVENDA: TDateTime; aHORAVENDA, aSituacao,
  aTIPO_FRETE: String; fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
  fTROCO, fPERC_FRETE, fTAXA_SERVICO: Double; aENDERECO, aNUMERO,
  aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone,
  aNomeCliente: String; iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
  iMODALIDADE_PEDIDO: Integer; aOBSERVACAO, aOBS1, aOBS2,
  aNRMESA: String; aCDSItens, aCDSModalidades : TClientDataSet) : integer;
//
function RealizaTransacao(cIdentificacao: TDateTime; cNumeroCupom : string;
    cValorPago: string ): integer;
function ImprimeTransacao(iImpressora : Integer; cFormaPGTO: string; cValorPago: string; cCOO: string;
    cIdentificacao: TDateTime ): boolean;
function ConfirmaTransacao: boolean;
function NaoConfirmaTransacao: boolean;
function CancelaTransacaoTEF(cNSU: string; cValor: string; cNomeRede: string;
         cNumeroDOC: string; cData: string; cHora: string ): boolean;
function ImprimeGerencial(iImpressora : Integer): integer;
function Administrativo: boolean;
function FuncaoAdministrativaTEF( cIdentificacao: TDateTime ): integer;
//

const
    MSG_OK   = 'Registro gravado com sucesso.';
    MSG_ERRO = 'Erro ao tentar gravar registro.';
    MSG_PERGUTA = 'Deseja excluir este registro?';
    MSG_PERMISSOES = 'Você não tem pemissão para isto';
    MSG_ERROR = 'Ocorreu um erro!';
    PathReq  = 'C:\Tef_Dial\Req\';
    PathResp = 'C:\Tef_Dial\Resp\';

implementation

uses uDMDados, uFiscal, udmEstoque;


function CalculaCnpjCpf(Numero : String) : String;
var
  i,j,k, Soma, Digito : Integer;
  CNPJ : Boolean;
begin
  Result := Numero;
  case Length(Numero) of
  9:
  CNPJ := False;
  12:
  CNPJ := True;
  else
  Exit;
  end;
  for j := 1 to 2 do
  begin
  k := 2;
  Soma := 0;
  for i := Length(Result) downto 1 do
  begin
  Soma := Soma + (Ord(Result[i])-Ord('0'))*k;
  Inc(k);
  if (k > 9) and CNPJ then
  k := 2;
  end;
  Digito := 11 - Soma mod 11;
  if Digito >= 10 then
  Digito := 0;
  Result := Result + Chr(Digito + Ord('0'));
  end;
end;

function FormataCPF(cTexto : String) : String;
begin
     //  999.999.999-99
     result := Copy(cTexto,1,3)+'.'+
               Copy(cTexto,4,3)+'.'+
               Copy(cTexto,7,3)+'-'+
               Copy(cTexto,10,2);
end;

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);
end;

function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
   begin
   if (Texto[I] in ['0'..'9']) then
       begin
       S := S + Copy(Texto, I, 1);
       end;
   end;
result := S;
end;

function StrIsInteger(const S: string): boolean;
// Verificar se uma string contém um valor inteiro válido
begin
  try
  StrToInt(S);
  Result := true;
  except
  Result := false;
  end;
end;

// Preço de Venda
function CALCULA_PRECOVENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LULIQU, W_ICMSAN : Real;
  W_CDTRIB : Integer) : Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF, M_ANICMS : Real;
Begin
        // ***  Valores calculados sobre o valor de compra
        M_VLIPFT := W_VLCOMP*(W_PERIPI+W_PEFRET)/100;    //&& Valor do ipi + valor de frete
        M_VLICME := W_VLCOMP*(W_ICMSCO)/100;             //&& ICMS de compra
        M_ANICMS := W_VLCOMP*(W_ICMSAN)/100;             // Antecipação de ICMS
        M_VLTAXA := W_VLCOMP*(W_PETAXA)/100;
        //
        M_PECOMI := dmDados.CdsConfigCFG_PECOMI.AsFloat;
        M_PERPIS := dmDados.CdsConfigCFG_PERPIS.AsFloat;
        M_PECOFI := dmDados.cdsConfigCFG_PECOFINS.AsFloat;
        M_PEIPMF := dmDados.CdsConfigCFG_PEIPMF.AsFloat;
        //
        M_PEICMV := 0;
        //
        IF (W_CDTRIB <> 0) Then
        Begin
             {With dmConsultas.qryTributacao do
             begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger := W_CDTRIB;
                  Open;
             End;
             //
             If not (dmConsultas.qryTributacao.IsEmpty ) Then}
                 // nova alteração 09/04/2008
                 M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
                 //dmConsultas.qryTributacao.FieldByName('TRI_PERCETUAL').AsCurrency;
              //M_PEICMV := 0;
              //dmConsultas.qryTributacao.FieldByName('TRI_ICMS').AsCurrency;
        End;
        //
        //***  Valores somados ao valor de compra
        M_VLCUST := W_VLCOMP + M_VLIPFT - M_VLICME + M_VLTAXA+M_ANICMS;
        M_VLVEND := M_VLCUST/(1-(M_PEICMV+W_LULIQU+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
        //****
        result := M_VLVEND;
        dmDados.cdsProduto.FieldByName('PRO_VLCUSTO').AsCurrency := M_VLCUST;
End;


// EDITANDO LUCRO LIQUIDO
function CALCULA_LUCROLIQUIDO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : Real;
  W_CDTRIB : Integer) : Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_LUBRUT, M_LULIQU : Real;
Begin
        //***  Valores calculados sobre o valor de compra
        M_VLIPFT := Arredondar(W_VLCOMP*(W_PERIPI+W_PEFRET)/100,2);    // && Valor do ipi + valor de frete
        M_VLICME := W_VLCOMP*(W_ICMSCO)/100;              //&& ICMS de compra
        M_VLTAXA := W_VLCOMP*(W_PETAXA)/100;              //&& Valor do desconto
        //
        M_PECOMI := dmDados.CdsConfigCFG_PECOMI.AsFloat;
        M_PERPIS := dmDados.CdsConfigCFG_PERPIS.AsFloat;
        M_PECOFI := dmDados.cdsConfigCFG_PECOFINS.AsFloat;
        M_PEIPMF := dmDados.CdsConfigCFG_PEIPMF.AsFloat;
        //
        M_PEICMV := 0;
        //
        IF (W_CDTRIB <> 0) Then
        Begin
             {With dmConsultas.qryTributacao do
             begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger := W_CDTRIB;
                  Open;
             End;
             //
             If not (dmConsultas.qryTributacao.IsEmpty ) Then}
                 // novo :09/04/2008
                 M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
                 //dmConsultas.qryTributacao.FieldByName('TRI_PERCETUAL').AsCurrency;
                 //M_PEICMV := 0;
                 //dmConsultas.qryTributacao.FieldByName('TRI_ICMS').AsCurrency;
        End;
        //
        // ***  Valores somados ao valor de compra
        M_VLCUST := W_VLCOMP + M_VLIPFT - M_VLICME + M_VLTAXA;
        //
        M_VLVEND := 0;
        M_LUBRUT := 0;
        If (W_VLCOMP > 0) then
           Begin
             M_VLVEND := M_VLCUST/(1-(M_PEICMV+W_LULIQU+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
             M_LUBRUT := Arredondar((M_VLVEND - M_VLCUST) / M_VLCUST * 100,2);
           End;
        //
        result   := M_VLVEND;
        dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency := M_LUBRUT;
End;

//  EDITANDO LUCRO BRUTO
function CALCULA_LUCROBRUTO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQUIDO : Real;
  W_CDTRIB : Integer) : Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_VLFORM, W_VLFORM, M_VLIMPO, M_LULIQU : Real;
Begin
        //***  Valores calculados sobre o valor de compra
        M_VLIPFT := W_VLCOMP*(W_PERIPI+W_PEFRET)/100;   // && Valor do ipi + valor de frete
        M_VLICME := W_VLCOMP*(W_ICMSCO)/100;            //&& ICMS de compra
        M_VLTAXA := W_VLCOMP*(W_PETAXA)/100;
        //
        M_PECOMI := dmDados.CdsConfigCFG_PECOMI.AsFloat;
        M_PERPIS := dmDados.CdsConfigCFG_PERPIS.AsFloat;
        M_PECOFI := dmDados.cdsConfigCFG_PECOFINS.AsFloat;
        M_PEIPMF := dmDados.CdsConfigCFG_PEIPMF.AsFloat;
        //
        M_PEICMV := 0;
        //
        IF (W_CDTRIB <> 0) Then
        Begin
             {With dmConsultas.qryTributacao do
             begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger := W_CDTRIB;
                  Open;
             End;
             //
             If not (dmConsultas.qryTributacao.IsEmpty ) Then}
                 // novo :09/04/2008
                 M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
                 //dmConsultas.qryTributacao.FieldByName('TRI_PERCETUAL').AsCurrency;
                 //M_PEICMV := 0;
                 //dmConsultas.qryTributacao.FieldByName('TRI_ICMS').AsCurrency;
        End;
        //***  Valores somados ao valor de compra
        M_VLFORM := W_VLCOMP + M_VLIPFT - M_VLICME + M_VLTAXA;
        IF (W_LUBRUTO <> 0) Then
        Begin
           //M_VLVEND := M_VLFORM*(1+(W_LUBRUTO/100));
           dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency := M_VLFORM*(1+(W_LUBRUTO/100));
           // Valor dos percentuais cobrados sobre valor de venda
           //M_VLIMPO := M_VLVEND*((M_PEICMV+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
           M_VLIMPO := dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency*
               ((M_PEICMV+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
           W_VLFORM := M_VLFORM + M_VLIMPO;
           //M_LULIQU := (M_VLVEND - W_VLFORM)/M_VLVEND * 100;
           M_LULIQU := (dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency - W_VLFORM)/
            dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency * 100;
        End;
        //
        M_VLVEND := M_VLFORM/(1-(M_PEICMV+W_LULIQUIDO+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
        //
        dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency := M_LULIQU;
        //result := M_VLVEND;
End;

// EDITANDO VALOR DE VENDA
function VALOR_VENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : real;
  W_CDTRIB : Integer) : Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_VLIMPO, W_VLCUST, M_VLBRUT : Real;
Begin
        //***  Valores calculados sobre o valor de compra
        M_VLIPFT := W_VLCOMP*(W_PERIPI+W_PEFRET)/100;   // && Valor do ipi + valor de frete
        M_VLICME := W_VLCOMP*(W_ICMSCO)/100;            //&& ICMS de compra
        M_VLTAXA := W_VLCOMP*(W_PETAXA)/100;            //&& Valor do desconto
        M_VLVEND := dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
        //
        M_PECOMI := dmDados.CdsConfigCFG_PECOMI.AsFloat;
        M_PERPIS := dmDados.CdsConfigCFG_PERPIS.AsFloat;
        M_PECOFI := dmDados.cdsConfigCFG_PECOFINS.AsFloat;
        M_PEIPMF := dmDados.CdsConfigCFG_PEIPMF.AsFloat;
        //
        M_PEICMV := 0;
        //
        IF (W_CDTRIB <> 0) Then
        Begin
             {With dmConsultas.qryTributacao do
             begin
                  Close;
                  Params.ParamByName('pCODIGO').AsInteger := W_CDTRIB;
                  Open;
             End;
             //
             If not (dmConsultas.qryTributacao.IsEmpty ) Then}
                 // novo :09/04/2008
                 M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
                 //dmConsultas.qryTributacao.FieldByName('TRI_PERCETUAL').AsCurrency;
                 //M_PEICMV := 0;
                 //dmConsultas.qryTributacao.FieldByName('TRI_ICMS').AsCurrency;
        End;
        //***  Valores somados ao valor de compra
        M_VLCUST := W_VLCOMP + M_VLIPFT - M_VLICME + M_VLTAXA;
        //
        M_VLBRUT := Arredondar((M_VLVEND - M_VLCUST) / M_VLCUST * 100,2);
        // Valor dos percentuais cobrados sobre valor de venda
        M_VLIMPO := M_VLVEND *((M_PEICMV+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
        W_VLCUST := M_VLCUST + M_VLIMPO;
        // Valor liquido
        result  := (M_VLVEND - W_VLCUST)/M_VLVEND * 100;
        // Valor bruto
        dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency := M_VLBRUT;
End;

function StrIsFloat(const S: string): boolean;
// Verificar se uma string contém um valor numérico válido
begin
  try
  StrToFloat(S);
  Result := true;
  except
  Result := false;
  end;
end;

Function StrPontos(Pontos : string;Quant:integer):String;
{Insere Zeros à frente de uma string}
var
I,Tamanho:integer;
aux: string;
begin
  aux := Pontos;
  Tamanho := length(Pontos);
  Pontos:='';
  for I:=1 to quant-tamanho do
  Pontos:=Pontos + '.';
  aux := aux + Pontos;
  StrPontos := aux;
end;

function StrZero(Zeros:string;Quant:integer):String;
{Insere Zeros à frente de uma string}
var
I,Tamanho:integer;
aux: string;
begin
  aux := zeros;
  Tamanho := length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS + '0';
  aux := zeros + aux;
  StrZero := aux;
end;

Function StrAsterisco(Asterisco:string;Quant:integer):String;
{Insere Zeros à frente de uma string}
var
I,Tamanho:integer;
aux: string;
begin
  aux := Asterisco;
  Tamanho := length(Asterisco);
  Asterisco:='';
  for I:=1 to quant-tamanho do
    Asterisco:=Asterisco + '*';
  aux := Asterisco + aux;
  StrAsterisco := aux;
end;

Function Padr(s: string; n: integer): string;
{alinha uma string à direita}
begin
       Result:=Format('%'+IntToStr(n)+'.'+IntToStr(n)+'s',[s]);
end;


Function tbReplChar(const Ch: Char; const Len: integer): string;
var
  I: integer;
begin
  SetLength(Result, Len);
  for I := 1 to Len do
  Result[I] := Ch;
end;


Procedure Limpar_Status;
begin
     {frmMain.Info.Panels[2].Text := ' ';
     frmMain.Info.Panels[1].Text := '';}
end;

function Empty(inString:String): Boolean;
{Testa se a variavel está vazia ou não}
Var
  index : Byte;
Begin
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if inString[index] = ' ' Then
  begin
inc(index)
  end
  else
Begin
  Empty := False;
  index := 0
end;
  end;
end;

Function Codifica( const Str1: string): String;
{Encripta uma string}
var
Mascara,Str2: String;
PonM, PonS: Byte;
begin
Mascara := '#$%$'#13#12;
Str2 := '';
PonM := 1;
for PonS:=1 to length(Str1) do
  begin
  AppendStr( Str2, Chr( Ord(Str1[PonS]) Xor Ord(Mascara[PonM])));
  Inc( PonM);
  if PonM>Length(Mascara) then
  begin
  PonM:=1;
  end;
  Result := Str2;
  end;
end;

{ Sys }
function SysComputerName: string;
var
  I: DWord;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(PChar(Result), I);
  Result := string(PChar(Result));
end;

Function ContaCaracs(Edit: String): integer;
{Retorna quantos caracteres tem um Edit especificado}
begin
     Result := Length(Edit);
end;

function Replicate(Caracter: String; Quant: Integer): String;
{Repete o mesmo caractere várias vezes}
var I : Integer;
begin
Result := '';
  for I := 1 to Quant do
  Result := Result + Caracter;
end;

Function CPF(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

function cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
n10:=StrToInt(num[10]);
n11:=StrToInt(num[11]);
n12:=StrToInt(num[12]);
d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[13]+num[14];
if calculado=digitado then
  cgc:=true
  else
  cgc:=false;
end;

Function Alltrim(const Search: string): string;
{Remove os espaços em branco de ambos os lados da string}
const
BlackSpace = [#33..#126];
var
Index: byte;
begin
Index:=1;
while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do
  begin
  Index:=Index + 1;
  end;
Result:=Copy(Search, Index, 255);
Index := Length(Result);
while (Index > 0) and not (Result[Index] in BlackSpace) do
  begin
  Index:=Index - 1;
  end;
Result := Copy(Result, 1, Index);
End;

Function Datafinal(dataini:tdatetime; dias_uteis:integer):tdatetime;
//
// Retorna uma data acresçida de mais um certo número de dias
//
var dw:integer;
Begin
  dw := DayOfWeek(dataini)-1;
  result := dataini+dias_uteis+((dias_uteis-1+dw) div 7)*2;
End;

function DataExtenso(Data:TDateTime): String;
{Retorna uma data por extenso}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'domingo';
  DiaDasemana [2]:= 'segunda-feira';
  DiaDasemana [3]:= 'terça-feira';
  DiaDasemana [4]:= 'quarta-feira';
  DiaDasemana [5]:= 'quinta-feira';
  DiaDasemana [6]:= 'sexta-feira';
  DiaDasemana [7]:= 'sábado';
{ Meses do ano }
  Meses [1] := 'janeiro';
  Meses [2] := 'fevereiro';
  Meses [3] := 'março';
  Meses [4] := 'abril';
  Meses [5] := 'maio';
  Meses [6] := 'junho';
  Meses [7] := 'julho';
  Meses [8] := 'agosto';
  Meses [9] := 'setembro';
  Meses [10]:= 'outubro';
  Meses [11]:= 'novembro';
  Meses [12]:= 'dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result :=  IntToStr(Dia) +' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano)+'.';
  //DiaDaSemana[NoDia] + ', '
end;

Function MesExtenso (xMes : TDateTime) : string;
Var
Dia, Mes, Ano : Word;
begin
Mes := 0;
DecodeDate (xMes, Ano, Mes, Dia);
{Try
Mes := Round (xMes);
Except
End;}
case Mes of
1: Result := 'JAN';
2: Result := 'FEV';
3: Result := 'MAR';
4: Result := 'ABR';
5: Result := 'MAI';
6: Result := 'JUN';
7: Result := 'JUL';
8: Result := 'AGO';
9: Result := 'SET';
10: Result := 'OUT';
11: Result := 'NOV';
12: Result := 'DEZ';
else
Result := '';
end;
end;

function StrToPChar(const Str: string): PChar;
{Converte String em Pchar}
type
  TRingIndex = 0..7;
var
  Ring: array[TRingIndex] of PChar;
  RingIndex: TRingIndex;
  Ptr: PChar;
begin
  Ptr := @Str[Length(Str)];
  Inc(Ptr);
  if Ptr^ = #0 then
  begin
  Result := @Str[1];
  end
  else
  begin
  Result := StrAlloc(Length(Str)+1);
  RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
  StrPCopy(Result,Str);
  StrDispose(Ring[RingIndex]);
  Ring[RingIndex]:= Result;
  end;
end;

Function Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
  Numero1,
  Numero2,
  Numero3: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;

Function Justifica(mCad:string;mMAx:integer):string;
var
mPos,mPont,mTam,mNr,mCont:integer;
mStr:string;
begin
mTam:=Length(mCad);
if mTam>=mMax then
Result:=copy(mCad,1,mMax)
else
mStr:='';
mCont:=0;
mPont:=1;
mNr:=mMax-mTam;
while mCont<mNr do
begin
mPos:=pos(mStr,copy(mCad,mPont,100));
if mPos=0 then
begin
mStr:=mStr+' ';
mPont:=1;
continue;
end
else
begin
mCont:=mCont+1;
Insert(' ',mCad,mPos+mPont);
mPont:=mPont+mPos+length(mStr);
end;
Result:=mCad;
end;
end;

function extenso (valor: real): string;
var
Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
if Expressao
then Result:=CasoVerdadeiro
else Result:=CasoFalso;
end;



function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
  begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
 then Centena:='cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';
 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
  + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;
begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
  showmessage(msg);
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
  Result:=Result+' Mil Reais'
  else
  Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
  and (copy(texto,6,1)<>'0')) or (centavos=''))
  and (Centena<>'') then Result:=Result+' e ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
  Result:=Centavos
  else
  Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
  Result:=Result+' Centavo'
 else
  Result:=Result+' Centavos';
end;
end;

function Maiuscula(Texto:String): String;
{Converte a primeira letra do texto especificado para
maiuscula e as restantes para minuscula}
var
OldStart: Integer;
begin
if Texto <> '' then
  begin
  Texto := UpperCase(Copy(Texto,1,1))+LowerCase(Copy(Texto,2,Length(Texto)));
  Result := Texto;
  end;
end;

Function DiadaSemana(Data : String) : string;
const
  semana : array[1..7] of string = ('Domingo','Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira', 'Sabado');
begin
  Result := semana[DayOfWeek(strtodate(Data))]
end;

Function OnLine(Porta:Word):Boolean;
// Verificar se Impressora esta Conectada
Const
    Portas :Byte = $02;
Var
    Res :Byte;
Begin
    { Código em Assembler }
    Asm
        mov ah,Portas; {Requisita o acesso as portas}
        mov dx,Porta;{Define a porta de teste}
        Int $17; {Chama a interrupção de Impressora}
        mov Res,ah; {Guarda em Res o resultado da operação }
    end;
    Result := (Res and $80) = $80; {Testa o valor de saída}
End;

function EsvaziaTabela(Tabela : TTable): Boolean;
// Esvazia a tabela passada como parametro
var
lExclusivo : boolean;
begin
Tabela.Active := False;
repeat
try
  Tabela.Exclusive := True;
  Tabela.Active := True;
  Tabela.EmptyTable;
  lExclusivo := True;
  Break;
except
  on EDatabaseError do
  if MessageDlg('A tabela está sendo usada por outro usuário. Tenta novamente ?', mtError,[mbOK, mbCancel], 0) <> mrOK then
  begin
  lExclusivo := False;
  raise;
  end;
  end;
until False;
Result := lExclusivo;
end;

function percorreArquivoTexto ( nomeDoArquivo: String ) : String;
var arq: TextFile;
linha: String;
begin
AssignFile ( arq, nomeDoArquivo );
Reset ( arq );
ReadLn ( arq, linha );
while not Eof ( arq ) do
begin
{ Processe a linha lida aqui. }
{ Para particionar a linha lida em pedaços, use a função Copy. }
ReadLn ( arq, linha );
end;
CloseFile ( arq );
result := linha;
end;


function mvcodigo(campo, tabela: string): integer;
var qraux : TZQuery;
    texto : string;
begin
  texto := 'Select min("'+campo+'") from "'+tabela+'"';
  QrAux := TZQuery.Create(nil);
  with QrAux do
    try
      Connection := DMDados.ZConexao;
      SQL.Add(texto);
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
end;

function mvcodigomax(campo,tabela:string):integer;
var qraux : TZquery;
    texto : string;
begin
  texto := 'Select max("'+campo+'") from "'+tabela+'"';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
End;

function mvcodigomaxClienteFornecedor(campo,tabela, aTipo :string):integer;
var qraux : TZquery;
    texto : string;
begin
  texto := 'Select max("'+campo+'") from "'+tabela+'" where ("CLI_CLIFOR" = :pCLIFOR)';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      Params[0].AsString := aTipo;
      open;
      result := fields[0].AsInteger;
    finally
      free;
    end;
End;

function mscodigo(campo, tabela: string): string;
var qraux : TZquery;
    texto : string;
begin
  texto := 'Select min("'+campo+'") from "'+tabela+'"';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      open;
      result := fields[0].AsString;
    finally
      free;
    end;
end;

function mscodigomax(campo, tabela: string): string;
var qraux : TZquery;
    texto : string;
begin
  texto := 'Select max("'+campo+'") from "'+tabela+'"';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      open;
      result := fields[0].AsString;
    finally
      free;
    end;
end;

function NOME_PASTA(M_CDUSUA : String): String;
var qraux : TSQLquery;
    texto : string;
begin
{  texto := 'Select SEN_CODIGO, SEN_PASTA from USUARIOS Where (SEN_CODIGO = :pCODIGO)';
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmDados.dmDados;
      sql.Add(texto);
      Params.ParamByName('pCODIGO').AsString := M_CDUSUA;
      open;
      result := fields[1].AsString;
    finally
      free;
    end;}
End;

function Buscar_Dados_Str(campo, valor, tabela : String): boolean;
var qraux : TSQLquery;
    texto : string;
begin
{  texto := 'Select '+campo+' from '+tabela + ' Where ('+ campo +' = :'+campo+')';
  QrAux := TSqlquery.Create(nil);
  with QrAux do
    try
      SQLConnection := dmDados.dmDados;
      sql.Clear;
      Close;
      sql.Add(texto);
      Params.ParamByName(campo).AsString := valor;
      open;
      if not (IsEmpty) Then
          Result := True
      Else
          Result := False;
    finally
      free;
    end;}
End;


Function Verificar_Status() : Boolean;
Var
   M_NMPAST : String;
begin
    //M_NMPAST := dmDados.cdsConfigCFG_NOME_PASTA.AsString;
    //
    M_NMPAST := M_NMPAST + '\status.txt';
    //
    If FileExists(M_NMPAST) Then
        Result := True
    Else
        Result := False;
End;

Procedure Criar_Status(W_NMARQU : string);
var
  status_saida : textfile;
  M_NMPAST : String;
begin
  //M_NMPAST := dmDados.cdsConfigCFG_NOME_PASTA.AsString;
  //
  try
      if FileExists(M_NMPAST + '\'+W_NMARQU) then
      begin
          AssignFile(status_saida, M_NMPAST + '\status.ret');
          if not FileExists(M_NMPAST + '\status.ret') then
             Rewrite ( status_saida )
          Else
             reset(status_saida);
          DeleteFile(PChar(M_NMPAST + '\'+W_NMARQU));
      End;
  finally
        CloseFile(status_saida);
  end;
End;

Function Criar_Retorno_Venda(M_STATUS, M_NRVEND : string) : boolean;
var
  status : textfile;
  M_NMPAST : String;
begin
  //M_NMPAST := dmDados.cdsConfigCFG_NOME_PASTA.AsString;
  //
  try
          if FileExists(M_NMPAST + '\venda.ret') then
             deletefile(PChar(M_NMPAST + '\venda.ret'));
          //
          AssignFile(status, M_NMPAST + '\venda.ret');
          Rewrite(status);
          Append(status);
          //
          if (M_STATUS = 'S')  then
               Writeln(status, M_NRVEND)
          Else
               Writeln(status, M_NRVEND);
          //
          {if (M_STATUS = 'S')  then
               Writeln(status, 'OK')
          Else
               Writeln(status, 'ERRO');}
  finally
        if FileExists(M_NMPAST + '\venda.txt') then
            DeleteFile(PChar(M_NMPAST + '\venda.txt'));
        CloseFile(status);
  end;
End;

function RemoveVirgula(Str:String): String;
Const
    ComVirgula = ',';
    ComPonto = '.';
Var
    x : Integer;
    valor : string;
Begin
    For x := 1 to Length(Str) do
      if (Str[x] = ComVirgula) Then
        valor := valor + ComPonto
      Else
        valor := valor + Str[x];
    Result := valor;
end;

function IDTransation : String;
Var
  i : integer;
Const
  srt = '0123456789';
begin
     for i := 1 to 2 do
      begin
           Randomize;
           Result := Result + srt[Random(Length(srt))+1];
      End;
End;

procedure RefreshCDS(aDateSet : TClientDataSet);
begin
     aDateSet.Close;
     aDateSet.Open;
End;

Procedure FilterCDS(aCds : TClientDataSet; aType : TTypeLocalizar ; aBusca : String);
begin
     aCds.close;
     case aType of
          fsInteger : aCds.Params[0].AsInteger := StrtoInt(aBusca);
          fsString  : aCds.Params[0].AsString  := UpperCase(aBusca);
     end;
     aCds.Open;
End;

function tbPadC(const S: string; const Len: integer; const Ch: Char): string;
var
  I, J: integer;
  Pad: string;
  Impar: boolean;
begin
  I := Length(S);
  if I < Len then begin
  J := Len - I;
  Impar := J mod 2 = 1;
  J := J div 2;
  Pad := tbReplChar(Ch, J);
  Result := Pad + S + Pad;
  if Impar then
  Result := Result + Ch;
  end else if I > Len then begin
  J := I - Len;
  Impar := J mod 2 = 1;
  J := J div 2;
  Result := S;
  Delete(Result, I-J+1, J);
  Delete(Result, 1, J);
  if Impar then begin
  Dec(I, J * 2);
  Delete(Result, I, 1);
  end;
  end else
  Result := S;
end;

function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano é Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;


function DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
    Result := DaysInMonth[AMonth];
    if (AMonth = 2) and AnoBiSexto(AYear) then
        Inc(Result);
end;

Function Validar_Data(M_DATA : String): boolean;
begin
    try
        StrToDate(M_DATA);
        result := True;
    except
        result := False;
        {on EConvertError do
         begin
             ShowMessage ('Data Inválida!');
         End;}
    end;      
End;

Function FormatarData(M_DATA : String): TDate;
begin
     Result := StrtoDate(M_DATA);
End;

function Gerapercentual(valor:real;Percent:Real):real;
// Retorna a porcentagem de um valor
begin
percent := percent / 100;
try
  valor := valor * Percent;
finally
  result := valor;
end;
end;
  
Function FormatarMesReferencia(M_DATA : TDate): String;
begin
    Result := Copy(DatetoStr(M_DATA),4,7);
end;

Function FormatarDataAno(M_DATA : String): String;
begin
    Result := Copy(M_DATA,7,4);
end;

function FormataCep(M_NUNCEP : string) : String;
Begin
     Result := Copy(M_NUNCEP,1,5)+'-'+Copy(M_NUNCEP,6,3);
End;

Function Calcula_Percentual(M_VALOR1, M_VALOR2 : Double) : Double;
begin
     Result := Arredondar((M_VALOR1/M_VALOR2)*100,2);
end;

Function Calcula_Quantidade_Parcela(M_VALOR, M_VLPARC : Double) : Double;
Begin
     Result := Arredondar((M_VALOR/M_VLPARC),2);
End;

Function Acrescentar_Dias_Data(M_DATA : TDate) : TDate;
Var
   M_DIA, M_DIA_MES : Integer;
   Ano, Mes, Dia : word;
BEGIN
     DecodeDate (M_Data, Ano, Mes, Dia);
     //
     M_DIA := StrtoInt(Copy(DatetoStr(M_DATA),1,2));
     //
     M_Data := IncDay(M_Data, 10);
     {If (M_DIA + 10 <= M_ULTIMO_DIA) Then
         M_DIA := M_DIA + 10
     Else
         M_DIA :=}
     {If (M_DIA < 10) Then
      begin
           M_DIA_MES :=
      End
     Else
         M_DIA := M_DIA + 10;}
     //
     Result := M_Data;
     //StrtoDate(InttoStr(M_DIA)+Copy(DatetoStr(M_DATA),3,8));
End;

Function Numero_Doc_Caixa(M_NRNOSS : String) : String;
Begin
     result := Copy(M_NRNOSS,7,6) + Copy(M_NRNOSS,16,3);
End;

function FormataCNPJ(CNPJ: string): string;
begin
  Result :=Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+
    Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);
end;

function FormataFONE(sFONE: string): string;
Begin
     // 99 9999 9999
     result := '('+Copy(sFONE,1,2)+')'
                  +Copy(sFONE,3,4)+'-'
                  +Copy(sFONE,7,4);
End;

function PadC(S:string;Len:byte):string;
// Centraliza uma string em um espaço determinado
var
 Str:String;
 L:byte;
begin
str :='';
if len < Length(s) then
  begin
  Result := '';
  Exit;
  end;
l:=(Len-Length(S)) div 2;
while l > 0 do
  begin
  str:=str+' ';
  dec(l);
  end;
for l:=1 to length(S) do
  begin
  str := str+s[L];
  end;
 Result := str;
end;

function RetirarCarecterAtalho(const texto : string) : string;
Var
  i, tamanho : integer;
begin
     tamanho := Length(texto);
     for i := 1 to tamanho do
      if texto[i] <> '&' then
        Result := Result + texto[i];
End;

function retornaProximoCodigoMenu : integer;
begin
{     with frmMain.dataSetAux do
      begin
           close;
           commandtext :=
            'Select Max(MEN_CODIGO) AS MAIOR FROM MENUS';
           Open;
           Result := Fields[0].AsInteger + 1;
      End;  }
End;


function retornarCodMenu(const textoMenu : String) : Integer;
begin
   { with frmMain.dataSetAux do
      begin
           Close;
           CommandText := 'Select MEN_CODIGO FROM MENUS WHERE MEN_NOME ='+
           QuotedStr(Trim(textoMenu));
           Open;
           //
           If not IsEmpty then
              Result := Fields[0].AsInteger
           Else
              Result := -1;
      End;    }
End;

Function CopiarArquivo(aOrigem, aDestino : String) : boolean;
var
  SR: TSearchRec;
  I: integer;
begin
  // CopyFile(PChar(txtNomeArquivoRetorno.Text), PChar(M_NMPAST) ,True);
  Result := False;
  if not CopyFile(PChar(aOrigem), PChar(aDestino), true) then
    raise Exception.Create('Erro ao copiar ' + aOrigem + ' para ' + aDestino);
  Result := True;
End;

Function DigitoNossoNumero(aVal1:Double; aVal2, aVal3 : integer) : String;
begin
     Result := FloattoStr(aVal1  + aVal2  + aVal3 );
End;

function Data_Juliana (Data_Atual: TDateTime): String;
var
    Ano, Mes, Dia: Word;
    Data_Final, Data_Inicial: String;
    Resultado: Real;
begin
    //DecodeDate (Date, Ano, Mes, Dia);
    DecodeDate (Data_Atual, Ano, Mes, Dia);
    Data_Final := DateToStr (Data_Atual);
    Data_Inicial := '31/12/' + IntToStr (Ano - 1);
    Resultado := StrToDate (Data_Final) - StrToDate (Data_Inicial);
    Result := FloatToStr (Resultado);
end;

function CalcularJuros (ValorParcela, pJuros, pMulta : Double): Double;
Var
   aValor, aPercentual : double;
begin
     aValor      := ValorParcela + Arredondar(Gerapercentual(ValorParcela, pMulta),2);
     aPercentual := Arredondar(Gerapercentual(aValor, pJuros),2);
     // ((valor+multa)*pejuros)/30
     result := Arredondar(aPercentual/30,2);
End;

Procedure MesesEntreDatas(DataFinal,DataInicial : TDate;
var Anos,Meses,Dias : Integer);
// Retorna a diferença em Dias,Meses e Anos entre 2 datas

  function Calcula(Periodo : Integer) : Integer;
  var
     intCont : Integer;
  begin
    intCont := 0;
    Repeat
    Inc(intCont);
    DataFinal := IncMonth(DataFinal,Periodo * -1);
    Until DataFinal < DataInicial;
    DataFinal := IncMonth(DataFinal,Periodo);
    Inc(intCont,-1);
    Result := intCont;
  End;
begin
  if DataFinal <= DataInicial then
  begin
    Anos := 0;
    Meses := 0;
    Dias := 0;
    exit;
  end;
  Anos := Calcula(12);
  Meses := Calcula(1);
  Dias := Round(DataFinal - DataInicial);
End;


Function StrToReal(inString :String): Real;
{converte um número em Float}
Var
  i : Real;
  k : Integer;
Begin
  Val(inString,i,k);
  StrToReal := i;
End;



function Idade(Nasc : TDate) : String;
Var AuxIdade, Meses, IdadeReal : String;
  MesesFloat : Real;
  IdadeInc : Integer;
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));

  if AuxIdade = '0' then begin
  Result := '0,0';
  Exit;
  end;

  if Meses[1] = '-' then
  Meses := FloatToStr(StrToFloat(Meses) * -1);

  Delete(Meses, 1, 2);

  if Length(Meses) = 1 then
  Meses := Meses + '0';

  if (Meses <> '0') And (Meses <> '') then
  MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30)
  else
  MesesFloat := 0;

  if MesesFloat <> 12 then
  IdadeReal := IntToStr(Trunc(StrToFloat(AuxIdade)))
  //+ ',' + FloatToStr(MesesFloat)
  else begin
  IdadeInc := Trunc(StrToFloat(AuxIdade));
  Inc(IdadeInc);
  IdadeReal := IntToStr(IdadeInc);
  //+ ',' + '0';
  end;

  Result := IdadeReal;
end;

Function UF_N(UF:String): Integer;
var
     UF_N : String;
begin
     if UF = 'RO' then result := 11;
     if UF = 'AC' then result:= 12;
     if UF = 'AM' then result:= 13;
     if UF = 'RR' then result:= 14;
     if UF = 'PA' then result:= 15;
     if UF = 'AP' then result:= 16;
     if UF = 'TO' then result:= 17;
     if UF = 'MA' then result:= 21;
     if UF = 'PI' then result:= 22;
     if UF = 'CE' then result:= 23;
     if UF = 'RN' then result:= 24;
     if UF = 'PB' then result := 25;
     if UF = 'PE' then result := 26;
     if UF = 'AL' then result := 27;
     if UF = 'SE' then result := 28;
     if UF = 'BA' then result := 29;
     if UF = 'MG' then result:= 31;
     if UF = 'ES' then result:= 32;
     if UF = 'RJ' then result:= 33;
     if UF = 'SP' then result:= 35;
     if UF = 'PR' then result:= 41;
     if UF = 'SC' then result:= 42;
     if UF = 'RS' then result:= 43;
     if UF = 'MS' then result:= 50;
     if UF = 'MT' then result:= 51;
     if UF = 'GO' then result:= 52;
     if UF = 'DF' then result:= 53;
end;

Function Modulo11(Numero: String): String;
var
    i,j,k : Integer;
    Soma : Integer;
    Digito : Integer;
    CNPJ : Boolean;
begin
    Result := '';
    Try
        Soma := 0; k:= 2;
        for i := Length(Numero) downto 1 do
        begin
            Soma := Soma + (StrToInt(Numero[i])*k);
            inc(k);
            if k > 9 then
               k := 2;
        end;
        Digito := 11 - Soma mod 11;
        if Digito >= 10 then
             Digito := 0;
        Result := Result + Chr(Digito + Ord('0'));
    except
        Result := 'X';
    end;
End;

//MontaChaveAcesso
//-------------------
//Parametros:
//codUF - codigo da Unidade e Federação do Município de acordo tabela IBGE.
//dtEmissaso - data de emissão da nota fiscal
//CNPJ - codigo CNPJ do emitente
//Modelo - Modelo da Nota Fiscal NF-e (55)
//Serie - codigo de serie da NFe
//NumeroNF - Número da Nota Fiscal
//Result = Chave de acesso
//
Function MontaChaveAcessoNFe_v110( codUF: integer; dtEmissao: TDateTime; CNPJ:string;
         Modelo, Serie, NumeroNF: integer): string;
var emissao:string[10];
    chave:string;
    CodigoNumerico: Integer;
begin
    emissao := formatdatetime('DD/MM/YY', dtEmissao);

    // Essa parte do código gera o Código Numérico (Aleatório)
    //para que funcione inclua a unit "Math" na cláusule Uses.
    Randomize;
    CodigoNumerico := Random(99999999);

    chave := IntToStr(codUF)+copy( emissao, 7,2)+copy(emissao,4,2)+
        CNPJ+StrZero2(Modelo,2,0)+StrZero2(Serie,3,0)+
        StrZero2(NumeroNF,9,0)+StrZero2(CodigoNumerico,9,0);

    Result := chave + Modulo11(chave);
end;

Function StrZero2(Num : Real; Zeros, Deci: Integer): string;
var
      tam,z : integer;
      res,zer : string;
begin
      str(Num:Zeros:Deci, res);
      res := Alltrim(res);
      tam := length(res);
      zer := '';
      for z := 1 to (Zeros-tam) do
            zer := zer + '0';
      result := zer+res
end;


Function GetHora() : String;
begin

End;

Function FormatarData2(aData : String) : String;
begin
     if not Empty(aData) Then
        Result := Copy(aData,7,4)+'-'+Copy(aData,4,2)+'-'+Copy(aData,1,2)
     Else
        Result := '';
End;

Function UF_Combo(aUF : String) : Integer;
begin
     if (aUF = 'AC') then
       Result := 0;
     if (aUF = 'AL') then
       Result := 1;
     if (aUF = 'AM') then
       Result := 2;
     if (aUF = 'AP') then
       Result := 3;
     if (aUF = 'BA') then
       Result := 4;
     if (aUF = 'CE') then
       Result := 5;
     if (aUF = 'DF') then
       Result := 6;
     if (aUF = 'ES') then
       Result := 7;
     if (aUF = 'GO') then
       Result := 8;
     if (aUF = 'MA') then
       Result := 9;
     if (aUF = 'MG') then
       Result := 10;
     if (aUF = 'MS') then
       Result := 11;
     if (aUF = 'MT') then
       Result := 12;
     if (aUF = 'PA') then
       Result := 13;
     if (aUF = 'PB') then
       Result := 14;
     if (aUF = 'PE') then
       Result := 15;
     if (aUF = 'PR') then
       Result := 16;
     if (aUF = 'PI') then
       Result := 17;
     if (aUF = 'RJ') then
       Result := 18;
     if (aUF = 'RN') then
       Result := 19;
     if (aUF = 'RO') then
       Result := 20;
     if (aUF = 'RR') then
       Result := 21;
     if (aUF = 'RS') then
       Result := 22;
     if (aUF = 'SC') then
       Result := 23;
     if (aUF = 'SE') then
       Result := 24;
     if (aUF = 'SP') then
       Result := 25;
     if (aUF = 'TO') then
       Result := 26;
End;

function GetVerificarDescricaoCidade(aNome, aUF : String) : Boolean;
var qraux : TZQuery;
    tabela, texto : string;
begin
  result := False;
  tabela := 'CIDADES';
  texto := 'Select "CID_NOME" from "'+tabela+ '" where ("CID_NOME" = :NOME) and ("CID_UFCIDADE" = :UF)';
  QrAux := TZQuery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      Params[0].AsString := aNome;
      Params[1].AsString := aUF;
      open;
      If not (IsEmpty) Then
         result := True;
    finally
      free;
    end;
End;

Function GetAnoMesData(aData : TDatetime) : String;
Var
  aAnoMes : String;
begin
    aAnoMes := DatetoStr(aData);
    // 99/99/9999
    Result := Copy(aAnoMes, 9,2)+Copy(aAnoMes, 4,2);
End;


Function FilterChars(const S: string; const ValidChars: TChars): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(S) do
  if S[I] in ValidChars then
  Result := Result + S[I];
end;

Function GetCNPJEmpresa(iCodigo : Integer) : String;
var qraux : TZquery;
    texto : string;
begin
    //
    Result := '';
    texto := 'Select "EMP_CNPJ" from "EMPRESAS" Where ("EMP_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := iCodigo;
       Open;
       //
       if not (IsEmpty) Then
            Result := FieldByName('EMP_CNPJ').AsString;
       finally
         free;
       end;
End;

Function ValidaAnoInutilizacaoNumeracao(aData : TDatetime) : Integer;
Var
  ano : String;
begin
    ano := Copy(DatetoStr(aData),7,4);
    //
    If (aData > Date()) Then
       Result := 0
    Else
    if (StrtoInt(ano) < 2006) Then
       Result := 1
    Else
      Result := 2;
    {Ano da Inutilização não pode ser superior ao Ano atual Obrig. 453 Rej.
    I02c Ano da inutilização não pode ser inferior a 2006}
End;

function GetCidade(M_CDCIDA : integer) : String;
var qraux : TZquery;
    texto : string;
begin
    //
    Result := '';
    texto := 'Select "CID_CODIGO", "CID_NOME" from "CIDADES" Where ("CID_CODIGO" = :pCODIGO) ';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := M_CDCIDA;
       Open;
       //
       if not (IsEmpty) Then
            Result := FieldByName('CID_NOME').AsString;
       finally
         free;
       end;
End;

function GetBairro(M_CDCIDA, M_CDBAIR : integer) : String;
var qraux : TZquery;
    texto : string;
begin
    //
    Result := '';
    texto := 'Select * from BAIRROS Where ("CID_CODIGO" = :pCODIGO) AND (BAI_CODIGO = :pBAIRRO)';
    QrAux := TZquery.Create(nil);
    with QrAux do
     try
       Connection := dmDados.ZConexao;
       sql.Add(texto);
       Params.ParamByName('pCODIGO').AsInteger := M_CDCIDA;
       Params.ParamByName('pBAIRRO').AsInteger := M_CDBAIR;
       Open;
       //
       if not (IsEmpty) Then
            Result := FieldByName('BAI_NOME').AsString;
       finally
         free;
       end;
End;

Function GetReferencia(aDesc : String) : Boolean;
var qraux : TZquery;
    texto : string;
begin
  result := False;
  texto := 'Select "PRO_CODIGO", "PRO_REFERENCIA" from "PRODUTOS" Where ("PRO_REFERENCIA" = :pDESC)';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      Params.ParamByName('pDESC').AsString := aDesc;
      open;
      If not (IsEmpty) Then
         result := true;
    finally
      free;
    end;
End;

Function GetVerificaCNPJ(aCNPJ, aTipo : String) : Boolean;
var qraux : TZquery;
    texto : string;
begin
  result := False;
  texto := 'Select "CLI_CODIGO", "CLI_CGC" from "CLIENTES" Where ("CLI_CGC" = :pCNPJ) and ("CLI_CLIFOR" = :pCLIFOR)';
  QrAux := TZquery.Create(nil);
  with QrAux do
    try
      Connection := dmDados.ZConexao;
      sql.Add(texto);
      Params.ParamByName('pCNPJ').AsString   := aCNPJ;
      Params.ParamByName('pCLIFOR').AsString := aTipo;
      open;
      If not (IsEmpty) Then
         result := True;
    finally
      free;
    end;
End;

//////////////////////////////////////////////////////////
// Função: RealizaTransacao
// Objetivo: Realiza a transação TEF
// Parâmetros: TDateTime para identificar o número da transação
//             string para o Número do Cupom Fiscal (COO)
//             string para a Valor da Forma de Pagamento
// Retorno: True para OK ou False para não OK
//////////////////////////////////////////////////////////
function RealizaTransacao( cIdentificacao: TDateTime; cNumeroCupom : string;
    cValorPago: string ): integer;
var cConteudoArquivo, cLinhaArquivo, cLinha: string;
    cArquivo: TextFile; lFlag : longbool; iTentativas, iVezes: integer;
    cMensagem : TForm; bTransacao: boolean;
begin
    if ( FileExists( PathResp+'INTPOS.STS' ) ) then
       DeleteFile( PathResp+'INTPOS.STS' );
    if ( FileExists( PathResp+'INTPOS.001' ) ) then
       DeleteFile( PathResp+'INTPOS.001' );
    AssignFile( cArquivo, 'INTPOS.001');
    // Conteúdo do arquivo INTPOS.001 para solicitar a transação TEF.
    cConteudoArquivo := '';
    cConteudoArquivo := '000-000 = CRT' + #13 + #10 + '001-000 = ' +
       FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 + '002-000 = ' +
       cNumeroCupom + #13 + #10 + '003-000 = ' + cValorPago + #13 + #10 +
       '999-999 = 0';
    ReWrite( cArquivo );
    WriteLn( cArquivo, cConteudoArquivo );
    CloseFile( cArquivo );
    CopyFile( pchar( 'INTPOS.001' ), pchar(PathReq+'INTPOS.001' ),  lFlag );
    DeleteFile( 'INTPOS.001' );
    if FileExists( 'IMPRIME.TXT') then
       DeleteFile( 'IMPRIME.TXT' );
    result := 1;
    for iTentativas := 1 to 7 do
       begin
       // Verifica se o Gerenciador Padrão recebeu o INTPOS.001 da solicitação.
       if ( FileExists( pathResp+'INTPOS.STS' ) ) then
          begin
             cLinhaArquivo := '';
             cLinha := '';
             while True do
                begin
                // Verifica o arquivo INTPOS.001 de resposta.
                if FileExists( pathResp+'INTPOS.001' ) then
                   begin
                      AssignFile( cArquivo, pathResp+'INTPOS.001' );
                      Reset( cArquivo );
                      while not EOF( cArquivo ) do
                         begin
                            ReadLn( cArquivo, cLinhaArquivo );
                            // Verifica se o campo de identificação é o mesmo do solicitado.
                            if ( copy( cLinhaArquivo, 1, 3 ) = '001' ) and
                               ( copy( cLinhaArquivo, 11, Length(cLinhaArquivo)
                                  - 10 ) <> FormatDateTime( 'hhmmss',
                                  cIdentificacao ) ) then
                               begin
                                  result := 0;
                                  exit;
                               end;
                            // Verifica se a Transação foi Aprovada.
                            if ( copy( cLinhaArquivo, 1, 3 ) = '009' ) then
                               begin
                                  if ( copy( cLinhaArquivo, 11,
                                     Length( cLinhaArquivo ) - 10 ) ) = '0' then
                                     bTransacao := True;
                                  if ( copy( cLinhaArquivo, 11,
                                     Length( cLinhaArquivo ) - 10 ) ) <> '0' then
                                     bTransacao := False;
                               end;
                            // Verifica se existem linhas para serem impressas.
                            if ( copy( cLinhaArquivo, 1, 3 ) = '028' ) then
                               begin
                                  if ( StrToInt( copy( cLinhaArquivo, 11,
                                     Length( cLinhaArquivo ) - 10 ) ) <> 0 ) and
                                     ( bTransacao = True ) then
                                     begin
                                        result := 1; // OK
                                        for iVezes := 1 to StrToInt( copy(
                                           cLinhaArquivo, 11, Length(cLinhaArquivo ) - 10 ) ) do
                                           begin
                                              ReadLn( cArquivo, cLinhaArquivo );
                                              // Verifica se o campo é 029 e
                                              // armazena as linhas que serão
                                              // impressas.
                                              if copy( cLinhaArquivo, 1, 3 ) = '029' then
                                                 cLinha := cLinha +
                                                 copy( cLinhaArquivo, 12,
                                                 Length( cLinhaArquivo ) - 12 ) +
                                                 #13 + #10;
                                           end;
                                     end;
                               end;
                            // Verifica se o campo é o 030 para mostrar a mensagem
                            // para o operador.
                            if ( copy( cLinhaArquivo, 1, 3 ) = '030' ) and
                               ( cLinha <> '' ) then
                               begin
                                  cMensagem := TForm.Create( Nil );
                                  with cMensagem do
                                     begin
                                        with TPanel.Create( Nil ) do
                                           begin
                                              Parent := cMensagem;
                                              Align := alClient;
                                              cMensagem.Font.Size := 15;
                                              Caption := copy( cLinhaArquivo, 11,
                                                 Length( cLinhaArquivo ) - 10 );
                                           end;
                                        BorderStyle := bsNone; Height := 129;
                                        Width := 370; Position := poScreenCenter;
                                        Show; Refresh; Sleep( 5000 ); Close;
                                        frmNFEMain.Refresh;
                                        //
                                     end;
                               end;
                            if ( copy( cLinhaArquivo, 1, 3 ) = '030' ) and
                               ( cLinha = '' ) then
                               begin DeleteFile( PathReq +'INTPOS.001' );
                                  Application.MessageBox( pchar( copy(
                                  cLinhaArquivo, 11, Length( cLinhaArquivo )
                                  - 10 ) ), 'Atenção', MB_IconInformation +
                                  MB_OK );
                                  result := 0;
                               end;
                         end;
                         break;
                      end;
                end;
          // Cria o arquivo temporário IMPRIME.TXT com a imagem do comprovante.
          if ( cLinha <> '' ) then
             begin
                CloseFile( cArquivo );
                AssignFile( cArquivo, 'IMPRIME.TXT' );
                ReWrite( cArquivo );
                WriteLn( cArquivo, cLinha );
                CloseFile( cArquivo );
                Break;
             end;
       end;
       Sleep( 1000 );
       if ( iTentativas = 7 ) then
          begin
             CloseFile( cArquivo ); result := -1;  break;
          end;
       if ( result = 0 ) or ( result = -2 ) then
          begin
             CloseFile( cArquivo ); break;
          end;
       end;
end;

//////////////////////////////////////////////////////////
// Função: ImprimeTransacao
// Objetivo: Realiza a impressão da Transação TEF
// Parâmetros: string para a Forma de Pagamento
//             string para a Valor da Forma de Pagamento
//             string para o Número do Cupom Fiscal (COO)
//             TDateTime para identificar o número da transação
// Retorno: True para OK ou False para não OK
//////////////////////////////////////////////////////////
function ImprimeTransacao(iImpressora : Integer; cFormaPGTO: string; cValorPago: string; cCOO: string;
    cIdentificacao: TDateTime ): boolean;
var cLinhaArquivo, cLinha, cSaltaLinha, cConteudo: string;
    cMensagem: TForm;
    cArquivo : TextFile;
    iRetorno, iVezes : integer;
begin
    // Neste ponto é criado o arquivo TEF.TXT, indicando que há uma 
    // operação de TEF sendo realizada. Caso ocorra uma queda de energia, 
    // no momento da impressão do TEF, e a aplicação for inicializada, 
    // ao identificar a existência deste arquivo, a transação do TEF 
    // deverá ser concelada. 
    AssignFile( cArquivo, 'TEF.TXT');
    ReWrite( cArquivo );
    CloseFile( cArquivo );

    // Bloqueia o teclado e o mouse para a impressão do TEF.
    // iRetorno := uFiscal.FISCAL('IniciaModoTEF', iImpressora);
    //
    Result := true;
    if FileExists( 'IMPRIME.TXT') then
       begin
          iRetorno := uFiscal.FISCAL('AbreComprovanteNaoFiscalVinculado', iImpressora,
               pchar(cFormaPGTO ), pchar( cValorPago ), pchar( cCOO ) );
          uFiscal.VerificaRetornoFuncaoImpressora(iRetorno, iImpressora);
       end;
       AssignFile( cArquivo, 'IMPRIME.TXT' );
       begin
          Reset( cArquivo );
          cConteudo := '';
          cLinha := '';
          //
          while not EOF( cArquivo ) do
             begin
               ReadLn( cArquivo, cLinha );
               cConteudo := cConteudo + cLinha + #13 + #10;
               iRetorno :=  uFiscal.FISCAL('UsaComprovanteNaoFiscalVinculado', iImpressora, pchar(cLinha ) + #13 );
               //
               // Aqui é feito o tratamento de erro de comunicação com a
               // impressora (desligamento da impressora durante a impressão do
               // comprovante).

               if not ( uFiscal.VerificaRetornoFuncaoImpressora( iRetorno , iImpressora ) ) then
                  begin
                     //iRetorno := uFiscal.Fiscal('FinalizaModoTEF', iImpressora);
                     //Bematech_FI_FinalizaModoTEF();
                     if ( Application.MessageBox( 'Impressora Não Responde.' +
                        #13 + 'Tentar imprimir Novamente?', 'Atenção',
                        MB_IconInformation + MB_YESNO ) = IDYES ) then
                     begin
                        CloseFile( cArquivo );
                        iRetorno:= uFiscal.Fiscal('FechaComprovanteNaoFiscalVinculado', iImpressora);
                        //
                        if ( ImprimeGerencial(iImpressora) = 1 ) then
                           begin
                              result := true;
                              exit;
                           end
                        else
                           begin
                              result := false;
                              exit;
                           end;
                     end
                     else
                     begin
                          CloseFile( cArquivo );
                          iRetorno := uFiscal.Fiscal('FechaComprovanteNaoFiscalVinculado', iImpressora);
                          //
                          result := false;
                          exit;
                     end;
                  end
               else
                if EOF( cArquivo ) then
                   begin
                      cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 +
                                     #13 + #10 + #13 + #10;
                      iRetorno := uFiscal.FISCAL('UsaComprovanteNaoFiscalVinculado', iImpressora, pchar( cSaltaLinha));
                      //
                      cMensagem := TForm.Create( Nil );
                      with cMensagem do
                         begin
                            with TPanel.Create( Nil ) do
                               begin
                                  Parent := cMensagem; Align := alClient;
                                  cMensagem.Font.Size := 15; Caption := 'Por favor, destaque a 1ª Via';
                               end;
                            BorderStyle := bsNone; Height := 129; Width := 370;
                            Position := poScreenCenter; Show; Refresh;
                            Sleep( 5000 ); Close; frmNFEMain.Refresh;
                         end;
                      iRetorno := uFiscal.FISCAL('UsaComprovanteNaoFiscalVinculado', iImpressora, pchar( cConteudo ));
                      //
                   end;
             end;
       end;
    // Desbloqeia o teclado e o mouse.
    // iRetorno := uFiscal.FISCAL('FinalizaModoTEF', iImpressora);
    //
    CloseFile( cArquivo ); DeleteFile( 'IMPRIME.TXT' );
    iRetorno := uFiscal.FISCAL('FechaComprovanteNaoFiscalVinculado', iImpressora);
end;

//////////////////////////////////////////////////////////
// Função: ConfirmaTransacao
// Objetivo: Confirmar a Transação TEF
// Parâmetros: não há
// Retorno: True para OK ou False para não OK
//////////////////////////////////////////////////////////
function ConfirmaTransacao: boolean;
var cLinhaArquivo, cConteudo: string;
     cArquivo: TextFile;
     lFlag : longbool;
begin
    cLinhaArquivo := '';
    cConteudo     := '';
    AssignFile( cArquivo, PathResp+ 'INTPOS.001' );
    Reset( cArquivo );
    //
    while not EOF( cArquivo ) do
       begin
          ReadLn( cArquivo, cLinhaArquivo );
          if ( copy( cLinhaArquivo, 1, 3 ) = '001' ) or
             ( copy( cLinhaArquivo, 1, 3 ) = '002' ) or
             ( copy( cLinhaArquivo, 1, 3 ) = '010' ) or
             ( copy( cLinhaArquivo, 1, 3 ) = '012' ) or
             ( copy( cLinhaArquivo, 1, 3 ) = '027' ) then
                cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
          if ( copy( cLinhaArquivo, 1, 3 ) = '999' ) then
             cConteudo := cConteudo + cLinhaArquivo;
       end;
    CloseFile( cArquivo );
    cConteudo := '000-000 = CNF' + #13 + #10 + cConteudo;
    AssignFile( cArquivo, 'INTPOS.001' );
    ReWrite( cArquivo );
    WriteLn( cArquivo, cConteudo );
    CloseFile( cArquivo );
    CopyFile( pchar( 'INTPOS.001' ),
              pchar( PathReq +  'INTPOS.001' ), lFlag );
    DeleteFile( 'INTPOS.001' );
    if ( FileExists( PathResp + 'INTPOS.STS' ) ) then
       DeleteFile( PathResp + 'INTPOS.STS' );
    if ( FileExists( PathResp + 'INTPOS.001' ) ) then
       DeleteFile( PathResp + 'INTPOS.001' );

    // Se o arquivo TEF.TXT, que identifica que houve uma transação impressa
    // existir, o mesmo será exluído.
    if ( FileExists( 'TEF.TXT' ) ) then
        DeleteFile( 'TEF.TXT' );
end;

//////////////////////////////////////////////////////////
// Função: NaoConfirmaTransacao
// Objetivo: Não Confirmar a Transação TEF
// Parâmetros: não há
// Retorno: True para OK ou False para não OK
//////////////////////////////////////////////////////////
function NaoConfirmaTransacao: boolean;
var cLinhaArquivo, cConteudo: string;
     cArquivo: TextFile;
    lFlag : longbool;
    cValor, cNomeRede, cNSU: string;
begin
    cLinhaArquivo := '';
    cConteudo := '';
    AssignFile( cArquivo, PathResp + 'INTPOS.001' );
    Reset( cArquivo );
    while not EOF( cArquivo ) do
       begin
          ReadLn( cArquivo, cLinhaArquivo );
          if ( copy( cLinhaArquivo, 1, 3 ) = '001' ) then
             cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
          if ( copy( cLinhaArquivo, 1, 3 ) = '003' ) then
             cValor := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
          if ( copy( cLinhaArquivo, 1, 3 ) = '010' ) then
             begin
                cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                cNomeRede := copy( cLinhaArquivo, 11,
                            Length( cLinhaArquivo ) - 10 );
             end;
          if ( copy( cLinhaArquivo, 1, 3 ) = '012' ) then
             begin
                cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                cNSU := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
             end;
          if ( copy( cLinhaArquivo, 1, 3 ) = '027' ) then
             cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
          if ( copy( cLinhaArquivo, 1, 3 ) = '999' ) then
             cConteudo := cConteudo + cLinhaArquivo;
       end;
    //
    CloseFile( cArquivo );
    cConteudo := '000-000 = NCN' + #13 + #10 + cConteudo;
    AssignFile( cArquivo, 'INTPOS.001' );
    ReWrite( cArquivo );
    WriteLn( cArquivo, cConteudo );
    CloseFile( cArquivo );
    CopyFile( pchar( 'INTPOS.001' ),
              pchar( PathReq + 'INTPOS.001' ), lFlag );
    DeleteFile( 'INTPOS.001' );
    if ( FileExists( PathResp + 'INTPOS.STS' ) ) then
       DeleteFile( PathResp + 'INTPOS.STS' );
    if ( FileExists( PathResp + 'INTPOS.001' ) ) then
       DeleteFile( PathResp +'INTPOS.001' );

    // Se o arquivo TEF.TXT, que identifica que houve uma transação impressa 
    // existir, o mesmo será exluído.
    if ( FileExists( 'TEF.TXT' ) ) then 
       DeleteFile( 'TEF.TXT' );

    Application.MessageBox( pchar( 'Cancelada a Transação' + #13 + #13 +
       'Rede: ' + cNomeRede + #13 + 'Doc Nº: ' + cNSU + #13 + 'Valor: ' +
       FormatFloat( '#,##0.00', StrToFloat( cValor ) / 100 ) ), 'Atenção',
       MB_IconInformation + MB_OK );
end;

////////////////////////////////////////////////////////////////////////////////
// Função: CancelaTransacaoTEF
// Objetivo: Cancelar uma transação já confirmada
// Parâmetros: String com o número de identificação (NSU)
//             String com o valor da transação
//             String com o valor da transação
//             String com o nome e bandeira (REDE)
//             String com o número do documento
//             String com a data da transação no formato DDMMAAAA
//             String com a hora da transação no formato HHSMMSS
// Retorno: True para OK ou False para não OK
////////////////////////////////////////////////////////////////////////////////
function CancelaTransacaoTEF(cNSU: string; cValor: string; cNomeRede: string;
         cNumeroDOC: string; cData: string; cHora: string ): boolean;
var cConteudo: string; cArquivo: TextFile; lFlag : longbool;
begin
    cConteudo := '';
    cConteudo := '000-000 = CNC'           + #13 + #10 +
                 '001-000 = ' + cNSU       + #13 + #10 +
                 '003-000 = ' + cValor     + #13 + #10 +
                 '010-000 = ' + cNomeRede  + #13 + #10 +
                 '012-000 = ' + cNumeroDOC + #13 + #10 +
                 '022-000 = ' + cData      + #13 + #10 +
                 '023-000 = ' + cHora      + #13 + #10 +
                 '999-999 = 0';
    AssignFile( cArquivo, 'INTPOS.001' );
    ReWrite( cArquivo );
    WriteLn( cArquivo, cConteudo );
    CloseFile( cArquivo );
    CopyFile( pchar( 'INTPOS.001' ), pchar( PathReq +'INTPOS.001' ),
              lFlag );
    DeleteFile( 'INTPOS.001' );
end;

////////////////////////////////////////////////////////////////////////////////
// Função: ImprimeGerencial
// Objetivo: Imprimir através do Relatório Gerencial a transação efetuada.
// Retorno: 1 para OK ou diferente de 1 para não OK
////////////////////////////////////////////////////////////////////////////////
function ImprimeGerencial(iImpressora : Integer): integer;
var cConteudo, cLinha, cSaltaLinha, cLinhaArquivo: string;
     cArquivo : TextFile;
    iTentativas, iVezes: integer;
    cMensagem : TForm;
    bTransacao: boolean;
    iRetorno : Integer;
begin
    if FileExists( 'IMPRIME.TXT') then DeleteFile( 'IMPRIME.TXT' );
    result := 1;
    for iTentativas := 1 to 7 do
       begin
          // Verifica se o Gerenciador Padrão recebeu o INTPOS.001 da solicitação
          if ( FileExists(PathResp + 'INTPOS.STS' ) ) then
             begin
                cLinhaArquivo := '';
                cLinha := '';
                while True do
                   begin
                      // Verifica o arquivo INTPOS.001 de resposta
                      if FileExists( PathResp + 'INTPOS.001' ) then
                         begin
                            AssignFile( cArquivo, PathResp + 'INTPOS.001' );
                            Reset( cArquivo );
                            while not EOF( cArquivo ) do
                               begin
                                  ReadLn( cArquivo, cLinhaArquivo );
                                  // Verifica se a Transação foi Aprovada
                                  if ( copy( cLinhaArquivo, 1, 3 ) = '009' ) then
                                     begin
                                        if ( copy( cLinhaArquivo, 11,
                                        Length( cLinhaArquivo ) - 10 ) ) = '0'
                                           then bTransacao := True;
                                        if ( copy( cLinhaArquivo, 11,
                                        Length( cLinhaArquivo ) - 10 ) ) <> '0'
                                           then bTransacao := False;
                                     end;
                                  // Verifica se existem linhas para serem
                                  // impressas
                                  if ( copy( cLinhaArquivo, 1, 3 ) = '028' ) then
                                     begin
                                        if ( StrToInt( copy( cLinhaArquivo, 11,
                                        Length( cLinhaArquivo ) - 10 ) ) <> 0 )
                                        and ( bTransacao = True ) then
                                           begin
                                              result := 1; // OK
                                              for iVezes := 1 to StrToInt( copy(
                                              cLinhaArquivo, 11, Length(
                                              cLinhaArquivo ) - 10 ) ) do
                                              begin
                                                 ReadLn( cArquivo,cLinhaArquivo );
                                                 // Verifica se o campo é 029 e
                                                 // armazena as linhas que serão
                                                 // impressas
                                                 if copy( cLinhaArquivo, 1, 3 ) =
                                                 '029' then
                                                 cLinha := cLinha + copy(
                                                 cLinhaArquivo, 12, Length(
                                                 cLinhaArquivo)-12)+#13+#10;
                                              end;
                                           end;
                                     end;
                                  // Verifica se o campo é o 030 para mostrar a
                                  // mensagem para o operador
                                  if ( copy( cLinhaArquivo,1,3 ) = '030' ) and
                                  ( cLinha <> '' ) then
                                     begin
                                        cMensagem := TForm.Create( Nil );
                                        with cMensagem do
                                           begin
                                              with TPanel.Create( Nil ) do
                                                 begin
                                                   Parent := cMensagem;
                                                   Align := alClient;
                                                   cMensagem.Font.Size := 15;
                                                   Caption:=copy(cLinhaArquivo,
                                                   11, Length( cLinhaArquivo ) -
                                                   10 );
                                                 end;
                                              BorderStyle := bsNone;
                                              Height := 129; Width := 370;
                                              Position := poScreenCenter;
                                              Show;Refresh;Sleep( 5000 );Close;
                                              frmNFEMain.Refresh;
                                           end;
                                     end;
                                  if ( copy( cLinhaArquivo, 1, 3 ) = '030' ) and
                                  ( cLinha = '' ) then
                                  begin
                                     if ( FileExists(
                                      PathReq + 'INTPOS.001' ) ) then
                                     DeleteFile( PathReq +'INTPOS.001' );
                                     Application.MessageBox( pchar( copy(
                                          cLinhaArquivo, 11, Length( cLinhaArquivo )
                                               - 10 ) ), 'Atenção', MB_IconInformation + MB_OK );
                                     result := 0;
                                  end;
                               end;
                            break;
                         end;
                   end;
                // Cria o arquivo temporário IMPRIME.TXT com a imagem do
                // comprovante
                if ( cLinha <> '' ) then
                begin
                   CloseFile( cArquivo );
                   AssignFile( cArquivo, 'IMPRIME.TXT' );
                   ReWrite( cArquivo );
                   WriteLn( cArquivo, cLinha );
                   CloseFile( cArquivo );
                   Break;
                end;
             end;
          Sleep( 1000 );
          if ( iTentativas = 7 ) then
             begin
               CloseFile( cArquivo ); result := -1; break;
             end;
          if ( result = 0 ) or ( result = -2 ) then
             begin
                CloseFile( cArquivo );
                if ( FileExists( PathResp + 'INTPOS.STS' ) ) then
                   DeleteFile( PathResp + 'INTPOS.STS' );
                if ( FileExists( PathResp + 'INTPOS.001' ) ) then
                   DeleteFile( PathResp + 'INTPOS.001' );
                break;
             end;
       end;   // fim-do-para
    // Bloqueia o teclado e o mouse para a impressão do TEF
    // iRetorno := uFiscal.FISCAL('IniciaModoTEF',iImpressora);
    //
    if FileExists( 'IMPRIME.TXT') then
       begin
          AssignFile( cArquivo, 'IMPRIME.TXT' );
          Reset( cArquivo );
          cConteudo := '';
          cLinha := '';
          while not EOF( cArquivo ) do
             begin
                ReadLn( cArquivo, cLinha );
                cConteudo := cConteudo + cLinha + #13 + #10;
                iRetorno := uFiscal.FISCAL('RelatorioGerencial', iImpressora, pchar( cLinha ) + #13 );
                //
                uFiscal.VerificaRetornoFuncaoImpressora( iRetorno, iImpressora );
                //
                if EOF( cArquivo ) then
                   begin
                      cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 +
                         #13 + #10 + #13 + #10;
                      iRetorno := uFiscal.FISCAL('RelatorioGerencial', iImpressora, pchar( cSaltaLinha ) );
                      //
                      uFiscal.VerificaRetornoFuncaoImpressora( iRetorno, iImpressora );
                      cMensagem := TForm.Create( Nil );
                      with cMensagem do
                         begin
                            with TPanel.Create( Nil ) do
                               begin
                                  Parent := cMensagem; Align := alClient;
                                  cMensagem.Font.Size := 15;
                                  Caption := 'Por favor, destaque a 1ª Via';
                               end;
                            BorderStyle := bsNone; Height := 129; Width := 370;
                            Position := poScreenCenter; Show; Refresh;
                            Sleep( 5000 ); Close; frmNFEMain.Refresh;
                         end;
                      iRetorno := uFiscal.FISCAL('RelatorioGerencial', iImpressora, pchar( cConteudo ) );
                      //
                      uFiscal.VerificaRetornoFuncaoImpressora( iRetorno, iImpressora );
                   end;
             end;
          CloseFile( cArquivo );
          DeleteFile( 'IMPRIME.TXT' );
          // Desbloqueia o teclado e o mouse
          // iRetorno := uFiscal.FISCAL('FinalizaModoTEF',iImpressora);
          //
          iRetorno := uFiscal.FISCAL('FechaRelatorioGerencial', iImpressora);
          //
          uFiscal.VerificaRetornoFuncaoImpressora( iRetorno, iImpressora );
       end;
end;

//////////////////////////////////////////////////////////////////////////////// 
// Função: Administrativo 
// Objetivo: Acessar o Módulo Adminstrativo da Rede
// Retorno: True para OK ou False para não OK
////////////////////////////////////////////////////////////////////////////////
function Administrativo: boolean;
var cConteudoArquivo: string;
    cArquivo: TextFile;
    lFlag: longbool;
    cIdentificacao: TDateTime;
begin
  cIdentificacao := frmNFEMain.GetHoraAtual();
  AssignFile( cArquivo, 'INTPOS.001' );
  ReWrite( cArquivo );

  // Conteúdo do arquivo INTPOS.001
  cConteudoArquivo := '';
  cConteudoArquivo := '000-000 = ADM' + #13 + #10 +
        '001-000 = ' + FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 +
        '999-999 = 0';

  // Escreve no arquivo INTPOS.001
  WriteLn( cArquivo, cConteudoArquivo );

  // Fecha o arquivo INTPOS.001
  CloseFile( cArquivo );

  // Copia o arquivo para o diretório do Gerenciador Padrão
  CopyFile( pchar( 'INTPOS.001' ), pchar( PathReq +'INTPOS.001' ),
      lFlag );

  // Exclui o arquivo INTPOS.001 local
  DeleteFile( 'INTPOS.001' );
end;

////////////////////////////////////////////////////////////////////////////////
// Função: FuncaoAdministrativaTEF
// Objetivo: Chamar o módulo administrativo da bandeira
// Parâmetro: String com o identificador
// Retorno: 1 para OK  diferente de 1 para não OK
////////////////////////////////////////////////////////////////////////////////
function FuncaoAdministrativaTEF( cIdentificacao: TDateTime ): integer;
var cArquivo: TextFile;
    lFlag: longbool;
    cConteudoArquivo: string;
begin
   AssignFile( cArquivo, 'INTPOS.001');
   // Conteúdo do arquivo INTPOS.001 para solicitar a transação TEF
   cConteudoArquivo := '';
   cConteudoArquivo := '000-000 = ADM' + #13 + #10 +
      '001-000 = ' + FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 +
      '999-999 = 0';
   ReWrite( cArquivo );
   WriteLn( cArquivo, cConteudoArquivo );
   CloseFile( cArquivo );
   CopyFile( pchar( 'INTPOS.001' ), pchar( PathReq + 'INTPOS.001' ), lFlag );
   DeleteFile( 'INTPOS.001' );
end;

Function Venda(iCUPOM, iLOJA, iCLIENTE, iVENDEDOR, iCaixa : Integer; aDATAVENDA: TDateTime; aHORAVENDA, aSituacao,
  aTIPO_FRETE: String; fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
  fTROCO, fPERC_FRETE, fTAXA_SERVICO: Double; aENDERECO, aNUMERO,
  aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone,
  aNomeCliente: String; iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
  iMODALIDADE_PEDIDO: Integer; aOBSERVACAO, aOBS1, aOBS2,
  aNRMESA: String; aCDSItens, aCDSModalidades : TClientDataSet) : integer;
Var
   iTEF, W_TOTAPC: integer;
   cIdentificacao, M_DTMOVI : TDateTime;
   M_HOMOVI, M_NMMODA : String;
   cSaltaLinha, cFormaPGTO, cFormaPGTOCartao, cValorPago, aLote : string;
   M_VLMODA : Double;
   iRetorno, M_CDMODA, M_CDNATU : Integer;
   M_NRVEND, M_NRSEQU, M_NRITEM : integer;
   aProduto, aUnidade, aTamanho : String;
   fQuant, fQuantAnterior, fQuantAtual : Double;
   fValorCompra, fValorCusto, fValorVenda, fVlDesconto, fVlAcrescimo, M_VLTROC : Double;
begin
       Result := 0;
       //
       M_DTMOVI := aDATAVENDA;
       M_HOMOVI := aHORAVENDA;
       iTEF     := 0;
       iRetorno := 1;
       //
       If (iRetorno = 1) Then
        begin
              With aCDSModalidades do
               begin
                    DisableControls;
                    First;
                    //
                    While not (Eof) do
                    begin
                        If (FieldByName('CDS_VLRECEBIDO').AsCurrency > 0) Then
                           begin
                                M_CDMODA := FieldByName('CDS_CODIGO').AsInteger;
                                M_NMMODA := FieldByName('CDS_NOME').AsString;
                                M_VLMODA := FieldByName('CDS_VLRECEBIDO').AsCurrency;
                                //  Formas de Pagamento
                                If (M_VLMODA > 0.0) and (FieldByName('CDS_FLFIXA').AsString <> 'C') Then
                                 Begin
                                    { iRetorno := uFiscal.FISCAL('Pagamento', M_IMPRES,
                                                   M_NMMODA, FormatFloat('###,##0.#0',M_VLMODA));
                                     //
                                     If (iRetorno <> 1) Then
                                        Raise Exception.Create('Erro ao tentar efetua forma pagamento.');}
                                 End;
                                //
                                {If (M_VLMODA > 0.0) and (dmConsultas.cdsModalidade.FieldByName('MOD_FLFIXA').AsString = 'C') Then
                                begin
                                     cFormaPGTOCartao := dmConsultas.cdsModalidade.FieldByName('MOD_NOME').AsString;
                                     cValorPago := FormatFloat('###,##0.#0', M_VLMODA);
                                     // dmConsultas.cdsModalidade.FieldByName('MOD_VALOR').AsString;
                                     SetLength( cCupomNumero, 6 );
                                     //iRetorno := uFiscal.FISCAL('NumeroCupom', M_IMPRES);
                                    // iRetorno := uBematech.Bematech_FI_NumeroCupom( cCupomNumero );

                                     cIdentificacao := FrmAdmin.GetHoraAtual();
                                     //Time;
                                     //
                                     iTEF := RealizaTransacao( cIdentificacao, cCupomNumero,
                                           FormatFloat( cValorPago, 0 ) );
                                     if ( iTEF = 1 ) then
                                        begin
                                             iRetorno := uFiscal.FISCAL('Pagamento', M_IMPRES,
                                                   cFormaPGTOCartao,
                                                    FormatFloat('###,##0.#0',M_VLMODA));
                                             //
                                        end;
                                        //
                                        if ( iTEF = -1 ) then
                                              Application.MessageBox( 'Gerencial Padrão não está ativo !',
                                                    'Atenção', MB_IconError + MB_OK );
                                              // Se a transação não for aprovada, deve-se permitir a
                                              // escolha de outra forma de pagamento. Neste caso, está
                                              // sendo utilizado "Dinheiro" como exemplo.
                                        if ( iTEF = -2 ) or ( iTEF = 0 ) then
                                         begin
                                             Exit;
                                         End;
                                End;    }
                           End;
                         // Proximo
                        Next;
                   End;
               End;
        //
       Try
           If (iRetorno = 1) Then
             Begin
                  //
                  uFuncoes.RefreshCDS(dmDados.CdsConfig);
                  //
                  dmDados.CdsConfig.edit;
                  dmDados.CdsConfig.FieldByName('CFG_VENDA').AsFloat     :=
                       dmDados.CdsConfig.FieldByName('CFG_VENDA').AsFloat + 1;
                  dmDados.CdsConfig.FieldByName('CFG_SEQUENCIA').AsFloat :=
                      dmDados.CdsConfig.FieldByName('CFG_SEQUENCIA').AsFloat+1;
                  //
                  M_CDNATU := 1;
                  M_NRVEND := dmDados.CdsConfig.FieldByName('CFG_VENDA').AsInteger;
                  M_NRSEQU := dmDados.CdsConfig.FieldByName('CFG_SEQUENCIA').AsInteger;
                  //
                  dmDados.CdsConfig.ApplyUpdates(0);
                  // Tabela Vendas
                  {function TdmEstoque.AdicionarVenda(iPEDIDO, iCUPOM, iLOJA, iSEQUENCIA,
                  iCLIENTE, iVENDEDOR: Integer; aDATAVENDA: TDateTime; aHORAVENDA, aSituacao,
                  aTIPO_FRETE: String; fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
                  fTROCO, fPERC_FRETE, fTAXA_SERVICO: Double; aENDERECO, aNUMERO,
                  aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone,
                  aNomeCliente: String; iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
                  iMODALIDADE_PEDIDO: Integer; aOBSERVACAO, aOBS1, aOBS2,
                  aNRMESA: String): Integer; }
                  If (dmEstoque.AdicionarVenda(M_NRVEND, iCUPOM, iLOJA, M_NRSEQU, iCLIENTE, iVENDEDOR,
                     M_DTMOVI, M_HOMOVI, 'F', aTIPO_FRETE, fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
                     fTROCO, fPERC_FRETE, fTAXA_SERVICO, aENDERECO, aNUMERO,  aCOMPLEMENTO, aBAIRRO,
                     aCidade, aReferencia, aTelefone, aNomeCliente, iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
                     iMODALIDADE_PEDIDO, aOBSERVACAO, aOBS1, aOBS2,aNRMESA ) = M_NRVEND) Then
                  Begin
                       With aCDSItens do
                        begin
                             DisableControls;
                             First;
                             M_NRITEM := 1;
                             while not (Eof) do
                              begin
                                   aLote := 'GERAL';
                                   // se não cancelado
                                   if (FieldByName('ITE_FLCANC').AsString <> 'C') Then
                                     begin
                                          aProduto := FieldByName('ITE_CDITEN').AsString;
                                          aUnidade := FieldByName('ITE_CDUNID').AsString;
                                          fQuant   := FieldByName('ITE_QTITEN').asFloat;
                                          //
                                          fValorCompra := FieldByName('ITE_VLCOMP').AsFloat;
                                          fValorCusto  := FieldByName('ITE_VLCUST').AsFloat;
                                          fValorVenda  := FieldByName('ITE_VLUNIT').AsFloat;
                                          fVlDesconto  := FieldByName('ITE_VLDESC').AsFloat;
                                          aLote        := FieldByName('ITE_NRLOTE').AsString;
                                          { Function AdicionarItemVenda(iPEDIDO, iNRITEM, iCDVENDEDOR, iCor: Integer;
                                          aProduto, aUNIDADE, aARMAZENAMENTO, aSERIE : String;
                                          fQUANTIDADE, fValorUnitario, fDesconto, fVCusto, fCompra, fValorIPI : Double): Boolean;
                                          }    //  Table: "VENDAS_ITENS"
                                          If (dmEstoque.AdicionarItemVenda(M_NRVEND, M_NRITEM, FieldByName('ITE_VENDEDOR').AsInteger,
                                              FieldByName('ITE_CODCOR').AsInteger, aProduto,
                                              aUnidade, aUnidade, '', fQuant, fValorVenda, fVlDesconto,
                                              fValorCusto, fValorCompra, FieldByName('ITE_VALIPI').AsFloat)) Then
                                             begin
                                                  // Estoque
                                                  fQuantAnterior := 0;
                                                  fQuantAtual    := 0;
                                                  //
                                                  uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                                                  //
                                                  fValorCusto := 0;
                                                  fValorCompra := 0;
                                                  if not (dmDados.cdsProduto.IsEmpty) Then
                                                  begin
                                                       fValorCompra := dmDados.cdsProdutoPRO_VLCOMPRA.AsFloat;
                                                       fValorCusto := dmDados.cdsProdutoPRO_VLCUSTO.AsFloat;
                                                       aUnidade    := dmDados.cdsProdutoUNI_CODIGO.AsString;
                                                       aTamanho    := 'UN';
                                                  End;
                                                  //
                                                  With dmEstoque.cdsEstoque do
                                                    begin
                                                         Close;
                                                         Params[0].AsInteger := iLoja;
                                                         Params[1].AsString  := aProduto;
                                                         Open;
                                                         //
                                                         If not (IsEmpty) Then
                                                           begin
                                                                fQuantAnterior := FieldByName('EST_QUANTIDADE').AsFloat;
                                                                fQuantAtual    := FieldByName('EST_QUANTIDADE').AsFloat - fQuant;
                                                           End
                                                           Else
                                                               fQuantAtual := fQuant;
                                                           //
                                                           close;
                                                    End;  // with  dmEstoque.cdsEstoque
                                                  { function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
                                                  aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
                                                  aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
                                                  fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;}
                                                  dmEstoque.AdicionarEstoqueProduto(iLoja, 'S', aProduto, aUnidade , aTamanho,
                                                             '', DatetoStr(M_DTMOVI), '', 0, fQuant, 0, 0, 0, fQuant, 0);
                                                  //  Historico
                                                  {function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
                                                  iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
                                                  aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
                                                  fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;}
                                                  dmEstoque.AdicionarHistoricoProduto(M_NRSEQU, iLOJA, M_NRITEM, M_NRVEND,
                                                        0, iVENDEDOR, iCaixa , aProduto, aUnidade, aTamanho,
                                                        M_HOMOVI, 'V', aProduto, M_DTMOVI, fQuantAnterior, fQuant, fQuantAtual,
                                                       fValorCusto, fValorCompra, fValorVenda);
                                                  // lote do produto
                                                  dmEstoque.AtualizarLoteProduto(aProduto, aLote, 'S', '', fQuant);     
                                             End;
                                     End;
                                   //
                                   M_NRITEM := M_NRITEM + 1;
                                   Next;
                              End;
                             EnableControls;;
                        End;   // with  aCDSItens
                        //
                        // Movimento de caixa
                        With aCDSModalidades do
                        begin
                           DisableControls;
                           First;
                           While not (Eof) do
                            begin
                               If (FieldByName('CDS_VLRECEBIDO').AsFloat > 0) Then
                                begin
                                     M_CDMODA := FieldByName('CDS_CODIGO').AsInteger;
                                     M_NMMODA := FieldByName('CDS_NOME').AsString;
                                     M_VLMODA := FieldByName('CDS_VLRECEBIDO').AsCurrency;
                                     // Grava dados no BD.
                                     If (M_VLMODA > 0.0) Then
                                      begin
                                          //
                                          If (FieldByName('CDS_FLFIXA').AsString = 'D') Then
                                             M_VLTROC := fTROCO
                                          Else
                                             M_VLTROC := 0;
                                            {    Function AdicionarMovCaixa(
                                            iSEQUENCIA, iLOJA, iVenda, iMODALIDADE, iCaixa, iNatureza, iFuncionario : Integer;
                                            aTIPOMOV, aHRMOVIMENTO, aOBSEVACAO, aSITUACAO : String;
                                            aDTMOVIMENTO : TDateTime; fVLMODALIDADE, fTOVENDA, fVLTROCO : Double) : Boolean; }
                                            dmEstoque.AdicionarMovCaixa(M_NRSEQU, iLOJA, M_NRVEND, M_CDMODA, iCaixa, M_CDNATU, iVENDEDOR,
                                                  'V', M_HOMOVI, 'VENDA', 'N', M_DTMOVI, M_VLMODA, fVALOR, M_VLTROC);
                                            //
                                      End;
                                End;
                               // proxima modalidade
                               Next;
                            End;  // fim-enquanto
                           EnableControls;
                        End;   // with aCDSModalidades

                  End
                  Else
                     raise Exception.Create('Erro ao tentar gravar venda.');
                  //
                  result := M_NRVEND;
            End;  // fim-se (iRetorno = 1)
         Except

         End;
       End;  // fim-se (iRetorno = 1) Then
End;

end.



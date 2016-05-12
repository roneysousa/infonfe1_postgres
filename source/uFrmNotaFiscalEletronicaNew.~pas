unit uFrmNotaFiscalEletronicaNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, Grids, DBGrids,
  DBClient, ToolEdit, RXDBCtrl, Mask, DBCtrls, CurrEdit;

type
  TFrmNotaFiscalEletronicaNew = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    BtAdicionar: TBitBtn;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    tbsDados: TTabSheet;
    tbsDestinatario: TTabSheet;
    tsbTotais: TTabSheet;
    tbsTransportes: TTabSheet;
    dsCadastro: TDataSource;
    pnlTopo: TPanel;
    pnlDados: TPanel;
    pnlDetalheDados: TPanel;
    pnlBotoes: TPanel;
    grdConsultar: TDBGrid;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    cmbEmpresa: TDBLookupComboBox;
    Label2: TLabel;
    dbeCNPJCPF: TDBEdit;
    Label3: TLabel;
    dbeRazaoDestinatario: TDBEdit;
    Label4: TLabel;
    dbeModelo: TDBEdit;
    Label5: TLabel;
    dbeNumero: TDBEdit;
    Label6: TLabel;
    dbeSerie: TDBEdit;
    dbeDTEMIS: TDBDateEdit;
    Label7: TLabel;
    btnNovoItem: TBitBtn;
    btnExcluiItem: TBitBtn;
    btnSalvarItem: TBitBtn;
    btnCancelarItem: TBitBtn;
    pnlTotalItens: TPanel;
    Label8: TLabel;
    dbeCupom: TDBEdit;
    Label9: TLabel;
    cmbNatureza: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label10: TLabel;
    cmbFormaPaga: TDBLookupComboBox;
    Label11: TLabel;
    cmbEmissao: TDBLookupComboBox;
    Label12: TLabel;
    cmbFinalidadeEmissao: TDBLookupComboBox;
    dsItensNota: TDataSource;
    edtCDPROD: TEdit;
    Label13: TLabel;
    spLocProduto: TSpeedButton;
    edtDescricao: TEdit;
    spCFOP: TSpeedButton;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtCFOP: TEdit;
    edtQTDE: TCurrencyEdit;
    edtValorUnitario: TCurrencyEdit;
    edtDesconto: TCurrencyEdit;
    edtAcrescimo: TCurrencyEdit;
    edtICMS: TCurrencyEdit;
    edtIPI: TCurrencyEdit;
    edtSubTotal: TCurrencyEdit;
    spLocCliente: TSpeedButton;
    Label51: TLabel;
    cmbTipoPessoa: TComboBox;
    tsbInformacoes: TTabSheet;
    Label52: TLabel;
    DBMemo1: TDBMemo;
    Label53: TLabel;
    DBMemo2: TDBMemo;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit16: TDBEdit;
    cmbUFTransp: TDBComboBox;
    DBEdit17: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    dbeTransportadora: TDBEdit;
    spTransportadora: TSpeedButton;
    Label33: TLabel;
    dbeCNPJTransporte: TDBEdit;
    Label34: TLabel;
    dbeTransRazao: TDBEdit;
    Label35: TLabel;
    DBEdit15: TDBEdit;
    Label54: TLabel;
    dbeVeiculoPlaca: TDBEdit;
    Label55: TLabel;
    dbeVeiculoRNTC: TDBEdit;
    Label56: TLabel;
    cmbUFVeiculo: TDBComboBox;
    Label57: TLabel;
    DBEdit14: TDBEdit;
    Label58: TLabel;
    DBEdit28: TDBEdit;
    Label59: TLabel;
    DBEdit29: TDBEdit;
    Label60: TLabel;
    cmbUFRetencao: TDBComboBox;
    Label61: TLabel;
    dbeCidadeRetencao: TDBEdit;
    Label62: TLabel;
    dbeCFOPRetencaoICMS: TDBEdit;
    Label63: TLabel;
    dbeICMSRetido: TDBEdit;
    DBGridVolumes: TDBGrid;
    dsVolumes: TDataSource;
    Panel2: TPanel;
    btnIncVolume: TBitBtn;
    btnEditarVol: TBitBtn;
    btnExcluir: TBitBtn;
    Label64: TLabel;
    dbeRecoquePlaca: TDBEdit;
    Label65: TLabel;
    dbeReboqueRNTC: TDBEdit;
    Label66: TLabel;
    cmbReboqueUF: TDBComboBox;
    TabSheet6: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label67: TLabel;
    dbeCNPJEmitente: TDBEdit;
    Label68: TLabel;
    dbeRazaoEmitente: TDBEdit;
    Label69: TLabel;
    DBEdit35: TDBEdit;
    Label70: TLabel;
    dbeEmiInsEstadual: TDBEdit;
    Label71: TLabel;
    DBEdit37: TDBEdit;
    Label72: TLabel;
    DBEdit38: TDBEdit;
    Label73: TLabel;
    DBEdit39: TDBEdit;
    Label74: TLabel;
    dbeLogradouroEmitente: TDBEdit;
    Label75: TLabel;
    dbeNumeroEmissor: TDBEdit;
    Label76: TLabel;
    DBEdit42: TDBEdit;
    Label77: TLabel;
    DBEdit43: TDBEdit;
    Label78: TLabel;
    dbeBairroEmissor: TDBEdit;
    Label79: TLabel;
    cmbUFEmitente: TDBComboBox;
    Label80: TLabel;
    dbeCidadeEmissor: TDBEdit;
    Label81: TLabel;
    DBEdit46: TDBEdit;
    Label82: TLabel;
    DBEdit47: TDBEdit;
    PageControlImpostos: TPageControl;
    tbsICMS: TTabSheet;
    tbsISSQN: TTabSheet;
    tbsRetencao: TTabSheet;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    Label24: TLabel;
    DBEdit5: TDBEdit;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    rgTipoFrete: TDBRadioGroup;
    Label27: TLabel;
    DBEdit8: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label30: TLabel;
    DBEdit11: TDBEdit;
    Label31: TLabel;
    dbeValorNota: TDBEdit;
    Label83: TLabel;
    DBEdit18: TDBEdit;
    Label84: TLabel;
    DBEdit19: TDBEdit;
    Label85: TLabel;
    DBEdit22: TDBEdit;
    Label86: TLabel;
    DBEdit23: TDBEdit;
    Label87: TLabel;
    DBEdit24: TDBEdit;
    Label88: TLabel;
    DBEdit25: TDBEdit;
    Label89: TLabel;
    DBEdit27: TDBEdit;
    Label90: TLabel;
    DBEdit36: TDBEdit;
    Label91: TLabel;
    DBEdit40: TDBEdit;
    Label92: TLabel;
    DBEdit41: TDBEdit;
    Label93: TLabel;
    DBEdit44: TDBEdit;
    Label94: TLabel;
    DBEdit45: TDBEdit;
    spCFOPRetencao: TSpeedButton;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    dbeCNPJCPFDest: TDBEdit;
    dbeRazaoDest: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    dbeEmailDest: TDBEdit;
    cmbUFIEDest: TDBComboBox;
    GroupBox3: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    dbeLogradouroDest: TDBEdit;
    dbeNumeroDest: TDBEdit;
    dbeBairroDest: TDBEdit;
    DBEdit26: TDBEdit;
    cmbUFDest: TDBComboBox;
    dbeCidadeDest: TDBEdit;
    Panel4: TPanel;
    pcRetiradaEntrega: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    cbxRetirada: TCheckBox;
    cbxEntrega: TCheckBox;
    Label95: TLabel;
    dbeCNPJ: TDBEdit;
    Label96: TLabel;
    dbeRetiradaLogradouro: TDBEdit;
    Label97: TLabel;
    dbeRetiradaNumero: TDBEdit;
    Label98: TLabel;
    dbeRetiradaComp: TDBEdit;
    Label99: TLabel;
    dbeRetiradaBairro: TDBEdit;
    Label100: TLabel;
    cmbUFRetiratada: TDBComboBox;
    Label101: TLabel;
    dbeCidadeRetirada: TDBEdit;
    Label102: TLabel;
    dbeEntregaCNPJ: TDBEdit;
    Label103: TLabel;
    dbeEntregaLogradouro: TDBEdit;
    Label104: TLabel;
    dbeEntregaNumero: TDBEdit;
    Label105: TLabel;
    dbeEntregaComp: TDBEdit;
    Label106: TLabel;
    dbeEntregaBairro: TDBEdit;
    Label107: TLabel;
    cmbUFEntrega: TDBComboBox;
    Label108: TLabel;
    dbeCidadeEntrega: TDBEdit;
    Label109: TLabel;
    DBEdit2: TDBEdit;
    BtEditar: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure spLocProdutoClick(Sender: TObject);
    procedure dbeDTEMISExit(Sender: TObject);
    procedure dbeSerieKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtQTDEExit(Sender: TObject);
    procedure edtQTDEKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtAcrescimoExit(Sender: TObject);
    procedure edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure edtICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edtICMSExit(Sender: TObject);
    procedure edtIPIExit(Sender: TObject);
    procedure edtIPIKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure spTransportadoraClick(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure dbeCNPJCPFKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure dsItensNotaDataChange(Sender: TObject; Field: TField);
    procedure dbeCNPJCPFExit(Sender: TObject);
    procedure cmbTipoPessoaExit(Sender: TObject);
    procedure spCFOPClick(Sender: TObject);
    procedure edtCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure edtCFOPExit(Sender: TObject);
    procedure dbeTransportadoraKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTransportadoraExit(Sender: TObject);
    procedure dbeTransportadoraChange(Sender: TObject);
    procedure btnIncVolumeClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarVolClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure dbeCFOPRetencaoICMSKeyPress(Sender: TObject; var Key: Char);
    procedure cmbEmpresaExit(Sender: TObject);
    procedure spCFOPRetencaoClick(Sender: TObject);
    procedure dbeCFOPRetencaoICMSExit(Sender: TObject);
    procedure dbeCupomKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCupomExit(Sender: TObject);
    procedure dbeCidadeEmissorExit(Sender: TObject);
    procedure dbeCidadeRetencaoExit(Sender: TObject);
    procedure dbeCidadeDestExit(Sender: TObject);
    procedure dbeCidadeRetiradaExit(Sender: TObject);
    procedure dbeCidadeEntregaExit(Sender: TObject);
    procedure dbeCNPJExit(Sender: TObject);
    procedure dbeEntregaCNPJExit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtEditarClick(Sender: TObject);
    procedure dbeCNPJTransporteExit(Sender: TObject);
    //procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    procedure TrataBotoes;
    procedure Buscar(aCodigo : String);
    procedure Registro;
    procedure BotoesItem;
    procedure BuscarProduto(aCodigo : String);
    procedure CalcularTotalItens(aCDS : TClientDataSet);
    procedure CalcularTotalNota;
    procedure LimparCampos;
    procedure Calcular;
    Function ValidarCampos() : Boolean;
    Procedure AbrirDetalhesNota(iCodigo : Integer);
    Procedure BuscarTransportadora(aCodigo : String);
    procedure LimpaCamposTransportadora();
    procedure TipoPessoa(aTipo : String);
  public
    { Public declarations }
  end;

var
  FrmNotaFiscalEletronicaNew: TFrmNotaFiscalEletronicaNew;
  M_NRITEM : Integer;

implementation

uses uDMDados, udmNFe, uFuncoes, uFrmLocProdutoServico, Math, uFrmNEFMain,
  uFrmLocalizarCliente, uFrmLocCFOP, uFrmCadVolumes, uFrmLocTransp;
{uFrmLocTransp,
  uFrmLocalizaCliente, uFrmLocCFOP, uFrmNEFMain, uFrmCadVolumes,
  ;^}

{$R *.dfm}

procedure TFrmNotaFiscalEletronicaNew.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmNotaFiscalEletronicaNew.FormShow(Sender: TObject);
begin
     uFuncoes.RefreshCDS(dmNFe.cdsListaFPaga);
     uFuncoes.RefreshCDS(dmNFe.cdsListaFEmissao);
     uFuncoes.RefreshCDS(dmNFe.cdsListaFinalEmissao);
     uFuncoes.RefreshCDS(dmNFe.cdsListaEmpresas);
     uFuncoes.RefreshCDS(dmNFe.cdsNaturezaOpe);
     if (dmNFe.cdsItemsNotaFiscal.Active) Then
       dmNFe.cdsItemsNotaFiscal.EmptyDataSet;
     //
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
     PageControlImpostos.ActivePageIndex := 0;
     pcRetiradaEntrega.ActivePageIndex   := 0;
     {cmbTipoDoc.Enabled := False;
     dbeNumDoc.Enabled  := False;
     pnlDados.Enabled   := False;}
     //
     pnlDetalheDados.Enabled := False;
     //
     Registro;
     //
     If (dmNFe.cdsNotaFiscal.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TFrmNotaFiscalEletronicaNew.BtAdicionarClick(Sender: TObject);
Var
   M_NRNOTA : Integer;
begin
    If (dsCadastro.DataSet.Active) Then
     begin
          //
          PageControl1.ActivePageIndex := 0;
          tratabotoes;
          M_NRITEM := 0;
          pnlTotalItens.Caption := '0,00';
          //
          dmNFe.Abrir_Tabela_Itens;
          //
          With dsCadastro.DataSet do
            begin
                 M_NRNOTA := dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger + 1;
                 //
                 Append;
                 FieldByName('NTF_CODIGO').AsInteger     := M_NRNOTA;
                 FieldByName('NTF_NUMERONOTA').AsString  :=
                    uFuncoes.StrZero(InttoStr(M_NRNOTA),9);
                 FieldByName('NTF_DTEMISSAO').AsDateTime := Date();
                 FieldByName('NTF_DTSAIDA_ENTRADA').AsDateTime := Date();
                 FieldByName('NTF_MODELO').AsInteger     := 55;
                 FieldByName('NTF_VERSAO_XML').AsString  := '1.10';
                 FieldByName('NTF_TIPODOCUMENTO').AsInteger := 1;
                 FieldByName('NTF_SITUACAO_ENUM').AsInteger := 5;
                 FieldByName('NTF_SERIE').AsInteger      := 1;
                 FieldByName('NTF_ANOMES').AsString      := uFuncoes.GetAnoMesData(FieldByName('NTF_DTEMISSAO').AsDateTime);
                 //
                 FieldByName('NTF_VALOR_ITENS').AsFloat  := 0;
                 FieldByName('NTF_BASECALCULOICMS').AsFloat := 0;
                 FieldByName('NTF_VALORICMS').AsFloat    := 0;
                 FieldByName('NTF_BASECALCULOSUBSTITUICAO').AsFloat := 0;
                 FieldByName('NTF_VALORICMSST').AsFloat  := 0;
                 FieldByName('NTF_VALORFRETE').AsFloat   := 0;
                 FieldByName('NTF_VALORIPI').AsFloat     := 0;
                 FieldByName('NTF_VALORSEGURO').AsFloat  := 0;
                 FieldByName('NTF_OUTRASPESPESAS').AsFloat    := 0;
                 FieldByName('NTF_VALORSUBSTITUICAO').AsFloat := 0;
                 FieldByName('NTF_VALOR_DESCONTO').AsFloat := 0;
                 FieldByName('NTF_VALORTOTALNOTA').AsFloat := 0;
                 FieldByName('NTF_EMITENTE_COD_PAIS').AsInteger := 1058;
                 FieldByName('NTF_EMITENTE_NOME_PAIS').AsString := 'BRASIL';
                 //
                 cmbTipoPessoa.ItemIndex := 0;
                 dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString := 'J';
                 dmNFe.cdsNotaFiscalNTF_CNPJCPF.EditMask := '99.999.999/9999-99;0;_';
                 //
                 dmNFe.AbrirVolumesNota(M_NRNOTA);
                 //
                 edtCFOP.Clear;
                 //
                 cmbEmpresa.SetFocus;
            End;
            //
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.AbrirDetalhesNota(iCodigo: Integer);
begin
     dmNFe.CarregarItensNota(iCodigo);
     CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
     dmNFe.AbrirVolumesNota(iCodigo);
end;

procedure TFrmNotaFiscalEletronicaNew.BotoesItem;
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          btnNovoItem.Enabled     := not btnNovoItem.Enabled;
          btnExcluiItem.Enabled   := not btnExcluiItem.Enabled;
          //
          spLocProduto.Enabled    := not spLocProduto.Enabled;
          spCFOP.Enabled          := not spCFOP.Enabled;
          btnSalvarItem.Enabled   := not btnSalvarItem.Enabled;
          btnCancelarItem.Enabled := not btnCancelarItem.Enabled;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsString, aCodigo);
     //
     If (dmNFe.cdsNotaFiscal.IsEmpty) Then
      begin
          AbrirDetalhesNota(StrtoInt(aCodigo));
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.BuscarProduto(aCodigo: String);
begin
      uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aCodigo);
end;

procedure TFrmNotaFiscalEletronicaNew.Calcular;
Var
    M_VLSUBT, M_VLDESC, M_VLACRE : Double;
    M_VLUNIT, M_QTPROD : Double;
begin
     M_VLSUBT := 0;
     M_VLUNIT := edtValorUnitario.Value;
     M_QTPROD := edtQTDE.Value;
     M_VLDESC := edtDesconto.Value;
     M_VLACRE := edtAcrescimo.Value;
     //
     M_VLSUBT := ((M_VLUNIT * M_QTPROD) - uFuncoes.Gerapercentual(M_VLUNIT, M_VLDESC)) + uFuncoes.Gerapercentual(M_VLUNIT, M_VLACRE);
     //
     edtSubTotal.Value := M_VLSUBT;
end;

procedure TFrmNotaFiscalEletronicaNew.CalcularTotalItens(
  aCDS: TClientDataSet);
Var
  M_VLTOTA, M_BCICMS, M_VLICMS, M_VALIPI : Double;
begin
     M_VLTOTA := 0;
     M_BCICMS := 0;
     M_VLICMS := 0;
     M_VALIPI := 0;
     //
     With aCDS do
      begin
          DisableControls;
          First;
          While not (Eof) do
            begin
                 M_VLTOTA := M_VLTOTA + FieldByName('CDS_SUBTOTAL').AsFloat;
                 //
                 If (FieldByName('CDS_BCICMS').AsFloat > 0) Then
                   M_BCICMS := M_BCICMS + FieldByName('CDS_BCICMS').AsFloat;
                 If (FieldByName('CDS_VLICMS').AsFloat > 0) Then
                   M_VLICMS := M_VLICMS +FieldByName('CDS_VLICMS').AsFloat;
                 If (FieldByName('CDS_VLIPI').AsFloat > 0) Then
                    M_VALIPI := M_VALIPI + FieldByName('CDS_VLIPI').AsFloat;
                 //
                 Next;
            End;
          //
          First;
          EnableControls;
      End;
      //
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           dmNFe.cdsNotaFiscalNTF_VALOR_ITENS.AsFloat     := M_VLTOTA;
           //
           dmNFe.cdsNotaFiscalNTF_BASECALCULOICMS.AsFloat := M_BCICMS;
           dmNFe.cdsNotaFiscalNTF_VALORICMS.AsFloat       := M_VLICMS;
           dmNFe.cdsNotaFiscalNTF_VALORIPI.AsFloat        := M_VALIPI;
           //
           dmNFe.cdsNotaFiscalNTF_VALORTOTALNOTA.AsFloat := M_VLTOTA;
           pnlTotalItens.Caption := FormatFloat('###,##0.#0', M_VLTOTA);
      End
      Else
          pnlTotalItens.Caption := FormatFloat('###,##0.#0', dmNFe.cdsNotaFiscalNTF_VALORTOTALNOTA.AsFloat);
end;

procedure TFrmNotaFiscalEletronicaNew.CalcularTotalNota;
Var
   M_VLFRET, M_VLDESC : Double;
begin
     M_VLFRET := dmNFe.cdsNotaFiscalNTF_VALORFRETE.AsFloat;
     M_VLDESC := dmNFe.cdsNotaFiscalNTF_VALOR_DESCONTO.AsFloat;
     {if (cmbTipoFrete.ItemIndex = 0) Then
        M_VLFRET := dmNFe.cdsNotaFiscalNTF_VALORFRETE.AsFloat;}
     //
     dmNFe.cdsNotaFiscalNTF_VALORTOTALNOTA.AsFloat  :=
              (dmNFe.cdsNotaFiscalNTF_VALOR_ITENS.AsFloat
              + M_VLFRET +  dmNFe.cdsNotaFiscalNTF_VALORSEGURO.AsFloat
              + dmNFe.cdsNotaFiscalNTF_OUTRASPESPESAS.AsFloat) - M_VLDESC;
     //
     {dmNFe.cdsNotaFiscalNTF_VALOR_ITENS.AsFloat
              +  dmNFe.cdsNotaFiscalNTF_VALORICMS.AsFloat
              +  dmNFe.cdsNotaFiscalNTF_VALORICMSST.AsFloat + M_VLFRET
              +  dmNFe.cdsNotaFiscalNTF_VALORSEGURO.AsFloat + dmNFe.cdsNotaFiscalNTF_OUTRASPESPESAS.AsFloat);}
end;

procedure TFrmNotaFiscalEletronicaNew.LimparCampos;
begin
     edtDescricao.Clear;
     edtQTDE.Value := 1;
     edtValorUnitario.Clear;
     edtDesconto.Clear;
     edtAcrescimo.Clear;
     edtSubTotal.Clear;
     edtICMS.Clear;
     edtIPI.Clear;
end;

procedure TFrmNotaFiscalEletronicaNew.Registro;
Var
   M_CODIGO : INTEGER;
begin
     uFuncoes.RefreshCDS(dmDados.CdsConfig);
     M_CODIGO := uFuncoes.mvcodigomax('NTF_CODIGO','NOTA_FISCAL');
     //
     If (dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger > 0) Then
     begin
           //
           uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(M_CODIGO));
           //
           if (dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString = 'F') Then
           begin
                cmbTipoPessoa.ItemIndex := 0;
                dmNFe.cdsNotaFiscalNTF_CNPJCPF.EditMask := '999.999.999-99;0;_';
           End
           Else
           begin
                cmbTipoPessoa.ItemIndex := 1;
                dmNFe.cdsNotaFiscalNTF_CNPJCPF.EditMask := '99.999.999/9999-99;0;_';
           End;
           //
           If not (dmNFe.cdsNotaFiscal.IsEmpty) Then
               AbrirDetalhesNota(M_CODIGO);
     End
     Else
         uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, '1');
end;

procedure TFrmNotaFiscalEletronicaNew.TrataBotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled    := not BtEditar.Enabled;
   //
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

function TFrmNotaFiscalEletronicaNew.ValidarCampos: Boolean;
begin
     Result := false;
     //
     If uFuncoes.Empty(cmbEmpresa.Text) Then
        begin
             Application.MessageBox('Selecione a loja.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbEmpresa.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeCNPJCPF.Text) Then
        begin
             Application.MessageBox('Digite o CNPJ/CPF do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeCNPJCPF.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeSerie.Text) Then
        begin
             Application.MessageBox('Digite a série da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeSerie.SetFocus;
             Exit;
        End;
     //
     If (dbeDTEMIS.Text = '  /  /    ') Then
        begin
             Application.MessageBox('Digite a data de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             dbeDTEMIS.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbNatureza.Text) Then
        begin
             Application.MessageBox('Seleciona a natureza da operação.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbNatureza.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFormaPaga.Text) Then
        begin
             Application.MessageBox('Selecione a forma de pagamento.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbFormaPaga.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbEmissao.Text) Then
        begin
             Application.MessageBox('Selecione a forma de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbEmissao.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFinalidadeEmissao.Text) Then
        begin
             Application.MessageBox('Selecione a finalidade de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             cmbFinalidadeEmissao.SetFocus;
             Exit;
        End;
     //    Dados do emitente
     If uFuncoes.Empty(dbeCNPJEmitente.Text) Then
     begin
          Application.MessageBox('Digite o CNPJ do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          PageControl1.ActivePageIndex := 1;
          dbeCNPJEmitente.SetFocus;
          Exit;
     end;
     //
     if uFuncoes.Empty(dbeRazaoEmitente.Text) then
     begin
          Application.MessageBox('Digite a razão social do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          PageControl1.ActivePageIndex := 1;
          dbeRazaoEmitente.SetFocus;
          Exit;
     end;
     //
     If uFuncoes.Empty(dbeEmiInsEstadual.Text) Then
        begin
             Application.MessageBox('Digite a inscrição estadual do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeEmiInsEstadual.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeLogradouroEmitente.text) Then
        begin
             Application.MessageBox('Digite logradouro do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeLogradouroEmitente.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeNumeroEmissor.text) Then
        begin
             Application.MessageBox('Digite número do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeNumeroEmissor.SetFocus;
             Exit;
        End;
     //
     if uFuncoes.Empty(dbeBairroEmissor.text) Then
        begin
             Application.MessageBox('Digite bairro do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeBairroEmissor.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbUFEmitente.Text) Then
        begin
             Application.MessageBox('Selecione a UF do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             cmbUFEmitente.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeCidadeEmissor.Text) Then
        begin
             Application.MessageBox('Digite o nome da cidade do emissor.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeCidadeEmissor.SetFocus;
             Exit;
        End;
     //   Destinatário
     if uFuncoes.Empty(dbeCNPJCPFDest.Text) Then
      begin
             Application.MessageBox('Digite CNPJ/CPF do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeCNPJCPFDest.SetFocus;
             Exit;
      End;
      //
      if uFuncoes.Empty(dbeRazaoDest.Text) Then
        begin
             Application.MessageBox('Digite Razão/Nome do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeRazaoDest.SetFocus;
             Exit;
        End;
      //
      if uFuncoes.Empty(dbeLogradouroDest.Text) Then
        begin
             Application.MessageBox('Digite logradouro do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeLogradouroDest.SetFocus;
             Exit;
        End;
      //
      If uFuncoes.Empty(dbeNumeroDest.Text) then
        begin
             Application.MessageBox('Digite número do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeNumeroDest.SetFocus;
             Exit;
        End;
      // bairro
      If ufuncoes.Empty(dbeBairroDest.Text) Then
        begin
             Application.MessageBox('Digite bairro do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeBairroDest.SetFocus;
             Exit;
        End;
      // Uf
      if uFuncoes.Empty(cmbUFDest.Text) Then
        begin
             Application.MessageBox('Selecione UF do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeBairroDest.SetFocus;
             Exit;
        End;
      // Cidade
      if uFuncoes.Empty(dbeCidadeDest.Text) Then
        begin
             Application.MessageBox('Digite o nome da cidade do destinatário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeCidadeDest.SetFocus;
             Exit;
        End;
        //
        If (rgTipoFrete.ItemIndex = -1) then
          begin
             Application.MessageBox('Selecione o tipo de frete.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 3;
             PageControlImpostos.ActivePageIndex := 0;
             rgTipoFrete.SetFocus;
             Exit;
          End;
        //  Local de Retirada diferente do emitente
        if (cbxRetirada.Checked) Then
          begin
               //
               if uFuncoes.Empty(dbeRetiradaLogradouro.Text) Then
                begin
                     Application.MessageBox('Digite o logradouro de retirada.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaLogradouro.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeRetiradaNumero.Text) Then
                begin
                     Application.MessageBox('Digite o número logradouro de retirada.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaNumero.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeRetiradaBairro.Text) Then
                begin
                     Application.MessageBox('Digite o bairro de retirada.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeRetiradaBairro.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(cmbUFRetiratada.Text) Then
                begin
                     Application.MessageBox('Digite o UF de retirada.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     cmbUFRetiratada.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dbeCidadeRetirada.Text) Then
                begin
                     Application.MessageBox('Digite o cidade de retirada.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeRetirada.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_RETIRADA_MUNICIPIO.AsString) Then
                 begin
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeRetirada.SetFocus;
                     Exit;
                 End;
          End;
          // Local de entrega diferente do destinatário
          if (cbxEntrega.Checked) Then
            begin
                if uFuncoes.Empty(dbeEntregaLogradouro.Text) Then
                begin
                     Application.MessageBox('Digite o logradouro de entrega.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaLogradouro.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeEntregaNumero.Text) Then
                begin
                     Application.MessageBox('Digite o número logradouro de entrega.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaNumero.SetFocus;
                     Exit;
                End;
                //
               if uFuncoes.Empty(dbeEntregaBairro.Text) Then
                begin
                     Application.MessageBox('Digite o bairro de entrega.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeEntregaBairro.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(cmbUFEntrega.Text) Then
                begin
                     Application.MessageBox('Digite o UF de entrega.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     cmbUFEntrega.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dbeCidadeEntrega.Text) Then
                begin
                     Application.MessageBox('Digite o cidade de entrega.','ATENÇÃO',
                         MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 0;
                     dbeCidadeEntrega.SetFocus;
                     Exit;
                End;
                //
                if uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_ENTREGA_MUNICIPIO.AsString) Then
                 begin
                     PageControl1.ActivePageIndex := 2;
                     pcRetiradaEntrega.ActivePageIndex := 1;
                     dbeCidadeEntrega.SetFocus;
                     Exit;
                 End;
            End;
        //
     If not (dsItensNota.DataSet.Active) or (dsItensNota.DataSet.RecordCount < 1) Then
        begin
             Application.MessageBox('Cadastre os itens da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 0;
             Exit;
        End;
     //
     Result := True;
end;

procedure TFrmNotaFiscalEletronicaNew.BtCancelarClick(Sender: TObject);
begin
    tratabotoes;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         dsCadastro.DataSet.Cancel;
    if (dsCadastro.DataSet.IsEmpty) Then
       Close
    Else
       Registro;
end;

procedure TFrmNotaFiscalEletronicaNew.spLocProdutoClick(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         edtCDPROD.SetFocus;
         Application.CreateForm(TfrmLocProdutoServico, frmLocProdutoServico);
         try
             With frmLocProdutoServico do
               ShowModal;
         Finally
            If not (frmLocProdutoServico.cdsConsultar.IsEmpty) Then
             Begin
                 edtCDPROD.Text := frmLocProdutoServico.cdsConsultarPRO_CODIGO.AsString;
                 Perform(WM_NextDlgCtl,1,0);
             End;
            frmLocProdutoServico.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeDTEMISExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and (dbeDTEMIS.text <> '  /  /    ') Then
       try
            dbeDTEMIS.Date := StrtoDate(dbeDTEMIS.text);
            if (dbeDTEMIS.Date < Date) Then
              begin
                  Application.MessageBox('Data inferior a data atual!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.Date := Date();
                  dbeDTEMIS.SetFocus;
                  Exit;
              End;
              //
              If (dbeDTEMIS.Date > Date) Then
              begin
                  Application.MessageBox('Data superior a data atual!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.Date := Date();
                  dbeDTEMIS.SetFocus;
                  Exit;
              End;
       Except
            on EConvertError do
             begin
                  Application.MessageBox('Data Inválida!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeDTEMIS.SetFocus;
                  Exit;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNew.btnSalvarItemClick(Sender: TObject);
Var
   M_BCIMCS, M_ALIQICMS, M_VLICMS : Double;
   W_VLDESC, W_VLACRE : double;
begin
   if uFuncoes.Empty(edtCDPROD.Text) Then
    begin
         Application.MessageBox('Digite o código produto/serviço.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         edtCDPROD.SetFocus;
         Exit;
    End;
   //
   if uFuncoes.Empty(edtCFOP.Text) Then
    begin
         Application.MessageBox('Digite o CFOP do produto/serviço.','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         edtCFOP.SetFocus;
         Exit;
    End;
   //
   if (dsCadastro.DataSet.State in [dsInsert]) Then
   Begin
      M_BCIMCS := 0;
      M_VLICMS := 0;
      W_VLDESC := 0;
      W_VLACRE := 0;
      //
      if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
            //
            If (edtValorUnitario.Value = 0) Then
             begin
                  edtValorUnitario.SetFocus;
                  Exit;
             End;
            if not uFuncoes.Empty(edtCDPROD.Text) and (edtQTDE.Value > 0) and (edtValorUnitario.Value > 0) Then
               begin
                       BuscarProduto(uFuncoes.StrZero(edtCDPROD.Text,13));
                       //
                       M_NRITEM := M_NRITEM + 1;
                       //
                       if not (dmDados.cdsProduto.IsEmpty) Then
                        begin
                             If not uFuncoes.Empty(dmDados.cdsProdutoTRI_CODIGO.AsString) Then
                                 M_ALIQICMS := dmDados.GetAliquotaICMS(dmDados.cdsProdutoTRI_CODIGO.AsInteger)
                             Else
                                 M_ALIQICMS := 0;
                             //
                             If (edtICMS.Value > 0) Then
                              begin
                                   M_BCIMCS := uFuncoes.Arredondar(edtValorUnitario.Value * edtQTDE.Value,2);
                                   M_VLICMS := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_BCIMCS, M_ALIQICMS),2);
                              End;
                              //
                              If (edtDesconto.Value > 0) Then
                                  W_VLDESC := uFuncoes.Gerapercentual(edtValorUnitario.Value, edtDesconto.Value);
                              If (edtAcrescimo.Value > 0) Then
                                  W_VLACRE := uFuncoes.Gerapercentual(edtValorUnitario.Value, edtAcrescimo.Value);
                              //
                             {Function AddItemNota(pNRITEM : Integer;
                                 pCDPROD, pCODEAN, pDESCRICAO, pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB : String;
                                 pQTDECOM, pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO, pVLACRESCIMO, pVLOUTRASDESPESAS : Double;
                                 pINDTOT : Integer;
                                 pBCICMS, pVLICMS, pVLIPI, pALIQICMS, pALIQIPI : Double) : Boolean;}
                             dmNFe.AddItemNota(
                                  M_NRITEM,
                                  dmDados.cdsProdutoPRO_CODIGO.AsString,
                                  dmDados.cdsProdutoPRO_BARRAS.AsString,
                                  dmDados.cdsProdutoPRO_DESCRICAO.AsString,
                                  'NCM',
                                  'EX_TIPI',
                                  edtCFOP.text,
                                  dmDados.cdsProdutoUNI_CODIGO.AsString,
                                  'GENERO',
                                  dmDados.cdsProdutoUNI_CODIGO.AsString,
                                  edtQTDE.Value, edtValorUnitario.Value,
                                  edtQTDE.Value,
                                  edtValorUnitario.Value,
                                  0, 0, W_VLDESC, W_VLACRE, 0, 1,
                                  M_BCIMCS, M_VLICMS, edtIPI.Value, M_ALIQICMS, 0, '','');
                             //
                             CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                             CalcularTotalNota;
                             BotoesItem;
                             LimparCampos;
                             edtCDPROD.Text := '';
                             //
                             If (btnNovoItem.Enabled) Then
                                btnNovoItem.SetFocus;
                        end;
               End;
              //
              pnlDetalheDados.Enabled := False;
       End;
   End;    
end;

procedure TFrmNotaFiscalEletronicaNew.btnNovoItemClick(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
             pnlDetalheDados.Enabled := True;
             BotoesItem;
             //LimparCampos;
             edtCDPROD.Clear;
             edtCDPROD.SetFocus;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.btnCancelarItemClick(
  Sender: TObject);
begin
//     if (dsItensNota.DataSet.State in [dsInsert]) Then
     if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
            {If not uFuncoes.Empty(edtCDPROD.Text) Then
             begin}
                 BotoesItem;
                 LimparCampos;
                 //
                 edtCDPROD.Clear;
                 btnNovoItem.SetFocus;
             //End;
             //
             pnlDetalheDados.Enabled := False;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
  if (dsCadastro.DataSet.State in [dsInsert]) Then
  begin
     If (key = #13) and uFuncoes.Empty(edtCDPROD.Text) and (spLocProduto.Enabled) Then
      begin
           key  := #0;
           spLocProdutoClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(edtCDPROD.Text) Then
      begin
           key  := #0;
           edtQTDE.SetFocus;
      End;
  End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtCDPRODChange(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and uFuncoes.Empty(edtCDPROD.Text)  Then
            LimparCampos;
end;

procedure TFrmNotaFiscalEletronicaNew.edtCDPRODExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCDPROD.Text) Then
            begin
                 If not (dmDados.ProcurarValor(uFuncoes.StrZero(edtCDPROD.Text,13), 'PRO_CODIGO', 'PRODUTOS')) Then
                  begin
                       Application.MessageBox(PChar('Código produto/serviço não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtDescricao.Clear;
                       edtCDPROD.Clear;
                       edtCDPROD.SetFocus;
                       Exit;
                  End
                  Else
                  begin
                       edtCDPROD.Text    := uFuncoes.StrZero(edtCDPROD.Text,13);
                       BuscarProduto(edtCDPROD.Text);
                       if not (dmDados.cdsProduto.IsEmpty) Then
                       begin
                           edtDescricao.Text      := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                           edtValorUnitario.Value := dmDados.cdsProdutoPRO_VLVENDA.AsFloat;
                           edtICMS.Value          := dmDados.GetAliquotaICMS(dmDados.cdsProdutoTRI_CODIGO.AsInteger);
                           edtDesconto.MaxValue   := dmDados.cdsProdutoPRO_LIMDESCONTO.AsFloat;
                           edtQTDE.Value          := 1;
                           //edtCFOP.SetFocus;
                       End;
                       //
                       edtCFOP.SetFocus;
                  end;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtQTDEExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmNotaFiscalEletronicaNew.edtQTDEKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) and not uFuncoes.Empty(edtQTDE.Text) Then
        begin
             key  := #0;
             edtValorUnitario.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtValorUnitarioExit(
  Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
         if (edtValorUnitario.Value = 0) Then
          begin
               If not (dmDados.cdsproduto.IsEmpty) Then
                   edtValorUnitario.Value := dmDados.cdsProdutoPRO_VLVENDA.AsFloat
               Else
               begin
                   edtValorUnitario.SetFocus;
                   Exit;
               End;
          End;
         Calcular;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtValorUnitarioKeyPress(
  Sender: TObject; var Key: Char);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     If (key = #13) and not uFuncoes.Empty(edtValorUnitario.Text) Then
      begin
           key  := #0;
           edtDesconto.SetFocus;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtDescontoExit(Sender: TObject);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TFrmNotaFiscalEletronicaNew.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) Then
        begin
             key  := #0;
             edtAcrescimo.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtAcrescimoExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNew.edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          If (key = #13)  Then
          begin
               key := #0;
               edtICMS.SetFocus;
               {if (btnSalvarItem.Enabled) Then
                  btnSalvarItem.SetFocus;}
          End;
          //
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) Then
        begin
             key  := #0;
             edtIPI.SetFocus;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtICMSExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNew.edtIPIExit(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          Calcular;
end;

procedure TFrmNotaFiscalEletronicaNew.edtIPIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          If (key = #13)  Then
          begin
               key := #0;
               //
               if (btnSalvarItem.Enabled) Then
                  btnSalvarItem.SetFocus;
          End;
          //
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
     spLocCliente.Enabled    := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     {spLocProduto.Enabled    := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     spCFOP.Enabled          := dsCadastro.DataSet.State in [dsInsert, dsEdit];}
     spTransportadora.Enabled:= dsCadastro.DataSet.State in [dsInsert, dsEdit];
     spCFOPRetencao.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     //
     pnlBotoes.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     //
     cbxRetirada.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     cbxEntrega.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TFrmNotaFiscalEletronicaNew.spTransportadoraClick(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeTransportadora.SetFocus;
         Application.CreateForm(TfrmLocTransp, frmLocTransp);
         try
             With frmLocTransp do
               ShowModal;
         Finally
            If not (frmLocTransp.cdsConsultar.IsEmpty) Then
             Begin
                  dbeTransportadora.Text := uFuncoes.StrZero(frmLocTransp.cdsConsultarTRA_CODIGO.AsString,5);
                  BuscarTransportadora(frmLocTransp.cdsConsultarTRA_CODIGO.AsString);
                  dbeCNPJTransporte.SetFocus;
             End;
            frmLocTransp.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.spLocClienteClick(Sender: TObject);
begin
 if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCNPJCPF.SetFocus;
         Application.CreateForm(TfrmLocalizarCliente, frmLocalizarCliente);
         try
             With frmLocalizarCliente do
               ShowModal;
         Finally
            If not (frmLocalizarCliente.cdsConsultar.IsEmpty) Then
             Begin
                  dmNFe.cdsNotaFiscalNTF_CLIENTE.AsString     := uFuncoes.StrZero(frmLocalizarCliente.cdsConsultar.FieldByName('CLI_CODIGO').AsString,7);
                  if uFuncoes.Empty(frmLocalizarCliente.cdsConsultar.FieldByName('CLI_CGC').AsString) Then
                          raise Exception.Create('Cliente está sem CNPJ.');
                  dbeCNPJCPF.Text := frmLocalizarCliente.cdsConsultar.FieldByName('CLI_CGC').AsString;
                  dmNFe.cdsNotaFiscalNTF_CNPJCPF.AsString      := uFuncoes.RemoveChar(frmLocalizarCliente.cdsConsultar.FieldByName('CLI_CGC').AsString);
                  dmNFe.cdsNotaFiscalNTF_RAZAOSOCIAL.AsString  := frmLocalizarCliente.cdsConsultar.FieldByName('CLI_RAZAO').AsString;
                  dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString   := frmLocalizarCliente.cdsConsultar.FieldByName('CLI_TIPOPESSOA').AsString;
                  //
                  If (frmLocalizarCliente.cdsConsultar.FieldByName('CLI_TIPOPESSOA').AsString = 'F') Then
                     cmbTipoPessoa.ItemIndex := 0
                  Else
                     cmbTipoPessoa.ItemIndex := 1;
              End;
             dbeNumero.SetFocus;
             //
             frmLocalizarCliente.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCNPJCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
 If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
  if (dsCadastro.DataSet.State in [dsInsert]) Then
  begin
     If (key = #13) and uFuncoes.Empty(dbeCNPJCPF.Text) and (spLocCliente.Enabled) Then
      begin
           key  := #0;
           spLocClienteClick(Self);
      End;
      //
     If (key = #13) and not uFuncoes.Empty(dbeCNPJCPF.Text) Then
      begin
           key  := #0;
           dbeNumero.SetFocus;
      End;
  End; 
end;

procedure TFrmNotaFiscalEletronicaNew.btnExcluiItemClick(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            If (dsItensNota.DataSet.Active) and not (dsItensNota.DataSet.IsEmpty)Then
             begin
                 dsItensNota.DataSet.Delete;
                 //
                 CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.dsItensNotaDataChange(
  Sender: TObject; Field: TField);
begin
//    btnExcluiItem.Enabled := (dsItensNota.DataSet.Active) and (dsItensNota.DataSet.State in [dsBrowse]);
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCNPJCPFExit(Sender: TObject);
Var
  iCodigo : Integer;
  aCNPJCPF : String;
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     Begin
        aCNPJCPF := uFuncoes.RemoveChar(dmNFe.cdsNotaFiscalNTF_CNPJCPF.AsString);
        // dbeCNPJCPF.Text;
        //
        if not uFuncoes.Empty(aCNPJCPF) Then
          begin
              If (dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString = 'F') Then
               Begin
                  Try
                    If not (uFuncoes.CPF(aCNPJCPF)) Then
                    Begin
                        MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                        dbeCNPJCPF.Clear;
                        dbeCNPJCPF.SetFocus;
                        Exit;
                    End;
                  Except
                    dbeCNPJCPF.SetFocus;
                    dbeCNPJCPF.Clear;
                  End;
                End
                Else
                begin
                    try
                      If not (uFuncoes.CGC(aCNPJCPF)) Then
                       Begin
                            MessageDlg('CNPJ inválido!!!', mtInformation, [mbOk], 0);
                            dbeCNPJCPF.Clear;
                            dbeCNPJCPF.SetFocus;
                            Exit;
                        End;
                    Except
                        dbeCNPJCPF.SetFocus;
                        dbeCNPJCPF.Clear;
                    End;
                End;
               //
               iCodigo := 0;
               If (dmDados.ProcurarValor(aCNPJCPF,'CLI_CGC','CLIENTES')) Then
                begin
                     //
                     iCodigo := dmDados.GetCodigoCNPJCPF(aCNPJCPF, 'CLI_CGC', 'CLI_CODIGO', 'CLIENTES');
                     If (iCodigo > 0 ) Then
                      Begin
                           uFuncoes.FilterCDS(dmDados.CdsCliente, fsInteger, InttoStr(iCodigo));
                           //
                           dmNFe.cdsNotaFiscalNTF_CLIENTE.AsInteger    := iCodigo;
                           dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString  := dmDados.CdsClienteCLI_TIPOPESSOA.AsString;
                           dmNFe.cdsNotaFiscalNTF_CNPJCPF.AsString     := dmDados.CdsClienteCLI_CGC.AsString;
                           dmNFe.cdsNotaFiscalNTF_RAZAOSOCIAL.AsString := DmDados.CdsClienteCLI_RAZAO.AsString;
                           dmNFe.cdsNotaFiscalNTF_LOGRADOURO.AsString  := DmDados.CdsClienteCLI_ENDERECO.AsString;
                           dmNFe.cdsNotaFiscalNTF_DEST_NUMERO.AsInteger     := DmDados.CdsClienteCLI_NUMERO.AsInteger;
                           dmNFe.cdsNotaFiscalNTF_DEST_COMPLEMENTO.AsString := '';
                           dmNFe.cdsNotaFiscalNTF_DEST_CEP.AsString    := DmDados.CdsClienteCLI_CEP.AsString;
                           dmNFe.cdsNotaFiscalNTF_DEST_UF.AsString     := DmDados.CdsClienteCLI_UFCLIENTE.AsString;
                           dmNFe.cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO.AsString := uFuncoes.GetCidade(dmDados.cdsClienteCLI_CIDADE.AsInteger);
                           dmNFe.cdsNotaFiscalNTF_DEST_BAIRRO.AsString := dmDados.cdsClienteCLI_BAIRRO.AsString;
                           //uFuncoes.GetBairro(dmDados.CdsClienteCID_CODIGO.AsInteger, Dm.CdsClientesBAI_CODIGO.AsInteger);
                           dmNFe.cdsNotaFiscalNTF_DEST_MUNICIPIO.AsInteger :=
                               dmDados.GetCodigoCidadeIBGE(dmNFe.cdsNotaFiscalNTF_DEST_UF.AsString, dmNFe.cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO.AsString);
                      End;
                End
                Else
                Begin
                     MessageDlg('Código CPF/CNPJ não cadastrado.', mtInformation, [mbOk], 0);
                     dbeCNPJCPF.Clear;
                     dbeCNPJCPF.SetFocus;
                     Exit;
                End;
          End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.cmbTipoPessoaExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
          If not uFuncoes.Empty(cmbTipoPessoa.Text) Then
            begin
                If (cmbTipoPessoa.ItemIndex = 0) Then
                 begin
                     dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString := 'F';
                     dmNFe.cdsNotaFiscalNTF_CNPJCPF.EditMask := '999.999.999-99;0;_';
                 End
                Else
                 begin
                     dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString := 'J';
                     dmNFe.cdsNotaFiscalNTF_CNPJCPF.EditMask := '99.999.999/9999-99;0;_';
                 End;
            End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNew.spCFOPClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         edtCFOP.SetFocus;
         Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
         try
             With frmLocCFOP do
               ShowModal;
         Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  edtCFOP.Text := frmLocCFOP.cdsConsultarCFOP_CODIGO.AsString;
                  edtQTDE.SetFocus;
             End;
            frmLocCFOP.Free;
         End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtCFOPKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastro.DataSet.State in [dsInsert]) Then
      begin
         If (key = #13) and uFuncoes.Empty(edtCFOP.Text) and (spCFOP.Enabled) Then
          begin
               key  := #0;
               spCFOPClick(Self);
          End;
          //
         If (key = #13) and not uFuncoes.Empty(edtCFOP.Text) Then
          begin
               key  := #0;
               edtQTDE.SetFocus;
          End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.edtCFOPExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(edtCFOP.Text) Then
            begin
                 If not (dmDados.ProcurarValor(edtCFOP.Text, 'CFOP_CODIGO', 'TABELA_CFOP')) Then
                  begin
                       Application.MessageBox(PChar('Código CFOP não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtCFOP.Clear;
                       edtCFOP.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeTransportadoraKeyPress(
  Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNew.BuscarTransportadora(
  aCodigo: String);
begin
     uFuncoes.FilterCDS(dmDados.cdsTransp, fsInteger, aCodigo);
     dbeTransRazao.Text                              := dmDados.cdsTranspTRA_CODIGO.AsString;
     dmNFe.cdsNotaFiscalNTF_TRANSP_RAZAO.AsString    := dmDados.cdsTranspTRA_RAZAONOME.AsString;
     dmNFe.cdsNotaFiscalNTF_TRANSP_CNPJCPF.AsString  := dmDados.cdsTranspTRA_NR_DOCUMENTO.AsString;
     dmNFe.cdsNotaFiscalNTF_TRANSP_IE.AsString       := dmDados.cdsTranspTRA_INSCRICAO_ESTADUAL.AsString;
     dmNFe.cdsNotaFiscalNTF_TRANSP_ENDERECO.AsString := dmDados.cdsTranspTRA_ENDERECO.AsString;
     dmNFe.cdsNotaFiscalNTF_TRANSP_UF.AsString       := dmDados.cdsTranspTRA_UF.AsString;
     dmDados.AbrirCidades(dmDados.cdsListaCidades, dmDados.cdsTranspTRA_UF.AsString);
     cmbUFTransp.ItemIndex := uFuncoes.UF_Combo(dmDados.cdsTranspTRA_UF.AsString);
     dmNFe.cdsNotaFiscalNTF_TRANSP_NOME_MUNICIPIO.AsString := uFuncoes.GetCidade(dmDados.cdsTranspTRA_CDCIDADE.AsInteger);
     //dmDados.cdsTransportadoraTRP_NMCIDADE.AsString;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeTransportadoraExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeTransportadora.Text) Then
            begin
                 If not (dmDados.ProcurarValor(dbeTransportadora.Text, 'TRA_CODIGO', 'TRANSPORTADORAS')) Then
                  begin
                       Application.MessageBox(PChar('Código de transportadora não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeTransportadora.Clear;
                       dbeTransportadora.SetFocus;
                       Exit;
                  End
                  Else
                      BuscarTransportadora(dbeTransportadora.text);
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeTransportadoraChange(
  Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            LimpaCamposTransportadora;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.LimpaCamposTransportadora;
begin
     dmNFe.cdsNotaFiscalNTF_TRANSP_CNPJCPF.Clear;
     dmNFe.cdsNotaFiscalNTF_TRANSP_RAZAO.Clear;
     dmNFe.cdsNotaFiscalNTF_TRANSP_IE.Clear;
     dmNFe.cdsNotaFiscalNTF_TRANSP_ENDERECO.Clear;
     dmNFe.cdsNotaFiscalNTF_TRANSP_UF.Clear;
     dmNFe.cdsNotaFiscalNTF_TRANSP_NOME_MUNICIPIO.Clear;
end;

procedure TFrmNotaFiscalEletronicaNew.btnIncVolumeClick(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
      Application.CreateForm(TfrmCadVolumes, frmCadVolumes);
      try
         uFrmCadVolumes.Opcao := 'I';
         uFrmCadVolumes.M_NRITEM := uFrmCadVolumes.M_NRITEM + 1;
         frmCadVolumes.ShowModal;
      Finally
         frmCadVolumes.Free;
      End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNew.btnExcluirClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     If (dmNFe.cdsVolumes.Active) and not (dmNFe.cdsVolumes.IsEmpty) and (dmNFe.cdsVolumes.State in [dsBrowse]) Then
      begin
          dmNFe.cdsVolumes.Delete;
          dmNFe.cdsVolumes.ApplyUpdates(0);
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.btnEditarVolClick(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
        If (dmNFe.cdsVolumes.Active) and not (dmNFe.cdsVolumes.IsEmpty) and (dmNFe.cdsVolumes.State in [dsBrowse]) Then
        begin
            Application.CreateForm(TfrmCadVolumes, frmCadVolumes);
            try
               uFrmCadVolumes.Opcao := 'A';
               frmCadVolumes.ShowModal;
            Finally
               frmCadVolumes.Free;
            End;
        End;
    End;
end;

procedure TFrmNotaFiscalEletronicaNew.BtGravarClick(Sender: TObject);
Var
    M_NRNOTA, iUsuario, M_CDCIDDES, M_CDCIDRET : Integer;
    M_VLNOTA : Double;
    aOperacao : String;
begin
     If not (ValidarCampos) Then
         Exit;
     //tratabotoes;
     M_VLNOTA := dmNFe.GetValorNotaFiscal(dmNFe.cdsItemsNotaFiscal);
     iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
     // Grava Nota-Fiscal
     if (rgTipoFrete.ItemIndex = 0) Then
         dmNFe.cdsNotaFiscalNTF_TIPOFRETE.AsString := 'C'
     Else
         dmNFe.cdsNotaFiscalNTF_TIPOFRETE.AsString := 'F';
     //
     if (cmbTipoPessoa.ItemIndex = 0) Then
         dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString := 'F'
     Else
         dmNFe.cdsNotaFiscalNTF_TIPOPESSOA.AsString := 'J';
     // nome natureza
     dmNFe.cdsNotaFiscalNTF_DESCNATUREZA.AsString := cmbNatureza.Text;
     // codigo municipio de destino
     M_CDCIDDES := dmDados.GetCodigoCidadeIBGE(dmNFe.cdsNotaFiscalNTF_DEST_UF.AsString, dmNFe.cdsNotaFiscalNTF_DEST_NOME_MUNICIPIO.AsString);
     //
     If (dmDados.ProcurarValor(inttoStr(M_CDCIDDES) ,'CID_CODIBGE', 'CIDADES')) Then
         dmNFe.cdsNotaFiscalNTF_DEST_MUNICIPIO.AsInteger := M_CDCIDDES
     Else
         raise Exception.Create('Código da cidade não encontrado.');
     // codigo municipio de retirada
     dmNFe.cdsNotaFiscalNTF_EMITENTE_MUNICIPIO.AsInteger :=
        dmDados.GetCodigoCidadeIBGE(dmNFe.cdsNotaFiscalNTF_EMITENTE_UF.AsString, dmNFe.cdsNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO.AsString);
     //   
     M_CDCIDRET := dmNFe.cdsNotaFiscalNTF_EMITENTE_MUNICIPIO.AsInteger;
     //
     If (dmDados.ProcurarValor(InttoStr(M_CDCIDRET),'CID_CODIBGE', 'CIDADES')) Then
          dmNFe.cdsNotaFiscalNTF_RETIRADA_MUNICIPIO.AsInteger := M_CDCIDRET
     Else
         raise Exception.Create('Código da cidade não encontrado.');
     // Retirada diferente emitente
     If (cbxRetirada.Checked) Then
         dmNFe.cdsNotaFiscalNTF_LOCAL_RET_DIF_EMI.AsString := 'S'
     Else
         dmNFe.cdsNotaFiscalNTF_LOCAL_RET_DIF_EMI.AsString := 'N';
     //
     // Entrega diferente destinatário
     If (cbxEntrega.Checked) Then
         dmNFe.cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST.AsString := 'S'
     Else
         dmNFe.cdsNotaFiscalNTF_LOCAL_ENT_DIF_DEST.AsString := 'N';
     //
     Try
          if dsCadastro.DataSet.State in [dsInsert] Then
            begin
                 aOperacao := 'I';
                 uFuncoes.RefreshCDS(dmDados.cdsConfig);
                 dmDados.cdsConfig.Edit;
                 dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger :=
                   dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 M_NRNOTA := dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger;
                 //
                 dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger := M_NRNOTA;
                 dmNFe.cdsNotaFiscalNTF_NUMERONOTA.AsString := uFuncoes.StrZero(dmDados.cdsConfigCFG_NOTAFISCAL.AsString,9);
                 //
                 dmNFe.cdsNotaFiscalNTF_HOCADA.AsString  := dmDados.GetHora;
                 dmNFe.cdsNotaFiscalNTF_USUARIO_CAD.AsInteger := iUsuario;
                 //
                 {If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalNTF_CODIGO.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');}
            End
            Else
            begin
                aOperacao := 'A';
                M_NRNOTA := dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger;
                //
                dmNFe.cdsNotaFiscalNTF_DTALTE.AsDateTime := Date();
                dmNFe.cdsNotaFiscalNTF_HOALTE.AsString   := dmDados.GetHora();
                dmNFe.cdsNotaFiscalNTF_USALTE.AsInteger  := iUsuario;
                //
                {If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalNTF_CODIGO.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');}
            End;
            //
            dmNFe.cdsNotaFiscal.ApplyUpdates(0);
            //
            pnlTotalItens.Caption := FormatFloat('###,##0.#0', dmNFe.cdsNotaFiscalNTF_VALORTOTALNOTA.AsFloat);
            //
            If (aOperacao = 'I') Then
            begin
                // Grava Itens da Nota
                dmNFe.GravarItensNotaFiscal(M_NRNOTA, dmNFe.cdsItemsNotaFiscal);
            End;
            // Volume
            if (dmNFe.cdsVolumes.Active) and not (dmNFe.cdsVolumes.IsEmpty) Then
              begin
                   dmNFe.cdsVolumes.ApplyUpdates(0);
              End;
            //
            Application.MessageBox(PChar(MSG_OK),
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            //
            tratabotoes;
            PageControl1.ActivePageIndex := 0;
     Except
           on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
               //
            End;
     End;
end;

procedure TFrmNotaFiscalEletronicaNew.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCFOPRetencaoICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
      If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
      if (dsCadastro.DataSet.State in [dsInsert]) Then
      begin
         If (key = #13) and uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) and (spCFOPRetencao.Enabled) Then
          begin
               key  := #0;
               spCFOPRetencaoClick(Self);
          End;
          //
         If (key = #13) and not uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) Then
          begin
               key  := #0;
               dbeICMSRetido.SetFocus;
          End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.cmbEmpresaExit(Sender: TObject);
Var
   M_NMCIDA : String;
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           If not uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_EMITENTE.AsString) Then
            begin
                 //
                 uFuncoes.FilterCDS(dmDados.cdsEmitente, fsInteger, dmNFe.cdsNotaFiscalNTF_EMITENTE.AsString);
                 //
                 If not (dmDados.cdsEmitente.IsEmpty) Then
                    begin
                       //
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_TPPESSOA.AsString   := 'J';
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_CNPJ.AsString       := DmDados.cdsEmitenteEMI_CNPJ.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_RAZAO.AsString      := DmDados.cdsEmitenteEMI_RAZAOSOCIAL.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_FANTASIA.AsString   := DmDados.cdsEmitenteEMI_FANTASIA.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_IE.AsString         := DmDados.cdsEmitenteEMI_INSCRICAOESTADUAL.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_LOGRADOURO.AsString := DmDados.cdsEmitenteEMI_LOGRADOURO.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_NUMERO.AsInteger    := DmDados.cdsEmitenteEMI_NUMERO.AsInteger;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_UF.AsString         := DmDados.cdsEmitenteEMI_UF.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_NOME_MUNICIPIO.AsString :=
                            uFuncoes.GetCidade(DmDados.cdsEmitenteEMI_CDCIDADE.AsInteger);
                         //Dm.CdsEmpresasEMP_NMCIDADE.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMINTENTE_BAIRRO.AsString    := DmDados.cdsEmitenteEMI_BAIRRO.AsString;
                           // uFuncoes.GetBairro(Dm.CdsEmpresasCID_CODIGO.AsInteger, Dm.CdsEmpresasBAI_CODIGO.AsInteger);
                       //Dm.CdsEmpresasEMP_NMBAIRRO.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_CEP.AsString        := dmDados.cdsEmitenteEMI_CEP.AsString;
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_TELEFONE.AsString   := dmDados.cdsEmitenteEMI_TELEFONE.AsString;
                       M_NMCIDA := uFuncoes.GetCidade(dmDados.cdsEmitenteEMI_CDCIDADE.AsInteger);
                       dmNFe.cdsNotaFiscalNTF_EMITENTE_MUNICIPIO.AsInteger :=
                                  dmDados.GetCodigoCidadeIBGE(dmDados.cdsEmitenteEMI_UF.AsString, M_NMCIDA);
                       //cmbUFEmitente.ItemIndex := uFuncoes.UF_Combo(Dm.CdsEmpresasEMP_UF.AsString);
                    End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.spCFOPRetencaoClick(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCFOPRetencaoICMS.SetFocus;
         Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
         try
             With frmLocCFOP do
               ShowModal;
         Finally
            If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
             Begin
                  dbeCFOPRetencaoICMS.Text := frmLocCFOP.cdsConsultarCFOP_CODIGO.AsString;
                  dbeICMSRetido.SetFocus;
             End;
            frmLocCFOP.Free;
         End;
     End;  
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCFOPRetencaoICMSExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           if not uFuncoes.Empty(dbeCFOPRetencaoICMS.Text) Then
            begin
                 If not (dmDados.ProcurarValor(dbeCFOPRetencaoICMS.Text, 'CFOP_CODIGO', 'TABELA_CFOP')) Then
                  begin
                       Application.MessageBox(PChar('Código CFOP não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeCFOPRetencaoICMS.Clear;
                       dbeCFOPRetencaoICMS.SetFocus;
                       Exit;
                  End;
            End;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCupomKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCupomExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCupom.Text) Then
       begin
            dbeCupom.Text := uFuncoes.StrZero(dbeCupom.Text,6);
            //
            if (dsCadastro.DataSet.State in [dsInsert]) Then
             begin
                  if (dmDados.ProcurarValor(dbeCupom.Text, 'NTF_NUMCUPOM','NOTA_FISCAL')) Then
                    begin
                         Application.MessageBox(PChar('Número de cupom já cadastrado.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         dbeCupom.SetFocus;
                         dbeCupom.Clear;
                         Exit;
                    End;
             End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCidadeEmissorExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeEmissor.Text) and not uFuncoes.Empty(cmbUFEmitente.Text) Then
        begin
             if not uFuncoes.GetVerificarDescricaoCidade(dbeCidadeEmissor.Text, cmbUFEmitente.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade não já cadastrado na UF.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeEmissor.SetFocus;
                   dbeCidadeEmissor.Clear;
                   Exit;
              End;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCidadeRetencaoExit(
  Sender: TObject);
begin
     //
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeRetencao.Text) and not uFuncoes.Empty(cmbUFRetencao.Text) Then
        begin
             if not uFuncoes.GetVerificarDescricaoCidade(dbeCidadeRetencao.Text, cmbUFRetencao.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade não já cadastrado na UF.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeRetencao.SetFocus;
                   dbeCidadeRetencao.Clear;
                   Exit;
              End;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCidadeDestExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeDest.Text) and not uFuncoes.Empty(cmbUFDest.Text) Then
        begin
             if not uFuncoes.GetVerificarDescricaoCidade(dbeCidadeDest.Text, cmbUFDest.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade não já cadastrado na UF.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeDest.SetFocus;
                   dbeCidadeDest.Clear;
                   Exit;
              End;
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCidadeRetiradaExit(Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeRetirada.Text) and not uFuncoes.Empty(cmbUFRetiratada.Text) Then
        begin
             if not uFuncoes.GetVerificarDescricaoCidade(dbeCidadeRetirada.Text, cmbUFRetiratada.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade não já cadastrado na UF.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeRetirada.SetFocus;
                   dbeCidadeRetirada.Clear;
                   Exit;
              End
              Else
                  dmNFe.cdsNotaFiscalNTF_RETIRADA_MUNICIPIO.AsInteger :=
                     dmDados.GetCodigoCidadeIBGE(cmbUFRetiratada.Text, dbeCidadeRetirada.Text);
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCidadeEntregaExit(
  Sender: TObject);
begin
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(dbeCidadeEntrega.Text) and not uFuncoes.Empty(cmbUFEntrega.Text) Then
        begin
             if not uFuncoes.GetVerificarDescricaoCidade(dbeCidadeEntrega.Text, cmbUFEntrega.Text) Then
              begin
                   Application.MessageBox(PChar('Cidade não já cadastrado na UF.'),
                            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeCidadeEntrega.SetFocus;
                   dbeCidadeEntrega.Clear;
                   Exit;
              End
              Else
                  dmNFe.cdsNotaFiscalNTF_ENTREGA_MUNICIPIO.AsInteger :=
                     dmDados.GetCodigoCidadeIBGE(cmbUFEntrega.Text, dbeCidadeEntrega.Text);
        End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCNPJExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeCNPJ.Text) Then
       begin
               If not (uFuncoes.CGC(uFuncoes.StrZero(dbeCNPJ.Text,14))) Then
                Begin
                   MessageDlg('CNPJ inválido!!!', mtInformation, [mbOk], 0);
                   dbeCNPJ.Clear;
                   dbeCNPJ.SetFocus;
                   Exit;
                End
                Else
                begin
                   dbeCNPJ.Clear;
                   dbeCNPJ.SetFocus;
                   Exit;
                End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeEntregaCNPJExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeEntregaCNPJ.Text) Then
       begin
               If not (uFuncoes.CGC(uFuncoes.StrZero(dbeEntregaCNPJ.Text,14))) Then
                Begin
                   MessageDlg('CNPJ inválido!!!', mtInformation, [mbOk], 0);
                   dbeEntregaCNPJ.Clear;
                   dbeEntregaCNPJ.SetFocus;
                   Exit;
                End
                Else
                begin
                   dbeEntregaCNPJ.Clear;
                   dbeEntregaCNPJ.SetFocus;
                   Exit;
                End;
       End;
end;

procedure TFrmNotaFiscalEletronicaNew.DBEdit8Exit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNew.DBEdit10Exit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNew.DBEdit11Exit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNew.DBEdit2Exit(Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
          CalcularTotalNota;
end;

procedure TFrmNotaFiscalEletronicaNew.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        If Application.MessageBox('Salvar dados?',
           'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         begin
              Canclose:=False;
              If (BtGravar.Enabled) Then
                 BtGravar.SetFocus;
         End
         Else
             dsCadastro.DataSet.Close;
end;

procedure TFrmNotaFiscalEletronicaNew.TipoPessoa(aTipo: String);
begin
     if (aTipo = 'F') Then
         cmbTipoPessoa.ItemIndex := 0
     Else
         cmbTipoPessoa.ItemIndex := 1;
end;

procedure TFrmNotaFiscalEletronicaNew.BtEditarClick(Sender: TObject);
begin
    If not (dsCadastro.DataSet.IsEmpty)
     and (dsCadastro.DataSet.State in [dsbrowse]) Then
      begin
           tratabotoes;
           dsCadastro.DataSet.Edit;
      End;
end;

procedure TFrmNotaFiscalEletronicaNew.dbeCNPJTransporteExit(
  Sender: TObject);
begin
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          try
                If not (uFuncoes.CGC(dbeCNPJTransporte.Text)) Then
                 Begin
                      MessageDlg('CNPJ inválido!!!', mtInformation, [mbOk], 0);
                      dbeCNPJTransporte.Clear;
                      dbeCNPJTransporte.SetFocus;
                      Exit;
                 End;
          Except
                 dbeCNPJTransporte.SetFocus;
                 dbeCNPJTransporte.Clear;
          End;
     End;
end;

end.

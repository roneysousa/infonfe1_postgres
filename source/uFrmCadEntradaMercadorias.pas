unit uFrmCadEntradaMercadorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolEdit, StdCtrls, Mask, Buttons, DB,
  Grids, DBGrids, CurrEdit;

type
  TFrmCadEntradaMercadorias = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlSuperior: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    spFornecedor: TSpeedButton;
    dbeNRPEDI: TEdit;
    edtCDFORN: TEdit;
    dbeNRNOTA: TMaskEdit;
    dbeSERIE: TMaskEdit;
    cmbLoja: TComboBox;
    GroupBox1: TGroupBox;
    lbl_NRPEDIDO: TLabel;
    dbeDTPEDI: TDateEdit;
    dbeDTEMISS: TDateEdit;
    dbeDTRECE: TDateEdit;
    lbl_NMFORN: TEdit;
    pnlGrid: TPanel;
    pnlDados: TPanel;
    pnlTotal: TPanel;
    grdConsultar: TDBGrid;
    dsItensNota: TDataSource;
    BtAdicionar: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    Label10: TLabel;
    edtCDPROD: TEdit;
    lbl_NMPROD: TEdit;
    spProdutos: TSpeedButton;
    cmbUNIDADE: TComboBox;
    Label11: TLabel;
    edtQUANT: TCurrencyEdit;
    Label12: TLabel;
    edtValor: TCurrencyEdit;
    Label13: TLabel;
    edtIPI: TCurrencyEdit;
    Label14: TLabel;
    edtICMS: TCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    edtSubTotal: TCurrencyEdit;
    pnlTotPedido: TPanel;
    Panel3: TPanel;
    Label20: TLabel;
    edtCDTRANSP: TEdit;
    spTransportadora: TSpeedButton;
    lbl_Transportadora: TEdit;
    Label9: TLabel;
    edtVLMERC: TCurrencyEdit;
    Label17: TLabel;
    edtBASEICMS: TCurrencyEdit;
    Label18: TLabel;
    edtVLICMS: TCurrencyEdit;
    Label19: TLabel;
    edtBASESUBS: TCurrencyEdit;
    Label21: TLabel;
    edtVLSUBST: TCurrencyEdit;
    rbgTipoFrete: TRadioGroup;
    Label23: TLabel;
    edtVLFRETE: TCurrencyEdit;
    Label24: TLabel;
    edtVLIPI: TCurrencyEdit;
    Label25: TLabel;
    edtVLSEGURO: TCurrencyEdit;
    Label26: TLabel;
    edtDespesas: TCurrencyEdit;
    Label27: TLabel;
    edtDesconto: TCurrencyEdit;
    Label28: TLabel;
    edtVLNOTA: TCurrencyEdit;
    procedure BtSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure edtCDFORNKeyPress(Sender: TObject; var Key: Char);
    procedure spFornecedorClick(Sender: TObject);
    procedure edtCDFORNExit(Sender: TObject);
    procedure dbeDTPEDIExit(Sender: TObject);
    procedure dbeDTEMISSExit(Sender: TObject);
    procedure dbeDTRECEExit(Sender: TObject);
    procedure dbeNRNOTAExit(Sender: TObject);
    procedure dbeSERIEExit(Sender: TObject);
    procedure spProdutosClick(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtQUANTExit(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure edtIPIKeyPress(Sender: TObject; var Key: Char);
    procedure edtICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edtSubTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edtSubTotalExit(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure cmbUNIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure edtQUANTKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDTRANSPExit(Sender: TObject);
    procedure edtCDTRANSPKeyPress(Sender: TObject; var Key: Char);
    procedure spTransportadoraClick(Sender: TObject);
    procedure edtCDTRANSPChange(Sender: TObject);
    procedure edtVLMERCExit(Sender: TObject);
    procedure edtVLFRETEExit(Sender: TObject);
    procedure edtVLSEGUROExit(Sender: TObject);
    procedure edtDespesasExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
  private
    { Private declarations }
    Procedure HabilitaDesabilitaPaneis(aStatus : Boolean);
    procedure Tratabotoes;
    procedure GetValidarNota;
    Function ValidarCampos() : Boolean;
    procedure LimparCampos();
    procedure LimparCamposProduto();
    Procedure Calcular();
    Function CalcularSubTotal(): Double;
    Procedure Adicionar_Produtos();
    function VALOR_NOTA() : Real;
  public
    { Public declarations }
  end;

var
  FrmCadEntradaMercadorias: TFrmCadEntradaMercadorias;
  M_NRITEM : Integer;
  M_FLLOTE : Boolean;

implementation

uses udmNFe, uDMDados, udmEstoque, uFuncoes, uFrmLocFornecedorNovo,
  uFrmLocProdutoServico, uFrmLocTransp, DBClient, uFrmNEFMain;

{$R *.dfm}

procedure TFrmCadEntradaMercadorias.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmCadEntradaMercadorias.HabilitaDesabilitaPaneis(
  aStatus: Boolean);
begin
      pnlSuperior.Enabled := aStatus;
      pnlGrid.Enabled     := aStatus;
      pnlDados.Enabled    := aStatus;
      pnlTotal.Enabled    := aStatus;
      //
end;

procedure TFrmCadEntradaMercadorias.FormShow(Sender: TObject);
begin
     HabilitaDesabilitaPaneis(False);
     PageControl1.ActivePageIndex := 0;
     //
     uFuncoes.RefreshCDS(dmDados.cdsConfig);
     If (dmDados.cdsConfigCFG_FLLOTE.AsString = 'S') Then
         M_FLLOTE := true
     Else
         M_FLLOTE := False;
end;

procedure TFrmCadEntradaMercadorias.BtAdicionarClick(Sender: TObject);
begin
     M_NRITEM := 1;
     HabilitaDesabilitaPaneis(True);
     Tratabotoes;
     //
     uFuncoes.RefreshCDS(dmDados.cdsConfig);
     lbl_NRPEDIDO.Caption := uFuncoes.StrZero(InttoStr(dmDados.cdsConfigCFG_ENTRADAS.AsInteger + 1),9);
     dmDados.CarregarLojas(cmbLoja);
     //
     cmbLoja.SetFocus;
end;

procedure TFrmCadEntradaMercadorias.BtGravarClick(Sender: TObject);
Var
  iNumeroNota, iUsuario, iSequencia, iItem, iLoja : Integer;
  aProduto, aUnidade, aTamanho, aHora, aLote, aDtVencLote : String;
  fValorCompra, fQuant, fIPI, fICMS, fQuantAnterior, fQuantAtual : Double;
  fValorCusto, fValorVenda : Double;
  M_DTMOVI : TDate;
begin
      If Not (ValidarCampos) Then
         Exit;
      //
      iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
      iLoja    := dmDados.GetCodigoLoja(cmbLoja.Text);
      M_DTMOVI := Date();
      aHora    := Copy(TimetoStr(Time) ,1,5);
      //
      Try
            uFuncoes.RefreshCDS(dmDados.cdsConfig);
            //
            dmDados.cdsConfig.Edit;
            dmDados.cdsConfigCFG_ENTRADAS.AsInteger :=
              dmDados.cdsConfigCFG_ENTRADAS.AsInteger + 1;
            dmDados.cdsConfigCFG_SEQUENCIA.AsInteger :=
              dmDados.cdsConfigCFG_SEQUENCIA.AsInteger + 1;
            dmDados.cdsConfig.ApplyUpdates(0);
            //
            iNumeroNota := dmDados.cdsConfigCFG_ENTRADAS.AsInteger;
            iSequencia  := dmDados.cdsConfigCFG_SEQUENCIA.AsInteger;
            // Tabela Entrada
            With dmEstoque.cdsEntradaProd do
              begin
                   Close;
                   Params.ParamByName('pNUMERO').AsInteger := iNumeroNota;
                   Open;
                   //
                   if (IsEmpty) Then
                    begin
                         Append;
                         FieldByName('ENT_NUMERO').AsInteger := iNumeroNota;
                         FieldByName('ENT_LOJA').AsInteger   := 1;
                         FieldByName('ENT_FORNECEDOR').AsInteger := StrtoInt(edtCDFORN.Text);
                         If not uFuncoes.Empty(edtCDTRANSP.Text) Then
                            FieldByName('ENT_TRANSPORTADORA').AsInteger := Strtoint(edtCDTRANSP.Text);
                         FieldByName('ENT_DATAPEDIDO').AsDateTime  := dbeDTPEDI.Date;
                         FieldByName('ENT_DATAENTRADA').AsDateTime := dbeDTEMISS.Date;
                         //FieldByName('ENT_NATUREZAOPERACAO').AsInteger :=
                         FieldByName('ENT_DATAEMISSAONOTA').AsDateTime := dbeDTRECE.Date;
                         FieldByName('ENT_NUMERONOTA').AsString := dbeNRNOTA.Text;
                         FieldByName('ENT_SERIENOTA').AsString  := dbeSERIE.Text;
                         FieldByName('ENT_VALORMERCADORIAS').AsFloat := edtVLMERC.Value;
                         If (rbgTipoFrete.ItemIndex = 0) Then
                             FieldByName('ENT_TIPOFRETE').AsString := 'C'
                         Else
                             FieldByName('ENT_TIPOFRETE').AsString := 'F';
                         FieldByName('ENT_VALORFRETE').AsFloat     := edtVLFRETE.Value;
                         FieldByName('ENT_BASECALCULOICMS').AsFloat := edtBASEICMS.Value;
                         FieldByName('ENT_VALORICMS').AsFloat      := edtVLICMS.Value;
                         FieldByName('ENT_BASECALCULOSUBSTITUICAO').AsFloat := edtBASESUBS.Value;
                         FieldByName('ENT_VALORSUBSTITUICAO').AsFloat := edtVLSUBST.Value;
                         FieldByName('ENT_VALORIPI').AsFloat       := edtVLIPI.Value;
                         FieldByName('ENT_VALORSEGURO').AsFloat    := edtVLSEGURO.Value;
                         FieldByName('ENT_OUTRASPESPESAS').AsFloat := edtDespesas.Value;
                         FieldByName('ENT_VALORDESCONTO').AsFloat  := edtDesconto.Value;
                         FieldByName('ENT_VALORNOTA').AsFloat      := edtVLNOTA.Value;
                         FieldByName('ENT_SITUACAO').AsString      := 'F';
                         FieldByName('ENT_USUARIO').AsInteger      := iUsuario;
                         //
                         ApplyUpdates(0);
                         // Tabela Itens-Entrada
                         With dmNFe.cdsItemsNotaFiscal do
                          begin
                               DisableControls;
                               First;
                               iItem := 1;
                               While not (Eof) do
                                begin
                                     //
                                     aProduto := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_CDPROD').AsString;
                                     aUnidade := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_UNDCOM').AsString;
                                     aTamanho := 'UN';
                                     fValorCompra := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_VLUNITARIO').AsFloat;
                                     fQuant   := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_QTDECOM').AsFloat;
                                     fIPI     := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_ALIQIPI').AsFloat;
                                     fICMS    := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_ALIQICMS').AsFloat;
                                     aLote    := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_NRLOTE').AsString;
                                     aDtVencLote := dmNFe.cdsItemsNotaFiscal.FieldByName('CDS_DTVENC_LOTE').AsString;
                                     //
                                     With dmEstoque.cdsItensEntrada do
                                      begin
                                         Close;
                                         Params[0].AsInteger := iNumeroNota;
                                         Params[1].AsInteger := iItem;
                                         Open;
                                         //
                                         If (IsEmpty) Then
                                         begin
                                             Append;
                                             FieldByName('ENP_NUMERO').AsInteger := iNumeroNota;
                                             FieldByName('ENP_NRITEM').AsInteger := iItem;
                                             FieldByName('ENP_PRODUTO').AsString := aProduto;
                                             FieldByName('ENP_UNIDADE').AsString := aUnidade;
                                             FieldByName('ENP_TAMANHO').AsString := 'UN';
                                             FieldByName('ENP_QUANTIDADE').AsFloat := fQuant;
                                             FieldByName('ENP_VALOR').AsFloat    := fValorCompra;
                                             FieldByName('ENP_IPI').AsFloat      := fIPI;
                                             FieldByName('ENP_ICMS').AsFloat     := fICMS;
                                             //
                                             ApplyUpdates(0);
                                             // Estoque
                                             fQuantAnterior := 0;
                                             fQuantAtual    := 0;
                                             //
                                             uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                                             //
                                             fValorCusto := 0;
                                             fValorVenda := 0;
                                             if not (dmDados.cdsProduto.IsEmpty) Then
                                             begin
                                                 fValorCusto := dmDados.cdsProdutoPRO_VLCUSTO.AsFloat;
                                                 fValorVenda := dmDados.cdsProdutoPRO_VLVENDA.AsFloat;
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
                                                         fQuantAtual    := FieldByName('EST_QUANTIDADE').AsFloat + fQuant;
                                                    End
                                                    Else
                                                        fQuantAtual := fQuant;
                                                    close;
                                              End;
                                             //
                                             {function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
                                             aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
                                             aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
                                             fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;}
                                             dmEstoque.AdicionarEstoqueProduto(iLoja, 'E', aProduto, aUnidade, aTamanho,
                                                      DatetoStr(M_DTMOVI), '', '', fQuant, 0, 0, 0, 0, fQuant, 0);
                                             // Historico
                                             {function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
                                             iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
                                             aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
                                             fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;}
                                             dmEstoque.AdicionarHistoricoProduto(iSequencia, iLoja, iItem, 0,
                                               1, 0, iUsuario, aProduto, aUnidade, aTamanho,
                                               aHora, 'E', aProduto, M_DTMOVI, fQuantAnterior, fQuant, fQuantAtual,
                                               fValorCusto, fValorCompra, fValorVenda);
                                             //
                                             dmEstoque.AtualizarLoteProduto(aProduto, aLote, 'E', aDtVencLote, fQuant); 
                                         End;
                                      End;
                                      //
                                     iItem := iItem + 1;
                                     // Proximo
                                     Next;
                                End;
                                First;
                               EnableControls;
                          End;
                    End;
              End;

            HabilitaDesabilitaPaneis(False);
            Tratabotoes;
            //
            Application.MessageBox(PChar('Entrada de Mercadoria realizada com sucesso!!!'),
                 'CONCLUÍDO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            //
            LimparCampos;
            PageControl1.ActivePageIndex := 0;
      Except
         on Exc:Exception do
         begin
             Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                       + Exc.Message),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             Close;
         End;
      End;
end;

procedure TFrmCadEntradaMercadorias.BtCancelarClick(Sender: TObject);
begin
     LimparCampos;
     //
     HabilitaDesabilitaPaneis(False);
     Tratabotoes;
end;

procedure TFrmCadEntradaMercadorias.Tratabotoes;
begin
      BtAdicionar.Enabled := not BtAdicionar.Enabled;
      BtCancelar.Enabled  := not BtCancelar.Enabled;
      BtGravar.Enabled    := not BtGravar.Enabled;
end;

procedure TFrmCadEntradaMercadorias.edtCDFORNKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and uFuncoes.Empty(edtCDFORN.Text) Then
    Begin
         key:=#0;
         spFornecedorClick(Sender);
    End;
    //
    If (Key = #13) and not uFuncoes.Empty(edtCDFORN.Text) Then
    Begin
         key:=#0;
         dbeDTPEDI.SetFocus;
    End;
end;

procedure TFrmCadEntradaMercadorias.spFornecedorClick(Sender: TObject);
begin
     edtCDFORN.SetFocus;
     //
     Application.CreateForm(TfrmLocFornecedorNovo, frmLocFornecedorNovo);
     try
           With frmLocFornecedorNovo do
                 ShowModal;
     Finally
           If not (frmLocFornecedorNovo.cdsConsultar.IsEmpty) Then
           begin
               edtCDFORN.Text := frmLocFornecedorNovo.cdsConsultarCLI_CODIGO.AsString;
               dbeDTPEDI.SetFocus;
           End
           Else
                edtCDFORN.SetFocus;
           //
           frmLocFornecedorNovo.Free;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtCDFORNExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDFORN.Text) Then
      begin
           If not dmDados.ValidarCodigoFornecedor(StrtoInt(edtCDFORN.Text)) Then
           begin
               Application.MessageBox('Código de fornecedor não cadastro!!!','ATENÇÃO',
                      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               lbl_NMFORN.Clear;
               edtCDFORN.Clear;
               edtCDFORN.SetFocus;
               Exit;
           End
           Else
            begin
               edtCDFORN.Text  := ufuncoes.StrZero(edtCDFORN.Text,7); 
               lbl_NMFORN.Text := dmDados.GetNomeClienteForn(StrtoInt(edtCDFORN.Text));
            End;
      End;
end;

procedure TFrmCadEntradaMercadorias.dbeDTPEDIExit(Sender: TObject);
begin
     If (dbeDTPEDI.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTPEDI.Text);
              dbeDTPEDI.Text := DatetoStr(StrToDate(dbeDTPEDI.Text));
              //
              If (StrToDate(dbeDTPEDI.Text)>Date()) Then
              Begin
                   Application.MessageBox(PChar('Data do pedido deve ser menor que a atual!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeDTPEDI.Clear;
                   dbeDTPEDI.SetFocus;
                   Exit;
              End;
           except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTPEDI.Clear;
                     dbeDTPEDI.SetFocus;
                End;
           end;
     End;
end;

procedure TFrmCadEntradaMercadorias.dbeDTEMISSExit(Sender: TObject);
begin
     If (dbeDTEMISS.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTEMISS.Text);
              dbeDTEMISS.Text := DatetoStr(StrToDate(dbeDTEMISS.Text));
              //
              If (dbeDTPEDI.Text <> '  /  /    ') Then
              Begin
                If (StrToDate(dbeDTEMISS.Text) < StrToDate(dbeDTPEDI.Text)) Then
                Begin
                   Application.MessageBox(PChar('Data de emissão menor que a data do pedido!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeDTEMISS.Clear;
                   dbeDTEMISS.SetFocus;
                   Exit;
                End;
              End;
              //
              If (StrToDate(dbeDTEMISS.Text) > Date()) Then
              Begin
                   Application.MessageBox(PChar('Data de emissão maior que a data atual!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeDTEMISS.Clear;
                   dbeDTEMISS.SetFocus;
                   Exit;
              End;
           except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTEMISS.Clear;
                     dbeDTEMISS.SetFocus;
                End;
           end;
     End;
end;

procedure TFrmCadEntradaMercadorias.dbeDTRECEExit(Sender: TObject);
begin
     If (dbeDTRECE.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTRECE.Text);
              dbeDTRECE.Text := DatetoStr(StrToDate(dbeDTRECE.Text));
              //
              If (dbeDTEMISS.Text <> '  /  /    ') Then
              Begin
                If (StrToDate(dbeDTRECE.Text) < StrtoDate(dbeDTEMISS.Text)) Then
                Begin
                   Application.MessageBox(PChar('Data de recebimento menor que a de emissão!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeDTRECE.Text := DatetoStr(Date());
                   dbeDTRECE.SetFocus;
                   Exit;
                End;
                //
                If (StrToDate(dbeDTRECE.Text) > Date()) Then
                Begin
                   Application.MessageBox(PChar('Data de recebimento maior que a atual!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeDTRECE.Text := DatetoStr(Date());
                   dbeDTRECE.SetFocus;
                   Exit;
                End;
              End;
           except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTRECE.Clear;
                     dbeDTRECE.SetFocus;
                End;
           end;
     End;
end;

procedure TFrmCadEntradaMercadorias.dbeNRNOTAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeNRNOTA.Text) Then
           GetValidarNota;
end;

procedure TFrmCadEntradaMercadorias.dbeSERIEExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeNRNOTA.Text) Then
           GetValidarNota;
end;

procedure TFrmCadEntradaMercadorias.GetValidarNota;
begin
     dbeNRNOTA.Text := uFuncoes.StrZero(dbeNRNOTA.Text,10);
     If not uFuncoes.Empty(edtCDFORN.text)
            and not uFuncoes.Empty(dbeNRNOTA.Text)
            And not uFuncoes.Empty(dbeSERIE.Text) Then
       Begin
             If (dmDados.VALIDAR_NOTA_ENTRADA(StrtoInt(edtCDFORN.text), StrtoInt(dbeNRNOTA.Text), dbeSERIE.Text)) Then
               begin
                     Application.MessageBox(PChar('Registro de nota já cadastrado!!!'),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);

               End;
       End;
end;

function TFrmCadEntradaMercadorias.ValidarCampos: Boolean;
begin
     Result := False;
     //
     If uFuncoes.Empty(cmbLoja.Text) Then
     Begin
          Application.MessageBox(PChar('Selecione a loja!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          cmbLoja.Clear;
          cmbLoja.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(edtCDFORN.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o código do fornecedor!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          edtCDFORN.Clear;
          edtCDFORN.SetFocus;
          Exit;
     End;
     //
     If (dbeDTPEDI.Text = '  /  /    ') Then
     Begin
          Application.MessageBox(PChar('Digite a data do pedido!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeDTPEDI.Clear;
          dbeDTPEDI.SetFocus;
          Exit;
     End;
     //
     If (dbeDTEMISS.Text = '  /  /    ') Then
     Begin
          Application.MessageBox(PChar('Digite a data da emissão!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeDTEMISS.Clear;
          dbeDTEMISS.SetFocus;
          Exit;
     End;
     //
     If (dbeDTRECE.Text = '  /  /    ') Then
     Begin
          Application.MessageBox(PChar('Digite a data de recebimento!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeDTRECE.Clear;
          dbeDTRECE.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(dbeNRNOTA.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o número da nota!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeNRNOTA.Clear;
          dbeNRNOTA.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(dbeSERIE.Text) Then
     Begin
          Application.MessageBox(PChar('Digite a serie da nota!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeSERIE.Clear;
          dbeSERIE.SetFocus;
          Exit;
     End;
     //
     If (dsItensNota.DataSet.IsEmpty) Then
     Begin
          Application.MessageBox(PChar('Não há itens na entrada!!!'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          If (edtCDPROD.Enabled) Then
          begin
               edtCDPROD.Clear;
               edtCDPROD.SetFocus;
          End;
          Exit;
     End;
     //
     If rbgTipoFrete.ItemIndex = -1 Then
      begin
          Application.MessageBox(PChar('Selecione o tipo de frete'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          PageControl1.ActivePageIndex := 1;
          rbgTipoFrete.SetFocus;
          Exit;
      End;
     //
     Result := True;
end;

procedure TFrmCadEntradaMercadorias.LimparCampos;
begin
      lbl_NRPEDIDO.Caption := '';
      cmbLoja.ItemIndex := -1;
      edtCDFORN.Clear;
      lbl_NMFORN.Clear;
      dbeDTPEDI.Clear;
      dbeDTEMISS.Clear;
      dbeDTRECE.Clear;
      dbeNRNOTA.Clear;
      dbeSERIE.Clear;
      //
      edtCDTRANSP.Clear;
      lbl_Transportadora.Clear;
      edtVLMERC.clear;
      edtBASEICMS.clear;
      edtVLICMS.clear;
      edtBASESUBS.clear;
      edtVLSUBST.clear;
      rbgTipoFrete.ItemIndex := -1;
      edtVLFRETE.clear;
      edtVLIPI.clear;
      edtVLSEGURO.clear;
      edtDespesas.clear;
      edtDesconto.clear;
      edtVLNOTA.clear;
      pnlTotPedido.Caption := '0,00';
      //
      If (dsItensNota.DataSet.Active) Then
         dmNFe.cdsItemsNotaFiscal.EmptyDataSet;
end;

procedure TFrmCadEntradaMercadorias.spProdutosClick(Sender: TObject);
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
end;

procedure TFrmCadEntradaMercadorias.edtCDPRODExit(Sender: TObject);
Var
   aCodigo : String;
begin
     If not uFuncoes.Empty(edtCDPROD.Text) Then
     Begin
          aCodigo := uFuncoes.StrZero(edtCDPROD.Text,13);
          //
          if dmDados.ProcurarValor(aCodigo,'PRO_CODIGO','PRODUTOS') Then
           begin
               uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aCodigo);
               //
               If not (dmDados.cdsProduto.IsEmpty) Then
                begin
                    if (dmDados.cdsProdutoPRO_FLPROD.AsString = 'S') Then
                     Begin
                          Application.MessageBox('Este produto é um serviço.','ATENÇÃO',
                             MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                          edtCDPROD.Clear;
                          edtCDPROD.SetFocus;
                          Exit;
                     End;
                     //
                     lbl_NMPROD.Text    := dmDados.cdsProduto.FieldByName('PRO_DESCRICAO').AsString;
                     edtValor.Value     := dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency;
                     // unidade
                     cmbUNIDADE.Items.Clear;
                     cmbUNIDADE.Items.Add(dmDados.cdsProduto.FieldByName('UNI_CODIGO').AsString);
                     If not uFuncoes.Empty(dmDados.cdsProduto.FieldByName('UNI_ARMAZENAMENTO').AsString) Then
                       If (dmDados.cdsProduto.FieldByName('UNI_CODIGO').AsString <>
                           dmDados.cdsProduto.FieldByName('UNI_ARMAZENAMENTO').AsString) Then
                                cmbUNIDADE.Items.Add(dmDados.cdsProduto.FieldByName('UNI_ARMAZENAMENTO').AsString);
                     edtValor.Value := dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsFloat;
                     //
                     edtCDPROD.Text     := aCodigo;
                     //
                     {If (edtNRLOTE.Visible = True) Then
                        edtNRLOTE.SetFocus
                     Else}
                        cmbUNIDADE.SetFocus;
                End;
           End
           Else
           Begin
                Application.MessageBox(PChar('Código de produto não cadastrado!!!'),
                        'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                lbl_NMPROD.Clear;
                edtCDPROD.Clear;
                edtCDPROD.SetFocus;
                Exit;
           End;
     End;
end;

procedure TFrmCadEntradaMercadorias.Calcular;
begin
     edtSubTotal.Value := edtValor.Value * edtQUANT.Value;
end;

procedure TFrmCadEntradaMercadorias.edtCDPRODChange(Sender: TObject);
begin
      if uFuncoes.Empty(edtCDPROD.Text) Then
         lbl_NMPROD.Clear;
end;

procedure TFrmCadEntradaMercadorias.edtQUANTExit(Sender: TObject);
begin
     If (edtQUANT.Value = 0) Then
       edtQUANT.SetFocus;
     //
     If (edtQUANT.Value > 0) Then
     Begin
           CALCULAR;
           edtValor.SetFocus;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtValorExit(Sender: TObject);
begin
     If (edtValor.Value > 0) Then
     Begin
           CALCULAR;
           edtIPI.SetFocus;
     End;

end;

procedure TFrmCadEntradaMercadorias.edtIPIKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) Then
     Begin
          Key := #0;
          edtICMS.SetFocus;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) Then
     Begin
          Key := #0;
          edtSubTotal.SetFocus;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtSubTotalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edtSubTotal.Text) Then
     Begin
          Key := #0;
          //
          edtCDPROD.SetFocus;
          //Adicionar_Produtos;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtSubTotalExit(Sender: TObject);
begin
     {If not uFuncoes.Empty(edtNRLOTE.Text)
       and (edtDTVENC.Text = '  /  /    ') Then
     begin
          edtDTVENC.SetFocus;
          Exit;
     End;}
     //
     If not uFuncoes.Empty(edtSubTotal.Text) Then
      begin
          Adicionar_Produtos;
          LimparCamposProduto;
      End;
end;

procedure TFrmCadEntradaMercadorias.LimparCamposProduto;
begin
     edtCDPROD.Clear;
     lbl_NMPROD.clear;
     cmbUNIDADE.Items.Clear;
     edtQUANT.clear;
     edtValor.Clear;
     edtIPI.clear;
     edtICMS.Clear;
     edtSubTotal.Clear;
end;

procedure TFrmCadEntradaMercadorias.edtCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and uFuncoes.Empty(edtCDPROD.Text) Then
    Begin
         key:=#0;
         spProdutosClick(Sender);
    End;
    //
    If (Key = #13) and not uFuncoes.Empty(edtCDPROD.Text) Then
    Begin
         key:=#0;
         cmbUNIDADE.SetFocus;
    End;
end;

procedure TFrmCadEntradaMercadorias.cmbUNIDADEKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(cmbUNIDADE.Text) Then
     Begin
          Key := #0;
          edtQUANT.SetFocus;
     End;
end;

procedure TFrmCadEntradaMercadorias.edtQUANTKeyPress(Sender: TObject;
  var Key: Char);
begin
      If (Key = #27) Then
      Begin
           Key := #0;
           cmbUNIDADE.SetFocus; 
      End;
      //
      If (Key = #13) Then
      Begin
           Key := #0;
           edtValor.SetFocus;
      End;
end;

procedure TFrmCadEntradaMercadorias.edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin
      If (Key = #13) and (edtValor.Value > 0) Then
      Begin
           Key := #0;
           CALCULAR;
           edtIPI.SetFocus;
      End;
end;

procedure TFrmCadEntradaMercadorias.Adicionar_Produtos;
Var
   aLote, aData : String;
begin
     if not (M_FLLOTE) Then
      begin
           aLote := 'GERAL';
           aData := '31/12/2099';
      End;
     dmNFe.AddItemNota(M_NRITEM,
                       edtCDPROD.Text, '', lbl_NMPROD.Text,
                       'NCM', 'EX_TIPI', '1401', cmbUNIDADE.Text,
                       'GENERO', cmbUNIDADE.Text,
                       edtQUANT.Value, edtValor.Value, edtQUANT.Value,
                       edtValor.Value, 0, 0, 0, 0, 0, 1, 0, 0, 0, edtICMS.Value, edtIPI.Value, aLote, aData);
     //
     pnlTotPedido.Caption :=  FormatFloat('###,##0.#000', CalcularSubTotal());
end;

Function TFrmCadEntradaMercadorias.CalcularSubTotal() : Double;
Var
   fValor : Double;
   M_BSICMS, M_VLICMS, M_VALIPI : Double;

begin
     fValor := 0;
     M_BSICMS := 0;
     M_VLICMS := 0;
     M_VALIPI := 0;
     //
     With dmNFe.cdsItemsNotaFiscal do
      begin
           DisableControls;
           First;
           While not (Eof) do
            begin
                 fValor := fValor + FieldByName('CDS_SUB_TOT_ENT').AsFloat;
                 //
                 If (FieldByName('CDS_ALIQIPI').AsFloat > 0) Then
                      M_VALIPI := M_VALIPI +
                           uFuncoes.Gerapercentual(FieldByName('CDS_SUB_TOT_ENT').AsCurrency, FieldByName('CDS_ALIQIPI').AsFloat);
                 //
                   If (FieldByName('CDS_ALIQICMS').AsFloat > 0) Then
                   Begin
                         M_BSICMS := M_BSICMS + FieldByName('CDS_SUB_TOT_ENT').AsCurrency;
                         M_VLICMS := M_VLICMS +
                              uFuncoes.Gerapercentual(FieldByName('CDS_SUB_TOT_ENT').AsCurrency, FieldByName('CDS_ALIQICMS').AsFloat);
                   End;
                 //
                 Next;
            End;
            First;
            EnableControls;
      End;
      //
      edtVLIPI.Value    := M_VALIPI;
      edtVLMERC.Value   := fValor;
      edtBASEICMS.Value := M_BSICMS;
      edtVLICMS.Value   := M_VLICMS;
      edtVLNOTA.Value   := fValor;
      //
      Result := fValor;
end;

procedure TFrmCadEntradaMercadorias.edtCDTRANSPExit(Sender: TObject);
begin
           if not uFuncoes.Empty(edtCDTRANSP.Text) Then
            begin
                 If not (dmDados.ProcurarValor(edtCDTRANSP.Text, 'TRA_CODIGO', 'TRANSPORTADORAS')) Then
                  begin
                       Application.MessageBox(PChar('Código de transportadora não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       edtCDTRANSP.Clear;
                       lbl_Transportadora.Clear;
                       edtCDTRANSP.SetFocus;
                       Exit;
                  End
                  Else
                  Begin
                      uFuncoes.FilterCDS(dmDados.cdsTransp, fsInteger, edtCDTRANSP.Text);
                      edtCDTRANSP.Text := uFuncoes.StrZero(edtCDTRANSP.Text,5);
                      if not (dmDados.cdsTransp.IsEmpty) Then
                          lbl_Transportadora.Text := dmDados.cdsTranspTRA_RAZAONOME.AsString;
                      //
                      dmDados.cdsTransp.Close;
                  End;
            End;
end;

procedure TFrmCadEntradaMercadorias.edtCDTRANSPKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and uFuncoes.Empty(edtCDTRANSP.Text) Then
    Begin
         key:=#0;
         spTransportadoraClick(Sender);
    End;
    //
    If (Key = #13) and not uFuncoes.Empty(edtCDTRANSP.Text) Then
    Begin
         key:=#0;
         edtVLMERC.SetFocus;
    End;
end;

procedure TFrmCadEntradaMercadorias.spTransportadoraClick(Sender: TObject);
begin
         edtCDTRANSP.SetFocus;
         Application.CreateForm(TfrmLocTransp, frmLocTransp);
         try
             With frmLocTransp do
               ShowModal;
         Finally
            If not (frmLocTransp.cdsConsultar.IsEmpty) Then
             Begin
                  edtCDTRANSP.Text := uFuncoes.StrZero(frmLocTransp.cdsConsultarTRA_CODIGO.AsString,5);
                  edtVLMERC.SetFocus;
             End;
            frmLocTransp.Free;
         End;
end;

procedure TFrmCadEntradaMercadorias.edtCDTRANSPChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDTRANSP.Text) Then
       lbl_Transportadora.Clear;
end;

function TFrmCadEntradaMercadorias.VALOR_NOTA: Real;
begin
     result := (edtVLMERC.Value + edtVLSUBST.Value
              + edtVLSEGURO.Value + edtDespesas.Value) - edtDesconto.Value;
    {     result := (edtVLMERC.Value + edtVLIPI.Value + edtVLSUBST.Value
              + edtVLSEGURO.Value + edtDespesas.Value) - edtDesconto.Value;
}
end;

procedure TFrmCadEntradaMercadorias.edtVLMERCExit(Sender: TObject);
begin
     edtVLNOTA.Value := VALOR_NOTA();
end;

procedure TFrmCadEntradaMercadorias.edtVLFRETEExit(Sender: TObject);
begin
     edtVLNOTA.Value := VALOR_NOTA();
end;

procedure TFrmCadEntradaMercadorias.edtVLSEGUROExit(Sender: TObject);
begin
     edtVLNOTA.Value := VALOR_NOTA();
end;

procedure TFrmCadEntradaMercadorias.edtDespesasExit(Sender: TObject);
begin
     edtVLNOTA.Value := VALOR_NOTA();
end;

procedure TFrmCadEntradaMercadorias.edtDescontoExit(Sender: TObject);
begin
     edtVLNOTA.Value := VALOR_NOTA();
end;

end.


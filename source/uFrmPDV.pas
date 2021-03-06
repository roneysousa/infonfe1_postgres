unit uFrmPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  Gradient, RXCtrls;

type
  TFrmPDVenda = class(TForm)
    MainMenu1: TMainMenu;
    PDV1: TMenuItem;
    mnuLeituraXItem: TMenuItem;
    mnuReducaoZItem: TMenuItem;
    mnuCancelarltimoCupomItem: TMenuItem;
    N1: TMenuItem;
    mnuCancelarItemAnterior: TMenuItem;
    mnuItemGenericoItem: TMenuItem;
    mnuCancelarmentodeCupomItem: TMenuItem;
    N2: TMenuItem;
    AdministrativoCarto1: TMenuItem;
    CartoVisa1: TMenuItem;
    N3: TMenuItem;
    mnuMemoriaFiscalItem: TMenuItem;
    pnlTop: TPanel;
    StatusBar1: TStatusBar;
    pnlImage: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblVendedor: TLabel;
    Label5: TLabel;
    edtNRCUPOM: TEdit;
    edtMODELO: TEdit;
    edtOPERADOR: TEdit;
    edtCDVEND: TEdit;
    edtLoja: TEdit;
    pnlCentral: TPanel;
    pnlSuperior: TPanel;
    lblNomePro: TLabel;
    lblUnidade: TLabel;
    lblQuant: TLabel;
    lblValor: TLabel;
    pnlDESCRICAO: TPanel;
    pnlUNID: TPanel;
    edtQuant: TPanel;
    pnlVLUNIT: TPanel;
    pnlGridProdutos: TPanel;
    pnlInferior: TPanel;
    imgCodBar: TImage;
    lblCodigo: TLabel;
    imgMoedas: TImage;
    lblTotal: TLabel;
    pnCDBARRAS: TPanel;
    edtCodigo: TEdit;
    edtTOTAL: TPanel;
    imgDinheiro: TImage;
    lblFormaPg: TLabel;
    lbl_ESC: TLabel;
    lbl_Cancela: TLabel;
    btNovaVenda: TBitBtn;
    GridItens: TDBGrid;
    dsItensVenda: TDataSource;
    Gradiente1: TGradiente;
    rxlCaixaLivre: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btNovaVendaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoChange(Sender: TObject);
    procedure mnuCancelarltimoCupomItemClick(Sender: TObject);
    procedure mnuCancelarItemAnteriorClick(Sender: TObject);
    procedure mnuItemGenericoItemClick(Sender: TObject);
    procedure mnuCancelarmentodeCupomItemClick(Sender: TObject);
    procedure mnuLeituraXItemClick(Sender: TObject);
    procedure mnuMemoriaFiscalItemClick(Sender: TObject);
    procedure mnuReducaoZItemClick(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure Nova_Venda();
    procedure LIMPA(Estado : String);
    Procedure HabilitarDesabilitaMenu(aStatus : Boolean);
    procedure INICIA_VALORES;
  public
    { Public declarations }
  end;

var
  FrmPDVenda: TFrmPDVenda;
  ScreenWidth: LongInt;
  ScreenHeight: LongInt;
  iRetorno, M_IMPRES, M_CDLOJA, M_NRITEM  : Integer;
  M_NRVEND, M_NRSEQU, M_FLESTO, M_NRLOTE : String;
  M_TOVEND : Real;
  M_FLVEND, M_FLLOTE : boolean;
  M_QTPROD, M_VLTROC, M_VLVEND, M_VLDESC, M_SUBTOT : Double;
  M_FLMAST : Integer;


implementation

uses uDMDados, uFuncoes, uFiscal, udmEstoque, Math, uFrmMemFiscal,
  uFrmProcurarProduto, uFrmFecharVenda, DBClient, uFrmSelecionaLote;

{$R *.dfm}

procedure TFrmPDVenda.FormCreate(Sender: TObject);
begin
      uFuncoes.RefreshCDS(dmDados.CdsConfig);
      If (dmDados.CdsConfigCFG_SCREEN_WIDTH.AsInteger > 0) Then
           ScreenWidth  := dmDados.CdsConfigCFG_SCREEN_WIDTH.AsInteger
      Else
           ScreenWidth  := 800;
      if (dmDados.CdsConfigCFG_SCREEN_HEIGTH.AsInteger > 0) Then
          ScreenHeight := dmDados.CdsConfigCFG_SCREEN_HEIGTH.AsInteger
      Else
          ScreenHeight := 600;
      //
      scaled := true;
      if (screen.width <> ScreenWidth) then
      begin
            height := longint(height) * longint(screen.height) DIV ScreenHeight;
            width := longint(width) * longint(screen.width) DIV ScreenWidth;
            scaleBy(screen.width, ScreenWidth);
      end;
      //
      rxlCaixaLivre.Left := (Width - rxlCaixaLivre.Width ) div 2;
      rxlCaixaLivre.Top := (Height - rxlCaixaLivre.Height) div 2;
      //
      M_FLESTO := dmDados.CdsConfigCFG_FLVENDAESTOQUE.AsString;
      If (dmDados.cdsConfigCFG_FLLOTE.AsString = 'S') Then
          M_FLLOTE := True
      Else
          M_FLLOTE := False;
      // FALTA alterar
      M_CDLOJA := 1;
      //
      pnlCentral.Visible := False;
end;

procedure TFrmPDVenda.edtCodigoKeyPress(Sender: TObject; var Key: Char);
Var
   M_QTPROD : Double;
   aProduto : String;
   M_CDPROD, M_CDBARR, M_NMPROD, M_CDUNID, M_CDARMA, M_CDTRIB : String;
   M_VLVEND, M_LIDESC, M_VLFRAC, M_VLCOMP, M_VLCUST, N_QTPROD, M_SUBTOT : Double;
   M_FLBAIX, M_CDBAIX, M_FLFRAC, M_FLESTO, M_VLALIQ, M_NRLOTE : String;
   M_TESTE, M_FLSAIR : Boolean;
begin
     If not( key in['0'..'9',#8,#13,#42, #27,','] ) then
          key:=#0;
     //
     If (key = #27) Then  // and (graCaixaLivre.Visible = False)
     begin
         Key := #0;
         If (Application.MessageBox('Confirma cancelamento de venda?',
             'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes) Then
         begin
              // Verifica Impressora
              iRetorno := uFiscal.FISCAL('StatusEcf',M_IMPRES);
              //
              If (iRetorno = 1) Then
                begin
                    pnlDESCRICAO.Caption :='';
                    pnlUNID.Caption :='';
                    pnlVLUNIT.Caption :='';
                    lblCodigo.Caption :='&Codigo:';
                    edtQuant.Caption :='1';
                    edtCodigo.Text := '';
                    edtTotal.Caption := '0,00';
                    //
                    LIMPA('1');
                End;
         End;
     End;
     // Se digita o "*" e o edtCodigo estive em branco.
     If (key = #42) and (edtCodigo.Text='') Then
           key:=#0;
     // Formul�rio para procurar produto
     If (key = #13) and (uFuncoes.Empty(edtCodigo.Text)) Then
      begin
           key:=#0;
           //
           try
               Application.CreateForm(TfrmLocalizaProduto, frmLocalizaProduto);
               frmLocalizaProduto.ShowModal;
           Finally
                   If not (frmLocalizaProduto.cdsConsultar.IsEmpty) Then
                   begin
                      edtCodigo.Text := frmLocalizaProduto.cdsConsultarPRO_CODIGO.AsString;
                      key:= #13;
                   End;
                //
               frmLocalizaProduto.Free;
               edtCodigo.SetFocus;
           End;
      End;
      // Se digita o "*"
      If (key = #42) Then
      begin
          edtQuant.Font.Color := clRed;
          // Remove o asterisco do edtCodigo.
          M_QTPROD  := StrtoFloat(edtCodigo.Text);
          edtQuant.Caption := edtCodigo.Text;
          edtCodigo.SetFocus;
          edtCodigo.text:='';
          exit;
      end;
      // Pressione o ENTER.
      If (Key = #13) and not uFuncoes.Empty(edtCodigo.Text) Then
       Begin
            key := #0;
            //
            try
                 edtCodigo.text := Format('%13S',[uFuncoes.StrZero(edtCodigo.text,13)]);
                 // Localiza produto
                 If Not dmDados.ProcurarValor(edtCodigo.Text, 'PRO_CODIGO','PRODUTOS') Then
                  Begin
                       if Not dmDados.ProcurarValor(edtCodigo.Text, 'PRO_BARRAS','PRODUTOS') Then
                         Begin
                             Application.MessageBox (PChar('Produto n�o cadastrado !'),
                                'AVISO',MB_ICONSTOP+ MB_OK);
                             edtCodigo.Clear;
                             edtCodigo.SetFocus;
                             Exit;
                         End
                         Else
                             aProduto := dmDados.GetCodProdutoBarras(edtCodigo.Text);
                  End
                  Else
                      aProduto := edtCodigo.text;
                  //
                  uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                  If not (dmDados.cdsProduto.IsEmpty) Then
                    begin
                         pnlDESCRICAO.Caption := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                         //
                         If uFuncoes.Empty(dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsString) and (M_IMPRES > 0) Then
                          begin
                               Application.MessageBox('Produto sem tributa��o!!!',
                                'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                               //
                               dmDados.cdsProduto.Close;
                               pnlDESCRICAO.Caption := '';
                               edtCodigo.Clear;
                               edtCodigo.SetFocus;
                               Exit;
                          End;
                    End;
                    M_TESTE := False;
                    // Carrega as variaveis de memoria
                    M_CDPROD := dmDados.cdsProduto.FieldByName('PRO_CODIGO').AsString;
                    M_CDBARR := dmDados.cdsProduto.FieldByName('PRO_BARRAS').AsString;
                    M_NMPROD := Copy(dmDados.cdsProduto.FieldByName('PRO_DESCRICAO').AsString,1,29);
                    M_CDUNID := dmDados.cdsProduto.FieldByName('UNI_CODIGO').AsString;
                    M_CDARMA := dmDados.cdsProduto.FieldByName('UNI_ARMAZENAMENTO').AsString;
                    M_CDTRIB := dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsString;
                    M_VLVEND := dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
                    M_LIDESC := dmDados.cdsProduto.FieldByName('PRO_LIMDESCONTO').AsFloat;
                    M_VLFRAC := dmDados.cdsProduto.FieldByName('PRO_FRACAO').AsCurrency;
                    M_VLCOMP := dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency;
                    M_VLCUST := dmDados.cdsProduto.FieldByName('PRO_VLCUSTO').AsCurrency;
                    //
                    If not uFuncoes.Empty(dmDados.cdsProduto.FieldByName('PRO_CODIGOBAIXA').AsString) Then
                    begin
                         M_FLBAIX := 'S';
                         M_CDBAIX := dmDados.cdsProduto.FieldByName('PRO_CODIGOBAIXA').AsString;
                    End
                    Else
                        M_FLBAIX := 'N';
               //M_QTPROD := edtQuant.Caption;
               //
               Try
                    InttoStr(StrtoInt(edtQuant.Caption));
                    M_FLFRAC := 'N';
               Except
                    M_FLFRAC := 'S';
               End;
               //
               //N_QTPROD := StrtoFloat(edtQuant.Caption);
               M_QTPROD := StrtoFloat(edtQuant.Caption);
               //
               M_SUBTOT := M_VLVEND*M_QTPROD;
               //
               pnlDESCRICAO.Caption := M_NMPROD;
               pnlUNID.Caption      := M_CDUNID;
               pnlVLUNIT.Caption    := FormatFloat('#,##0.00',M_VLVEND);
               //
               If (M_FLESTO = 'S') and (M_TESTE = False) Then
                Begin
                    With dmEstoque.cdsEstoque do
                    Begin
                         Close;
                         Params.ParamByName('pLOJA').AsInteger  := M_CDLOJA;
                         Params.ParamByName('pCODIGO').AsString := aProduto;
                         Open;
                         //
                         If Not (IsEmpty) Then
                          begin
                               // Se menor que zero
                               If (FieldByName('EST_QUANTIDADE').AsFloat <= 0 ) Then
                               Begin
                                   Application.MessageBox (PChar('N�o h� quantidade digitada no estoque !'),
                                      'AVISO',MB_ICONSTOP+ MB_OK);
                                   //
                                   pnlDESCRICAO.Caption := '';
                                   pnlUNID.Caption      := '';
                                   pnlVLUNIT.Caption    := '';
                                   //
                                   edtCodigo.Clear;
                                   edtCodigo.SetFocus;
                                   Exit;
                              End;     // fim-se Se menor que zero
                              // se Maior que a quant. em estoque
                              If (FieldByName('EST_QUANTIDADE').AsFloat < N_QTPROD) Then
                               Begin
                                    Application.MessageBox (PCHar('Quantidade digitada maior que '+#13
                                        +'quantidade no estoque !'),
                                    'AVISO',MB_ICONSTOP+ MB_OK);
                                    //
                                    pnlDESCRICAO.Caption := '';
                                    edtQuant.Font.Color  := clBlack;
                                    edtQuant.Caption     := '1';
                                    M_QTPROD := 1;
                                    pnlUNID.Caption      := '';
                                    pnlVLUNIT.Caption    := '';
                                    //
                                    edtCodigo.Clear;
                                    edtCodigo.SetFocus;
                                    Exit;
                               End;

                          End      // se n�o vazio - dmEstoque.cdsEstoque
                          Else
                          Begin
                               Application.MessageBox (PChar('N�o h� produto no estoque !'),
                                   'AVISO',MB_ICONSTOP+ MB_OK);
                               //
                               pnlDESCRICAO.Caption := '';
                               pnlUNID.Caption      := '';
                               pnlVLUNIT.Caption    := '';
                               //
                               edtCodigo.Clear;
                               edtCodigo.SetFocus;
                               Exit;
                          End;
                         //
                    End;    // wiht dmEstoque.cdsEstoque
                End;   // fim-se (M_FLESTO = 'S') and (M_TESTE = False)
                //
                If (M_NRITEM = 0) Then   // Abri cupom  de venda
                     iRetorno := uFiscal.FISCAL('AbriCupom', M_IMPRES);
                // Pega o numero do cupom
                If (M_IMPRES > 0) and (M_NRITEM = 0) Then
                  begin
                       iRetorno := uFiscal.FISCAL('NumeroCupom', M_IMPRES);
                       //SetLength( cCupomNumero, 6);
                       //iRetorno := uBematech.Bematech_FI_NumeroCupom(  cCupomNumero );
                       edtNRCUPOM.Text := uFiscal.aNumeroCupom;
                  End;
                  //
                If (iRetorno = 1) Then
                    begin
                         M_NRLOTE := 'GERAL';
                         // lotes
                         If (M_FLLOTE) Then
                         begin
                              With dmDados.cdsListaLotesProd do
                                begin
                                     Close;
                                     Params.ParamByName('pCODIGO').AsString    := aProduto;
                                     Params.ParamByName('pQUANTIDADE').AsFloat := 0;
                                     open;
                                     //
                                     If not (IsEmpty) Then
                                      begin
                                           if (recordcount = 1) Then
                                               M_NRLOTE := FieldByName('LOT_NRLOTE').AsString
                                           Else
                                           Begin
                                                Application.CreateForm(TFrmSelecionaLote, FrmSelecionaLote);
                                                 try
                                                     FrmSelecionaLote.showmodal;
                                                 finally
                                                     If not (dmDados.cdsListaLotesProd.IsEmpty) Then
                                                         M_NRLOTE := FieldByName('LOT_NRLOTE').AsString;
                                                     //
                                                     FrmSelecionaLote.free;
                                                end;
                                           End;
                                      End;
                                End;
                         End;
                         //
                         M_VLALIQ := uFuncoes.Alltrim(dmDados.GetIndiceECF(aProduto));
                         Try
                            InttoStr(StrtoInt(edtQuant.Caption));
                            M_FLFRAC := 'N';
                         Except
                            M_FLFRAC := 'S';
                         End;
                         //
                         If (M_FLFRAC = 'S') Then          // 'F' para Fracion�ria
                               iRetorno := uFiscal.FISCAL('VendaItem', M_IMPRES,
                                     ( M_CDPROD ),
                                     ( M_NMPROD ),
                                     ( M_VLALIQ ),
                                     ( 'F' ),
                                     ( FormatFloat('#,##0.#00',M_QTPROD )),
                                     ('2'),
                                     ( FormatFloat('###,##0.#0',M_VLVEND) ),
                                     ( '%' ),
                                     ( '0000') )
                         Else
                                iRetorno := uFiscal.FISCAL('VendaItem', M_IMPRES,
                                     ( M_CDPROD ),
                                     ( M_NMPROD ),
                                     ( M_VLALIQ ),
                                     ( 'I' ),
                                     ( FloattoStr(M_QTPROD) ),
                                     ('2'),
                                     ( FormatFloat('###,##0.#0',M_VLVEND) ),
                                     ( '%' ),
                                     ( '0000') );
                    End;
                //
                If (iRetorno = 1) Then
                 Begin
                     //  Calcula
                     M_TOVEND := uFuncoes.Arredondar(M_TOVEND+(M_QTPROD*M_VLVEND),2);
                     edtTOTAL.Caption := FormatFloat('###,###,##0.00', M_TOVEND);
                     edtQuant.Caption := FloattoStr(M_QTPROD);
                     M_NRITEM := M_NRITEM + 1;
                     //
                     {IncluirItem(aItem, aProduto, aDescricao, aUnidade,
                      aLote, aCodBaixa: String; fQuantidade, fValorUnt, fValorCompra,
                      fValorCusto, fValorDesc, fValorAcrescimo, fValorIPI: Double; iVendedor,
                      iCor: Integer): Boolean;}
                     If (dmEstoque.IncluirItem(InttoStr(M_NRITEM), aProduto, M_NMPROD, M_CDUNID, M_NRLOTE, M_CDBAIX,
                             M_QTPROD, M_VLVEND, M_VLCOMP, M_VLCUST, 0, 0, 0, 0, 0, M_NRLOTE)) Then
                      begin

                      End
                      Else
                      Begin
                           Application.MessageBox(PChar('Error na inclus�o do item!!!'),
                              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           //
                           If (M_FLVEND  = True) Then
                            begin
                              iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
                              //
                              If (iRetorno = 1) Then
                                 Begin
                                   pnlDESCRICAO.Caption := '';
                                   pnlUNID.Caption      := '';
                                   pnlVLUNIT.Caption    := '';
                                   lblCodigo.Caption    := '&Codigo:';
                                   edtQuant.Caption     := '1';
                                   edtCodigo.Text       := '';
                                   edtTotal.Caption     := '0,00';
                                   //
                                   LIMPA('1');
                                 End;
                            End;
                      End;
                     //
                     edtQuant.Font.Color:= clBlack;
                 End
                 Else
                 begin
                      iRetorno := uFiscal.FISCAL('CancelaCupom',M_IMPRES);
                        If (iRetorno = 1) Then
                          Begin
                               pnlDESCRICAO.Caption := '';
                               pnlUNID.Caption      := '';
                               pnlVLUNIT.Caption    := '';
                               lblCodigo.Caption    := '&Codigo:';
                               edtQuant.Caption     := '1';
                               edtCodigo.Text       := '';
                               edtTotal.Caption     := '0,00';
                               //
                               LIMPA('1');
                               Exit;
                          End;
                 End;
                 //limpa o edtCodigo e coloca o foco nele.
                 edtQuant.Caption     := '1';
                 edtCodigo.Clear;
                 edtCodigo.SetFocus;
//           End;               // fim da Procurar produto
            Except
                 on Exc:Exception do
                  begin
                      Application.MessageBox(PChar('Error na inclus�o do item!!!'+#13
                          + Exc.Message),
                          'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       //
                       If (M_FLVEND  = True) Then
                        begin
                          iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
                          //
                          If (iRetorno = 1) Then
                            Begin
                                 pnlDESCRICAO.Caption := '';
                                 pnlUNID.Caption      := '';
                                 pnlVLUNIT.Caption    := '';
                                 lblCodigo.Caption    := '&Codigo:';
                                 edtQuant.Caption     := '1';
                                 edtCodigo.Text       := '';
                                 edtTotal.Caption     := '0,00';
                                 //
                                 LIMPA('1');
                            End;
                        End;
                        //
                        M_FLVEND := False;
                        //
                        {If (graCaixaLivre.Visible = False) Then
                         begin
                              edtCodigo.Clear;
                              edtCodigo.SetFocus;
                         End;}
                  End;
            End;
       End; //Pressionamento de ENTER
end;

procedure TFrmPDVenda.FormShow(Sender: TObject);
begin
     Gradiente1.Align := alClient;
     pnlCentral.Align := alClient;
     //
     M_IMPRES := 0;
     //
     mnuCancelarItemAnterior.Enabled     := False;
     mnuItemGenericoItem.Enabled         := False;
     mnuCancelarmentodeCupomItem.Enabled := False;
end;

procedure TFrmPDVenda.Nova_Venda;
begin
     Screen.Cursor := crHourGlass;
     try
         //
         uFuncoes.RefreshCDS(dmDados.cdsConfig);
         If (dmDados.CdsConfigCFG_FLVENDEDOR.AsString = 'N') Then
            edtCDVEND.Clear;
         // Verifica Impressora
         iRetorno := uFiscal.FISCAL('StatusEcf',M_IMPRES);
         uFiscal.VerificaRetornoFuncaoImpressora(iRetorno, M_IMPRES);
         //
         If (iRetorno <> 1) Then
         begin
             LIMPA('1');
             Exit;
         end;
         //
         LIMPA('2');
         //
         If (M_FLVEND = False) Then
         Begin
              //
              uFuncoes.RefreshCDS(dmDados.cdsConfig);
              //
              M_NRVEND := uFuncoes.StrZero(FloattoStr(dmDados.CdsConfig.FieldByName('CFG_VENDA').AsFloat + 1),7);
              M_NRSEQU := uFuncoes.StrZero(FloattoStr(dmDados.CdsConfig.FieldByName('CFG_SEQUENCIA').AsFloat + 1),10);
              //
              M_QTPROD  := 1;
              M_NRITEM  := 0;
              //Zera o troco e o Total
              M_VLTROC  := 0;
              M_TOVEND  := 0;
              M_VLVEND  := 0;
              M_FLVEND  := True;
              //
              HabilitarDesabilitaMenu(false);
              //
              dmEstoque.cdsItensVendas.EmptyDataSet;
              //GridItens.Visible  := True;
              edtCodigo.Enabled :=  True;
              edtCodigo.SetFocus;
              //
              //GridItens.Visible := True;
              edtCodigo.Enabled := True;
              edtCodigo.Clear;
              edtCodigo.SetFocus;
         End
         ELse
         begin
             Application.MessageBox('Voc� tem que fechar a venda atual.',
                   'Aten��o', MB_IconInformation + MB_OK);
             Exit;
         End;
     finally
         Screen.Cursor := crDefault;
     end;
     Application.ProcessMessages;
end;

procedure TFrmPDVenda.btNovaVendaClick(Sender: TObject);
begin
     pnlCentral.Visible := True;
     Nova_Venda;
end;

procedure TFrmPDVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
     //
     If (key = #27) Then  // and (graCaixaLivre.Visible = False)
     begin
         Key := #0;
         If (Application.MessageBox('Confirma cancelamento de venda?',
             'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes) Then
         begin
              //iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
              iRetorno := uFiscal.FISCAL('StatusEcf',M_IMPRES);
              //
              If (iRetorno = 1) Then
                  Begin
                    //
                    pnlDESCRICAO.Caption :='';
                    pnlUNID.Caption      :='';
                    pnlVLUNIT.Caption    :='';
                    lblCodigo.Caption    :='&Codigo:';
                    edtQuant.Caption     :='1';
                    edtCodigo.Text       := '';
                    edtTotal.Caption     := '0,00';
                    LIMPA('1');
                  End;
         End;
     End;

end;

procedure TFrmPDVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  W_VLVEND : Real;
begin
      // se pressionar Ctrl+Shift+Del
      If (ssCtrl in Shift) and (Key = 46) then
       begin
            If (M_FLMAST = 0) Then
            Begin
                 // Dm.Fiscal_Usuario(StrtoInt(edtOPERADOR.Text));
                 M_IMPRES := dmDados.IMPRESSORA(M_FLMAST);
            End;
            //
            {If (graCaixaLivre.Visible = False) Then
                CANCELA_VENDA;}
            //
            If (M_FLMAST = 0) Then
                M_IMPRES := dmDados.IMPRESSORA(StrtoInt(edtOPERADOR.Text));
            //
            Exit;
       End;
      // Se pressionar F2. 
      if (key = vk_F2) then  // and (graCaixaLivre.Visible = False)
      begin
           If uFuncoes.Empty(edtCDVEND.Text) Then
           Begin
               Application.MessageBox('Digite o c�digo do vendedor!!!',
                   'ATEN��O', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               edtCDVEND.SetFocus;
               Exit;
           End;
           //
           If (M_TOVEND = 0) Then
           begin
               edtCodigo.SetFocus;
               exit;
           end;
           //
           If (M_FLVEND = True) Then
           begin
                //
                Application.CreateForm(TfrmFechamentoVenda, frmFechamentoVenda); // Carrega form na mem�ria
                try
                   W_VLVEND := M_TOVEND;
                   If (M_IMPRES > 0) Then
                      uFrmFecharVenda.W_NRCUPO := StrtoInt(edtNRCUPOM.Text)
                   Else
                      uFrmFecharVenda.W_NRCUPO := 0;
                   //
                   uFrmFecharVenda.M_CDVEND := StrtoInt(edtCDVEND.Text);
                   uFrmFecharVenda.M_NMVEND := 'INFOG2';
                   uFrmFecharVenda.M_CDLOJA := M_CDLOJA;
                   // falta alterar
                   uFrmFecharVenda.M_CDCAIX := 1;
                   If not uFuncoes.Empty(edtNRCUPOM.Text) Then
                       uFrmFecharVenda.iCupom := StrtoInt(edtNRCUPOM.Text)
                   Else
                       uFrmFecharVenda.iCupom := 0;
                   // aqui StrtoInt(edtOPERADOR.Text);
                   frmFechamentoVenda.ShowModal;
                Finally
                   If (uFrmFecharVenda.W_FLCANCCUPOM) then
                    begin
                         pnlDESCRICAO.Caption := '';
                         pnlUNID.Caption      := '';
                         pnlVLUNIT.Caption    := '';
                         lblCodigo.Caption    := '&Codigo:';
                         edtQuant.Caption     := '1';
                         edtCodigo.Text       := '';
                         edtTotal.Caption     := '0,00';
                         //
                         LIMPA('1');
                    End;
                   //
                   frmFechamentoVenda.Free;                              //Libera Mem�ria
                   If (M_FLVEND = False) Then
                   Begin
                        pnlDESCRICAO.Caption :='';
                        pnlUNID.Caption :='';
                        pnlVLUNIT.Caption :='';
                        lblCodigo.Caption :='&Codigo:';
                        edtQuant.Caption :='1';
                        edtCodigo.Text := '';
                        edtTotal.Caption := '0,00';
                        //bdtN_Venda.Caption := ' ';
                        INICIA_VALORES;
                        // desabilita Menus
                        mnuCancelarItemAnterior.Enabled     := False;
                        mnuItemGenericoItem.Enabled := False;
                        mnuCancelarmentodeCupomItem.Enabled := False;
                        //
                        Limpa('1');
                        //
                        mnuCancelarltimoCupomItem.Enabled := True;
                   End;
                   //
                End;
           End
           else
           begin
               Application.MessageBox (PChar('Voc� t�m que abrir uma nova venda!!!'),
                  'Aviso',MB_ICONSTOP+ MB_OK);
               exit;
           end;
      end;
end;

procedure TFrmPDVenda.edtCodigoChange(Sender: TObject);
begin
        If (edtCodigo.text = '*') or (edtCodigo.text = ',') Then
             edtCodigo.text := '';
end;

procedure TFrmPDVenda.mnuCancelarltimoCupomItemClick(Sender: TObject);
begin
     Try
        iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
        //
        if (iRetorno = 1) Then
          Begin
               pnlDESCRICAO.Caption := '';
               pnlUNID.Caption      := '';
               pnlVLUNIT.Caption    := '';
               lblCodigo.Caption    := '&Codigo:';
               edtQuant.Caption     := '1';
               edtCodigo.Text       := '';
               edtTotal.Caption     := '0,00';
               //
               mnuCancelarltimoCupomItem.Enabled := False;
               LIMPA('1');
          End;
     Except

     End;
end;

procedure TFrmPDVenda.LIMPA(Estado: String);
begin
   If (Estado = '1') Then
   begin
        pnlCentral.Visible := False;
        pnlTop.Color   := clGray;
        //lblNVenda.Visible   := False;
        GridItens.Visible   := False;
        //pnlImage.Visible    := False;
        lblNomePro.Visible  := False;
        pnlDESCRICAO.Visible := False;
        lblUnidade.Visible := False;
        pnlUNID.Visible := False;
        edtQuant.Visible := False;
        lblQuant.Visible := False;
        pnlVLUNIT.Visible := False;
        lblValor.Visible := False;
        //lblListaPro.Visible := False;
        pnCDBARRAS.Visible := False;
        edtCodigo.Visible := False;
        imgCodBar.Visible := False;
        lblCodigo.Visible := False;
        imgMoedas.Visible := False;
        edtTOTAL.Visible := False;
        lblTotal.Visible := False;
        //bdtN_Venda.Visible := False;
        //lblNovaVenda.Visible := False;
        imgDinheiro.Visible := False;
        lblFormaPg.Visible := False;
        //imgNovaVenda.Visible := False;
        //pnlFormaPag.Visible := False;
        lbl_Cancela.Visible := False;
        lbl_ESC.Visible := False;
        //
        //lbl_Desconto.Visible     := False;
        //edtDescontoPerc.Visible  := False;
        //edtDescontoValor.Visible := False;
        //
        //graCaixaLivre.Align := alClient;
        //rxlCaixaLivre.Left  := 50;
        //(FrmPrincipal.Width Div 2) - (pnlFormaPag.Width Div 2);
        //rxlCaixaLivre.Top   := (FrmAdmin.Height Div 2) - (150+StatusBar1.Height)+20;
        {rxlCaixaLivre.Visible := True;
        graCaixaLivre.Visible := True;}
        M_FLVEND := False;
        edtNRCUPOM.Clear;
        btNovaVenda.Visible   := True;
       //btNovaVenda.SetFocus;
       //  MENUS
       HabilitarDesabilitaMenu(False);
       {mnuLeituraXItem.Enabled      := False;
       mnuReducaoZItem.Enabled      := False;
       mnuMemoriaFiscalItem.Enabled := False;
       //
       mnuCancelarItemAnterior.Enabled     := True;
       mnuItemGenericoItem.Enabled         := True;
       mnuCancelarmentodeCupomItem.Enabled := True;}
  End
  Else
  begin
    {graCaixaLivre.Visible := False;
    rxlCaixaLivre.Visible := False;}
    pnlCentral.Visible := True;
    btNovaVenda.Visible := False;
    //
    pnlTop.Color   := clBlue;
    //lblNVenda.Visible   := True;
    GridItens.Visible   := True;
    //pnlImage.Visible    := True;
    lblNomePro.Visible  := True;
    pnlDESCRICAO.Visible := True;
    lblUnidade.Visible := True;
    pnlUNID.Visible := True;
    edtQuant.Visible := True;
    lblQuant.Visible := True;
    pnlVLUNIT.Visible := True;
    lblValor.Visible := True;
    //lblListaPro.Visible := True;
    pnCDBARRAS.Visible := True;
    edtCodigo.Visible := True;
    imgCodBar.Visible := True;
    lblCodigo.Visible := True;
    imgDinheiro.Visible := True;
    //imgMoedas.Visible := True;
    edtTOTAL.Visible := True;
    lblTotal.Visible := True;
    //bdtN_Venda.Visible := True;
    //lblNovaVenda.Visible := True;
    lblFormaPg.Visible  := True;
    lbl_Cancela.Visible := True;
    lbl_ESC.Visible     := True;
    //
    //lbl_Desconto.Visible     := True;
    //edtDescontoPerc.Visible  := True;
    //edtDescontoValor.Visible := True;
    //imgNovaVenda.Visible := True;
    //
    HabilitarDesabilitaMenu(True);
    {mnuLeituraXItem.Enabled      := True;
    mnuReducaoZItem.Enabled      := True;
    mnuMemoriaFiscalItem.Enabled  := True;
    //
    mnuCancelarItemAnterior.Enabled     := False;
    mnuItemGenericoItem.Enabled         := False;
    mnuCancelarmentodeCupomItem.Enabled := False;}
  End;
end;

procedure TFrmPDVenda.mnuCancelarItemAnteriorClick(Sender: TObject);
begin
   If (M_FLVEND = True) Then
   begin
       If not (dmEstoque.cdsItensVendas.IsEmpty) and (dmEstoque.cdsItensVendas.RecordCount > 0) Then
        begin
          dmEstoque.cdsItensVendas.Last;
          If (dmEstoque.cdsItensVendas.FieldByName('ITE_FLCANC').AsString <> 'C') Then
            Begin
                iRetorno := uFiscal.FISCAL('CancelaItemAnterior', M_IMPRES);
                If (iRetorno = 1) Then
                   Begin
                        dmEstoque.cdsItensVendas.Edit;
                        DmEstoque.cdsItensVendas.FieldByName('ITE_FLCANC').AsString := 'C';
                        DmEstoque.cdsItensVendas.Post;
                        //M_TOVEND := Arredondar(M_TOVEND-M_SUBTOT,2);
                        M_TOVEND := dmEstoque.CalcularTotalVenda(dmEstoque.cdsItensVendas);
                        edtTOTAL.Caption := FormatFloat('###,###,##0.00',M_TOVEND);
                    End;
            End
            Else
            begin
                Application.MessageBox (Pchar('O item '+uFuncoes.StrZero(InttoStr(M_NRITEM),3)
                    +' j� foi cancelado!!!'),'ATEN��O',MB_ICONINFORMATION+ MB_OK);
                Exit;
            End;
        End
        Else
            Application.MessageBox (Pchar('N�o h� itens na venda.'),
               'ATEN��O',MB_ICONINFORMATION+ MB_OK);
   End
   Else
       Application.MessageBox (PChar('N�o h� venda aberta !'),
                'ATEN��O',MB_ICONINFORMATION+ MB_OK);
end;


procedure TFrmPDVenda.mnuItemGenericoItemClick(Sender: TObject);
Var
   W_NRITEM : String;
   W_VLTOIT : Double;
begin
   If (M_FLVEND = True) Then
    begin
      If not (dmEstoque.cdsItensVendas.IsEmpty) and (dmEstoque.cdsItensVendas.RecordCount > 0) Then
       begin
            W_NRITEM := InputBox('Cancelar item', 'Digite o n�mero do item?', '');
             Try
                  StrtoInt(W_NRITEM);
                  W_NRITEM := uFuncoes.StrZero(Copy(W_NRITEM,1,3),3);
             Except
                   Application.MessageBox (Pchar('Cancelamento de item n�o executado !'),
                     'ATEN��O',MB_ICONINFORMATION+ MB_OK);
                   Exit;
             End;
             //
             If (dmEstoque.cdsItensVendas.Locate('ITE_NRITEN',W_NRITEM,[])) Then
             Begin
                 If (dmEstoque.cdsItensVendas.FieldByName('ITE_FLCANC').AsString <> 'C') Then
                 Begin
                     iRetorno := uFiscal.FISCAL('CancelaItemGenerico',M_IMPRES, W_NRITEM);
                     If (iRetorno = 1) Then
                         Begin
                             dmEstoque.cdsItensVendas.Edit;
                             dmEstoque.cdsItensVendas.FieldByName('ITE_FLCANC').AsString := 'C';
                             dmEstoque.cdsItensVendas.Post;
                             //
                             {dmEstoque.cdsItensVendas.DisableControls;
                             dmEstoque.cdsItensVendas.First;}
                             //
                             {While not (Dm.cdsItensVendas.Eof) do
                             Begin
                                  If (Dm.cdsItensVendas.FieldByName('ITE_FLCANC').AsString <> 'C') Then
                                  M_TOVEND := M_TOVEND + Arredondar(Dm.cdsItensVendas.FieldByName('ITE_VLSUBT').AsCurrency ,2);
                                  //
                                  Dm.cdsItensVendas.Next;
                             End;
                             //
                             Dm.cdsItensVendas.EnableControls;}
                             //
                             M_TOVEND := dmEstoque.CalcularTotalVenda(dmEstoque.cdsItensVendas);
                             edtTOTAL.Caption := FormatFloat('###,###,##0.00',M_TOVEND);
                         End;
                 End
                 Else
                 begin
                     Application.MessageBox ( Pchar('O item '+dmEstoque.cdsItensVendas.FieldByName('ITE_NRITEN').AsString
                         +' j� foi cancelado!!!'),'ATEN��O',MB_ICONINFORMATION+ MB_OK);
                     Exit;
                 End;
             End
             Else
             begin
                  Application.MessageBox (Pchar('O item '+uFuncoes.StrZero(W_NRITEM,3)
                        +' n�o existe!!!'),'ATEN��O',MB_ICONINFORMATION+ MB_OK);
                  Exit;
             End;
        End
        Else
            Application.MessageBox (PChar( 'N�o h� itens na venda.'),
                'ATEN��O',MB_ICONINFORMATION+ MB_OK);
    End
    Else
        Application.MessageBox (PChar( 'N�o h� venda aberta !'),
                  'ATEN��O',MB_ICONINFORMATION+ MB_OK);
end;

procedure TFrmPDVenda.mnuCancelarmentodeCupomItemClick(Sender: TObject);
begin
         If (Application.MessageBox('Confirma cancelamento de venda?',
             'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes) Then
         begin
              iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
              //
              If (iRetorno = 1) Then
                  Begin
                      pnlDESCRICAO.Caption := '';
                      pnlUNID.Caption      := '';
                      pnlVLUNIT.Caption    := '';
                      lblCodigo.Caption    := '&Codigo:';
                      edtQuant.Caption     := '1';
                      edtCodigo.Text       := '';
                      edtTotal.Caption     := '0,00';
                      //
                      LIMPA('1');
              End;
         End;
end;

procedure TFrmPDVenda.mnuLeituraXItemClick(Sender: TObject);
begin
// ---------------------------- Leitura X -------------------------------
     Try
        If (M_FLVEND = False) Then
             uFiscal.FISCAL('LeituraX', M_IMPRES)
        Else
        Begin
             Application.MessageBox (PChar( 'Voc� tem que fechar a venda atual!!!'),
                'ATEN��O',MB_ICONINFORMATION+ MB_OK);
             Exit;
        End;
     Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Erro ao tentar realizar leitura X!!!'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
        End;
     End;
end;

procedure TFrmPDVenda.mnuMemoriaFiscalItemClick(Sender: TObject);
begin
     If (M_FLVEND = False) Then
     Begin
          with TfrmMemoriaFiscal.create(self) do
            try
               showmodal;
            finally
               free;
             end;
     End
     Else
     begin
          Application.MessageBox (PChar('Voc� tem que fechar a venda atual!!!'),
                'ATEN��O',MB_ICONINFORMATION+ MB_OK);
          Exit;
     End;
end;

procedure TFrmPDVenda.mnuReducaoZItemClick(Sender: TObject);
begin
// ---------------------------- Redu��o Z -------------------------------
     Try
         If (M_FLVEND =  False) Then
         begin
             If Application.MessageBox (PCHar('A Redu��o Z impossibilitar� novas impress�es'+#13
                            +'de Cupons Fiscais!'+#13+#13+'Continua ?'),
                            'ATEN��O',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)=idYes then
                 uFiscal.FISCAL('ReducaoZ',M_IMPRES)
             Else
                 Exit;
         //
         End
         Else
         Begin
              Application.MessageBox (PChar('Voc� tem que fechar a venda atual!!!'),
                  'ATEN��O',MB_ICONINFORMATION+ MB_OK);
              Exit;
         End;
     Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Erro ao tentar realizar Redu��o Z!!!'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
        End;
     End;
end;

procedure TFrmPDVenda.HabilitarDesabilitaMenu(aStatus : Boolean);
begin
       mnuLeituraXItem.Enabled      := aStatus;
       mnuReducaoZItem.Enabled      := aStatus;
       mnuMemoriaFiscalItem.Enabled := aStatus;
       mnuCancelarltimoCupomItem.Enabled := aStatus;
       AdministrativoCarto1.Enabled := aStatus;
       //
       mnuCancelarItemAnterior.Enabled     := not aStatus;
       mnuItemGenericoItem.Enabled         := not aStatus;
       mnuCancelarmentodeCupomItem.Enabled := not aStatus;
end;

procedure TFrmPDVenda.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
          KEY := 0;
     //
end;

procedure TFrmPDVenda.INICIA_VALORES;
begin
     M_TOVEND := 0;
     M_FLVEND := False;
     M_VLVEND := 0;
     M_VLDESC := 0;
     M_SUBTOT := 0;
     M_VLTROC := 0;
end;

end.

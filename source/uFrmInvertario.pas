unit uFrmInvertario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, ToolEdit, CurrEdit;

type
  TFrmInvertario = class(TForm)
    pnlSuperior: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    sbLocProduto: TSpeedButton;
    lbl_Lotes: TLabel;
    lbl_DTVENC: TLabel;
    edtCDPROD: TEdit;
    edtNMPROD: TEdit;
    cmbNMLOJA: TComboBox;
    edtLOTE: TEdit;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    BtCancelar: TBitBtn;
    BtGravar: TBitBtn;
    edtDTVENC: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_Lote: TLabel;
    dbeUNIDADE: TEdit;
    dbeQTATUAL: TCurrencyEdit;
    edtQUANT: TCurrencyEdit;
    edtQTENTRADA: TCurrencyEdit;
    edtNRLOTE: TEdit;
    procedure sbLocProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtQTENTRADAChange(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtQTENTRADAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Lote(aStatus : Boolean);
    procedure LimparCampo;
  public
    { Public declarations }
  end;

var
  FrmInvertario: TFrmInvertario;

implementation

uses uFrmLocProdutoServico, uDMDados, uFuncoes, udmEstoque, uFrmNEFMain;

{$R *.dfm}

procedure TFrmInvertario.Lote(aStatus: Boolean);
begin
     lbl_Lotes.Visible := aStatus;
     edtLOTE.Visible   := aStatus;
     lbl_DTVENC.Visible := aStatus;
     edtDTVENC.Visible := aStatus;
end;

procedure TFrmInvertario.sbLocProdutoClick(Sender: TObject);
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
                 edtNMPROD.Text := frmLocProdutoServico.cdsConsultarPRO_DESCRICAO.AsString;
                 Perform(WM_NextDlgCtl,1,0);
             End;
            frmLocProdutoServico.Free;
         End;
end;

procedure TFrmInvertario.FormShow(Sender: TObject);
begin
     Lote(False);
     dmDados.CarregarLojas(cmbNMLOJA);
     pnlDados.Enabled := false;

end;

procedure TFrmInvertario.edtCDPRODChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDPROD.Text) Then
      begin
           edtNMPROD.Clear;
           //
           LimparCampo;
           pnlDados.Enabled := False;
      End;
end;

procedure TFrmInvertario.edtCDPRODExit(Sender: TObject);
Var
  aCodigo : String;
  iLoja  : Integer;
begin
     If not uFuncoes.Empty(cmbNMLOJA.Text)
       and not uFuncoes.Empty(edtCDPROD.Text) Then
       begin
            aCodigo := uFuncoes.StrZero(edtCDPROD.Text,13);
            edtCDPROD.Text := aCodigo;
            iLoja := dmDados.GetCodigoLoja(cmbNMLOJA.Text);
            edtNMPROD.Clear;
            pnlDados.Enabled := false;
            //
            If (dmDados.ProcurarValor(aCodigo, 'PRO_CODIGO', 'PRODUTOS')) Then
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
                    End
                    Else
                    begin
                        edtNMPROD.Text := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                        //
                        if (dmEstoque.GetProdutoEstoque(iLoja, aCodigo)) Then
                         begin
                              dbeUNIDADE.Text  := dmEstoque.cdsEstoqueEST_UNIDADE.AsString;
                              dbeQTATUAL.Value := dmEstoque.cdsEstoqueEST_QUANTIDADE.AsFloat;
                         End
                         Else
                         begin
                              dbeUNIDADE.Text  := dmDados.cdsProdutoUNI_CODIGO.AsString;
                              dbeQTATUAL.Value := 0;
                         End;
                         //
                         pnlDados.Enabled := true;
                         edtQTENTRADA.SetFocus;
                    End;
                 End;
            End
            Else
            begin
                Application.MessageBox('Código de produto não cadastrado.','ATENÇÃO',
                   MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                edtCDPROD.Clear;
                edtCDPROD.SetFocus;
                Exit;
            End;
       End;
end;

procedure TFrmInvertario.LimparCampo;
begin
    dbeUNIDADE.Clear;
    dbeQTATUAL.Clear;
    edtQUANT.Clear;
    edtNRLOTE.Clear;
    edtQTENTRADA.Clear;
end;

procedure TFrmInvertario.edtQTENTRADAChange(Sender: TObject);
begin
     If (edtQTENTRADA.Value <>0 )
       or not uFuncoes.Empty(edtQTENTRADA.Text) Then
     begin
          BtCancelar.Enabled := True;
          BtGravar.Enabled   := True;
     End
     Else
     begin
          BtCancelar.Enabled := False;
          BtGravar.Enabled   := False;
     End;
end;

procedure TFrmInvertario.BtGravarClick(Sender: TObject);
Var
   iLoja, iUsuario, iSequencia, iItem : Integer;
   aProduto, M_HOMOVI, aUnidade, aTamanho, aLote, aDtVencLote : String;
   M_DTMOVI : TDate;
   fQuant, fQuantAnterior, fQuantAtual : Double;
   fValorCompra, fValorCusto, fValorVenda : Double;
begin
      If Application.MessageBox('Confirma alteração?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         Begin
              uFuncoes.RefreshCDS(dmDados.cdsConfig);
              iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
              iLoja    := dmDados.GetCodigoLoja(cmbNMLOJA.Text);
              M_DTMOVI := Date();
              M_HOMOVI := Copy(TimetoStr(Time) ,1,5);
              //
              aProduto := edtCDPROD.Text;
              fQuant   := edtQTENTRADA.Value;
              iItem    := 1;

              if (dmDados.cdsConfigCFG_FLLOTE.AsString = 'N') Then
               Begin
                    aLote       := 'GERAL';
                    aDtVencLote := '31/12/2099';
               End     
               Else
               begin
                    aLote       := edtLOTE.Text;
                    aDtVencLote := edtDTVENC.Text;
               End;
              //
              try
                  //
                  uFuncoes.RefreshCDS(dmDados.cdsConfig);
                  //
                  dmDados.cdsConfig.Edit;
                  dmDados.cdsConfigCFG_SEQUENCIA.AsInteger := dmDados.cdsConfigCFG_SEQUENCIA.AsInteger + 1;
                  dmDados.cdsConfig.ApplyUpdates(0);
                  //
                  iSequencia  := dmDados.cdsConfigCFG_SEQUENCIA.AsInteger;
                  // Estoque
                  fQuantAnterior := 0;
                  fQuantAtual    := 0;
                  //
                  uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
                  //
                  fValorCusto := 0;
                  fValorVenda := 0;
                  fValorCompra := 0;
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
                           //
                           close;
                    End;  // with  dmEstoque.cdsEstoque
                    //
                    { function TdmEstoque.AdicionarEstoqueProduto(iCODLOJA: Integer; aTipo,
                           aPRODUTO, aUNIDADE, aTAMANHO: String; aDTENTRADA, aDTSAIDA,
                           aULTREAJUST: String; fQUANTENTRADA, fQUANTSAIDA, fCUSTOANTERIOR,
                           fCUSTOMEDIO, fMAIORCUSTO, fQUANTIDADE, fMINIMO: Double): Boolean;}
                    dmEstoque.AdicionarEstoqueProduto(iLoja, 'E', aProduto, aUnidade, aTamanho,
                           DatetoStr(M_DTMOVI), '', '', fQuant, 0, 0, 0, 0, fQuant, 0);
                    //  Historico
                    {function TdmEstoque.AdicionarHistoricoProduto(iSequencia, iLOJA, iITEM, iDOCUMENTO,
                           iMOTIVO, iVENDEDOR, iUSUARIO: Integer; aPRODUTO, aUNIDADE, aTAMANHO,
                           aHORA, aTIPO, aCODIGOBAIXA: String; aDATA: Tdatetime; fANTERIOR,
                           fMOVIMENTO, fATUAL, fVLCUSTO, fVLCOMPRA, fVLVENDA: Double): Boolean;}
                    dmEstoque.AdicionarHistoricoProduto(iSequencia, iLoja, iItem, 0,
                            1, 0, iUsuario, aProduto, aUnidade, aTamanho,
                            M_HOMOVI, 'E', aProduto, M_DTMOVI, fQuantAnterior, fQuant, fQuantAtual,
                                fValorCusto, fValorCompra, fValorVenda);
                    // Lote do produto            
                    dmEstoque.AtualizarLoteProduto(aProduto, aLote, 'E', aDtVencLote, fQuant);
                    //
                    Application.MessageBox('Registro atualizado com sucesso.','ATENÇÃO',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    //
                    LimparCampo;
                    edtCDPROD.Clear;
                    edtCDPROD.SetFocus;
              Except
                  raise Exception.Create('Erro ao tentar atualizar estoque.');
              End;
         End;
end;

procedure TFrmInvertario.BtCancelarClick(Sender: TObject);
begin
     LimparCampo;
     pnlDados.Enabled := false;
     edtCDPROD.Clear;
     edtCDPROD.SetFocus;
end;

procedure TFrmInvertario.edtCDPRODKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13]) then
        key:=#0;
     //
     If (Key = #13) and not uFuncoes.Empty(cmbNMLOJA.Text)
       and uFuncoes.Empty(edtCDPROD.Text) Then
     begin
          Key := #0;
          sbLocProdutoClick(Sender);
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(cmbNMLOJA.Text)
       and not uFuncoes.Empty(edtCDPROD.Text) Then
     begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TFrmInvertario.edtQTENTRADAKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #27) Then
     Begin
          key := #0;
          edtCDPROD.Clear;
          edtCDPROD.SetFocus;
     End;
end;

end.

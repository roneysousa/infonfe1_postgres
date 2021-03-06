unit uFrmFecharVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, Buttons, Grids,
  DBGrids, DB, FMTBcd, SqlExpr;

type
  TfrmFechamentoVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    edtCDCLIE: TEdit;
    spLocCliente: TSpeedButton;
    Label6: TLabel;
    edtNMCLIE: TEdit;
    Label8: TLabel;
    edtAcrescimo: TCurrencyEdit;
    Label4: TLabel;
    edtDESVAL: TCurrencyEdit;
    Label1: TLabel;
    edtDESPER: TCurrencyEdit;
    Label2: TLabel;
    edtVLRECE: TCurrencyEdit;
    Label3: TLabel;
    edtCDMODA: TEdit;
    GridModa: TDBGrid;
    btnAdicionar: TBitBtn;
    btnExcluir: TBitBtn;
    dsModalidades: TDataSource;
    Label7: TLabel;
    edtSubTotal: TCurrencyEdit;
    Label9: TLabel;
    edtDESVAL2: TCurrencyEdit;
    Label10: TLabel;
    edtAcrescimo2: TCurrencyEdit;
    Label11: TLabel;
    txtTOVEND: TCurrencyEdit;
    Label12: TLabel;
    edtVLRECEBIDO: TCurrencyEdit;
    Label13: TLabel;
    pnlTroco: TCurrencyEdit;
    lblTaxa: TLabel;
    pnlTOMERC: TPanel;
    Label14: TLabel;
    btConfirmar: TBitBtn;
    btCancelar: TBitBtn;
    edtNMMODA: TEdit;
    SQLQuery1: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure edtAcrescimoExit(Sender: TObject);
    procedure edtDESVALExit(Sender: TObject);
    procedure edtDESPERExit(Sender: TObject);
    procedure edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDESVALKeyPress(Sender: TObject; var Key: Char);
    procedure edtDESPERKeyPress(Sender: TObject; var Key: Char);
    procedure edtDESVALEnter(Sender: TObject);
    procedure edtDESPEREnter(Sender: TObject);
    procedure edtCDMODAKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDMODAExit(Sender: TObject);
    procedure edtVLRECEEnter(Sender: TObject);
    procedure edtCDMODAChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfirmarClick(Sender: TObject);
    procedure edtVLRECEExit(Sender: TObject);
    procedure edtVLRECEKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure dsModalidadesDataChange(Sender: TObject; Field: TField);
    procedure edtCDCLIEExit(Sender: TObject);
    procedure edtCDCLIEChange(Sender: TObject);
    procedure edtCDCLIEKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDMODAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVLRECEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAcrescimoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDESVALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDESPERKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCDCLIEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridModaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure CALCULAR;
    procedure Acrescimo;
    Function GetStateK (Key: integer): boolean;
    procedure AtualizarValorRecebido;
    procedure HabilitaDesabilitaControles(bValor : Boolean);
    procedure VerificarModalidadeDigitada;
    function VerificaModalidadeCliente() : Boolean;
  public
    { Public declarations }
  end;

var
  frmFechamentoVenda: TfrmFechamentoVenda;
  W_NRVEND, M_CAMINH, M_NMCLIE, M_NMVEND, aCliente, aFLTAXA : String;
  M_VLDIGI, M_TOENTR, M_TOVEND, M_VLLIMP : Real;
  M_CDVEND, M_CDLOJA, M_CDCLIE, M_CDCAIX : Integer;
  M_FLSUPE, M_FLPEDI : Boolean;
  M_VLREAL, M_VLPERC  : Double;
  M_FLIMPR, W_TOTAPC, iRetorno : Integer;
  W_NRCUPO, W_NRITEMMODA, W_CDULTIMAMODA : Integer;
  fValorTaxa : Double;
  W_FLCANCCUPOM, fecha, M_FLTOTALCUPOM : Boolean;
  iCupom : integer;

implementation

uses uFrmNEFMain, uFuncoes, uFrmPDV, uFiscal, uDMDados, udmEstoque, uFrmSupervisor,
  uFrmParcelas, uFrmLocalizarCliente;
  // uLocCliente, uFrmSupervisor, uBematech, uFrmParcelas, uFrmBuscaFormaPaga;

{$R *.dfm}

procedure TfrmFechamentoVenda.FormShow(Sender: TObject);
begin
     KeyPreview := False;
     //
     uFuncoes.RefreshCDS(DmDados.CdsConfig);
     //
     M_VLLIMP := 0;
     lblTaxa.Visible := False;
     //
     If (dmEstoque.cdsParcelasVenda.Active = False) Then
        dmEstoque.cdsParcelasVenda.Open;
     dmEstoque.cdsParcelasVenda.EmptyDataSet;
     //
     dmEstoque.cdsModalidades.close;
     dmEstoque.cdsModalidades.Open;
     dmEstoque.cdsModalidades.EmptyDataSet;
     dmEstoque.cdsModalidades.EnableControls;
     //
     If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'S')  Then
     begin
        { M_TOVEND := dmDados.cdsPreVendaPRV_VALOR.AsFloat;
         pnlTOMERC.Caption  := FormatFloat('###,##0.00', M_TOVEND);
         //
         IF (aFLTAXA = 'S') then
          begin
             If (fValorTaxa = 0) Then
             begin
                  fValorTaxa := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_TOVEND, Dm.CdsConfigCFG_TAXA_SERVICO.AsFloat),2);
                  M_TOVEND := M_TOVEND + fValorTaxa;
                  //
                  txtTOVEND.Value  := M_TOVEND;
                  lblTaxa.Visible := True;
                  lblTaxa.Caption := 'Taxa de Servi�o: ' + FormatFloat('##0.#0', Dm.CdsConfigCFG_TAXA_SERVICO.AsFloat) +' %';
             End
             Else
             begin
                  M_TOVEND := M_TOVEND + fValorTaxa;
                  txtTOVEND.Value := M_TOVEND;
                  lblTaxa.Visible := True;
                  lblTaxa.Caption := 'Taxa de Servi�o: R$ ' + FormatFloat('##0.#0', fValorTaxa);
             End;
          End
         Else
             txtTOVEND.Value := M_TOVEND; }
     End
     Else
     begin
         M_TOVEND := uFrmPDV.M_TOVEND;
         txtTOVEND.Value    := uFrmPDV.M_TOVEND;
         edtSubTotal.Value  := uFrmPDV.M_TOVEND;
         pnlTOMERC.Caption  := FormatFloat('###,##0.00', uFrmPDV.M_TOVEND);
     End;
     //
     If not uFuncoes.Empty(aCliente) Then
      begin
           edtCDCLIE.SetFocus;
           edtCDCLIE.Text := uFuncoes.StrZero(aCliente,7);
           Perform(WM_NEXTDLGCTL, 0, 0);
      End;
     //
     M_FLIMPR := dmDados.CdsConfigCFG_IMPRESSORA.AsInteger;
     // GridModa
     If (uFrmNEFMain.M_FLSUPE = 'S') Then
         edtDESVAL.SetFocus
     Else
         edtCDMODA.SetFocus;
     //
     W_NRITEMMODA := 0;
     W_CDULTIMAMODA := 1;
     btConfirmar.Enabled := False;
     btnExcluir.Enabled  := False;
     //
     M_FLTOTALCUPOM := false;
end;

procedure TfrmFechamentoVenda.btCancelarClick(Sender: TObject);
begin
  If Application.MessageBox('Deseja cancelar venda?',
     'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
   begin
      M_FLPEDI := False;
      fecha := True;
      W_FLCANCCUPOM := False;
      //
      iRetorno := uFiscal.FISCAL('CancelaCupom', M_IMPRES);
      //
      If (iRetorno = 1) Then
          W_FLCANCCUPOM := true;
      //
      Close;
   End;
end;

procedure TfrmFechamentoVenda.spLocClienteClick(Sender: TObject);
begin
     edtCDCLIE.SetFocus;
     //
     Application.CreateForm(TfrmLocalizarCliente, frmLocalizarCliente);
     try
             With frmLocalizarCliente do
               ShowModal;
     Finally
            If not (frmLocalizarCliente.cdsConsultar.IsEmpty) Then
             Begin
                  edtCDCLIE.Text := uFuncoes.StrZero(frmLocalizarCliente.cdsConsultar.FieldByName('CLI_CODIGO').AsString,7);
                  edtNMCLIE.Text := frmLocalizarCliente.cdsConsultar.FieldByName('CLI_RAZAO').AsString;
              End;
             // dbeNumero.SetFocus;
             //
             frmLocalizarCliente.Free;
     End;
     //
      {Application.CreateForm(TfrmLocCliente, frmLocCliente);
      try
          with frmLocCliente do
             If  ShowModal = mrOk Then
                If not (frmLocCliente.cdsConsultaCliente.isEmpty) Then
                   edtCDCLIE.Text := cdsConsultaClienteCLI_CODIGO.AsString;
      Finally
          If not uFuncoes.Empty(edtCDCLIE.Text) Then
              edtNMCLIE.SetFocus
          Else
              edtCDCLIE.SetFocus;
          frmLocCliente.Free;
      End;}
end;

procedure TfrmFechamentoVenda.edtAcrescimoExit(Sender: TObject);
begin
      If (edtAcrescimo.Value > M_TOVEND) Then
      begin
           Application.MessageBox(PChar('Valor de acr�scimo maior que o valor da venda!!!'),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtAcrescimo.Value := 0;
           If (edtAcrescimo.CanFocus) Then
               edtAcrescimo.SetFocus;
           Exit;
      End;
      //
      If (edtAcrescimo.Value > 0) Then
       begin
           edtDESVAL.Value := 0;
           edtDESPER.Value := 0;
       End;
      //
      CALCULAR;
      edtCDMODA.SetFocus;
end;

procedure TfrmFechamentoVenda.CALCULAR;
Var
    M_VLVEND : Real;
begin
   M_VLVEND := 0;
   //
   If (M_FLSUPE = True) Then
   Begin
     If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'N') Then
     begin
         M_VLLIMP := uFrmPDV.M_TOVEND;
         M_VLVEND := M_TOVEND;
     End
     Else
     begin
         {if (aFLTAXA = 'S') Then
          begin
            if (fValorTaxa = 0) Then
                //M_VLLIMP := dmDados.cdsPreVendaPRV_VALOR.AsFloat +  Dm.CdsConfigCFG_TAXA_SERVICO.AsFloat
                M_VLLIMP := dmDados.cdsPreVendaPRV_VALOR.AsFloat + uFuncoes.Arredondar(uFuncoes.Gerapercentual(dmDados.cdsPreVendaPRV_VALOR.AsFloat, Dm.CdsConfigCFG_TAXA_SERVICO.AsFloat),2)
            Else
                M_VLLIMP := dmDados.cdsPreVendaPRV_VALOR.AsFloat + fValorTaxa;
          End
         ELSE
              M_VLLIMP := dmDados.cdsPreVendaPRV_VALOR.AsFloat;
         //
         M_VLVEND := M_VLLIMP;}
     End;
     //
     If (edtDESVAL.Value > 0) Then
     Begin
          {M_VLPERC := (edtDESVAL.Value*100)/M_TOVEND;
          M_TOVEND := (M_TOVEND - edtDESVAL.Value);}
          M_VLPERC := (edtDESVAL.Value*100)/M_VLLIMP;
          M_VLLIMP := (M_VLLIMP - edtDESVAL.Value);
          //
          //txtTOVEND.Caption := FormatFloat('###,###,##0.00', M_TOVEND);
          edtDESPER.Value   := M_VLPERC;
          M_VLREAL := edtDESVAL.Value;
     End
     Else
     Begin
          //M_TOVEND := (M_TOVEND - uFuncoes.Gerapercentual(M_TOVEND, edtDESPER.Value));
          M_VLLIMP := (M_VLLIMP - uFuncoes.Gerapercentual(M_VLLIMP, edtDESPER.Value));
          //edtDESVAL.Value   := M_VLVEND - M_TOVEND;
          edtDESVAL.Value   := M_VLVEND - M_VLLIMP;
          //
          M_VLREAL := edtDESVAL.Value;
          M_VLPERC := edtDESPER.Value;
     End;
     //
     M_TOVEND := M_VLLIMP;
     //
     Acrescimo;
     //
     edtDESVAL2.Text    := edtDESVAL.Text;
     edtAcrescimo2.Text := edtAcrescimo.Text;
     //
     txtTOVEND.Value := M_TOVEND;
   End;
end;

procedure TfrmFechamentoVenda.Acrescimo;
begin
     If (edtAcrescimo.Value > 0) Then
        M_TOVEND := M_VLLIMP + edtAcrescimo.Value;
end;

procedure TfrmFechamentoVenda.edtDESVALExit(Sender: TObject);
begin
      If (edtDESVAL.Value > M_TOVEND) Then
      begin
           Application.MessageBox(PChar('Valor de desconto maior que o valor da venda!!!'),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDESVAL.Value := 0;
           If (edtDESVAL.CanFocus) Then
               edtDESVAL.SetFocus;
           Exit;
      End;
      //
      If (edtDESVAL.Value > 0) Then
          edtAcrescimo.Value := 0;
      //
      CALCULAR;
      edtCDMODA.SetFocus;
end;

procedure TfrmFechamentoVenda.edtDESPERExit(Sender: TObject);
begin
      If (edtDESPER.Value >= 100) Then
      begin
           Application.MessageBox(PChar('Percentual de desconto maior que o valor da venda!!!'),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDESPER.Value := 0;
           If (edtDESPER.CanFocus) Then
               edtDESPER.SetFocus;
           Exit;
      End;
      //
      If (edtDESPER.Value > 0) Then
          edtAcrescimo.Value := 0;
      //
      CALCULAR;
      edtCDMODA.SetFocus;
end;

procedure TfrmFechamentoVenda.edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;
     //
     If (Key = #13) Then
     Begin
          Key := #0;
          edtCDMODA.SetFocus;
     End;
end;

procedure TfrmFechamentoVenda.edtDESVALKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;
     //
     If (Key = #13) Then
     Begin
          Key := #0;
          edtCDMODA.SetFocus;
     End;
end;

procedure TfrmFechamentoVenda.edtDESPERKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;
     //
     If (Key = #13) Then
     Begin
          Key := #0;
          edtCDMODA.SetFocus;
     End;
end;

procedure TfrmFechamentoVenda.edtDESVALEnter(Sender: TObject);
begin
   If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'N') Then
        M_TOVEND := uFrmPDV.M_TOVEND + edtAcrescimo.Value
    Else
        //M_TOVEND := dmDados.cdsPreVendaPRV_VALOR.AsFloat + edtAcrescimo.Value;
    //
    edtDESPER.Value := 0;
    edtDESVAL.Value := 0;
    //
    if (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'N') Then
        txtTOVEND.Value  := M_TOVEND
    Else
        if (aFLTAXA = 'S') Then
         begin
            If (fValorTaxa = 0) Then
            begin
                fValorTaxa := uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_TOVEND, dmDados.CdsConfigCFG_TAXA_SERVICO.AsFloat),2);
                M_TOVEND := M_TOVEND + fValorTaxa;
                txtTOVEND.value  := M_TOVEND;
            End
            Else
            begin
                 M_TOVEND := M_TOVEND + fValorTaxa;
                 txtTOVEND.Value := M_TOVEND;
            End;
         End
        else
            txtTOVEND.Value := M_TOVEND;
    //
    If (dmDados.GetVerificaSuperUsuario(M_CDCAIX)) Then
      begin
               with TfrmSupervisor.create(self) do
                try
                  showmodal;
                finally
                  free;
                  //
                  If (M_FLSUPE = False) Then
                  Begin
                     GridModa.SelectedIndex := 1;
                  End;
                end;
      End
      Else
      Begin
              M_FLSUPE := True;
              edtDESVAL.SetFocus;
      End;
end;

procedure TfrmFechamentoVenda.edtDESPEREnter(Sender: TObject);
begin
     If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'S') Then
         //M_TOVEND := dmDados.cdsPreVendaPRV_VALOR.AsFloat + edtAcrescimo.Value
     Else
         M_TOVEND := uFrmPDV.M_TOVEND + edtAcrescimo.Value;
     //
     edtDESVAL.Value := 0;
     edtDESPER.Value := 0;
     If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'N') Then
         txtTOVEND.Value  := M_TOVEND
     Else
     Begin
          if (aFLTAXA = 'S') Then
              txtTOVEND.Value  := M_TOVEND + uFuncoes.Arredondar(uFuncoes.Gerapercentual(M_TOVEND, dmDados.CdsConfigCFG_TAXA_SERVICO.AsFloat),2)
          Else
              txtTOVEND.Value  := M_TOVEND;
     End;
     //
     If (dmDados.GetVerificaSuperUsuario(M_CDCAIX)) Then
      begin
           with TfrmSupervisor.create(self) do
                try
                  showmodal;
                finally
                  free;
                  //
                  If (M_FLSUPE = False) Then
                    GridModa.SetFocus;
                end;
      End
      Else
      begin
              M_FLSUPE := True;
              edtDESPER.SetFocus;
      End;
end;

procedure TfrmFechamentoVenda.edtCDMODAKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     //
     If (key = #13) and ufuncoes.Empty(edtCDMODA.Text) Then
     begin
         key := #0;
         //
         {Application.CreateForm(TfrmBuscaFormaPaga, frmBuscaFormaPaga);
         try
             frmBuscaFormaPaga.showmodal;
         finally
             If not (frmBuscaFormaPaga.cdsBusca.IsEmpty) Then
              begin
                 edtCDMODA.Text := frmBuscaFormaPaga.cdsBuscaMOD_CODIGO.AsString;
                 edtVLRECE.SetFocus;
              End
              Else
                 edtCDMODA.SetFocus;
             frmBuscaFormaPaga.free;
         end;  }
     End;
     //
     If (key = #13) and not uFuncoes.Empty(edtCDMODA.Text) Then
      begin
           Key := #0;
           edtVLRECE.SetFocus;
      End;
end;

procedure TfrmFechamentoVenda.edtCDMODAExit(Sender: TObject);
Var
   M_FLVENDAMODA : Boolean;
begin
      if not uFuncoes.Empty(edtCDMODA.Text) Then
        begin
             If not (dmDados.GetCodigoModalidade(StrtoInt(edtCDMODA.Text))) Then
               begin
                    Application.MessageBox('C�digo de modalidade n�o existe.','ATEN��O',
                         MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                    edtCDMODA.Clear;
                    edtNMMODA.Clear;
                    edtCDMODA.SetFocus;
                    Exit;
               End
               Else
               begin
                    If (dmDados.GetVerificaModalidadeCartao(W_CDULTIMAMODA)) Then
                        M_FLVENDAMODA := True
                    Else
                        M_FLVENDAMODA := False;
                    //
                    If (M_FLVENDAMODA) Then
                    begin
                        Application.MessageBox('Modalidade n�o � mais permitida nesta venda.','ATEN��O',
                            MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
                        edtCDMODA.Clear;
                        edtNMMODA.Clear;
                        edtCDMODA.SetFocus;
                        Exit;
                    End;
                    //
                    edtCDMODA.text := uFuncoes.StrZero(edtCDMODA.text, 2); 
                    edtNMMODA.Text := dmDados.GetNomeFormaPagamento(StrtoInt(edtCDMODA.Text));
                    edtVLRECE.SetFocus;
                    Exit;
               End;
        End;
end;

procedure TfrmFechamentoVenda.edtVLRECEEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDMODA.Text) Then
          edtCDMODA.SetFocus;
end;

procedure TfrmFechamentoVenda.edtCDMODAChange(Sender: TObject);
begin
    If uFuncoes.Empty(edtCDMODA.Text) Then
    begin
         edtNMMODA.Clear;
         edtVLRECE.Clear;
    End;
end;

function TfrmFechamentoVenda.GetStateK(Key: integer): boolean;
begin
     Result := Odd (GetKeyState (Key));
end;

procedure TfrmFechamentoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       If Not fecha Then
           Action := caNone
       Else
           Action := caFree;
end;

procedure TfrmFechamentoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
         //btCancelarClick(Sender);
      //
      If (btConfirmar.Enabled) and (key = VK_F2) Then
           btConfirmarClick(Sender);
      //
      If GetStateK (VK_LMENU) And (Key = VK_F4) Then
          fecha := False;
end;

procedure TfrmFechamentoVenda.btConfirmarClick(Sender: TObject);
Var
   W_CDCLIE, M_NMCLIE, M_NRMESA, M_MSCUPO : String;
   M_VLDINHEIRO, M_ACRDES, M_MDAPRA : Double;
   M_TPACDE : String;
   iTEF : integer;
   cIdentificacao: TDateTime;
   cSaltaLinha, cFormaPGTO, cFormaPGTOCartao, cValorPago : string;
   qraux : TSQLquery;
   texto, aCPFCGC, M_NMMODA : string;
   M_CDMODA : Integer;
   M_VLMODA : Double;
   cCupomNumero, M_HOMOVI : String;
   M_DTMOVI : TDatetime;
   M_TOVEND, M_VLENTR, M_VLDESC, M_VLACRE, M_VLDEVO, M_VLTROC : Double;
begin
     If (VerificaModalidadeCliente()) Then
      begin
           Application.MessageBox('Digite o c�digo do cliente.','ATEN��O',
             MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
           edtCDCLIE.SetFocus;
           Exit;
      End;
     //
     M_FLPEDI := False;
     uFuncoes.RefreshCDS(dmDados.CdsConfig);
     M_MSCUPO := dmDados.CdsConfig.FieldByName('CFG_MENSAGEM_CUPOM').AsString;
     If not uFuncoes.Empty(edtCDCLIE.Text) Then
         M_CDCLIE := StrtoInt(edtCDCLIE.Text)
     Else
         M_CDCLIE := 0;
     //
     btCancelar.Enabled := False;
     btConfirmar.Enabled   := False;
     //
     M_VLDINHEIRO := 0;
     M_TPACDE := 'D';
     If (edtAcrescimo.Value > 0) Then
      Begin
          M_TPACDE := 'A';
          M_ACRDES := edtAcrescimo.Value;
      End
      Else
           M_ACRDES := edtDESVAL.Value;
     //
     try
          Screen.Cursor := crHourGlass;
          //
          // Totaliza Cupom
          If (M_FLTOTALCUPOM = false) Then
              iRetorno := uFiscal.FISCAL('TotalCupom', M_IMPRES,
                                M_TPACDE,
                                '$',
                                FormatFloat('###,##0.#0', M_ACRDES))
          Else
          begin
              M_FLTOTALCUPOM := true;
              iRetorno := 1;
          End;
          //
           If (iRetorno = 1) Then
               begin
                    dmEstoque.cdsModalidades.DisableControls;
                    dmEstoque.cdsModalidades.First;
                    While not (dmEstoque.cdsModalidades.Eof) do
                    begin
                        If (dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsCurrency > 0)
                           and (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString <> 'C') Then
                           begin
                                M_CDMODA := dmEstoque.cdsModalidades.FieldByName('CDS_CODIGO').AsInteger;
                                M_NMMODA := dmEstoque.cdsModalidades.FieldByName('CDS_NOME').AsString;
                                M_VLMODA := dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsCurrency;
                                //
                                If (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString = 'D') then
                                  M_VLENTR := M_VLENTR + M_VLMODA;
                                //  
                                If (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString <> 'D')
                                   and (dmEstoque.cdsModalidades.FieldByName('CDS_NRPARCLA').AsInteger > 0) Then
                                  begin
                                     M_MDAPRA := M_MDAPRA + dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsFloat;
                                     W_TOTAPC := dmEstoque.cdsModalidades.FieldByName('CDS_NRPARCLA').AsInteger;
                                     //
                                     dmEstoque.criar_parcelas(M_VLMODA, W_TOTAPC);
                                     Application.CreateForm(TfrmParcelas, frmParcelas);
                                     with frmParcelas do
                                        try
                                             ufrmParcelas.M_CDMODA := dmEstoque.cdsModalidades.FieldByName('CDS_CODIGO').AsInteger;
                                             ufrmParcelas.M_TOMODA := dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsFloat;
                                             ufrmParcelas.M_TPMODA := dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString;
                                             lbl_NMMODA.Caption    := dmEstoque.cdsModalidades.FieldByName('CDS_NOME').AsString;
                                             lbl_VLTOTAL.Caption   := FormatFloat('###,###,##0.#0', dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsFloat);
                                             If (ufrmParcelas.M_TPMODA = 'P') AND (M_CDCLIE > 0 ) Then
                                             begin
                                                  edtCDCLIE.Text := uFuncoes.StrZero(InttoStr(M_CDCLIE),7);
                                                  edtNMCLIE.Text := dmDados.GetNomeClienteForn(M_CDCLIE);
                                                  //uFuncoes.NOME_CLIENTE(M_CDCLIE);
                                             End;
                                             showmodal;
                                        finally
                                             If not Empty(edtCDCLIE.Text) Then
                                                M_CDCLIE := StrtoInt(edtCDCLIE.Text);
                                             free;
                                        end;
                                  End;
                                //  Formas de Pagamento
                                If (M_IMPRES > 0) Then
                                begin
                                    iRetorno := uFiscal.FISCAL('Pagamento', M_IMPRES,
                                           M_NMMODA, FormatFloat('###,##0.#0',M_VLMODA));
                                    //
                                    If (iRetorno <> 1) Then
                                        Raise Exception.Create('Erro ao tentar efetua forma pagamento.');
                                    //
                                End;
                           End;
                        // Venda no cart�o
                        If (dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsCurrency > 0)
                           and (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString = 'C') Then
                           begin
                                M_NMMODA := dmEstoque.cdsModalidades.FieldByName('CDS_NOME').AsString;
                                M_VLMODA := dmEstoque.cdsModalidades.FieldByName('CDS_VLRECEBIDO').AsFloat;
                                //
                                cFormaPGTOCartao := M_NMMODA;
                                cValorPago := FormatFloat('###,##0.#0', M_VLMODA);
                                SetLength( cCupomNumero, 6 );
                                iRetorno := uFiscal.FISCAL('NumeroCupom', M_IMPRES);
                                //iRetorno := uBematech.Bematech_FI_NumeroCupom( cCupomNumero );
                                cIdentificacao := frmNFEMain.GetHoraAtual();
                                //
                                iTEF := uFuncoes.RealizaTransacao( cIdentificacao, cCupomNumero,
                                           FormatFloat( cValorPago, 0 ) );
                                //
                                if ( iTEF = 1 ) then
                                   begin
                                        iRetorno := uFiscal.FISCAL('Pagamento', M_IMPRES,
                                                   cFormaPGTOCartao, FormatFloat('###,##0.#0',M_VLMODA));
                                   end;
                                   //
                                   if ( iTEF = -1 ) then
                                    begin
                                         Application.MessageBox( 'Gerencial Padr�o n�o est� ativo !',
                                                    'Aten��o', MB_IconError + MB_OK );
                                         dmEstoque.cdsModalidades.EnableControls;
                                    End;
                                   // Se a transa��o n�o for aprovada, deve-se permitir a
                                   // escolha de outra forma de pagamento. Neste caso, est�
                                   // sendo utilizado "Dinheiro" como exemplo.
                                   if ( iTEF = -2 ) or ( iTEF = 0 ) then
                                      begin
                                          dmEstoque.cdsModalidades.EnableControls;
                                          Exit;
                                      End;
                           End;
                         //
                        dmEstoque.cdsModalidades.Next;
                   End;
                   //
                   dmEstoque.cdsModalidades.EnableControls;
               End;
           //
           If (iRetorno <> 1) Then
            begin
                 Application.MessageBox( 'Erro ao tenta fechar cupom!',
                                         'Aten��o', MB_ICONEXCLAMATION + MB_OK );
                 Exit;
            End;
          // Fechamento de cupom
          If (M_CDCLIE > 0) Then
            begin
                 uFuncoes.FilterCDS(dmDados.cdsCliente, fsInteger, InttoStr(M_CDCLIE));
                 //
                 If not (dmDados.cdsCliente.IsEmpty) Then
                   begin
                      With dmDados.cdsCliente do
                       begin
                         M_MSCUPO := M_MSCUPO +  #13 + #10 +
                                   'Nome: ' + Copy(FieldByName('CLI_RAZAO').AsString, 1, 40)+  #13 + #10;
                         if (FieldByName('CLI_TIPOPESSOA').AsString = 'F') Then
                             aCPFCGC := uFuncoes.FormataCPF(FieldByName('CLI_CGC').AsString)
                         Else
                             aCPFCGC := uFuncoes.FormataCNPJ(FieldByName('CLI_CGC').AsString);
                         //
                         M_MSCUPO := M_MSCUPO +
                                   'CPF/CNPJ: '+aCPFCGC +  #13 + #10 +
                                   'Endereco: '+ Copy(FieldByName('CLI_ENDERECO').AsString, 1, 30);
                       End;
                   End;
            End;
          //
          iRetorno := uFiscal.FISCAL('FecharCupom',M_IMPRES, M_MSCUPO);
          //
          If (iRetorno <> 1) Then
           begin
                Application.MessageBox( 'Erro ao tenta fechar cupom!',
                                         'Aten��o', MB_ICONEXCLAMATION + MB_OK );
                Exit;
           End;
          //
          If (M_IMPRES > 0) Then
              uFiscal.VerificaRetornoFuncaoImpressora(iRetorno, M_IMPRES);
          //
          If (iTEF = 1) Then
             Begin
                  // Imprimir cupom TEF
                  If (uFuncoes.ImprimeTransacao(M_IMPRES, cFormaPGTOCartao, cValorPago,
                        cCupomNumero, cIdentificacao )) Then
                      uFuncoes.ConfirmaTransacao
                  Else
                      uFuncoes.NaoConfirmaTransacao;
             End;
          //
          W_CDCLIE := edtCDCLIE.text;
          M_NMCLIE := edtNMCLIE.Text;
          //
          If uFuncoes.Empty(edtCDCLIE.text) Then
           begin
               W_CDCLIE := '0';
               M_NMCLIE := 'VENDA AO CONSUMIDOR';
           End;
          //
          {If uFuncoes.Empty(M_NMCLIE) Then
               M_NMCLIE := 'VENDA AO CONSUMIDOR';}
          //
          uFuncoes.RefreshCDS(dmDados.CdsConfig);
          If (dmDados.CdsConfigCFG_FLVENDEDOR_ITEM_VENDA.AsString = 'S') Then
              //M_NRMESA := dmDados.cdsPreVendaPRV_NRMESA.AsString
          Else
              M_NRMESA := '001';
          //
          M_DTMOVI := Date();
          M_HOMOVI := Copy(TimetoStr(Time),1,5);
          M_TOVEND := txtTOVEND.Value;
          //M_VLENTR := edtSubTotal.Value;
          M_VLDESC := edtDESVAL2.Value;
          M_VLACRE := edtAcrescimo2.Value;
          M_VLDEVO := 0;
          M_VLTROC := pnlTroco.Value;
          //
          {Function Venda(iCUPOM, iLOJA, iCLIENTE, iVENDEDOR, iCaixa : Integer; aDATAVENDA: TDateTime; aHORAVENDA, aSituacao,
          aTIPO_FRETE: String; fVALOR, fENTRADA, fDESCONTO, fACRESCIMO, fDEVOLUSAO,
          fTROCO, fPERC_FRETE, fTAXA_SERVICO: Double; aENDERECO, aNUMERO,
          aCOMPLEMENTO, aBAIRRO, aCidade, aReferencia, aTelefone,
          aNomeCliente: String; iTABELA, iIDTRANSPORTADORA, iTABELA_PLANO,
          iMODALIDADE_PEDIDO: Integer; aOBSERVACAO, aOBS1, aOBS2,
          aNRMESA: String; aCDSItens, aCDSModalidades : TClientDataSet) : integer;  }
          If (uFuncoes.Venda(iCupom, M_CDLOJA, StrtoInt(W_CDCLIE), M_CDVEND, M_CDCAIX, M_DTMOVI, M_HOMOVI, '', '',
                  M_TOVEND, M_VLENTR, M_VLDESC, M_VLACRE, M_VLDEVO, M_VLTROC, 0, 0,
                  '', '', '', '', '', '', '', '', 0,0,0,0,'', '', '','', dmEstoque.cdsItensVendas, dmEstoque.cdsModalidades) > 0) Then
            begin
                 Application.MessageBox(PChar('Venda realizada com sucesso.'),
                          'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 M_FLPEDI := true;
                 uFrmPDV.M_FLVEND := False;
                 fecha := True;
                 Close;
            End
            Else
                If (uDMDados.M_NRMENS <> 1) Then
                     Application.MessageBox(PChar('Erro no fechamento de venda !'),
                       'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);

          {if not (uFuncoes.VENDA(M_TOVEND, edtDESVAL.Value, edtAcrescimo.value, M_VLDINHEIRO, 1, W_NRCUPO, M_CDLOJA, M_CDCAIX,
                M_IMPRES, StrtoInt(W_CDCLIE), 0 , M_CDVEND, Date() , M_NMCLIE, TimetoStr(time()), '1', '',0,0, 0, 0, '', '', '', M_NRMESA, aFLTAXA, fValorTaxa)) Then
            begin
                 If (uDM.M_NRMENS <> 1) Then
                    Application.MessageBox(PChar('Erro no fechamento de venda !'),
                          'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            End
            Else
            begin
                 M_FLPEDI := true;
                 uFrmVendas.M_FLVEND := False;
                 fecha := True;
                 Close;
            End; }
     Finally
          Screen.Cursor := crDefault;
          btCancelar.Enabled   := True;
          btConfirmar.Enabled  := True;
     End;
     //
     Application.ProcessMessages;
end;

procedure TfrmFechamentoVenda.edtVLRECEExit(Sender: TObject);
begin
     if not uFuncoes.Empty(edtCDMODA.Text)
          and (edtVLRECE.Value > 0) Then
      begin
           W_NRITEMMODA := W_NRITEMMODA + 1;
           dmEstoque.AddModalidadeVenda(W_NRITEMMODA, StrtoInt(edtCDMODA.Text), edtVLRECE.Value);
           W_CDULTIMAMODA := StrtoInt(edtCDMODA.Text);
           HabilitaDesabilitaControles(false);
           AtualizarValorRecebido;
           //
           Exit;
      End;
end;

procedure TfrmFechamentoVenda.edtVLRECEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (Key = #13) and (edtVLRECE.Value > 0) Then
      begin
           Key := #0;
           edtCDMODA.SetFocus;
           Exit;
      End;
end;

procedure TfrmFechamentoVenda.AtualizarValorRecebido;
Var
   M_VALOR : Double;
begin
     M_VALOR := 0;
     M_VLTROC := 0;
     //
     If not(dmEstoque.cdsModalidades.IsEmpty) Then
     begin
       With dmEstoque.cdsModalidades do
       begin
         DisableControls;
         First;
         While not (Eof) do
         begin
             M_VALOR := M_VALOR + FieldByName('CDS_VLRECEBIDO').AsFloat;
             //
             Next;
         End;
         First;
         If (M_VALOR > M_TOVEND) Then
             If (FieldByName('CDS_CODIGO').AsInteger = 1)
                AND (FieldByName('CDS_CODIGO').AsFloat > 0) Then
                   M_VLTROC := M_VALOR - M_TOVEND;
         EnableControls;
       End;
     End;
     //
     edtVLRECEBIDO.Text := FormatFloat('###,##0.#0', M_VALOR);
     pnlTroco.Text      := FormatFloat('###,##0.#0', M_VLTROC);
     //
     If (M_VALOR >= M_TOVEND) Then
      begin
           btConfirmar.Enabled := True;
           btConfirmar.setfocus;
      End
      Else
      begin
           btConfirmar.Enabled := false;
           edtCDMODA.Clear;
           edtCDMODA.SetFocus;
      End;
end;

procedure TfrmFechamentoVenda.btnExcluirClick(Sender: TObject);
begin
   If not (dmEstoque.cdsModalidades.IsEmpty) and (dmEstoque.cdsModalidades.RecordCount > 0 ) Then
   begin
      dmEstoque.ExcluirModalidadeVenda(dmEstoque.cdsModalidadesCDS_ITEM.AsInteger);
      AtualizarValorRecebido;
      //
      VerificarModalidadeDigitada;
   End;
end;

procedure TfrmFechamentoVenda.HabilitaDesabilitaControles(bValor: Boolean);
begin
    edtAcrescimo.Enabled := bValor;
    edtDESVAL.Enabled := bValor;
    edtDESPER.Enabled := bValor;
end;

procedure TfrmFechamentoVenda.dsModalidadesDataChange(Sender: TObject;
  Field: TField);
begin
    btnExcluir.Enabled := not (dsModalidades.DataSet.IsEmpty)
                    and (dsModalidades.DataSet.RecordCount > 0)

end;

procedure TfrmFechamentoVenda.VerificarModalidadeDigitada;
begin
     With dmEstoque.cdsModalidades do
      begin
           DisableControls;
           First;
           While not (EOf) do
            begin
                 If NOT (dmEstoque.GetVerificaModalidadeCartao(FieldByname('CDS_CODIGO').AsInteger)) Then
                      W_CDULTIMAMODA := FieldByname('CDS_CODIGO').AsInteger;
                 //
                 Next;
            End;
            First;
            EnableControls;
      End;
end;

procedure TfrmFechamentoVenda.edtCDCLIEExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDCLIE.Text) Then
        if not (dmDados.ProcurarValor(edtCDCLIE.Text, 'CLI_CODIGO','CLIENTES')) Then
         begin
              Application.MessageBox(PChar('C�digo de cliente n�o cadastrado.'),
                          'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              edtNMCLIE.Clear;
              edtCDCLIE.Clear;
              edtCDCLIE.SetFocus;
              Exit;
         End
         Else
         begin
              edtCDCLIE.text := uFuncoes.StrZero(edtCDCLIE.text, 7);
              edtNMCLIE.Text := dmDados.GetNomeClienteForn(StrtoInt(edtCDCLIE.Text));
         End;
end;

function TfrmFechamentoVenda.VerificaModalidadeCliente: Boolean;
begin
     Result := false;
     dmEstoque.cdsModalidades.DisableControls;
     dmEstoque.cdsModalidades.First;
     While not (dmEstoque.cdsModalidades.Eof) do
        begin
             If (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString = 'H')
                 or (dmEstoque.cdsModalidades.FieldByName('CDS_FLFIXA').AsString = 'P') Then
                If uFuncoes.Empty(edtCDCLIE.Text) Then
                 begin
                     Result := True;
                     Break;
                 End;
              //
             dmEstoque.cdsModalidades.Next;
        End;
     dmEstoque.cdsModalidades.First;
     dmEstoque.cdsModalidades.EnableControls;
end;

procedure TfrmFechamentoVenda.edtCDCLIEChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDCLIE.Text) Then
         edtNMCLIE.Clear;
end;

procedure TfrmFechamentoVenda.edtCDCLIEKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not( key in['0'..'9',#8, #13] ) Then
        key := #0;
     //
     if (key = #13) and ufuncoes.Empty(edtCDCLIE.text) Then
      begin
           key := #0;
           spLocClienteClick(Sender);
      End;
end;

procedure TfrmFechamentoVenda.edtCDMODAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.edtVLRECEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.edtAcrescimoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.edtDESVALKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.edtDESPERKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.edtCDCLIEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

procedure TfrmFechamentoVenda.GridModaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      If (key = VK_ESCAPE) Then
         btCancelar.SetFocus;
end;

end.

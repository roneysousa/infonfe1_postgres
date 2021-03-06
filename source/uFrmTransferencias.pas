unit uFrmTransferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Mask, ToolEdit, CurrEdit, Buttons, Grids, DBGrids;

type
  TFrmTransferencia = class(TForm)
    pnlSuperior: TPanel;
    Panel2: TPanel;
    pnlDados: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    cmbOrigem: TComboBox;
    Label3: TLabel;
    cmbDestino: TComboBox;
    Label1: TLabel;
    cmbEntregador: TComboBox;
    Label5: TLabel;
    edtCDPROD: TEdit;
    spLocCliente: TSpeedButton;
    Label6: TLabel;
    edtDESCRICAO: TEdit;
    Label7: TLabel;
    edtCDUNID: TEdit;
    Label8: TLabel;
    edtQuantidade: TCurrencyEdit;
    grdConsultar: TDBGrid;
    dsProdutos: TDataSource;
    BtAdicionar: TBitBtn;
    BtExcluir: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    Label4: TLabel;
    lblCodigo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cmbOrigemExit(Sender: TObject);
    procedure cmbOrigemEnter(Sender: TObject);
    procedure spLocClienteClick(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDPRODEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LojasDestino(aLoja : String);
    Procedure tratabotoes;
    Procedure LimparTela;
    procedure FecharTabelaItens;
  public
    { Public declarations }
  end;

var
  FrmTransferencia: TFrmTransferencia;

implementation

uses uDMDados, uFuncoes, udmEstoque, Math, uFrmNEFMain;

{$R *.dfm}

procedure TFrmTransferencia.FormShow(Sender: TObject);
begin
      FecharTabelaItens;
      //
      dmDados.CarregarLojas(cmbOrigem);
      dmDados.CarregarLojas(cmbDestino);
      //
      dmDados.CarregarListaFuncionarios(cmbEntregador);
end;

procedure TFrmTransferencia.LojasDestino(aLoja: String);
Var
    qryBanco : TZQuery;
    texto : String;
begin
     texto  := 'Select "EMI_CODIGO", "EMI_FANTASIA", "EMI_RAZAOSOCIAL" from "EMITENTES" order by "EMI_FANTASIA" ';
     cmbDestino.Items.Clear;
     //
     qryBanco := TZQuery.Create(nil);
     with qryBanco do
      try
           Connection := dmDados.ZConexao;
           Close;
           SQL.Add(texto);
           Open;
           //
           If not (IsEmpty) Then
            begin
                 First;
                 While not (Eof) do
                  begin
                       if (FieldByName('EMI_FANTASIA').AsString <> aLoja) Then
                           cmbDestino.Items.add(FieldByName('EMI_FANTASIA').AsString);
                       //
                       Next;
                  End;
            End;
      Finally
         Free;
      End;
end;

procedure TFrmTransferencia.cmbOrigemExit(Sender: TObject);
begin
     if not uFuncoes.Empty(cmbOrigem.Text) Then
         LojasDestino(cmbOrigem.Text);
end;

procedure TFrmTransferencia.cmbOrigemEnter(Sender: TObject);
begin
    cmbDestino.Items.Clear;
end;

procedure TFrmTransferencia.spLocClienteClick(Sender: TObject);
begin
     {    edtCDPROD.SetFocus;
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
         End;}
end;

procedure TFrmTransferencia.edtQuantidadeExit(Sender: TObject);
Var
   aProduto, aDescricao, aTamanho, aUnidade : String;
   fVenda, fCusto, fCompra, fQuant : Double;
   iLoja : Integer;
begin
     If not uFuncoes.Empty(edtCDPROD.Text)
       And not uFuncoes.Empty(edtQuantidade.Text)
       and (edtQuantidade.Value > 0) Then
      begin
          // Verificar quantidade estoque
          iLoja    := dmDados.GetCodigoLoja(cmbOrigem.Text);
          aProduto := ufuncoes.StrZero(edtCDPROD.Text, 13);
          fQuant   := edtQuantidade.Value;
          //
          If (dmEstoque.GetProdutoEstoque(iLoja, aProduto)) Then
          begin
               if not (dmEstoque.cdsEstoque.IsEmpty) Then
                 begin
                      if (dmEstoque.cdsEstoqueEST_QUANTIDADE.AsFloat < fQuant) Then
                       begin
                            Application.MessageBox('Quantidade no estoque inferior ao digitado.','ATEN��O',
                               MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                            edtQuantidade.Clear;
                            edtQuantidade.SetFocus;
                            Exit;
                       End;
                 End;
          End;
          //
          uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, edtCDPROD.Text);
          //
          if not (dmDados.cdsProduto.IsEmpty) then
            begin
                 fVenda  := dmDados.cdsProdutoPRO_VLVENDA.AsFloat;
                 fCusto  := dmDados.cdsProdutoPRO_VLCUSTO.AsFloat;
                 fCompra := dmDados.cdsProdutoPRO_VLCOMPRA.AsFloat;
                 aDescricao := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                 aUnidade := dmDados.cdsProdutoUNI_CODIGO.AsString;
                 aTamanho := 'UN';
            End;
          //
          {function TdmEstoque.AdicionarItemTransf(aCodigo, aDescricao, aTamanho,
           aUnidade: String; fQuantidade, fVenda, fCusto, fCompra: Double): Boolean; }
          dmEstoque.AdicionarItemTransf(edtCDPROD.Text, aDescricao, aTamanho, aUnidade,
              edtQuantidade.Value, fVenda, fCusto, fCompra);
           //
           //BtGravar.Enabled := True;
           edtCDPROD.Clear;
           edtCDPROD.SetFocus;
      End;
end;

procedure TFrmTransferencia.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFrmTransferencia.BtExcluirClick(Sender: TObject);
begin
  if not (dsProdutos.DataSet.IsEmpty)
   and (dsProdutos.DataSet.RecordCount > 0) then
   Begin
     Try
         If Application.MessageBox('Deseja excluir este registro?', 'Exclus�o de registro',
                      MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dsProdutos.DataSet.Delete;
     Except
          on Exc:Exception do
          begin
               Application.MessageBox(PChar('Erro ao tentar excluir registro!!!'+#13
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          End;
    End;
   End;
end;

procedure TFrmTransferencia.BtAdicionarClick(Sender: TObject);
Var
   W_NRTRAN : INTEGER;
begin
    tratabotoes;
    //
    uFuncoes.RefreshCDS(dmDados.cdsConfig);
    //
    dmEstoque.AbrirTabelaTransf();
    //
    W_NRTRAN := dmDados.CdsConfigCFG_TRANSFERENCIA.AsInteger + 1;
    lblCodigo.Caption := uFuncoes.StrZero(InttoStr(W_NRTRAN),7);
    //
    cmbOrigem.SetFocus;
end;

procedure TFrmTransferencia.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtExcluir.Enabled   := not BtExcluir.Enabled;
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   pnlDados.Enabled    := not pnlDados.Enabled;
   pnlSuperior.Enabled    := not pnlSuperior.Enabled;
end;

procedure TFrmTransferencia.BtGravarClick(Sender: TObject);
Var
    iNumero, iSequencia, iLojaOrigem, iLojaDestino, iUsuario, iFuncionario : Integer;
    M_DTMOVI : TDate;
    M_HOMOVI : String;
begin
       If Application.MessageBox('Confirma transfer�ncia?',
         'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         Begin
              iLojaOrigem  := dmDados.GetCodigoLoja(cmbOrigem.Text);
              iLojaDestino := dmDados.GetCodigoLoja(cmbDestino.Text);
              iUsuario     := StrtoInt(uFrmNEFMain.M_CDUSUA);
              iFuncionario := dmDados.GetCodigoFuncionario(cmbEntregador.Text);
              M_DTMOVI := Date();
              M_HOMOVI := Copy(TimetoStr(time),1,5);
              //
              try
                    uFuncoes.RefreshCDS(dmDados.cdsConfig);
                    //
                    dmDados.cdsConfig.Edit;
                    dmDados.cdsConfigCFG_TRANSFERENCIA.AsInteger :=
                      dmDados.cdsConfigCFG_TRANSFERENCIA.AsInteger + 1;
                    dmDados.cdsConfigCFG_SEQUENCIA.AsInteger :=
                      dmDados.cdsConfigCFG_SEQUENCIA.AsInteger + 1;
                    dmDados.cdsConfig.ApplyUpdates(0);
                    //
                    iNumero    := dmDados.cdsConfigCFG_TRANSFERENCIA.AsInteger;
                    iSequencia := dmDados.cdsConfigCFG_SEQUENCIA.AsInteger;
                    //
                    if (dmEstoque.AddTransferencia(iNumero, iSequencia, iLojaOrigem, iLojaDestino,  1, iUsuario,
                                  M_DTMOVI,M_HOMOVI, 'F', dmEstoque.cdsItensTransf) = iNumero) Then
                    //
                    Application.MessageBox(PChar('Transfer�ncia realizada com sucesso.'),
                        'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    //
                    LimparTela;
              Except
                    raise Exception.Create('Erro ao tentar realiza transfer�ncia.');
              End;
              tratabotoes;
         End;
end;

procedure TFrmTransferencia.BtCancelarClick(Sender: TObject);
begin
      tratabotoes;
      Close;
end;

procedure TFrmTransferencia.edtCDPRODChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDPROD.Text) Then
     Begin
          edtDESCRICAO.Clear;
          edtCDUNID.Clear;
          edtQuantidade.Clear;
     End;
end;

procedure TFrmTransferencia.edtCDPRODExit(Sender: TObject);
Var
  iLoja : Integer;
  aProduto : String;
begin
     If  not uFuncoes.Empty(cmbOrigem.Text)
        and not uFuncoes.Empty(edtCDPROD.Text) Then
     begin
           iLoja    := dmDados.GetCodigoLoja(cmbOrigem.Text);
           aProduto := uFuncoes.StrZero(edtCDPROD.Text,13);
           //
           uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aProduto);
           if not (dmDados.cdsProduto.IsEmpty) Then
            begin
                 //
                 if (dmDados.cdsProdutoPRO_FLPROD.AsString = 'S') Then
                  Begin
                      Application.MessageBox('Este produto � um servi�o.','ATEN��O',
                         MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                      edtCDPROD.Clear;
                      edtCDPROD.SetFocus;
                      Exit;
                  End;
                  //
                 edtDESCRICAO.Text := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                 edtCDUNID.Text    := dmDados.cdsProdutoUNI_CODIGO.AsString;
            End
            Else
            begin
                 Application.MessageBox('C�digo de produto n�o cadastrado.','ATEN��O',
                         MB_OK+MB_ICONWARNING+MB_APPLMODAL);
                 edtCDPROD.Clear;
                 edtCDPROD.SetFocus;
                 Exit;
            End;
           //
           If (dmEstoque.GetProdutoEstoque(iLoja, aProduto)) Then
            begin
                 if (dmEstoque.cdsEstoque.IsEmpty) Then
                 begin
                     Application.MessageBox(PChar('Produto n�o cadastrado no '+#13+'estoque da loja '+cmbOrigem.Text+'!!!')
                       ,'ATEN��O',
                        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtDESCRICAO.Clear;
                     edtCDUNID.Clear;
                     edtCDPROD.Clear;
                     edtCDPROD.SetFocus;
                     Exit;
                 End
                 Else
                      edtCDPROD.Text    := aProduto;
            End;
     End
     Else
          edtCDPROD.Clear;
end;

procedure TFrmTransferencia.edtCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) and NOT uFuncoes.Empty(edtCDPROD.Text) Then
     Begin
          Key := #0;
          edtQuantidade.SetFocus;
     End;
     //
      {If (key =#13) and (uFuncoes.Empty(edtCDPROD.Text)) Then
      begin
           key:=#0;
           //
           try
               Application.CreateForm(TfrmLocalizaProduto, frmLocalizaProduto);
               uFrmProcurarProduto.M_NRFORM := 2;
               frmLocalizaProduto.ShowModal;
           Finally
               If not uFuncoes.Empty(uFrmProcurarProduto.M_CDPROD) Then
                   edtCDPROD.Text := uFrmProcurarProduto.M_CDPROD;
               //
               frmLocalizaProduto.Free;
               If not uFuncoes.Empty(edtCDPROD.Text) Then
                   edtQuantidade.SetFocus
               Else
                   edtCDPROD.SetFocus;
           End;
      End; }
end;

procedure TFrmTransferencia.edtQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF (key = #13) and (edtQuantidade.Value > 0) Then
     Begin
          Key := #0;
          edtCDPROD.SetFocus;
     End;
end;

procedure TFrmTransferencia.edtCDPRODEnter(Sender: TObject);
begin
     if uFuncoes.Empty(cmbOrigem.Text) Then
      begin
          cmbOrigem.SetFocus;
          Exit;
      End;
end;

procedure TFrmTransferencia.LimparTela;
begin
     cmbOrigem.ItemIndex := -1;
     cmbDestino.ItemIndex := -1;
     cmbEntregador.ItemIndex := -1;
     //
     dmEstoque.cdsItensTransf.EmptyDataSet;
     dmEstoque.cdsItensTransf.Close;
     lblCodigo.Caption := '';
end;

procedure TFrmTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FecharTabelaItens;
end;

procedure TFrmTransferencia.FecharTabelaItens;
begin
      If (dmEstoque.cdsItensTransf.Active) Then
        begin
            dmEstoque.cdsItensTransf.EmptyDataSet;
            dmEstoque.cdsItensTransf.Close;
        End;
end;

end.

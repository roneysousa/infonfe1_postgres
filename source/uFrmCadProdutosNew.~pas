unit uFrmCadProdutosNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TfrmCadProdutosNew = class(TfrmCadastro)
    Panel1: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    rbtTipo: TDBRadioGroup;
    Label3: TLabel;
    dbeBARRAS: TDBEdit;
    Label35: TLabel;
    dbeReferencia: TDBEdit;
    Label4: TLabel;
    dbeNMDESC: TDBEdit;
    Label5: TLabel;
    cmbAplicacao: TDBLookupComboBox;
    Label40: TLabel;
    cmbLocalizacao: TDBLookupComboBox;
    Label6: TLabel;
    dbeCDFORN: TDBEdit;
    spLocFornecedor: TSpeedButton;
    lbl_NMFORC: TEdit;
    Label47: TLabel;
    dbeCDFabricante: TDBEdit;
    spLocFabricante: TSpeedButton;
    txtFabicante: TEdit;
    Label7: TLabel;
    cmbUnidade: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label45: TLabel;
    DBEdit4: TDBEdit;
    Label46: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    cmbSecao: TDBLookupComboBox;
    Label10: TLabel;
    cdmSubSecao: TDBLookupComboBox;
    Label22: TLabel;
    dbeValorVenda: TDBEdit;
    Label11: TLabel;
    dbeValorRevenda: TDBEdit;
    cdsConsultarPRO_CODIGO: TStringField;
    cdsConsultarPRO_BARRAS: TStringField;
    cdsConsultarPRO_DESCRICAO: TStringField;
    cdsConsultarPRO_VLVENDA: TFloatField;
    cdsConsultarPRO_IPI: TFloatField;
    cdsConsultarPRO_REFERENCIA: TStringField;
    cdsConsultarPRO_LOCALIZACAO: TStringField;
    Label12: TLabel;
    dbeVLCOMP: TDBEdit;
    Label18: TLabel;
    dbeVLTAXA: TDBEdit;
    Label17: TLabel;
    dbeVLICMS: TDBEdit;
    Label28: TLabel;
    Label23: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label16: TLabel;
    Label19: TLabel;
    dbeVALIPI: TDBEdit;
    Label24: TLabel;
    Label20: TLabel;
    dbeVLFRET: TDBEdit;
    Label27: TLabel;
    dbeAntICMS: TDBEdit;
    Label36: TLabel;
    Label13: TLabel;
    Label37: TLabel;
    dbeVLCUST: TDBEdit;
    Label29: TLabel;
    dbeLucroBruto: TDBEdit;
    Label32: TLabel;
    dbeLucroLiquido: TDBEdit;
    Label30: TLabel;
    Label33: TLabel;
    dbeVLFRAC: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    dbeVLVEND: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    Label25: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    dbeLIMDES: TDBEdit;
    Label26: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    dbeLucroBrutoRevenda: TDBEdit;
    Label39: TLabel;
    dbeLucroLiquidoRevenda: TDBEdit;
    Label41: TLabel;
    DBEdit2: TDBEdit;
    Label42: TLabel;
    DBEdit3: TDBEdit;
    Label43: TLabel;
    cmbClassiFiscal: TDBLookupComboBox;
    Label48: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label34: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label49: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label50: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    lblCodigo: TLabel;
    procedure dbeBARRASExit(Sender: TObject);
    procedure dbeReferenciaExit(Sender: TObject);
    procedure dbeNMDESCExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure cdmSubSecaoEnter(Sender: TObject);
    procedure dbeValorVendaExit(Sender: TObject);
    procedure dbeVLCOMPExit(Sender: TObject);
    procedure dbeLucroBrutoExit(Sender: TObject);
    procedure dbeLucroLiquidoExit(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure spLocFornecedorClick(Sender: TObject);
    procedure spLocFabricanteClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure dbeCDFORNExit(Sender: TObject);
    procedure dbeCDFabricanteExit(Sender: TObject);
    procedure dbeCDFORNKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCDFabricanteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure buscar(aCodigo : String);
    procedure REGISTRO;
    procedure GetFornecedores();
    Procedure FormatCodigoProduto();
  public
    { Public declarations }
  end;

var
  frmCadProdutosNew: TfrmCadProdutosNew;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes, uFrmLocFornecedorNovo;

{$R *.dfm}

procedure TfrmCadProdutosNew.dbeBARRASExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert])
     and not uFuncoes.Empty(dmDados.cdsProdutoPRO_BARRAS.AsString) Then
     begin
          dmDados.cdsProdutoPRO_BARRAS.AsString :=
                uFuncoes.StrZero(dmDados.cdsProdutoPRO_BARRAS.AsString,13);
          //
          If dmDados.ProcurarValor(dbeBARRAS.Text,'PRO_BARRAS','PRODUTOS') Then
           begin
                Application.MessageBox('Código de barras já cadastrado!!!','ATENÇÃO',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeBARRAS.SetFocus;
               dbeBARRAS.Clear;
               Exit;
           End;
     End;
     //
     If (dsCadastro.DataSet.State in [dsEdit])
     and not uFuncoes.Empty(dmDados.cdsProdutoPRO_BARRAS.AsString) Then
     begin
          //If uFuncoes.StrIsFloat(dm.cdsProdutosPRO_BARRAS.AsString) Then
             dmDados.cdsProdutoPRO_BARRAS.AsString :=
                   uFuncoes.StrZero(dmDados.cdsProdutoPRO_BARRAS.AsString,13);
     End;
end;

procedure TfrmCadProdutosNew.dbeReferenciaExit(Sender: TObject);
begin
  inherited;
     if (dsCadastro.DataSet.State in [dsInsert]) Then
      begin
           If (uFuncoes.GetReferencia(dbeReferencia.Text) ) Then
            begin
                 Application.MessageBox('Referência já cadastrada!!!','ATENÇÃO',
                      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeReferencia.SetFocus;
               dbeReferencia.Clear;
               Exit;
            End;
      End;
end;

procedure TfrmCadProdutosNew.dbeNMDESCExit(Sender: TObject);
begin
  inherited;
  If (dsCadastro.DataSet.State in [dsInsert])
      and not uFuncoes.Empty(dbeNMDESC.Text) Then
   begin
         If dmDados.ProcurarValor(dbeNMDESC.Text, 'PRO_DESCRICAO', 'PRODUTOS') Then
          begin
               Application.MessageBox('Descrição de produto já cadastrado!!!','ATENÇÃO',
                    MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMDESC.SetFocus;
               dbeNMDESC.Clear;
               Exit;
          End;
   End;
end;

procedure TfrmCadProdutosNew.FormShow(Sender: TObject);
begin
  inherited;
  uFuncoes.RefreshCDS(dmDados.CdsConfig);
  uFuncoes.RefreshCDS(dmDados.cdsListaTributacao);
  uFuncoes.RefreshCDS(DmDados.cdsListaUnidades);
  uFuncoes.RefreshCDS(DmDados.cdsListaAplicacao);
  uFuncoes.RefreshCDS(DmDados.cdsListaLocalizacao);
  uFuncoes.RefreshCDS(DmDados.cdsListaClassFiscal);
  uFuncoes.RefreshCDS(DmDados.cdsListaUndArm);
  uFuncoes.RefreshCDS(DmDados.cdsListaSecoes);
  uFuncoes.RefreshCDS(DmDados.cdsListaOrigem);
  uFuncoes.RefreshCDS(dmDados.cdsSituacaoTribICMS);
  uFuncoes.RefreshCDS(dmDados.cdsListaCST_IPI);
  uFuncoes.RefreshCDS(dmDados.cdsListaCST_PIS);
  //
  PageControl2.ActivePageIndex := 0;
  //
  If (dmDados.CdsConfigCFG_PRODUTO.AsInteger = 0) Then
      uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, '1')
  Else
      REGISTRO;
  //
  If (dmDados.cdsProduto.IsEmpty) Then
     BtAdicionarClick(Sender);
  //
  //CONTROLE_LOTE;
  If (dsCadastro.DataSet.State in [dsBrowse]) Then
  begin
      {If not (dmDados.cdsProdutoFOR_CODIGO.IsNull) or (dmDados.cdsProdutoFOR_CODIGO.AsInteger > 0) Then
         lbl_NMFORC.Text := dmDados.GetNomeFornecedor(dmDados.cdsProdutoFOR_CODIGO.AsInteger);
      If not (dmDados.cdsProdutoPRO_CODFABRICANTE.IsNull) or (dmDados.cdsProdutoPRO_CODFABRICANTE.AsInteger > 0) Then
             txtFabicante.Text := dmDados.GetNomeFornecedor(dmDados.cdsProdutoPRO_CODFABRICANTE.AsInteger);}
  End;
  //cdsConsProduto.Open;
end;

procedure TfrmCadProdutosNew.buscar(aCodigo: String);
begin
    uFuncoes.FilterCDS(dmDados.cdsProduto, fsString, aCodigo);
    //
    GetFornecedores;
    //
    PageControl1.ActivePageIndex := 0;
    PageControl2.ActivePageIndex := 0;
    //
    FormatCodigoProduto;
end;

procedure TfrmCadProdutosNew.REGISTRO;
Var
   aCodigo : String;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_PRODUTO.AsInteger > 0) Then
      begin
         aCodigo := uFuncoes.StrZero(dmDados.cdsConfigCFG_PRODUTO.AsString,13);
         uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, aCodigo);
         GetFornecedores;
      End
     Else
         uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, '-1');

     //
     PageControl1.ActivePageIndex := 0;
     FormatCodigoProduto;
end;

procedure TfrmCadProdutosNew.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    dmDados.cdsProduto.Close;
end;

procedure TfrmCadProdutosNew.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  uFuncoes.RefreshCDS(dmDados.cdsConfig);
  //
  lbl_NMFORC.Clear;
  txtFabicante.Clear;
  //
  //DBRadioGroup1.ItemIndex := 0;
  WIth dmDados.cdsProduto do
  begin
       Append;
       FieldByName('PRO_CODIGO').AsString       := uFuncoes.StrZero(FloattoStr(dmDados.CdsConfigCFG_PRODUTO.AsInteger + 1),13);
       FieldByName('PRO_COMISSIONADO').AsString := 'N';
       FieldByName('SEN_CODIGO').AsInteger := StrtoInt(uFrmNEFMain.M_CDUSUA);
       FieldByName('PRO_FLPROD').AsString  := 'P';
       FieldByName('PRO_BLOQUEIO_LIM_DESCONTO').AsString := 'N';
       //lbl_CODIGO.Caption := Copy(dm.cdsProdutosPRO_CODIGO.Value,7,7);
       //
       FormatCodigoProduto;
       dbeBARRAS.SetFocus;
  End;
end;

procedure TfrmCadProdutosNew.BtEditarClick(Sender: TObject);
begin
  inherited;
  if not (dsCadastro.DataSet.IsEmpty)
    and (dsCadastro.DataSet.RecordCount > 0) then
    Begin
       dsCadastro.DataSet.Edit;
       {CONTROLE_LOTE;
       lbl_CODIGO.Caption := Copy(dm.cdsProdutosPRO_CODIGO.Value,7,7);}
       {If not (dmDados.cdsProdutoFOR_CODIGO.IsNull) or (dmDados.cdsProdutoFOR_CODIGO.AsInteger > 0) Then
            validar_fornecedor;}
       If (PageControl2.ActivePageIndex = 0) Then
          dbeBARRAS.SetFocus;
       {Else
          dbeVLCOMP.SetFocus;}
    End;
end;

procedure TfrmCadProdutosNew.cdmSubSecaoEnter(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     And (dmDados.cdsProdutoSEC_CODIGO.AsInteger > 0) Then
        uFuncoes.FilterCDS(dmDados.cdsListaSubSecoes, fsInteger, dmDados.cdsProdutoSEC_CODIGO.AsString);
end;

procedure TfrmCadProdutosNew.dbeValorVendaExit(Sender: TObject);
begin
    // Valor de venda
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsString)  Then
    begin
         dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency :=
            uFuncoes.VALOR_VENDA(dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_IPI').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_FRETE').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_REDUCAOICMS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_TAXAS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsInteger);
         //
         dmDados.cdsProduto.FieldByName('PRO_VLFRACAO').AsCurrency :=
           dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
    End;
  inherited;
end;

procedure TfrmCadProdutosNew.dbeVLCOMPExit(Sender: TObject);
begin
    If (dmDados.cdsProduto.State in [dsInsert, dsEdit] ) Then
    begin
         dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency :=
            uFuncoes.CALCULA_PRECOVENDA(dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_IPI').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_FRETE').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_REDUCAOICMS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_TAXAS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                DmDados.cdsProduto.FieldByname('PRO_ANTECIPACAO_ICMS').AsFloat,
                dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsInteger);
         //
         dmDados.cdsProduto.FieldByName('PRO_VLFRACAO').AsCurrency :=
           dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
         //CALCULO_LUCROS;
    End;
  inherited;
end;

procedure TfrmCadProdutosNew.dbeLucroBrutoExit(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit] ) Then
    begin
         dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency :=
           uFuncoes.CALCULA_LUCROBRUTO(dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_IPI').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_FRETE').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_REDUCAOICMS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_TAXAS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsInteger);
         //
         dmDados.cdsProduto.FieldByName('PRO_VLFRACAO').AsCurrency :=
           dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
    End;
end;

procedure TfrmCadProdutosNew.dbeLucroLiquidoExit(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit] ) Then
    begin
         //
         dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency :=
            uFuncoes.CALCULA_LUCROLIQUIDO(
                dmDados.cdsProduto.FieldByName('PRO_VLCOMPRA').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_IPI').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_FRETE').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_REDUCAOICMS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_TAXAS').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROBRUTO').AsCurrency,
                dmDados.cdsProduto.FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                dmDados.cdsProduto.FieldByName('TRI_CODIGO').AsInteger);
         //
         dmDados.cdsProduto.FieldByName('PRO_VLFRACAO').AsCurrency :=
           dmDados.cdsProduto.FieldByName('PRO_VLVENDA').AsCurrency;
    End;
end;

procedure TfrmCadProdutosNew.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
     If Application.MessageBox('Deseja excluir este produto?', 'Exclusão de registro',
        MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
     Begin
         dmDados.cdsProduto.Delete;
         dmDados.cdsProduto.ApplyUpdates(0);
         //
         REGISTRO;
     end
  else
      Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmCadProdutosNew.BtGravarClick(Sender: TObject);
Var
   M_HOMOVI : String;
begin
  If uFuncoes.Empty(dbeNMDESC.Text) Then
  Begin
       Application.MessageBox('Digite a descrição do produto!!!','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       PageControl2.ActivePageIndex := 0;
       dbeNMDESC.SetFocus;
       Exit;
  End;
  //
  if (rbtTipo.ItemIndex = -1) Then
  Begin
       Application.MessageBox('Selecione o tipo de produto!!!','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       PageControl2.ActivePageIndex := 0;
       rbtTipo.SetFocus;
       Exit;
  End;
  //
  If (dmDados.cdsProdutoPRO_VLCOMPRA.AsFloat <= 0)
   or uFuncoes.Empty(dmDados.cdsProdutoPRO_VLCOMPRA.AsString) Then
   begin
       Application.MessageBox('Valor de compra inválido','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       PageControl2.ActivePageIndex := 1;
       dbeVLCOMP.SetFocus;
       Exit;
   End;
   //
  If (dmDados.cdsProdutoPRO_VLVENDA.AsFloat <= 0)
     or uFuncoes.Empty(dmDados.cdsProdutoPRO_VLVENDA.AsString) Then
   begin
       Application.MessageBox('Valor de Venda inválido','ATENÇÃO',
             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       PageControl1.ActivePageIndex := 1;
       dbeVLVEND.SetFocus;
       Exit;
   End;
  //
  Try
     //
     If (dsCadastro.DataSet.State in [dsinsert, dsEdit]) Then
       begin
            M_HOMOVI := Copy(TimetoStr(time),1,5);
            //
            if dsCadastro.DataSet.State in [dsinsert] then
            begin
              uFuncoes.RefreshCDS(dmDados.cdsConfig);
              dmDados.CdsConfig.Edit;
              dmDados.CdsConfigCFG_PRODUTO.Value := dmDados.CdsConfigCFG_PRODUTO.Value+1;
              dmDados.cdsProdutoPRO_CODIGO.Value := uFuncoes.StrZero(dmDados.CdsConfigCFG_PRODUTO.AsString,13);
              dmDados.cdsProdutoPRO_DTCADASTRO.AsDateTime := Date();
              dmDados.CdsConfig.ApplyUpdates(0);
              //
              DmDados.cdsprodutoPRO_HOCADA .AsString   := M_HOMOVI;
              dmDados.cdsProdutoPRO_USUARIO_CAD.AsInteger := StrtoInt(uFrmNEFMain.M_CDUSUA);
            end;
            //
            if dsCadastro.DataSet.State in [dsEdit] then
            begin
                 dmDados.cdsProdutoPRO_DTALTERACAO.AsDateTime := Date();
                 dmDados.cdsProdutoPRO_HOALTE.AsString        := M_HOMOVI;
                 dmDados.cdsProdutoPRO_USUARIO_ALT.AsInteger  := StrtoInt(uFrmNEFMain.M_CDUSUA);
            End;
            //
            {If (cmbControle.Text = 'SIM') Then
               dm.cdsProdutos.FieldByName('PRO_CONTROLELOTE').AsString := 'S'
            Else
               dm.cdsProdutos.FieldByName('PRO_CONTROLELOTE').AsString := 'N';}
            //
            dmDados.cdsProduto.Post;
            dmDados.cdsProduto.ApplyUpdates(0);
            //
            //lbl_CODIGO.Caption := Copy(dm.cdsProdutosPRO_CODIGO.Value,7,7);
            //
           End;
  Except
    on Exc:Exception do
       begin
           Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           BtCancelarClick(Sender);
       End;
  End;
  //
  inherited;
end;

procedure TfrmCadProdutosNew.edtConsultarChange(Sender: TObject);
begin
  If not uFuncoes.Empty(edtConsultar.Text) Then
   begin
         with cdsConsultar do
         begin
              Close;
              CommandText := 'Select "PRO_CODIGO", "PRO_BARRAS", "PRO_DESCRICAO", "PRO_VLVENDA", "PRO_IPI", "PRO_REFERENCIA", "PRO_LOCALIZACAO" from "PRODUTOS" ';
              case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' where "PRO_CODIGO" like ' + QuotedStr(uFuncoes.StrZero(edtConsultar.Text,13)+ '%');
                1: CommandText := CommandText + ' where UPPER("PRO_DESCRICAO") like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
                2: CommandText := CommandText + ' where UPPER("PRO_REFERENCIA") like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
                3: CommandText := CommandText + ' where UPPER("PRO_LOCALIZACAO") like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
              end;
              CommandText := CommandText + 'order by "PRO_DESCRICAO"';
              Open;
              //
              {if (IsEmpty) and (rgConsultar.ItemIndex = 0) then
              begin
                  Close;
                  CommandText := 'Select PRO_CODIGO, PRO_BARRAS, PRO_DESCRICAO from PRODUTOS';
                    case rgConsultar.ItemIndex of
                        0: CommandText := CommandText + ' where PRO_BARRAS like ' + QuotedStr(uFuncoes.StrZero(edtConsultar.Text,13)+ '%');
                    End;
                 CommandText := CommandText + 'order by PRO_DESCRICAO';
                 Open;
                 //
              end; }
         end;  // fim-with
   End;  //fim-do-se
  inherited;
end;

procedure TfrmCadProdutosNew.btnConsultarClick(Sender: TObject);
begin
  inherited;
    If not (cdsConsultar.IsEmpty) Then
    begin
         buscar(cdsConsultarPRO_CODIGO.AsString);
         PageControl2.ActivePageIndex := 0;
    End;
end;

procedure TfrmCadProdutosNew.rgConsultarClick(Sender: TObject);
begin
 // inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código:';
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Descrição do Produto:';
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'Referência:';
      edtConsultar.Clear;
    end;
    3:
    begin
      lblConsultar.Caption := 'Localização:';
      edtConsultar.Clear;
    end;

  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

procedure TfrmCadProdutosNew.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
  If (key = #37) Then
    key :=#0;
  //
  if (Key =#13) and not uFuncoes.Empty(edtConsultar.Text)then
  begin
      key :=#0;
      Perform(Wm_NextDlgCtl,0,0);
  end;
  //
  if rgConsultar.ItemIndex = 0 then
  begin
    if not( key in['0'..'9', #8] ) then
    begin
      beep;
      key:=#0;
    end;
  end;
end;

procedure TfrmCadProdutosNew.spLocFornecedorClick(Sender: TObject);
begin
  inherited;
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
         dbeCDFORN.SetFocus;
         //
         Application.CreateForm(TfrmLocFornecedorNovo, frmLocFornecedorNovo);
         try
             With frmLocFornecedorNovo do
                 ShowModal;
         Finally
             If not (frmLocFornecedorNovo.cdsConsultar.IsEmpty) Then
              begin
                  dbeCDFORN.Text := frmLocFornecedorNovo.cdsConsultarCLI_CODIGO.AsString;
                  dbeCDFabricante.SetFocus;
              End
              Else
                  dbeCDFORN.SetFocus;
             //
             frmLocFornecedorNovo.Free;
         End;
      End;
end;

procedure TfrmCadProdutosNew.spLocFabricanteClick(Sender: TObject);
begin
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
         dbeCDFabricante.SetFocus;
         //
         Application.CreateForm(TfrmLocFornecedorNovo, frmLocFornecedorNovo);
         try
             With frmLocFornecedorNovo do
                 ShowModal;
         Finally
             If not (frmLocFornecedorNovo.cdsConsultar.IsEmpty) Then
              begin
                  dbeCDFabricante.Text := frmLocFornecedorNovo.cdsConsultarCLI_CODIGO.AsString;
                  cmbUnidade.SetFocus;
              End
              Else
                  dbeCDFabricante.SetFocus;
             //
             frmLocFornecedorNovo.Free;
         End;
      End;
  inherited;
end;

procedure TfrmCadProdutosNew.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   spLocFornecedor.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
   spLocFabricante.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmCadProdutosNew.dbeCDFORNExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeCDFORN.Text) Then
      begin
          If not (dmDados.cdsProdutoFOR_CODIGO.IsNull) or (dmDados.cdsProdutoFOR_CODIGO.AsInteger > 0) Then
             //if not dmDados.ProcurarValor(dbeCDFORN.Text, 'CLI_CODIGO', 'CLIENTES') Then
             If not dmDados.ValidarCodigoFornecedor(StrtoInt(dbeCDFORN.Text)) Then
              begin
                   Application.MessageBox('Código de fornecedor não cadastro!!!','ATENÇÃO',
                      MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   lbl_NMFORC.Clear;
                   dbeCDFORN.Clear;
                   dbeCDFORN.SetFocus;
                   Exit;
              End
              Else
                   lbl_NMFORC.Text := dmDados.GetNomeFornecedor(StrtoInt(dbeCDFORN.Text));
           //
           {If (dmDados.cdsProduto.State in [dsInsert, dsEdit])
            and not uFuncoes.Empty(dbeCDFORN.Text) Then
              dmDados.cdsProdutoPRO_IPI.AsFloat :=
                  uFuncoes.GetIpiFornecedor(Dm.cdsProdutosFOR_CODIGO.AsInteger);}
      End;
end;

procedure TfrmCadProdutosNew.dbeCDFabricanteExit(Sender: TObject);
begin
  inherited;
  If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and not uFuncoes.Empty(dbeCDFabricante.Text) Then
      begin
          If not (dmDados.cdsProdutoPRO_CODFABRICANTE.IsNull) or (dmDados.cdsProdutoPRO_CODFABRICANTE.AsInteger > 0) Then
           begin
                //if not dmDados.ProcurarValor(dbeCDFabricante.Text,'CLI_CODIGO', 'CLIENTES') Then
                If not dmDados.ValidarCodigoFornecedor(StrtoInt(dbeCDFORN.Text)) Then
                  begin
                       Application.MessageBox('Código de fabicante não cadastro.','ATENÇÃO',
                          MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       txtFabicante.Clear;
                       dbeCDFabricante.SetFocus;
                       dbeCDFabricante.Clear;
                       Exit;
                  End
                  Else
                     txtFabicante.Text := dmDados.GetNomeFornecedor(StrtoInt(dbeCDFabricante.Text));
           End;
      End;
end;

procedure TfrmCadProdutosNew.dbeCDFORNKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
   begin
       If (Key = #13)
         and uFuncoes.Empty(dbeCDFORN.Text) Then
       Begin
            Key := #0;
            spLocFornecedorClick(Sender);
       End;
   End;
end;

procedure TfrmCadProdutosNew.dbeCDFabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
   begin
       If (Key = #13)
         and uFuncoes.Empty(dbeCDFabricante.Text) Then
       Begin
            Key := #0;
            spLocFabricanteClick(Sender);
       End;
   End;
end;

procedure TfrmCadProdutosNew.GetFornecedores;
begin
  If not (dmDados.cdsProduto.IsEmpty) Then
  begin
       If not (dmDados.cdsProdutoFOR_CODIGO.IsNull) or (dmDados.cdsProdutoFOR_CODIGO.AsInteger > 0) Then
          lbl_NMFORC.Text := dmDados.GetNomeClienteForn(dmDados.cdsProdutoFOR_CODIGO.AsInteger)
       Else
          lbl_NMFORC.clear;
       If not (dmDados.cdsProdutoPRO_CODFABRICANTE.IsNull) or (dmDados.cdsProdutoPRO_CODFABRICANTE.AsInteger > 0) Then
          txtFabicante.Text := dmDados.GetNomeClienteForn(dmDados.cdsProdutoPRO_CODFABRICANTE.AsInteger)
       Else
          txtFabicante.clear;
  End;
end;

procedure TfrmCadProdutosNew.FormatCodigoProduto;
Var
  aCodigo : String;
begin
     aCodigo := Copy(dmDados.cdsProdutoPRO_CODIGO.AsString, 6,8);
     lblCodigo.Caption := aCodigo;
end;

End.


unit uFrmReajuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, BmsXPProgressBar, Mask, ToolEdit, CurrEdit,
  ExtCtrls, DBClient, Provider, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids;

type
  TFrmReajuste = class(TForm)
    pnlTopo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label23: TLabel;
    edtCDPROD: TEdit;
    cmbSecao: TComboBox;
    edtBARRAS: TEdit;
    edtPERC: TCurrencyEdit;
    cmbSubSecao: TComboBox;
    cmbFabricante: TComboBox;
    pnlProgressao: TPanel;
    lbl_QTREGI: TLabel;
    lblPercentual: TLabel;
    BmsXPProgressBar1: TBmsXPProgressBar;
    pnlInferior: TPanel;
    btConfirma: TBitBtn;
    BtSair: TBitBtn;
    ZQryProdutos: TZQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    ZQryProdutosPRO_CODIGO: TStringField;
    ZQryProdutosPRO_BARRAS: TStringField;
    ZQryProdutosPRO_VLCOMPRA: TFloatField;
    ZQryProdutosPRO_VLVENDA: TFloatField;
    ZQryProdutosPRO_LUCROBRUTO: TFloatField;
    ZQryProdutosPRO_LUCROLIQUIDO: TFloatField;
    ZQryProdutosPRO_DTALTERACAO: TDateField;
    ZQryProdutosPRO_HOREAJUTE: TStringField;
    ZQryProdutosPRO_USUARIO_REAJUSTE: TIntegerField;
    ZQryProdutosPRO_VALOR_ANTERIOR: TFloatField;
    ZQryProdutosSEC_CODIGO: TIntegerField;
    ZQryProdutosSUB_CODIGO: TIntegerField;
    ZQryProdutosFOR_CODIGO: TIntegerField;
    ZQryProdutosPRO_TAXAS: TFloatField;
    ZQryProdutosPRO_IPI: TFloatField;
    ZQryProdutosPRO_FRETE: TFloatField;
    ZQryProdutosTRI_CODIGO: TIntegerField;
    ZQryProdutosPRO_REDUCAOICMS: TFloatField;
    cdsProdutosPRO_CODIGO: TStringField;
    cdsProdutosPRO_BARRAS: TStringField;
    cdsProdutosPRO_VLCOMPRA: TFloatField;
    cdsProdutosPRO_VLVENDA: TFloatField;
    cdsProdutosPRO_LUCROBRUTO: TFloatField;
    cdsProdutosPRO_LUCROLIQUIDO: TFloatField;
    cdsProdutosPRO_DTALTERACAO: TDateField;
    cdsProdutosPRO_HOREAJUTE: TStringField;
    cdsProdutosPRO_USUARIO_REAJUSTE: TIntegerField;
    cdsProdutosPRO_VALOR_ANTERIOR: TFloatField;
    cdsProdutosSEC_CODIGO: TIntegerField;
    cdsProdutosSUB_CODIGO: TIntegerField;
    cdsProdutosFOR_CODIGO: TIntegerField;
    cdsProdutosPRO_TAXAS: TFloatField;
    cdsProdutosPRO_IPI: TFloatField;
    cdsProdutosPRO_FRETE: TFloatField;
    cdsProdutosTRI_CODIGO: TIntegerField;
    cdsProdutosPRO_REDUCAOICMS: TFloatField;
    dsDados: TDataSource;
    procedure BtSairClick(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbSecaoExit(Sender: TObject);
    procedure cmbSecaoEnter(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtBARRASKeyPress(Sender: TObject; var Key: Char);
    procedure dspProdutosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure HABILITAR_BOTAO;
    //
    function CALCULA_LUCROLIQUIDO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : Real;
       W_CDTRIB : Integer) : Real;
    function CALCULA_LUCROBRUTO(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQUIDO : Real;
       W_CDTRIB : Integer) : Real;
    function VALOR_VENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU : Real;
       W_CDTRIB : Integer) : Real;
  public
    { Public declarations }
  end;

var
  FrmReajuste: TFrmReajuste;

implementation

uses uFuncoes, uDMDados, uFrmNEFMain;

{$R *.dfm}

procedure TFrmReajuste.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmReajuste.edtCDPRODExit(Sender: TObject);
begin
     If not uFuncoes.Empty (edtCDPROD.Text ) Then
        edtCDPROD.Text := uFuncoes.StrZero(edtCDPROD.Text,13);
end;

procedure TFrmReajuste.HABILITAR_BOTAO;
begin
     If not uFuncoes.Empty(edtPERC.Text) and (edtPERC.Value > 0) Then
        If  not uFuncoes.Empty(edtCDPROD.Text)
            or not uFuncoes.Empty(cmbFabricante.Text)
            or not uFuncoes.Empty(cmbSecao.Text)
            or not uFuncoes.Empty(cmbSubSecao.Text)
            or not uFuncoes.Empty(edtBARRAS.Text)  Then
              btConfirma.Enabled := True
        Else
              btConfirma.Enabled := False;
end;

procedure TFrmReajuste.FormShow(Sender: TObject);
begin
     dmDados.CarregarListaFornecedores(cmbFabricante);
     dmDados.CarregarListaSecoes(cmbSecao);
end;

procedure TFrmReajuste.cmbSecaoExit(Sender: TObject);
Var
   iSecao : Integer;
begin
      if not uFuncoes.Empty(cmbSecao.Text) Then
       Begin
            iSecao := dmDados.GetCodigoSecao(cmbSecao.Text);
            if (iSecao > 0) Then
               dmDados.CarregarListaSubsecoes(iSecao, cmbSubSecao);
       End;
end;

procedure TFrmReajuste.cmbSecaoEnter(Sender: TObject);
begin
     cmbSubSecao.Items.Clear;
end;

procedure TFrmReajuste.edtCDPRODKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TFrmReajuste.edtBARRASKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TFrmReajuste.dspProdutosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
      TableName := 'PRODUTOS';
end;

procedure TFrmReajuste.btConfirmaClick(Sender: TObject);
Var
    LINHA, M_HOMOVI : String;
    Cont, Total : Integer;
    M_VLANTE , VALOR : Double;
    M_DTMOVI : TDate;
    iCodFornecedor, iCodSecao, iCodSubSecao : Integer;
    aProduto : String;
begin
     If (edtPERC.Value <= 0) Then
      begin
           Application.MessageBox('Digite o percentual de reajuste!!!','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtPERC.SetFocus;
           Exit;
      End;
      //
      Try
          //
          Screen.Cursor := crHourGlass;
          pnlProgressao.Visible  := True;
          BmsXPProgressBar1.Visible := True;
          lblPercentual.Visible     := True;
          lbl_QTREGI.Visible     := True;
          //
          M_DTMOVI := Date();
          M_HOMOVI := Copy(TimetoStr(Time),1,5);
          M_VLANTE := 0;
          if not uFuncoes.Empty(edtCDPROD.Text) Then
              aProduto := uFuncoes.StrZero(edtCDPROD.Text,13)
          Else
              aProduto := ' ';
          // Fornecedor
          if not uFuncoes.Empty(cmbFabricante.Text) Then
              iCodFornecedor := dmDados.GetCodigoFornecedor(cmbFabricante.Text)
          Else
              iCodFornecedor := 0;
          // Se��o
          if not uFuncoes.Empty(cmbSecao.Text) then
              iCodSecao := dmDados.GetCodigoSecao(cmbSecao.Text)
          Else
              iCodSecao := 0;
          // Sub-Sec�o
          if not uFuncoes.Empty(cmbSecao.Text) and not uFuncoes.Empty(cmbSubSecao.Text) then
           begin
                iCodSecao := dmDados.GetCodigoSecao(cmbSecao.Text);
                iCodSubSecao := dmDados.GetCodigoSubSecao(cmbSubSecao.Text, iCodSecao);
           End
           Else
                iCodSubSecao := 0;
          //
          try
              LINHA := 'Select "PRO_CODIGO", "PRO_BARRAS", "PRO_VLCOMPRA", "PRO_VLVENDA", "PRO_LUCROBRUTO", "PRO_LUCROLIQUIDO", "PRO_DTALTERACAO", "PRO_HOREAJUTE", ' +
                       '"PRO_USUARIO_REAJUSTE", "PRO_VALOR_ANTERIOR", "SEC_CODIGO", "SUB_CODIGO", "FOR_CODIGO", "PRO_TAXAS", "PRO_IPI", "PRO_FRETE", "TRI_CODIGO", "PRO_REDUCAOICMS" from "PRODUTOS" ';
              //
              With cdsProdutos do
               begin
                    Close;
                    // Codigo produto
                    if not uFuncoes.Empty(aProduto) and uFuncoes.Empty(cmbFabricante.Text) and uFuncoes.Empty(cmbSecao.Text)  Then
                        LINHA := LINHA + ' Where ("PRO_CODIGO" = '+aProduto+')'
                    Else
                     if not uFuncoes.Empty(aProduto) Then
                        LINHA := LINHA + ' and ("PRO_CODIGO" = '+aProduto+')';
                    // Fornecedor
                    if (iCodFornecedor > 0) and uFuncoes.Empty(aProduto) and uFuncoes.Empty(cmbSecao.Text) Then
                        LINHA := LINHA + ' Where ("FOR_CODIGO" = '+IntToStr(iCodFornecedor)+')'
                    Else
                      If not uFuncoes.Empty(cmbFabricante.Text) Then
                         LINHA := LINHA + ' and ("FOR_CODIGO" = '+IntToStr(iCodFornecedor)+')';
                    // Se��o
                    if (iCodSecao > 0) and uFuncoes.Empty(aProduto) and uFuncoes.Empty(cmbFabricante.Text) Then
                        LINHA := LINHA + ' Where ("SEC_CODIGO" = '+IntToStr(iCodSecao)+')'
                    Else
                      if not uFuncoes.Empty(cmbSecao.Text) Then
                          LINHA := LINHA + ' and ("SEC_CODIGO" = '+IntToStr(iCodSecao)+')';
                    // SubSe��o    
                    if (iCodSubSecao > 0) and not uFuncoes.Empty(cmbSecao.Text) Then
                       LINHA := LINHA + ' and ("SUB_CODIGO" = '+IntToStr(iCodSubSecao)+')';
                    //
                    CommandText := LINHA;
                    Open;
                    //
                    If not (IsEmpty) Then
                     begin
                          Total := cdsProdutos.RecordCount;
                          BmsXPProgressBar1.Position := 0;
                          Cont  := 0;
                          //
                          DisableControls;
                          First;
                          While not (Eof) do
                           begin
                               Edit;
                               VALOR := 0;
                               M_VLANTE := FieldByName('PRO_VLVENDA').AsFloat;
                               // Lucro Bruto
                               FieldByName('PRO_LUCROBRUTO').AsCurrency :=
                                     CALCULA_LUCROBRUTO(cdsProdutos.FieldByName('PRO_VLCOMPRA').AsCurrency,
                                     FieldByName('PRO_IPI').AsCurrency,
                                     FieldByName('PRO_FRETE').AsCurrency,
                                     FieldByName('PRO_REDUCAOICMS').AsCurrency,
                                     FieldByName('PRO_TAXAS').AsCurrency,
                                     FieldByName('PRO_LUCROBRUTO').AsCurrency,
                                     FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                                     FieldByName('TRI_CODIGO').AsInteger);
                               // Lucro Liquido
                               FieldByName('PRO_LUCROLIQUIDO').AsCurrency :=
                                    VALOR_VENDA(cdsProdutos.FieldByName('PRO_VLCOMPRA').AsCurrency,
                                    FieldByName('PRO_IPI').AsCurrency,
                                    FieldByName('PRO_FRETE').AsCurrency,
                                    FieldByName('PRO_REDUCAOICMS').AsCurrency,
                                    FieldByName('PRO_TAXAS').AsCurrency,
                                    FieldByName('PRO_LUCROBRUTO').AsCurrency,
                                    FieldByName('PRO_LUCROLIQUIDO').AsCurrency,
                                    FieldByName('TRI_CODIGO').AsInteger);
                                // Valor de venda
                                FieldByName('PRO_VLVENDA').AsFloat     :=
                               M_VLANTE + uFuncoes.Gerapercentual(M_VLANTE,edtPERC.Value);
                                //
                                FieldByName('PRO_VALOR_ANTERIOR').AsCurrency := M_VLANTE;
                                FieldByName('PRO_DTALTERACAO').AsDateTime    := M_DTMOVI;
                                FieldByName('PRO_HOREAJUTE').AsString        := M_HOMOVI;
                                FieldByName('PRO_USUARIO_REAJUSTE').AsInteger := StrtoInt(uFrmNEFMain.M_CDUSUA);
                                //
                                Cont := Cont + 1;
                                BmsXPProgressBar1.Position := (Cont * 100) div Total;
                                lblPercentual.Caption := InttoStr(BmsXPProgressBar1.Position)+'%';
                                //
                                Application.ProcessMessages;
                                //
                                M_VLANTE := 0;
                                //
                                Next;
                           End;  // Fim-enquanto
                          //
                          ApplyUpdates(0);
                          EnableControls;  
                     End;  // Fim-se
                     //
                    Application.MessageBox(PChar('Reajuste realizado com sucesso.'),
                           'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               End;  // Fim-with
               //
               //Close;
          Except
            on Exc:Exception do
             begin
                 Application.MessageBox(PChar('Erro ao tentar realizar reajuste!!!'
                      + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 //
                 Close;
             End;
          End;
      Finally
           Screen.Cursor := crDefault;
           BmsXPProgressBar1.Visible := False;
           lblPercentual.Visible     := False;
           lbl_QTREGI.Visible        := False;
           pnlProgressao.Visible     := False;
      end;
      //
      Application.ProcessMessages;
end;

function TFrmReajuste.CALCULA_LUCROBRUTO(W_VLCOMP, W_PERIPI, W_PEFRET,
  W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQUIDO: Real;
  W_CDTRIB: Integer): Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_VLFORM, W_VLFORM, M_VLIMPO, M_LULIQU : Real;
Begin
        uFuncoes.RefreshCDS(dmDados.cdsConfig);
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
        If (W_CDTRIB <> 0) Then
           M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
        //***  Valores somados ao valor de compra
        M_VLFORM := W_VLCOMP + M_VLIPFT - M_VLICME + M_VLTAXA;
        IF (W_LUBRUTO <> 0) Then
        Begin
           //M_VLVEND := M_VLFORM*(1+(W_LUBRUTO/100));
           cdsProdutos.FieldByName('PRO_VLVENDA').AsCurrency := M_VLFORM*(1+(W_LUBRUTO/100));
           // Valor dos percentuais cobrados sobre valor de venda
           //M_VLIMPO := M_VLVEND*((M_PEICMV+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
           M_VLIMPO := cdsProdutos.FieldByName('PRO_VLVENDA').AsCurrency*
               ((M_PEICMV+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
           W_VLFORM := M_VLFORM + M_VLIMPO;
           //M_LULIQU := (M_VLVEND - W_VLFORM)/M_VLVEND * 100;
           M_LULIQU := (cdsProdutos.FieldByName('PRO_VLVENDA').AsCurrency - W_VLFORM)/
            cdsProdutos.FieldByName('PRO_VLVENDA').AsCurrency * 100;
        End;
        //
        M_VLVEND := M_VLFORM/(1-(M_PEICMV+W_LULIQUIDO+M_PECOMI+M_PERPIS+M_PECOFI+M_PEIPMF)/100);
        //
        cdsProdutos.FieldByName('PRO_LUCROLIQUIDO').AsCurrency := M_LULIQU;
end;

function TFrmReajuste.CALCULA_LUCROLIQUIDO(W_VLCOMP, W_PERIPI, W_PEFRET,
  W_ICMSCO, W_PETAXA, W_LUBRUTO, W_LULIQU: Real; W_CDTRIB: Integer): Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_LUBRUT, M_LULIQU : Real;
Begin
        uFuncoes.RefreshCDS(dmDados.cdsConfig);
        //***  Valores calculados sobre o valor de compra
        M_VLIPFT := W_VLCOMP*(W_PERIPI+W_PEFRET)/100;    // && Valor do ipi + valor de frete
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
            M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
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
        cdsProdutos.FieldByName('PRO_LUCROBRUTO').AsCurrency := M_LUBRUT;
end;

function TFrmReajuste.VALOR_VENDA(W_VLCOMP, W_PERIPI, W_PEFRET, W_ICMSCO,
  W_PETAXA, W_LUBRUTO, W_LULIQU: Real; W_CDTRIB: Integer): Real;
Var
      M_VLIPFT, M_VLICME, M_VLTAXA, M_PEICMV, M_VLVEND, M_VLCUST : Real;
      M_PECOMI, M_PERPIS, M_PECOFI, M_PEIPMF : Real;
      M_VLIMPO, W_VLCUST, M_VLBRUT : Real;
Begin
        uFuncoes.RefreshCDS(dmDados.cdsConfig);
        //***  Valores calculados sobre o valor de compra
        M_VLIPFT := W_VLCOMP*(W_PERIPI+W_PEFRET)/100;   // && Valor do ipi + valor de frete
        M_VLICME := W_VLCOMP*(W_ICMSCO)/100;            //&& ICMS de compra
        M_VLTAXA := W_VLCOMP*(W_PETAXA)/100;            //&& Valor do desconto
        M_VLVEND := cdsProdutos.FieldByName('PRO_VLVENDA').AsCurrency;
        //
        M_PECOMI := dmDados.CdsConfigCFG_PECOMI.AsFloat;
        M_PERPIS := dmDados.CdsConfigCFG_PERPIS.AsFloat;
        M_PECOFI := dmDados.cdsConfigCFG_PECOFINS.AsFloat;
        M_PEIPMF := dmDados.CdsConfigCFG_PEIPMF.AsFloat;
        //
        M_PEICMV := 0;
        //
        IF (W_CDTRIB <> 0) Then
            M_PEICMV := dmDados.GetAliquotaICMS(W_CDTRIB);
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
        cdsProdutos.FieldByName('PRO_LUCROBRUTO').AsCurrency := M_VLBRUT;
end;

end.

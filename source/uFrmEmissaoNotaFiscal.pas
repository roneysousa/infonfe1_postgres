unit uFrmEmissaoNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, ComCtrls, Buttons,
  ToolEdit, RXDBCtrl, Grids, DBGrids, CurrEdit, DBClient;

type
  TfrmEmissaoNotaFiscal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    dbeNumero: TDBEdit;
    dsCadastro: TDataSource;
    Label2: TLabel;
    dbeChave: TDBEdit;
    Label3: TLabel;
    dbeStatus: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    BtAdicionar: TBitBtn;
    BtEditar: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    Label4: TLabel;
    dbeModelo: TDBEdit;
    Label5: TLabel;
    dbeSerie: TDBEdit;
    Label6: TLabel;
    dbeDTEMIS: TDBDateEdit;
    Label7: TLabel;
    dbeDtSaidaEntrada: TDBDateEdit;
    grbTipoDoc: TDBRadioGroup;
    Label8: TLabel;
    dbeNatureza: TDBEdit;
    Label9: TLabel;
    cmbFormaPaga: TDBLookupComboBox;
    Label10: TLabel;
    cmbFormaEmissao: TDBLookupComboBox;
    Label11: TLabel;
    cmbFinalidade: TDBLookupComboBox;
    Label15: TLabel;
    cmbUF: TDBComboBox;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    dbeEmitente: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit6: TDBEdit;
    dsEmitente: TDataSource;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox1: TDBComboBox;
    cmbMunicipios: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    GroupBox4: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    dbeRazao: TDBEdit;
    spLocCFOP: TSpeedButton;
    spLocEmitente: TSpeedButton;
    dbeNumDoc: TMaskEdit;
    Label38: TLabel;
    DBEdit19: TDBEdit;
    Label39: TLabel;
    DBEdit20: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox5: TGroupBox;
    dsCliente: TDataSource;
    cmbTipoDoc: TComboBox;
    GroupBox6: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit26: TDBEdit;
    GroupBox7: TGroupBox;
    pnlBotoes: TPanel;
    grdConsultar: TDBGrid;
    btnNovoItem: TBitBtn;
    btnEditarItem: TBitBtn;
    btnExcluiItem: TBitBtn;
    Panel5: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    pnlDados: TPanel;
    edtCDPROD: TEdit;
    edtDescricao: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    edtQTDE: TCurrencyEdit;
    edtValorUnitario: TCurrencyEdit;
    edtDesconto: TCurrencyEdit;
    edtAcrescimo: TCurrencyEdit;
    edtSubTotal: TCurrencyEdit;
    Label55: TLabel;
    dsItensNota: TDataSource;
    pnlTotalItens: TPanel;
    btnSalvarItem: TBitBtn;
    btnCancelarItem: TBitBtn;
    ClientDataSet1: TClientDataSet;
    spLocProduto: TSpeedButton;
    Label56: TLabel;
    dbeNRCUPOM: TDBEdit;
    btnGerarXML: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure cmbUFExit(Sender: TObject);
    procedure dbeEmitenteExit(Sender: TObject);
    procedure dbeEmitenteChange(Sender: TObject);
    procedure cmbTipoDocExit(Sender: TObject);
    procedure cmbTipoDocEnter(Sender: TObject);
    procedure spLocCFOPClick(Sender: TObject);
    procedure spLocEmitenteClick(Sender: TObject);
    procedure dbeNumDocExit(Sender: TObject);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDPRODExit(Sender: TObject);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtQTDEExit(Sender: TObject);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtAcrescimoExit(Sender: TObject);
    procedure edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure edtQTDEKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure spLocProdutoClick(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure dbeDTEMISExit(Sender: TObject);
    procedure dbeNRCUPOMKeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarXMLClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar(aCodigo : String);
    procedure BuscarEmitente(aCodigo : String);
    procedure BuscarCliente(aCodigo : String);
    procedure BuscarProduto(aCodigo : String);
    procedure tratabotoes;
    procedure LimparCampos;
    procedure Calcular;
    procedure CalcularTotalItens(aCDS : TClientDataSet);
    procedure BotoesItem;
    Function ValidarCampos() : Boolean;
    procedure AbrirDetalhesNota(iCodigo : Integer);
  public
    { Public declarations }
  end;

var
  frmEmissaoNotaFiscal: TfrmEmissaoNotaFiscal;
  M_NRITEM : Integer;

implementation

uses udmNFe, uDMDados, uFuncoes, uFrmLocProdutoServico, uFrmNEFMain;

{$R *.dfm}

{ TfrmEmissaoNotaFiscal }

procedure TfrmEmissaoNotaFiscal.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsString, aCodigo);
     //
     AbrirDetalhesNota(StrtoInt(aCodigo));
end;

procedure TfrmEmissaoNotaFiscal.Registro;
Var
   M_CODIGO : INTEGER;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     M_CODIGO := uFuncoes.mvcodigomax('NTF_CODIGO','NOTA_FISCAL');
     //
     If (dmDados.cdsConfigCFG_NOTAFISCAL.AsInteger > 0) Then
     begin
          uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, InttoStr(M_CODIGO));
          //
          AbrirDetalhesNota(M_CODIGO);
     End
     Else
         uFuncoes.FilterCDS(dmNFe.cdsNotaFiscal, fsInteger, '-1');
     //
     PageControl1.ActivePageIndex := 0;
     PageControl2.ActivePageIndex := 0;
end;

procedure TfrmEmissaoNotaFiscal.FormShow(Sender: TObject);
begin
     uFuncoes.RefreshCDS(dmDados.cdsListaFPagamento);
     uFuncoes.RefreshCDS(dmDados.cdsListaEmissao);
     uFuncoes.RefreshCDS(dmDados.cdsListaFinalidadeEmissao);
     uFuncoes.RefreshCDS(dmDados.cdsListaNaturezaOpe);
     //
     cmbTipoDoc.Enabled := False;
     dbeNumDoc.Enabled  := False;
     pnlDados.Enabled   := False;
     //
     Registro;
     //
     If (dmNFe.cdsNotaFiscal.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmEmissaoNotaFiscal.tratabotoes;
begin
   BtAdicionar.Enabled := not BtAdicionar.Enabled;
   BtEditar.Enabled    := not BtEditar.Enabled;
   //
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

procedure TfrmEmissaoNotaFiscal.BtAdicionarClick(Sender: TObject);
Var
   M_NRNOTA : Integer;
begin
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          PageControl1.ActivePageIndex := 0;
          PageControl2.ActivePageIndex := 0;
          //
          tratabotoes;
          M_NRITEM := 0;
          //
          dmNFe.Abrir_Tabela_Itens;
          //
          With dsCadastro.DataSet do
            begin
                 M_NRNOTA := DMDados.cdsConfigCFG_NOTAFISCAL.AsInteger + 1;
                 //
                 Append;
                 FieldByName('NTF_CODIGO').AsInteger     := M_NRNOTA;
                 FieldByName('NTF_NUMERONOTA').AsString  :=
                    uFuncoes.StrZero(InttoStr(M_NRNOTA),9);
                 FieldByName('NTF_DTEMISSAO').AsDateTime := Date();
                 FieldByName('NTF_MODELO').AsInteger     := 55;
                 FieldByName('NTF_VERSAO_XML').AsString  := '1.10';
                 FieldByName('NTF_TIPODOCUMENTO').AsInteger := 1;
                 FieldByName('NTF_SITUACAO_ENUM').AsInteger := 1;
                 dbeSerie.SetFocus;
            End;
            //
     End;
end;

procedure TfrmEmissaoNotaFiscal.BtEditarClick(Sender: TObject);
begin
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           tratabotoes;
           dsCadastro.DataSet.Edit;
      End;
end;

procedure TfrmEmissaoNotaFiscal.BtGravarClick(Sender: TObject);
Var
    M_NRNOTA, iUsuario : Integer;
    M_VLNOTA : Double;
begin
     If not (ValidarCampos) Then
         Exit;
     //
     M_VLNOTA := dmNFe.GetValorNotaFiscal(dmNFe.cdsItemsNotaFiscal);
     tratabotoes;
     iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
     //
     Try
          if dsCadastro.DataSet.State in [dsInsert] Then
            begin
                 uFuncoes.RefreshCDS(DMDados.cdsConfig);
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
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalNTF_CODIGO.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End
            Else
            begin
                M_NRNOTA := dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger;
                //
                dmNFe.cdsNotaFiscalNTF_DTALTE.AsDateTime := Date();
                dmNFe.cdsNotaFiscalNTF_HOALTE.AsString   := dmDados.GetHora();
                dmNFe.cdsNotaFiscalNTF_USALTE.AsInteger  := iUsuario;
                //
                If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Nota Fiscal : '+uFuncoes.StrZero(dmNFe.cdsNotaFiscalNTF_CODIGO.AsString,9)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End;
            // Emitente
            If (dmDados.cdsEmitente.State in [dsEdit]) Then
                dmDados.cdsEmitente.ApplyUpdates(0);
            //
            dmNFe.cdsNotaFiscalNTF_EMITENTE.AsInteger :=
                dmDados.cdsEmitenteEMI_CODIGO.AsInteger;
            // Cliente
            If (dmDados.cdsCliente.State in [dsEdit]) Then
                dmDados.cdsCliente.ApplyUpdates(0);
            //
            dmNFe.cdsNotaFiscalNTF_CLIENTE.AsInteger :=
                dmDados.cdsClienteCLI_CODIGO.AsInteger;
            // Grava Nota-Fiscal
            dmNFe.cdsNotaFiscalNTF_VALORTOTALNOTA.AsFloat := M_VLNOTA;
            dmNFe.cdsNotaFiscal.ApplyUpdates(0);
            // Grava Itens da Nota
            dmNFe.GravarItensNotaFiscal(M_NRNOTA, dmNFe.cdsItemsNotaFiscal);
            //
            Application.MessageBox(PChar(MSG_OK),
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
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

procedure TfrmEmissaoNotaFiscal.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         dsCadastro.DataSet.Cancel;
     if (dsCadastro.DataSet.IsEmpty) Then
         Close;
end;

procedure TfrmEmissaoNotaFiscal.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmEmissaoNotaFiscal.cmbUFExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUF.Text) Then
         dmDados.AbrirCidade(cmbUF.Text);
end;

procedure TfrmEmissaoNotaFiscal.BuscarEmitente(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmDados.cdsEmitente, fsString, aCodigo);
end;

procedure TfrmEmissaoNotaFiscal.dbeEmitenteExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
        if not uFuncoes.Empty(dbeEmitente.Text) Then
          begin
               If not (dmDados.ProcurarValor(dbeEmitente.Text,'EMI_CODIGO','EMITENTES')) Then
                begin
                     Application.MessageBox(PChar('Código de emitente não cadastrado.'),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeEmitente.Clear;
                     dbeEmitente.SetFocus;
                     Exit;
                End;
               BuscarEmitente(dbeEmitente.Text);
          End;
end;

procedure TfrmEmissaoNotaFiscal.dbeEmitenteChange(Sender: TObject);
begin
     if uFuncoes.Empty(dbeEmitente.Text) and
       uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_EMITENTE.AsString) Then
         dmDados.cdsEmitente.Close;
end;

procedure TfrmEmissaoNotaFiscal.cmbTipoDocExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
         if (cmbTipoDoc.ItemIndex = 0) Then
           dbeNumDoc.EditMask := '##.###.###/####-##;0;_'
         Else
           dbeNumDoc.EditMask := '###.###.###-##;0;_';
end;

procedure TfrmEmissaoNotaFiscal.cmbTipoDocEnter(Sender: TObject);
begin
         dbeNumDoc.Clear;
end;

procedure TfrmEmissaoNotaFiscal.spLocCFOPClick(Sender: TObject);
begin
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
end;

procedure TfrmEmissaoNotaFiscal.spLocEmitenteClick(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
end;

procedure TfrmEmissaoNotaFiscal.dbeNumDocExit(Sender: TObject);
Var
    iCliente : Integer;
begin
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       begin
            If not uFuncoes.Empty(dbeNumDoc.Text) Then
             begin
                If (cmbTipoDoc.ItemIndex = 0) Then
                begin
                     // Verificar validade do CNPJ
                     If not uFuncoes.CGC(dbeNumDoc.Text) and (Length(dbeNumDoc.Text) = 14) Then
                      begin
                          Application.MessageBox(PChar('CNPJ inválido.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                          dbeNumDoc.SetFocus;
                          Exit;
                      End;
                End
                Else
                begin
                     // Verificar validade do CPF
                     If not uFuncoes.CPF(dbeNumDoc.Text) and (Length(dbeNumDoc.Text) = 11) Then
                      begin
                          Application.MessageBox(PChar('CPJ inválido.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                          dbeNumDoc.SetFocus;
                          Exit;
                      End;
                End;
                //
                iCliente := dmDados.GetCodigoClienteCGCCPF(dbeNumDoc.Text);
                 //
                 If (iCliente = 0) Then
                  begin
                       Application.MessageBox(PChar('CNPJ/CPF não cadastrado.'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeNumDoc.Clear;
                       dbeNumDoc.SetFocus;
                       Exit;
                  End
                 Else
                     BuscarCliente(InttoStr(iCliente));
             End;
       End;
end;

procedure TfrmEmissaoNotaFiscal.BuscarCliente(aCodigo: String);
begin
    uFuncoes.FilterCDS(dmDados.cdsCliente, fsString, aCodigo);
end;

procedure TfrmEmissaoNotaFiscal.edtCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
     //
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
end;

procedure TfrmEmissaoNotaFiscal.edtCDPRODExit(Sender: TObject);
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
                           edtDescricao.Text := dmDados.cdsProdutoPRO_DESCRICAO.AsString;
                           edtValorUnitario.Value := dmDados.cdsProdutoUNI_CODIGO.AsFloat;
                           //dmDados.GetNomeProduto(uFuncoes.StrZero(edtCDPROD.Text,13));
                           edtQTDE.Value     := 1;
                           edtQTDE.SetFocus;
                       End;
                  end;
            End;
      End;
end;

procedure TfrmEmissaoNotaFiscal.edtCDPRODChange(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and uFuncoes.Empty(edtCDPROD.Text)  Then
            LimparCampos;
end;

procedure TfrmEmissaoNotaFiscal.BuscarProduto(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, aCodigo);
end;

procedure TfrmEmissaoNotaFiscal.LimparCampos;
begin
     //edtCDPROD.Clear;
     edtDescricao.Clear;
     edtQTDE.Value := 1;
     edtValorUnitario.Clear;
     edtDesconto.Clear;
     edtAcrescimo.Clear;
     edtSubTotal.Clear;
     //
end;

procedure TfrmEmissaoNotaFiscal.Calcular;
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
     M_VLSUBT := ((M_VLUNIT * M_QTPROD) - M_VLDESC) + M_VLACRE;
     //
     edtSubTotal.Value := M_VLSUBT;
end;

procedure TfrmEmissaoNotaFiscal.edtQTDEExit(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TfrmEmissaoNotaFiscal.edtValorUnitarioExit(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TfrmEmissaoNotaFiscal.edtDescontoExit(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       Calcular;
end;

procedure TfrmEmissaoNotaFiscal.edtAcrescimoExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          Calcular;
          //
          If (btnSalvarItem.Enabled) Then
             btnSalvarItem.SetFocus;
     End;
end;

procedure TfrmEmissaoNotaFiscal.edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          If (key = #13)  Then
          begin
               key := #0;
               if (btnSalvarItem.Enabled) Then
                  btnSalvarItem.SetFocus;
          End;
          //
     End;
end;

procedure TfrmEmissaoNotaFiscal.btnExcluiItemClick(Sender: TObject);
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

procedure TfrmEmissaoNotaFiscal.btnNovoItemClick(Sender: TObject);
begin
    if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
             BotoesItem;
             //LimparCampos;
             edtCDPROD.Clear;
             edtCDPROD.SetFocus;
       End;
end;

procedure TfrmEmissaoNotaFiscal.btnCancelarItemClick(Sender: TObject);
begin
      if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
            If not uFuncoes.Empty(edtCDPROD.Text) Then
             begin
                 BotoesItem;
                 LimparCampos;
                 //
                 edtCDPROD.Clear;
                 btnNovoItem.SetFocus;
             End;
       End;
end;

procedure TfrmEmissaoNotaFiscal.btnSalvarItemClick(Sender: TObject);
begin
      if (dsCadastro.DataSet.State in [dsInsert]) Then
       begin
            //
            if not uFuncoes.Empty(edtCDPROD.Text) and (edtQTDE.Value > 0) and (edtValorUnitario.Value > 0) Then
               begin
                       BuscarProduto(uFuncoes.StrZero(edtCDPROD.Text,13));
                       //
                       M_NRITEM := M_NRITEM + 1;
                       //
                       if not (dmDados.cdsProduto.IsEmpty) Then
                        begin
                             {Function AddItemNota(pNRITEM : Integer;
                                 pCDPROD, pCODEAN, pDESCRICAO, pNCM, pEXTIPI, pCFOP, pUNDCOM, pGTIN, pUNTRIB : String;
                                 pQTDECOM, pVLUNITARIO, pQTDETRIB, pVLUNTRIB, pVLFRETE, pVLSEGURO, pVLDESCONTO, pVLACRESCIMO, pVLOUTRASDESPESAS : Double;
                                 pINDTOT : Integer;
                                 pBCICMS, pVLICMS, pVLIPI, pALIQICMS, pALIQIPI : Double) : Boolean;}
                            { dmNFe.AddItemNota(
                                  M_NRITEM,
                                  dmDados.cdsProdutoPRO_CODIGO.AsString,
                                  dmDados.cdsProdutoPRO_BARRAS.AsString,
                                  dmDados.cdsProdutoPRO_DESCRICAO.AsString,
                                  dmDados.cdsProdutoPRO_NCM.AsString,
                                  dmDados.cdsProdutoPRO_EX_TIPI.AsString,
                                  dmDados.cdsProdutoPRO_CFOP.AsString,
                                  dmDados.cdsProdutoPRO_UND_COM.AsString,
                                  dmDados.cdsProdutoPRO_GENERO.AsString,
                                  dmDados.cdsProdutoPRO_UNDTRIBUTARIA.AsString,
                                  edtQTDE.Value, edtValorUnitario.Value,
                                  dmDados.cdsProdutoPRO_QTRIB.AsFloat,
                                  dmDados.cdsProdutoPRO_VL_UN_COM.AsFloat,
                                  0, 0, edtDesconto.Value, edtAcrescimo.Value, 0, 1,
                                  0, 0, 0, 0, 0);  }
                             //
                             CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
                             BotoesItem;
                             LimparCampos;
                             edtCDPROD.Text := '';
                             //
                             If (btnNovoItem.Enabled) Then
                                btnNovoItem.SetFocus;
                        end;
               End;
       End;
end;

procedure TfrmEmissaoNotaFiscal.CalcularTotalItens(aCDS: TClientDataSet);
Var
  M_VLTOTA : Double;
begin
     M_VLTOTA := 0;
     With aCDS do
      begin
          DisableControls;
          First;
          While not (Eof) do
            begin
                 M_VLTOTA := M_VLTOTA + FieldByName('CDS_SUBTOTAL').AsFloat;
                 //
                 Next;
            End;
          EnableControls;
      End;
      //
      pnlTotalItens.Caption := FormatFloat('###,##0.#0', M_VLTOTA);
end;

procedure TfrmEmissaoNotaFiscal.BotoesItem;
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          btnNovoItem.Enabled   := not btnNovoItem.Enabled;
          btnEditarItem.Enabled := not btnEditarItem.Enabled;
          //
          spLocProduto.Enabled  := not spLocProduto.Enabled;
          btnSalvarItem.Enabled := not btnSalvarItem.Enabled;
          btnCancelarItem.Enabled := not btnCancelarItem.Enabled;
     End;
end;

procedure TfrmEmissaoNotaFiscal.edtQTDEKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) and not uFuncoes.Empty(edtQTDE.Text) Then
        begin
             key  := #0;
             edtValorUnitario.SetFocus;
        End;
end;

procedure TfrmEmissaoNotaFiscal.edtValorUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     If (key = #13) and not uFuncoes.Empty(edtValorUnitario.Text) Then
      begin
           key  := #0;
           edtDesconto.SetFocus;
      End;
end;

procedure TfrmEmissaoNotaFiscal.edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If (key = #13) Then
        begin
             key  := #0;
             edtAcrescimo.SetFocus;
        End;
end;

procedure TfrmEmissaoNotaFiscal.spLocProdutoClick(Sender: TObject);
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

Function TfrmEmissaoNotaFiscal.ValidarCampos: Boolean;
begin
     Result := false;
     //
     If uFuncoes.Empty(dbeSerie.Text) Then
        begin
             Application.MessageBox('Digite a série da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeSerie.SetFocus;
             Exit;
        End;
     //
     If (dbeDTEMIS.Text = '  /  /    ') Then
        begin
             Application.MessageBox('Digite a data de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeDTEMIS.SetFocus;
             Exit;
        End;
     //
     If (grbTipoDoc.ItemIndex < 0) Then
        begin
             Application.MessageBox('Selecione o tipo de documento.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             grbTipoDoc.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeNatureza.Text) Then
        begin
             Application.MessageBox('Digite a natureza da operação.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeNatureza.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFormaPaga.Text) Then
        begin
             Application.MessageBox('Selecione a forma de pagamento.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbFormaPaga.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFormaPaga.Text) Then
        begin
             Application.MessageBox('Selecione a forma de pagamento.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbFormaPaga.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFormaEmissao.Text) Then
        begin
             Application.MessageBox('Selecione a forma de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbFormaEmissao.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbFinalidade.Text) Then
        begin
             Application.MessageBox('Selecione a finalidade de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbFinalidade.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(cmbUF.Text) Then
        begin
             Application.MessageBox('Selecione a UF.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbUF.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeEmitente.Text) Then
        begin
             Application.MessageBox('Digite o código do emitente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 1;
             dbeEmitente.SetFocus;
             Exit;
        End;
     //
     If uFuncoes.Empty(dbeNumDoc.Text) Then
        begin
             Application.MessageBox('Digite o CNPJ/CPF do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 2;
             dbeNumDoc.SetFocus;
             Exit;
        End;
     //
     If not (dsItensNota.DataSet.Active) or (dsItensNota.DataSet.RecordCount < 1) Then
        begin
             Application.MessageBox('Cadastre os itens da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             PageControl1.ActivePageIndex := 3;
             Exit;
        End;
     //
     Result := True;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit20KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit22KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit26KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit11KeyPress(Sender: TObject;
  var Key: Char);
begin
   If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not (key in ['0'..'9', #8, #13]) Then
        key := #0;
end;

procedure TfrmEmissaoNotaFiscal.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
     cmbTipoDoc.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     dbeNumDoc.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
     pnlDados.Enabled   := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmEmissaoNotaFiscal.dbeDTEMISExit(Sender: TObject);
begin
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
      and (dbeDTEMIS.text <> '  /  /    ') Then
       try
            dbeDTEMIS.Date := StrtoDate(dbeDTEMIS.text);
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

procedure TfrmEmissaoNotaFiscal.dbeNRCUPOMKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not (key in ['0'..'9', #8, #13]) Then
          key := #0;
end;

procedure TfrmEmissaoNotaFiscal.AbrirDetalhesNota(iCodigo : Integer);
begin
     If not (dmNFe.cdsNotaFiscal.IsEmpty) Then
      begin
           If not uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_EMITENTE.AsString) Then
              uFuncoes.FilterCDS(dmDados.cdsEmitente, fsInteger, dmNFe.cdsNotaFiscalNTF_EMITENTE.AsString);
           //
           If not uFuncoes.Empty(dmNFe.cdsNotaFiscalNTF_CLIENTE.AsString) Then
            begin
                uFuncoes.FilterCDS(dmDados.cdsCliente, fsInteger, dmNFe.cdsNotaFiscalNTF_CLIENTE.AsString);
                //
                If not (dmDados.cdsCliente.IsEmpty) Then
                 begin
                      If (dmDados.cdsClienteCLI_TIPOPESSOA.AsString = 'J') Then
                          cmbTipoDoc.ItemIndex := 0
                      Else
                          cmbTipoDoc.ItemIndex := 1;
                      //
                      dbeNumDoc.Text := dmDados.cdsClienteCLI_CGC.AsString;
                 End;
            End;
           //
           dmNFe.CarregarItensNota(iCodigo);
           CalcularTotalItens(dmNFe.cdsItemsNotaFiscal);
      End;
end;

procedure TfrmEmissaoNotaFiscal.btnGerarXMLClick(Sender: TObject);
begin
     if not (dmNFe.cdsNotaFiscal.IsEmpty) then
       If  (dmNFe.GerarXMLManual(dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger, 0, 1)) then
          ShowMessage('Arquivo gerado com sucesso.');
         //dmNFe.GerarXML(dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger, 0, 1);
end;

end.

unit uFrmCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TfrmCadProdutos = class(TfrmCadastro)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    dbeDescricao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cdsConsultarPRO_CODIGO: TStringField;
    cdsConsultarPRO_DESCRICAO: TStringField;
    cdsConsultarPRO_V_UN_TRIB: TFloatField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    cdsConsultarPRO_VL_UN_COM: TFloatField;
    Label11: TLabel;
    cmbTipoTributacao: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label15: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    dbeCNPJprodutor: TDBEdit;
    spLocFornecedor: TSpeedButton;
    Label21: TLabel;
    dbeCFOP: TDBEdit;
    DBEdit12: TDBEdit;
    spLocCFOP: TSpeedButton;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure spLocFornecedorClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure spLocCFOPClick(Sender: TObject);
    procedure dbeCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCNPJprodutorKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCFOPExit(Sender: TObject);
    procedure dbeCNPJprodutorExit(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar(aCodigo : String);
    function ValidarCampos() : Boolean;
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes, uFrmLocFornecedor, uFrmLocCFOP;

{$R *.dfm}

{ TfrmCadProdutos }

procedure TfrmCadProdutos.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, aCodigo);
end;

procedure TfrmCadProdutos.Registro;
Var
   aCodigo : String;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     // 
     If (dmDados.cdsConfigCFG_PRODUTO.AsInteger > 0) Then
      begin
         aCodigo := uFuncoes.StrZero(dmDados.cdsConfigCFG_PRODUTO.AsString,13);
         uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, aCodigo);
      End
     Else
         uFuncoes.FilterCDS(DMDados.cdsProduto, fsString, '-1');
     //
     PageControl1.ActivePageIndex := 0;
end;

function TfrmCadProdutos.ValidarCampos: Boolean;
begin
      Result := False;
      //
      If uFuncoes.Empty(dbeDescricao.Text) Then
        begin
             Application.MessageBox('Digite a descri��o do produto/servi�o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeDescricao.SetFocus;
             Exit;
        End;
      //
      Result := True;  
end;

procedure TfrmCadProdutos.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          With dsCadastro.DataSet do
            begin
                 Append;
                 FieldByName('PRO_CODIGO').AsString  :=
                    uFuncoes.StrZero(InttoStr(DMDados.cdsConfigCFG_PRODUTO.AsInteger + 1),13);
                 FieldByName('PRO_TIPOPRODUTO').AsString := 'P';
            End;
            //
            dbeDescricao.SetFocus;
     End;
end;

procedure TfrmCadProdutos.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           dsCadastro.DataSet.Edit;
           dbeDescricao.setfocus;
      End;
end;

procedure TfrmCadProdutos.BtExcluirClick(Sender: TObject);
Var
     iUsuario : Integer;
     aCodigo  : String;
begin
   inherited;
   if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
   begin
       aCodigo := uFuncoes.StrZero(dmDados.cdsProdutoPRO_CODIGO.AsString, 10);
       iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       If Application.MessageBox('Deseja excluir este produto/servi�o?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            dmDados.cdsProduto.Delete;
            dmDados.cdsProduto.ApplyUpdates(0);
            //
            If not (dmDados.IncluirTarefaUsuario(iUsuario,
               'Excluiu Produto/Servico : '+aCodigo+' *F*')) Then
                 ShowMessage('Erro ao adicionar tarefa do usu�rio.');
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadProdutos.BtGravarClick(Sender: TObject);
Var
   iUsuario : Integer;
begin
      If not (ValidarCampos) Then
         Exit;
      //
      try
          //
          iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
          //
          If (dsCadastro.DataSet.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(DMDados.cdsConfig);
                 //
                 dmDados.cdsConfig.Edit;
                 dmDados.cdsConfigCFG_PRODUTO.AsInteger :=
                   dmDados.cdsConfigCFG_PRODUTO.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 dmDados.cdsProdutoPRO_CODIGO.AsString :=
                     uFuncoes.StrZero(InttoStr(dmDados.cdsConfigCFG_PRODUTO.AsInteger),13);
                 dmDados.cdsProdutoPRO_DTCADASTRO.AsDateTime := Date();
                 dmDados.cdsProdutoPRO_HOCADA.AsString   := dmDados.GetHora();
                 dmDados.cdsProdutoPRO_USUARIO_CAD.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Produto : '+uFuncoes.StrZero(dmDados.cdsProdutoPRO_CODIGO.AsString,13)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usu�rio.');
            End
            Else
            begin
                 dmDados.cdsProdutoPRO_DTALTERACAO.AsDateTime := Date();
                 dmDados.cdsProdutoPRO_HOALTE.AsString        := dmDados.GetHora();
                 dmDados.cdsProdutoPRO_USUARIO_ALT.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Produto : '+uFuncoes.StrZero(dmDados.cdsProdutoPRO_CODIGO.AsString,13)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usu�rio.');
            End;
          //
          dsCadastro.DataSet.Post;
          DMDados.cdsProduto.ApplyUpdates(0);
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
               //
            End;
     End;
  inherited;
end;

procedure TfrmCadProdutos.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert])
       and not uFuncoes.Empty(dbeDescricao.Text) Then
        if (dmDados.ProcurarValor(dbeDescricao.Text, 'PRO_DESCRICAO', 'PRODUTOS')) Then
          begin
              Application.MessageBox('Produto/Servi�o j� cadastrado.','ATEN��O',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeDescricao.SetFocus;
              Exit;
          End;
end;

procedure TfrmCadProdutos.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "PRO_CODIGO","PRO_DESCRICAO", "PRO_VL_UN_COM", "PRO_V_UN_TRIB" from "PRODUTOS"';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with zqryConsultar do
        begin
            SQL.Clear;
            Active := False;
            //
            case rgConsultar.ItemIndex of
                0: Texto := Texto +'where ("PRO_CODIGO" = '+QuotedStr(edtConsultar.Text)+') ';
                1: Texto := Texto +'where (UPPER("PRO_DESCRICAO") like '+QuotedStr(edtConsultar.Text+'%')+') ';
            end;
            //
            Texto := Texto +' order by "PRO_DESCRICAO"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadProdutos.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarPRO_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  inherited;
     spLocFornecedor.Enabled := false;
     spLocCFOP.Enabled := false;
     PageControl2.ActivePageIndex := 0;
     //
     uFuncoes.RefreshCDS(dmDados.cdsListaUnidades);
     uFuncoes.RefreshCDS(dmDados.cdsListaTributacao);
     uFuncoes.RefreshCDS(dmDados.cdsListaTipoTributacao);
     uFuncoes.RefreshCDS(dmDados.cdsListaOrigem);
     uFuncoes.RefreshCDS(dmDados.cdsListaModaBaseCalculo);
     uFuncoes.RefreshCDS(dmDados.cdsListaModaBaseCalculoST);
     //
     REGISTRO;
     //
     If (dmDados.cdsProduto.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadProdutos.rgConsultarClick(Sender: TObject);
begin
//  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'C�digo:';
      edtConsultar.MaxLength := 14;
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Nome/Descri��o:';
      edtConsultar.Clear;
    end;
  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

procedure TfrmCadProdutos.spLocFornecedorClick(Sender: TObject);
begin
  inherited;
   If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
   begin
     dbeCNPJprodutor.SetFocus;
     //
     Application.CreateForm(TfrmLocFornecedor, frmLocFornecedor);
      try
          With frmLocFornecedor do
             ShowModal;
      Finally
          If not (frmLocFornecedor.cdsConsultar.IsEmpty) Then
              dmDados.cdsProdutoFOR_CODIGO.AsInteger :=
                 frmLocFornecedor.cdsConsultarFOR_CODIGO.AsInteger
          Else
              Perform(WM_NextDlgCtl,1,0);
          frmLocFornecedor.Free;
      End;
   End;
end;

procedure TfrmCadProdutos.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
    spLocFornecedor.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
    spLocCFOP.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmCadProdutos.spLocCFOPClick(Sender: TObject);
begin
  inherited;
   //
   If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
   begin
    { dbeCFOP.SetFocus;
     //
     Application.CreateForm(TfrmLocCFOP, frmLocCFOP);
      try
          With frmLocCFOP do
             ShowModal;
      Finally
          If not (frmLocCFOP.cdsConsultar.IsEmpty) Then
              dmDados.cdsProdutoPRO_CFOP.AsInteger :=
                 frmLocCFOP.cdsConsultarCFOP_CODIGO.AsInteger
          Else
              Perform(WM_NextDlgCtl,1,0);
          frmLocFornecedor.Free;
      End;  }
   End;
end;

procedure TfrmCadProdutos.dbeCFOPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if (key = #13) and uFuncoes.Empty(dbeCFOP.Text) Then
      begin
           Key := #0;
           spLocCFOPClick(Self);
      End;
end;

procedure TfrmCadProdutos.dbeCNPJprodutorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if (key = #13) and uFuncoes.Empty(dbeCNPJprodutor.Text) Then
      begin
           Key := #0;
           spLocFornecedorClick(Self);
      End;
end;

procedure TfrmCadProdutos.dbeCFOPExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and not uFuncoes.Empty(dbeCFOP.Text) Then
        if Not (dmDados.ProcurarValor(dbeCFOP.Text, 'CFOP_CODIGO', 'TABELA_CFOP')) Then
          begin
              Application.MessageBox('CFOP n�o cadastrado.','ATEN��O',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeCFOP.SetFocus;
              Exit;
          End;
end;

procedure TfrmCadProdutos.dbeCNPJprodutorExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and not uFuncoes.Empty(dbeCNPJprodutor.Text) Then
        if Not (dmDados.ProcurarValor(dbeCNPJprodutor.Text, 'PRO_FORNECEDOR', 'PRODUTOS')) Then
          begin
              Application.MessageBox('Fornecedor n�o cadastrado.','ATEN��O',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeCNPJprodutor.SetFocus;
              Exit;
          End;
end;

End.

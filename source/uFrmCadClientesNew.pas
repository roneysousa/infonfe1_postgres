unit uFrmCadClientesNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, ToolEdit, RXDBCtrl, Mask;

type
  TfrmCadClientesFornecedores = class(TfrmCadastro)
    Panel5: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    lblCPFCNPJ: TLabel;
    lblRazao: TLabel;
    lblFantasia: TLabel;
    lblIdentedade: TLabel;
    lblEstCivil: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblOrgao: TLabel;
    lblUfemissor: TLabel;
    lblDataAniversario: TLabel;
    Label50: TLabel;
    dbeNRCNPJ: TDBEdit;
    dbeRazao: TDBEdit;
    dbeNMCLIE: TDBEdit;
    dbeIdentidade: TDBEdit;
    cmbEstCivil: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dbeOrgao: TDBEdit;
    cmbUFEMISSOR: TDBComboBox;
    dbeDTNASC: TDBDateEdit;
    dbeEmail: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label44: TLabel;
    dbeCEP: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cmbUFCliente: TDBComboBox;
    cmbCidade: TDBLookupComboBox;
    DBEdit12: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    cmbUFCobranca: TDBComboBox;
    cmbCidadeCobranca: TDBLookupComboBox;
    tbsTrabalho: TTabSheet;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    dbeNomeEmpresa: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    cmbEmpresaUF: TDBComboBox;
    cmbEmpCidade: TDBLookupComboBox;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    tbsConjugue: TTabSheet;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    dbeCPFConjugue: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    TabSheet7: TTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label51: TLabel;
    dbeReferencia1: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    TabSheet8: TTabSheet;
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_RAZAO: TStringField;
    cdsConsultarCLI_FANTASIA: TStringField;
    cdsConsultarCLI_FONE1: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    cdsConsultarCLI_CLIFOR: TStringField;
    cdsConsultarCLI_TIPOPESSOA: TStringField;
    DBEdit1: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit34: TDBEdit;
    tbsRespEmp: TTabSheet;
    GroupBox4: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit9: TDBEdit;
    dbeCPFResponsavel: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label56: TLabel;
    DBEdit32: TDBEdit;
    Label10: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label29: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox2: TDBLookupComboBox;
    Label52: TLabel;
    Label54: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label55: TLabel;
    dbeDiaFatura: TDBEdit;
    Label57: TLabel;
    DBEdit33: TDBEdit;
    cdsConsultarCPF_CNPJ: TStringField;
    rbTipoPessoa: TRadioGroup;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    procedure BtAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbUFClienteExit(Sender: TObject);
    procedure cmbUFCobrancaExit(Sender: TObject);
    procedure cmbEmpresaUFExit(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNRCNPJEnter(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure rbTipoPessoaClick(Sender: TObject);
    procedure dbeNRCNPJExit(Sender: TObject);
    procedure cmbCidadeExit(Sender: TObject);
    procedure dbeDTNASCExit(Sender: TObject);
    procedure dbeDiaFaturaExit(Sender: TObject);
    procedure dbeDiaFaturaKeyPress(Sender: TObject; var Key: Char);
    procedure cdsConsultarCalcFields(DataSet: TDataSet);
    procedure BtCancelarClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure buscar(aCodigo : String);
    procedure Registro;
    procedure AbrirCidadeBairro();
    function ValidarCampos() : Boolean;
    Procedure Tipo_Pessoa(aTipo : String);
    Procedure FormatarTipo_Pessoa();
    Procedure Define_Pessoa();
  public
    { Public declarations }
  end;

var
  frmCadClientesFornecedores: TfrmCadClientesFornecedores;
  M_FLCLFO : Boolean;

implementation

uses uDMDados, uFuncoes, uFrmNEFMain;

{$R *.dfm}

{ TfrmCadClientesFornecedores }

procedure TfrmCadClientesFornecedores.AbrirCidadeBairro;
begin
     If not uFuncoes.Empty(dmDados.CdsClienteCLI_UFCLIENTE.AsString) Then
         dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsClienteCLI_UFCLIENTE.AsString);
     //
     {If not uFuncoes.Empty(dmDados.CdsClienteCLI_CIDADE.AsString) Then
        dmDados.AbrirBairroCidade(Dm.CdsClientesCID_CODIGO.AsInteger);}
     //
     If not uFuncoes.Empty(dmDados.CdsClienteCLI_END_COBRANCA_UF.AsString) Then
      begin
           dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsClienteCLI_END_COBRANCA_UF.AsString);
           {if  not uFuncoes.Empty(dm.CdsClientesCLI_END_COBRANCA_CIDADE.AsString) Then
              Dm.AbrirBairroCidadeNovo(Dm.cdsListaBairroCobranca, dm.CdsClientesCLI_END_COBRANCA_CIDADE.AsInteger);}
       End;
     //
     If not uFuncoes.Empty(dmDados.CdsClienteCLI_EMPRESA_UF.AsString) Then
      begin
           dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsClienteCLI_EMPRESA_UF.AsString);
       End;
       //
       dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
end;

procedure TfrmCadClientesFornecedores.buscar(aCodigo: String);
begin
      uFuncoes.FilterCDS(dmDados.CdsCliente, fsInteger, aCodigo);
      {With dmDados.CdsCliente do
       begin
            Active := False;
            Params[0].AsInteger := StrtoInt(aCodigo);
            Active := True;
       End;}
       //
       //FormataCampo();
       Define_Pessoa;
       FormatarTipo_Pessoa;
       dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
       AbrirCidadeBairro;
end;

{procedure TfrmCadClientesFornecedores.FormataCampo;
begin
     If (dmDados.cdsClienteCLI_TIPOPESSOA.AsString = 'F') Then
          dmDados.CdsClienteCLI_CGC.EditMask := '999.999.999-99;0'
     Else
          dmDados.CdsClienteCLI_CGC.EditMask := '99.999.999/9999-99;0';
end;}

procedure TfrmCadClientesFornecedores.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     ufuncoes.RefreshCDS(dmDados.cdsConfig);
     //tratabotoes;
     With dmDados.CdsCliente do
     begin
          Append;
          FieldByName('CLI_CODIGO').AsInteger    := dmDados.CdsConfigCFG_CLIENTE.AsInteger+1;
          FieldByName('CLI_DATACAD').AsDateTime  := Date();
          FieldByName('CLI_TIPOPESSOA').AsString := 'F';
          FieldByName('CLI_CLIFOR').AsString     := 'C';
          FieldByName('CLI_DATACAD').AsDateTime  := Date();
          dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
          //FormataCampo();
          //
          PageControl2.ActivePageIndex := 0;
          dbeNRCNPJ.SetFocus;
     End;
end;

procedure TfrmCadClientesFornecedores.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_CLIENTE.AsInteger > 0) Then
      begin
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, InttoStr(uFuncoes.mvcodigomaxClienteFornecedor('CLI_CODIGO','CLIENTES', 'C')));
      End
     Else
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, '-1');
     //
     Define_Pessoa();
     FormatarTipo_Pessoa;
     Tipo_Pessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
     dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
     //FormataCampo();
     PageControl1.ActivePageIndex := 0;
end;

function TfrmCadClientesFornecedores.ValidarCampos: Boolean;
begin
     Result := False;
     // Razão Social
     If uFuncoes.Empty(dbeRazao.Text) Then
       Begin
           Application.MessageBox('Digite a Razão Social.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeRazao.SetFocus;
           Exit;
       End;
       //
       If (rbTipoPessoa.ItemIndex = -1) Then
        begin
           Application.MessageBox('Selecione o tipo de pessoa.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           rbTipoPessoa.SetFocus;
           Exit;
        End;
       // CNPJ
       If uFuncoes.Empty(uFuncoes.RemoveChar(dbeNRCNPJ.Text)) Then
        begin
           Application.MessageBox('Digite o CNPJ/CPF.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRCNPJ.SetFocus;
           Exit;
        End;
     //
     Result := True;
end;

procedure TfrmCadClientesFornecedores.FormShow(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmDados.cdsListaCidades);
     uFuncoes.RefreshCDS(dmDados.cdsListaPaises);
     uFuncoes.RefreshCDS(dmDados.cdsListaDocumentos);
     uFuncoes.RefreshCDS(dmDados.cdsListaTipoCliente);
     uFuncoes.RefreshCDS(dmDados.cdsListaAtividades);
     uFuncoes.RefreshCDS(dmDados.cdsListaSituacoaClie);
     //
     REGISTRO;
     //
     PageControl2.ActivePageIndex := 0;
     //
     If (dmDados.cdsCliente.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadClientesFornecedores.cmbUFClienteExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If not uFuncoes.Empty(cmbUFCliente.Text) Then
             dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsClienteCLI_UFCLIENTE.AsString);
end;

procedure TfrmCadClientesFornecedores.cmbUFCobrancaExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If not uFuncoes.Empty(cmbUFCobranca.Text) Then
             dmDados.AbrirCidadeUF(dmDados.cdsListaCidCobraca, dmDados.CdsClienteCLI_END_COBRANCA_UF.AsString);
end;

procedure TfrmCadClientesFornecedores.cmbEmpresaUFExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If not uFuncoes.Empty(cmbEmpresaUF.Text) Then
             dmDados.AbrirCidadeUF(dmDados.cdsListaCidEmpresa, dmDados.CdsClienteCLI_EMPRESA_UF.AsString);
end;

procedure TfrmCadClientesFornecedores.BtEditarClick(Sender: TObject);
begin
  inherited;
 If not (dsCadastro.DataSet.IsEmpty)
    and  (dsCadastro.DataSet.RecordCount > 0) Then
    begin
        dmDados.CdsCliente.Edit;
        If (PageControl2.ActivePageIndex = 0) Then
           dbeRazao.SetFocus;
        If (PageControl2.ActivePageIndex = 1) Then
           dbeCEP.SetFocus;
        If (PageControl2.ActivePageIndex = 2) Then
           dbeNomeEmpresa.SetFocus;
        If (PageControl2.ActivePageIndex = 3) Then
           dbeCPFConjugue.SetFocus;
        If (PageControl2.ActivePageIndex = 4) Then
           dbeReferencia1.SetFocus;
        //
    End;
end;

procedure TfrmCadClientesFornecedores.BtExcluirClick(Sender: TObject);
begin
  inherited;
   If not (dsCadastro.DataSet.IsEmpty)
      and (dsCadastro.DataSet.RecordCount > 0) Then
   begin
      if application.MessageBox('Deseja excluir este cliente','Exclusão de registro',
       MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = id_yes then
        begin
           dmDados.CdsCliente.Delete;
           dmDados.CdsCliente.ApplyUpdates(0);
           //
           Registro;
        end
        else
           showmessage('Não ha registro a ser excluido');
   End;
end;

procedure TfrmCadClientesFornecedores.BtGravarClick(Sender: TObject);
Var
   M_HOMOVI : String;
    iUsuario : Integer;
begin
      If (rbTipoPessoa.ItemIndex < 0) Then
      Begin
           Application.MessageBox('Selecione o tipo de pessoa!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           rbTipoPessoa.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeNRCNPJ.Text) Then
      Begin
           Application.MessageBox('Digite o CPF/CNPJ!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRCNPJ.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeRazao.Text) Then
      Begin
           Application.MessageBox('Digite a razão social/nome!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeRazao.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeNMCLIE.Text) Then
      Begin
           Application.MessageBox('Digite o nome do fantasia/apelido!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNMCLIE.SetFocus;
           Exit;
      End;

   //
   {   If uFuncoes.Empty(dbeEndereco.Text) Then
      Begin
           Application.MessageBox('Digite o endereço do cliente!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeEndereco.SetFocus;
           Exit;
      End;
   //
      If uFuncoes.Empty(cmbUFCliente.Text) Then
      Begin
           Application.MessageBox('Digite a UF do cliente!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbUFCliente.SetFocus;
           Exit;
      End;
   //
      If uFuncoes.Empty(dbeNRCNPJ.Text) Then
      Begin
           if (cmbTPPESSOA.ItemIndex = 0) Then
              Application.MessageBox('Digite o CPF do cliente!!!','ATENÇÃO',  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL)
           Else
              Application.MessageBox('Digite o CNPJ do cliente!!!','ATENÇÃO',  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           dbeNRCNPJ.SetFocus;
           Exit;
      End;}
     //
     iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
     //
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
     begin
          M_HOMOVI := Copy(TimetoStr(Time),1,5);
          //
          if dsCadastro.DataSet.State in [dsinsert] then
          begin
               uFuncoes.RefreshCDS(dmDados.cdsConfig);
               dmDados.CdsConfig.Edit;
               dmDados.CdsConfigCFG_CLIENTE.Value := dmDados.CdsConfigCFG_CLIENTE.Value+1;
               dmDados.CdsClienteCLI_CODIGO.Value := dmDados.CdsConfigCFG_CLIENTE.Value;
               // Usuário que incluiu
               DmDados.CdsClienteCLI_USUARIO_INC.AsInteger := iUsuario;
               DmDados.CdsClienteCLI_DATA_INC.AsDateTime := Date();
               DmDados.CdsClienteCLI_HORA_INC.AsString   := M_HOMOVI;
               //
               dmDados.CdsConfig.ApplyUpdates(0);
          end;
           //
           If (dsCadastro.DataSet.State = dsEdit) Then
             begin
                // Usuário que alterou
                DmDados.CdsClienteCLI_USUARIO_ALT.AsInteger := iUsuario;
                DmDados.CdsClienteCLI_DATA_ALT.AsDateTime := Date;
                DmDados.CdsClienteCLI_HORA_ALT.AsString   := M_HOMOVI;
             End;
           //
           if (dmDados.cdsClienteCLI_CLIFOR.AsString = 'F') then
              dmDados.cdsClienteCLI_FLCLIFOR.AsString := 'S';
           //    Gravar
           dmDados.CdsCliente.Post;
           dmDados.CdsCliente.ApplyUpdates(0);
           //
           //Dm.Contatos_Cliente(dm.CdsClientesCLI_CODIGO.AsInteger);
           //Tipo_Pessoa;
           {Dm.RefreshCDS(cdsConsClientes);
           Dm.RefreshCDS(dmDados.cdsMatriz);}
     End;
  inherited;
end;

procedure TfrmCadClientesFornecedores.dbeIdentidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmCadClientesFornecedores.dbeNRCNPJEnter(Sender: TObject);
Var
  aTipo : String;
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsedit] ) Then
      begin
           FormatarTipo_Pessoa;
           {Case rbTipoPessoa.ItemIndex of
             0 : aTipo := 'F';
             1 : aTipo := 'J';
           End;
           dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);}
      End;
           //FormataCampo();
end;

procedure TfrmCadClientesFornecedores.rgConsultarClick(Sender: TObject);
begin
//  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código';
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Fantasia/Apelido';
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'Nome/Razão Social';
      edtConsultar.Clear;
    end;
    3:
    begin
      lblConsultar.Caption := 'CPF/CNPJ';
      edtConsultar.Clear;
    end;
  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

procedure TfrmCadClientesFornecedores.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
   If (key = #37) Then
    key :=#0;
  //
  if (Key =#13) and not uFuncoes.Empty(edtConsultar.Text) then
  begin
    key :=#0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
  //
  if (rgConsultar.ItemIndex = 0) or (rgConsultar.ItemIndex = 3) then
  begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      key:=#0;
    end;
  end;

end;

procedure TfrmCadClientesFornecedores.edtConsultarChange(Sender: TObject);
begin
  inherited;
     btnConsultar.Enabled := (edtConsultar.Text <> '');
     If not uFuncoes.Empty(edtConsultar.Text) Then
     Begin
          with cdsConsultar do
          begin
               Close;
               CommandText := 'Select "CLI_CODIGO", "CLI_RAZAO", "CLI_FANTASIA", "CLI_FONE1", "CLI_CGC", "CLI_CLIFOR", "CLI_TIPOPESSOA" from "CLIENTES"';
               case rgConsultar.ItemIndex of
                 0: CommandText := CommandText + ' where "CLI_CODIGO" = ' + edtConsultar.Text;
                 1: CommandText := CommandText + ' where UPPER("CLI_FANTASIA") like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
                 2: CommandText := CommandText + ' where UPPER("CLI_RAZAO") like ' + QuotedStr(AnsiUpperCase(edtConsultar.Text) + '%');
                 3: CommandText := CommandText + ' where "CLI_CGC" = ' + edtConsultar.Text;
               end;
               CommandText := CommandText + ' and ("CLI_CLIFOR" = '+QuotedStr('C') +')';
               CommandText := CommandText + 'order by "CLI_FANTASIA"';
               Open;
          end;
     End;
     //
     If uFuncoes.Empty(edtConsultar.Text) Then
       cdsConsultar.Close;
end;

procedure TfrmCadClientesFornecedores.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarCLI_CODIGO.AsString);
       Tipo_Pessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadClientesFornecedores.Tipo_Pessoa(aTipo: String);
begin
     if (aTipo = 'F') Then
      Begin
            tbsConjugue.TabVisible := True;
            tbsTrabalho.TabVisible := True;
            tbsRespEmp.TabVisible  := False;
            //
            lblEstCivil.Visible    := True;
            lblUfemissor.Visible   := True;
            lblOrgao.Visible       := True;
            //
            lblIdentedade.Caption  := 'Identidade';
            lblDataAniversario.Caption := 'Data de aniversário';
            dbeOrgao.Visible       := True;
            cmbUFEMISSOR.Visible   := True;
            cmbEstCivil.Visible    := True;
            //
            lblCPFCNPJ.Caption     := 'CPF';
            lblRazao.Caption       := 'Nome';
            lblFantasia.Caption    := 'Apelido';
      End
      Else
      begin
            tbsConjugue.TabVisible := False;
            tbsTrabalho.TabVisible := False;
            tbsRespEmp.TabVisible  := True;
            //
            lblIdentedade.Caption  := 'Inscrição Estadual';
            lblDataAniversario.Caption := 'Data de fundação';
            lblEstCivil.Visible    := False;
            lblUfemissor.Visible   := False;
            lblOrgao.Visible       := False;
            //
            dbeOrgao.Visible       := False;
            cmbUFEMISSOR.Visible   := False;
            cmbEstCivil.Visible    := False;
            //
            lblCPFCNPJ.Caption     := 'CNPJ';
            lblRazao.Caption       := 'Razão Social';
            lblFantasia.Caption    := 'Nome Fantasia';
      End;
end;

procedure TfrmCadClientesFornecedores.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
   { If (dsCadastro.DataSet.Active)
     and not (dsCadastro.DataSet.IsEmpty) Then
         Tipo_Pessoa(dsCadastro.DataSet.FieldByName('CLI_TIPOPESSOA').AsString);}
    cmbUFCliente.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
    cmbUFCobranca.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
    cmbEmpresaUF.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
    //
    rbTipoPessoa.Enabled  := dsCadastro.DataSet.State in [dsInsert, dsEdit];
    dbeNRCNPJ.Enabled     := dsCadastro.DataSet.State in [dsInsert];
end;

procedure TfrmCadClientesFornecedores.rbTipoPessoaClick(Sender: TObject);
Var
  aTipo : String;
begin
  inherited;
    If (dsCadastro.DataSet.Active)
     and not (dsCadastro.DataSet.IsEmpty)
     and (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      begin
           //
           Case rbTipoPessoa.ItemIndex of
             0 : aTipo := 'F';
             1 : aTipo := 'J';
           End;
           FormatarTipo_Pessoa;
           Tipo_Pessoa(atipo);
           dmDados.FormataCampoTipoPessoa(aTipo);
           //
           PageControl2.ActivePageIndex := 0;
           dbeNRCNPJ.SetFocus;
           //
           If (dsCadastro.DataSet.State in [dsInsert]) Then
              dbeNRCNPJ.Clear

      End;
end;

procedure TfrmCadClientesFornecedores.dbeNRCNPJExit(Sender: TObject);
Var
   iCodigo : Integer;
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
     and not uFuncoes.Empty(dbeNRCNPJ.Text) Then
         // If (dmDados.CdsClienteCLI_TIPOPESSOA.AsString = 'F') Then
         If (rbTipoPessoa.ItemIndex = 0) Then
          Begin
            Try
              If not (uFuncoes.CPF(dbeNRCNPJ.Text)) Then
              Begin
                  MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                  dbeNRCNPJ.Clear;
                  dbeNRCNPJ.SetFocus;
                  Exit;
              End
              Else
              begin
                   //If (dmDados.CdsCliente.State in [dsInsert]) and (uFuncoes.GetVerificaCNPJ(dbeNRCNPJ.Text, 'C')) Then
                   If (dmDados.CdsCliente.State in [dsInsert]) and (dmDados.ProcurarValor(dbeNRCNPJ.Text, 'CLI_CGC', 'CLIENTES')) Then
                    begin
                         MessageDlg('CPF já cadastrado.', mtInformation, [mbOk], 0);
                         //
                         dbeNRCNPJ.SetFocus;
                         dbeNRCNPJ.Clear;
                         Exit;
                    End;
              End;
            Except
              dbeNRCNPJ.SetFocus;
              dbeNRCNPJ.Clear;
            End;
          End
          Else
          Begin
            try
              If not (uFuncoes.CGC(dbeNRCNPJ.Text)) Then
              Begin
                  MessageDlg('CNPJ inválido!!!', mtInformation, [mbOk], 0);
                  dbeNRCNPJ.Clear;
                  dbeNRCNPJ.SetFocus;
                  Exit;
              End
              Else
              begin
                   //If (dmDados.CdsCliente.State in [dsInsert]) and (uFuncoes.GetVerificaCNPJ(dbeNRCNPJ.Text, 'C')) Then
                   If (dmDados.CdsCliente.State in [dsInsert]) and (dmDados.ProcurarValor(dbeNRCNPJ.Text, 'CLI_CGC', 'CLIENTES')) Then
                    begin
                         MessageDlg('CNPJ já cadastrado.', mtInformation, [mbOk], 0);
                         iCodigo := dmDados.GetClienteFornCPFCNPJ(uFuncoes.RemoveChar(dbeNRCNPJ.Text));
                         BtCancelarClick(Self);
                         buscar(IntToStr(iCodigo));
                         {dbeNRCNPJ.SetFocus;
                         dbeNRCNPJ.Clear;}
                         Exit;
                    End;
              End;
            Except
              dbeNRCNPJ.SetFocus;
              dbeNRCNPJ.Clear;
            End;
         End;
end;

procedure TfrmCadClientesFornecedores.cmbCidadeExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If uFuncoes.Empty(cmbUFCliente.Text) Then
          begin
               cmbUFCliente.SetFocus;
               Exit;
          End;
end;

procedure TfrmCadClientesFornecedores.dbeDTNASCExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and (dbeDTNASC.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTNASC.Text);
              dbeDTNASC.Text := DatetoStr(dbeDTNASC.Date);
              //
          except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTNASC.Clear;
                     dbeDTNASC.SetFocus;
                End;
          end;
     End;

end;

procedure TfrmCadClientesFornecedores.dbeDiaFaturaExit(Sender: TObject);
begin
  inherited;
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
        And not uFuncoes.Empty(dbeDiaFatura.Text) Then
         begin
              If (StrtoInt(dbeDiaFatura.Text) < 1 )
                or (StrtoInt(dbeDiaFatura.Text) > 31) Then
                begin
                     Application.MessageBox(PChar('Dia inválido, tente outro.'),
                        'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                     dbeDiaFatura.Clear;
                     dbeDiaFatura.SetFocus;
                     Exit;
                End;
         End;
end;

procedure TfrmCadClientesFornecedores.dbeDiaFaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmCadClientesFornecedores.cdsConsultarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
     If (cdsConsultarCLI_TIPOPESSOA.AsString = 'F') Then
         cdsConsultarCPF_CNPJ.AsString := uFuncoes.FormataCPF(cdsConsultarCLI_CGC.AsString)
     Else
         cdsConsultarCPF_CNPJ.AsString := uFuncoes.FormataCNPJ(cdsConsultarCLI_CGC.AsString);
end;

procedure TfrmCadClientesFornecedores.FormatarTipo_Pessoa;
Var
  aTipo : String;
begin
  inherited;
      //
     If (dsCadastro.DataSet.State in [dsInsert, dsedit] ) Then
      begin
           Case rbTipoPessoa.ItemIndex of
             0 : aTipo := 'F';
             1 : aTipo := 'J';
           End;
           dmDados.FormataCampoTipoPessoa(aTipo);
      End;

end;

procedure TfrmCadClientesFornecedores.Define_Pessoa;
begin
     If (dmDados.cdsClienteCLI_TIPOPESSOA.AsString = 'F') Then
          rbTipoPessoa.ItemIndex := 0
     Else
          rbTipoPessoa.ItemIndex := 1;
end;

procedure TfrmCadClientesFornecedores.BtCancelarClick(Sender: TObject);
begin
  inherited;
      Define_Pessoa();
      FormatarTipo_Pessoa;
end;

end.

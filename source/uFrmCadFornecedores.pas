unit uFrmCadFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TfrmCadFornecedoresNew = class(TfrmCadastro)
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_RAZAO: TStringField;
    cdsConsultarCLI_FANTASIA: TStringField;
    cdsConsultarCLI_FONE1: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    cdsConsultarCLI_CLIFOR: TStringField;
    cdsConsultarCLI_TIPOPESSOA: TStringField;
    Label3: TLabel;
    dbeNRCNPJ: TDBEdit;
    lblRazao: TLabel;
    dbeRazao: TDBEdit;
    Label4: TLabel;
    dbeNMCLIE: TDBEdit;
    Label12: TLabel;
    dbeCEP: TDBEdit;
    Label13: TLabel;
    dbeEndereco: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    cmbUFCliente: TDBComboBox;
    Label16: TLabel;
    cmbCidade: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label28: TLabel;
    DBDateEdit1: TDBDateEdit;
    lblIdentedade: TLabel;
    DBEdit4: TDBEdit;
    Label41: TLabel;
    dbeReferencia1: TDBEdit;
    Label42: TLabel;
    DBEdit26: TDBEdit;
    Label43: TLabel;
    DBEdit27: TDBEdit;
    Label51: TLabel;
    DBEdit28: TDBEdit;
    Label2: TLabel;
    cmbBanco: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    dbeConta: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    procedure edtConsultarChange(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeNRCNPJExit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure cmbUFClienteExit(Sender: TObject);
    procedure cmbCidadeExit(Sender: TObject);
    procedure dbeContaExit(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    //procedure tratabotoes;
    procedure buscar(aCodigo : String);
    procedure Registro;
    procedure AbrirCidadeBairro();
    //Procedure FormataCampo();
    function ValidarCampos() : Boolean;
  public
    { Public declarations }
  end;

var
  frmCadFornecedoresNew: TfrmCadFornecedoresNew;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes;

{$R *.dfm}

procedure TfrmCadFornecedoresNew.edtConsultarChange(Sender: TObject);
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
               CommandText := CommandText + ' and ("CLI_CLIFOR" = '+QuotedStr('F') +')';
               CommandText := CommandText + 'order by "CLI_FANTASIA"';
               Open;
          end;
     End;
     //
     If uFuncoes.Empty(edtConsultar.Text) Then
       cdsConsultar.Close;
end;

procedure TfrmCadFornecedoresNew.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     ufuncoes.RefreshCDS(dmDados.cdsConfig);
     //
     With dmDados.CdsCliente do
     begin
          Append;
          FieldByName('CLI_CODIGO').AsInteger    := dmDados.CdsConfigCFG_CLIENTE.AsInteger+1;
          FieldByName('CLI_DATACAD').AsDateTime  := Date();
          FieldByName('CLI_TIPOPESSOA').AsString := 'J';
          FieldByName('CLI_CLIFOR').AsString     := 'F';
          FieldByName('CLI_DATACAD').AsDateTime  := Date();
          { dmDados.CdsCliente.FieldByName('CLI_TIPOPESSOA').AsString := 'J';
           dmDados.CdsCliente.FieldByName('CLI_CLIFOR').AsString     := 'F';}
          //
          dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
          dbeNRCNPJ.SetFocus;
     End;
end;

procedure TfrmCadFornecedoresNew.BtEditarClick(Sender: TObject);
begin
  inherited;
  If not (dsCadastro.DataSet.IsEmpty)
     and  (dsCadastro.DataSet.RecordCount > 0) Then
     begin
         dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
         dmDados.CdsCliente.Edit;
     End;
end;

procedure TfrmCadFornecedoresNew.BtExcluirClick(Sender: TObject);
begin
  inherited;
   If not (dsCadastro.DataSet.IsEmpty)
      and (dsCadastro.DataSet.RecordCount > 0) Then
   begin
      if application.MessageBox('Deseja excluir este fornecedor.','Exclusão de registro',
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

procedure TfrmCadFornecedoresNew.AbrirCidadeBairro;
begin

end;

procedure TfrmCadFornecedoresNew.buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmDados.CdsCliente, fsInteger, aCodigo);
end;

procedure TfrmCadFornecedoresNew.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_CLIENTE.AsInteger > 0) Then
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, InttoStr(uFuncoes.mvcodigomaxClienteFornecedor('CLI_CODIGO','CLIENTES', 'F')))
     Else
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, '-1');
     //
end;

function TfrmCadFornecedoresNew.ValidarCampos: Boolean;
begin

end;

procedure TfrmCadFornecedoresNew.FormShow(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmDados.cdsListaBancos);
     REGISTRO;
     dmDados.FormataCampoTipoPessoa(dmDados.cdsClienteCLI_TIPOPESSOA.AsString);
     //
     If (dmDados.cdsCliente.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadFornecedoresNew.BtGravarClick(Sender: TObject);
Var
   M_HOMOVI : String;
    iUsuario : Integer;
begin
      If uFuncoes.Empty(dbeNRCNPJ.Text) Then
      Begin
           Application.MessageBox('Digite o CNPJ do fornecedor.',
              'ATENÇÃO',  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           dbeNRCNPJ.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeRazao.Text) Then
      Begin
           Application.MessageBox('Digite a razão social!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeRazao.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeNMCLIE.Text) Then
      Begin
           Application.MessageBox('Digite o nome fantasia!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNMCLIE.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeEndereco.Text) Then
      Begin
           Application.MessageBox('Digite o endereço do fornecedor!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeEndereco.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(cmbUFCliente.Text) Then
      Begin
           Application.MessageBox('Digite a UF do fornecedor!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbUFCliente.SetFocus;
           Exit;
      End;
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
           if (dmDados.cdsClienteCLI_CLIFOR.AsString = 'C') then
              dmDados.cdsClienteCLI_FLCLIFOR.AsString := 'S';
           //    Gravar
           dmDados.CdsCliente.Post;
           dmDados.CdsCliente.ApplyUpdates(0);
           //
     End;
  inherited;
end;

procedure TfrmCadFornecedoresNew.dbeNRCNPJExit(Sender: TObject);
Var
  iCodigo : Integer;
begin
  inherited;
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       And not uFuncoes.Empty(dbeNRCNPJ.Text) Then
       begin
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
                   If (dmDados.CdsCliente.State in [dsInsert]) and (dmDados.ProcurarValor(dbeNRCNPJ.Text, 'CLI_CGC', 'CLIENTES')) Then
                    begin
                         MessageDlg('CNPJ já cadastrado.', mtInformation, [mbOk], 0);
                         iCodigo := dmDados.GetClienteFornCPFCNPJ(uFuncoes.RemoveChar(dbeNRCNPJ.Text));
                         BtCancelarClick(Self);
                         buscar(IntToStr(iCodigo));
                         //
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

procedure TfrmCadFornecedoresNew.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarCLI_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadFornecedoresNew.rgConsultarClick(Sender: TObject);
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
      lblConsultar.Caption := 'Fantasia';
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'Razão Social';
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

procedure TfrmCadFornecedoresNew.cmbUFClienteExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If not uFuncoes.Empty(cmbUFCliente.Text) Then
             dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsClienteCLI_UFCLIENTE.AsString);
end;

procedure TfrmCadFornecedoresNew.cmbCidadeExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If uFuncoes.Empty(cmbUFCliente.Text) Then
          begin
               cmbUFCliente.SetFocus;
               Exit;
          End;
end;

procedure TfrmCadFornecedoresNew.dbeContaExit(Sender: TObject);
begin
  inherited;
      if (dsCadastro.DataSet.State in [dsInsert, dsEdit])
        and not uFuncoes.Empty(dbeConta.Text) Then
          dbeConta.Text := uFuncoes.StrZero(dbeConta.Text,10);
end;

end.

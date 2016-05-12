unit uFrmCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TfrmCadClientes = class(TfrmCadastro)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dbeRazao: TDBEdit;
    Label3: TLabel;
    cmbTipoDoc: TDBLookupComboBox;
    dbeNumDoc: TDBEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label15: TLabel;
    cmbUF: TDBComboBox;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_NOMERAZAO: TStringField;
    cdsConsultarCLI_TPDOCUMENTO: TIntegerField;
    cdsConsultarCLI_NRDOCUMENTO: TStringField;
    cdsConsultarCLI_CGCCPF: TStringField;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoDocExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure cdsConsultarCalcFields(DataSet: TDataSet);
    procedure dbeRazaoExit(Sender: TObject);
    procedure dbeNumDocExit(Sender: TObject);
    procedure cmbUFExit(Sender: TObject);
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
  frmCadClientes: TfrmCadClientes;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes;

{$R *.dfm}

{ TfrmCadClientes }

procedure TfrmCadClientes.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, aCodigo);
end;

procedure TfrmCadClientes.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_CLIENTE.AsInteger > 0) Then
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, InttoStr(uFuncoes.mvcodigo('CLI_CODIGO','CLIENTES')))
     Else
         uFuncoes.FilterCDS(DMDados.cdsCliente, fsInteger, '-1');
     //
     PageControl1.ActivePageIndex := 0;
end;

function TfrmCadClientes.ValidarCampos: Boolean;
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
       If uFuncoes.Empty(cmbTipoDoc.Text) Then
        begin
           Application.MessageBox('Selecione o tipo de documento.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbTipoDoc.SetFocus;
           Exit;
        End;
       // CNPJ
       If uFuncoes.Empty(uFuncoes.RemoveChar(dbeNumDoc.Text)) Then
        begin
           Application.MessageBox('Digite o CNPJ/CPF.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNumDoc.SetFocus;
           Exit;
        End;
     //
     Result := True;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmDados.cdsListaCidades);
     uFuncoes.RefreshCDS(dmDados.cdsListaPaises);
     uFuncoes.RefreshCDS(dmDados.cdsListaDocumentos);
     //
     REGISTRO;
     //
     If (dmDados.cdsCliente.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadClientes.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          With dsCadastro.DataSet do
            begin
                 Append;
                 FieldByName('CLI_CODIGO').AsInteger  :=
                    DMDados.cdsConfigCFG_CLIENTE.AsInteger + 1;
                 FieldByName('CLI_TPDOCUMENTO').AsInteger := 1;
                 FieldByName('CLI_NRDOCUMENTO').EditMask  := '##.###.###/####-##;0;_';
            End;
            //
            dbeRazao.SetFocus;
     End;
end;

procedure TfrmCadClientes.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           dsCadastro.DataSet.Edit;
           dbeRazao.setfocus;
      End;
end;

procedure TfrmCadClientes.BtExcluirClick(Sender: TObject);
Var
     iUsuario : Integer;
     aCodigo  : String;
begin
   inherited;
   if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
   begin
       aCodigo := uFuncoes.StrZero(dmDados.cdsClienteCLI_CODIGO.AsString, 7);
       iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       If Application.MessageBox('Deseja excluir este cliente?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            dmDados.cdsCliente.Delete;
            dmDados.cdsCliente.ApplyUpdates(0);
            //
            If not (dmDados.IncluirTarefaUsuario(iUsuario,
               'Excluiu Cliente : '+aCodigo+' *F*')) Then
                 ShowMessage('Erro ao adicionar tarefa do usuário.');
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadClientes.BtGravarClick(Sender: TObject);
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
                 dmDados.cdsConfigCFG_CLIENTE.AsInteger :=
                   dmDados.cdsConfigCFG_CLIENTE.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 dmDados.cdsClienteCLI_CODIGO.AsInteger :=
                        dmDados.cdsConfigCFG_CLIENTE.AsInteger;
                 dmDados.cdsClienteCLI_DATACAD.AsDateTime     := Date();
                 dmDados.cdsClienteCLI_HORA_INC.AsString      := dmDados.GetHora();
                 dmDados.cdsClienteCLI_USUARIO_INC.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Cliente : '+uFuncoes.StrZero(dmDados.cdsClienteCLI_CODIGO.AsString,7)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End
            Else
            begin
                 dmDados.cdsClienteCLI_DATA_ALT.AsDateTime := Date();
                 dmDados.cdsClienteCLI_HORA_ALT.AsString   := dmDados.GetHora();
                 dmDados.cdsClienteCLI_USUARIO_ALT.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Cliente : '+uFuncoes.StrZero(dmDados.cdsClienteCLI_CODIGO.AsString,7)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End;
          //
          dsCadastro.DataSet.Post;
          DMDados.cdsCliente.ApplyUpdates(0);
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
  inherited;
end;

procedure TfrmCadClientes.rgConsultarClick(Sender: TObject);
begin
//  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código:';
      edtConsultar.MaxLength := 7;
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Nome/Razão Social:';
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'CNPJ/CPF:';
      edtConsultar.Clear;
    end;
  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

procedure TfrmCadClientes.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  //inherited;
  if rgConsultar.ItemIndex <> 1 then
  begin
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
  end;
  //
  If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
         Key := #0;
         If (btnConsultar.Enabled = True) Then
            btnConsultar.SetFocus;
    End;
end;

procedure TfrmCadClientes.cmbTipoDocExit(Sender: TObject);
begin
  inherited;
     if (dmDados.cdsClienteCLI_TIPOPESSOA.AsString = 'J') Then
         dmDados.cdsClienteCLI_CGC.EditMask := '##.###.###/####-##;0;_'
     Else
         dmDados.cdsClienteCLI_CGC.EditMask := '###.###.###-##;0;_';
end;

procedure TfrmCadClientes.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "CLI_CODIGO", "CLI_NOMERAZAO", "CLI_TPDOCUMENTO", "CLI_NRDOCUMENTO" from "CLIENTES" ';
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
                0: Texto := Texto +'where ("CLI_CODIGO" = '+QuotedStr(edtConsultar.Text)+') ';
                1: Texto := Texto +'where (UPPER("CLI_NOMERAZAO") like '+QuotedStr(edtConsultar.Text+'%')+') ';
                2: Texto := Texto +'where (UPPER("CLI_NRDOCUMENTO") like '+QuotedStr(edtConsultar.Text+'%')+') ';
            end;
            //
            Texto := Texto +' order by "CLI_NOMERAZAO"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadClientes.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarCLI_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadClientes.cdsConsultarCalcFields(DataSet: TDataSet);
begin
  inherited;
      If (cdsConsultarCLI_TPDOCUMENTO.AsInteger = 2) Then
          cdsConsultarCLI_CGCCPF.AsString := uFuncoes.FormataCPF(cdsConsultarCLI_NRDOCUMENTO.AsString)
      Else
          cdsConsultarCLI_CGCCPF.AsString := uFuncoes.FormataCNPJ(cdsConsultarCLI_NRDOCUMENTO.AsString);
end;

procedure TfrmCadClientes.dbeRazaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert])
       and not uFuncoes.Empty(dbeRazao.Text) Then
        if (dmDados.ProcurarValor(dbeRazao.Text, 'CLI_NOMERAZAO', 'CLIENTES')) Then
          begin
              Application.MessageBox('Nome/Razão Social já cadastrada.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeRazao.SetFocus;
              Exit;
          End;
end;

procedure TfrmCadClientes.dbeNumDocExit(Sender: TObject);
begin
  inherited;
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) and
         not uFuncoes.Empty(dbeNumDoc.Text) Then
        begin
            If (dmDados.cdsClienteCLI_TIPOPESSOA.AsString = 'J') Then
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
        End;
      //
      If (dsCadastro.DataSet.State in [dsInsert]) and
         not uFuncoes.Empty(dbeNumDoc.Text) Then
        begin
           // Verificar se existe CNPJ no banco
           If (dmDados.ProcurarValor(dbeNumDoc.Text,'CLI_NRDOCUMENTO', 'CLIENTES')) Then
           begin
                Application.MessageBox(PChar('CNPJ/CPF já cadastro.'),
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeNumDoc.SetFocus;
                dbeNumDoc.Clear;
                Exit;
           End;
        End;
end;

procedure TfrmCadClientes.cmbUFExit(Sender: TObject);
begin
  inherited;
     if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
      if not uFuncoes.Empty(cmbUF.Text) Then
         dmDados.AbrirCidade(cmbUF.Text);
end;

end.

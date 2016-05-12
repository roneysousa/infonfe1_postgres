unit uFrmCadForn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TfrmCadFornecedores = class(TfrmCadastro)
    Label2: TLabel;
    dbeRazao: TDBEdit;
    Label3: TLabel;
    dbeFantasia: TDBEdit;
    Label4: TLabel;
    dbeCNPJ: TDBEdit;
    cdsConsultarFOR_CODIGO: TIntegerField;
    cdsConsultarFOR_RAZAO: TStringField;
    cdsConsultarFOR_FANTASIA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeCNPJExit(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
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
  frmCadFornecedores: TfrmCadFornecedores;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes;

{$R *.dfm}

{ TfrmCadFornecedores }

procedure TfrmCadFornecedores.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsFornecedor, fsInteger, aCodigo);
end;

procedure TfrmCadFornecedores.Registro;
begin
    uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_FORNECEDOR.AsInteger > 0) Then
         uFuncoes.FilterCDS(DMDados.cdsFornecedor, fsInteger, InttoStr(uFuncoes.mvcodigo('FOR_CODIGO','FORNECEDORES')))
     Else
         uFuncoes.FilterCDS(DMDados.cdsFornecedor, fsInteger, '-1');
     //
     PageControl1.ActivePageIndex := 0;
end;

function TfrmCadFornecedores.ValidarCampos: Boolean;
begin
     Result := false;
     // Razão Social
     If uFuncoes.Empty(dbeRazao.Text) Then
       Begin
           Application.MessageBox('Digite a Razão Social.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeRazao.SetFocus;
           Exit;
       End;
       // CNPJ
       If uFuncoes.Empty(uFuncoes.RemoveChar(dbeCNPJ.Text)) Then
        begin
           Application.MessageBox('Digite o CNPJ.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCNPJ.SetFocus;
           Exit;
        End;
     //
     Result := true;
end;

procedure TfrmCadFornecedores.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmDados.cdsFornecedor.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadFornecedores.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          With dsCadastro.DataSet do
            begin
                 Append;
                 FieldByName('FOR_CODIGO').AsInteger  :=
                    DMDados.cdsConfigCFG_FORNECEDOR.AsInteger + 1;
            End;
            //
            dbeRazao.SetFocus;
     End;
end;

procedure TfrmCadFornecedores.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           dsCadastro.DataSet.Edit;
           dbeRazao.setfocus;
      End;
end;

procedure TfrmCadFornecedores.BtExcluirClick(Sender: TObject);
Var
     iUsuario : Integer;
     aCodigo  : String;
begin
   inherited;
   if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
   begin
       aCodigo := uFuncoes.StrZero(dmDados.cdsFornecedorFOR_CODIGO.AsString, 5)+ ' - '+
                  dmDados.cdsFornecedorFOR_RAZAO.AsString;
       iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       If Application.MessageBox('Deseja excluir este cliente?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            dmDados.cdsFornecedor.Delete;
            dmDados.cdsFornecedor.ApplyUpdates(0);
            //
            If not (dmDados.IncluirTarefaUsuario(iUsuario,
               'Excluiu Fornecedor : '+aCodigo+' *F*')) Then
                 ShowMessage('Erro ao adicionar tarefa do usuário.');
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadFornecedores.BtGravarClick(Sender: TObject);
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
                 dmDados.cdsConfigCFG_FORNECEDOR.AsInteger :=
                   dmDados.cdsConfigCFG_FORNECEDOR.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 dmDados.cdsFornecedorFOR_CODIGO.AsInteger :=
                     dmDados.cdsConfigCFG_FORNECEDOR.AsInteger;
                 //
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Fornecedor : '+uFuncoes.StrZero(dmDados.cdsFornecedorFOR_CODIGO.AsString,5)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End
            Else
            begin
                 //
                 If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Fornecedor : '+uFuncoes.StrZero(dmDados.cdsFornecedorFOR_CODIGO.AsString,5)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End;
          //
          dsCadastro.DataSet.Post;
          DMDados.cdsFornecedor.ApplyUpdates(0);
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

procedure TfrmCadFornecedores.dbeCNPJExit(Sender: TObject);
begin
  inherited;
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) and
         not uFuncoes.Empty(dbeCNPJ.Text) Then
        begin
               // Verificar validade do CNPJ
               If not uFuncoes.CGC(dbeCNPJ.Text) and (Length(dbeCNPJ.Text) = 14) Then
                begin
                    Application.MessageBox(PChar('CNPJ inválido.'),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    dbeCNPJ.SetFocus;
                    Exit;
                End;
        End;
      //
      If (dsCadastro.DataSet.State in [dsInsert]) and
         not uFuncoes.Empty(dbeCNPJ.Text) Then
        begin
           // Verificar se existe CNPJ no banco
           If (dmDados.ProcurarValor(dbeCNPJ.Text,'FOR_CNPJ', 'FORNECEDORES')) Then
           begin
                Application.MessageBox(PChar('CNPJ já cadastro.'),
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeCNPJ.SetFocus;
                dbeCNPJ.Clear;
                Exit;
           End;
        End;
end;

procedure TfrmCadFornecedores.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "FOR_CODIGO", "FOR_RAZAO", "FOR_FANTASIA" from "FORNECEDORES" ';
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
                0: Texto := Texto +'where ("FOR_CODIGO" = '+QuotedStr(Copy(edtConsultar.Text,1,5))+') ';
                1: Texto := Texto +'where (UPPER("FOR_RAZAO") like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
            end;
            //
            Texto := Texto +' order by "FOR_RAZAO"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadFornecedores.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarFOR_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

end.

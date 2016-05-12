unit uFrmCadEmitentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Mask;

type
  TfrmCadEmitente = class(TfrmCadastro)
    cdsConsultarEMI_CODIGO: TIntegerField;
    cdsConsultarEMI_RAZAOSOCIAL: TStringField;
    cdsConsultarEMI_FANTASIA: TStringField;
    cdsConsultarEMI_CNPJ: TStringField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dbeRazao: TDBEdit;
    Label3: TLabel;
    dbeFantasia: TDBEdit;
    Label4: TLabel;
    dbeCNPJ: TDBEdit;
    Label5: TLabel;
    dbeInscricaoEstadual: TDBEdit;
    Label9: TLabel;
    dbeLogradouro: TDBEdit;
    Label10: TLabel;
    dbeNumero: TDBEdit;
    Label11: TLabel;
    dbeComplemento: TDBEdit;
    Label12: TLabel;
    dbeBairro: TDBEdit;
    Label13: TLabel;
    dbeCEP: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    cmbUF: TDBComboBox;
    cmbPaises: TDBLookupComboBox;
    cmbMunicipios: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    dbeCPF: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCNPJExit(Sender: TObject);
    procedure dbeRazaoExit(Sender: TObject);
    procedure dbeCNAEKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cmbUFExit(Sender: TObject);
    procedure dbeCPFExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar(aCodigo : String);
    function ValidarCampos() : Boolean;
    procedure AbrirCidade();
  public
    { Public declarations }
  end;

var
  frmCadEmitente: TfrmCadEmitente;

implementation

uses uDMDados, uFuncoes, uFrmNEFMain;

{$R *.dfm}

{ TfrmCadEmitente }

procedure TfrmCadEmitente.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsEmitente, fsInteger, aCodigo);
     AbrirCidade;
end;

procedure TfrmCadEmitente.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_EMITENTE.AsInteger > 0) Then
         uFuncoes.FilterCDS(DMDados.cdsEmitente, fsInteger, InttoStr(uFuncoes.mvcodigo('EMI_CODIGO','EMITENTES')))

     Else
         uFuncoes.FilterCDS(DMDados.cdsEmitente, fsInteger, '-1');
     //
     AbrirCidade;
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEmitente.FormShow(Sender: TObject);
begin
  inherited;
     uFuncoes.RefreshCDS(dmDados.cdsListaCidades);
     uFuncoes.RefreshCDS(dmDados.cdsListaPaises);
     //
     REGISTRO;
     //
     If (dmDados.cdsEmitente.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadEmitente.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          With dsCadastro.DataSet do
            begin
                 Append;
                 FieldByName('EMI_CODIGO').AsInteger  :=
                    DMDados.cdsConfigCFG_EMITENTE.AsInteger + 1;
            End;
            //
            dbeRazao.SetFocus;
     End;
end;

procedure TfrmCadEmitente.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           dsCadastro.DataSet.Edit;
           dbeRazao.setfocus;
      End;
end;

procedure TfrmCadEmitente.BtExcluirClick(Sender: TObject);
Var
     iUsuario : Integer;
     aCodigo  : String;
begin
   inherited;
   if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
   begin
       aCodigo := uFuncoes.StrZero(dmDados.cdsEmitenteEMI_CODIGO.AsString, 3);
       iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       If Application.MessageBox('Deseja excluir este emitente?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            dmDados.cdsEmitente.Delete;
            dmDados.cdsEmitente.ApplyUpdates(0);
            //
            If not (dmDados.IncluirTarefaUsuario(iUsuario,
               'Excluiu Emitente : '+aCodigo+' *F*')) Then
                 ShowMessage('Erro ao adicionar tarefa do usuário.');
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadEmitente.BtGravarClick(Sender: TObject);
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
                 dmDados.cdsConfigCFG_EMITENTE.AsInteger :=
                   dmDados.cdsConfigCFG_EMITENTE.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 dmDados.cdsEmitenteEMI_CODIGO.AsInteger :=
                     dmDados.cdsConfigCFG_EMITENTE.AsInteger;
                 dmDados.cdsEmitenteEMI_DTCADA.AsDateTime := Date();
                 dmDados.cdsEmitenteEMI_HOCADA.AsString   := dmDados.GetHora();
                 dmDados.cdsEmitenteEMI_USCADA.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Emitente : '+uFuncoes.StrZero(dmDados.cdsEmitenteEMI_CODIGO.AsString,3)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End
            Else
            begin
                 dmDados.cdsEmitenteEMI_DTALTE.AsDateTime := Date();
                 dmDados.cdsEmitenteEMI_HOALTE.AsString   := dmDados.GetHora();
                 dmDados.cdsEmitenteEMI_USALTE.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Emitente : '+uFuncoes.StrZero(dmDados.cdsEmitenteEMI_CODIGO.AsString,3)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End;
          //
          dsCadastro.DataSet.Post;
          DMDados.cdsEmitente.ApplyUpdates(0);
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

function TfrmCadEmitente.ValidarCampos: Boolean;
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
       // CNPJ
       If uFuncoes.Empty(uFuncoes.RemoveChar(dbeCNPJ.Text)) Then
        begin
           Application.MessageBox('Digite o CNPJ.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCNPJ.SetFocus;
           Exit;
        End;
       // Insc. Estadual
       If uFuncoes.Empty(dbeInscricaoEstadual.Text) Then
        begin
           Application.MessageBox('Digite a Inscrição Estadual.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeInscricaoEstadual.SetFocus;
           Exit;
        End;
        //  Logradouro
       If uFuncoes.Empty(dbeLogradouro.Text) Then
        begin
           Application.MessageBox('Digite o logradouro.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeLogradouro.SetFocus;
           Exit;
        End;
        //  Número
       If uFuncoes.Empty(dbeNumero.Text) Then
        begin
           Application.MessageBox('Digite o número.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNumero.SetFocus;
           Exit;
        End;
        //  Bairro
       If uFuncoes.Empty(dbeBairro.Text) Then
        begin
           Application.MessageBox('Digite nome do bairro.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeBairro.SetFocus;
           Exit;
        End;
        //  UF
       If uFuncoes.Empty(cmbUF.Text) Then
        begin
           Application.MessageBox('Selecione a UF.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbUF.SetFocus;
           Exit;
        End;
        //  Municipio
       If uFuncoes.Empty(cmbMunicipios.Text) Then
        begin
           Application.MessageBox('Selecione o município.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbMunicipios.SetFocus;
           Exit;
        End;
     Result := true;
end;

procedure TfrmCadEmitente.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "EMI_CODIGO", "EMI_RAZAOSOCIAL", "EMI_FANTASIA", "EMI_CNPJ" from "EMITENTES" ';
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
                0: Texto := Texto +'where ("EMI_CODIGO" = '+QuotedStr(edtConsultar.Text)+') ';
                1: Texto := Texto +'where (UPPER("EMI_RAZAOSOCIAL") like '+QuotedStr(edtConsultar.Text+'%')+') ';
                2: Texto := Texto +'where (UPPER("EMI_CNPJ") like '+QuotedStr(edtConsultar.Text+'%')+') ';
            end;
            //
            Texto := Texto +' order by "EMI_RAZAOSOCIAL"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;                   
end;

procedure TfrmCadEmitente.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarEMI_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadEmitente.rgConsultarClick(Sender: TObject);
begin
//  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código:';
      edtConsultar.MaxLength := 3;
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Razão Social:';
      edtConsultar.Clear;
    end;
    2:
    begin
      lblConsultar.Caption := 'CNPJ:';
      edtConsultar.Clear;
    end;
  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

procedure TfrmCadEmitente.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
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

procedure TfrmCadEmitente.dbeCNPJExit(Sender: TObject);
begin
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
           If (dmDados.ProcurarValor(dbeCNPJ.Text,'EMI_CNPJ', 'EMITENTES')) Then
           begin
                Application.MessageBox(PChar('CNPJ já cadastro.'),
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeCNPJ.SetFocus;
                dbeCNPJ.Clear;
                Exit;
           End;
        End;
end;

procedure TfrmCadEmitente.dbeRazaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert])
       and not uFuncoes.Empty(dbeRazao.Text) Then
        if (dmDados.ProcurarValor(dbeRazao.Text, 'EMI_RAZAOSOCIAL', 'EMITENTES')) Then
          begin
              Application.MessageBox('Razão Social já cadastrada.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeRazao.SetFocus;
              Exit;
          End;
end;

procedure TfrmCadEmitente.dbeCNAEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
end;

procedure TfrmCadEmitente.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;

end;

procedure TfrmCadEmitente.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;

end;

procedure TfrmCadEmitente.cmbUFExit(Sender: TObject);
begin
  inherited;
    If (dmDados.cdsEmitente.State in [dsInsert, dsEdit]) Then
     begin
          if not uFuncoes.Empty(dmDados.cdsEmitenteEMI_UF.AsString) then
              dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsEmitenteEMI_UF.AsString);
     End;
end;

procedure TfrmCadEmitente.dbeCPFExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and not uFuncoes.Empty(dbeCPF.Text) Then
         if not uFuncoes.CPF(dbeCPF.Text) Then
          begin
                MessageDlg('CPF inválido!!!', mtInformation, [mbOk], 0);
                dbeCPF.Clear;
                dbeCPF.SetFocus;
                Exit;
          End;
end;

procedure TfrmCadEmitente.AbrirCidade;
begin
    if not uFuncoes.Empty(dmDados.CdsEmitenteEMI_UF.AsString) then
        dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.CdsEmitenteEMI_UF.AsString);
end;

procedure TfrmCadEmitente.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
    cmbUF.Enabled := dsCadastro.DataSet.State in [dsInsert, dsedit];
end;

end.

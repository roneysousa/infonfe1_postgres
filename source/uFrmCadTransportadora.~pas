unit uFrmCadTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

type
  TfrmCadTransportadora = class(TfrmCadastro)
    cdsConsultarTRA_CODIGO: TIntegerField;
    cdsConsultarTRA_RAZAONOME: TStringField;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label4: TLabel;
    dbeCNPJ: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    cmbUF: TDBComboBox;
    Label15: TLabel;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure dbeCNPJExit(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure dbeDescricaoExit(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
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
  frmCadTransportadora: TfrmCadTransportadora;

implementation

uses uDMDados, uFuncoes, uFrmNEFMain;

{$R *.dfm}

{ TfrmCadTransportadora }

procedure TfrmCadTransportadora.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMDados.cdsTransp, fsInteger, aCodigo);
end;

procedure TfrmCadTransportadora.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_TRANSPORTADORA.AsInteger > 0) Then
         uFuncoes.FilterCDS(DMDados.cdsTransp, fsInteger, InttoStr(uFuncoes.mvcodigo('TRA_CODIGO','TRANSPORTADORAS')))
     Else
         uFuncoes.FilterCDS(DMDados.cdsTransp, fsInteger, '-1');
     //
     PageControl1.ActivePageIndex := 0;
end;

function TfrmCadTransportadora.ValidarCampos: Boolean;
begin
     Result := False;
     //
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite a razão social.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeCNPJ.Text) Then
       Begin
           Application.MessageBox('Digite o CNPJ.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeCNPJ.SetFocus;
           Exit;
       End;
     //
     Result := true;
end;

procedure TfrmCadTransportadora.dbeCNPJExit(Sender: TObject);
begin
  inherited;
      If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) and
         not uFuncoes.Empty(dbeCNPJ.Text) Then
        begin
               If (dbeCNPJ.Text = '00000000000000')  Then
                begin
                    Application.MessageBox(PChar('CNPJ inválido.'),
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    dbeCNPJ.Clear;
                    dbeCNPJ.SetFocus;
                    Exit;
                End;
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
           If (dmDados.ProcurarValor(dbeCNPJ.Text,'TRA_NR_DOCUMENTO', 'TRANSPORTADORAS')) Then
           begin
                Application.MessageBox(PChar('CNPJ/CPF já cadastro.'),
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                dbeCNPJ.SetFocus;
                dbeCNPJ.Clear;
                Exit;
           End;
        End;
end;

procedure TfrmCadTransportadora.BtAdicionarClick(Sender: TObject);
begin
  inherited;
    If (dsCadastro.DataSet.State in [dsBrowse]) Then
     begin
          //
          With dsCadastro.DataSet do
            begin
                 Append;
                 FieldByName('TRA_CODIGO').AsInteger  :=
                     DMDados.cdsConfigCFG_TRANSPORTADORA.AsInteger + 1;
                 FieldByName('TRA_TPDOCUMENTO').AsInteger := 1;
            End;
            //
            dbeDescricao.SetFocus;
     End;
end;

procedure TfrmCadTransportadora.FormShow(Sender: TObject);
begin
  inherited;
     REGISTRO;
     //
     If (dmDados.cdsTransp.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TfrmCadTransportadora.BtEditarClick(Sender: TObject);
begin
  inherited;
    if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
      Begin
           dsCadastro.DataSet.Edit;
           dbeDescricao.setfocus;
      End;
end;

procedure TfrmCadTransportadora.dbeDescricaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert])
       and not uFuncoes.Empty(dbeDescricao.Text) Then
        if (dmDados.ProcurarValor(dbeDescricao.Text, 'TRA_RAZAONOME', 'TRANSPORTADORAS')) Then
          begin
              Application.MessageBox('Razão Social já cadastrada.','ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              dbeDescricao.SetFocus;
              Exit;
          End;
end;

procedure TfrmCadTransportadora.BtExcluirClick(Sender: TObject);
Var
     iUsuario : Integer;
     aCodigo  : String;
begin
   inherited;
   if  not (dsCadastro.DataSet.IsEmpty) and (dsCadastro.DataSet.RecordCount > 0) then
   begin
       aCodigo := uFuncoes.StrZero(dmDados.cdsTranspTRA_CODIGO.AsString, 5);
       iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       If Application.MessageBox('Deseja excluir esta transportadora.' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            dmDados.cdsTransp.Delete;
            dmDados.cdsTransp.ApplyUpdates(0);
            //
            If not (dmDados.IncluirTarefaUsuario(iUsuario,
               'Excluiu transportadora : '+aCodigo+' *F*')) Then
                 ShowMessage('Erro ao adicionar tarefa do usuário.');
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
end;

procedure TfrmCadTransportadora.BtGravarClick(Sender: TObject);
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
                 dmDados.cdsConfigCFG_TRANSPORTADORA.AsInteger :=
                   dmDados.cdsConfigCFG_TRANSPORTADORA.AsInteger + 1;
                 dmDados.cdsConfig.ApplyUpdates(0);
                 dmDados.cdsTranspTRA_CODIGO.AsInteger :=
                     dmDados.cdsConfigCFG_TRANSPORTADORA.AsInteger;
                 dmDados.cdsTranspTRA_DTCADA.AsDateTime := Date();
                 dmDados.cdsTranspTRA_HOCADA.AsString   := dmDados.GetHora();
                 dmDados.cdsTranspTRA_USCADA.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario( iUsuario,
                     'Incluiu Transportadora : '+uFuncoes.StrZero(dmDados.cdsTranspTRA_CODIGO.AsString, 5)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End
            Else
            begin
                 dmDados.cdsTranspTRA_DTALTE.AsDateTime := Date();
                 dmDados.cdsTranspTRA_HOALTE.AsString   := dmDados.GetHora();
                 dmDados.cdsTranspTRA_USALTE.AsInteger  := iUsuario;
                 //
                 If not (dmDados.IncluirTarefaUsuario(iUsuario,
                     'Alterou Transportadora : '+uFuncoes.StrZero(dmDados.cdsTranspTRA_CODIGO.AsString,5)+' *F*')) Then
                     ShowMessage('Erro ao adicionar tarefa do usuário.');
            End;
          //
          dsCadastro.DataSet.Post;
          DMDados.cdsTransp.ApplyUpdates(0);
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

procedure TfrmCadTransportadora.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "TRA_CODIGO", "TRA_RAZAONOME" from "TRANSPORTADORAS"';
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
                0: Texto := Texto +'where ("TRA_CODIGO" = '+QuotedStr(edtConsultar.Text)+') ';
                1: Texto := Texto +'where (UPPER("TRA_RAZAONOME") like '+QuotedStr(edtConsultar.Text+'%')+') ';
            end;
            //
            Texto := Texto +' order by "TRA_RAZAONOME"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

procedure TfrmCadTransportadora.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarTRA_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadTransportadora.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    If not (key in ['0'..'9', #8, #13]) Then
       key := #0;
end;

end.

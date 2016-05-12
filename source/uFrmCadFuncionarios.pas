unit uFrmCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, Mask, ToolEdit, RXDBCtrl;

type
  TFrmCadFuncionarios = class(TfrmCadastro)
    Panel1: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cdsConsultarFUN_CODIGO: TIntegerField;
    cdsConsultarFUN_NOME: TStringField;
    Label3: TLabel;
    dbeDescricao: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    dbeIdentidade: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    lblUfemissor: TLabel;
    cmbUFEMISSOR: TDBComboBox;
    Label7: TLabel;
    cmbEstadoCivil: TDBLookupComboBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label28: TLabel;
    dbeDTNASC: TDBDateEdit;
    Label10: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    dbeCEP: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    cmbUFfuncionario: TDBComboBox;
    Label16: TLabel;
    cmbCidade: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    TabSheet5: TTabSheet;
    Label19: TLabel;
    dbeCarteira: TDBEdit;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    dbeDTAdmissao: TDBDateEdit;
    Label26: TLabel;
    dbeDtDemissao: TDBDateEdit;
    Label27: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    dbeDtEmissao: TDBDateEdit;
    Label33: TLabel;
    cmbFuncao: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure cmbUFfuncionarioExit(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dbeIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCarteiraKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure dbeDTNASCExit(Sender: TObject);
    procedure cmbCidadeEnter(Sender: TObject);
    procedure dbeDTAdmissaoExit(Sender: TObject);
    procedure dbeDtEmissaoExit(Sender: TObject);
    procedure dbeDtDemissaoExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure buscar(aCodigo : String);
    procedure Registro;
  public
    { Public declarations }
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;

implementation

uses uDMDados, uFrmNEFMain, uFuncoes;

{$R *.dfm}

{ TFrmCadFuncionarios }

procedure TFrmCadFuncionarios.buscar(aCodigo: String);
begin
      uFuncoes.FilterCDS(dmDados.cdsFuncionario, fsInteger, aCodigo);
      If not ufuncoes.Empty(dmDados.cdsFuncionarioFUN_UFFUNC.AsString) Then
            dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.cdsFuncionarioFUN_UFFUNC.AsString);
      //
      PageControl2.ActivePageIndex := 0;      
end;

procedure TFrmCadFuncionarios.Registro;
begin
     uFuncoes.RefreshCDS(DMDados.cdsConfig);
     //
     If (dmDados.cdsConfigCFG_FUNCIONARIOS.AsInteger > 0) Then
      begin
         uFuncoes.FilterCDS(DMDados.cdsFuncionario, fsInteger, InttoStr(uFuncoes.mvcodigomax('FUN_CODIGO','FUNCIONARIOS')));
         If not ufuncoes.Empty(dmDados.cdsFuncionarioFUN_UFFUNC.AsString) Then
            dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.cdsFuncionarioFUN_UFFUNC.AsString);
      End
     Else
         uFuncoes.FilterCDS(DMDados.cdsFuncionario, fsInteger, '-1');
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
      uFuncoes.RefreshCDS(dmDados.cdsListaCargos);
      //
      REGISTRO;
      //
      PageControl2.ActivePageIndex := 0;
      //
      If (dmDados.cdsFuncionario.IsEmpty) Then
          BtAdicionarClick(Sender);
end;

procedure TFrmCadFuncionarios.BtAdicionarClick(Sender: TObject);
begin
     ufuncoes.RefreshCDS(dmDados.cdsConfig);
     //
     With dmDados.cdsFuncionario do
     begin
          Append;
          FieldByName('FUN_CODIGO').AsInteger    := dmDados.cdsConfigCFG_FUNCIONARIOS.AsInteger+1;
          FieldByName('FUN_DTCADA').AsDateTime   := Date();
          //
          PageControl2.ActivePageIndex := 0;
          dbeDescricao.SetFocus;
     End;
  inherited;
end;

procedure TFrmCadFuncionarios.cmbUFfuncionarioExit(Sender: TObject);
begin
  inherited;
    if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) then
        If not uFuncoes.Empty(cmbUFfuncionario.Text) Then
             dmDados.AbrirCidadeUF(dmDados.cdsListaCidades, dmDados.cdsFuncionarioFUN_UFFUNC.AsString);
end;

procedure TFrmCadFuncionarios.BtEditarClick(Sender: TObject);
begin
 If not (dsCadastro.DataSet.IsEmpty)
    and  (dsCadastro.DataSet.RecordCount > 0) Then
    begin
        dmDados.cdsFuncionario.Edit;
        If (PageControl2.ActivePageIndex = 0) Then
           cmbFuncao.SetFocus;
        If (PageControl2.ActivePageIndex = 1) Then
           dbeCEP.SetFocus;
        If (PageControl2.ActivePageIndex = 2) Then
           dbeCarteira.SetFocus;

        //
    End;
  inherited;
end;

procedure TFrmCadFuncionarios.BtExcluirClick(Sender: TObject);
begin
   If not (dsCadastro.DataSet.IsEmpty)
      and (dsCadastro.DataSet.RecordCount > 0) Then
   begin
      if application.MessageBox('Deseja excluir este funcionário','Exclusão de registro',
       MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = id_yes then
        begin
           dmDados.cdsFuncionario.Delete;
           dmDados.CdsFuncionario.ApplyUpdates(0);
           //
           Registro;
        end
        else
           showmessage('Não ha registro a ser excluido');
   End;
  inherited;
end;

procedure TFrmCadFuncionarios.BtGravarClick(Sender: TObject);
Var
   M_HOMOVI : String;
    iUsuario : Integer;
begin
      //
      If uFuncoes.Empty(dbeDescricao.Text) Then
      Begin
           Application.MessageBox('Digite o nome do funcionário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
      End;
     //
     iUsuario := StrtoInt(uFrmNEFMain.M_CDUSUA);
     M_HOMOVI := Copy(TimetoStr(Time),1,5);
     try
         //
         if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
           begin
                //
                if dsCadastro.DataSet.State in [dsinsert] then
                begin
                     uFuncoes.RefreshCDS(dmDados.cdsConfig);
                     dmDados.CdsConfig.Edit;
                     dmDados.cdsConfigCFG_FUNCIONARIOS.AsInteger := dmDados.cdsConfigCFG_FUNCIONARIOS.AsInteger +1;
                     dmDados.cdsFuncionarioFUN_CODIGO.AsInteger  := dmDados.cdsConfigCFG_FUNCIONARIOS.AsInteger;
                     //
                     dmDados.CdsConfig.ApplyUpdates(0);
                     // Usuário que incluiu
                     DmDados.cdsFuncionarioFUN_USUARIO_CAD.AsInteger := iUsuario;
                     DmDados.cdsFuncionarioFUN_DTCADA.AsDateTime     := Date();
                     DmDados.cdsFuncionarioFUN_HOCADA.AsString       := M_HOMOVI;
                end;
                 //
                 If (dsCadastro.DataSet.State = dsEdit) Then
                   begin
                      // Usuário que alterou
                      DmDados.cdsFuncionarioFUN_USUARIO_ALT.AsInteger := iUsuario;
                      DmDados.cdsFuncionarioFUN_DTALTE.AsDateTime     := Date;
                      DmDados.cdsFuncionarioFUN_HOALTE.AsString       := M_HOMOVI;
                   End;
                 //    Gravar
                 dmDados.cdsFuncionario.Post;
                 dmDados.CdsFuncionario.ApplyUpdates(0);
                 //
           End;
     Except

     End;
  inherited;
end;

procedure TFrmCadFuncionarios.edtConsultarChange(Sender: TObject);
begin
  inherited;
     btnConsultar.Enabled := (edtConsultar.Text <> '');
     If not uFuncoes.Empty(edtConsultar.Text) Then
     Begin
          with cdsConsultar do
          begin
               Close;
               CommandText := 'Select "FUN_CODIGO", "FUN_NOME" from "FUNCIONARIOS" ';
               case rgConsultar.ItemIndex of
                 0: CommandText := CommandText + ' where "FUN_CODIGO" = ' + edtConsultar.Text;
                 1: CommandText := CommandText + ' where UPPER("FUN_NOME") like ' + QuotedStr(AnsiUpperCase(Copy(edtConsultar.Text,1,39)) + '%');
               end;
               CommandText := CommandText + 'order by "FUN_NOME"';
               Open;
          end;
     End;
     //
     If uFuncoes.Empty(edtConsultar.Text) Then
       cdsConsultar.Close;
end;

procedure TFrmCadFuncionarios.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarFUN_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TFrmCadFuncionarios.dbeIdentidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCadFuncionarios.dbeCarteiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCadFuncionarios.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCadFuncionarios.DBEdit14KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCadFuncionarios.DBEdit15KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TFrmCadFuncionarios.dbeDTNASCExit(Sender: TObject);
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
                     Exit;
                End;
          end;
     End;
end;

procedure TFrmCadFuncionarios.cmbCidadeEnter(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
       If uFuncoes.Empty(cmbUFfuncionario.Text) Then
           cmbUFfuncionario.SetFocus;
end;

procedure TFrmCadFuncionarios.dbeDTAdmissaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and (dbeDTAdmissao.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTAdmissao.Text);
              dbeDTAdmissao.Text := DatetoStr(dbeDTAdmissao.Date);
              //
          except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTAdmissao.Clear;
                     dbeDTAdmissao.SetFocus;
                     Exit;
                End;
          end;
     End;
end;

procedure TFrmCadFuncionarios.dbeDtEmissaoExit(Sender: TObject);
begin
  inherited;
     If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and (dbeDtEmissao.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTEmissao.Text);
              dbeDTEmissao.Text := DatetoStr(dbeDTEmissao.Date);
              //
          except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTEmissao.Clear;
                     dbeDTEmissao.SetFocus;
                     Exit;
                End;
          end;
     End;
end;

procedure TFrmCadFuncionarios.dbeDtDemissaoExit(Sender: TObject);
begin
  inherited;
 If (dsCadastro.DataSet.State in [dsInsert, dsEdit])
       and (dbeDtDemissao.Text <> '  /  /    ') Then
     Begin
          try
              StrToDate(dbeDTDemissao.Text);
              dbeDTDemissao.Text := DatetoStr(dbeDTDemissao.Date);
              //
          except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTDemissao.Clear;
                     dbeDTDemissao.SetFocus;
                     Exit;
                End;
          end;
     End;
end;

procedure TFrmCadFuncionarios.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      cmbUFfuncionario.Enabled := dsCadastro.DataSet.State in [dsInsert, dsedit];
      cmbUFEMISSOR.Enabled     := dsCadastro.DataSet.State in [dsInsert, dsedit];
end;

end.

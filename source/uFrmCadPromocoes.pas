unit uFrmCadPromocoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  DB, DBClient, Provider, ComCtrls, Grids, DBGrids, Buttons, StdCtrls,
  ExtCtrls, DBCtrls, ToolEdit, RXDBCtrl, Mask;

type
  TfrmCadPromocoes = class(TfrmCadastro)
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    Label3: TLabel;
    dbeDTINIC: TDBDateEdit;
    Label4: TLabel;
    dbeDTFINA: TDBDateEdit;
    Label5: TLabel;
    dbeValorAvista: TDBEdit;
    Label6: TLabel;
    dbeValorAPrazo: TDBEdit;
    sbLocProduto: TSpeedButton;
    cdsConsultarPRM_IDPRODUTO: TStringField;
    cdsConsultarPRO_DESCRICAO: TStringField;
    cdsConsultarPRM_VALORAVISTA: TFloatField;
    cdsConsultarPRM_VALORAPRAZO: TFloatField;
    Label7: TLabel;
    dbeDescricao: TDBEdit;
    procedure BtAdicionarClick(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure dbeCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure edtConsultarChange(Sender: TObject);
    procedure sbLocProdutoClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeCodigoChange(Sender: TObject);
    procedure dbeDTINICExit(Sender: TObject);
    procedure dbeDTFINAExit(Sender: TObject);
    procedure rgConsultarClick(Sender: TObject);
  private
    { Private declarations }
     novo, alterar, apagar : String;
     procedure buscar(aCodigo: String);
     procedure registro;
  public
    { Public declarations }
  end;

var
  frmCadPromocoes: TfrmCadPromocoes;

implementation

uses uDMDados, uFuncoes, uFrmNEFMain, uFrmLocProdutoServico;

{$R *.dfm}

procedure TfrmCadPromocoes.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  //
  dmDados.cdsPromocoes.Append;
  dmDados.cdsPromocoesPRM_DTCADA.AsDateTime := Date();
  dmDados.cdsPromocoesPRM_CADUSU.AsInteger  := StrtoInt(uFrmNEFMain.M_CDUSUA);
  //
  dmDados.cdsPromocoesPRM_VLSEGU.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLTERC.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLQUAR.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLQUIN.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLSEXT.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLSABA.AsFloat := 0;
  dmDados.cdsPromocoesPRM_VLDOMI.AsFloat := 0;
  //
  dbeCodigo.SetFocus;
end;

procedure TfrmCadPromocoes.buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(dmDados.cdsPromocoes, fsString, aCodigo);
end;

procedure TfrmCadPromocoes.registro;
Var
  aCodigo : String;
begin
     aCodigo := uFuncoes.mscodigomax('PRM_IDPRODUTO','PROMOCAO');
     uFuncoes.FilterCDS(dmDados.cdsPromocoes, fsString, aCodigo);
end;

procedure TfrmCadPromocoes.dbeCodigoExit(Sender: TObject);
begin
  inherited;
   if (dmDados.cdsPromocoes.State in [dsInsert]) Then
    begin
      If not uFuncoes.Empty(dbeCodigo.Text) Then
      Begin
           //
           If not (dmDados.ProcurarValor(uFuncoes.StrZero(dbeCodigo.Text,13),'PRO_CODIGO', 'PRODUTOS')) Then
           Begin
                Application.MessageBox (PChar('Código de produto não cadastrado !'),
                    'ATENÇÃO',MB_ICONINFORMATION+ MB_OK);
                dbeCodigo.Clear;
                dbeCodigo.SetFocus;
                Exit;
           End
           Else
           begin
                If (dmDados.cdsPromocoes.State in [dsInsert] ) Then
                  if (dmDados.ProcurarValor(uFuncoes.StrZero(dbeCodigo.Text,13),'PRM_IDPRODUTO','PROMOCAO')) Then
                   begin
                       Application.MessageBox('Produto já cadastrado na promoção !','ATENÇÃO',
                           MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                       dbeCodigo.Clear;
                       dbeCodigo.SetFocus;
                       Exit;
                   End
                   Else
                       dmDados.cdsPromocoesPRM_IDPRODUTO.AsString :=
                         uFuncoes.StrZero(dmDados.cdsPromocoesPRM_IDPRODUTO.AsString,13);

           End;
      End;
    End;
end;

procedure TfrmCadPromocoes.dbeCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
      //
     if (Dmdados.cdsPromocoes.State in [dsInsert] ) Then
       if (key = #13) and uFuncoes.Empty(dbeCodigo.Text) Then
        begin
             key:=#0;
             sbLocProdutoClick(Sender);
        End;
      //
    if (Dmdados.cdsPromocoes.State in [dsInsert, dsEdit] ) Then
      If (key = #13) and not uFuncoes.Empty(dbeCodigo.Text) Then
        begin
             Key := #0;
             dbeDTINIC.SetFocus;
        End;
end;

procedure TfrmCadPromocoes.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
     dbeCodigo.Enabled    := dsCadastro.DataSet.State in [dsInsert];
     sbLocProduto.Enabled := dsCadastro.DataSet.State in [dsInsert, dsEdit];
end;

procedure TfrmCadPromocoes.edtConsultarChange(Sender: TObject);
Var
  aTexto : String;
begin
  inherited;
  aTexto := 'Select PM."PRM_IDPRODUTO", P."PRO_DESCRICAO", PM."PRM_VALORAVISTA", pm."PRM_VALORAPRAZO" from "PROMOCAO" PM ';
  aTexto :=  aTexto + ' INNER JOIN "PRODUTOS" P ON P."PRO_CODIGO" = PM."PRM_IDPRODUTO" ';
  If not uFuncoes.Empty(edtConsultar.Text) Then
  begin
        with cdsConsultar do
        begin
             Close;
             CommandText := aTexto;
             case rgConsultar.ItemIndex of
               0: CommandText := CommandText + ' where PM."PRM_IDPRODUTO" = ' + uFuncoes.StrZero(edtConsultar.Text,13);
               1: CommandText := CommandText + ' where UPPER(P."PRO_DESCRICAO") like ' + QuotedStr(AnsiUpperCase(Copy(edtConsultar.Text,1,59)) + '%');
             end;
             CommandText := CommandText + '  order by P."PRO_DESCRICAO" ';
             Open;
        End;  //fim-with
  End     // fim-se
  Else
      cdsConsultar.Close;
end;

procedure TfrmCadPromocoes.sbLocProdutoClick(Sender: TObject);
begin
  inherited;
  if (dsCadastro.DataSet.State in [dsInsert, dsEdit]) Then
    begin
         dbeCodigo.SetFocus;
         Application.CreateForm(TfrmLocProdutoServico, frmLocProdutoServico);
         try
             With frmLocProdutoServico do
               ShowModal;
         Finally
            If not (frmLocProdutoServico.cdsConsultar.IsEmpty) Then
             Begin
                  dmDados.cdsPromocoesPRM_IDPRODUTO.AsString :=
                     frmLocProdutoServico.cdsConsultarPRO_CODIGO.AsString;
                  dbeDTINIC.SetFocus;
                  //Perform(WM_NextDlgCtl,1,0);
             End;
            frmLocProdutoServico.Free;
         End;
     End;

     {dbeCodigo.SetFocus;
      with TfrmBuscaProduto.create(self) do
        try
            if (showmodal = mrOK) Then
             begin
               if not (cdsBusca.IsEmpty ) Then
                begin
                    dmDados.cdsPromocoesPRM_IDPRODUTO.AsString :=
                      cdsBuscaPRO_CODIGO.AsString;
                    dbeDTINIC.SetFocus;
                End;
             End
             Else
                dbeCodigo.SetFocus;
        finally
            free;
        End; }
end;

procedure TfrmCadPromocoes.BtEditarClick(Sender: TObject);
begin
  inherited;
 if (dsCadastro.DataSet.Active) AND (dsCadastro.DataSet.RecordCount > 0) then
  Begin
       dmDados.cdsPromocoes.Edit;
       dmDados.cdsPromocoesPRM_DTALTE.AsDateTime := Date();
       dmDados.cdsPromocoesPRM_CADUSU.AsInteger  := StrtoInt(uFrmNEFMain.M_CDUSUA);
       //
       dbeDTINIC.SetFocus;
  End;
end;

procedure TfrmCadPromocoes.BtExcluirClick(Sender: TObject);
begin
  inherited;
  if (dsCadastro.DataSet.Active) AND (dsCadastro.DataSet.RecordCount > 0) then
     If Application.MessageBox('Deseja excluir este registro?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
     Begin
       dmDados.cdsPromocoes.Delete;
       dmDados.cdsPromocoes.ApplyUpdates(0);
       //
       REGISTRO;
     end
  else
      Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
        MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
end;

procedure TfrmCadPromocoes.BtGravarClick(Sender: TObject);
Begin
    If uFuncoes.Empty(dbeCodigo.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o código do produto.'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeCodigo.SetFocus;
          Exit;
     End;
    //
    If uFuncoes.Empty(dbeValorAvista.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o valor a vista.'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeValorAvista.SetFocus;
          Exit;
     End;
     //
    If uFuncoes.Empty(dbeValorAPrazo.Text) Then
     Begin
          Application.MessageBox(PChar('Digite o valor a Prazo.'),
                               'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION+MB_APPLMODAL);
          dbeValorAPrazo.SetFocus;
          Exit;
     End;
  Try
     //
     dmDados.cdsPromocoes.ApplyUpdates(0);
  Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            BtCancelarClick(Sender);
        End;
  End;
  inherited;
end;

procedure TfrmCadPromocoes.btnConsultarClick(Sender: TObject);
begin
  inherited;
  If not (cdsConsultar.IsEmpty) Then
  begin
       buscar(cdsConsultarPRM_IDPRODUTO.AsString);
       PageControl1.ActivePageIndex := 0;
  End;
end;

procedure TfrmCadPromocoes.FormShow(Sender: TObject);
begin
  inherited;
  //
     registro;
     //
     If (dsCadastro.DataSet.Active) and (dsCadastro.DataSet.IsEmpty) Then
      begin
           uFuncoes.FilterCDS(dmDados.cdsPromocoes, fsString, '0');
           BtAdicionarClick(Sender);
     End;
end;

procedure TfrmCadPromocoes.dbeCodigoChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(dbeCodigo.Text) Then
         dbeDescricao.Clear;
end;

procedure TfrmCadPromocoes.dbeDTINICExit(Sender: TObject);
begin
  inherited;
   if (dmDados.cdsPromocoes.State in [dsInsert, dsEdit]) Then
     begin
          if (dbeDTINIC.text <> '  /  /    ') Then
           begin
                try
                    dbeDTINIC.Date := StrToDate(dbeDTINIC.text);
                    //
                except
                  on EConvertError do
                   Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTINIC.Clear;
                     dbeDTINIC.SetFocus;
                  End;
                End;
           End;
     End;
end;

procedure TfrmCadPromocoes.dbeDTFINAExit(Sender: TObject);
begin
  inherited;
   if (dmDados.cdsPromocoes.State in [dsInsert, dsEdit]) Then
     begin
          if (dbeDTFINA.text <> '  /  /    ') Then
           begin
                try
                    dbeDTFINA.Date := StrToDate(dbeDTFINA.text);
                    //
                    If (dbeDTFINA.Date < dbeDTINIC.Date) Then
                      begin
                           Application.MessageBox(PChar('Data  deve ser maior ou a inicial.'),
                               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                           dbeDTFINA.Clear;
                           dbeDTFINA.SetFocus;
                           Exit;
                      End;
                except
                  on EConvertError do
                   Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     dbeDTFINA.Clear;
                     dbeDTFINA.SetFocus;
                  End;
                End;
           End;
     End;

end;

procedure TfrmCadPromocoes.rgConsultarClick(Sender: TObject);
begin
//  inherited;
  case rgConsultar.ItemIndex of
    0:
    begin
      lblConsultar.Caption := 'Código:';
      edtConsultar.MaxLength := 14;
      edtConsultar.Clear;
    end;
    1:
    begin
      lblConsultar.Caption := 'Nome/Descrição:';
      edtConsultar.Clear;
    end;
  end;
  if edtConsultar.CanFocus then
    edtConsultar.SetFocus;
end;

end.

unit uFrmSupervisor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TfrmSupervisor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtGravar: TBitBtn;
    BtSair: TBitBtn;
    Label1: TLabel;
    edtCDSUPE: TEdit;
    edtSENHA: TEdit;
    Label2: TLabel;
    qryProcurar: TSQLQuery;
    qryProcurarSEN_CODIGO: TIntegerField;
    qryProcurarSEN_NOME: TStringField;
    qryProcurarSEN_SNATUA: TStringField;
    qryProcurarSEN_FLSUPER: TStringField;
    qryProcurarSEN_FLCAIXA: TStringField;
    procedure BtSairClick(Sender: TObject);
    procedure edtCDSUPEExit(Sender: TObject);
    procedure edtSENHAExit(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtCDSUPEKeyPress(Sender: TObject; var Key: Char);
    procedure edtSENHAKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    Function VALIDAR_CAIXA( iCodigo : Integer) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSupervisor: TfrmSupervisor;

implementation

uses uFuncoes, UdmDados, uFrmFecharVenda;

{$R *.dfm}

procedure TfrmSupervisor.BtSairClick(Sender: TObject);
begin
      //uFormaPagamento.M_FLSUPE := False;
      //
      Close;
end;

Function TfrmSupervisor.VALIDAR_CAIXA( iCodigo : Integer) : Boolean;
begin
     Result := False;
     //
     uFuncoes.FilterCDS(dmDados.cdsUsuario, fsInteger , InttoStr(iCodigo));
     //
     If not (dmDados.cdsUsuario.IsEmpty) Then
       If (dmDados.cdsUsuario.FieldByName('USU_FLSUPER').AsString = 'S') Then
            Result := True;
end;

procedure TfrmSupervisor.edtCDSUPEExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDSUPE.Text) Then
       if not (VALIDAR_CAIXA(StrtoInt(edtCDSUPE.Text))) Then
        begin
              Application.MessageBox('Usuário não é supervisor!!!','ATENÇÃO',
                   MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              edtCDSUPE.SetFocus;
              edtCDSUPE.Clear;
              Exit;
        End;
end;

procedure TfrmSupervisor.edtSENHAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtSenha.text) Then
        edtSenha.text := edtSenha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edtSenha.text));
end;

procedure TfrmSupervisor.BtGravarClick(Sender: TObject);
Var
    W_SNATUA : String;
begin
     W_SNATUA := edtSENHA.Text;
     W_SNATUA := W_SNATUA+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(W_SNATUA));
     W_SNATUA := uFuncoes.Codifica(W_SNATUA);
     //
     uFuncoes.FilterCDS(dmDados.cdsUsuario, fsInteger, edtCDSUPE.Text);
     //
     If (W_SNATUA = dmDados.cdsUsuario.FieldByName('SEN_SNATUA').AsString) Then
     Begin
          //
          edtSENHA.Text := edtSENHA.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edtSENHA.text));
          edtSENHA.Text := uFuncoes.Codifica(edtSENHA.Text);
          uFrmFecharVenda.M_FLSUPE := True;
          Close;
     End
     Else
     Begin
          //
          Application.MessageBox('Senha anterior não confere!!!','ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //M_QTTENT := M_QTTENT - 1;
          uFrmFecharVenda.M_FLSUPE := False;
          edtSENHA.SetFocus;
          edtSENHA.Clear;
          Exit;
     End;
end;

procedure TfrmSupervisor.edtCDSUPEKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13, #27] ) then
        key:=#0;
     //
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(edtCDSUPE.Text) Then
     Begin
           Key := #0;
           edtSENHA.SetFocus;
     End;
end;

procedure TfrmSupervisor.edtSENHAKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edtSENHA.Text) Then
     Begin
           Key := #0;
           BtGravar.SetFocus;
     End;
     //
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;     
end;

procedure TfrmSupervisor.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If (key = #27) Then
     Begin
          Key := #0;
          Close;
     End;
end;

end.

unit uFrmLocalizarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocalizarCliente = class(TfrmLocPadrao)
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_RAZAO: TStringField;
    cdsConsultarCLI_FANTASIA: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    cdsConsultarCLI_CLIFOR: TStringField;
    cdsConsultarCLI_TIPOPESSOA: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarCliente: TfrmLocalizarCliente;

implementation

uses uDMDados, uFuncoes;

{$R *.dfm}

procedure TfrmLocalizarCliente.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
       Texto := 'select "CLI_CODIGO", "CLI_TIPOPESSOA", "CLI_CGC", "CLI_FANTASIA", "CLI_RAZAO", "CLI_CLIFOR", "CLI_TIPOPESSOA" from "CLIENTES" ';
       //
       If not uFuncoes.Empty(edtConsultar.Text) Then
        begin
            cdsConsultar.Close;
            with zqryConsultar do
            begin
                SQL.Clear;
                Close;
                //
                Texto := Texto +' Where (UPPER("CLI_RAZAO") like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
                //
                Texto := Texto +' order by "CLI_RAZAO" ';
                //
                SQL.Add(Texto);
                //
                Open;
            end;
            cdsConsultar.FetchParams;
            cdsConsultar.Open;
        End
        Else
            cdsConsultar.Close;
end;

end.

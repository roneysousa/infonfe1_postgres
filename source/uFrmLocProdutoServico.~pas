unit uFrmLocProdutoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocProdutoServico = class(TfrmLocPadrao)
    cdsConsultarPRO_CODIGO: TStringField;
    cdsConsultarPRO_DESCRICAO: TStringField;
    cdsConsultarPRO_VLVENDA: TFloatField;
    cdsConsultarPRO_REVENDA_VALOR: TFloatField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocProdutoServico: TfrmLocProdutoServico;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocProdutoServico.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'select "PRO_CODIGO", "PRO_DESCRICAO", "PRO_VLVENDA", "PRO_REVENDA_VALOR" from "PRODUTOS" ';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with zqryConsultar do
        begin
            SQL.Clear;
            Active := False;
            //
            Texto := Texto +'where (UPPER("PRO_DESCRICAO") like '+QuotedStr(Copy(edtConsultar.Text,1,59)+'%')+') ';
            Texto := Texto +' order by "PRO_DESCRICAO"';
            //
            SQL.Add(Texto);
            //
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

end.

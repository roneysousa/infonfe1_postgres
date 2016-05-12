unit uFrmLocFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocFornecedor = class(TfrmLocPadrao)
    cdsConsultarFOR_CODIGO: TIntegerField;
    cdsConsultarFOR_RAZAO: TStringField;
    cdsConsultarFOR_FANTASIA: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocFornecedor: TfrmLocFornecedor;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocFornecedor.edtConsultarChange(Sender: TObject);
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
            Texto := Texto +'where (UPPER("FOR_RAZAO") like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
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

end.

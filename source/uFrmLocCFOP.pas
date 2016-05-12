unit uFrmLocCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocCFOP = class(TfrmLocPadrao)
    cdsConsultarCFOP_CODIGO: TIntegerField;
    cdsConsultarCFOP_DESCRICAO: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocCFOP: TfrmLocCFOP;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocCFOP.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "CFOP_CODIGO", "CFOP_DESCRICAO" from "TABELA_CFOP"';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with zqryConsultar do
        begin
            SQL.Clear;
            Active := False;
            //
            Texto := Texto +'where (UPPER("CFOP_DESCRICAO") like '+QuotedStr(Copy(edtConsultar.Text,1,139)+'%')+') ';
            //
            Texto := Texto +' order by "CFOP_DESCRICAO"';
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

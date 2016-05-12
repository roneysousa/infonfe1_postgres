unit uFrmLocTransp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, DBClient, Provider, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmLocTransp = class(TfrmLocPadrao)
    cdsConsultarTRA_CODIGO: TIntegerField;
    cdsConsultarTRA_RAZAONOME: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocTransp: TfrmLocTransp;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocTransp.edtConsultarChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   Texto := 'Select "TRA_CODIGO", "TRA_RAZAONOME" from "TRANSPORTADORAS" ';
   //
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with zqryConsultar do
        begin
            SQL.Clear;
            Active := False;
            //
            Texto := Texto +' where (UPPER("TRA_RAZAONOME") like '+QuotedStr(Copy(edtConsultar.Text,1,49)+'%')+') ';
            Texto := Texto +' order by "TRA_RAZAONOME" ';
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

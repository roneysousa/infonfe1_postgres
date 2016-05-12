unit uFrmLocPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DBClient,
  Provider, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmLocPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    edtConsultar: TEdit;
    grdConsultar: TDBGrid;
    dsConsultar: TDataSource;
    zqryConsultar: TZQuery;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
    procedure edtConsultarChange(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure FecharJanela;
  public
    { Public declarations }
  end;

var
  frmLocPadrao: TfrmLocPadrao;

implementation

uses uDMDados, uFuncoes, Math;

{$R *.dfm}

procedure TfrmLocPadrao.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
       key := #0;
       FecharJanela;
    End;
end;

procedure TfrmLocPadrao.edtConsultarChange(Sender: TObject);
begin
     if uFuncoes.Empty(edtConsultar.Text) Then
        cdsConsultar.Close;
end;

procedure TfrmLocPadrao.FecharJanela;
begin
     If not (cdsConsultar.IsEmpty) Then
       begin
          ModalResult := mrOk;
          Close;
       End;
end;

procedure TfrmLocPadrao.grdConsultarDblClick(Sender: TObject);
begin
     FecharJanela;
end;

procedure TfrmLocPadrao.edtConsultarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if not (cdsConsultar.IsEmpty) Then
     begin
          If (Key = vk_Up) and not (cdsConsultar.Bof) Then
              cdsConsultar.Prior;
          If (Key = vk_down) and not (cdsConsultar.Eof) Then
              cdsConsultar.Next;
     End;
end;

end.

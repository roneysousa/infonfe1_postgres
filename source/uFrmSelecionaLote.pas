unit uFrmSelecionaLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFrmSelecionaLote = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdConsultar: TDBGrid;
    btnConfirmar: TBitBtn;
    dsLotes: TDataSource;
    procedure btnConfirmarClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure grdConsultarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionaLote: TFrmSelecionaLote;

implementation

uses uDMDados;

{$R *.dfm}

procedure TFrmSelecionaLote.btnConfirmarClick(Sender: TObject);
begin
      ModalResult := mrOk;
      Close;
end;

procedure TFrmSelecionaLote.grdConsultarDblClick(Sender: TObject);
begin
     if not (dsLotes.DataSet.IsEmpty) Then
         btnConfirmarClick(Sender);
end;

procedure TFrmSelecionaLote.grdConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (key = #13) and not (dsLotes.DataSet.IsEmpty) Then
      begin
           Key := #0;
           btnConfirmarClick(Sender);
      End;
end;

end.

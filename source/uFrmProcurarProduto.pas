unit uFrmProcurarProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, Mask, DBCtrls, Grids,
  DBGrids;

type
  TfrmLocalizaProduto = class(TForm)
    dsConsultar: TDataSource;
    zqryConsultar: TZQuery;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnConfirme: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edtNMDESC: TEdit;
    GridProdutos: TDBGrid;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    cdsConsultarPRO_CODIGO: TStringField;
    cdsConsultarPRO_BARRAS: TStringField;
    cdsConsultarPRO_DESCRICAO: TStringField;
    cdsConsultarPRO_REFERENCIA: TStringField;
    cdsConsultarPRO_VLFRACAO: TFloatField;
    cdsConsultarPRO_VLVENDA: TFloatField;
    cdsConsultarUNI_CODIGO: TStringField;
    cdsConsultarFOR_CODIGO: TIntegerField;
    cdsConsultarPRO_LOCALIZACAO: TStringField;
    cdsConsultarfor_nome: TStringField;
    cdsConsultarest_quantidade: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnConfirmeClick(Sender: TObject);
    procedure edtNMDESCChange(Sender: TObject);
    procedure edtNMDESCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNMDESCKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizaProduto: TfrmLocalizaProduto;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocalizaProduto.BitBtn1Click(Sender: TObject);
begin
     ModalResult := mrCancel;
end;

procedure TfrmLocalizaProduto.btnConfirmeClick(Sender: TObject);
begin
    If not (cdsConsultar.IsEmpty) Then
       ModalResult := mrOk;
end;

procedure TfrmLocalizaProduto.edtNMDESCChange(Sender: TObject);
Var
   Texto : String;
begin
  inherited;
   //
   If not uFuncoes.Empty(edtNMDESC.Text) Then
    begin
        Texto := 'Select P."PRO_CODIGO", P."PRO_BARRAS", P."PRO_DESCRICAO", P."PRO_REFERENCIA", ';
        Texto := Texto + 'P."PRO_VLFRACAO", P."PRO_VLVENDA", P."UNI_CODIGO", P."FOR_CODIGO", ';
        Texto := Texto + 'P."PRO_LOCALIZACAO", ';
        Texto := Texto + '(Select "FOR_FANTASIA" from "FORNECEDORES" F ';
        Texto := Texto + 'Where (F."FOR_CODIGO" = P."FOR_CODIGO")) AS FOR_NOME, ';
        Texto := Texto + '(Select E."EST_QUANTIDADE" from "ESTOQUE" E ';
        Texto := Texto + 'Where (E."EST_PRODUTO" = P."PRO_CODIGO") ';
        Texto := Texto + 'AND (E."EST_CODLOJA" = :pCDLOJA)) AS EST_QUANTIDADE ';
        Texto := Texto + 'from "PRODUTOS" P ';
        //
        If not uFuncoes.Empty(edtNMDESC.Text) Then
         begin
             cdsConsultar.Close;
             with zqryConsultar do
             begin
                 SQL.Clear;
                 Active := False;
                 //
                 Texto := Texto +' where (UPPER("PRO_DESCRICAO") like '+QuotedStr(Copy(edtNMDESC.Text,1,59)+'%')+') ';
                 Texto := Texto +' order by "PRO_DESCRICAO"';
                 //
                 SQL.Add(Texto);
                 Params.ParamByName('pCDLOJA').AsInteger := 1;
                 //
                 Active := True;
             end;
             cdsConsultar.FetchParams;
             cdsConsultar.Open;
        End;
   End
   Else
       cdsConsultar.Close;
end;

procedure TfrmLocalizaProduto.edtNMDESCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if not (cdsConsultar.IsEmpty) Then
     begin
          If (Key = vk_Up) and not (cdsConsultar.Bof) Then
              cdsConsultar.Prior;
          If (Key = vk_down) and not (cdsConsultar.Eof) Then
              cdsConsultar.Next;
     End;
end;

procedure TfrmLocalizaProduto.edtNMDESCKeyPress(Sender: TObject;
  var Key: Char);
begin
   If (key = #13) and not uFuncoes.Empty(edtNMDESC.Text) Then
    begin
       key := #0;
       //FecharJanela;
    End;
end;

end.

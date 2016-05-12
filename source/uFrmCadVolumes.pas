unit uFrmCadVolumes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls;

type
  TfrmCadVolumes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    dbeQuant: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVolumes: TfrmCadVolumes;
  Opcao : String;
  M_NRITEM : Integer;

implementation

uses udmNFe;

{$R *.dfm}

procedure TfrmCadVolumes.btnFecharClick(Sender: TObject);
begin
     dmNFe.cdsVolumes.Cancel;
     Close;
end;

procedure TfrmCadVolumes.FormShow(Sender: TObject);
begin
     With dmNFe.cdsVolumes do
       begin
            if (Opcao = 'I') Then
             begin
                 Append;
                 FieldByName('VOL_NUMERO').AsInteger := dmNFe.cdsNotaFiscalNTF_CODIGO.AsInteger;
                 FieldByName('VOL_ITEM').AsInteger   := M_NRITEM;
             End
            Else
                Edit;
            //
            dbeQuant.SetFocus;
       End;
end;

procedure TfrmCadVolumes.btnOKClick(Sender: TObject);
begin
     dmNFe.cdsVolumes.Post;
     Close;
end;

end.

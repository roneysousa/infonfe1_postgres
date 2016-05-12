unit uFrmMemFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit;

type
  TfrmMemoriaFiscal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    edtDTFINA: TDateEdit;
    btImprimir: TBitBtn;
    BtSair: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMemoriaFiscal: TfrmMemoriaFiscal;

implementation

uses uFiscal, uFrmPDV;

{$R *.dfm}

procedure TfrmMemoriaFiscal.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmMemoriaFiscal.edtDTINICExit(Sender: TObject);
begin
     If (edtDTINIC.Text <> '  /  /    ') Then
     Begin
        try
            StrToDate(edtDTINIC.Text);
        except
          on EConvertError do
          begin
             ShowMessage ('Data Inv�lida!');
             edtDTINIC.Date := Date();
             edtDTINIC.SetFocus;
             Exit;
          End;
        end;
     End;
end;

procedure TfrmMemoriaFiscal.edtDTFINAExit(Sender: TObject);
begin
     If (edtDTFINA.Text <> '  /  /    ') Then
     Begin
        try
            StrToDate(edtDTFINA.Text);
            //
            If (edtDTINIC.Date > edtDTFINA.Date) Then
            Begin
                Application.MessageBox('Per�odo inicial maior quer per�odo final!!!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtDTINIC.Date := edtDTFINA.Date;
                edtDTINIC.SetFocus;
                Exit;
            End;
        except
          on EConvertError do
          begin
             ShowMessage ('Data Inv�lida!');
             edtDTFINA.Date := Date();
             edtDTFINA.SetFocus;
             Exit;
          End;
        end;
     End;
end;

procedure TfrmMemoriaFiscal.btImprimirClick(Sender: TObject);
Var
     M_DTINIC, M_DTFINA : String;
     iRetorno : Integer;
begin
     If (edtDTINIC.Text = '  /  /    ') Then
     Begin
           Application.MessageBox('Digite a per�odo inicial!!!','ATEN��O',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTINIC.SetFocus;
           Exit;
     End;
     //
     If (edtDTFINA.Text = '  /  /    ') Then
     Begin
           Application.MessageBox('Digite a per�odo final!!!','ATEN��O',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTFINA.SetFocus;
           Exit;
     End;
     //

     If (edtDTINIC.Date > edtDTFINA.Date) Then
     Begin
          Application.MessageBox('Per�odo inicial maior quer peri�do final!!!','ATEN��O',
                     MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          edtDTINIC.Date := edtDTFINA.Date;
          edtDTINIC.SetFocus;
          Exit;
     End;
     //
   Try
     Screen.Cursor := crHourGlass;
     //
     btImprimir.Enabled := False;
     Try
         M_DTINIC := edtDTINIC.Text;
         M_DTFINA := edtDTFINA.Text;
         //
         uFiscal.FISCAL('MemoriaFiscal', uFrmPDV.M_IMPRES ,M_DTINIC, M_DTFINA);
         close;
     Except
          on Exc:Exception do
          begin
               Application.MessageBox(PChar('Erro ao tentar fazer leitura da mem�ria fiscal!!!'+#13
                        + Exc.Message),
                      'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               Close;
          End;
     End;
   Finally
      Screen.Cursor := crDefault;
      btImprimir.Enabled := True;
  end;
     Application.ProcessMessages;
end;

procedure TfrmMemoriaFiscal.FormShow(Sender: TObject);
begin
    edtDTINIC.Date := Date();
    edtDTFINA.Date := Date();
end;

end.

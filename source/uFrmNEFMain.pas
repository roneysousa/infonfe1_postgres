unit uFrmNEFMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TfrmNFEMain = class(TForm)
    mmPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuNotasFiscais: TMenuItem;
    mnuUtilitarios: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuEmitenteItem: TMenuItem;
    N1: TMenuItem;
    mnuClientesItem: TMenuItem;
    mnuProdutosItem: TMenuItem;
    mnuTransportadoraItem: TMenuItem;
    N2: TMenuItem;
    mnuSairItem: TMenuItem;
    mnuAvisosItem: TMenuItem;
    N4: TMenuItem;
    mnuCertificadosItem: TMenuItem;
    mnuConfiguraesItem: TMenuItem;
    N5: TMenuItem;
    mnuRelatrioGerencialItem: TMenuItem;
    mnuUsuariosItem: TMenuItem;
    pnlSuperior: TPanel;
    StatusBar1: TStatusBar;
    mnuSobreItem: TMenuItem;
    Image1: TImage;
    mnuFornecedoresItem: TMenuItem;
    NFe1: TMenuItem;
    EmitirNovaNota1: TMenuItem;
    mnuPromocoesItem: TMenuItem;
    mnuFuncionariosItem: TMenuItem;
    Venda1: TMenuItem;
    CancelamentodeVenda1: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    mnuConsultaItem: TMenuItem;
    mnuEstoqueItem: TMenuItem;
    mnuMovConsVendasSubItem: TMenuItem;
    EntradasdeMercadorias1: TMenuItem;
    mnuConsultaProdutosSubItem: TMenuItem;
    mnuInvertarioSubItem: TMenuItem;
    mnuTransferenciasSubItem: TMenuItem;
    mnuReajusteSubItem: TMenuItem;
    procedure mnuSairItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure mnuEmitenteItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuClientesItemClick(Sender: TObject);
    procedure mnuProdutosItemClick(Sender: TObject);
    procedure mnuTransportadoraItemClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure mnuFornecedoresItemClick(Sender: TObject);
    procedure EmitirNovaNota1Click(Sender: TObject);
    procedure mnuPromocoesItemClick(Sender: TObject);
    procedure mnuFuncionariosItemClick(Sender: TObject);
    procedure EntradasdeMercadorias1Click(Sender: TObject);
    procedure mnuConsultaProdutosSubItemClick(Sender: TObject);
    procedure mnuInvertarioSubItemClick(Sender: TObject);
    procedure mnuTransferenciasSubItemClick(Sender: TObject);
    procedure mnuReajusteSubItemClick(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
  private
    { Private declarations }
     procedure SetJustify(Menu: TMenu; MenuItem: TMenuItem; Justify: Byte);
     procedure AjustarImage;
  public
    { Public declarations }
    Procedure AbreForm(aClasseForm: TComponentClass; aForm : TForm);
    procedure VerificaOpcoesMenu(const menu : TMenuItem);
    procedure VerificaAcessoSubMenu(const menu : TMenuItem);
    Function VerificarAcesso(const codMenu : Integer) : Boolean;
    Procedure Limpar_Acessos;
    Procedure Image_Logo;
    Function GetHoraAtual : TDatetime;
  end;

var
  frmNFEMain: TfrmNFEMain;
  M_CDUSUA, M_FLSUPE : String;

implementation

uses uFrmCadEmitentes, uFrmCadClientes, uFrmCadProdutos,
  uFrmCadTransportadora, uFrmCadForn, uFrmEmissaoNotaFiscal,
  uFrmCadClientesNew, uFrmNotaFiscalEletronicaNew, uFrmCadProdutosNew,
  uFrmCadFornecedores, uFrmCadPromocoes, uFrmCadFuncionarios,
  uFrmCadEntradaMercadorias, uFrmConsultaEstoque, uFrmInvertario,
  uFrmTransferencias, uFrmReajuste, uFrmPDV;

{$R *.dfm}

procedure TfrmNFEMain.mnuSairItemClick(Sender: TObject);
begin
    If Application.MessageBox('Sair do Sistema?',
        'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
            application.Terminate;
end;

procedure TfrmNFEMain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    If Application.MessageBox('Sair do Sistema?',
        'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
          Canclose:=False;
end;

procedure TfrmNFEMain.AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
      Application.CreateForm(aClasseForm, aForm);
      try
          aForm.ShowModal;
      Finally
          aForm.Free;
      End;   
end;

procedure TfrmNFEMain.Image_Logo;
begin
    If FileExists(ExtractFilePath( Application.ExeName )+'logo2.bmp') Then
        Image1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+'logo2.bmp');
end;

procedure TfrmNFEMain.Limpar_Acessos;
begin

end;

procedure TfrmNFEMain.SetJustify(Menu: TMenu; MenuItem: TMenuItem;
  Justify: Byte);
var
    ItemInfo: TMenuItemInfo;
    Buffer: array[0..80] of Char;
begin
     ItemInfo.cbSize := SizeOf(TMenuItemInfo);
     ItemInfo.fMask := MIIM_TYPE;
     ItemInfo.dwTypeData := Buffer;
     ItemInfo.cch := SizeOf(Buffer);
     //
     GetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
     if Justify = 1 then
        ItemInfo.fType := ItemInfo.fType or MFT_RIGHTJUSTIFY;
     SetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
end;

procedure TfrmNFEMain.VerificaAcessoSubMenu(const menu: TMenuItem);
begin

end;

procedure TfrmNFEMain.VerificaOpcoesMenu(const menu: TMenuItem);
begin

end;

function TfrmNFEMain.VerificarAcesso(const codMenu: Integer): Boolean;
begin

end;

procedure TfrmNFEMain.FormCreate(Sender: TObject);
begin
     SetJustify(mmPrincipal,mnuAjuda,1);
     //
     AjustarImage;
end;

procedure TfrmNFEMain.FormResize(Sender: TObject);
begin
     AjustarImage;
end;

procedure TfrmNFEMain.AjustarImage;
begin
     Image1.Left := (frmNFEMain.Width Div 2) - (Image1.Width Div 2);
     Image1.Top := (frmNFEMain.Height Div 2) - (Image1.Height Div 2 + StatusBar1.Height);
end;

procedure TfrmNFEMain.mnuEmitenteItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadEmitente, frmCadEmitente);
end;

procedure TfrmNFEMain.FormShow(Sender: TObject);
begin
     M_CDUSUA := '001';
end;

procedure TfrmNFEMain.mnuClientesItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadClientesFornecedores, frmCadClientesFornecedores);
end;

procedure TfrmNFEMain.mnuProdutosItemClick(Sender: TObject);
begin
     //AbreForm(TfrmCadProdutos, frmCadProdutos);
     AbreForm(TfrmCadProdutosNew, frmCadProdutosNew);
end;

procedure TfrmNFEMain.mnuTransportadoraItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadTransportadora, frmCadTransportadora);
end;

procedure TfrmNFEMain.Fornecedores1Click(Sender: TObject);
begin
     AbreForm(TfrmCadFornecedores, frmCadFornecedores);
end;

procedure TfrmNFEMain.mnuFornecedoresItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadFornecedoresNew, frmCadFornecedoresNew); 
end;

procedure TfrmNFEMain.EmitirNovaNota1Click(Sender: TObject);
begin
     AbreForm(TFrmNotaFiscalEletronicaNew, FrmNotaFiscalEletronicaNew);
end;

procedure TfrmNFEMain.mnuPromocoesItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadPromocoes, frmCadPromocoes);
end;

procedure TfrmNFEMain.mnuFuncionariosItemClick(Sender: TObject);
begin
     AbreForm(TFrmCadFuncionarios, FrmCadFuncionarios);
end;

procedure TfrmNFEMain.EntradasdeMercadorias1Click(Sender: TObject);
begin
     AbreForm(TFrmCadEntradaMercadorias, FrmCadEntradaMercadorias);
end;

procedure TfrmNFEMain.mnuConsultaProdutosSubItemClick(Sender: TObject);
begin
     AbreForm(TFrmConsultaEstoque, FrmConsultaEstoque);
end;

procedure TfrmNFEMain.mnuInvertarioSubItemClick(Sender: TObject);
begin
     AbreForm(TFrmInvertario, FrmInvertario);
end;

procedure TfrmNFEMain.mnuTransferenciasSubItemClick(Sender: TObject);
begin
      AbreForm(TFrmTransferencia, FrmTransferencia);
end;

procedure TfrmNFEMain.mnuReajusteSubItemClick(Sender: TObject);
begin
     AbreForm(TFrmReajuste, FrmReajuste);
end;

procedure TfrmNFEMain.Venda1Click(Sender: TObject);
begin
     AbreForm(TFrmPDVenda, FrmPDVenda);
end;

function TfrmNFEMain.GetHoraAtual: TDatetime;
begin
    Result := Time;
end;

end.

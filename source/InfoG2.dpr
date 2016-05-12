program InfoG2;

uses
  Forms,
  uFrmNEFMain in 'uFrmNEFMain.pas' {frmNFEMain},
  uDMDados in 'uDMDados.pas' {dmDados: TDataModule},
  uFrmCadastro in 'uFrmCadastro.pas' {frmCadastro},
  uFuncoes in 'uFuncoes.pas',
  uFrmCadEmitentes in 'uFrmCadEmitentes.pas' {frmCadEmitente},
  uFrmCadClientes in 'uFrmCadClientes.pas' {frmCadClientes},
  uFrmCadProdutos in 'uFrmCadProdutos.pas' {frmCadProdutos},
  uFrmCadTransportadora in 'uFrmCadTransportadora.pas' {frmCadTransportadora},
  uFrmCadForn in 'uFrmCadForn.pas' {frmCadFornecedores},
  uFrmLocPadrao in 'uFrmLocPadrao.pas' {frmLocPadrao},
  uFrmLocFornecedor in 'uFrmLocFornecedor.pas' {frmLocFornecedor},
  uFrmLocCFOP in 'uFrmLocCFOP.pas' {frmLocCFOP},
  uFrmEmissaoNotaFiscal in 'uFrmEmissaoNotaFiscal.pas' {frmEmissaoNotaFiscal},
  udmNFe in 'udmNFe.pas' {dmNFe: TDataModule},
  uFrmLocProdutoServico in 'uFrmLocProdutoServico.pas' {frmLocProdutoServico},
  uFrmCadUF in 'uFrmCadUF.pas' {frmCadUF},
  uFrmNotaFiscalEletronicaNew in 'uFrmNotaFiscalEletronicaNew.pas' {FrmNotaFiscalEletronicaNew},
  uFrmCadClientesNew in 'uFrmCadClientesNew.pas' {frmCadClientesFornecedores},
  uFrmCadProdutosNew in 'uFrmCadProdutosNew.pas' {frmCadProdutosNew},
  uFrmLocFornecedorNovo in 'uFrmLocFornecedorNovo.pas' {frmLocFornecedorNovo},
  uFrmCadFornecedores in 'uFrmCadFornecedores.pas' {frmCadFornecedoresNew},
  uFrmLocalizarCliente in 'uFrmLocalizarCliente.pas' {frmLocalizarCliente},
  uFrmCadVolumes in 'uFrmCadVolumes.pas' {frmCadVolumes},
  uFrmLocTransp in 'uFrmLocTransp.pas' {frmLocTransp},
  uFrmCadPromocoes in 'uFrmCadPromocoes.pas' {frmCadPromocoes},
  uFrmCadFuncionarios in 'uFrmCadFuncionarios.pas' {FrmCadFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TdmNFe, dmNFe);
  Application.CreateForm(TfrmNFEMain, frmNFEMain);
  Application.Run;
end.

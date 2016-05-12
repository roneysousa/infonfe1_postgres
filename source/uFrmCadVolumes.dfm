object frmCadVolumes: TfrmCadVolumes
  Left = 215
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Volumes'
  ClientHeight = 344
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 303
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = dbeQuant
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Esp'#233'cie'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 30
      Height = 13
      Caption = 'Marca'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 144
      Width = 55
      Height = 13
      Caption = 'Numera'#231#227'o'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 184
      Width = 84
      Height = 13
      Caption = 'Peso L'#237'quido (kg)'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 16
      Top = 224
      Width = 73
      Height = 13
      Caption = 'Peso Bruto (kg)'
      FocusControl = DBEdit6
      Transparent = True
    end
    object dbeQuant: TDBEdit
      Left = 16
      Top = 40
      Width = 212
      Height = 21
      DataField = 'VOL_QUANTIDADE'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 80
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_ESPECIE'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 120
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_MARCA'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 160
      Width = 490
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VOL_NUMERACAO'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 200
      Width = 212
      Height = 21
      DataField = 'VOL_PESO_LIQUIDO'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 240
      Width = 212
      Height = 21
      DataField = 'VOL_PESO_BRUTO'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 303
    Width = 533
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnFechar: TBitBtn
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmNFe.cdsVolumes
    Left = 264
    Top = 32
  end
end

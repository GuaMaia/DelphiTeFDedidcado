object FMensagemOperador_Tef: TFMensagemOperador_Tef
  Left = 431
  Top = 375
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 245
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pMensagemOperador: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 245
    Align = alClient
    TabOrder = 0
    object lTituloMsgOperador: TLabel
      Left = 1
      Top = 1
      Width = 441
      Height = 16
      Align = alTop
      Caption = 'Esq - Cancelar'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lMensagemOperador: TLabel
      Left = 1
      Top = 17
      Width = 441
      Height = 227
      Align = alClient
      Alignment = taCenter
      Caption = 'lMensagemOperador'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object btesq: TSpeedButton
      Left = 0
      Top = 0
      Width = 114
      Height = 25
      Flat = True
      OnClick = btesqClick
    end
  end
end

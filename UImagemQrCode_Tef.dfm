object FImagemQrCode_Tef: TFImagemQrCode_Tef
  Left = 424
  Top = 306
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Imagem QrCode'
  ClientHeight = 235
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pQRCode: TPanel
    Left = 0
    Top = 0
    Width = 323
    Height = 235
    Align = alClient
    TabOrder = 0
    object imgQRCode: TImage
      Left = 1
      Top = 1
      Width = 321
      Height = 233
      Align = alClient
      Center = True
      Proportional = True
      Stretch = True
    end
  end
end

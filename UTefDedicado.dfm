object FTefDedicado: TFTefDedicado
  Left = 1
  Top = 1
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Monitor Tef Dedicado'
  ClientHeight = 668
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pImpressao: TPanel
    Left = 677
    Top = 0
    Width = 329
    Height = 668
    Align = alRight
    BevelOuter = bvNone
    Constraints.MinWidth = 230
    TabOrder = 0
    object lSaidaImpressao: TLabel
      Left = 0
      Top = 145
      Width = 329
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Sa'#237'da de Impress'#227'o'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lURLTEF: TLabel
      Left = 0
      Top = 0
      Width = 329
      Height = 20
      Cursor = crHandPoint
      Align = alTop
      Alignment = taCenter
      Caption = 'Monitor'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object mImpressao: TMemo
      Left = 0
      Top = 165
      Width = 329
      Height = 469
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Lucida Console'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
    end
    object pMensagem: TPanel
      Left = 0
      Top = 20
      Width = 329
      Height = 125
      Align = alTop
      Anchors = []
      BevelInner = bvLowered
      BevelWidth = 2
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      object pMensagemOperador: TPanel
        Left = 4
        Top = 4
        Width = 317
        Height = 58
        Align = alTop
        TabOrder = 0
        Visible = False
        object lTituloMsgOperador: TLabel
          Left = 1
          Top = 1
          Width = 315
          Height = 13
          Align = alTop
          Caption = 'Mensagem Operador'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lMensagemOperador: TLabel
          Left = 1
          Top = 14
          Width = 315
          Height = 43
          Align = alClient
          Alignment = taCenter
          Caption = 'lMensagemOperador'
          Layout = tlCenter
          WordWrap = True
        end
      end
      object pMensagemCliente: TPanel
        Left = 4
        Top = 62
        Width = 317
        Height = 55
        Align = alClient
        TabOrder = 1
        Visible = False
        object lTituloMensagemCliente: TLabel
          Left = 1
          Top = 1
          Width = 315
          Height = 13
          Align = alTop
          Caption = 'Mensagem Cliente'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lMensagemCliente: TLabel
          Left = 1
          Top = 14
          Width = 315
          Height = 40
          Align = alClient
          Alignment = taCenter
          Caption = 'lMensagemCliente'
          Layout = tlCenter
          WordWrap = True
        end
      end
    end
    object pImpressoraBotes: TPanel
      Left = 0
      Top = 634
      Width = 329
      Height = 34
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        329
        34)
      object btImprimir: TBitBtn
        Left = 83
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Imprimir'
        TabOrder = 0
        OnClick = btImprimirClick
      end
      object btLimparImpressora: TBitBtn
        Left = 166
        Top = 2
        Width = 80
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Limpar'
        TabOrder = 1
        OnClick = btLimparImpressoraClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 668
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pLogs: TPanel
      Left = 0
      Top = 359
      Width = 677
      Height = 309
      Align = alBottom
      TabOrder = 0
      object sbLimparLog: TSpeedButton
        Left = 666
        Top = 1
        Width = 23
        Height = 117
      end
      object mLog: TMemo
        Left = 1
        Top = 1
        Width = 1001
        Height = 600
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 335
      Width = 677
      Height = 24
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'HIST'#211'RICO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Pagina: TPageControl
      Left = 0
      Top = 0
      Width = 677
      Height = 335
      ActivePage = AbaVenda
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style = tsButtons
      TabOrder = 2
      object AbaVenda: TTabSheet
        Caption = 'Venda'
        object pOperacao: TPanel
          Left = 0
          Top = 0
          Width = 669
          Height = 304
          Align = alClient
          BevelOuter = bvNone
          Constraints.MinWidth = 460
          TabOrder = 0
          object gbTotaisVenda: TGroupBox
            Left = 0
            Top = 50
            Width = 669
            Height = 136
            Align = alTop
            Caption = 'Valores da Opera'#231#227'o'
            TabOrder = 0
            object Label2: TLabel
              Left = 25
              Top = 24
              Width = 66
              Height = 13
              Caption = 'Valor Inicial'
              Color = clBtnFace
              ParentColor = False
            end
            object Label3: TLabel
              Left = 126
              Top = 24
              Width = 53
              Height = 13
              Caption = 'Desconto'
              Color = clBtnFace
              ParentColor = False
            end
            object Label4: TLabel
              Left = 224
              Top = 24
              Width = 59
              Height = 13
              Caption = 'Acr'#233'scimo'
              Color = clBtnFace
              ParentColor = False
            end
            object Label5: TLabel
              Left = 25
              Top = 80
              Width = 89
              Height = 13
              Caption = 'Total Opera'#231#227'o'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label6: TLabel
              Left = 136
              Top = 80
              Width = 63
              Height = 13
              Caption = 'Total Pago'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 248
              Top = 80
              Width = 34
              Height = 13
              Caption = 'Troco'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label8: TLabel
              Left = 321
              Top = 24
              Width = 71
              Height = 13
              Caption = 'Teste PayGo'
              Color = clBtnFace
              ParentColor = False
            end
            object seValorInicialVenda: TEdit
              Left = 24
              Top = 40
              Width = 89
              Height = 21
              TabOrder = 0
              OnChange = seValorInicialVendaChange
              OnKeyPress = seValorInicialVendaKeyPress
            end
            object seTotalDesconto: TEdit
              Left = 126
              Top = 40
              Width = 89
              Height = 21
              TabOrder = 1
              OnChange = seTotalDescontoChange
              OnKeyPress = seValorInicialVendaKeyPress
            end
            object seTotalAcrescimo: TEdit
              Left = 224
              Top = 40
              Width = 89
              Height = 21
              TabOrder = 2
              OnChange = seTotalAcrescimoChange
              OnKeyPress = seValorInicialVendaKeyPress
            end
            object edTotalVenda: TEdit
              Left = 25
              Top = 96
              Width = 89
              Height = 24
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              Text = '0.00'
            end
            object edTotalPago: TEdit
              Left = 136
              Top = 96
              Width = 89
              Height = 24
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Text = '0.00'
            end
            object edTroco: TEdit
              Left = 248
              Top = 96
              Width = 89
              Height = 24
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = '0.00'
            end
            object cbSimularErroNoDoctoFiscal: TCheckBox
              Left = 360
              Top = 102
              Width = 193
              Height = 19
              Caption = 'Simular Erro Docto Fiscal'
              TabOrder = 6
            end
            object cbTestePayGo: TComboBox
              Left = 321
              Top = 40
              Width = 185
              Height = 21
              Style = csDropDownList
              Enabled = False
              ItemHeight = 13
              TabOrder = 7
              Items.Strings = (
                '00 - Livre'
                '02 - CRT - Venda '#224' vista aprovada com pr'#233'-sele'#231#227'o de par'#226'metros'
                
                  '03 - CRT - Venda parcelada aprovada com pr'#233'-sele'#231#227'o de par'#226'metro' +
                  's'
                '04 - CRT - Venda aprovada em moeda estrangeira'
                
                  '27 - CRT - Venda aprovada com pr'#233'-sele'#231#227'o de par'#226'metros de carte' +
                  'ira digital'
                '31 - ADM - Opera'#231#227'o bem sucedida com valor pr'#233'-definido')
            end
            object btOperacao: TBitBtn
              Left = 520
              Top = 16
              Width = 114
              Height = 28
              Cancel = True
              Caption = 'Iniciar Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = btOperacaoClick
            end
            object btEfetuarPagamentos: TBitBtn
              Left = 521
              Top = 45
              Width = 113
              Height = 28
              Caption = 'Pagamentos'
              Default = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnClick = btEfetuarPagamentosClick
            end
            object BtPagamentoTouch: TButton
              Left = 522
              Top = 72
              Width = 113
              Height = 25
              Caption = 'Pagamento Touch'
              TabOrder = 10
              Visible = False
              OnClick = BtPagamentoTouchClick
            end
          end
          object gbPagamentos: TGroupBox
            Left = 0
            Top = 186
            Width = 669
            Height = 118
            Align = alClient
            Caption = 'Pagamentos'
            TabOrder = 1
            object sgPagamentos: TStringGrid
              Left = 2
              Top = 15
              Width = 559
              Height = 101
              Align = alClient
              ColCount = 7
              DefaultColWidth = 30
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
              TabOrder = 0
            end
            object pBotoesPagamentos: TPanel
              Left = 561
              Top = 15
              Width = 106
              Height = 101
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                106
                101)
              object btIncluirPagamentos: TBitBtn
                Left = 8
                Top = 16
                Width = 88
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = btIncluirPagamentosClick
              end
              object btExcluirPagamento: TBitBtn
                Left = 8
                Top = 48
                Width = 88
                Height = 28
                Anchors = [akTop, akRight]
                Caption = 'Excluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = btExcluirPagamentoClick
              end
            end
          end
          object pStatus: TPanel
            Left = 0
            Top = 0
            Width = 669
            Height = 50
            Align = alTop
            BevelInner = bvLowered
            BevelWidth = 2
            Caption = 'CAIXA LIVRE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object lNumOperacao: TLabel
              Left = 580
              Top = 4
              Width = 85
              Height = 42
              Align = alRight
              Caption = '000000'
              Color = clBtnFace
              ParentColor = False
              Layout = tlCenter
            end
          end
        end
      end
      object abaImpressora: TTabSheet
        Caption = 'Impressora'
        ImageIndex = 1
        object gbConfigImpressora: TGroupBox
          Left = 0
          Top = 0
          Width = 669
          Height = 183
          Align = alTop
          Caption = 'Impressora'
          TabOrder = 0
          object Label25: TLabel
            Left = 176
            Top = 64
            Width = 78
            Height = 13
            Caption = 'Linhas '#224' pular'
            Color = clBtnFace
            ParentColor = False
          end
          object Label26: TLabel
            Left = 9
            Top = 64
            Width = 115
            Height = 13
            Caption = 'Espa'#231'os entre linhas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label27: TLabel
            Left = 376
            Top = 64
            Width = 44
            Height = 13
            Caption = 'Colunas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label28: TLabel
            Left = 9
            Top = 15
            Width = 41
            Height = 13
            Caption = 'Modelo'
            Transparent = False
          end
          object Label7: TLabel
            Left = 176
            Top = 15
            Width = 31
            Height = 13
            Caption = 'Porta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label29: TLabel
            Left = 376
            Top = 15
            Width = 81
            Height = 13
            Caption = 'P'#225'g. de c'#243'digo'
            Transparent = False
          end
          object btSerial: TSpeedButton
            Left = 480
            Top = 14
            Width = 133
            Height = 23
            Caption = 'Ver Serial'
            OnClick = btSerialClick
          end
          object btProcuraImpressoras: TSpeedButton
            Left = 480
            Top = 36
            Width = 133
            Height = 23
            Caption = 'Procura Impressoras'
            OnClick = btProcuraImpressorasClick
          end
          object seLinhasPular: TSpinEdit
            Left = 176
            Top = 81
            Width = 75
            Height = 22
            MaxValue = 255
            MinValue = 0
            TabOrder = 4
            Value = 0
          end
          object seEspLinhas: TSpinEdit
            Left = 9
            Top = 81
            Width = 75
            Height = 22
            MaxValue = 255
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
          object seColunas: TSpinEdit
            Left = 376
            Top = 81
            Width = 75
            Height = 22
            MaxValue = 999
            MinValue = 1
            TabOrder = 5
            Value = 48
          end
          object cbxModeloPosPrinter: TComboBox
            Left = 9
            Top = 32
            Width = 145
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            TabOrder = 0
          end
          object cbxPorta: TComboBox
            Left = 176
            Top = 32
            Width = 161
            Height = 21
            ItemHeight = 0
            TabOrder = 1
          end
          object cbxPagCodigo: TComboBox
            Left = 376
            Top = 32
            Width = 76
            Height = 21
            Hint = 'Pagina de c'#243'digo usada pela Impressora POS'
            Style = csDropDownList
            ItemHeight = 0
            TabOrder = 2
          end
          object btSalvarParametros: TBitBtn
            Left = 480
            Top = 58
            Width = 133
            Height = 28
            Caption = 'Salvar Impressora'
            TabOrder = 6
            OnClick = btSalvarParametrosClick
          end
          object btTestarPosPrinter: TBitBtn
            Left = 480
            Top = 85
            Width = 133
            Height = 35
            Caption = 'Testar Impressora'
            TabOrder = 7
            OnClick = btTestarPosPrinterClick
            Layout = blGlyphTop
          end
        end
      end
    end
  end
  object ACBrTEFD1: TACBrTEFD
    AutoFinalizarCupom = False
    EsperaSTS = 7
    TEFPayGo.LogDebug = True
    TEFPayGo.ArqTemp = 'C:\PAYGO\REQ\intpos.tmp'
    TEFPayGo.ArqReq = 'C:\PAYGO\REQ\intpos.001'
    TEFPayGo.ArqSTS = 'C:\PAYGO\RESP\intpos.sts'
    TEFPayGo.ArqResp = 'C:\PAYGO\RESP\intpos.001'
    TEFPayGoWeb.SuportaViasDiferenciadas = True
    TEFPayGoWeb.UtilizaSaldoTotalVoucher = False
    TEFPayGoWeb.ConfirmarTransacoesPendentes = True
    TEFPayGoWeb.PerguntarCartaoDigitadoAposCancelarLeitura = False
    TEFPayGoWeb.OnExibeMenu = PayGoWebExibeMenu
    TEFPayGoWeb.OnObtemCampo = PayGoWebObtemCampo
    TEFPayGoWeb.OnExibeMensagem = PayGoWebExibeMensagem
    TEFPayGoWeb.OnAguardaPinPad = PayGoWebAguardaPinPad
    TEFPayGoWeb.OnAvaliarTransacaoPendente = PayGoWebAvaliarTransacaoPendente
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFCliSiTef.ArqLOG = 'CliSiTef.log'
    TEFCliSiTef.EnderecoIP = 'localhost'
    TEFCliSiTef.CodigoLoja = '00000000'
    TEFCliSiTef.NumeroTerminal = 'SE000001'
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnAguardaResp = ACBrTEFD1AguardaResp
    OnExibeMsg = ACBrTEFD1ExibeMsg
    OnExibeQRCode = ACBrTEFD1ExibeQRCode
    OnBloqueiaMouseTeclado = ACBrTEFD1BloqueiaMouseTeclado
    OnComandaECF = ACBrTEFD1ComandaECF
    OnComandaECFSubtotaliza = ACBrTEFD1ComandaECFSubtotaliza
    OnComandaECFPagamento = ACBrTEFD1ComandaECFPagamento
    OnComandaECFAbreVinculado = ACBrTEFD1ComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFD1ComandaECFImprimeVia
    OnInfoECF = ACBrTEFD1InfoECF
    OnAntesFinalizarRequisicao = ACBrTEFD1AntesFinalizarRequisicao
    OnDepoisConfirmarTransacoes = ACBrTEFD1DepoisConfirmarTransacoes
    OnDepoisCancelarTransacoes = ACBrTEFD1DepoisCancelarTransacoes
    OnGravarLog = ACBrTEFD1GravarLog
    Left = 576
    Top = 528
  end
  object ImageList1: TImageList
    Left = 576
    Top = 560
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F30000000000A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C3C3C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B4B4B400202020000000000040404000000000003C3C3C00000000007070
      7000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0000000000000000000000000000000000000000000000000006C6C6C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7000000
      0000E3E3E3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1C
      1C00000000000000000000000000000000000000000000000000585858000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C000000000000000000000000000000000000000000000000001C1C1C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      4800000000000000000000000000000000000000000000000000444444000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000444444000000
      000000000000000000000000000000000000A0A0A00000000000DFDFDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      48000000000014141400606060000C0C0C0000000000CFCFCF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000054545400000000000000000000000000FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F3005C5C5C00181818001C1C1C0064646400F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      18000000000000000000000000000000000000000000B4B4B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBDBDB00000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000404040004040400000000000000000000000
      0000000000002424240000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002424240000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      00000000000050505000000000000000000000000000000000004C4C4C000000
      00000000000024242400000000000000000000000000F3F3F300000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      00005050500000000000909090000000000000000000ACACAC00000000003030
      3000000000000000000000000000000000000000000060606000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000060606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5C00000000000000
      000000000000909090000000000090909000ACACAC0000000000707070000000
      000000000000000000007C7C7C00000000000000000018181800000000000000
      0000404040008080800080808000BFBFBF00BFBFBF0080808000808080004040
      4000000000000000000038383800000000000000000018181800000000000000
      0000404040008080800080808000808080008080800080808000808080004040
      4000000000000000000038383800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      0000000000000000000090909000000000000000000070707000000000000000
      000000000000000000003838380000000000000000001C1C1C00000000000000
      0000404040008080800080808000BFBFBF00BFBFBF0080808000808080004040
      400000000000000000003C3C3C0000000000000000001C1C1C00000000000000
      0000404040008080800080808000808080008080800080808000808080004040
      400000000000000000003C3C3C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C00000000000000
      00000000000000000000ACACAC00000000000000000090909000000000000000
      000000000000000000003C3C3C00000000000000000068686800000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000088888800000000000000000068686800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088888800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000064646400000000000000
      000000000000ACACAC0000000000707070009090900000000000909090000000
      00000000000000000000848484000000000000000000F7F7F700000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      00004C4C4C000000000070707000000000000000000090909000000000003030
      3000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000000000000404040004040400000000000000000000000
      0000000000003030300000000000000000000000000000000000181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003030300000000000000000000000000098989800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00000000000000000000000000181818000000
      0000000000003030300000000000000000000000000000000000303030000000
      0000000000003030300000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C0000000000000000000000000000000000303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB002C2C2C0000000000000000004C4C4C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007C7C7C00383838003C3C3C0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3F3F30060606000181818001C1C1C0068686800F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C00000000000000000000000000000000000000000000000000000000000000
      0000545454000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000101010000000
      0000000000000000000028282800000000000000000000000000000000000000
      0000000000002424240000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300000000000000
      0000000000002828280000000000E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000000000000000
      00002828280000000000E7E7E700000000002828280000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      000000000000E7E7E700000000003C3C3C000000000028282800000000000000
      0000000000000000000038383800000000000000000000000000000000008888
      8800000000000000000000000000000000000000000000000000000000000000
      0000909090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100000000000000000001C1C1C00000000000000
      0000282828000000000000000000000000003C3C3C0000000000E7E7E7000000
      000000000000000000003C3C3C00000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A000000000000000000068686800000000000000
      000000000000000000000000000000000000000000003C3C3C0000000000E7E7
      E700000000000000000088888800000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000909090001010
      1000000000000000000000000000000000000000000000000000000000000000
      000010101000A0A0A000000000000000000000000000F7F7F700000000000000
      00000000000000000000000000000000000000000000000000003C3C3C000000
      0000282828000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3C0000000000303030000000000000000000000000000000000000000000BFBF
      BF00000000008080800080808000404040004040400080808000808080000000
      0000BFBFBF000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000000000000000000000000000000000000000
      0000707070000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000080808000808080006868
      6800000000000000000000000000686868008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424000000000000000000000000000000000000000000000000003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000383838003C3C3C0088888800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000000000000000000000000000B4B4
      B400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400000000000000000000000000F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006C6C6C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000000
      0000000000000000000000000000F7F7F7000000000058585800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000444444003838380000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC0000000000000000000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000141414000000
      000000000000000000000000000000000000D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB00FBFBFB0000000000040404000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACACAC0000000000000000008C8C8C00000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E7000000000000000000000000000000000000000000D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000242424001C1C1C0000000000000000000000
      00000000000000000000000000000000000000000000DBDBDB00000000000000
      0000000000000000000000000000000000000000000000000000D7D7D7000000
      000000000000000000000000000000000000000000000C0C0C00000000000000
      0000000000000000000000000000000000000000000028282800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB000000
      00000000000034343400D7D7D70000000000EFEFEF005C5C5C00000000000000
      000000000000000000000000000000000000EBEBEB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007878
      7800E7E7E7000000000000000000000000007C7C7C0000000000000000003C3C
      3C00282828000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBCBCB00505050002020200040404000B0B0B000000000000000
      000000000000E7E7E70000000000000000006C6C6C00000000003C3C3C000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E7000000000000000000FBFBFB00000000000000
      0000000000001818180000000000000000000404040000000000000000000000
      0000000000000000000000000000000000000000000098989800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00000000000000000000000000000000004040
      4000808080008080800080808000808080008080800080808000000000000000
      0000909090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800000000000000000000000000F3F3F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D700000000000000000000000000505050000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00D3D3D30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFF7000000000000FFE3000000000000FFCF000000000000F08F000000000000
      E01F000000000000C73F000000000000CF9F000000000000CF9F000000000000
      CF9F000000000000CF1F000000000000E03F000000000000F07F000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFF81FF81FFFFFF81F
      F00FF00F8001F00FE007E0078001E007C003C0038001C0038003800380018423
      8001800180018241800180018001818180018001800181818001800180018241
      8003800380018423C003C0038001C003E007E007F99FE007F00FF00FF81FF00F
      FC3FFC3FF83FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF81FFFFF
      F00FF00FF81FFFFFF00FE007F81FC0FF87E1C003F00FC04787E18203F00FC07F
      87E18501F00FC07F80018881E007C04380098041E007C07F80018021E007C041
      C0038013E007C041F00FC003E007807FF00FE007F66F807FF00FF00FF00FFFFF
      FFFFFC3FF00FFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFF1FFFFFFFFFFFF
      FFE0FFFFC003FFFFFFC08001C003FFFFFF039FF9C3C3FFFFFF079FF9C3C39F01
      F20F9FF9C1838F81C00F9FF9C0038FC1803F8001C003C101007F8001C003F001
      007F8001CFC3F839187F9FF9CFC3FFFDB87F8001C007FFFFF07FFFFFC00FFFFF
      E0FFFFFFFFFFFFFFF3FFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 456
    Top = 10
    object estarTef1: TMenuItem
      Caption = 'Configura'#231#227'o'
      object estarTef2: TMenuItem
        Caption = 'Testar Tef'
        OnClick = estarTef2Click
      end
      object Adminitrativo1: TMenuItem
        Caption = 'Administrativo'
        OnClick = Adminitrativo1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 2
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    Left = 609
    Top = 528
  end
  object cdsMultiPagTef: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    Left = 368
    Top = 512
    object cdsMultiPagTefDINHEIRO: TCurrencyField
      FieldName = 'DINHEIRO'
    end
    object cdsMultiPagTefCHEQUE: TCurrencyField
      FieldName = 'CHEQUE'
    end
    object cdsMultiPagTefCREDITO: TCurrencyField
      FieldName = 'CREDITO'
    end
    object cdsMultiPagTefDEBITO: TCurrencyField
      FieldName = 'DEBITO'
    end
    object cdsMultiPagTefCARTEIRA_DIGITAL: TCurrencyField
      FieldName = 'CARTEIRA_DIGITAL'
    end
    object cdsMultiPagTefTICKET: TCurrencyField
      FieldName = 'TICKET'
    end
    object cdsMultiPagTefCONVENIO: TCurrencyField
      FieldName = 'CONVENIO'
    end
    object cdsMultiPagTefRECEBIMENTO: TCurrencyField
      FieldName = 'RECEBIMENTO'
    end
    object cdsMultiPagTefTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object cdsMultiPagTefVALOR_TOTAL: TAggregateField
      FieldName = 'VALOR_TOTAL'
      Expression = 'SUM(TOTAL)'
    end
  end
  object cdsFormaPagamento: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    Left = 400
    Top = 513
    object cdsFormaPagamentoindice: TIntegerField
      FieldName = 'indice'
    end
    object cdsFormaPagamentoFormaPgto: TStringField
      FieldName = 'FormaPgto'
      Size = 100
    end
    object cdsFormaPagamentoValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = '#,###,##0.00'
    end
    object cdsFormaPagamentoid_status: TIntegerField
      FieldName = 'id_status'
    end
    object cdsFormaPagamentodesc_status: TStringField
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsFormaPagamentoNsu: TStringField
      FieldName = 'Nsu'
      Size = 255
    end
    object cdsFormaPagamentorede: TStringField
      FieldName = 'rede'
      Size = 255
    end
    object cdsFormaPagamentoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
  end
end

unit UBitbyteTefDedicado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrTEFD,ACBrTEFDClass,ACBrTEFDCliSiTef, ACBrTEFPayGoComum, ACBrTEFPayGoWebComum,
  ACBrTEFComum, ACBrTEFDPayGoWeb, ImgList, ExtCtrls, StdCtrls, IniFiles,SqlExpr,
  Buttons, Grids, Menus, uVendaClass_Tef, ACBrPosPrinter, ComCtrls, Spin,
  DB, DBClient, DBGrids,ActiveX;

type
     TTipoBotaoOperacao = (bopNaoExibir, bopCancelarVenda, bopLiberarCaixa, bopCancelarEsperaTEF);
     
  TFBitbyteTefDedicado = class(TForm)
    ACBrTEFD1: TACBrTEFD;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    estarTef1: TMenuItem;
    estarTef2: TMenuItem;
    Adminitrativo1: TMenuItem;
    Sair1: TMenuItem;
    ACBrPosPrinter1: TACBrPosPrinter;
    pImpressao: TPanel;
    lSaidaImpressao: TLabel;
    lURLTEF: TLabel;
    mImpressao: TMemo;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lTituloMsgOperador: TLabel;
    lMensagemOperador: TLabel;
    pMensagemCliente: TPanel;
    lTituloMensagemCliente: TLabel;
    lMensagemCliente: TLabel;
    Panel2: TPanel;
    pLogs: TPanel;
    sbLimparLog: TSpeedButton;
    mLog: TMemo;
    Panel1: TPanel;
    Pagina: TPageControl;
    AbaVenda: TTabSheet;
    pOperacao: TPanel;
    gbTotaisVenda: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    seValorInicialVenda: TEdit;
    seTotalDesconto: TEdit;
    seTotalAcrescimo: TEdit;
    edTotalVenda: TEdit;
    edTotalPago: TEdit;
    edTroco: TEdit;
    cbSimularErroNoDoctoFiscal: TCheckBox;
    cbTestePayGo: TComboBox;
    gbPagamentos: TGroupBox;
    sgPagamentos: TStringGrid;
    pBotoesPagamentos: TPanel;
    btIncluirPagamentos: TBitBtn;
    btExcluirPagamento: TBitBtn;
    pStatus: TPanel;
    lNumOperacao: TLabel;
    abaImpressora: TTabSheet;
    gbConfigImpressora: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    btSerial: TSpeedButton;
    btProcuraImpressoras: TSpeedButton;
    seLinhasPular: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seColunas: TSpinEdit;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    btSalvarParametros: TBitBtn;
    btTestarPosPrinter: TBitBtn;
    pImpressoraBotes: TPanel;
    btImprimir: TBitBtn;
    btLimparImpressora: TBitBtn;
    cdsMultiPagTef: TClientDataSet;
    cdsMultiPagTefDINHEIRO: TCurrencyField;
    cdsMultiPagTefCHEQUE: TCurrencyField;
    cdsMultiPagTefCREDITO: TCurrencyField;
    cdsMultiPagTefDEBITO: TCurrencyField;
    cdsMultiPagTefCARTEIRA_DIGITAL: TCurrencyField;
    cdsMultiPagTefTOTAL: TCurrencyField;
    cdsMultiPagTefVALOR_TOTAL: TAggregateField;
    btOperacao: TBitBtn;
    btEfetuarPagamentos: TBitBtn;
    cdsFormaPagamento: TClientDataSet;
    cdsFormaPagamentoindice: TIntegerField;
    cdsFormaPagamentoFormaPgto: TStringField;
    cdsFormaPagamentoValor: TCurrencyField;
    cdsFormaPagamentoid_status: TIntegerField;
    cdsFormaPagamentodesc_status: TStringField;
    cdsFormaPagamentoNsu: TStringField;
    cdsMultiPagTefTICKET: TCurrencyField;
    cdsMultiPagTefCONVENIO: TCurrencyField;
    cdsMultiPagTefRECEBIMENTO: TCurrencyField;
    BtPagamentoTouch: TButton;
    cdsFormaPagamentorede: TStringField;
    cdsFormaPagamentoid_formapgto: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ACBrTEFD1AguardaResp(Arquivo: String;
      SegundosTimeOut: Integer; var Interromper: Boolean);
    procedure ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: String;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFPagamento(IndiceECF: String;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1DepoisCancelarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1DepoisConfirmarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: String; var AModalResult: TModalResult);
    procedure PayGoWebAguardaPinPad(
      OperacaoPinPad: TACBrTEFPGWebAPIOperacaoPinPad; var Cancelar: Boolean);
    procedure PayGoWebAvaliarTransacaoPendente(var Status: Cardinal;
      const Mensagem: String; Resp: TACBrTEFDResp);
    procedure PayGoWebExibeMensagem(Mensagem: String;
      Terminal: TACBrTEFPGWebAPITerminalMensagem; MilissegundosExibicao: Integer);
    procedure PayGoWebExibeMenu(Titulo: String; Opcoes: TStringList;
      var ItemSelecionado: Integer; var Cancelado: Boolean);
    procedure PayGoWebObtemCampo(
      DefinicaoCampo: TACBrTEFPGWebAPIDefinicaoCampo; var Resposta: String;
      var Validado: Boolean; var Cancelado: Boolean);
    procedure ACBrTEFD1ExibeQRCode(const Dados: String);
    procedure ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo; ALogLine: String;
      var Tratado: Boolean);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: String);
    procedure estarTef2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Adminitrativo1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CliSiTefObtemCampo(Titulo: String; TamanhoMinimo,
      TamanhoMaximo: Integer; TipoCampo: Integer;
      Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
      var Digitado: Boolean; var VoltarMenu: Boolean);
    procedure btSerialClick(Sender: TObject);
    procedure btProcuraImpressorasClick(Sender: TObject);
    procedure btTestarPosPrinterClick(Sender: TObject);
    procedure btSalvarParametrosClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btLimparImpressoraClick(Sender: TObject);
    procedure btEfetuarPagamentosClick(Sender: TObject);
    procedure btOperacaoClick(Sender: TObject);
    procedure btIncluirPagamentosClick(Sender: TObject);
    procedure btExcluirPagamentoClick(Sender: TObject);
    procedure seValorInicialVendaChange(Sender: TObject);
    procedure seValorInicialVendaKeyPress(Sender: TObject; var Key: Char);
    procedure seTotalDescontoChange(Sender: TObject);
    procedure seTotalAcrescimoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

    procedure BtPagamentoTouchClick(Sender: TObject);
  private
    { Private declarations }
    FVenda: TVenda;
    FTipoBotaoOperacao: TTipoBotaoOperacao;
    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;
    
    FTestePayGo: Integer;
    FIndicePagto: String;
    INI : TIniFile;
    NomeArquivoConfiguracao : String;
    IGerenciaTef : Integer;
    sCnpjCredencidora : String;

    procedure TratarException(Sender : TObject; E : Exception);
    function GetStatusVenda: TStatusVenda;
    function GetNomeArquivoVenda: String;
    procedure SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);
    procedure SetStatusVenda(AValue: TStatusVenda);
    procedure ImprimirCancelamento(sFormaPagto,sValor : String);

  public
    { Public declarations }
    Msg,sTitulo,sql : String;
    TEF_Conexao : TSQLConnection;
    iStatusVenda,iMultiFormaPagto : Integer;
    pnlMensagem : TPanel;
    fColor,fLlbColor : TColor;
    cValorMultiFormaPagto : Currency;
    sNsu,sRedeAdquirente : String;
    bTestePinPad : Boolean;
    iTipoQRCode : Integer;
    sTamanhoImgQrCode : String;
    sNumNaxCartao : String;
    sSoftwareHouse : String;
    sTelaTouch : Boolean;
    procedure ConfigurarTEF(sConexao : String);
    procedure AdicionarLinhaLog(AMensagem: String);
    procedure AtivarTEF;
    procedure Ativar;
    procedure Desativar;
    procedure MensagemTEF(const MsgOperador, MsgCliente: String);
    procedure OcultatPainelQRCode;
    procedure IniciarOperacao;
    procedure AtualizarCaixaLivreNaInterface;
    procedure AtualizarVendaNaInterface;
    procedure AtualizarTotaisVendaNaInterface;
    procedure AtualizarPagamentosVendaNaInterface;
    procedure LimparMensagensTEF;
    function AcharTransacaoTEFPendente(IndicePagto: Integer): TACBrTEFResp;
    procedure CancelarVenda;
    procedure FinalizarVenda;
    procedure AdicionarLinhaImpressao(ALinha: String);
    procedure LerConfiguracao;
    procedure GravarConfiguracao;
    procedure AtivarPosPrinter;
    procedure ConfigurarPosPrinter;
    procedure VerificarTestePayGo;
    procedure AdicionarPagamento(const Indice: String; AValor: Double);
    procedure ExcluirPagamento(IndicePagto: Integer);
    procedure VendaTef(cValor : Double;sFormaPagto : String);
    procedure CriaFormMensagem(Texto: String;Color,LlbColor : TColor; bMostrar : Boolean);
    procedure CancelarOperacao;
    procedure IniciarTef;
    procedure MultiPagamento(cValor: Double);
    procedure ExcluindoFormaPgtoInvalido;
    procedure MultiPagamentoTouch(cValor: Double);
    property NomeArquivoVenda: String read GetNomeArquivoVenda;
    property StatusVenda: TStatusVenda read GetStatusVenda write SetStatusVenda;
    property TipoBotaoOperacao: TTipoBotaoOperacao read FTipoBotaoOperacao write SetTipoBotaoOperacao;

    property Venda: TVenda read FVenda;
  end;

var
  FBitbyteTefDedicado: TFBitbyteTefDedicado;

implementation

uses
     TypInfo,StrUtils,DateUtils, uMenu_Tef, uObtemCampo_Tef,ACBrUtil,ACBrDelphiZXingQRCode,
  uExibeMensagem_Tef,math, uConfiguraserial_Tef, uIncluirPagamento_Tef,
  UMensagemOperador_Tef,
  //{$IFDEF DELPHICOMPILER7 }
  {$IFDEF VER150 } 
  UTouch_MultiPagamento_Tef,
  {$ENDIF}

  UImagemQrCode_Tef;

{$R *.dfm}

procedure TFBitbyteTefDedicado.ConfigurarTEF(sConexao : String);
var qrySQLTef : TSQLQuery;
begin
     AdicionarLinhaLog('- ConfigurarTEF');
     
     // Verifica se por onde esta sendo exceutado o projeto
     // se a variavel estiver vazia , esta sendo executado
     // atraves do monitor TEf
     // Se a variavel esta preenchida esta utilzando por
     // uma outra aplicação (ex: BBifood);
     if sConexao = '' then
     begin
          ACBrTEFD1.TrocoMaximo := 0;
          IGerenciaTef := 18;

          ACBrTEFD1.ImprimirViaClienteReduzida        := True;
          ACBrTEFD1.MultiplosCartoes                  := True;
          ACBrTEFD1.SuportaDesconto                   := False;
          ACBrTEFD1.SuportaSaque                      := False;
          ACBrTEFD1.TEFPayGo.SuportaReajusteValor     := False;
          
          ACBrTEFD1.Identificacao.SoftwareHouse        := 'BITBYTE INFORMATICA';
          ACBrTEFD1.Identificacao.RegistroCertificacao := '123456';
          ACBrTEFD1.Identificacao.NomeAplicacao        := 'BBIFOOD';
          ACBrTEFD1.Identificacao.VersaoAplicacao      := '3.0';
          sCnpjCredencidora                            := '64006497000138';
          ACBrTEFD1.NumeroMaximoCartoes := 10;
          sNumNaxCartao := '10';

          ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;
          iTipoQRCode       := 4;
          sTamanhoImgQrCode := '10';
          sSoftwareHouse    := 'BITBYTE INFORMATICA';
     end
     else
     begin
          qrySQLTef := TSQLQuery.Create(nil);
          qrySQLTef.SQLConnection := TEF_Conexao;

          sql := 'select NOME_SOFTWARE,REGISTRO_CERTIFICADO,NOME_APLICACAO, '+
                 ' VERSAO_APLICACAO,TROCO_MAXIMO,IMPRIMIR_REDUZIDA, '+
                 ' MULTIPLO_CARTAO,NUMERO_MAXIMO_CARTAO,SUPORTA_DESCONTO, '+
                 ' SUPORTA_SAQUE,SUPORTA_REAJUSTE_VALOR, '+
                 ' TIPO_QRCODE,GERENCIADOR_TEF,TAMANHO_IMG_QRCODE,CGC_SOFTWARE '+
                 'from TBCONFIG_TEF ';

          qrySQLTef.Close;
          qrySQLTef.SQL.Text := sql;
          qrySQLTef.Open;

          IGerenciaTef := qrySQLTef.FieldByName('GERENCIADOR_TEF').AsInteger;
          
          ACBrTEFD1.TrocoMaximo         := qrySQLTef.FieldByName('TROCO_MAXIMO').AsInteger;
          ACBrTEFD1.NumeroMaximoCartoes := qrySQLTef.FieldByName('NUMERO_MAXIMO_CARTAO').AsInteger;
          sNumNaxCartao                 := qrySQLTef.FieldByName('NUMERO_MAXIMO_CARTAO').AsString;


          if qrySQLTef.FieldByName('IMPRIMIR_REDUZIDA').AsString = 'S' then
               ACBrTEFD1.ImprimirViaClienteReduzida := True
          else ACBrTEFD1.ImprimirViaClienteReduzida := False;

          if qrySQLTef.FieldByName('MULTIPLO_CARTAO').AsString = 'S' then
               ACBrTEFD1.MultiplosCartoes := True
          else ACBrTEFD1.MultiplosCartoes := False;

          if qrySQLTef.FieldByName('SUPORTA_DESCONTO').AsString = 'S' then
               ACBrTEFD1.SuportaDesconto  := True
          else ACBrTEFD1.SuportaDesconto  := False;

          if qrySQLTef.FieldByName('SUPORTA_SAQUE').AsString = 'S' then
               ACBrTEFD1.SuportaSaque := True
          else ACBrTEFD1.SuportaSaque := False;

          if qrySQLTef.FieldByName('SUPORTA_REAJUSTE_VALOR').AsString = 'S' then
               ACBrTEFD1.TEFPayGo.SuportaReajusteValor := True
          else ACBrTEFD1.TEFPayGo.SuportaReajusteValor := False;

          ACBrTEFD1.Identificacao.SoftwareHouse        := qrySQLTef.FieldByName('NOME_SOFTWARE').AsString;
          ACBrTEFD1.Identificacao.RegistroCertificacao := qrySQLTef.FieldByName('REGISTRO_CERTIFICADO').AsString;
          ACBrTEFD1.Identificacao.NomeAplicacao        := qrySQLTef.FieldByName('NOME_APLICACAO').AsString;
          ACBrTEFD1.Identificacao.VersaoAplicacao      := qrySQLTef.FieldByName('VERSAO_APLICACAO').AsString;
          sCnpjCredencidora                            := qrySQLTef.FieldByName('CGC_SOFTWARE').AsString;
          sSoftwareHouse                               := qrySQLTef.FieldByName('NOME_SOFTWARE').AsString;

          case qrySQLTef.FieldByName('TIPO_QRCODE').AsInteger of
               0: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreNaoSuportado;
               2: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoPinPad;
               3, 4: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;
          else
               ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreAuto;
          end;

          iTipoQRCode       := qrySQLTef.FieldByName('TIPO_QRCODE').AsInteger;
          sTamanhoImgQrCode := qrySQLTef.FieldByName('TAMANHO_IMG_QRCODE').AsString;

     end;

     ACBrTEFD1.TEFPayGo.SuportaNSUEstendido      := True;
     ACBrTEFD1.TEFPayGo.SuportaViasDiferenciadas := True;
     ACBrTEFD1.ConfirmarAntesDosComprovantes     := True;
     ACBrTEFD1.BloquearMouseTeclado(False);
         
     {$IFDEF VER150 }
          ACBrTEFD1.ArqLog := 'C:\Tef';
          ACBrTEFD1.PathBackup := 'C:\Tef';
     {$ENDIF}

     // Configurações abaixo são obrigatórios, para funcionamento de Não Fiscal //
     ACBrTEFD1.AutoEfetuarPagamento := False;
     ACBrTEFD1.AutoFinalizarCupom   := False;
end;

procedure TFBitbyteTefDedicado.AdicionarLinhaLog(AMensagem: String);
begin
     mLog.Lines.Add(AMensagem);
end;

procedure TFBitbyteTefDedicado.FormCreate(Sender: TObject);
var
     N: TACBrPosPrinterModelo;
     O: TACBrPosPaginaCodigo;
begin
     FVenda := TVenda.Create(NomeArquivoVenda);
     CoInitialize(nil);
     if not DirectoryExists('c:\ParamBBi') then
          ForceDirectories('c:\ParamBBi');

     NomeArquivoConfiguracao := 'c:\ParamBBi\ConfigTefWeb.ini';

          
     cbxModeloPosPrinter.Items.Clear ;
     For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
          cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

     cbxPagCodigo.Items.Clear ;
     For O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
          cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

     Pagina.ActivePage := AbaVenda;
     mLog.Clear;
     mImpressao.Clear;

     // monta a grid de dados
     with sgPagamentos do
     begin
          ColWidths[0] := 35;
          ColWidths[1] := 150;
          ColWidths[2] := 100;
          ColWidths[3] := 110;
          ColWidths[4] := 110;
          ColWidths[5] := 100;
          ColWidths[6] := 140;

          Cells[0, 0] := 'Item';
          Cells[1, 0] := 'Forma de Pagamento';
          Cells[2, 0] := 'Valor';
          Cells[3, 0] := 'NSU';
          Cells[4, 0] := 'Rede';
          Cells[5, 0] := 'Status';
          Cells[6, 0] := 'CNPJ Credenciadora';
     end;

     LerConfiguracao;
     LimparMensagensTEF;
     FTipoBotaoOperacao := High(TTipoBotaoOperacao);    // Força atualizar tela
     Venda.Status       := High(TStatusVenda);          // Força atualizar tela
     ACBrTEFD1.GPAtual  := gpPayGoWeb;

     FCanceladoPeloOperador := False;
     
     FTempoDeEspera := 0;
     FTestePayGo    := 0;
     FIndicePagto   := '';
     cbTestePayGo.ItemIndex := 0;

     ACBrTEFD1.TEFCliSiTef.OnObtemCampo := CliSiTefObtemCampo;
     cdsMultiPagTef.CreateDataSet;
     cdsMultiPagTef.Open;

     cdsFormaPagamento.CreateDataSet;
     cdsFormaPagamento.Open;
end;

procedure TFBitbyteTefDedicado.AtivarTEF;
begin
     AdicionarLinhaLog('- AtivarTEF');
     ConfigurarTEF('');
     ACBrTEFD1.Inicializar(TACBrTEFDTipo(IGerenciaTef));  // 18 Paygo Web
end;

procedure TFBitbyteTefDedicado.Ativar;
begin
     AdicionarLinhaLog('- Ativar');

     try
          AtivarPosPrinter;
     except
     On E: Exception do
          begin
               TratarException(nil, E);
          end;
     end;
     AtivarTEF;
end;

procedure TFBitbyteTefDedicado.Desativar;
begin
     AdicionarLinhaLog('- Desativar');
     ACBrTEFD1.DesInicializar(TACBrTEFDTipo(IGerenciaTef));
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1AguardaResp(Arquivo: String;
  SegundosTimeOut: Integer; var Interromper: Boolean);
begin
     if FCanceladoPeloOperador then
     begin
          FCanceladoPeloOperador := True;
          Interromper := True ;
          Exit;
     end;

     Msg := '' ;

     if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague, gpPayGoWeb]) then   // É TEF dedicado ?
     begin
          if (Arquivo = '23') and ACBrTEFD1.TecladoBloqueado then  // Está aguardando Pin-Pad ?
          begin
               // Desbloqueia o Teclado
               ACBrTEFD1.BloquearMouseTeclado(False);
               // Ajusta Interface para Espera do TEF, com opçao de cancelamento pelo Operador
               StatusVenda := stsAguardandoTEF;

               Msg := 'Aguardando Resposta do Pinpad.  Pressione <ESC> para Cancelar';
               FCanceladoPeloOperador := False;
          end;
     end
     else if FTempoDeEspera <> SegundosTimeOut then
     begin
          Msg := 'Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut) ;
          FTempoDeEspera := SegundosTimeOut;
     end;

     if Msg <> '' then
          AdicionarLinhaLog(Msg);

     Application.ProcessMessages;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1AntesFinalizarRequisicao(
  Req: TACBrTEFDReq);
begin
     AdicionarLinhaLog('Enviando: '+Req.Header+' ID: '+IntToStr( Req.ID ) );

     FCanceladoPeloOperador := False;
     FTempoDeEspera := 0;

     // Use esse evento, para inserir campos personalizados, ou modificar o arquivo
     // de requisião, que será criado e envido para o Gerenciador Padrão

     if (ACBrTEFD1.GPAtual = gpPayGo) then
     begin
          if (Req.Header = 'CRT') then
          begin
               // Instruindo CRT a apenas transações de Crédito
               if (FIndicePagto = '03') then
               begin
                    Req.GravaInformacao(730,000,'1');  // 1: venda (pagamento com cartão)
                    Req.GravaInformacao(731,000,'1');  // 1: crédito

               end

               // Instruindo CRT a apenas transações de Débito
               else if (FIndicePagto = '04') then
               begin
                    Req.GravaInformacao(730,000,'1');  // 1: venda (pagamento com cartão)
                    Req.GravaInformacao(731,000,'2');  // 2: débito

               end;

               FIndicePagto := '';
          end;

          if (FTestePayGo > 0) then
          begin
               if (Req.Header = 'CRT') and (FTestePayGo = 2) then // Passo 02 - Venda à vista aprovada com pré-seleção de parâmetros
                begin
                    Req.GravaInformacao(010,000,'CERTIF');
                    Req.GravaInformacao(730,000,'1');  // operação “VENDA”
                    Req.GravaInformacao(731,000,'1');  // tipo de cartão “CRÉDITO”
                    Req.GravaInformacao(732,000,'1');  // tipo de financiamento “À VISTA”
                end

               else if (Req.Header = 'CRT') and (FTestePayGo = 3) then // Passo 03 - Venda parcelada aprovada com pré-seleção de parâmetros
               begin
                    Req.GravaInformacao(010,000,'CERTIF');
                    Req.GravaInformacao(018,000,'3');  // número de parcelas = 3
                    Req.GravaInformacao(730,000,'1');  // operação “VENDA”
                    Req.GravaInformacao(731,000,'2');  // tipo de cartão “DÉBITO”
                    Req.GravaInformacao(732,000,'3');  // tipo de financiamento “PARCELADO PELO ESTABELECIMENTO”
               end
               else if (Req.Header = 'CRT') and (FTestePayGo = 4) then // Passo 04 - Venda aprovada em moeda estrangeira
               begin
                    Req.GravaInformacao(004,000,'1');  // Dólar americano
               end
               else if (Req.Header = 'CRT') and (FTestePayGo = 27) then // Passo 27 - Venda aprovada com pré-seleção de parâmetros de carteira digital
               begin
                    Req.GravaInformacao(010,000,'CERTIF');
                    Req.GravaInformacao(749,000,'8');  // Tipo de Pagamento como carteira digital
                    Req.GravaInformacao(750,000,'1');  // Identificação da Carteira Digital como QR Code
               end
               else if (Req.Header = 'ADM') and (FTestePayGo = 31) then // Passo 31 - Operação bem sucedida com valor pré-definido
               begin
                    Req.GravaInformacao(003,000,'1');
               end;

               FTestePayGo := 0;
          end;
     end;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1BloqueiaMouseTeclado(
  Bloqueia: Boolean; var Tratado: Boolean);
begin
     AdicionarLinhaLog('BloqueiaMouseTeclado = '+IfThen(Bloqueia,'SIM', 'NAO'));
     Tratado := True ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ComandaECF(
  Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp;
  var RetornoECF: Integer);

  procedure PularLinhasECortar;
  begin
     AdicionarLinhaImpressao('</pular_linhas>');
     AdicionarLinhaImpressao('</corte>');
  end;
begin
     AdicionarLinhaLog('ACBrTEFD1ComandaECF: '+GetEnumName( TypeInfo(TACBrTEFDOperacaoECF), integer(Operacao) ));

     try
          case Operacao of

          opeAbreGerencial:
               AdicionarLinhaImpressao('</zera>');

          opeSubTotalizaCupom:
          begin
               if StatusVenda = stsIniciada then
                    StatusVenda := stsEmPagamento;
          end;

          opeCancelaCupom:
               CancelarVenda;

         opeFechaCupom:
               FinalizarVenda;
          
          opeFechaGerencial, opeFechaVinculado:
          begin
               if StatusVenda in [stsOperacaoTEF] then
                    StatusVenda := stsFinalizada;
               end;
          end;

          RetornoECF := 1 ;
     except
          RetornoECF := 0 ;
     end; 
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: String; Valor: Double; var RetornoECF: Integer);
begin
     AdicionarLinhaLog( 'ACBrTEFD1ComandaECFAbreVinculado, COO:'+COO+
               ' IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor) ) ;
     AdicionarLinhaImpressao('</zera>');
     AdicionarLinhaImpressao('</linha_dupla>');
     RetornoECF := 1;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
     AdicionarLinhaLog( 'ACBrTEFD1ComandaECFImprimeVia: '+IntToStr(Via) );
     AdicionarLinhaImpressao( ImagemComprovante.Text );
     RetornoECF := 1 ;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ComandaECFPagamento(
  IndiceECF: String; Valor: Double; var RetornoECF: Integer);
begin
     AdicionarLinhaLog('ACBrTEFD1ComandaECFPagamento, IndiceECF: '+IndiceECF+' Valor: '+FormatFloatBr(Valor));
     RetornoECF := 1;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ComandaECFSubtotaliza(
  DescAcre: Double; var RetornoECF: Integer);
begin
     AdicionarLinhaLog('ACBrTEFD1ComandaECFSubtotaliza: DescAcre: ' + FormatFloatBr(DescAcre));

     if StatusVenda = stsIniciada then
          StatusVenda := stsEmPagamento;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1DepoisCancelarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
  var
     i: Integer;
begin
     for i := 0 to RespostasPendentes.Count-1  do
     begin
          with RespostasPendentes[i] do
          begin
               AdicionarLinhaLog('Cancelada: '+Header+' ID: '+IntToStr( ID ) );
               AdicionarLinhaLog('- Rede: '  + Rede + ', NSU: '  + NSU );

               Venda.Pagamentos.CancelarPagamento(Rede, NSU, ValorTotal);
          end;
     end;
     
     AtualizarPagamentosVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1DepoisConfirmarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
  var
  i: Integer;
begin
     for i := 0 to RespostasPendentes.Count-1  do
     begin
          with RespostasPendentes[i] do
          begin
               AdicionarLinhaLog('Confirmado: '+Header+' ID: '+IntToStr( ID ) );

               // Lendo os campos mapeados //
               AdicionarLinhaLog('- Rede: '  + Rede + ', NSU: '  + NSU );
               AdicionarLinhaLog('- É Débito: '+BoolToStr(Debito)+
                                 ', É Crédito: '+BoolToStr(Credito)+
                                 ', Valor: '+ FormatFloat('###,###,##0.00',ValorTotal)) ;

               Venda.Pagamentos.ConfirmarPagamento(Rede, NSU, ValorTotal);
          end;
     end;

     AtualizarPagamentosVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ExibeMsg(
  Operacao: TACBrTEFDOperacaoMensagem; Mensagem: String;
  var AModalResult: TModalResult);
  var
   Fim : TDateTime;
   OldMensagem : String;
begin
     case Operacao of

     opmOK:
          begin
               if ACBrTEFD1.GPAtual = gpPayGoWeb then
                    PayGoWebExibeMensagem( Mensagem, tmOperador, CMilissegundosMensagem)
          else
               AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);
          end;

     opmYesNo:
          AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes, mbNo], 0);

     opmExibirMsgOperador:
          MensagemTEF(Mensagem,'') ;

     opmRemoverMsgOperador:
          MensagemTEF(' ','') ;

     opmExibirMsgCliente:
          MensagemTEF('', Mensagem) ;

     opmRemoverMsgCliente:
          MensagemTEF('', ' ') ;

     opmDestaqueVia:
          begin
               OldMensagem := lMensagemOperador.Caption;
               try
                    { Aguardando 3 segundos }
                    Fim := IncSecond(now, 3)  ;
                    repeat
                         MensagemTEF(Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)), '');
                         Sleep(200) ;
                    until (now > Fim) ;
               finally
                    MensagemTEF(OldMensagem, '');
               end;
          end;
     end;
end;

procedure TFBitbyteTefDedicado.PayGoWebAguardaPinPad(
  OperacaoPinPad: TACBrTEFPGWebAPIOperacaoPinPad; var Cancelar: Boolean);
begin
   AdicionarLinhaLog( 'PayGoWebAguardaPinPad: '+
     GetEnumName(TypeInfo(TACBrTEFPGWebAPIOperacaoPinPad), integer(OperacaoPinPad) ) );

     if FCanceladoPeloOperador then
     begin
          FCanceladoPeloOperador := False;
          Cancelar := True ;
          FreeAndNil(FMensagemOperador_Tef);
     end
     else if (StatusVenda <> stsAguardandoTEF) then
     begin
          StatusVenda := stsAguardandoTEF;   // Liga Botão que permite cancelar
          FCanceladoPeloOperador := False;
     end;
     Application.ProcessMessages;
end;

procedure TFBitbyteTefDedicado.PayGoWebAvaliarTransacaoPendente(
  var Status: Cardinal; const Mensagem: String; Resp: TACBrTEFDResp);
var
  MR: TModalResult;
begin
     // deixei automatico porque enquanto não resolver as pendencia , as compras
     // futuras não sera concluidas
     // e se deixar que nosso usuário resolva ele pode cancelar a pendencia da ultima compra
     // pois isso deixei automatico
    
    // Status := PWCNF_REV_MANU_AUT;
    
     MR := mrYes;
     ACBrTEFD1ExibeMsg( opmYesNo, Mensagem + sLineBreak + sLineBreak + 'Confirmar ?', MR);

     if (MR = mrNo) then
          Status := PWCNF_REV_MANU_AUT
     else
     begin
          // Imprimindo comrovante pendente //
          AdicionarLinhaImpressao( Resp.ImagemComprovante1aVia.Text );
          AdicionarLinhaImpressao('</pular_linhas>');
          AdicionarLinhaImpressao('</corte>');
          AdicionarLinhaImpressao( Resp.ImagemComprovante2aVia.Text );
          AdicionarLinhaImpressao('</pular_linhas>');
          AdicionarLinhaImpressao('</corte>');

          Status := PWCNF_CNF_MANU_AUT;
     end; 
end;

procedure TFBitbyteTefDedicado.PayGoWebExibeMenu(Titulo: String; Opcoes: TStringList;
  var ItemSelecionado: Integer; var Cancelado: Boolean);
Var
  MR: TModalResult ;
  FormMenuTEF : TFMenu_TEF;
begin
     AdicionarLinhaLog( 'PayGoWebExibeMenu: '+Titulo + sLineBreak + Opcoes.Text );

     if Opcoes.Count < 1 then
     begin
          Cancelado := True;
          Exit;
     end;

     FreeAndNil(FMensagemOperador_Tef);
     FormMenuTEF := TFMenu_Tef.Create(self);
     try
          FormMenuTEF.Titulo := sTitulo;
          FormMenuTEF.Opcoes := Opcoes;
          FormMenuTEF.btVoltar.Visible := False;  // PayGoWeb não suporta Voltar
          FormMenuTEF.UsaTeclasDeAtalho := (copy(Opcoes[0],1,4) = '1 - ');
          FormMenuTEF.ItemSelecionado := ItemSelecionado;

          // determina as cores
          FormMenuTEF.pTitulo.Color       := fColor;
          FormMenuTEF.pTitulo.Font.Color  := fLlbColor;
          FormMenuTEF.PnlBotao.Color      := fColor;
          FormMenuTEF.Splitter1.Color     := fColor;
          
          MR := FormMenuTEF.ShowModal ;

          if (MR = mrOK) then
          begin
               ItemSelecionado  := FormMenuTEF.ItemSelecionado;
               iMultiFormaPagto := 0;
          end
          else
          begin
               Cancelado := True;
               iMultiFormaPagto := -2;
          end
     finally
          FormMenuTEF.Free;
     end;
     FreeAndNil(FMensagemOperador_Tef);
end;

procedure TFBitbyteTefDedicado.PayGoWebObtemCampo(
  DefinicaoCampo: TACBrTEFPGWebAPIDefinicaoCampo; var Resposta: String;
  var Validado: Boolean; var Cancelado: Boolean);
Var
  MR: TModalResult ;
  FormObtemCampo: TFObtemCampo_Tef;
begin
  AdicionarLinhaLog( 'PayGoWebObtemCampo: '+DefinicaoCampo.Titulo );

  { NOTA: Se DefinicaoCampo.ValidacaoDado = "pgvSenhaLojista"
          Você deve chamar a Tela de Senha do seu sistema, e retornar o NOME do
          Operador, NUNCA a Senha digitada

  if (DefinicaoCampo.ValidacaoDado = pgvSenhaLojista) then
  begin
    Validado := True;
    Cancelado := False;
    Resposta := fOperador;
    Exit;
  end;
  }

     FormObtemCampo := TFObtemCampo_Tef.Create(self);

     try
          FormObtemCampo.Titulo := DefinicaoCampo.Titulo;
          FormObtemCampo.TamanhoMaximo := DefinicaoCampo.TamanhoMaximo;
          FormObtemCampo.TamanhoMinimo := DefinicaoCampo.TamanhoMinimo;
          FormObtemCampo.Resposta := DefinicaoCampo.ValorInicial;
          FormObtemCampo.Ocultar := DefinicaoCampo.OcultarDadosDigitados;
          FormObtemCampo.Mascara := DefinicaoCampo.MascaraDeCaptura;
          FormObtemCampo.btVoltar.Visible := False;  // PayGoWeb não suporta Voltar;

          if sTelaTouch = False then
          begin
               FormObtemCampo.height := 178;
               FormObtemCampo.pnlNumeros.visible := False;
          end
          else
          begin
               FormObtemCampo.height := 502;
               FormObtemCampo.pnlNumeros.visible := True;
          end;
          
          if (pos('R$', DefinicaoCampo.MascaraDeCaptura) > 0) or
               (pos('@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) then
               FormObtemCampo.TipoCampo := tcoCurrency
          else
          begin
               case DefinicaoCampo.TiposEntradaPermitidos of
               pgApenasLeitura:
                    FormObtemCampo.edtResposta.ReadOnly := True;
               pgtNumerico:
                    FormObtemCampo.TipoCampo := tcoNumeric;
               pgtAlfabetico:
                    FormObtemCampo.TipoCampo := tcoAlfa;
               pgtAlfaNum:
                    FormObtemCampo.TipoCampo := tcoAlfaNum;
          else
               FormObtemCampo.TipoCampo := tcoString;
          end;
     end;

     MR := FormObtemCampo.ShowModal ;

     Cancelado := (MR <> mrOK) ;
     Resposta := FormObtemCampo.Resposta;

     if (FormObtemCampo.TipoCampo = tcoCurrency) then  // PayGoWeb não precisa de ponto decimal
          Resposta := OnlyNumber(Resposta);
     finally
          FormObtemCampo.Free;
     end;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1ExibeQRCode(const Dados: String);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
  SL: TStringList;
begin
     if (iTipoQRCode = 4) then  // 4 - Imprimir
     begin
          FreeAndNil(FMensagemOperador_Tef);
          if (Dados <> '') then
          begin
               AdicionarLinhaImpressao( '</zera></ce>'+
                                        '<qrcode_largura>'+sTamanhoImgQrCode+'</qrcode_largura>'+
                                        '<qrcode>'+Dados+'</qrcode>' +
                                        '</lf> '+
                                        '</lf> '+
                                        '</lf> '+
                                        '</lf> '+
                                        '<n> REALIZE A LEITURA DO QR CODE </n> '+
                                        '</lf></lf></lf></lf></corte_total>');

               ACBrPosPrinter1.ImprimirLinha('');
               ACBrPosPrinter1.ImprimirLinha('');
               ACBrPosPrinter1.ImprimirLinha('');
               ACBrPosPrinter1.ImprimirLinha('');
               ACBrPosPrinter1.CortarPapel(True);
          end;

          Exit;
     end
     else
     if (iTipoQRCode = 3) then // exibir na tela
     begin
          if (Dados <> '') then
          begin
               FreeAndNil(FMensagemOperador_Tef);
               application.CreateForm(TFImagemQrCode_Tef,FImagemQrCode_Tef);
               QRCode := TDelphiZXingQRCode.Create;
               QRCodeBitmap := TBitmap.Create;

               try
                    QRCode.Encoding  := qrUTF8NoBOM;
                    QRCode.QuietZone := 2;
                    QRCode.Data      := widestring(Dados);

                    QRCodeBitmap.Width  := QRCode.Columns;
                    QRCodeBitmap.Height := QRCode.Rows;

                    for Row := 0 to QRCode.Rows - 1 do
                    begin
                         for Column := 0 to QRCode.Columns - 1 do
                         begin
                              if (QRCode.IsBlack[Row, Column]) then
                                   QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
                              else
                                   QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
                         end;
                    end;

                    FImagemQrCode_Tef.imgQRCode.Picture.Bitmap.Assign(QRCodeBitmap);
               finally
                    QRCode.Free;
                    QRCodeBitmap.Free;
               end;

               FImagemQrCode_Tef.Show();
          end
          else
          begin
               OcultatPainelQRCode;
               Exit;
          end;
     end;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo;
  ALogLine: String; var Tratado: Boolean);
begin
     AdicionarLinhaLog(ALogLine);
     Tratado := False;
end;

procedure TFBitbyteTefDedicado.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: String);
begin
    case Operacao of

     ineSubTotal :
          RetornoECF := FloatToStr( Venda.TotalVenda ) ;

     ineTotalAPagar :
          begin
               RetornoECF := FloatToStr( RoundTo(Venda.TotalPago - ACBrTEFD1.RespostasPendentes.TotalPago, -2) );
          end;

     ineEstadoECF :
          begin
              //"L" - Livre
              //"V" - Venda de Itens
              //"P" - Pagamento (ou SubTotal efetuado)
              //"C" ou "R" - CDC ou Cupom Vinculado
              //"G" ou "R" - Relatório Gerencial
              //"N" - Recebimento Não Fiscal
              //"O" - Outro
              Case StatusVenda of
                    stsIniciada:
                         RetornoECF := 'V' ;
                    stsEmPagamento:
                         RetornoECF := 'P' ;
                    stsLivre, stsFinalizada, stsCancelada, stsAguardandoTEF, stsOperacaoTEF:
                         RetornoECF := 'L' ;
              else
                RetornoECF := 'O' ;
              end;
          end;
     end;  
end;

procedure TFBitbyteTefDedicado.MensagemTEF(const MsgOperador, MsgCliente: String);
var sTexto : string;
     function RemoveEnter(Str: string): string;
     const
          ComEnter = '#$';
          SemEnter = '';
     var
     x: Integer;
     begin;
          for x := 1 to Length(Str) do
               if Pos(Str[x],ComEnter) <> 0 then
                    Str[x] := SemEnter[Pos(Str[x], ComEnter)];
          Result := Str;
     end;

begin
     if (Trim(MsgOperador) <> '') then
     begin
          lMensagemOperador.Caption := MsgOperador;

          // retira o enter
          sTexto := RemoveEnter(MsgOperador);
          sTexto := StringReplace(sTexto, 'AGUARDE O CARTAO'
                                   ,'INSIRA OU PASSE O CARTÃO', [rfReplaceAll]);

          sTexto := StringReplace(sTexto, 'O NUMERO DO CARTAO'
                                   ,'', [rfReplaceAll]);

          if Trim(sTexto) <> 'TESTE OK' then
               CriaFormMensagem(sTexto,fColor,fLlbColor,True);

          if (Trim(sTexto) = 'REMOVER O CARTAO') then
               FreeAndNil(FMensagemOperador_Tef);

     end;

     if (MsgCliente <> '') then
     begin
          lMensagemCliente.Caption := MsgCliente;

          if iTipoQRCode = 4 then
          begin
               // retira o enter
               sTexto := RemoveEnter(MsgCliente);

               // faz o tratamento da mensagem da tela
               sTexto := StringReplace(Trim(sTexto), 'REALIZE A LEITURA DO QR CODE'
                                        ,'', [rfReplaceAll]);

               sTexto := StringReplace(Trim(sTexto), 'QR CODE 00'
                                        ,'', [rfReplaceAll]);

               if Trim(sTexto) = 'REALIZE A LEITURA DO' then
                    CriaFormMensagem('REALIZE A LEITURA DO QR CODE',fColor,fLlbColor,True);
          end;
     end;      

     pMensagemOperador.Visible := (Trim(lMensagemOperador.Caption) <> '');
     pMensagemCliente.Visible := (Trim(lMensagemCliente.Caption) <> '');
     pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
     Application.ProcessMessages;
end;

procedure TFBitbyteTefDedicado.OcultatPainelQRCode;
begin
     FreeAndNil(FImagemQrCode_Tef);
end;

procedure TFBitbyteTefDedicado.PayGoWebExibeMensagem(Mensagem: String;
  Terminal: TACBrTEFPGWebAPITerminalMensagem; MilissegundosExibicao: Integer);
var
  FormExibeMensagem: TFExibeMensagem_Tef;
begin
     if (Mensagem = '') then
     begin
          if Terminal = tmCliente then
               MensagemTEF('',' ') ;
          if Terminal = tmOperador then
               MensagemTEF(' ','') ;
     end
     else
     if MilissegundosExibicao >= 0 then
     begin
          FormExibeMensagem := TFExibeMensagem_Tef.Create(Self);

          try
               FormExibeMensagem.Mensagem := Mensagem;
               FormExibeMensagem.TempoEspera := MilissegundosExibicao;

                if Trim(Mensagem) = 'ERRO PINPAD' then
                    bTestePinPad := False;

               // determina as cores
               FormExibeMensagem.Color                := fColor;
               FormExibeMensagem.lMensagem.Color      := fColor;
               FormExibeMensagem.lMensagem.Font.Color := fLlbColor;
               
               FormExibeMensagem.ShowModal;
          finally
               FormExibeMensagem.Free;
          end;
          FreeAndNil(FMensagemOperador_Tef);
     end
     else
     begin
          if Terminal = tmCliente then
               MensagemTEF('',Mensagem) ;
          if Terminal = tmOperador then
               MensagemTEF(Mensagem,'') ;
     end;
end;

procedure TFBitbyteTefDedicado.estarTef2Click(Sender: TObject);
begin
     AdicionarLinhaLog('- Testando o Tef ');
     bTestePinPad := True;
     try
          try
               AtivarTEF;
               ACBrTEFD1.ATV;
          finally
               StatusVenda := stsLivre;

          end;
     except
          On E: Exception do
          begin
               MessageDlg(Format('Falha ao ativar TEF %S' + sLineBreak + E.Message, ['Testando o Tef']), mtError, [mbOK], 0);
               bTestePinPad := False;
          end;
     end;
end;

procedure TFBitbyteTefDedicado.Sair1Click(Sender: TObject);
begin
     Close;
end;

procedure TFBitbyteTefDedicado.Adminitrativo1Click(Sender: TObject);
begin
     AdicionarLinhaLog('- btAdministrativoClick');
      StatusVenda := stsLivre;
     Ativar;
     IniciarOperacao;
     StatusVenda := stsOperacaoTEF;
     sTelaTouch  := False;
     try

          sTitulo := 'SELECIONE UMA OPÇÃO';
          
          ACBrTEFD1.ADM;
          
     finally
          StatusVenda := stsFinalizada;
          FreeAndNil(FMensagemOperador_Tef);
     end;
end;

function TFBitbyteTefDedicado.GetStatusVenda: TStatusVenda;
begin
     Result := Venda.Status;
end;

procedure TFBitbyteTefDedicado.SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);
var
  MsgOperacao: String;
begin
     if FTipoBotaoOperacao = AValue then
          Exit;

     MsgOperacao := '';

     case AValue of
          bopCancelarVenda, bopCancelarEsperaTEF:
               MsgOperacao := 'Cancelar';

          bopLiberarCaixa:
               MsgOperacao := 'Liberar';
     end;

     FTipoBotaoOperacao := AValue;
end;

procedure TFBitbyteTefDedicado.SetStatusVenda(AValue: TStatusVenda);
var
  MsgStatus: String;
begin
     if StatusVenda = AValue then
          Exit;

     AdicionarLinhaLog('- StatusOperacao: '+GetEnumName(TypeInfo(TStatusVenda), integer(AValue) ));
     
     case AValue of
      stsIniciada:
          begin
               MsgStatus := 'EM VENDA';
               TipoBotaoOperacao := bopCancelarVenda;
               AtualizarVendaNaInterface;
          end;

      stsEmPagamento:
          begin
               MsgStatus := 'EM PAGAMENTO';
               TipoBotaoOperacao := bopCancelarVenda;
          end;

      stsFinalizada:
          begin
               MsgStatus := 'FINALIZADA';
               TipoBotaoOperacao := bopLiberarCaixa;
          end;

      stsCancelada:
          begin
               MsgStatus := 'CANCELADA';
               TipoBotaoOperacao := bopLiberarCaixa;
          end;

      stsAguardandoTEF:
          begin
               MsgStatus := 'TRANSACAO TEF';
               TipoBotaoOperacao := bopCancelarEsperaTEF;
          end;

      stsOperacaoTEF:
          begin
               MsgStatus := 'OPERAÇÃO TEF';
               TipoBotaoOperacao := bopNaoExibir;
               AtualizarVendaNaInterface;
          end;
      else
          MsgStatus := 'CAIXA LIVRE';
          TipoBotaoOperacao := bopNaoExibir;
          AtualizarCaixaLivreNaInterface;
     end;

     pStatus.Caption := MsgStatus;

     Venda.Status := AValue;

     if (AValue <> stsLivre) then
          Venda.Gravar;
end;

procedure TFBitbyteTefDedicado.AtualizarCaixaLivreNaInterface;
begin
     AdicionarLinhaLog('- AtualizarCaixaLivreNaInterface');
     LimparMensagensTEF;
     Venda.Clear;
     AtualizarVendaNaInterface;
     FCanceladoPeloOperador := False;
     FTempoDeEspera := 0;
end;

procedure TFBitbyteTefDedicado.AtualizarVendaNaInterface;
begin
     lNumOperacao.Caption := FormatFloat('000000',Venda.NumOperacao);
     seValorInicialVenda.Text := FormatFloatBr(Venda.ValorInicial);
     AtualizarPagamentosVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.AtualizarTotaisVendaNaInterface;
begin
     seTotalDesconto.Text  := FormatFloatBr(Venda.TotalDesconto);
     seTotalAcrescimo.Text := FormatFloatBr(Venda.TotalAcrescimo);
     edTotalVenda.Text     := FormatFloatBr(Venda.TotalVenda);
     edTotalPago.Text      := FormatFloatBr(Venda.TotalPago);
     edTroco.Text          := FormatFloatBr(max(Venda.Troco,0));
end;

procedure TFBitbyteTefDedicado.AtualizarPagamentosVendaNaInterface;
var
  i, ARow: Integer;
  AResp: TACBrTEFResp;
begin
     sgPagamentos.RowCount := 1;
     ARow := sgPagamentos.RowCount;

     for i := 0 to Venda.Pagamentos.Count-1 do
     begin
          sgPagamentos.RowCount := sgPagamentos.RowCount + 1;

          with Venda.Pagamentos[i] do
          begin
               if not Cancelada then
               begin
                    AResp := AcharTransacaoTEFPendente(i);

                    if Assigned(AResp) then
                         Confirmada := AResp.CNFEnviado;
               end;

               sgPagamentos.Cells[0, ARow] := FormatFloat('000', ARow);
               sgPagamentos.Cells[1, ARow] := TipoPagamento + ' - ' + DescricaoTipoPagamento(TipoPagamento);
               sgPagamentos.Cells[2, ARow] := FormatFloatBr(ValorPago);
               sgPagamentos.Cells[3, ARow] := NSU;
               sgPagamentos.Cells[4, ARow] := Rede;
               sgPagamentos.Cells[5, ARow] := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
               sgPagamentos.Cells[6, ARow] := RedeCNPJ;

               // alimenta a variavel para
               // gravar na tabela de venda da Bitbyte
               if Trim(NSU) <> '' then
               begin
                    sNsu            := NSU;
                    sRedeAdquirente := Rede;
               end;

               // alimenta o cds de multipagamento
               if cdsFormaPagamento.Locate('indice',ARow,[])then
               begin
                    cdsFormaPagamento.Edit;
                    cdsFormaPagamentoid_status.AsInteger  := ifthen(Cancelada, 3,ifthen(Confirmada, 2,1));
                    cdsFormaPagamentodesc_status.AsString := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
                    cdsFormaPagamentoNsu.AsString         :=  NSU;
                    cdsFormaPagamentorede.AsString        :=  Rede;
                    cdsFormaPagamento.Post;
               end;
          end;

          Inc(ARow);
     end;

     AtualizarTotaisVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.LimparMensagensTEF;
begin
       MensagemTEF(' ',' ');
end;

function TFBitbyteTefDedicado.AcharTransacaoTEFPendente(IndicePagto: Integer
  ): TACBrTEFResp;
var
     i: Integer;
begin
     Result := Nil;

     if (IndicePagto < 0) and (IndicePagto >=  Venda.Pagamentos.Count) then
          Exit;

     i := 0;

     while (i < ACBrTEFD1.RespostasPendentes.Count) and (Result = Nil) do
     begin
          if (ACBrTEFD1.RespostasPendentes[i].Rede = Venda.Pagamentos[IndicePagto].Rede) and
             (ACBrTEFD1.RespostasPendentes[i].NSU = Venda.Pagamentos[IndicePagto].NSU) and
             (ACBrTEFD1.RespostasPendentes[i].ValorTotal = Venda.Pagamentos[IndicePagto].ValorPago) then
               Result := ACBrTEFD1.RespostasPendentes[i];

          Inc(i);
     end;
end;

procedure TFBitbyteTefDedicado.IniciarOperacao;
var
  ProxVenda: Integer;
begin
     Venda.Ler;
     ProxVenda := Venda.NumOperacao+1;

     Venda.Clear;
     Venda.NumOperacao := ProxVenda;
     Venda.DHInicio := Now;
     FCanceladoPeloOperador := False;
     FTempoDeEspera := 0;
end;

procedure TFBitbyteTefDedicado.CancelarVenda;
begin
     AdicionarLinhaLog('- CancelarVenda');

     ACBrTEFD1.CancelarTransacoesPendentes;
     StatusVenda := stsCancelada;
end;

procedure TFBitbyteTefDedicado.FinalizarVenda;
var
     SL: TStringList;
     i: Integer;
     DoctoFiscalOk: Boolean;
     MR: TModalResult;
begin
     try
          // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT)
          DoctoFiscalOk := not cbSimularErroNoDoctoFiscal.Checked;

          while not DoctoFiscalOk do
          begin
               MR := MessageDlg( 'Falha no Documento Fiscal' + sLineBreak +
                                 'Tentar Novamente ?', mtConfirmation,
                         [mbYes, mbNo, mbIgnore], 0);
               if (MR = mrIgnore) then
                    cbSimularErroNoDoctoFiscal.Checked := False
               else
               if (MR <> mrYes) then
                    raise Exception.Create('Erro no Documento Fiscal');

               // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT)
               DoctoFiscalOk := not cbSimularErroNoDoctoFiscal.Checked;
          end;
          
          StatusVenda  := stsFinalizada;
          iStatusVenda := 1;
          ACBrTEFD1.ImprimirTransacoesPendentes();
          ACBrPosPrinter1.ImprimirLinha('');
          ACBrPosPrinter1.ImprimirLinha('');
          ACBrPosPrinter1.ImprimirLinha('');
          ACBrPosPrinter1.ImprimirLinha('');
          ACBrPosPrinter1.CortarPapel(True);
          btOperacao.Caption  := 'Iniciar Venda';
          FreeAndNil(FMensagemOperador_Tef);

          if (Venda.TotalPago >= Venda.TotalVenda) and
             (cdsFormaPagamento.RecordCount > 0) then
               cdsFormaPagamento.EmptyDataSet;
     except
          CancelarVenda;
     end;
end;

procedure TFBitbyteTefDedicado.FormDestroy(Sender: TObject);
begin
     FVenda.Free;
     FreeAndNil(FMensagemOperador_Tef);
     cdsMultiPagTef.Close;
     cdsFormaPagamento.Close;
end;

procedure TFBitbyteTefDedicado.CliSiTefObtemCampo(Titulo: String; TamanhoMinimo,
  TamanhoMaximo: Integer; TipoCampo: Integer;
  Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
  var Digitado: Boolean; var VoltarMenu: Boolean);
Var
  MR: TModalResult ;
  FormObtemCampo: TFObtemCampo_Tef;
begin
     FormObtemCampo := TFObtemCampo_Tef.Create(self);

     try
          FormObtemCampo.Titulo := Titulo;
          FormObtemCampo.TamanhoMaximo := TamanhoMaximo;
          FormObtemCampo.TamanhoMinimo := TamanhoMinimo;
          FormObtemCampo.Resposta := Resposta; { Para usar Valores Previamente informados }

          case Operacao of
               tcDouble:
                    FormObtemCampo.TipoCampo := tcoCurrency;
                         tcCMC7, tcBarCode:
               FormObtemCampo.TipoCampo := tcoNumeric;
          else
               FormObtemCampo.TipoCampo := tcoString;
          end;

          if (Operacao = tcStringMask) then
               FormObtemCampo.Ocultar := True;

          MR := FormObtemCampo.ShowModal ;

          Digitado := (MR = mrOK) ;
          VoltarMenu := (MR = mrRetry) ;

          if Digitado then
               Resposta := FormObtemCampo.Resposta;
     finally
          FormObtemCampo.Free;
     end;
end;

function TFBitbyteTefDedicado.GetNomeArquivoVenda: String;
begin
     Result := ApplicationPath+'Venda.ini' ;
end;

procedure TFBitbyteTefDedicado.ConfigurarPosPrinter;
begin
     AdicionarLinhaLog('- ConfigurarPosPrinter');

     ACBrPosPrinter1.Desativar;
     ACBrPosPrinter1.Modelo             := TACBrPosPrinterModelo( cbxModeloPosPrinter.ItemIndex );
     ACBrPosPrinter1.PaginaDeCodigo     := TACBrPosPaginaCodigo( cbxPagCodigo.ItemIndex );
     ACBrPosPrinter1.Porta              := cbxPorta.Text;
     ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
     ACBrPosPrinter1.LinhasEntreCupons  := seLinhasPular.Value;
     ACBrPosPrinter1.EspacoEntreLinhas  := seEspLinhas.Value;
end;

procedure TFBitbyteTefDedicado.AdicionarLinhaImpressao(ALinha: String);
begin
     mImpressao.Lines.Add(ALinha);

     if ACBrPosPrinter1.Ativo then
          ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TFBitbyteTefDedicado.btSerialClick(Sender: TObject);
var
     frConfiguraSerial: TfConfiguraSerial_Tef;
begin
     AdicionarLinhaLog('- btSerialClick');

     frConfiguraSerial := TfConfiguraSerial_Tef.Create(self);

     try
          frConfiguraSerial.Device.Porta        := ACBrPosPrinter1.Device.Porta ;
          frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text ;
          frConfiguraSerial.Device.ParamsString := ACBrPosPrinter1.Device.ParamsString ;

          if frConfiguraSerial.ShowModal = mrOk then
          begin
               cbxPorta.Text := frConfiguraSerial.cmbPortaSerial.Text ;
               ACBrPosPrinter1.Device.ParamsString := frConfiguraSerial.Device.ParamsString ;
          end ;
     finally
          FreeAndNil( frConfiguraSerial ) ;
     end ;
end;

procedure TFBitbyteTefDedicado.btProcuraImpressorasClick(Sender: TObject);
begin
     cbxPorta.Items.Clear;
     ACBrPosPrinter1.Device.AcharPortasSeriais( cbxPorta.Items );
     {$IfDef MSWINDOWS}
     ACBrPosPrinter1.Device.AcharPortasUSB( cbxPorta.Items );
     {$EndIf}
     ACBrPosPrinter1.Device.AcharPortasRAW( cbxPorta.Items );

     cbxPorta.Items.Add('TCP:192.168.0.31:9100') ;

     {$IfNDef MSWINDOWS}
     cbxPorta.Items.Add('/dev/ttyS0') ;
     cbxPorta.Items.Add('/dev/ttyUSB0') ;
     cbxPorta.Items.Add('/tmp/ecf.txt') ;
     {$Else}
     cbxPorta.Items.Add('\\localhost\Epson') ;
     cbxPorta.Items.Add('c:\temp\ecf.txt') ;
     {$EndIf}
end;

procedure TFBitbyteTefDedicado.LerConfiguracao;
begin
     AdicionarLinhaLog('- LerConfiguracao');

     INI := TIniFile.Create(NomeArquivoConfiguracao);

     try
          cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo', 1);
          cbxPorta.Text                 := INI.ReadString('PosPrinter','Porta',ACBrPosPrinter1.Porta);
          cbxPagCodigo.ItemIndex        := INI.ReadInteger('PosPrinter','PaginaDeCodigo', 2);
          seColunas.Value               := INI.ReadInteger('PosPrinter','Colunas', 40);
          seEspLinhas.Value             := INI.ReadInteger('PosPrinter','EspacoLinhas',ACBrPosPrinter1.EspacoEntreLinhas);
          seLinhasPular.Value           := INI.ReadInteger('PosPrinter','LinhasEntreCupons',ACBrPosPrinter1.LinhasEntreCupons);

          ACBrPosPrinter1.Device.ParamsString     := INI.ReadString('PosPrinter','ParamsString','');
     finally
          INI.Free ;
     end ;
end;

procedure TFBitbyteTefDedicado.GravarConfiguracao;
begin
     AdicionarLinhaLog('- GravarConfiguracao');

     INI := TIniFile.Create(NomeArquivoConfiguracao);

     try
          INI.WriteInteger('PosPrinter', 'Modelo', cbxModeloPosPrinter.ItemIndex);
          INI.WriteString('PosPrinter','Porta', cbxPorta.Text);
          INI.WriteInteger('PosPrinter','PaginaDeCodigo', cbxPagCodigo.ItemIndex);
          INI.WriteString('PosPrinter','ParamsString', ACBrPosPrinter1.Device.ParamsString);
          INI.WriteInteger('PosPrinter','Colunas', seColunas.Value);
          INI.WriteInteger('PosPrinter','EspacoLinhas', seEspLinhas.Value);
          INI.WriteInteger('PosPrinter','LinhasEntreCupons', seLinhasPular.Value);
     finally
          INI.Free ;
     end ;
end;

procedure TFBitbyteTefDedicado.btTestarPosPrinterClick(Sender: TObject);
var
  SL: TStringList;
begin
     AdicionarLinhaLog('- btTestarPosPrinterClick');

     try
          AtivarPosPrinter;

          SL := TStringList.Create;

          try
               SL.Add('</zera>');
               SL.Add('</linha_dupla>');
               SL.Add('FONTE NORMAL: '+IntToStr(ACBrPosPrinter1.ColunasFonteNormal)+' Colunas');
               SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
               SL.Add('<e>EXPANDIDO: '+IntToStr(ACBrPosPrinter1.ColunasFonteExpandida)+' Colunas');
               SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
               SL.Add('</e><c>CONDENSADO: '+IntToStr(ACBrPosPrinter1.ColunasFonteCondensada)+' Colunas');
               SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));
               SL.Add('</c><n>FONTE NEGRITO</N>');
               SL.Add('<in>FONTE INVERTIDA</in>');
               SL.Add('<S>FONTE SUBLINHADA</s>');
               SL.Add('<i>FONTE ITALICO</i>');
               SL.Add('FONTE NORMAL');
               SL.Add('');
               SL.Add('TESTE DE ACENTOS. ÁÉÍÓÚáéíóú');
               SL.Add('');
               SL.Add('</corte_total>');

               AdicionarLinhaImpressao(SL.Text);
          finally
               SL.Free;
          end;

          except
          On E: Exception do
          begin
               MessageDlg('Falha ao ativar a Impressora' + sLineBreak + E.Message, mtError, [mbOK], 0);
          end;
     end;
end;

procedure TFBitbyteTefDedicado.AtivarPosPrinter;
begin
     AdicionarLinhaLog('- AtivarPosPrinter');

     ConfigurarPosPrinter;

     if (ACBrPosPrinter1.Porta <> '') then
          ACBrPosPrinter1.Ativar
     else
     raise Exception.Create('Porta não definida');
end;

procedure TFBitbyteTefDedicado.btSalvarParametrosClick(Sender: TObject);
begin
     GravarConfiguracao;
end;

procedure TFBitbyteTefDedicado.btImprimirClick(Sender: TObject);
begin
     ACBrPosPrinter1.Buffer.Assign(mImpressao.Lines);
     ACBrPosPrinter1.Imprimir;     
end;

procedure TFBitbyteTefDedicado.btLimparImpressoraClick(Sender: TObject);
begin
     mImpressao.Lines.Clear;
end;

procedure TFBitbyteTefDedicado.VerificarTestePayGo;
var
  P: Integer;
  ATeste: String;
begin
     ATeste := cbTestePayGo.Text;
     P := pos('-',ATeste);
     ATeste := Trim(copy(ATeste, 1, P-1));
     FTestePayGo := StrToIntDef(ATeste, 0);
end;

procedure TFBitbyteTefDedicado.btEfetuarPagamentosClick(Sender: TObject);
begin
     VerificarTestePayGo;
     StatusVenda := stsEmPagamento;
     sTitulo := 'SELECIONE UMA OPÇÃO';
     btIncluirPagamentos.Click;
     FreeAndNil(FMensagemOperador_Tef);
     FBitbyteTefDedicado.Show;

     if StringToFloatDef(edTotalVenda.Text,0) = StringToFloatDef(edTotalPago.Text,0) then
          AtualizarCaixaLivreNaInterface;
end;

procedure TFBitbyteTefDedicado.btOperacaoClick(Sender: TObject);
begin
     AdicionarLinhaLog('- btOperacaoClick');

     if btOperacao.Caption = 'Iniciar Venda' then
     begin
          /// cores do formulario e da label
          // quando executar em outro sistema , colocar as cores do sistema
          StatusVenda := stsLivre;
          fColor    := clBtnFace;
          fLlbColor := clBlack;
          CriaFormMensagem('Iniciando o PinPed',fColor,fLlbColor,False);
          IniciarTef;
          FreeAndNil(FMensagemOperador_Tef);
          seValorInicialVenda.SetFocus;
     end
     else
     begin
          CancelarOperacao;
     end;
end;

procedure TFBitbyteTefDedicado.btIncluirPagamentosClick(Sender: TObject);
var
     FormIncluirPagamento: TfIncluirPagamento_Tef;
     AValor: Double;
begin
     FormIncluirPagamento := TfIncluirPagamento_Tef.Create(Self);
     sTelaTouch           := False;

     try
          FormIncluirPagamento.cbFormaPagamento.ItemIndex := 2;
          FormIncluirPagamento.seValorPago.Text := FormatFloatBr(Venda.Troco);
          FormIncluirPagamento.cTotalVenda      := ABS(Venda.Troco);

          if FBitbyteTefDedicado.Visible = False then
               FormIncluirPagamento.cbxFormaPgto.Visible := True
          else FormIncluirPagamento.cbFormaPagamento.Visible := True;

          // determina as cores 
          FormIncluirPagamento.Color                := fColor;
          FormIncluirPagamento.pnlBotao.Color       := fColor;
          FormIncluirPagamento.lblForma.Color       := fColor;
          FormIncluirPagamento.lblValor.Color       := fColor;
          FormIncluirPagamento.pnlformapgto.Color   := fColor;
          FormIncluirPagamento.PnlNumCartao.Color   := fColor;
          FormIncluirPagamento.lblForma.Font.Color  := fLlbColor;
          FormIncluirPagamento.lblValor.Font.Color  := fLlbColor;
          FormIncluirPagamento.PnlNumCartao.Font.Color  := fLlbColor;
          FormIncluirPagamento.PnlNumCartao.Caption := 'NÚMERO MÁXIMO DE CARTÃO É DE : ' + sNumNaxCartao;

          if sNumNaxCartao = '' then
               sNumNaxCartao := '0';

          FormIncluirPagamento.iNumMaxCartao := StrToInt(sNumNaxCartao);

          if sNumNaxCartao <> '0' then
               FormIncluirPagamento.PnlNumCartao.Visible := True
          else FormIncluirPagamento.PnlNumCartao.Visible := False;

          ExcluindoFormaPgtoInvalido;

          if cdsFormaPagamento.RecordCount > 0 then
               FormIncluirPagamento.cdsFormaPagamento.Data := cdsFormaPagamento.Data;


          if (FormIncluirPagamento.ShowModal = mrOK) then // confirmação da venda
          begin
               AValor := StrToIntDef(OnlyNumber(FormIncluirPagamento.seValorPago.Text), 0)/100;

               if  FormIncluirPagamento.cbxFormaPgto.ItemIndex >=  5 then
                    FormIncluirPagamento.cbFormaPagamento.ItemIndex := 5
               else FormIncluirPagamento.cbFormaPagamento.ItemIndex := FormIncluirPagamento.cbxFormaPgto.ItemIndex;

               if cPagamentos[FormIncluirPagamento.cbFormaPagamento.ItemIndex, 0] = '05' then
                    CriaFormMensagem('Aguarde gerando a imagem do QrCode.',fColor,fLlbColor,False);
                    
               AdicionarPagamento( cPagamentos[FormIncluirPagamento.cbFormaPagamento.ItemIndex, 0],
                    AValor );

               iMultiFormaPagto := FormIncluirPagamento.cbxFormaPgto.ItemIndex + 1;

               cValorMultiFormaPagto := AValor;
               FreeAndNil(FMensagemOperador_Tef);
          end
          else
          if (FormIncluirPagamento.Tag = 3) then  // cancelamento de venda
          begin
               iMultiFormaPagto := 0;
               if cdsFormaPagamento.RecordCount = 1 then
               begin
                    if (cdsFormaPagamentoid_formapgto.AsInteger = 3) or
                       (cdsFormaPagamentoid_formapgto.AsInteger = 4) or
                       (cdsFormaPagamentoid_formapgto.AsInteger = 5) then
                    begin
                         ExcluirPagamento(cdsFormaPagamentoid_status.AsInteger - 1);
                    end
                    else
                    begin
                         if cdsFormaPagamento.Locate('indice',cdsFormaPagamentoindice.AsInteger,[]) then
                         begin
                              cdsFormaPagamento.Edit;
                              cdsFormaPagamentoid_status.AsInteger  := 3;
                              cdsFormaPagamentodesc_status.AsString := 'Cancelada';
                              cdsFormaPagamento.Post;
                         end;
                         Venda.Pagamentos[cdsFormaPagamentoindice.AsInteger - 1].Cancelada := True;
                         AtualizarTotaisVendaNaInterface;
                    end;
                    StatusVenda := stsEmPagamento;

               end
               else
               if cdsFormaPagamento.RecordCount > 1 then // deve cancelar toda a venda}
               begin
                    cdsFormaPagamento.EmptyDataSet;
                    CancelarVenda;
                    Venda.Clear;
                    AtualizarTotaisVendaNaInterface;
               end;
          end
          else
          if (FormIncluirPagamento.Tag = 2) then // esc
          begin
               ExcluindoFormaPgtoInvalido;
               iMultiFormaPagto := - 1;
          end
          else
          if (FormIncluirPagamento.Tag = 5) then // tratamento de valores
          begin
               iMultiFormaPagto := - 5;
          end;
     finally
          FreeAndNil(FormIncluirPagamento);
     end;
end;

procedure TFBitbyteTefDedicado.btExcluirPagamentoClick(Sender: TObject);
var
  i: Integer;
begin
     i := sgPagamentos.Row-1;
     ExcluirPagamento(i);
     StatusVenda := stsEmPagamento;
end;

procedure TFBitbyteTefDedicado.AdicionarPagamento(const Indice: String; AValor: Double);
var
  Ok, TemTEF: Boolean;
  ReajusteValor: Double;
  UltResp: TACBrTEFResp;

  procedure InformarParametrosCartaoCredito;
  begin
    // Instruindo CRT a apenas transações de Crédito...
    // Isso é Opcional, e está aqui apenas para demonstração
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE]:='01'; //01: crédito;  3 = 1 crédito + 2 débito
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='1'; //01: crédito
      //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='1'; //01: à vista, 2: parcelado
      //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_AUTHSYST]:='REDE';
      //ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_INSTALLMENTS]:='3';
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 3;
  end;

  procedure InformarParametrosCartaoDebito;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE]:='02'; //02: débito
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='01'; //01: à vista
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 2;
  end;

  procedure InformarParametrosCarteiraDigital;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='8' // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    begin
          ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=0}'; {No PinPad}
          ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 122;
    end;
  end;
begin
     Ok     := False;
     TemTEF := False;

     FIndicePagto := Indice;

     if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
          ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.Clear
     else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
          ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 0;

     try
          // ** NOTA **
          // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
          // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento

          if (Indice = '02') then          // 02-CHEQUE
          begin
               Ok := True;
               //TemTEF := True;
          end

          else if (Indice = '03') then     // 03-CREDITO
          begin
               InformarParametrosCartaoCredito;
               Ok := ACBrTEFD1.CRT(AValor, '01');
               TemTEF := True;
          end

          else if (Indice = '04') then     // 04-DEBITO
          begin
               InformarParametrosCartaoDebito;
               Ok := ACBrTEFD1.CRT(AValor, '01');
               TemTEF := True;
          end

          else if (Indice = '05') then    // 05-CARTEIRA DIGITAL
          begin
               FTestePayGo := 27;
               InformarParametrosCarteiraDigital;
               Ok := ACBrTEFD1.CRT(AValor, '01');
               TemTEF := True;
          end
          else
               Ok := True;                  // Pagamentos não TEF

     finally
          StatusVenda := stsEmPagamento;
     end;

     if Ok then
     begin
          with Venda.Pagamentos.New do
          begin
               TipoPagamento := Indice;
               ValorPago := AValor;

               if TemTEF then
               begin
                    UltResp := ACBrTEFD1.RespostasPendentes[ACBrTEFD1.RespostasPendentes.Count-1];

                    NSU := UltResp.NSU;
                    Rede := UltResp.Rede;
                    RedeCNPJ := sCnpjCredencidora;// UltResp.NFCeSAT.CNPJCredenciadora;

                    // Calcula a Diferença do Valor Retornado pela Operação TEF do Valor que
                    //   Informamos no CRT/CHQ
                    ReajusteValor := RoundTo(UltResp.ValorTotal - ValorPago, -2);

                    Saque := UltResp.Saque;

                    if (Saque > 0) then
                    begin
                         // Se houve Saque na operação TEF, devemos adicionar no ValorPago,
                         //   para que o Saque conste como Troco
                         ValorPago := ValorPago + Saque
                    end
                    else if ReajusteValor > 0 then
                    begin
                         // Se não é Saque, mas houve acréscimo no valor Retornado, devemos lançar
                         //   o Reajuste como Acréscimo na venda
                         Venda.TotalAcrescimo := Venda.TotalAcrescimo + ReajusteValor;
                    end;

                    Desconto := UltResp.Desconto;
                    if Desconto > 0 then
                    begin
                         // Se houve Desconto na Operação TEF, devemos subtrair do ValorPago
                         //   e lançar um Desconto no Total da Transacao
                         ValorPago := ValorPago - Desconto;
                         Venda.TotalDesconto := Venda.TotalDesconto + Desconto;
                         end
                    else if (ReajusteValor < 0) then
                    begin
                         // Se não é Desconto, mas houve redução no Valor Retornado, devemos
                         //   considerar a redução no ValorPago, pois a Adquirente limitou o
                         //   valor da Operação, a um máximo permitido... Deverá fechar o cupom,
                         //   com outra forma de Pagamento
                         ValorPago := ValorPago + ReajusteValor;
                    end;
               end
               else
                    Confirmada := True;
          end;

          AtualizarPagamentosVendaNaInterface;

          if (Venda.TotalPago >= Venda.TotalVenda) then
               FinalizarVenda;
     end
     else
     begin
          AdicionarLinhaLog('Operação Cancelada Pelo Operador');
          CancelarOperacao;
          FreeAndNil(FMensagemOperador_Tef);
          FBitbyteTefDedicado.Show;
     end;
end;

procedure TFBitbyteTefDedicado.ExcluirPagamento(IndicePagto: Integer);
var
     i: Integer;
     AResp: TACBrTEFResp;
     Cancelada: Boolean;
begin
     if (IndicePagto < 0) or (IndicePagto >=  Venda.Pagamentos.Count) then
          raise Exception.CreateFmt( 'Indice de pagamento [%d] inválido', [IndicePagto]);

     if Venda.Pagamentos[IndicePagto].Cancelada then
          raise Exception.CreateFmt( 'Pagamento [%d] já foi Cancelado', [IndicePagto]);

     Cancelada := False;

     if cdsFormaPagamento.Locate('indice',IndicePagto +1,[]) then
     begin
          if cdsFormaPagamentoid_status.AsInteger = 2 then
               raise Exception.CreateFmt( 'Pagamento TEF [%s] já foi Confirmado.'+sLineBreak+
                                          'Para cancelar o mesmo, cancele Toda a Operação',
                                             [AResp.NSU])
          else
          begin
               
               ACBrTEFD1.NCN(cdsFormaPagamentorede.AsString,
                             cdsFormaPagamentoNsu.AsString,
                             '',
                             cdsFormaPagamentoValor.AsCurrency,
                             '');

               ACBrTEFD1.CancelarTransacoesPendentes;
               Cancelada := True;
          end;
     end;

     if Cancelada then
     begin
          Venda.Pagamentos[IndicePagto].Cancelada := True;
          AtualizarPagamentosVendaNaInterface;
          ImprimirCancelamento(copy(cdsFormaPagamentoFormaPgto.AsString,6,50),
                               formatcurr('#,###,##0.00',cdsFormaPagamentoValor.AsCurrency));
     end;
end;

procedure TFBitbyteTefDedicado.seValorInicialVendaChange(Sender: TObject);
var
  AValor: Double;
begin
     AValor := StrToIntDef(OnlyNumber(seValorInicialVenda.Text), 0)/100;
     seValorInicialVenda.Text := FormatFloatBr(AValor);
     seValorInicialVenda.SelStart := Length(seValorInicialVenda.Text);

     if (AValor <> 0) and (StatusVenda = stsLivre) then
     begin
          IniciarOperacao;
          Venda.ValorInicial := AValor;
          StatusVenda := stsIniciada;
     end
     else
     begin
          Venda.ValorInicial := AValor;
          AtualizarTotaisVendaNaInterface;
     end;
     
end;

procedure TFBitbyteTefDedicado.seValorInicialVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not CharInSet(Key, ['0'..'9',#8,#13,#27])  then
          Key := #0;
end;

procedure TFBitbyteTefDedicado.seTotalDescontoChange(Sender: TObject);
var
  AValor, DescontoMax: Double;
begin
      DescontoMax := StringToFloatDef(seValorInicialVenda.Text,0);
     AValor := StrToIntDef(OnlyNumber(seTotalDesconto.Text), 0)/100;

     if AValor > DescontoMax then
          AValor := DescontoMax;

     seTotalDesconto.Text := FormatFloatBr(AValor);
     seTotalDesconto.SelStart := Length(seTotalDesconto.Text);

     Venda.TotalDesconto := AValor;
     AtualizarTotaisVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.seTotalAcrescimoChange(Sender: TObject);
var
  AValor: Double;
begin
     AValor := StrToIntDef(OnlyNumber(seTotalAcrescimo.Text), 0)/100;
     seTotalAcrescimo.Text := FormatFloatBr(AValor);
     seTotalAcrescimo.SelStart := Length(seTotalAcrescimo.Text);

     Venda.TotalAcrescimo := AValor;
     AtualizarTotaisVendaNaInterface;
end;

procedure TFBitbyteTefDedicado.VendaTef(cValor : Double;sFormaPagto : String);
begin
     LerConfiguracao;

     try
          AtivarPosPrinter;
     except
     On E: Exception do
          begin
               TratarException(nil, E);
          end;
     end;
     ConfigurarTEF('Venda');
     ACBrTEFD1.Inicializar(TACBrTEFDTipo(IGerenciaTef));  // 18 Paygo Web
     VerificarTestePayGo;
     StatusVenda := stsEmPagamento;
     seValorInicialVenda.TExt := FormatFloatBr(cValor);
     FreeAndNil(FMensagemOperador_Tef);
     sTitulo := 'SELECIONE UMA OPÇÃO';

     if sFormaPagto = '05' then
          CriaFormMensagem('Aguarde gerando a imagem do QrCode.',fColor,fLlbColor,False);

     AdicionarPagamento(sFormaPagto,cValor );
     AtualizarCaixaLivreNaInterface;
     FreeAndNil(FMensagemOperador_Tef);
end;

procedure TFBitbyteTefDedicado.CriaFormMensagem(Texto: String;Color,LlbColor : TColor; bMostrar : Boolean);
begin
     application.CreateForm(TFMensagemOperador_Tef,FMensagemOperador_Tef);
     FMensagemOperador_Tef.lTituloMsgOperador.Visible    := bMostrar;
     FMensagemOperador_Tef.lMensagemOperador.Color       := Color; // cor do form
     FMensagemOperador_Tef.lTituloMsgOperador.Color      := Color; // cor do form
     FMensagemOperador_Tef.lTituloMsgOperador.Font.Color := LlbColor; // cor da fonte
     FMensagemOperador_Tef.lMensagemOperador.Font.Color  := LlbColor; // cor da fonte
     FMensagemOperador_Tef.lMensagemOperador.Caption     := Texto;
     FMensagemOperador_Tef.Enabled                       := bMostrar;
     FMensagemOperador_Tef.Show();
     FMensagemOperador_Tef.Update();
end;

procedure TFBitbyteTefDedicado.CancelarOperacao;
begin
     AdicionarLinhaLog('Cancelar a Venda');
     btOperacao.Caption := 'Iniciar Venda';

     case TipoBotaoOperacao of

          bopLiberarCaixa:
               StatusVenda := stsLivre;

          bopCancelarVenda:
               CancelarVenda;

          bopCancelarEsperaTEF:
          begin
               AdicionarLinhaLog( '  Operação Cancelada Pelo Operador');
               FCanceladoPeloOperador := True;
               if (StatusVenda in [stsOperacaoTEF, stsAguardandoTEF]) then
                    StatusVenda := stsEmPagamento;
          end;
     end;
end;

procedure TFBitbyteTefDedicado.IniciarTef;
begin       
     LerConfiguracao;
     Ativar;
     btOperacao.Caption := 'Cancelar a Venda';
end;

procedure TFBitbyteTefDedicado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FreeAndNil(FMensagemOperador_Tef);
end;

procedure TFBitbyteTefDedicado.MultiPagamento(cValor: Double);
begin
     LerConfiguracao;
     try
          AtivarPosPrinter;
     except
     On E: Exception do
          begin
               TratarException(nil, E);
          end;
     end;
     ConfigurarTEF('Venda');
     ACBrTEFD1.Inicializar(TACBrTEFDTipo(IGerenciaTef));  // 18 Paygo Web
     VerificarTestePayGo;
     StatusVenda := stsEmPagamento;
     seValorInicialVenda.TExt := FormatFloatBr(cValor);
     FreeAndNil(FMensagemOperador_Tef);
     sTitulo := 'SELECIONE UMA OPÇÃO';

     cdsMultiPagTef.EmptyDataSet;
     repeat
          FreeAndNil(FMensagemOperador_Tef);
          FBitbyteTefDedicado.Visible := False;
          btEfetuarPagamentosClick(Self);
          FreeAndNil(FMensagemOperador_Tef);

          if iMultiFormaPagto = - 1 then
          begin
               cdsMultiPagTef.EmptyDataSet;
               Break;
               Exit;
          end;

          if iMultiFormaPagto > 0 then
          begin
               cdsMultiPagTef.Insert;

               // alimenta a forma de pagamento
               if iMultiFormaPagto = 1 then // dinheiro
                    cdsMultiPagTefDINHEIRO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 2 then // cheque
                    cdsMultiPagTefCHEQUE.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 3 then // cartao credito
                    cdsMultiPagTefCREDITO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 4 then // cartao debito
                    cdsMultiPagTefDEBITO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 5 then // pix
                    cdsMultiPagTefCARTEIRA_DIGITAL.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 6 then // TICKET
                    cdsMultiPagTefTICKET.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 7 then // CONVENIO
                    cdsMultiPagTefCONVENIO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 8 then // Recebimento
                    cdsMultiPagTefRECEBIMENTO.AsCurrency := cValorMultiFormaPagto;

               cdsMultiPagTefTOTAL.AsCurrency := cdsMultiPagTefTOTAL.AsCurrency + cValorMultiFormaPagto;

               cdsMultiPagTef.Post;
          end
          else
          begin
               if iMultiFormaPagto = 0 then
                    cdsMultiPagTef.EmptyDataSet;

          end;
          FreeAndNil(FMensagemOperador_Tef);

     until StringToFloatDef(seValorInicialVenda.Text,0) = StringToFloatDef(cdsMultiPagTefVALOR_TOTAL.AsString,0) ;
end;

procedure TFBitbyteTefDedicado.FormActivate(Sender: TObject);
begin
     fColor    := clBtnFace;
     fLlbColor := clBlack;
end;

procedure TFBitbyteTefDedicado.ExcluindoFormaPgtoInvalido;
begin
     cdsFormaPagamento.First;
     cdsFormaPagamento.Filtered := True;
     cdsFormaPagamento.Filter   := 'id_status = 0';

     while cdsFormaPagamento.Eof = False do
          cdsFormaPagamento.Delete;

     cdsFormaPagamento.Filtered := False;
     cdsFormaPagamento.Filter   := '';
end;

procedure TFBitbyteTefDedicado.TratarException(Sender: TObject; E: Exception);
begin
  AdicionarLinhaLog('');
  AdicionarLinhaLog('***************' + E.ClassName + '***************');
  AdicionarLinhaLog(E.Message);
  AdicionarLinhaLog('');
  //MessageDlg(E.Message, mtError, [mbOK], 0);
end;

procedure TFBitbyteTefDedicado.BtPagamentoTouchClick(Sender: TObject);
var
     {$IFDEF VER150}
     Touch_IncluirPagamento: TFTouch_MultiPagamento_Tef;
     {$ENDIF}
     AValor: Double;
     sFormaPgto : String;
begin
     sTelaTouch  := True;

     {$IFDEF VER150}
     Touch_IncluirPagamento := TFTouch_MultiPagamento_Tef.Create(Self);
                       
     try
          Touch_IncluirPagamento.EdTotal.Value := ABS(Venda.Troco);
          Touch_IncluirPagamento.cTotalVenda   := ABS(Venda.Troco);
          
          Touch_IncluirPagamento.PnlNumCartao.Caption := 'NÚMERO MÁXIMO DE CARTÃO É DE : ' + sNumNaxCartao;

          if sNumNaxCartao = '' then
               sNumNaxCartao := '0';

          Touch_IncluirPagamento.iNumMaxCartao := StrToInt(sNumNaxCartao);

          if sNumNaxCartao <> '0' then
               Touch_IncluirPagamento.PnlNumCartao.Visible := True
          else Touch_IncluirPagamento.PnlNumCartao.Visible := False;

          ExcluindoFormaPgtoInvalido;

          if cdsFormaPagamento.RecordCount > 0 then
               Touch_IncluirPagamento.cdsFormaPagamento.Data := cdsFormaPagamento.Data;

          if (Touch_IncluirPagamento.ShowModal = mrOK) then // confirmação da venda
          begin
               AValor := StrToIntDef(OnlyNumber(Touch_IncluirPagamento.edValor.Text), 0)/100;

               if Touch_IncluirPagamento.iFormaPgto = 5 then
                    CriaFormMensagem('Aguarde gerando a imagem do QrCode.',fColor,fLlbColor,False);

               AdicionarPagamento(cPagamentos[Touch_IncluirPagamento.iFormaPgto - 1, 0],
                    AValor );

               iMultiFormaPagto := Touch_IncluirPagamento.iFormaPgto;
               
               cValorMultiFormaPagto := AValor;
               FreeAndNil(FMensagemOperador_Tef);
          end
          else
          if (Touch_IncluirPagamento.Tag = 3) then  // cancelamento de venda
          begin
               iMultiFormaPagto := 0;
               if cdsFormaPagamento.RecordCount = 1 then
               begin
                    if (cdsFormaPagamentoid_formapgto.AsInteger = 3) or
                       (cdsFormaPagamentoid_formapgto.AsInteger = 4) or
                       (cdsFormaPagamentoid_formapgto.AsInteger = 5) then

                         ExcluirPagamento(cdsFormaPagamentoid_status.AsInteger - 1)
                    else
                    begin
                         if cdsFormaPagamento.Locate('indice',cdsFormaPagamentoindice.AsInteger,[]) then
                         begin
                              cdsFormaPagamento.Edit;
                              cdsFormaPagamentoid_status.AsInteger  := 3;
                              cdsFormaPagamentodesc_status.AsString := 'Cancelada';
                              cdsFormaPagamento.Post;
                         end;
                         Venda.Pagamentos[cdsFormaPagamentoindice.AsInteger - 1].Cancelada := True;
                         AtualizarTotaisVendaNaInterface;
                    end;
                    StatusVenda := stsEmPagamento;

               end
               else
               if cdsFormaPagamento.RecordCount > 1 then // deve cancelar toda a venda}
               begin
                    cdsFormaPagamento.EmptyDataSet;
                    CancelarVenda;
                    Venda.Clear;
                    AtualizarTotaisVendaNaInterface;
               end;
          end
          else
          if (Touch_IncluirPagamento.Tag = 2) then // esc
          begin
               ExcluindoFormaPgtoInvalido;
               iMultiFormaPagto := - 1;
          end
          else
          if (Touch_IncluirPagamento.Tag = 5) then // tratamento de valores
          begin
               iMultiFormaPagto := - 5;
          end;
     finally
          FreeAndNil(Touch_IncluirPagamento);
     end;

     FreeAndNil(FMensagemOperador_Tef);
     
     if StringToFloatDef(edTotalVenda.Text,0) = StringToFloatDef(edTotalPago.Text,0) then
          AtualizarCaixaLivreNaInterface;

     {$ENDIF}
end;


procedure TFBitbyteTefDedicado.MultiPagamentoTouch(cValor: Double);
begin
     LerConfiguracao;
     try
          AtivarPosPrinter;
     except
     On E: Exception do
          begin
               TratarException(nil, E);
          end;
     end;
     ConfigurarTEF('Venda');
     ACBrTEFD1.Inicializar(TACBrTEFDTipo(IGerenciaTef));  // 18 Paygo Web
     VerificarTestePayGo;
     StatusVenda := stsEmPagamento;
     seValorInicialVenda.TExt := FormatFloatBr(cValor);
     FreeAndNil(FMensagemOperador_Tef);
     sTitulo := 'SELECIONE UMA OPÇÃO';

     cdsMultiPagTef.EmptyDataSet;
     repeat
          fColor      := $003392F3;
          fLlbColor   := clWindow;
          FreeAndNil(FMensagemOperador_Tef);
          FBitbyteTefDedicado.Visible := False;
          BtPagamentoTouchClick(Self);
          FreeAndNil(FMensagemOperador_Tef);

          if iMultiFormaPagto = - 1 then
          begin
               cdsMultiPagTef.EmptyDataSet;
               Break;
               Exit;
          end;

          if iMultiFormaPagto > 0 then
          begin
               cdsMultiPagTef.Insert;

               // alimenta a forma de pagamento
               if iMultiFormaPagto = 1 then // dinheiro
                    cdsMultiPagTefDINHEIRO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 2 then // cheque
                    cdsMultiPagTefCHEQUE.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 3 then // cartao credito
                    cdsMultiPagTefCREDITO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 4 then // cartao debito
                    cdsMultiPagTefDEBITO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 5 then // pix
                    cdsMultiPagTefCARTEIRA_DIGITAL.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 6 then // TICKET
                    cdsMultiPagTefTICKET.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 7 then // CONVENIO
                    cdsMultiPagTefCONVENIO.AsCurrency := cValorMultiFormaPagto
               else
               if iMultiFormaPagto = 8 then // Recebimento
                    cdsMultiPagTefRECEBIMENTO.AsCurrency := cValorMultiFormaPagto;

               cdsMultiPagTefTOTAL.AsCurrency := cdsMultiPagTefTOTAL.AsCurrency + cValorMultiFormaPagto;

               cdsMultiPagTef.Post;
          end
          else
          begin
               if iMultiFormaPagto = 0 then
                    cdsMultiPagTef.EmptyDataSet;

          end;
          FreeAndNil(FMensagemOperador_Tef);

     until StringToFloatDef(seValorInicialVenda.Text,0) = StringToFloatDef(cdsMultiPagTefVALOR_TOTAL.AsString,0) ;
end;

procedure TFBitbyteTefDedicado.ImprimirCancelamento(sFormaPagto,sValor : String);
var
  SL: TStringList;
  sDatahora : String;
begin
     try
          SL := TStringList.Create;
          sDatahora := DateTimeToStr(Now);

          try
               SL.Add('</zera>');
               SL.Add('');
               SL.Add('</c><n>'+sSoftwareHouse +'</N>');
               SL.Add('VIA CLIENTE      ' + sDatahora);
               SL.Add('</c><n>***CANCELAMENTO***</N>');
               SL.Add('CANCELAMENTO DE VENDA ' + sFormaPagto);
               SL.Add('VALOR DE VENDA ' + sValor);
               SL.Add('');
               SL.Add('</corte_total>');
               SL.Add('');
               SL.Add('</c><n>'+sSoftwareHouse +'</N>');
               SL.Add('VIA ESTABELECIMENTO ' + sDatahora);
               SL.Add('</c><n>***CANCELAMENTO***</N>');
               SL.Add('CANCELAMENTO DE VENDA ' + sFormaPagto);
               SL.Add('VALOR DE VENDA ' + sValor);
               SL.Add('');
               SL.Add('</corte_total>');

               AdicionarLinhaImpressao(SL.Text);
          finally
               SL.Free;
          end;

          except
          On E: Exception do
          begin
               MessageDlg('Falha ao ativar a Impressora' + sLineBreak + E.Message, mtError, [mbOK], 0);
          end;
     end;
end;

end.


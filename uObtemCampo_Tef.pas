unit uObtemCampo_Tef;

interface

uses
  Classes, SysUtils,Windows, StrUtils,
  Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, ExtCtrls;

type

{$R *.dfm}

  TTipoCampo = (tcoString, tcoNumeric, tcoCurrency, tcoAlfa, tcoAlfaNum) ;

{ TFormObtemCampo }

  TFObtemCampo_Tef = class(TForm)
    lTitulo: TLabel;
    pTitulo : TPanel;
    Panel2: TPanel;
    btOK: TBitBtn;
    btCancel: TBitBtn;
    btVoltar: TBitBtn;
    Panel1: TPanel;
    edtResposta: TEdit;
    pnlNumeros: TPanel;
    bt1: TSpeedButton;
    bt4: TSpeedButton;
    bt7: TSpeedButton;
    bt0: TSpeedButton;
    bt8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bt2: TSpeedButton;
    bt9: TSpeedButton;
    bt6: TSpeedButton;
    bt3: TSpeedButton;
    Btesp: TSpeedButton;
    btLimpa: TSpeedButton;
    procedure edtRespostaChange(Sender: TObject);
    procedure edtRespostaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRespostaKeyPress(Sender : TObject; var Key : char);
    procedure FormCloseQuery(Sender : TObject; var CanClose : boolean);
    procedure FormCreate(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLimpaClick(Sender: TObject);
    procedure BtespClick(Sender: TObject);
    procedure bt4Click(Sender: TObject);
  private
    { private declarations }
    fMascara: String;
    FTamanhoMaximo: Integer;
    FTamanhoMinimo: Integer;
    fTipoCampo: TTipoCampo;
    posCursor : integer;
    function GetOcultar: Boolean;
    function GetResposta: String;
    function GetTitulo: String;
    procedure SetMascara(AValue: String);
    procedure SetOcultar(AValue: Boolean);
    procedure SetResposta(AValue: String);
    procedure SetTitulo(AValue: String);
  public
    { public declarations }
    property TipoCampo: TTipoCampo read fTipoCampo write FTipoCampo;
    property TamanhoMinimo: Integer read FTamanhoMinimo write FTamanhoMinimo;
    property TamanhoMaximo: Integer read FTamanhoMaximo write FTamanhoMaximo;
    property Mascara: String read fMascara write SetMascara;
    property Titulo: String read GetTitulo write SetTitulo;
    property Resposta: String read GetResposta write SetResposta;
    property Ocultar: Boolean read GetOcultar write SetOcultar;
  end;

implementation

uses
  ACBrConsts, ACBrUtil, ACBrValidador;

{ TFormObtemCampo }

procedure TFObtemCampo_Tef.FormCreate(Sender : TObject);
begin
     fTamanhoMinimo := 0;
     fTamanhoMaximo := 0;
     fTipoCampo := tcoString;
     fMascara := '';
end;

procedure TFObtemCampo_Tef.FormShow(Sender : TObject);
var
  TamMascara: Integer;
begin
     if (fTipoCampo = tcoCurrency) then
     begin
          edtResposta.AutoSelect := False;
          edtResposta.Text := 'R$ 0,00';
          edtResposta.SelStart := Length(edtResposta.Text);
     end
     else
     begin
          if (fMascara <> '') then
          begin
               TamMascara := CountStr(fMascara, '*');

               if TamanhoMaximo = 0 then
                    TamanhoMaximo := TamMascara;

               if TamanhoMinimo = 0 then
                    TamanhoMinimo := TamMascara;
          end;
          edtResposta.SetFocus;
     end;
end;

procedure TFObtemCampo_Tef.FormCloseQuery(Sender : TObject; var CanClose : boolean);
begin
     if (ModalResult = mrOK) then
     begin
          if (TamanhoMinimo > 0) and (Length(Resposta) < TamanhoMinimo) then
          begin
               Application.MessageBox(pchar('O Tamanho Mínimo para este campo é: '+
                                        IntToStr(TamanhoMinimo)),'Atenção',MB_ICONEXCLAMATION);
               CanClose := False;
               edtResposta.SetFocus;
          end
          else
          if (TamanhoMaximo > 0) and (Length(Resposta) > TamanhoMaximo) then
          begin
               Application.MessageBox(pchar('O Tamanho Maxímo para este campo é: '+
                                        IntToStr(TamanhoMinimo)),'Atenção',MB_ICONEXCLAMATION);
               CanClose := False;
               edtResposta.SetFocus;
          end;
     end;
end;

procedure TFObtemCampo_Tef.edtRespostaKeyPress(Sender : TObject; var Key : char);
var
  Ok: Boolean;
begin
     if (Key in [#8,#13,#27]) then  { BackSpace, Enter, Esc }
          Exit;

     case fTipoCampo of
          tcoNumeric, tcoCurrency:
               Ok := CharIsNum(Key);

          tcoAlfa:
          begin
               Key := upcase(Key);
               Ok := CharIsAlpha(Key);
          end;

          tcoAlfaNum:
          begin
               Ok := CharIsNum(Key);
               if not Ok then
               begin
                    Key := upcase(Key);
                    Ok := CharIsAlpha(Key);
               end;
          end;
     else
          Ok := True;
     end;

     if (not Ok) then
     begin
          Key := #0;
          Exit;
     end;

     if (TamanhoMaximo > 0) and (Length(Resposta) >= TamanhoMaximo) then
          Key := #0;
end;

procedure TFObtemCampo_Tef.edtRespostaChange(Sender: TObject);
var
  AValor: Int64;
begin
     if (TipoCampo = tcoCurrency) then
     begin
          AValor := StrToIntDef(OnlyNumber(edtResposta.Text), 0);
          edtResposta.Text := 'R$ '+FormatFloatBr(AValor/100);
          edtResposta.SelStart := Length(edtResposta.Text);
     end
     else
     if (fMascara <> '') then
     begin
          edtResposta.Text := FormatarMascaraDinamica( RemoverMascara(edtResposta.Text, fMascara), fMascara);
          edtResposta.SelStart := Length(edtResposta.Text);
     end;
end;

procedure TFObtemCampo_Tef.edtRespostaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (key = 13) then
     begin
          if (TamanhoMinimo > 0) and (Length(Resposta) < TamanhoMinimo) then
          Key := 0;
     end;
end;

function TFObtemCampo_Tef.GetResposta: String;
var
  AValor: Int64;
begin
     if (TipoCampo = tcoCurrency) then
     begin
          AValor := StrToIntDef(OnlyNumber(edtResposta.Text), 0);
          Result := FloatToString(AValor/100, '.', '0.00');
     end
     else
     if (fMascara <> '') then
          Result := ACBrValidador.RemoverMascara(edtResposta.Text, fMascara)
     else
          Result := edtResposta.Text;
end;

procedure TFObtemCampo_Tef.SetResposta(AValue: String);
begin
     edtResposta.Text := AValue;
end;

function TFObtemCampo_Tef.GetTitulo: String;
begin
     Result := lTitulo.Caption;
end;

procedure TFObtemCampo_Tef.SetTitulo(AValue: String);
var
  NumLin, AltLin: Integer;
begin
     lTitulo.Caption := AValue;

     // Se houver quebra de linhas na msg, aumente o formulário...
     NumLin := CountStr(AValue, CR);

     if (NumLin > 0) then
     begin
          AltLin := lTitulo.Canvas.TextHeight('H');
          Height := Height + (NumLin * AltLin);
     end;
end;

procedure TFObtemCampo_Tef.SetMascara(AValue: String);
begin
     if fMascara = AValue then
          Exit;

     fMascara := StringReplace(AValue, '@', '*', [rfReplaceAll]);
end;

function TFObtemCampo_Tef.GetOcultar: Boolean;
begin
     Result := (edtResposta.PasswordChar <> #0);
end;

procedure TFObtemCampo_Tef.SetOcultar(AValue: Boolean);
begin
     if AValue then
          edtResposta.PasswordChar := '*'
     else
          edtResposta.PasswordChar := #0;
end;

procedure TFObtemCampo_Tef.btOKClick(Sender: TObject);
begin
     ModalResult := mrOK;
end;

procedure TFObtemCampo_Tef.btCancelClick(Sender: TObject);
begin
     Exit;
end;

procedure TFObtemCampo_Tef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = 27 then {Esc}
          btCancelClick(Self)
     else if Key = 119 then {F8}
          btOKClick(Sender);
end;

procedure TFObtemCampo_Tef.btLimpaClick(Sender: TObject);
begin
     edtResposta.Clear;
     edtResposta.SetFocus;
end;

procedure TFObtemCampo_Tef.BtespClick(Sender: TObject);
begin
     posCursor := edtResposta.SelStart;

     edtResposta.Text := edtResposta.Text + ' ';
     edtResposta.SetFocus;
     if posCursor > 0 then
          posCursor := posCursor + 1;
     edtResposta.SelStart := posCursor;           
end;

procedure TFObtemCampo_Tef.bt4Click(Sender: TObject);
begin
     posCursor := edtResposta.SelStart;

     edtResposta.Text := LeftStr(edtResposta.Text,edtResposta.SelStart) +
                     TButton(Sender).Caption +
                     RightStr(edtResposta.Text,Length(edtResposta.Text) -
                                           Length(LeftStr(edtResposta.Text,edtResposta.SelStart)));
     edtResposta.SetFocus;
     posCursor := posCursor + 1;
     edtResposta.SelStart := posCursor;     
end;

end.


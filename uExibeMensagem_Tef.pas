unit uExibeMensagem_Tef;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TFormExibeMensagem }

  TFExibeMensagem_Tef = class(TForm)
    btOk: TButton;
    lMensagem: TLabel;
    pMensagem: TPanel;
    tEspera: TTimer;
    procedure btOkKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tEsperaTimer(Sender: TObject);
    procedure lMensagemClick(Sender: TObject);
  private
    fTempoEspera: Integer;
    fFinalEspera: TDateTime;
    function GetMensagem: String;
    procedure SetMensagem(AValue: String);
    procedure AbortarTempoEspera;
  public
    property Mensagem: String read GetMensagem write SetMensagem;
    property TempoEspera: Integer read fTempoEspera write fTempoEspera;
  end;

implementation

uses
  dateutils,
  ACBrUtil, ACBrConsts;

{$R *.dfm}

{ TFormExibeMensagem }

procedure TFExibeMensagem_Tef.FormShow(Sender: TObject);
begin
  if (TempoEspera > 0) then
  begin
    fFinalEspera := IncMilliSecond(Now, fTempoEspera);
    tEspera.Enabled := True;
  end
  else
  begin
    fFinalEspera := 0;
    tEspera.Enabled := False;
  end;
end;

procedure TFExibeMensagem_Tef.btOkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AbortarTempoEspera;
end;

procedure TFExibeMensagem_Tef.FormClick(Sender: TObject);
begin
  AbortarTempoEspera;
end;

procedure TFExibeMensagem_Tef.lMensagemClick(Sender: TObject);
begin
  AbortarTempoEspera;
end;

procedure TFExibeMensagem_Tef.tEsperaTimer(Sender: TObject);
var
  SegundosRestantes: Integer;
begin
  SegundosRestantes := SecondsBetween(fFinalEspera, Now);
  if SegundosRestantes <= 0 then
    ModalResult := mrOK
  else
    btOk.Caption := Format('OK (%d)', [SegundosRestantes]);
end;

function TFExibeMensagem_Tef.GetMensagem: String;
begin
  Result := lMensagem.Caption;
end;

procedure TFExibeMensagem_Tef.SetMensagem(AValue: String);
var
  NumLin, AltLin: Integer;
begin
  lMensagem.Caption := AValue;

  // Se houver quebra de linhas na msg, aumente o formul�rio...
  NumLin := CountStr(AValue, CR);
  if (NumLin > 0) then
  begin
    AltLin := lMensagem.Canvas.TextHeight('H');
    Height := Height + (NumLin * AltLin);
  end;
end;

procedure TFExibeMensagem_Tef.AbortarTempoEspera;
begin
  tEspera.Enabled := False;
  btOk.Caption := 'OK';
end;

end.


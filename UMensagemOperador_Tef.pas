unit UMensagemOperador_Tef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFMensagemOperador_Tef = class(TForm)
    pMensagemOperador: TPanel;
    lTituloMsgOperador: TLabel;
    lMensagemOperador: TLabel;
    btesq: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMensagemOperador_Tef: TFMensagemOperador_Tef;

implementation

uses UBitbyteTefDedicado;

{$R *.dfm}

procedure TFMensagemOperador_Tef.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then {Esc}
     begin
          FBitbyteTefDedicado.CancelarOperacao;
          Close;
     end;
end;

procedure TFMensagemOperador_Tef.btesqClick(Sender: TObject);
begin
     FBitbyteTefDedicado.CancelarOperacao;
     Close;
end;

end.

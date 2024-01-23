unit uMenu_Tef;

interface

uses
  Classes, SysUtils,
  Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Buttons;
  
type

{$R *.dfm}

  { TFormMenuTEF }

  TFMenu_Tef = class(TForm)
     lbOpcoes : TListBox;
     mOpcao : TMemo ;
     pTitulo : TPanel;
     Splitter1 : TSplitter ;
    PnlBotao: TPanel;
    btVoltar: TBitBtn;
    btOK: TBitBtn;
    btCancel: TBitBtn;
     procedure FormShow(Sender: TObject);
     procedure lbOpcoesClick(Sender: TObject);
     procedure lbOpcoesKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
  private
    { private declarations }
    FUsaTeclasDeAtalho: Boolean;
    FNumeroPressionado: Boolean;
    function GetItemSelecionado: Integer;
    function GetOpcoes: TStrings;
    function GetTitulo: String;
    procedure SetItemSelecionado(AValue: Integer);
    procedure SetOpcoes(AValue: TStrings);
    procedure SetTitulo(AValue: String);
  public
    { public declarations }
    property Titulo: String read GetTitulo write SetTitulo;
    property Opcoes: TStrings read GetOpcoes write SetOpcoes;
    property ItemSelecionado: Integer read GetItemSelecionado write SetItemSelecionado;
    property UsaTeclasDeAtalho: Boolean read FUsaTeclasDeAtalho write FUsaTeclasDeAtalho;
  end; 

implementation

uses
  ACBrUtil;

{ TFormMenuTEF }

procedure TFMenu_Tef.FormShow(Sender: TObject);
begin
   if mOpcao.Lines.Count > 0 then
   begin
     mOpcao.Width   := Trunc(Width/2)-10;
     mOpcao.Visible := True ;
     Splitter1.Visible := True ;
   end ;

   lbOpcoes.SetFocus;
   if lbOpcoes.Items.Count > 0 then
      lbOpcoes.ItemIndex := 0 ;

   FNumeroPressionado := False;
end;

procedure TFMenu_Tef.lbOpcoesClick(Sender: TObject);
begin
  if FUsaTeclasDeAtalho and FNumeroPressionado then
    ModalResult := mrOK;
end;

procedure TFMenu_Tef.lbOpcoesKeyPress(Sender: TObject; var Key: char);
begin
  FNumeroPressionado := CharIsNum(Key);
end;

function TFMenu_Tef.GetTitulo: String;
begin
  Result := pTitulo.Caption;
end;

procedure TFMenu_Tef.SetItemSelecionado(AValue: Integer);
begin
  lbOpcoes.ItemIndex := AValue;
end;

function TFMenu_Tef.GetOpcoes: TStrings;
begin
  Result := lbOpcoes.Items;
end;

function TFMenu_Tef.GetItemSelecionado: Integer;
begin
  Result := lbOpcoes.ItemIndex;
end;

procedure TFMenu_Tef.SetOpcoes(AValue: TStrings);
begin
  lbOpcoes.Items.Assign(AValue);
end;

procedure TFMenu_Tef.SetTitulo(AValue: String);
begin
  pTitulo.Caption := AValue;
end;

procedure TFMenu_Tef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = 27 then {Esc}
          btCancelClick(Self)
     else if Key = 119 then {F8}
          btOKClick(Sender);
end;

procedure TFMenu_Tef.btCancelClick(Sender: TObject);
begin
     if FUsaTeclasDeAtalho and FNumeroPressionado then
          ModalResult := mrOK;
end;

procedure TFMenu_Tef.btOKClick(Sender: TObject);
begin
     ModalResult := mrOK;
end;

end.


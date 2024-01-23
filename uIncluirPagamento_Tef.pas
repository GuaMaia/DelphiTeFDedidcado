unit uIncluirPagamento_Tef;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Spin,Windows,
  Buttons, uVendaClass_Tef, ExtCtrls,Messages, Grids, DBGrids, DB, DBClient;

type

  { TFormIncluirPagamento }

  TfIncluirPagamento_Tef = class(TForm)
    pnlBotao: TPanel;
    btCancelar: TBitBtn;
    btGravar: TBitBtn;
    pnlformapgto: TPanel;
    lblForma: TLabel;
    lblValor: TLabel;
    cbFormaPagamento: TComboBox;
    seValorPago: TEdit;
    pnlgrid: TPanel;
    dbgItem: TDBGrid;
    dsFormaPagamento: TDataSource;
    cdsFormaPagamento: TClientDataSet;
    cdsFormaPagamentoindice: TIntegerField;
    cdsFormaPagamentoFormaPgto: TStringField;
    cdsFormaPagamentoValor: TCurrencyField;
    BtExcluir: TBitBtn;
    cdsFormaPagamentoid_status: TIntegerField;
    cdsFormaPagamentodesc_status: TStringField;
    cdsFormaPagamentoNsu: TStringField;
    PnlNumCartao: TPanel;
    cdsFormaPagamentoTotalValor: TAggregateField;
    cbxFormaPgto: TComboBox;
    cdsFormaPagamentoid_formapgto: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure seValorPagoChange(Sender: TObject);
    procedure seValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public
     iNumMaxCartao : Integer;
     cTotalVenda   : Currency;
     procedure ConfirmarVenda;
  end;

implementation

uses
  UBitbyteTefDedicado,
  ACBrUtil;

{$R *.dfm}

{ TFormIncluirPagamento }

procedure TfIncluirPagamento_Tef.FormCreate(Sender: TObject);
var
  l, i: Integer;
begin
     cdsFormaPagamento.CreateDataSet;
     cdsFormaPagamento.Open;

     cbFormaPagamento.Clear;
     l := Length(cPagamentos)-1;

     for i := 0 to l do
          cbFormaPagamento.Items.Add(cPagamentos[i,0] + ' - ' + cPagamentos[i,1]);

     cbFormaPagamento.ItemIndex := 0;
     cbxFormaPgto.Left := cbFormaPagamento.Left;
     cbxFormaPgto.ItemIndex := cbFormaPagamento.ItemIndex;
end;

procedure TfIncluirPagamento_Tef.seValorPagoChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(seValorPago.Text), 0)/100;
  seValorPago.Text := FormatFloatBr(AValor);
  seValorPago.SelStart := Length(seValorPago.Text);

  if AValor > 0 then
     btGravar.Enabled := (AValor > 0) and (cbFormaPagamento.ItemIndex >= 0);
end;

procedure TfIncluirPagamento_Tef.seValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9',#8,#13,#27])  then
    Key := #0;
end;

procedure TfIncluirPagamento_Tef.btGravarClick(Sender: TObject);
  var cValorVenda : Currency;
begin
     if (StrToIntDef(OnlyNumber(seValorPago.Text), 0)/100) > cTotalVenda then
     begin
          application.messagebox('Valor recebido não pode ser maior que o valor a pagar.','Atenção',mb_iconexclamation);
          Tag := 5;
          ModalResult := mrCancel;
     end
     else
     begin
          if (iNumMaxCartao > 0) and
             (cdsFormaPagamento.RecordCount > 0 )then
          begin
               cValorVenda := StrToIntDef(OnlyNumber(seValorPago.Text), 0)/100;
          
               if ((cdsFormaPagamento.RecordCount + 1) = iNumMaxCartao ) and
                  (cValorVenda <> cTotalVenda) then
               begin
                    application.messagebox(Pchar('Multiplos Cartões Limitado a ' + IntToStr(iNumMaxCartao) + ' operações.'),'Atenção',mb_iconexclamation);
                    Tag := 5;
                    ModalResult := mrCancel;
               end
               else ConfirmarVenda;
          end
          else
          begin
               ConfirmarVenda;     
          end;
     end;
end;

procedure TfIncluirPagamento_Tef.btCancelarClick(Sender: TObject);
begin
     if (not cdsFormaPagamento.Locate('id_status',3,[])) and
        (not FBitbyteTefDedicado.cdsFormaPagamento.isempty) then
     begin
          Application.MessageBox('Operação Cancelada.'+#13+
                                 'Há uma transação "PENDENTE ou CONFIRMADA" , para cancelar o pagamento.' +#13+
                                 'Deve excluir o mesmo no botão "Excluir Pgto"','Atenção',MB_ICONEXCLAMATION);

          Abort;
     end;
     
     Tag := 2;
     ModalResult := mrCancel;
end;

procedure TfIncluirPagamento_Tef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = 27) and (btCancelar.Enabled = True) then {Esc}
          btCancelarClick(Self)
     else if Key = 119 then {F8}
          btGravarClick(Self);
end;

procedure TfIncluirPagamento_Tef.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and not (activecontrol is tmemo) then
     begin
          key := #0;
          perform(wm_nextdlgctl,0,0);
     end;
end;

procedure TfIncluirPagamento_Tef.BtExcluirClick(Sender: TObject);
var sMensagem : String;
begin
     if FBitbyteTefDedicado.cdsFormaPagamento.isempty then
          Abort;
     
     If cdsFormaPagamentoid_status.AsInteger = 3 then
     begin
          application.messagebox('Registro já esta cancelada !','Atenção',mb_iconexclamation);
          Abort;
     end;

     If cdsFormaPagamento.RecordCount >= 2 then
     begin
          sMensagem := 'Existe registro já confirmado(s).' +#13+
                       'Para cancelar a operação, o sistema ira desfazer todo o pagamentos.' +#13+
                       'Para dar continuidade do cancelamento, voce deve passar o cartão que esta confirmado.' +#13+
                       'Voce deve iniciar novamente o pagamento !' +#13+
                       'Deseja cancelar a venda ?';

     end
     else
     If cdsFormaPagamento.RecordCount = 1 then
          sMensagem := 'Deseja cancelar o pagamento selecionado ?';


     if application.messagebox(Pchar(sMensagem),'Atenção',mb_yesno + mb_iconquestion)  = idyes then
     begin
          Tag := 3;
          FBitbyteTefDedicado.cdsFormaPagamento.Locate('indice',cdsFormaPagamentoindice.AsInteger,[]);
          close;
     end;
end;

procedure TfIncluirPagamento_Tef.FormActivate(Sender: TObject);
begin
     if cdsFormaPagamento.RecordCount > 1 then
          btCancelar.Enabled := False;
end;

procedure TfIncluirPagamento_Tef.ConfirmarVenda;
begin
     {
      01 - Dinheiro
      02 - Cheque
      03 - Cartão de Crédito
      04 - Cartão de Débito
      05 - Carteira Digital
      06 - Ticket
      07 - Convênio
      08 - Recebimento
     }
     FBitbyteTefDedicado.cdsFormaPagamento.Append;
     FBitbyteTefDedicado.cdsFormaPagamentoindice.AsInteger        := cdsFormaPagamento.RecordCount + 1;
     FBitbyteTefDedicado.cdsFormaPagamentoid_formapgto.AsInteger  := cbxFormaPgto.ItemIndex + 1;
     FBitbyteTefDedicado.cdsFormaPagamentoFormaPgto.AsString      := cbxFormaPgto.Text;
     FBitbyteTefDedicado.cdsFormaPagamentoValor.AsCurrency        := StringToFloatDef(seValorPago.Text,0);
     FBitbyteTefDedicado.cdsFormaPagamentoid_status.AsInteger     := 0;

     FBitbyteTefDedicado.cdsFormaPagamento.Post;

     Tag := 1;
     ModalResult := mrOK;
end;

end.


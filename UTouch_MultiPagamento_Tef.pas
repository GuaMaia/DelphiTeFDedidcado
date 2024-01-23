unit UTouch_MultiPagamento_Tef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Grids, DBGrids, JvButton, JvCtrls,StrUtils;

type
  TFTouch_MultiPagamento_Tef = class(TForm)
    pnlBotao: TPanel;
    btCancelar: TBitBtn;
    btGravar: TBitBtn;
    BtExcluir: TBitBtn;
    cdsFormaPagamento: TClientDataSet;
    cdsFormaPagamentoindice: TIntegerField;
    cdsFormaPagamentoFormaPgto: TStringField;
    cdsFormaPagamentoValor: TCurrencyField;
    cdsFormaPagamentoid_status: TIntegerField;
    cdsFormaPagamentodesc_status: TStringField;
    cdsFormaPagamentoNsu: TStringField;
    cdsFormaPagamentoTotalValor: TAggregateField;
    PnlNumCartao: TPanel;
    dbgItem: TDBGrid;
    gbFormasPgto: TGroupBox;
    btedRecebimento: TSpeedButton;
    btedTicket: TSpeedButton;
    btedPix: TSpeedButton;
    btedCheque: TSpeedButton;
    btedCartaoDeb: TSpeedButton;
    btedCartao: TSpeedButton;
    btedDinheiro: TSpeedButton;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    btedConvenio: TSpeedButton;
    edDinheiro: TJvValidateEdit;
    edCartao: TJvValidateEdit;
    edTicket: TJvValidateEdit;
    edCheque: TJvValidateEdit;
    edConvenio: TJvValidateEdit;
    edCartaoDeb: TJvValidateEdit;
    edPix: TJvValidateEdit;
    edRecebimento: TJvValidateEdit;
    pnlTecla: TPanel;
    pnlNumeros: TPanel;
    bt7: TJvImgBtn;
    bt4: TJvImgBtn;
    bt1: TJvImgBtn;
    btLimpa: TJvImgBtn;
    bt0: TJvImgBtn;
    bt2: TJvImgBtn;
    bt3: TJvImgBtn;
    bt6: TJvImgBtn;
    bt5: TJvImgBtn;
    bt8: TJvImgBtn;
    bt9: TJvImgBtn;
    edValor: TJvValidateEdit;
    lblValPagar: TLabel;
    Panel1: TPanel;
    EdTotal: TJvValidateEdit;
    dsFormaPagamento: TDataSource;
    cdsFormaPagamentoid_formapgto: TIntegerField;
    procedure bt1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btedDinheiroClick(Sender: TObject);
    procedure btLimpaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edDinheiroEnter(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
  private
    { Private declarations }
    sNomeBotao : String;
    iMult : Integer; //Multiplicador para controle de casas decimais no edValor
    auxEdit : TEdit;
    auxJvValidadeEdit : TJvValidateEdit;

  public
    { Public declarations }
    iFormaPgto : Integer;
    iNumMaxCartao : Integer;
    cTotalVenda   : Currency;
    iTotpag : Integer;
    procedure limpar;
    procedure ConfirmarVenda;
    procedure AlteraCorEdits(obj : TObject);
  end;

var
  FTouch_MultiPagamento_Tef: TFTouch_MultiPagamento_Tef;

implementation

uses UBitbyteTefDedicado,ACBrUtil;

{$R *.dfm}

procedure TFTouch_MultiPagamento_Tef.bt1Click(Sender: TObject);
begin
     if Trim(sNomeBotao) = '' then
          exit;

     try edValor.Value := (edValor.Value * 10) + (StrToInt(TJvImgBtn(Sender).Caption) / iMult); except; end;
     (FindComponent(sNomeBotao) as TJvValidateEdit).Value := edValor.Value;
end;

procedure TFTouch_MultiPagamento_Tef.FormShow(Sender: TObject);
var
     x : Integer;
begin
     iMult := 10;
     for x := 1 to edValor.DecimalPlaces-1 do
          iMult := iMult * 10;
end;

procedure TFTouch_MultiPagamento_Tef.btedDinheiroClick(Sender: TObject);
begin
     limpar;
     sNomeBotao := AnsiReplaceStr(TSpeedButton(Sender).Name,'bt','');

     (FindComponent(sNomeBotao) as TJvValidateEdit).SetFocus;
     (FindComponent(sNomeBotao) as TJvValidateEdit).SelectAll;
end;

procedure TFTouch_MultiPagamento_Tef.btLimpaClick(Sender: TObject);
begin
     edValor.Value := 0;
     (FindComponent(sNomeBotao) as TJvValidateEdit).Value := edValor.Value;
end;

procedure TFTouch_MultiPagamento_Tef.limpar;
begin
     edDinheiro.Value    := 0;
     edCartao.Value      := 0;
     edCartaoDeb.Value   := 0;
     edCheque.Value      := 0;
     edPix.Value         := 0;
     edTicket.Value      := 0;
     edRecebimento.Value := 0;
     edConvenio.Value    := 0;
     edValor.Value       := 0;
end;

procedure TFTouch_MultiPagamento_Tef.FormCreate(Sender: TObject);
begin
     cdsFormaPagamento.CreateDataSet;
     cdsFormaPagamento.Open;
     
     limpar;
end;

procedure TFTouch_MultiPagamento_Tef.FormActivate(Sender: TObject);
begin
     if cdsFormaPagamento.RecordCount > 1 then
          btCancelar.Enabled := False;
end;

procedure TFTouch_MultiPagamento_Tef.btGravarClick(Sender: TObject);
var cValorVenda: Currency;
    cValores : Currency;
begin
     cValores    := edDinheiro.Value + edCartao.Value + edCartaoDeb.Value +
                    edCheque.Value + edPix.Value + edTicket.Value +
                    edRecebimento.Value + edConvenio.Value;

     if cValores = 0 then
     begin
           application.messagebox('Selecione uma forma de pagamento.','Atenção',mb_iconexclamation);
           Tag := 5;
           ModalResult := mrCancel;

          Abort;
     end;
          
     iTotpag := 0;
     
     if edDinheiro.Value > 0 then
          iTotpag := iTotpag + 1;

     if edCartao.Value > 0 then
          iTotpag := iTotpag + 1;

     if edCartaoDeb.Value > 0 then
          iTotpag := iTotpag + 1;

     if edCheque.Value > 0 then
          iTotpag := iTotpag + 1;

     if edPix.Value > 0 then
          iTotpag := iTotpag + 1;

     if edTicket.Value > 0 then
          iTotpag := iTotpag + 1;

     if edRecebimento.Value > 0 then
          iTotpag := iTotpag + 1;

     if edConvenio.Value > 0 then
          iTotpag := iTotpag + 1;

     if iTotpag > 1 then
     begin
          Application.MessageBox('Operação Cancelada.'+#13+
                                 'Você está usando modulo Tef.' +#13+
                                 'Deve fazer 1 pagamento por vez.','Atenção',MB_ICONEXCLAMATION);
          Tag := 5;
          ModalResult := mrCancel;
     end
     else
     begin


          if cValores > EdTotal.Value then
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
                    cValorVenda := StrToIntDef(OnlyNumber(edValor.Text), 0)/100;


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
end;

procedure TFTouch_MultiPagamento_Tef.btCancelarClick(Sender: TObject);
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

procedure TFTouch_MultiPagamento_Tef.ConfirmarVenda;
 var
  sDescFormaPagto : String;
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
     
     if edDinheiro.Value > 0 then
     begin
          iFormaPgto      := 1;
          sDescFormaPagto := 'DINHEIRO';
     end
     else
     if edCartao.Value > 0 then
     begin
          iFormaPgto      := 3;
          sDescFormaPagto := 'CARTÃO CRÉDITO';
     end
     else
     if edCartaoDeb.Value > 0 then
     begin
          iFormaPgto      := 4;
          sDescFormaPagto := 'CARTÃO DÉBITO';
     end
     else
     if edCheque.Value > 0 then
     begin
          iFormaPgto      := 2;
          sDescFormaPagto := 'CHEQUE';
     end
     else
     if edPix.Value > 0 then
     begin
          iFormaPgto      := 5;
          sDescFormaPagto := 'PIX';
     end
     else
     if edTicket.Value > 0 then
     begin
          iFormaPgto      := 6;
          sDescFormaPagto := 'TICKET';
     end
     else
     if edRecebimento.Value > 0 then
     begin
          iFormaPgto      := 8;
          sDescFormaPagto := 'RECEBIMENTO';
     end
     else
     if edConvenio.Value > 0 then
     begin
          iFormaPgto      := 7;
          sDescFormaPagto := 'CONVÊNIO';
     end;

     FBitbyteTefDedicado.cdsFormaPagamento.Append;
     FBitbyteTefDedicado.cdsFormaPagamentoindice.AsInteger       := cdsFormaPagamento.RecordCount + 1;
     FBitbyteTefDedicado.cdsFormaPagamentoFormaPgto.AsString     := sDescFormaPagto;
     FBitbyteTefDedicado.cdsFormaPagamentoid_formapgto.AsInteger := iFormaPgto;
     FBitbyteTefDedicado.cdsFormaPagamentoValor.AsCurrency       := edValor.Value;
     FBitbyteTefDedicado.cdsFormaPagamentoid_status.AsInteger    := 0;
     FBitbyteTefDedicado.cdsFormaPagamento.Post;

     Tag := 1;
     ModalResult := mrOK;
end;

procedure TFTouch_MultiPagamento_Tef.AlteraCorEdits(obj : TObject);
begin
     try auxEdit.Color := clWindow; except; end;
     try auxJvValidadeEdit.Color := clWindow; except; end;

     if obj.ClassType = TEdit  then
     begin
          auxEdit := TEdit(obj);
          try auxEdit.Color := $00CEFFCE; except; end;
     end
     else
     if obj.ClassType = TJvValidateEdit then
     begin
          auxJvValidadeEdit := TJvValidateEdit(obj);
          try auxJvValidadeEdit.Color := $00CEFFCE; except; end;
     end;
end;

procedure TFTouch_MultiPagamento_Tef.edDinheiroEnter(Sender: TObject);
begin
     AlteraCorEdits(TJvValidateEdit(Sender));
end;

procedure TFTouch_MultiPagamento_Tef.BtExcluirClick(Sender: TObject);
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

end.

unit uConfiguraserial_Tef;

interface

uses
  ACBrDevice, ACBrDeviceSerial,
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, Spin;

type

  { TfrConfiguraSerial }

  TfConfiguraSerial_Tef = class(TForm)
    gbSendBytes: TGroupBox;
    lEsperaBuffer: TLabel;
    lBuffer: TLabel;
    Label5: TLabel;
    cmbBaudRate: TComboBox;
    Label6: TLabel;
    cmbDataBits: TComboBox;
    Label7: TLabel;
    cmbParity: TComboBox;
    Label11: TLabel;
    cmbStopBits: TComboBox;
    Label8: TLabel;
    cmbHandShaking: TComboBox;
    Label4: TLabel;
    cmbPortaSerial: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    chHardFlow: TCheckBox;
    chSoftFlow: TCheckBox;
    seSendBytesCount: TSpinEdit;
    seSendBytesInterval: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cmbPortaSerialChange(Sender: TObject);
    procedure cmbBaudRateChange(Sender: TObject);
    procedure cmbDataBitsChange(Sender: TObject);
    procedure cmbParityChange(Sender: TObject);
    procedure cmbStopBitsChange(Sender: TObject);
    procedure cmbHandShakingChange(Sender: TObject);
    procedure chHardFlowClick(Sender: TObject);
    procedure chSoftFlowClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure seSendBytesCountChange(Sender: TObject);
    procedure seSendBytesIntervalChange(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaFlow ;
  public
    { Public declarations }
    Device : TACBrDevice ;
  end;

implementation

{$R *.dfm}

{ TfrConfiguraSerial }

procedure TfConfiguraSerial_Tef.FormCreate(Sender: TObject);
begin
  Device := TACBrDevice.Create(self);
end;

procedure TfConfiguraSerial_Tef.FormDestroy(Sender: TObject);
begin
  Device.Free ;
end;

procedure TfConfiguraSerial_Tef.FormShow(Sender: TObject);
begin
  cmbBaudRate.ItemIndex     := cmbBaudRate.Items.IndexOf(IntToStr( Device.Baud )) ;
  cmbDataBits.ItemIndex     := cmbDataBits.Items.IndexOf(IntToStr( Device.Data )) ;
  cmbParity.ItemIndex       := Integer( Device.Parity ) ;
  cmbStopBits.ItemIndex     := Integer( Device.Stop ) ;
  chHardFlow.Checked        := Device.HardFlow ;
  chSoftFlow.Checked        := Device.SoftFlow ;
  cmbHandShaking.ItemIndex  := Integer( Device.HandShake ) ;
  seSendBytesCount.Value    := Device.SendBytesCount;
  seSendBytesInterval.Value := Device.SendBytesInterval;
end;

procedure TfConfiguraSerial_Tef.seSendBytesCountChange(Sender: TObject);
begin
  Device.SendBytesCount := seSendBytesCount.Value;
end;

procedure TfConfiguraSerial_Tef.seSendBytesIntervalChange(Sender: TObject);
begin
  Device.SendBytesInterval := seSendBytesInterval.Value;
end;

procedure TfConfiguraSerial_Tef.cmbPortaSerialChange(Sender: TObject);
begin
  Device.Porta := cmbPortaSerial.Text ;
end;

procedure TfConfiguraSerial_Tef.cmbBaudRateChange(Sender: TObject);
begin
  Device.Baud := StrToInt(cmbBaudRate.Text) ;
end;

procedure TfConfiguraSerial_Tef.cmbDataBitsChange(Sender: TObject);
begin
  Device.Data := StrToInt(cmbDataBits.Text) ;
end;

procedure TfConfiguraSerial_Tef.cmbParityChange(Sender: TObject);
begin
  Device.Parity := TACBrSerialParity( cmbParity.ItemIndex ) ;
end;

procedure TfConfiguraSerial_Tef.cmbStopBitsChange(Sender: TObject);
begin
  Device.Stop := TACBrSerialStop( cmbStopBits.ItemIndex ) ;
end;

procedure TfConfiguraSerial_Tef.cmbHandShakingChange(Sender: TObject);
begin
  Device.HandShake := TACBrHandShake( cmbHandShaking.ItemIndex ) ;
  VerificaFlow ;
end;

procedure TfConfiguraSerial_Tef.chHardFlowClick(Sender: TObject);
begin
  Device.HardFlow := chHardFlow.Checked ;
  VerificaFlow ;
end;

procedure TfConfiguraSerial_Tef.chSoftFlowClick(Sender: TObject);
begin
  Device.SoftFlow := chSoftFlow.Checked ;
  VerificaFlow ;
end;

procedure TfConfiguraSerial_Tef.VerificaFlow;
begin
  cmbHandShaking.ItemIndex := Integer( Device.HandShake ) ;
  chHardFlow.Checked := Device.HardFlow ;
  chSoftFlow.Checked := Device.SoftFlow ;
end;

end.


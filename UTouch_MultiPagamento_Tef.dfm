object FTouch_MultiPagamento_Tef: TFTouch_MultiPagamento_Tef
  Left = 376
  Top = 196
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Multi Pagamento'
  ClientHeight = 590
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotao: TPanel
    Left = 0
    Top = 512
    Width = 553
    Height = 78
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btCancelar: TBitBtn
      Left = 338
      Top = 7
      Width = 139
      Height = 59
      Cancel = True
      Caption = 'CANCELAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelarClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0035960035960035960035
        96003596003596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF005CED0052DC0048CC
        0044BF0045B80041B0003AA4003596002E7B00235BFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0063FC005CF600
        5AEF166EE74C93E678B0EB8CBBED8BBAED72AAE64186D70D58BF00399F002E7F
        002662FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0062
        FF005DFF1F7FFC95C6FBF0F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3
        EFFC7AADE71159BC003391002560FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0065FF0368FF75B5FFF2F8FFFFFFFFFFFFFFCCE1FACCE1FAB1D1F8C0D9
        F8CCE0FACCE0FAFFFFFFFFFFFFE0EDFB518FD7003A9D002664FF00FFFF00FFFF
        00FFFF00FFFF00FF036AFF036AFF90C5FFFFFFFFFFFFFFD8E7FC9CC6F8095CE5
        0352E10251E0014FE0014EDE0B5BE1B1D1F8FFFFFFFFFFFFFFFFFF5792D80035
        96002764FF00FFFF00FFFF00FFFF00FF0166FF62ABFFFFFFFFFFFFFFD9E9FC40
        8EF4065AE60557E50455E3085AE30352E10251E0014FE0014FDE5396EED7E6FB
        FFFFFFEFF6FB1B63BD00348FFF00FFFF00FFFF00FF066CFF1277FFDEEFFFFFFF
        FFD9EAFC3889F40A5FEA085DE9095DE90559E60457E30556E20353E20251E002
        50E0014EDE468EEDD7E6FBFFFFFFA3C5E90040A7003993FF00FFFF00FF036AFF
        5EA9FFFFFFFFFFFFFF73B1FA0D66EF87B8F7FCFEFF74ACF4075CE70659E60C5F
        E60C5EE587B6F3E0EDFC0250E1014FE08EBCF4FFFFFFFCFCFC286FC7003EACFF
        00FF0D73FF0B72FFB5D8FFFFFFFFFEFFFF116DF30F6AF23184F4BFDAFBFFFFFF
        4D95F2095DE9075CE795C0F6FFFFFF8AB8F40353E20252E11365E5D7E6FBFFFF
        FF78ABE20046C10039930D73FF1C7FFFEDF6FFFFFFFFB4D8FE1470F41570F310
        6CF22077F2B5D5FBF2F8FE4F97F360A0F3FFFFFF91BDF60E62E60456E50354E3
        0353E2BBD8FAFFFFFFBAD5F30155D4004ECB0E74FF3891FFFBFCFFFFFFFF69AD
        FE1675F71B78F61370F6116DF3227AF4B2D4FBF3F8FEE7F2FE63A1F30C63E907
        5BE7065AE60557E50455E37EB2F3FFFFFFE3EFFC0562E60058E71378FF55A4FF
        FEFFFFFFFFFF65ABFE1878FB1676F81E7AF71774F6126EF49FCAFBFFFFFFFBFE
        FF4A93F30C65ED095FEA085CE9065AE60558E66FA9F3FFFFFFEDF6FF0667F000
        5CED1A7DFF68AFFFFFFFFFFFFFFF7BB8FF1B7BFC1979FB1877FA1C79F870B0FB
        F0F7FFA3CCFBB8D8FCF0F7FE5097F40E67ED0A62EB095EEA075CE788BBF6FFFF
        FFE1F0FF0568F4005DF21D7FFF6CB1FFF8FCFFFFFFFFCCE5FF1C7EFC1C7DFC2B
        87FC9ECBFEFFFFFF76B4FB1472F61F79F6BCDAFCFFFFFF79B2F80C65EE0B63ED
        0A60EBC6DEFBFFFFFFB7DAFF0163F8005EF43D95FF5AA7FFE9F4FFFFFFFFFFFF
        FF2D8AFF1D7FFE89C1FEFFFFFFA0CCFE1877FA1676F81674F7237DF7C4DEFCFF
        FFFF0F69F00D67EE2A7FF3FFFFFFFFFFFF73B5FF005BFC005EF4FF00FF3E96FF
        CEE6FFFFFFFFFFFFFFB0D7FF1E80FF4298FE86C0FF2B88FC1B7AFB1978FA1777
        FA1674F82D84F891C2FB116DF3116BF3B2D4FCFFFFFFFBFEFF2283FF005FFFFF
        00FFFF00FF4298FF97C9FFFEFFFFFFFFFFFFFFFF75B6FF1E80FF1E80FF1D7FFF
        1C7DFE1C7DFC1A79FB1878FA1676F81673F71673F4BBDDFFFFFFFFFFFFFF97C9
        FF0065FF0065FFFF00FFFF00FFFF00FF54A4FFE1F0FFFFFFFFFFFFFFFFFFFF8F
        C4FF1F81FF1E80FF1E80FF1D7EFE1C7DFE1B7AFC1879FA1B79FAA6CFFEFFFFFF
        FFFFFFE7F3FF177BFF0065FFFF00FFFF00FFFF00FFFF00FF5CA7FF8CC2FFF8FC
        FFFFFFFFFFFFFFFFFFFFF8FCFF79B8FF3C95FF2D8BFF2D8AFE4197FE8AC1FEFF
        FFFFFFFFFFFFFFFFFBFEFF499DFF0065FF036AFFFF00FFFF00FFFF00FFFF00FF
        FF00FF5BA6FF9ACBFFF2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD1E7FF459AFF0268FF066CFFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF5EA9FF78B8FFD0E7FFF8FCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FF8AC1FF1F81FF056BFF096FFFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7FBBFF5AA6FF87
        C0FFBBDDFFDAEDFFE7F3FFE7F3FFDEEFFFC7E2FF96C7FF52A1FF1C7FFF0E74FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF7DBAFF5AA6FF5AA6FF60AAFF60AAFF52A1FF3E96FF2C8AFF19
        7DFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btGravar: TBitBtn
      Left = 191
      Top = 7
      Width = 145
      Height = 59
      Caption = 'CONFIRMAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      OnClick = btGravarClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE8DE6EBC
        9D2096651C956100864D00864D279A692E9D7084C7ACECF6F2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DD2BD00864B4AA984A9D2
        C1E4EFE9EAF1EEF5FDFAF7FCFAE1EEE7D9EAE296C9B2229D6E16915DC6E5D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6ECE3098E5980BFA4F3F8F7C6F7E381E9
        C448DFAD12DA9F00D59400D69526DBA357E3B291ECCCDDF9EFEBF2ED52AE892F
        9D6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA8D6C441A77DEEF5F2A7F0D52ADBA300D39100D4
        9100D49300D59300D59400D59400D49300D49200D39100D49348DFACC9F6E4DB
        EAE2009462DEF0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9CD1BB72BB9DEBFAF346DEAA00D29000D29000D39100D3
        9100D39100D39100D39100D39100D39100D39100D39100D39100D28F00D3926F
        E5B9F1F7F537A37BDEEFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCFE8DE80BFA6D9F8ED17D69C00D18C00D28F00D28F00D28F00D2
        8F00D28F00D28F00D28F00D28F00D28F00D28F00D28F00D28F00D28F00D28E00
        D18E3EDCA6F5FBF83BA67CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF4DAC86E7F8F102D49600CE8900CF8B00CF8B00CF8B00CF8B00D0
        8B00D08B00CF8B00CF8B00CF8B00CF8B00CF8B00CF8B00CF8B00CF8B00CF8B00
        CF8B00CE893EDAA4F0F7F433A67DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF5ABB9CF4F9F82AD69C00CC8400CD8800CD8800CD8800CD8800CE8600C0
        8600C18500CE8600CD8800CD8800CD8800CD8800CD8800CD8800CD8800CD8800
        CD8800CD8800CD8867E1B2DCEAE4B4DBCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB3D8C77CE4BC00C98300CB8500CB8500CB8500CB8500CC8300BF7DE4DD
        E1E9E2E600BB7D00CC8300CB8500CB8500CB8500CB8500CB8500CB8500CB8500
        CB8500CB8500CA8400CB87BCF1DC77BC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        92CEB7EFFAF500CB8700C78000C88100C88100C88100C87F00C378DBD7DAF4F3
        F3F4F1F1EDE5EA00B97A00C97F00C88100C88100C88100C88100C88100C88100
        C88100C88100C88100C77E30D498EBF2F0DBEDE5FFFFFFFFFFFFFFFFFFFFFFFF
        A4D0BE91E7C500C47900C67D00C67D00C67D00C67D00C576C5C8C8F6F3F4E6E4
        E1E6E4E1F2F1F1EEE8EC00B57900C77C00C67D00C67D00C67D00C67D00C67D00
        C67D00C67D00C67D00C67D00C57BCEF5E596CDB6FFFFFFFFFFFFFFFFFFFFFFFF
        DCEBE535D39700C47800C57A00C57A00C57A00C472B6C0BEF6F3F4E4E1DDE5E2
        DDE5E2DEE3E0DCF1EFEDF0EAEF00B27700C57800C57A00C57A00C57A00C57A00
        C57A00C57A00C57A00C57A00C2767DE1B9AFD6C6FFFFFFFFFFFFFFFFFFE5F4EF
        F2FAF700C47900C37700C37800C37800C37198B5ABF6F4F4E1DFDBE1DFDBECE9
        E7F7F6F8EEECEAE1DED9EEEDEBF0EAEF00B07700C47600C37800C37800C37800
        C37800C37800C37800C37800C27639D298D2E7DEFFFFFFFFFFFFFFFFFFD7EBE3
        D2F3E600BC6E00C17600C17600C1737FB09DF6F2F3E1DEDBE0DCD8E7E4E2F8F8
        FA24AA79B0BFBAF3F0F0DEDAD7EEECEAF2EDF000AF7600C27400C17600C17600
        C17600C17600C17600C17600C07500C680F0F6F2FFFFFFFFFFFFFFFFFFD7EBE3
        C1EEDC00BD6D00C07500C07500BF71C9C9CAF3F0F0DDDAD4E4DFDCF5F5F560AA
        8D00C17000BB6CDED9DDEEEDECDDD9D4ECEAE8F2EFF312AC7700C17300C07500
        C07500C07500C07500C07500C07500BE70F1F8F6FFFFFFFFFFFFFFFFFFE5F2EC
        C0EFD900BB6C00BE7600BE7400BE7400BA6AC6CACBF2F0EFF5F1F27BAC9900BE
        6F00BE7400BE7300AF70F2EFF3E9E6E3DCD8D2EAE8E6F3F1F522AB7900BF7300
        BE7600BE7400BE7400BE7400BE7400BC6FF0F9F6FFFFFFFFFFFFFFFFFFF9FCFA
        D3F3E612CA912CCD982CCD972CCD9828CD960ACA90D1CED18BB3A50FCF942ACD
        962CCD982CCD9822CE9658B190F8F8FAF2EEF0EEECECF5F2F4F4F4F754B39220
        CF962CCD982CCD972CCD9728CD9636CF9CF4F9F7FFFFFFFFFFFFFFFFFFFFFFFF
        EDFAF420CD9726CD9928CD9928CD9928CD9926CD9919CE951DCE9726CD9928CD
        9928CD9928CD9928CD9918CE9785B0A1F9F8F9F0EDEEF0EDEDF4F3F4F5F4F754
        B1921DCE9928CD9928CD9922CD985ED9AEE7F2EDFFFFFFFFFFFFFFFFFFFFFFFF
        EEF5F153D7AB26CE9A2ACF9B2ACF9B2ACF9B2ACF9B2ACF9B2ACF9B2ACF9B2ACF
        9B2ACF9B2ACF9B2ACF9B2ACF9B0DD097B5BEBCF9F8FAF2EFF0F2EFF0F5F4F5F7
        F7F85BB2941CD19A2ACF9B1DCE9893E4C6E7F2EEFFFFFFFFFFFFFFFFFFFFFFFF
        EDF5F191E5C61FCE9A2BD09D2BD09D2BD09D2BD09D2BD09D2BD09D2BD09D2BD0
        9D2BD09D2BD09D2BD09D2BD09D29D09D16CE95DCD8DAF8F7F8F2F0F2F2F0F2F5
        F5F6F7F7F867B39925D19C1FCE9ACAF1E2FDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE4F7F033D2A429D09F2BD1A02BD1A02BD1A02BD1A02BD1A02BD1A02BD1
        A02BD1A02BD1A02BD1A02BD1A02BD1A027D2A030C197F2EEF1F7F5F6F3F2F2F3
        F2F2F9F9FAC7C7C817D09D51D8ADF7FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF5F9F77FE2C123D19F2CD3A22CD3A22CD3A22CD3A22CD3A22CD3A22CD3
        A22CD3A22CD3A22CD3A22CD3A22CD3A22CD3A224D3A256B697F8F8FAF5F5F5F9
        F9FAC1C4C418CE9B26D3A1ADECD6FCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1FAF744D7AC26D3A32CD3A42CD3A42CD3A42CD3A42CD3A42CD3
        A42CD3A42CD3A42CD3A42CD3A42CD3A42CD3A42CD3A41CD5A291B4AAF9F9FAB5
        BEBD0ED39F24D3A264DEB7F9FBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDEFE039D7AB27D3A62BD4A72BD4A72BD4A72BD4A72BD4
        A72BD4A72BD4A72BD4A72BD4A72BD4A72BD4A72BD4A72AD4A719D5A48FB3A913
        D5A624D3A648D9B0EAFAF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDABECD837D7AD25D4A82BD5A92BD5A92BD5A92BD5
        A92BD5A92BD5A92BD5A92BD5A92BD5A92BD5A92BD5A92BD5A929D5A922D6A923
        D4A744D9B0D5F6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF0E145DAB323D4A82BD6AA2CD6AB2CD6
        AB2CD6AB2CD6AB2CD6AB2CD6AB2CD6AB2CD6AB2CD6AB2CD6AB2BD5AA29D5AB5A
        DDB9E2F8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FCF981E5C935D7B020D5AB29D6
        AC2AD7AC2CD7AD2CD7AD2CD7AD2CD7AD2AD7AC26D6AC20D5AB41DBB398E8D2FE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FBF49AEBD560E0
        BE2FD8B21FD8AE22D8AF22D8AE22D8AE39DBB471E3C5ADEEDCF9FEFCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF5FCFADCF8F1D1F5ECD2F6EDE1F9F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BtExcluir: TBitBtn
      Left = 24
      Top = 7
      Width = 137
      Height = 59
      Caption = 'Excluir Pgto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtExcluirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000001000000010000000000000000000000000000000000
        000000000000000000000000621504580F00580D006310000000000000000000
        00000000000000000000000000000000000000160000FF8B60FFD7ACFFE8C0FF
        FED4FFFFE4FFFFF0FFEBC0F1845E190000000000000000000000000000000000
        000000FF966AF9B18CF8EFC6FED0AAF4D7AFFEFED6FDF3CBFBF3CCFFD9B2FF8D
        61000000000000000000000000000000000000FF9C72E8926CF6E4BDFFD3ADF0
        C39DFCF5CFF9E4BDF5D9B2FFE2BAFB6F47000000000000000000000000000000
        000000FF9D73E78C67F6DCB6FFD6B0EBAF88F9EAC3F8DDB6F0C19BFEDAB3F25B
        34000000000000000000000000000000000000FF9B71E68461F3D4AEFFD9B3E6
        9872F7DCB5F6D6AFEAA781FCD0AAF25A32000000000000000000000000000000
        000000FF9A70E37C59F2CDA6FFDDB7E17E5AF3CCA4F3CDA5E38B66FAC5A0F157
        30000000000000000000000000000000000000FF976EE1724DEFC49DFFE1BBD7
        5935ECB18BF7D9B3D9633FF6B893F1552E000000000000000000000000000000
        000000FF9269F49E7AF5C39DFFDEB8F2BA93F6D4AEFFFFF1E78C66FDC49DEE4F
        27000000000000000000000000000000000000FF885FDD613EED8D68E77F5BE5
        805CE58864E9A07BEDA47FE16946F96A42000000000000000000000000000000
        240600FF8059FEA47EFCAE89FEC29CFFD9B3FFF5CDFFFFE6FFF0C9FFD8B1FD7B
        54040000000000000000000000000000783422FF9771FCD0AAFBB58FFCCBA5FB
        C29BFBB48FFCB38FFCC49EFBBC97FFC0996F1E0C000000000000000000000000
        73402EFFEFC5FCC6A0FCD7B1FDDEB8FFDCB5FECEA8E8825DF89B76F88C68FFA5
        7E661D0D000000000000000000000000792F1AFFDFB6FEDFB9FFF5CEF3CFA7E4
        8965F1936FE06340FAAD88FB9975FFA77F742310000000000000000000000000
        000000C25A3BFFCC9FFFC69EFDAD85FFE7BFFFD1A8FFD4ACFFB891FF9067B148
        2D000000000000000000000000000000000000000000000000671D0C59130462
        2E1E622D1E581203631E0C000000000000000000000000000000}
    end
  end
  object PnlNumCartao: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Caption = 'N'#218'MERO M'#193'XIMO DE CART'#195'O '#201' : 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object dbgItem: TDBGrid
    Left = 0
    Top = 396
    Width = 553
    Height = 116
    Align = alBottom
    DataSource = dsFormaPagamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'indice'
        Title.Caption = 'Indice'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormaPgto'
        Title.Caption = 'Forma Pagamento'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor Pago'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desc_status'
        Title.Alignment = taCenter
        Title.Caption = 'Status Pagamento'
        Width = 126
        Visible = True
      end>
  end
  object gbFormasPgto: TGroupBox
    Left = 0
    Top = 24
    Width = 260
    Height = 372
    Align = alLeft
    Caption = 'Formas de Pagamento'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object btedRecebimento: TSpeedButton
      Left = 9
      Top = 295
      Width = 110
      Height = 30
      Caption = 'Recebimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedTicket: TSpeedButton
      Left = 9
      Top = 255
      Width = 110
      Height = 30
      Caption = 'Ticket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedPix: TSpeedButton
      Left = 9
      Top = 215
      Width = 110
      Height = 30
      Caption = 'Pix'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedCheque: TSpeedButton
      Left = 9
      Top = 175
      Width = 110
      Height = 30
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedCartaoDeb: TSpeedButton
      Left = 9
      Top = 135
      Width = 110
      Height = 30
      Caption = 'Cart'#227'o D'#233'bito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedCartao: TSpeedButton
      Left = 9
      Top = 95
      Width = 110
      Height = 30
      Caption = 'Cart'#227'o Cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object btedDinheiro: TSpeedButton
      Left = 9
      Top = 55
      Width = 110
      Height = 30
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object Label24: TLabel
      Left = 11
      Top = 14
      Width = -1
      Height = 16
      AutoSize = False
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label26: TLabel
      Left = 11
      Top = 14
      Width = -16
      Height = 16
      AutoSize = False
      Caption = 'Ticket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label27: TLabel
      Left = 11
      Top = 14
      Width = -6
      Height = 16
      AutoSize = False
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btedConvenio: TSpeedButton
      Left = 9
      Top = 335
      Width = 110
      Height = 30
      Caption = 'Conv'#234'nio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btedDinheiroClick
    end
    object lblValPagar: TLabel
      Left = 11
      Top = 24
      Width = 97
      Height = 16
      Caption = 'Valor a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edDinheiro: TJvValidateEdit
      Left = 124
      Top = 55
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      EditText = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 0
      OnEnter = edDinheiroEnter
    end
    object edCartao: TJvValidateEdit
      Left = 124
      Top = 95
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 1
      OnEnter = edDinheiroEnter
    end
    object edTicket: TJvValidateEdit
      Left = 124
      Top = 255
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 5
      OnEnter = edDinheiroEnter
    end
    object edCheque: TJvValidateEdit
      Left = 124
      Top = 175
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 3
      OnEnter = edDinheiroEnter
    end
    object edConvenio: TJvValidateEdit
      Left = 125
      Top = 335
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 7
      OnEnter = edDinheiroEnter
    end
    object edCartaoDeb: TJvValidateEdit
      Left = 124
      Top = 135
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 2
      OnEnter = edDinheiroEnter
    end
    object edPix: TJvValidateEdit
      Left = 124
      Top = 215
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 4
      OnEnter = edDinheiroEnter
    end
    object edRecebimento: TJvValidateEdit
      Left = 124
      Top = 295
      Width = 127
      Height = 30
      Flat = True
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HasMaxValue = True
      HasMinValue = True
      MaxValue = 20000.000000000000000000
      ParentFont = False
      TabOrder = 6
      OnEnter = edDinheiroEnter
    end
    object Panel1: TPanel
      Left = 125
      Top = 20
      Width = 127
      Height = 30
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 8
      object EdTotal: TJvValidateEdit
        Left = 0
        Top = 0
        Width = 127
        Height = 30
        Flat = True
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        EditText = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HasMaxValue = True
        HasMinValue = True
        MaxValue = 20000.000000000000000000
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlTecla: TPanel
    Left = 260
    Top = 24
    Width = 293
    Height = 372
    Align = alClient
    AutoSize = True
    BorderWidth = 3
    TabOrder = 4
    object pnlNumeros: TPanel
      Left = 4
      Top = 4
      Width = 285
      Height = 364
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object bt7: TJvImgBtn
        Left = 8
        Top = 33
        Width = 81
        Height = 65
        Caption = '7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt4: TJvImgBtn
        Left = 8
        Top = 113
        Width = 81
        Height = 65
        Caption = '4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt1: TJvImgBtn
        Left = 8
        Top = 193
        Width = 81
        Height = 65
        Caption = '1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object btLimpa: TJvImgBtn
        Left = 100
        Top = 273
        Width = 175
        Height = 65
        Caption = 'Limpar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btLimpaClick
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt0: TJvImgBtn
        Left = 8
        Top = 273
        Width = 81
        Height = 65
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt2: TJvImgBtn
        Left = 100
        Top = 193
        Width = 81
        Height = 65
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt3: TJvImgBtn
        Left = 195
        Top = 193
        Width = 81
        Height = 65
        Caption = '3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt6: TJvImgBtn
        Left = 195
        Top = 113
        Width = 81
        Height = 65
        Caption = '6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt5: TJvImgBtn
        Left = 100
        Top = 113
        Width = 81
        Height = 65
        Caption = '5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt8: TJvImgBtn
        Left = 100
        Top = 33
        Width = 81
        Height = 65
        Caption = '8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
      object bt9: TJvImgBtn
        Left = 195
        Top = 33
        Width = 81
        Height = 65
        Caption = '9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = bt1Click
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -21
        HotTrackFont.Name = 'Arial'
        HotTrackFont.Style = []
      end
    end
  end
  object edValor: TJvValidateEdit
    Left = 360
    Top = 28
    Width = 129
    Height = 29
    AutoSize = False
    Flat = True
    ParentFlat = False
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object cdsFormaPagamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    Left = 400
    Top = 441
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
      Alignment = taCenter
      FieldName = 'desc_status'
      Size = 60
    end
    object cdsFormaPagamentoNsu: TStringField
      FieldName = 'Nsu'
      Size = 255
    end
    object cdsFormaPagamentoid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
    object cdsFormaPagamentoTotalValor: TAggregateField
      FieldName = 'TotalValor'
      Active = True
      Expression = 'sum(Valor)'
    end
  end
  object dsFormaPagamento: TDataSource
    DataSet = cdsFormaPagamento
    Left = 432
    Top = 441
  end
end

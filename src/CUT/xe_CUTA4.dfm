object Frm_CUTA4: TFrm_CUTA4
  Left = 602
  Top = 193
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 678
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 678
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Shape15: TShape
      Left = 0
      Top = 192
      Width = 1001
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 192
      Width = 1001
      object Shape1: TShape
        Left = 6
        Top = 5
        Width = 513
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object lbCustCompany01: TcxLabel
        Left = 79
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 795
        AnchorX = 477
        AnchorY = 17
      end
      object cxLabel54: TcxLabel
        Left = 21
        Top = 9
        Caption = #49548'       '#49549
        ParentColor = False
        ParentFont = False
        Style.Color = 16575968
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 46
        AnchorY = 18
      end
      object cxButton15: TcxButton
        Left = 877
        Top = 4
        Width = 119
        Height = 35
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = cxButton15Click
      end
      object cxButton16: TcxButton
        Left = 877
        Top = 66
        Width = 119
        Height = 23
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = cxButton16Click
      end
      object cxButton17: TcxButton
        Left = 877
        Top = 91
        Width = 119
        Height = 29
        Cursor = crHandPoint
        Caption = #49440#53469#54924#50896' '#13#10#44305#44256'SMS(11.9'#50896')'
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = cxButton17Click
      end
      object btnHighCustDel: TcxButton
        Left = 877
        Top = 41
        Width = 119
        Height = 23
        Cursor = crHandPoint
        Caption = #44256#44061#49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 7
        OnClick = btnHighCustDelClick
      end
      object chkCust04Type08: TcxCheckBox
        Left = 875
        Top = 124
        Caption = #44160#49353#52628#44032
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Transparent = True
      end
      object chkDetailSubscribe: TcxCheckBox
        Left = 875
        Top = 144
        Caption = #44305#44256#49688#49888#44144#48512#51228#44144
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Transparent = True
      end
      object chk2: TcxCheckBox
        Left = 875
        Top = 165
        Caption = #51204'      '#52404
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Transparent = True
        OnClick = chk2Click
      end
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 151
        Width = 353
        object Shape3: TShape
          Left = 7
          Top = 10
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 7
          Top = 37
          Width = 244
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 7
          Top = 64
          Width = 124
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 8
          Top = 118
          Width = 338
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 7
          Top = 91
          Width = 124
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 168
          Top = 64
          Width = 146
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 19
          Top = 14
          Caption = #45824#54364' '#48264#54840
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 23
        end
        object cxLabel2: TcxLabel
          Left = 19
          Top = 41
          Caption = #44396#48516'/'#46321#44553
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 50
        end
        object cxLabel3: TcxLabel
          Left = 23
          Top = 68
          Caption = 'SMS'#49688#49888
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 77
        end
        object cxLabel4: TcxLabel
          Left = 31
          Top = 93
          Caption = 'E-mail'
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 102
        end
        object cbSmsUse04: TcxComboBox
          Left = 83
          Top = 63
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SMS'#51204#52404
            #49688'    '#49888
            #44144'    '#48512)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Text = #49688'    '#49888
          Height = 26
          Width = 78
        end
        object cbGubun04: TcxComboBox
          Left = 83
          Top = 36
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #51068#48152
            #50629#49548
            #48277#51064)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Text = #51204#52404
          OnClick = cbGubun04Click
          Height = 26
          Width = 130
        end
        object cbLevel03: TcxComboBox
          Left = 213
          Top = 36
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 16
          Properties.Items.Strings = (
            #51204#52404
            'VIP'
            #52572#50864#49688
            #50864#49688
            #51068#48152
            #51452#51032
            #48520#47049)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Text = #51204#52404
          Height = 26
          Width = 133
        end
        object cbKeynumber04: TcxComboBox
          Left = 83
          Top = 9
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber03PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = #51204#52404
          Height = 26
          Width = 263
        end
        object edtCuEmail: TcxTextEdit
          Left = 81
          Top = 90
          AutoSize = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Height = 26
          Width = 265
        end
        object chkCust04Type06: TcxCheckBox
          Left = 28
          Top = 121
          Caption = #48277#51064#44256#44061#51228#50808
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Transparent = True
        end
        object chkNmlPhoneOut04: TcxCheckBox
          Left = 131
          Top = 120
          Caption = #51068#48152#51204#54868#51228#50808
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Transparent = True
        end
        object lbCount04: TcxLabel
          Left = 294
          Top = 123
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 338
        end
        object cxLabel5: TcxLabel
          Left = 171
          Top = 67
          Caption = #50500#50883#48148#50868#46300#49345#53468
          ParentColor = False
          ParentFont = False
          Style.Color = 16575968
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 215
          AnchorY = 76
        end
        object cbOutBound: TcxComboBox
          Left = 262
          Top = 63
          Hint = #51204#52404
          AutoSize = False
          ParentShowHint = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 16
          Properties.Items.Strings = (
            #51204#52404
            #46041#51032
            #44144#48512
            #47928#51088)
          ShowHint = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Text = #51204#52404
          Height = 26
          Width = 84
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 361
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 151
        Width = 513
        object Shape2: TShape
          Left = 109
          Top = 10
          Width = 193
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 109
          Top = 37
          Width = 193
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 109
          Top = 64
          Width = 193
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 73
          Top = 91
          Width = 150
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 416
          Top = 10
          Width = 66
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 416
          Top = 37
          Width = 75
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape14: TShape
          Left = 327
          Top = 64
          Width = 94
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object chkCust04Type01: TcxCheckBox
          Left = 7
          Top = 13
          Caption = #52572#51333#51060#50857#44592#44036
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          OnClick = chkCust04Type01Click
        end
        object cxDate09: TcxDateEdit
          Left = 102
          Top = 9
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 26
          Width = 86
        end
        object cxLabel82: TcxLabel
          Left = 191
          Top = 15
          Caption = '~'
          Transparent = True
        end
        object cxDate10: TcxDateEdit
          Left = 205
          Top = 9
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 26
          Width = 86
        end
        object chkCust04Type03: TcxCheckBox
          Left = 7
          Top = 93
          Caption = #51648#50669#48324
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Transparent = True
          OnClick = chkCust04Type03Click
        end
        object cbArea03: TcxComboBox
          Left = 66
          Top = 90
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbArea03PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 69
        end
        object cbArea04: TcxComboBox
          Left = 136
          Top = 90
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Height = 26
          Width = 99
        end
        object cbBCustList2: TcxComboBox
          Left = 66
          Top = 118
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = #51204#52404
          Height = 26
          Width = 211
        end
        object chkCust04Type07: TcxCheckBox
          Left = 7
          Top = 122
          Caption = #48277#51064#47749
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
          OnClick = chkCust04Type07Click
        end
        object cxButton50: TcxButton
          Left = 278
          Top = 120
          Width = 41
          Height = 24
          Cursor = crHandPoint
          Caption = #51116#51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 9
          OnClick = cxButton50Click
        end
        object cxButton54: TcxButton
          Left = 294
          Top = 10
          Width = 25
          Height = 24
          Cursor = crHandPoint
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 10
          OnMouseDown = cxButton54MouseDown
        end
        object chkCust04Type02: TcxCheckBox
          Left = 7
          Top = 38
          Caption = #49888#44508#46321#47197#44592#44036
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Transparent = True
          OnClick = chkCust04Type02Click
        end
        object cxDate11: TcxDateEdit
          Left = 102
          Top = 36
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Height = 26
          Width = 86
        end
        object cxDate12: TcxDateEdit
          Left = 205
          Top = 36
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Height = 26
          Width = 86
        end
        object btnAll3: TcxButton
          Left = 294
          Top = 37
          Width = 25
          Height = 24
          Cursor = crHandPoint
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 14
          OnMouseDown = btnAll3MouseDown
        end
        object cxlbl1: TcxLabel
          Left = 191
          Top = 42
          Caption = '~'
          Transparent = True
        end
        object chkCust04Type09: TcxCheckBox
          Left = 7
          Top = 64
          Caption = #44256#44061#51060#50857#44592#44036
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Transparent = True
          OnClick = chkCust04Type09Click
        end
        object cxDate24: TcxDateEdit
          Left = 102
          Top = 63
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Height = 26
          Width = 86
        end
        object cxlbl2: TcxLabel
          Left = 191
          Top = 69
          Caption = '~'
          Transparent = True
        end
        object cxDate25: TcxDateEdit
          Left = 205
          Top = 63
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
          ParentShowHint = False
          Properties.DateButtons = [btnNow, btnToday]
          Properties.DateOnError = deToday
          Properties.InputKind = ikStandard
          Properties.SaveTime = False
          Properties.ShowTime = False
          ShowHint = True
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 19
          Height = 26
          Width = 86
        end
        object btnAll4: TcxButton
          Left = 294
          Top = 64
          Width = 25
          Height = 24
          Cursor = crHandPoint
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            000000000000000000000000000000000000000000000000000D000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            000000000000000000000000000000000000000000000000001800000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            000000000000000000000000000000000000000000000000002200000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002900000000C774
            30A5CA7A38FFCC7F41FFCD8449FFCF8952FFD1905DFFD49869FFD7A075FFDAA8
            81FADDB08CD7E0B798B4E3BEA291E7C6AB5E000000000000002B00000000FF80
            0002CB7B389CCC7F41FFCE8549FBCF8A523B0000000000000000000000000000
            0000000000000000000000000000000000000000000000000028000000000000
            0000FF000001CB7F408FCE8549FFD08B52E5D18B5D1600000000000000000000
            0000000000000000000000000000000000000000000000000020000000000000
            00000000000000000000CE854982D08B52FFD2905ABDAAAA5503000000000000
            0000000000000000000000000000000000000000000000000017000000000000
            0000000000000000000000000000D18A5174D2905BFFD5966485000000000000
            000000000000000000000000000000000000000000000000000C000000000000
            000000000000000000000000000000000000D2905C67D49663BF000000000000
            0000000000000000000000000000000000000000000000000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 20
          OnMouseDown = btnAll4MouseDown
        end
        object chkCust04Type04: TcxCheckBox
          Left = 326
          Top = 12
          Caption = #50756#47308#54943#49688
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 21
          Transparent = True
          OnClick = chkCust04Type04Click
        end
        object chkCust04Type05: TcxCheckBox
          Left = 326
          Top = 39
          Caption = #52712#49548#54943#49688
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 22
          Transparent = True
          OnClick = chkCust04Type05Click
        end
        object edCust04Type01: TcxTextEdit
          Left = 404
          Top = 9
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 23
          Height = 26
          Width = 43
        end
        object cxLabel85: TcxLabel
          Left = 448
          Top = 16
          Caption = '~'
          Transparent = True
        end
        object edCust04Type02: TcxTextEdit
          Left = 461
          Top = 9
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 25
          Height = 26
          Width = 43
        end
        object edCust04Type03: TcxTextEdit
          Left = 404
          Top = 36
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 26
          Height = 26
          Width = 43
        end
        object cxLabel86: TcxLabel
          Left = 448
          Top = 41
          Caption = '~'
          Transparent = True
        end
        object edCust04Type04: TcxTextEdit
          Left = 461
          Top = 36
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 28
          Height = 26
          Width = 43
        end
        object cxLabel84: TcxLabel
          Left = 336
          Top = 68
          Caption = #48264#54840#46263#51088#47532
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 368
          AnchorY = 76
        end
        object cbCustLastNumber2: TcxComboBox
          Left = 404
          Top = 63
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            '0000~0499'
            '0500~0999'
            '1000~1499'
            '1500~1999'
            '2000~2499'
            '2500~2999'
            '3000~3499'
            '3500~3999'
            '4000~4499'
            '4500~4999'
            '5000~5499'
            '5500~5999'
            '6000~6499'
            '6500~6999'
            '7000~7499'
            '7500~7999'
            '8000~8499'
            '8500~8999'
            '9000~9499'
            '9500~9999')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 30
          Text = #51204#52404
          Height = 26
          Width = 100
        end
        object cxButton62: TcxButton
          Left = 327
          Top = 117
          Width = 177
          Height = 26
          Cursor = crHandPoint
          Caption = #49440#53469#44256#44061#46321#44553#48320#44221
          Colors.Normal = 12189690
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 31
          OnClick = cxButton62Click
        end
        object cbBCustList2Cd: TcxComboBox
          Left = 380
          Top = 92
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          TabOrder = 32
          Text = #51204#52404
          Visible = False
          Width = 124
        end
        object rbCust04Type01: TcxRadioButton
          Left = 236
          Top = 95
          Width = 58
          Height = 17
          Caption = #52636#48156#51648
          Checked = True
          Enabled = False
          TabOrder = 33
          TabStop = True
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object rbCust04Type02: TcxRadioButton
          Left = 295
          Top = 95
          Width = 58
          Height = 17
          Caption = #46020#52265#51648
          Enabled = False
          TabOrder = 34
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
      end
    end
    object cxGrid4: TcxGrid
      Left = 0
      Top = 194
      Width = 1001
      Height = 484
      Align = alClient
      PopupMenu = pmDetail
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object CustView4: TcxGridDBTableView
        OnKeyDown = CustView4KeyDown
        OnKeyUp = CustView1KeyUp
        OnMouseDown = CustView4MouseDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = CustView4DataControllerSortingChanged
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OnColumnHeaderClick = CustView4ColumnHeaderClick
        object CustView4Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No.'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object CustView4Column2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView4Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object CustView4Column4: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object CustView4Column5: TcxGridDBColumn
          DataBinding.FieldName = #44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object CustView4Column6: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object CustView4Column7: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object CustView4Column8: TcxGridDBColumn
          DataBinding.FieldName = #46321#44553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object CustView4Column9: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308'/'#52712#49548
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object CustView4Column10: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object CustView4Column11: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object CustView4Column12: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object CustView4Column13: TcxGridDBColumn
          DataBinding.FieldName = #49884'('#46020')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object CustView4Column14: TcxGridDBColumn
          DataBinding.FieldName = #44396'('#44400')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object CustView4Column15: TcxGridDBColumn
          DataBinding.FieldName = #52572#51333#51060#50857#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object CustView4Column16: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView4Column17: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object CustView4Column18: TcxGridDBColumn
          DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object CustView4Column19: TcxGridDBColumn
          DataBinding.FieldName = #47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView4Column20: TcxGridDBColumn
          DataBinding.FieldName = #51060#47700#51068
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object CustView4Column21: TcxGridDBColumn
          DataBinding.FieldName = #50500#50883#48148#50868#46300#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxGrid4Level1: TcxGridLevel
        GridView = CustView4
      end
    end
  end
  object pnl_Excel_OPT: TPanel
    Left = 8
    Top = 392
    Width = 249
    Height = 112
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 0
    Visible = False
    object cxGroupBox7: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = '   '#50641#49472#52636#47141#50741#49496
      ParentBackground = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      OnMouseMove = cxGroupBox7MouseMove
      Height = 108
      Width = 245
      object btnAll1: TcxButton
        Left = 6
        Top = 74
        Width = 117
        Height = 23
        Cursor = crHandPoint
        Caption = #54869'  '#51064
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btnAll1Click
      end
      object btnAll2: TcxButton
        Left = 124
        Top = 74
        Width = 117
        Height = 23
        Cursor = crHandPoint
        Caption = #52712#49548
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btnAll2Click
      end
      object RdExcel1: TcxRadioButton
        Tag = 1
        Left = 28
        Top = 24
        Width = 180
        Height = 17
        Caption = #50641#49472#49436#49885#50976#51648'('#48320#54872#49549#46020#45712#47548')'
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object RdExcel2: TcxRadioButton
        Tag = 1
        Left = 28
        Top = 49
        Width = 180
        Height = 17
        Caption = #50641#49472#49436#49885#50630#51020'('#48320#54872#49549#46020#48736#47492')'
        Checked = True
        TabOrder = 3
        TabStop = True
        LookAndFeel.NativeStyle = False
        Transparent = True
      end
    end
  end
  object cxBrNo: TcxTextEdit
    Left = 904
    Top = 252
    Style.Color = 15456255
    TabOrder = 2
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxHdNo: TcxTextEdit
    Left = 957
    Top = 252
    Style.Color = 15456255
    TabOrder = 3
    Text = #48376#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxStyleCustLevel: TcxStyleRepository
    Left = 40
    Top = 612
    PixelsPerInch = 96
    object stlCustLevelColor: TcxStyle
    end
  end
  object pmCustMgr: TPopupMenu
    AutoHotkeys = maManual
    Left = 784
    Top = 596
    object mniN9: TMenuItem
      Caption = #44256#44061#54633#52824#44592
    end
    object mniN10: TMenuItem
      Caption = '-'
    end
    object mniN8: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem6Click
    end
  end
  object Pop_Ymd: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 621
    Top = 32
    object MenuItem33: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem33Click
    end
    object MenuItem34: TMenuItem
      Caption = #52572#44540'1'#44060#50900
      OnClick = MenuItem34Click
    end
    object MenuItem35: TMenuItem
      Caption = #52572#44540'3'#44060#50900
      OnClick = MenuItem35Click
    end
    object MenuItem36: TMenuItem
      Caption = #52572#44540'6'#44060#50900
      OnClick = MenuItem36Click
    end
    object MenuItem37: TMenuItem
      Caption = #52572#44540'1'#45380
      OnClick = MenuItem37Click
    end
  end
  object Pop_Ymd1: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 709
    Top = 60
    object MenuItem38: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem38Click
    end
    object MenuItem39: TMenuItem
      Caption = #52572#44540'1'#44060#50900
      OnClick = MenuItem39Click
    end
    object MenuItem40: TMenuItem
      Caption = #52572#44540'3'#44060#50900
      OnClick = MenuItem40Click
    end
    object MenuItem41: TMenuItem
      Caption = #52572#44540'6'#44060#50900
      OnClick = MenuItem41Click
    end
    object MenuItem42: TMenuItem
      Caption = #52572#44540'1'#45380
      OnClick = MenuItem42Click
    end
  end
  object Pop_Ymd2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 621
    Top = 80
    object MenuItem43: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem43Click
    end
    object MenuItem44: TMenuItem
      Caption = #52572#44540'1'#44060#50900
      OnClick = MenuItem44Click
    end
    object MenuItem45: TMenuItem
      Caption = #52572#44540'3'#44060#50900
      OnClick = MenuItem45Click
    end
    object MenuItem46: TMenuItem
      Caption = #52572#44540'6'#44060#50900
      OnClick = MenuItem46Click
    end
    object MenuItem47: TMenuItem
      Caption = #52572#44540'1'#45380
      OnClick = MenuItem47Click
    end
  end
  object pmDetail: TPopupMenu
    AutoHotkeys = maManual
    Left = 600
    Top = 564
    object mniDetailCustLevel: TMenuItem
      Caption = #49440#53469#44256#44061#46321#44553#48320#44221
      OnClick = mniDetailCustLevelClick
    end
    object MenuItem19: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem6Click
    end
  end
end

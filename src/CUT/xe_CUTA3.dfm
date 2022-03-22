object Frm_CUTA3: TFrm_CUTA3
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
      Top = 205
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
      Height = 205
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
        Width = 518
        AnchorX = 338
        AnchorY = 17
      end
      object cxGroupBox2: TcxGroupBox
        Left = 600
        Top = 4
        Caption = #44256#44061#50857' '#50545' '
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 197
        Width = 274
        object Pnl_Chk3: TPanel
          Left = 4
          Top = 111
          Width = 218
          Height = 23
          BevelOuter = bvNone
          Color = 16444898
          Enabled = False
          TabOrder = 0
          object Label6: TLabel
            Left = 92
            Top = 8
            Width = 12
            Height = 12
            Caption = #8764
            Transparent = True
          end
          object de_3stDate: TcxDateEdit
            Left = 5
            Top = 3
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 0
            Height = 20
            Width = 83
          end
          object de_3edDate: TcxDateEdit
            Left = 106
            Top = 3
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 1
            Width = 83
          end
          object cxButton74: TcxButton
            Left = 191
            Top = 3
            Width = 25
            Height = 20
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
            PopupMenu = Pop_Ymd2
            TabOrder = 2
            OnClick = cxButton74Click
          end
        end
        object Pnl_Chk2: TPanel
          Left = 4
          Top = 157
          Width = 218
          Height = 22
          BevelOuter = bvNone
          Color = 16444898
          Enabled = False
          TabOrder = 1
          object Label3: TLabel
            Left = 92
            Top = 6
            Width = 12
            Height = 12
            Caption = #8764
            Transparent = True
          end
          object de_2stDate: TcxDateEdit
            Left = 4
            Top = 2
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 0
            Height = 20
            Width = 83
          end
          object de_2edDate: TcxDateEdit
            Left = 106
            Top = 2
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 1
            Width = 83
          end
          object cxButton71: TcxButton
            Left = 191
            Top = 2
            Width = 25
            Height = 20
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
            PopupMenu = Pop_Ymd1
            TabOrder = 2
            OnClick = cxButton71Click
          end
        end
        object Pnl_Chk1: TPanel
          Left = 4
          Top = 67
          Width = 218
          Height = 22
          BevelOuter = bvNone
          Color = 16444898
          Enabled = False
          TabOrder = 2
          object Label13: TLabel
            Left = 92
            Top = 8
            Width = 12
            Height = 12
            Caption = #8764
            Transparent = True
          end
          object de_1stDate: TcxDateEdit
            Left = 5
            Top = 2
            AutoSize = False
            BeepOnEnter = False
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 0
            Height = 20
            Width = 83
          end
          object de_1edDate: TcxDateEdit
            Left = 106
            Top = 2
            EditValue = 0d
            Enabled = False
            ParentShowHint = False
            Properties.DateButtons = [btnNow, btnToday]
            Properties.InputKind = ikStandard
            Properties.ShowTime = False
            ShowHint = True
            Style.BorderStyle = ebsOffice11
            StyleFocused.Color = 11796479
            TabOrder = 1
            Width = 83
          end
          object cxButton70: TcxButton
            Left = 191
            Top = 2
            Width = 25
            Height = 20
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
            PopupMenu = Pop_Ymd
            TabOrder = 2
            OnClick = cxButton70Click
          end
        end
        object Cb_DelDate: TcxCheckBox
          Left = 3
          Top = 91
          Caption = ' '#50545#49325#51228#51068#51088
          TabOrder = 3
          Transparent = True
          OnClick = Cb_DelDateClick
        end
        object CB_SetDate: TcxCheckBox
          Left = 3
          Top = 48
          Caption = ' '#50545#49444#52824#51068#51088
          TabOrder = 4
          Transparent = True
          OnClick = CB_SetDateClick
        end
        object CB_UseDate: TcxCheckBox
          Left = 3
          Top = 138
          Caption = #50545#52572#51333#51060#50857#51068#51088
          TabOrder = 5
          Transparent = True
          OnClick = CB_UseDateClick
        end
        object cxGroupBox3: TcxGroupBox
          Left = 6
          Top = 19
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Height = 27
          Width = 261
          object Rb_SetupA: TcxRadioButton
            Left = 5
            Top = 6
            Width = 50
            Height = 16
            Caption = #51204#52404
            Checked = True
            TabOrder = 0
            TabStop = True
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object Rb_SetupN: TcxRadioButton
            Left = 152
            Top = 6
            Width = 107
            Height = 16
            Caption = #50545#48120#49444#52824#44256#44061#47564' '
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object Rb_SetupY: TcxRadioButton
            Left = 55
            Top = 6
            Width = 93
            Height = 16
            Caption = #50545#49444#52824#44256#44061#47564
            TabOrder = 2
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
        end
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
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 166
        Width = 193
        object Shape3: TShape
          Left = 7
          Top = 5
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 7
          Top = 31
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 7
          Top = 57
          Width = 124
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 8
          Top = 139
          Width = 177
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 7
          Top = 83
          Width = 146
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 19
          Top = 9
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
          AnchorY = 18
        end
        object cxLabel2: TcxLabel
          Left = 19
          Top = 35
          Caption = #44256#44061' '#44396#48516
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
          AnchorY = 44
        end
        object cxLabel3: TcxLabel
          Left = 23
          Top = 61
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
          AnchorY = 70
        end
        object lbCount01: TcxLabel
          Left = 134
          Top = 144
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 178
        end
        object cbKeynumber03: TcxComboBox
          Left = 77
          Top = 4
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
          TabOrder = 4
          Text = #51204#52404
          Height = 26
          Width = 108
        end
        object cbGubun03: TcxComboBox
          Left = 77
          Top = 30
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
          Height = 26
          Width = 108
        end
        object cbSmsUse03: TcxComboBox
          Left = 77
          Top = 56
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
          TabOrder = 6
          Text = #49688'    '#49888
          Height = 26
          Width = 108
        end
        object cxButton18: TcxButton
          Left = 8
          Top = 111
          Width = 177
          Height = 24
          Cursor = crHandPoint
          Caption = #51648#49324#48324' '#49688#49888#44144#48512#44256#44061' '#51204#52404' '#44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = cxButton18Click
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 87
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
          AnchorX = 54
          AnchorY = 96
        end
        object cbOutBound: TcxComboBox
          Left = 101
          Top = 82
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
          TabOrder = 9
          Text = #51204#52404
          Height = 26
          Width = 84
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 202
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 60
        Width = 395
        object Shape2: TShape
          Left = 120
          Top = 30
          Width = 252
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object rbCust03Type01: TcxRadioButton
          Left = 7
          Top = 10
          Width = 96
          Height = 17
          Caption = #51204'            '#52404
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbCust03Type01Click
          Transparent = True
        end
        object rbCust03Type02: TcxRadioButton
          Left = 7
          Top = 34
          Width = 96
          Height = 17
          Caption = #52572#52488#46321#47197#49884#44036
          TabOrder = 1
          OnClick = rbCust03Type02Click
          Transparent = True
        end
        object cxButton53: TcxButton
          Left = 347
          Top = 30
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
          TabOrder = 2
          OnMouseDown = cxButton53MouseDown
        end
        object cxDate07: TcxDateEdit
          Left = 103
          Top = 29
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
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
          Width = 82
        end
        object cxDate08: TcxDateEdit
          Left = 230
          Top = 29
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
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
          TabOrder = 4
          Height = 26
          Width = 82
        end
        object cxLabel70: TcxLabel
          Left = 185
          Top = 35
          Caption = '09:00 ~'
          Transparent = True
        end
        object cxLabel72: TcxLabel
          Left = 312
          Top = 35
          Caption = '09:00'
          Transparent = True
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 202
        Top = 98
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 103
        Width = 395
        object Shape6: TShape
          Left = 82
          Top = 5
          Width = 165
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 82
          Top = 31
          Width = 165
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cbCustLastNumber: TcxComboBox
          Left = 171
          Top = 69
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
          TabOrder = 0
          Text = #51204#52404
          Height = 26
          Width = 118
        end
        object cxLabel74: TcxLabel
          Left = 86
          Top = 10
          Caption = #51216'      '#49688
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 112
          AnchorY = 18
        end
        object cxLabel75: TcxLabel
          Left = 86
          Top = 35
          Caption = #51648#44553#54943#49688
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 112
          AnchorY = 43
        end
        object cxLabel76: TcxLabel
          Left = 199
          Top = 10
          Caption = '~'
          Transparent = True
        end
        object cxLabel77: TcxLabel
          Left = 199
          Top = 36
          Caption = '~'
          Transparent = True
        end
        object cxLabel78: TcxLabel
          Left = 270
          Top = 9
          Caption = '('#8251#51204#52404' '#44592#44036#47564' '#44032#45733')'
          Transparent = True
        end
        object cxLabel79: TcxLabel
          Left = 270
          Top = 32
          Caption = '('#8251#51204#52404' '#44592#44036#47564' '#44032#45733')'
          Transparent = True
        end
        object edMlgCount01: TcxTextEdit
          Left = 141
          Top = 30
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 26
          Width = 50
        end
        object edMlgCount02: TcxTextEdit
          Left = 218
          Top = 30
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Height = 26
          Width = 50
        end
        object edMlgScore01: TcxTextEdit
          Left = 141
          Top = 4
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 50
        end
        object edMlgScore02: TcxTextEdit
          Left = 218
          Top = 4
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 50
        end
        object rbCust03Type03: TcxRadioButton
          Left = 8
          Top = 10
          Width = 68
          Height = 17
          Caption = #47560#51068#47532#51648
          TabOrder = 11
          OnClick = rbCust03Type03Click
          Transparent = True
        end
        object rbCust03Type04: TcxRadioButton
          Left = 8
          Top = 75
          Width = 157
          Height = 17
          Caption = #51204#54868#48264#54840' '#46263#51088#47532' '#44536#47353#44160#49353
          Checked = True
          TabOrder = 12
          TabStop = True
          OnClick = rbCust03Type04Click
          Transparent = True
        end
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
        TabOrder = 6
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
        TabOrder = 7
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
        TabOrder = 8
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
        TabOrder = 9
        OnClick = btnHighCustDelClick
      end
      object chkCust03Type01: TcxCheckBox
        Left = 875
        Top = 121
        Caption = #44160#49353#52628#44032
        TabOrder = 10
        Transparent = True
      end
      object chkHighSubscribe: TcxCheckBox
        Left = 875
        Top = 161
        Caption = #44305#44256#49688#49888#44144#48512#51228#44144
        ParentFont = False
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Transparent = True
      end
      object chkNmlPhoneOut03: TcxCheckBox
        Left = 875
        Top = 141
        Caption = #51068#48152#51204#54868#51228#50808
        TabOrder = 12
        Transparent = True
      end
      object chkCust03Type02: TcxCheckBox
        Left = 875
        Top = 181
        Caption = #51204'      '#52404
        TabOrder = 13
        Transparent = True
        OnClick = chkCust03Type02Click
      end
    end
    object cxGrid3: TcxGrid
      Left = 0
      Top = 207
      Width = 1001
      Height = 471
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object CustView3: TcxGridDBTableView
        OnKeyDown = CustView3KeyDown
        OnKeyUp = CustView1KeyUp
        OnMouseDown = CustView3MouseDown
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
        DataController.OnSortingChanged = CustView3DataControllerSortingChanged
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
        OnColumnHeaderClick = CustView3ColumnHeaderClick
        object CustView3Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object CustView3Column2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView3Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object CustView3Column4: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object CustView3Column5: TcxGridDBColumn
          DataBinding.FieldName = #44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 38
        end
        object CustView3Column6: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object CustView3Column7: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object CustView3Column8: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308'/'#52712#49548
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object CustView3Column9: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object CustView3Column10: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object CustView3Column11: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 104
        end
        object CustView3Column12: TcxGridDBColumn
          DataBinding.FieldName = #47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CustView3Column13: TcxGridDBColumn
          DataBinding.FieldName = #51648#44553#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CustView3Column14: TcxGridDBColumn
          DataBinding.FieldName = #46321#47197#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object CustView3Column15: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView3Column16: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object CustView3Column17: TcxGridDBColumn
          DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
        end
        object CustView3Column18: TcxGridDBColumn
          DataBinding.FieldName = #50500#50883#48148#50868#46300#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = CustView3
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
      Style.BorderStyle = ebsNone
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
    end
  end
  object Pop_Ymd: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 805
    Top = 56
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
    Left = 805
    Top = 148
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
    Left = 805
    Top = 104
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
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 540
    Top = 36
    object MenuItem25: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem25Click
    end
    object MenuItem26: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem26Click
    end
    object MenuItem27: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem27Click
    end
    object MenuItem28: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem28Click
    end
    object MenuItem29: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem29Click
    end
  end
end

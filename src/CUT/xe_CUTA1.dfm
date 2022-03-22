object Frm_CUTA1: TFrm_CUTA1
  Left = 602
  Top = 193
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 678
  ClientWidth = 1025
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
    Width = 1025
    Height = 678
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Shape15: TShape
      Left = 0
      Top = 246
      Width = 1025
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
      Height = 246
      Width = 1025
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 489
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxButton5: TcxButton
        Left = 287
        Top = 190
        Width = 135
        Height = 53
        Cursor = crHandPoint
        Caption = #44160'  '#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = cxButton5Click
      end
      object lbCustCompany01: TcxLabel
        Left = 83
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 441
        AnchorX = 304
        AnchorY = 17
      end
      object btnAll5: TcxButton
        Left = 775
        Top = 5
        Width = 244
        Height = 24
        Cursor = crHandPoint
        Caption = #44256#44061#47749'+'#47560#51068#47532#51648' '#51068#44292#48320#44221
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = btnAll5Click
      end
      object btnMgrCustDel: TcxButton
        Left = 916
        Top = 204
        Width = 104
        Height = 40
        Cursor = crHandPoint
        Caption = #44256#44061#49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btnMgrCustDelClick
      end
      object cxButton6: TcxButton
        Left = 700
        Top = 204
        Width = 107
        Height = 40
        Cursor = crHandPoint
        Caption = #44160'  '#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = cxButton6Click
      end
      object cxButton7: TcxButton
        Left = 808
        Top = 204
        Width = 106
        Height = 40
        Cursor = crHandPoint
        Caption = #49888#44508#46321#47197
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = cxButton7Click
      end
      object cxButton9: TcxButton
        Left = 529
        Top = 5
        Width = 244
        Height = 24
        Cursor = crHandPoint
        Caption = #49440#53469#54924#50896' '#44305#44256'SMS(11.9'#50896')'
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = cxButton9Click
      end
      object cxGroupBox2: TcxGroupBox
        Left = 424
        Top = 35
        Caption = #44256#44061#50857' '#50545' '
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 209
        Width = 274
        object Pnl_Chk3: TPanel
          Left = 4
          Top = 116
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
          Top = 170
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
          Top = 63
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
          Top = 96
          Caption = ' '#50545#49325#51228#51068#51088
          TabOrder = 3
          Transparent = True
          OnClick = Cb_DelDateClick
        end
        object CB_SetDate: TcxCheckBox
          Left = 3
          Top = 44
          Caption = ' '#50545#49444#52824#51068#51088
          TabOrder = 4
          Transparent = True
          OnClick = CB_SetDateClick
        end
        object CB_UseDate: TcxCheckBox
          Left = 3
          Top = 151
          Caption = #50545#52572#51333#51060#50857#51068#51088
          TabOrder = 5
          Transparent = True
          OnClick = CB_UseDateClick
        end
        object cxGroupBox3: TcxGroupBox
          Left = 6
          Top = 16
          Style.BorderStyle = ebsNone
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
        Left = 25
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
        AnchorX = 50
        AnchorY = 18
      end
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 35
        Caption = #44160#49353' 1'
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 208
        Width = 279
        object Shape2: TShape
          Left = 7
          Top = 18
          Width = 75
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 7
          Top = 44
          Width = 263
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 7
          Top = 70
          Width = 205
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 7
          Top = 96
          Width = 264
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 7
          Top = 148
          Width = 197
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 7
          Top = 174
          Width = 264
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape14: TShape
          Left = 7
          Top = 122
          Width = 240
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cbBCustList: TcxComboBox
          Left = 68
          Top = 147
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
          TabOrder = 0
          Text = #51204#52404
          Height = 26
          Width = 176
        end
        object cbGubun01: TcxComboBox
          Left = 79
          Top = 95
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44060#51064
            #50629#49548
            #48277#51064)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          OnClick = cbGubun01Click
          Height = 26
          Width = 96
        end
        object cbKeynumber01: TcxComboBox
          Left = 79
          Top = 43
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber01PropertiesChange
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Text = #51204#52404
          Height = 26
          Width = 193
        end
        object cbLevel01: TcxComboBox
          Left = 175
          Top = 95
          Hint = #51204#52404
          AutoSize = False
          ParentShowHint = False
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
          ShowHint = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = #51204#52404
          OnMouseEnter = cbLevel01MouseEnter
          Height = 26
          Width = 97
        end
        object cbSmsUse01: TcxComboBox
          Left = 187
          Top = 69
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
          Text = 'SMS'#51204#52404
          Height = 26
          Width = 85
        end
        object chkBubinName: TcxCheckBox
          Left = 8
          Top = 151
          Caption = #48277#51064#47749
          TabOrder = 5
          Transparent = True
          OnClick = chkBubinNameClick
        end
        object cxLabel1: TcxLabel
          Left = 19
          Top = 48
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
          AnchorY = 57
        end
        object cxLabel2: TcxLabel
          Left = 19
          Top = 74
          Caption = #51204#54868' '#48264#54840
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
          AnchorY = 83
        end
        object cxLabel24: TcxLabel
          Left = 26
          Top = 23
          Caption = #44256' '#44061' '#47749
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 50
          AnchorY = 31
        end
        object cxLabel3: TcxLabel
          Left = 19
          Top = 100
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
          AnchorY = 109
        end
        object edCustName01: TcxTextEdit
          Left = 79
          Top = 17
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          OnKeyDown = edCustName01KeyDown
          Height = 26
          Width = 193
        end
        object edCustTel01: TcxTextEdit
          Left = 79
          Top = 69
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          OnKeyDown = _retenTel01KeyDown
          Height = 26
          Width = 111
        end
        object chkBubinCust: TcxCheckBox
          Left = 16
          Top = 177
          Caption = #48277#51064#44256#44061#51228#50808
          TabOrder = 12
          Transparent = True
        end
        object chkNmlPhoneOut01: TcxCheckBox
          Left = 112
          Top = 177
          Caption = #51068#48152#51204#54868#51228#50808
          TabOrder = 13
          Transparent = True
        end
        object lbCount01: TcxLabel
          Left = 223
          Top = 179
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 267
        end
        object cxButton48: TcxButton
          Left = 244
          Top = 148
          Width = 26
          Height = 24
          Cursor = crHandPoint
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000CB6413FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000003A220745CC760BEED5730AFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000004020005633B0D72DC800AFBE58C00FFD77409FF682D
            0A8A070300090000000000000000000000000000000000000000000000000000
            0000000000000F080111915411A7DC7A07FEE18301FFE58C04FFE28A07FFD97D
            0BFFA35009D14F1E047002010003000000000000000000000000000000000000
            0000000000005E350A6CE29A32FFEAAD33FFE1850AFFE58F0CFFE9980AFFEA9B
            09FFEB9C0FFFD97D0DFF772B02AF0903000E0000000000000000000000000000
            0000000000000000000051210367CD8431F1F2C258FFE89613FFEFB842FFF2C0
            47FFEFAA1DFFF2AD1CFFDB8314FF5C1E018D0301000400000000000000000000
            0000000000000000000000000000220C012FAB672CCDF8D678FFE3A13EFFAE5A
            19D9E3A83FF8F2B82DFFF6BD2CFFC4670FF93110004D00000000000000000000
            0000000000000000000000000000000000000C040010A46527C6E7B566FF3E17
            00546D310A92ECB036FFF5C33BFFECAB2DFF7B3004B500000000000000004132
            0C45523B0D584D330B544A2F0A520000000000000000000000008B420CB10000
            0000210C012FD38520F7F8CC48FFF5C746FFA04E0DD30000000000000000C99E
            30D3F4C649FFF3C348FFEAA22DFF4A2D0A530000000000000000000000000000
            000000000000B66A19DAFAD357FFF6CF56FFA85C13D30000000000000000C99E
            31D3F9D866FFFADD68FFF1BD46FF492B08540000000000000000000000000000
            000030110044E2A037FFFEE069FFF9D761FF9A480FD100000000000000009975
            21A1F8D86BFFFCE073FFFADB69FFBB7F22CF1C0F022100000000000000001809
            0021A55813CFF9D766FFFFEA7AFFEDBB4BFF662603980000000000000000281D
            072ADAAE45E5FDE98EFFFDE67DFFFBDE72FFD99A33F0925915AB8E5112ABCE84
            2CF0FADD71FFFEEA80FFFFEF87FFAD5D1EE51B08002C00000000000000000000
            00005B400E61F3CE6BFFFFEF9FFFFFEC8DFFFFED87FFFCE275FFFCE275FFFFF0
            8AFFFFF08FFFFFF69BFFDC9C45FF3E1300610000000000000000000000000000
            00000000000063410C6DE7B85CF4FBE59AFFFFF4ACFFFFF5ACFFFFF5ABFFFFF8
            A9FFF8E08DFFCF8A3EF44715006D000000000000000000000000000000000000
            000000000000000000002B1A043082551793CB9347E2E3B25EF7E0AA5AF7C07F
            3BE271370D93210B003000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 15
          OnClick = cxButton48Click
        end
        object cxLabel8: TcxLabel
          Left = 19
          Top = 126
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
          AnchorX = 63
          AnchorY = 135
        end
        object cbOutBound: TcxComboBox
          Left = 118
          Top = 121
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
          TabOrder = 17
          Text = #51204#52404
          OnMouseEnter = cbLevel01MouseEnter
          Height = 26
          Width = 153
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 287
        Top = 35
        Caption = #51452#52264#50504#49900#48264#54840
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 150
        Width = 135
        object Shape8: TShape
          Left = 6
          Top = 18
          Width = 122
          Height = 44
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 6
          Top = 70
          Width = 122
          Height = 64
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel4: TcxLabel
          Left = 26
          Top = 23
          Caption = #50504#49900#51204#54868#48264#54840
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 64
          AnchorY = 31
        end
        object cxCheckBox9: TcxCheckBox
          Left = 18
          Top = 71
          Caption = #48264#54840#54624#45817#44592#44036
          TabOrder = 1
          Transparent = True
          OnClick = cxCheckBox9Click
        end
        object cxButton55: TcxButton
          Left = 101
          Top = 113
          Width = 27
          Height = 21
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
          PopupMenu = pm_Date
          TabOrder = 2
          OnMouseDown = cxButton55MouseDown
        end
        object cxDateEdit1: TcxDateEdit
          Left = 5
          Top = 92
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          PopupMenu = pm_Date
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
          Height = 22
          Width = 96
        end
        object cxDateEdit2: TcxDateEdit
          Left = 5
          Top = 113
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          PopupMenu = pm_Date
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
          Height = 22
          Width = 96
        end
        object cxLabel237: TcxLabel
          Left = 107
          Top = 95
          Caption = '~'
          Transparent = True
        end
        object cxTextEdit17: TcxTextEdit
          Left = 5
          Top = 40
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          OnKeyDown = cxTextEdit17KeyDown
          Height = 24
          Width = 124
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 700
        Top = 35
        Caption = #44160#49353' 2'
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 166
        Width = 320
        object Shape10: TShape
          Left = 9
          Top = 22
          Width = 275
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 9
          Top = 48
          Width = 275
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 9
          Top = 74
          Width = 275
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 9
          Top = 100
          Width = 191
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cbBCustListCd: TcxComboBox
          Left = 8
          Top = 125
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
          TabOrder = 0
          Text = #51204#52404
          Visible = False
          Height = 26
          Width = 278
        end
        object chkSearchAdd: TcxCheckBox
          Left = 13
          Top = 103
          Caption = #44160#49353#52628#44032
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Transparent = True
        end
        object cxButton51: TcxButton
          Left = 286
          Top = 48
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
          PopupMenu = pm_Date22
          TabOrder = 2
          OnMouseDown = cxButton51MouseDown
        end
        object cxButton8: TcxButton
          Left = 202
          Top = 100
          Width = 82
          Height = 22
          Cursor = crHandPoint
          Caption = #50641#49472#51200#51109
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = cxButton8Click
        end
        object cxCheckBox4: TcxCheckBox
          Left = 106
          Top = 102
          Caption = #51204#52404#49440#53469
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Transparent = True
          OnClick = cxCheckBox4Click
        end
        object cxDate01: TcxDateEdit
          Left = 107
          Top = 21
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
          TabOrder = 5
          Height = 26
          Width = 82
        end
        object cxDate02: TcxDateEdit
          Left = 203
          Top = 21
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
          TabOrder = 6
          Height = 26
          Width = 82
        end
        object cxDate03: TcxDateEdit
          Left = 107
          Top = 47
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
          TabOrder = 7
          Height = 26
          Width = 82
        end
        object cxDate04: TcxDateEdit
          Left = 203
          Top = 47
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
          TabOrder = 8
          Height = 26
          Width = 82
        end
        object cxLabel26: TcxLabel
          Left = 189
          Top = 25
          Caption = '~'
          Transparent = True
        end
        object cxLabel27: TcxLabel
          Left = 189
          Top = 51
          Caption = '~'
          Transparent = True
        end
        object cxLabel28: TcxLabel
          Left = 189
          Top = 78
          Caption = '~'
          Transparent = True
        end
        object edUseCnt01: TcxTextEdit
          Left = 107
          Top = 73
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Height = 26
          Width = 82
        end
        object edUseCnt02: TcxTextEdit
          Left = 203
          Top = 73
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Height = 26
          Width = 82
        end
        object RbButton1: TcxButton
          Left = 286
          Top = 22
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
          PopupMenu = pop_date2
          TabOrder = 14
          OnMouseDown = RbButton1MouseDown
        end
        object rbFirstUseDate01: TcxRadioButton
          Left = 13
          Top = 26
          Width = 92
          Height = 17
          Caption = #52572#52488#51060#50857#44592#44036
          TabOrder = 15
          OnClick = rbFirstUseDate01Click
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object rbUseCnt01: TcxRadioButton
          Tag = 2
          Left = 13
          Top = 79
          Width = 90
          Height = 17
          Caption = #51060#50857' '#54943#49688
          TabOrder = 16
          OnClick = rbFirstUseDate01Click
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object rbUseDate01: TcxRadioButton
          Tag = 1
          Left = 13
          Top = 53
          Width = 92
          Height = 17
          Caption = #52572#51333#51060#50857#44592#44036
          Checked = True
          TabOrder = 17
          TabStop = True
          OnClick = rbFirstUseDate01Click
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 248
      Width = 1025
      Height = 430
      Align = alClient
      PopupMenu = pmCustMgr
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object CustView1: TcxGridDBTableView
        OnKeyDown = CustView1KeyDown
        OnKeyUp = CustView1KeyUp
        OnMouseDown = CustView1MouseDown
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
        OnCellDblClick = CustView1CellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = CustView1DataControllerSortingChanged
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Editing = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OnColumnHeaderClick = CustView1ColumnHeaderClick
        object CustView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object CustView1Column2: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 114
        end
        object CustView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 106
        end
        object CustView1Column4: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object CustView1Column5: TcxGridDBColumn
          DataBinding.FieldName = #44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object CustView1Column6: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object CustView1Column23: TcxGridDBColumn
          DataBinding.FieldName = #50504#49900#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object CustView1Column24: TcxGridDBColumn
          DataBinding.FieldName = #54624#45817#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 126
        end
        object CustView1Column7: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object CustView1Column8: TcxGridDBColumn
          DataBinding.FieldName = #51452#48124'('#49324#50629#51088')'#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object CustView1Column9: TcxGridDBColumn
          DataBinding.FieldName = #51060#50857#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CustView1Column10: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CustView1Column11: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object CustView1Column12: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#46321#44553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object CustView1Column13: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object CustView1Column14: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object CustView1Column15: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object CustView1Column16: TcxGridDBColumn
          DataBinding.FieldName = #52636#48156#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object CustView1Column17: TcxGridDBColumn
          DataBinding.FieldName = #46020#52265#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object CustView1Column18: TcxGridDBColumn
          DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object CustView1Column19: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView1Column20: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object CustView1Column21: TcxGridDBColumn
          DataBinding.FieldName = #47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView1Column22: TcxGridDBColumn
          Caption = #52572#51333#51060#50857#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object CustView1Column25: TcxGridDBColumn
          DataBinding.FieldName = #50545#49444#52824#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object CustView1Column26: TcxGridDBColumn
          DataBinding.FieldName = #50545#49325#51228#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object CustView1Column27: TcxGridDBColumn
          DataBinding.FieldName = #50545#52572#44540#51060#50857#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object CustView1Column28: TcxGridDBColumn
          DataBinding.FieldName = #50500#50883#48148#50868#46300#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = CustView1
      end
    end
    object pnl_Chang_select: TPanel
      Left = 589
      Top = 332
      Width = 369
      Height = 253
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 2
      Visible = False
      DesignSize = (
        365
        249)
      object cxGroupBox8: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '   '#44256#44061#47749'+'#47560#51068#47532#51648' '#51068#44292#48320#44221
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnMouseMove = cxGroupBox8MouseMove
        Height = 249
        Width = 365
        object Shape16: TShape
          Left = 8
          Top = 18
          Width = 225
          Height = 24
          Pen.Color = 12566402
        end
        object Shape17: TShape
          Left = 8
          Top = 44
          Width = 354
          Height = 24
          Pen.Color = 12566402
        end
        object Shape18: TShape
          Left = 8
          Top = 71
          Width = 354
          Height = 24
          Pen.Color = 12566402
        end
        object mmoMilelistError: TcxMemo
          Left = 3
          Top = 97
          Align = alBottom
          ImeMode = imSHanguel
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 0
          Properties.ScrollBars = ssVertical
          Properties.WantReturns = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 142
          Width = 359
        end
        object btnAll6: TcxButton
          Left = 235
          Top = 18
          Width = 127
          Height = 24
          Cursor = crHandPoint
          Caption = #51068#44292#51201#50857
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btnAll6Click
        end
        object cxCurrencyEdit5: TcxCurrencyEdit
          Left = 84
          Top = 20
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Width = 113
        end
        object cxCurrencyEdit7: TcxCurrencyEdit
          Left = 84
          Top = 73
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 87
        end
        object cxlbl7: TcxLabel
          Left = 201
          Top = 24
          Caption = #47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 217
        end
        object cxTextEdit16: TcxTextEdit
          Left = 84
          Top = 46
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnKeyDown = _retenTel01KeyDown
          Width = 113
        end
        object cxLabel5: TcxLabel
          Left = 21
          Top = 22
          Caption = #49440#53469#44256#44061
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 30
        end
        object cxLabel6: TcxLabel
          Left = 22
          Top = 48
          Caption = #44256' '#44061' '#47749
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 46
          AnchorY = 56
        end
        object cxLabel7: TcxLabel
          Left = 21
          Top = 76
          Caption = #47560#51068#47532#51648
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 47
          AnchorY = 84
        end
        object cxGroupBox9: TcxGroupBox
          Left = 199
          Top = 44
          TabOrder = 9
          Height = 24
          Width = 163
          object chkNMCNG1: TcxRadioButton
            Left = 12
            Top = 4
            Width = 77
            Height = 17
            Caption = #48320#44221#50504#54632
            Checked = True
            TabOrder = 0
            TabStop = True
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object chkNMCNG2: TcxRadioButton
            Left = 100
            Top = 3
            Width = 50
            Height = 17
            Caption = #48320#44221
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
        end
        object cxGroupBox10: TcxGroupBox
          Left = 177
          Top = 71
          TabOrder = 10
          Height = 24
          Width = 185
          object cxRMileM: TcxRadioButton
            Left = 58
            Top = 4
            Width = 47
            Height = 17
            Caption = #52264#44048
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object cxRMileP: TcxRadioButton
            Left = 5
            Top = 4
            Width = 47
            Height = 17
            Caption = #51201#47549
            Checked = True
            TabOrder = 1
            TabStop = True
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
          object cxRMileS: TcxRadioButton
            Left = 105
            Top = 4
            Width = 71
            Height = 17
            Caption = #51648#51221#44552#50529
            TabOrder = 2
            LookAndFeel.NativeStyle = False
            Transparent = True
          end
        end
      end
      object btnAll7: TcxButton
        Left = 332
        Top = 0
        Width = 33
        Height = 20
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001511
          93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
          BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
          FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
          F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
          EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
          F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
          BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
          CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
          D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
          BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
          FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
          F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
          F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
          FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
          F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
          F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
          F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
          F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
          F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
          FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
          F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
          FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
          F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
          EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
          EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
          F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
          F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
          F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
          F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
          F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
          B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
          E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = btnAll7Click
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
        OnClick = rbFirstUseDate01Click
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
        OnClick = rbFirstUseDate01Click
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
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 980
    Top = 20
    object N3: TMenuItem
      Caption = #50724#45720
      OnClick = N1Click
    end
    object MenuItem2: TMenuItem
      Caption = #50612#51228
      OnClick = N2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = N6Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = N7Click
    end
    object MenuItem5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = N11Click
    end
  end
  object pm_Date22: TPopupMenu
    AutoHotkeys = maManual
    Left = 988
    Top = 124
    object MenuItem14: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem8Click
    end
    object MenuItem15: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem9Click
    end
    object MenuItem16: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem11Click
    end
    object MenuItem17: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem12Click
    end
    object MenuItem18: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem13Click
    end
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
      OnClick = mniN9Click
    end
    object mniN10: TMenuItem
      Caption = '-'
    end
    object mniN8: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem6Click
    end
  end
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 388
    Top = 260
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
  object Pop_Ymd: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 653
    Top = 88
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
    Left = 653
    Top = 180
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
    Left = 653
    Top = 136
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
end

object Frm_CUTA9: TFrm_CUTA9
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
      Top = 167
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
      Height = 167
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
        Width = 633
        AnchorX = 396
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
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 126
        Width = 238
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
          Width = 217
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
          Top = 92
          Width = 222
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 14
          Caption = #45824#54364#48264#54840
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
          Left = 21
          Top = 41
          Caption = #44256#44061#44396#48516
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
          Left = 24
          Top = 68
          Caption = #44256' '#44061' '#47749
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
        object cbGubun06: TcxComboBox
          Left = 81
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
          TabOrder = 3
          Text = #51204#52404
          Height = 26
          Width = 149
        end
        object cbKeynumber06: TcxComboBox
          Left = 81
          Top = 9
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Text = #51204#52404
          OnClick = cbKeynumber06Click
          Height = 26
          Width = 149
        end
        object lbCount06: TcxLabel
          Left = 172
          Top = 97
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 216
        end
        object edCustName03: TcxTextEdit
          Left = 81
          Top = 63
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Height = 26
          Width = 149
        end
      end
      object cxButton16: TcxButton
        Left = 620
        Top = 94
        Width = 92
        Height = 50
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = cxButton16Click
      end
      object cxGroupBox2: TcxGroupBox
        Left = 247
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 126
        Width = 370
        object Shape2: TShape
          Left = 6
          Top = 10
          Width = 285
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 188
          Top = 66
          Width = 101
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 7
          Top = 39
          Width = 101
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 188
          Top = 39
          Width = 101
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 7
          Top = 66
          Width = 101
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel178: TcxLabel
          Left = 175
          Top = 16
          Caption = '~'
          Transparent = True
        end
        object cxLabel180: TcxLabel
          Left = 194
          Top = 71
          Caption = #51060#48292#53944#54943#49688
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 226
          AnchorY = 79
        end
        object chkCust07Type02: TcxCheckBox
          Left = 14
          Top = 13
          Caption = #46321#47197#44592#44036
          State = cbsChecked
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Transparent = True
          OnClick = chkCust07Type02Click
        end
        object cxDate16: TcxDateEdit
          Left = 93
          Top = 9
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
          Width = 85
        end
        object cxDate17: TcxDateEdit
          Left = 187
          Top = 9
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
          Width = 85
        end
        object cxButton56: TcxButton
          Left = 273
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
          PopupMenu = pop_date2
          TabOrder = 5
          OnMouseDown = cxButton56MouseDown
        end
        object cxButton32: TcxButton
          Left = 7
          Top = 96
          Width = 349
          Height = 24
          Cursor = crHandPoint
          Caption = #49440#53469#44256#44061'(1'#47749')'#49345#54408#51648#44553#45236#50669
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = cxButton32Click
        end
        object cxLabel181: TcxLabel
          Left = 20
          Top = 44
          Caption = #47560#51068#47532#51648
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 46
          AnchorY = 52
        end
        object cxLabel182: TcxLabel
          Left = 19
          Top = 70
          Caption = #51648#44553#50756#47308
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 45
          AnchorY = 78
        end
        object cxLabel183: TcxLabel
          Left = 136
          Top = 43
          Caption = '('#51060#49345')'
          Transparent = True
        end
        object cxLabel184: TcxLabel
          Left = 136
          Top = 70
          Caption = '('#51060#49345')'
          Transparent = True
        end
        object edMileage01: TcxCurrencyEdit
          Left = 78
          Top = 38
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 26
          Width = 59
        end
        object edSupplyEnd01: TcxCurrencyEdit
          Left = 78
          Top = 65
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Height = 26
          Width = 59
        end
        object cxLabel257: TcxLabel
          Left = 201
          Top = 44
          Caption = #53216#54256#47560#51068
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 227
          AnchorY = 52
        end
        object edCouponM01: TcxCurrencyEdit
          Left = 259
          Top = 38
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 14
          Height = 26
          Width = 59
        end
        object cxLabel259: TcxLabel
          Left = 317
          Top = 43
          Caption = '('#51060#49345')'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 317
          Top = 70
          Caption = '('#51060#49345')'
          Transparent = True
        end
        object edEvent01: TcxCurrencyEdit
          Left = 259
          Top = 65
          AutoSize = False
          EditValue = 0
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Height = 26
          Width = 59
        end
      end
      object chkCust07Type01: TcxCheckBox
        Left = 621
        Top = 143
        Caption = #51204#52404
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Transparent = True
        OnClick = chkCust07Type01Click
      end
      object cxButton33: TcxButton
        Left = 620
        Top = 35
        Width = 92
        Height = 57
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = cxButton33Click
      end
    end
    object cxGrid6: TcxGrid
      Left = 0
      Top = 169
      Width = 1001
      Height = 509
      Align = alClient
      PopupMenu = pm_excel8_1
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object CustView6: TcxGridDBTableView
        OnKeyDown = CustView6KeyDown
        OnKeyUp = CustView1KeyUp
        OnMouseDown = CustView6MouseDown
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
        OnCellDblClick = CustView6CellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = CustView6DataControllerSortingChanged
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
        OnColumnHeaderClick = CustView6ColumnHeaderClick
        object CustView6Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object CustView6Column15: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView6Column16: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView6Column2: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object CustView6Column3: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object CustView6Column4: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object CustView6Column5: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object CustView6Column6: TcxGridDBColumn
          DataBinding.FieldName = #51204#54868#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object CustView6Column7: TcxGridDBColumn
          DataBinding.FieldName = #52509#47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object CustView6Column8: TcxGridDBColumn
          DataBinding.FieldName = #54788#51116#47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object CustView6Column9: TcxGridDBColumn
          DataBinding.FieldName = #51648#44553#50756#47308'('#54924')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object CustView6Column10: TcxGridDBColumn
          DataBinding.FieldName = 'MT point'#51064#51613
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object CustView6Column11: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object CustView6Column12: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#46321#47197#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object CustView6Column13: TcxGridDBColumn
          DataBinding.FieldName = #52572#51333#51060#50857#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object CustView6Column17: TcxGridDBColumn
          DataBinding.FieldName = #51648#44553#47560#51068#47532#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView6Column18: TcxGridDBColumn
          DataBinding.FieldName = #51648#44553#49345#54408
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object CustView6Column14: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object CustView6Column19: TcxGridDBColumn
          DataBinding.FieldName = #53216#54256#54788#51116#47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object CustView6Column20: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object CustView6Column21: TcxGridDBColumn
          DataBinding.FieldName = #51060#48292#53944#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
      end
      object cxGrid6Level1: TcxGridLevel
        GridView = CustView6
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
    Left = 853
    Top = 252
    Style.Color = 15456255
    TabOrder = 2
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxHdNo: TcxTextEdit
    Left = 913
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
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 532
    Top = 236
    object N3: TMenuItem
      Caption = #50724#45720
      OnClick = N3Click
    end
    object MenuItem2: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem5Click
    end
  end
  object pm_excel8_1: TPopupMenu
    AutoHotkeys = maManual
    Left = 564
    Top = 516
    object MenuItem10: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem10Click
    end
  end
end

object Frm_CUTB5: TFrm_CUTB5
  Left = 722
  Top = 103
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 716
  ClientWidth = 1003
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
    Width = 1003
    Height = 716
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel18: TPanel
      Left = 0
      Top = 0
      Width = 1003
      Height = 716
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object Shape6: TShape
        Left = 0
        Top = 63
        Width = 1003
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 63
        Width = 1003
        object Shape2: TShape
          Left = 6
          Top = 7
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape1: TShape
          Left = 6
          Top = 33
          Width = 349
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 378
          Top = 33
          Width = 106
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 379
          Top = 7
          Width = 204
          Height = 24
          Pen.Color = 12566402
        end
        object cxLabel218: TcxLabel
          Left = 18
          Top = 11
          Caption = #49548'     '#49549
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 19
        end
        object lbCustCompany15: TcxLabel
          Left = 83
          Top = 6
          AutoSize = False
          Caption = #49548#49549
          ParentColor = False
          Style.BorderStyle = ebsSingle
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 288
          AnchorX = 227
          AnchorY = 19
        end
        object cxDateEdit3: TcxDateEdit
          Left = 83
          Top = 32
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
          TabOrder = 2
          Height = 26
          Width = 82
        end
        object cxLabel263: TcxLabel
          Left = 168
          Top = 37
          AutoSize = False
          Caption = '09:00'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.TransparentBorder = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 36
          AnchorX = 186
          AnchorY = 46
        end
        object cxLabel264: TcxLabel
          Left = 206
          Top = 37
          AutoSize = False
          Caption = '~'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 12
          AnchorX = 212
          AnchorY = 46
        end
        object cxDateEdit4: TcxDateEdit
          Left = 223
          Top = 32
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
          TabOrder = 5
          Height = 26
          Width = 82
        end
        object cxLabel265: TcxLabel
          Left = 306
          Top = 37
          AutoSize = False
          Caption = '09:00'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.TransparentBorder = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 36
          AnchorX = 324
          AnchorY = 46
        end
        object cxButton76: TcxButton
          Left = 828
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = cxButton76Click
        end
        object cxButton77: TcxButton
          Left = 907
          Top = 7
          Width = 78
          Height = 50
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 8
          OnClick = cxButton77Click
        end
        object btn1: TcxButton
          Left = 343
          Top = 33
          Width = 28
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
          TabOrder = 9
          OnMouseDown = btn1MouseDown
        end
        object cxLabel269: TcxLabel
          Left = 393
          Top = 37
          Caption = #44208#51228#44396#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 419
          AnchorY = 45
        end
        object cxComboBox5: TcxComboBox
          Left = 458
          Top = 32
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #54980#48520#50724#45908
            #50896#52380#51669#49688#52264#44048#44148)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Text = #54980#48520#50724#45908
          Height = 26
          Width = 126
        end
        object rbo_WKTOT: TcxRadioButton
          Left = 384
          Top = 11
          Width = 90
          Height = 17
          Caption = #44592#49324#48324' '#51312#54924
          Checked = True
          TabOrder = 12
          TabStop = True
          Transparent = True
        end
        object rbo_WKDayByDay: TcxRadioButton
          Tag = 1
          Left = 476
          Top = 11
          Width = 103
          Height = 17
          Caption = #44592#49324' '#44148#48324' '#51312#54924
          TabOrder = 13
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 37
          Caption = #49888#44256#44592#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxGroupBox1: TcxGroupBox
          Left = 587
          Top = 7
          Caption = #44592#49324#44396#48516
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Height = 50
          Width = 238
          object Shape3: TShape
            Left = 3
            Top = 16
            Width = 129
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel262: TcxLabel
            Left = 11
            Top = 21
            Caption = #44396'    '#48516
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 33
            AnchorY = 29
          end
          object cxComboBox4: TcxComboBox
            Left = 60
            Top = 15
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404
              #51088#49324
              #53440#49324)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Text = #51204#52404
            Height = 26
            Width = 64
          end
          object cxComboBox6: TcxComboBox
            Left = 124
            Top = 15
            AutoSize = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #51204#52404#44592#49324
              #51068#48152#44592#49324
              #48277#51064#44592#49324)
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Text = #51204#52404#44592#49324
            Height = 26
            Width = 110
          end
        end
      end
      object cxGrid15: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        PopupMenu = pm_excel8_1
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxViewWithholdingTax: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn49
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn45
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn46
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn47
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGridDBColumn48
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          Styles.Selection = Frm_Main.cxStyle11
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'NO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 42
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 141
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 65
          end
          object cxGridDBColumn35: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 75
          end
          object cxGridDBColumn36: TcxGridDBColumn
            DataBinding.FieldName = #51452#48124#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 101
          end
          object cxGridDBColumn37: TcxGridDBColumn
            Caption = #49548#49549#44396#48516
            DataBinding.FieldName = #44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 54
          end
          object cxGridDBColumn52: TcxGridDBColumn
            Caption = #44592#49324#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxGridDBColumn50: TcxGridDBColumn
            DataBinding.FieldName = #51068#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBColumn51: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object cxGridDBColumn49: TcxGridDBColumn
            DataBinding.FieldName = #44148#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 30
          end
          object cxGridDBColumn45: TcxGridDBColumn
            DataBinding.FieldName = #52509#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 83
          end
          object cxGridDBColumn46: TcxGridDBColumn
            DataBinding.FieldName = #51077#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 76
          end
          object cxGridDBColumn47: TcxGridDBColumn
            DataBinding.FieldName = #49548#46301#49464'(3%)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 80
          end
          object cxGridDBColumn48: TcxGridDBColumn
            DataBinding.FieldName = #51452#48124#49464'(0.3%)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            MinWidth = 0
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 81
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = cxViewWithholdingTax
        end
      end
    end
  end
  object edtWithHoldingHD: TcxTextEdit
    Left = 872
    Top = 200
    Style.Color = 15456255
    TabOrder = 1
    Text = #48376#49324#53076#46300
    Visible = False
    Width = 54
  end
  object edtWithHoldingBR: TcxTextEdit
    Left = 932
    Top = 200
    Style.Color = 15456255
    TabOrder = 2
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 788
    Top = 124
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
  object pm_excel8_1: TPopupMenu
    AutoHotkeys = maManual
    Left = 708
    Top = 572
    object MenuItem10: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem10Click
    end
  end
end

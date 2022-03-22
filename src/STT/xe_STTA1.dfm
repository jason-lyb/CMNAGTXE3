object Frm_STTA1: TFrm_STTA1
  Left = 634
  Top = 226
  BorderStyle = bsNone
  Caption = 'STT'
  ClientHeight = 722
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object AdvSplitter1: TAdvSplitter
    Left = 0
    Top = 594
    Width = 984
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitTop = 353
  end
  object PnlMain: TPanel
    Left = 0
    Top = 64
    Width = 984
    Height = 530
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape6: TShape
      Left = 0
      Top = 0
      Width = 984
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGridA1: TcxGrid
      Left = 0
      Top = 2
      Width = 984
      Height = 528
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      PopupMenu = pmExcelA1
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      ExplicitHeight = 598
      object cxViewKey: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColViewKeyColumn5
            VisibleForCustomization = False
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColViewKeyColumn6
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColViewKeyColumn7
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxColViewKeyColumn8
          end
          item
            Format = ',0;-,0 %'
            OnGetText = cxViewKeyTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
            Column = cxColViewKeyColumn12
            VisibleForCustomization = False
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxViewKeyDataControllerSortingChanged
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OnColumnHeaderClick = cxViewKeyColumnHeaderClick
        object cxColViewKeyColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 33
        end
        object cxColViewKeyColumn2: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object cxColViewKeyColumn3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324'('#53076#46300')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 134
        end
        object cxColViewKeyColumn4: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxColViewKeyColumn5: TcxGridDBColumn
          Caption = #50756#47308#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
        end
        object cxColViewKeyColumn6: TcxGridDBColumn
          Caption = #52712#49548#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
        end
        object cxColViewKeyColumn7: TcxGridDBColumn
          Caption = #47928#51032#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
        end
        object cxColViewKeyColumn8: TcxGridDBColumn
          Caption = #52509#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
        end
        object cxColViewKeyColumn9: TcxGridDBColumn
          Caption = #49888#44508#44256#44061'('#47749')'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxColViewKeyColumn10: TcxGridDBColumn
          Caption = #44592#51316#44256#44061'('#47749')'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxColViewKeyColumn11: TcxGridDBColumn
          Caption = #49888#44508#48708#50984'(%)'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0 %'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object cxColViewKeyColumn12: TcxGridDBColumn
          Caption = #52712#49548#50984'(%)'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0 %'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
      end
      object cxGridA1ChartView1: TcxGridChartView
        DiagramBar.Active = True
        object cxGridA1ChartView1Series1: TcxGridChartSeries
        end
        object cxGridA1ChartView1Series2: TcxGridChartSeries
        end
        object cxGridA1ChartView1Series3: TcxGridChartSeries
        end
        object cxGridA1ChartView1Series4: TcxGridChartSeries
        end
      end
      object cxLevelKey: TcxGridLevel
        GridView = cxViewKey
      end
    end
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
    TabOrder = 1
    Height = 64
    Width = 984
    object Shape2: TShape
      Left = 6
      Top = 7
      Width = 198
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 83
      Top = 34
      Width = 135
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 304
      Top = 34
      Width = 349
      Height = 24
      Pen.Color = 12566402
      Shape = stRoundRect
    end
    object lblKeySosokA1: TcxLabel
      Left = 77
      Top = 6
      AutoSize = False
      Caption = #49548#49549
      ParentColor = False
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 13719147
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Height = 26
      Width = 576
      AnchorX = 365
      AnchorY = 19
    end
    object cxLabel218: TcxLabel
      Left = 19
      Top = 11
      Caption = #49548'      '#49549
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Transparent = True
      AnchorX = 45
      AnchorY = 19
    end
    object cxLabel31: TcxLabel
      Left = 95
      Top = 39
      Caption = #45824#54364#48264#54840
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Transparent = True
      AnchorX = 121
      AnchorY = 47
    end
    object cxLabel33: TcxLabel
      Left = 316
      Top = 40
      Caption = #44592'      '#44036
      ParentColor = False
      Style.TextColor = clBlack
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clGray
      Transparent = True
      AnchorX = 342
      AnchorY = 48
    end
    object btnDateA1: TcxButton
      Tag = 2
      Left = 628
      Top = 34
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
      PopupMenu = pop_dateA1
      TabOrder = 3
      OnMouseDown = btnDateA1MouseDown
    end
    object btnExcelA1: TcxButton
      Left = 724
      Top = 7
      Width = 63
      Height = 51
      Cursor = crHandPoint
      Caption = #50641#49472#45796#50868
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnExcelA1Click
    end
    object btnSearchA1: TcxButton
      Left = 659
      Top = 7
      Width = 63
      Height = 51
      Cursor = crHandPoint
      Caption = #44160#49353
      Colors.Default = 16773362
      Colors.Normal = 16773362
      Colors.Pressed = 16644080
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSearchA1Click
    end
    object cxLabel10: TcxLabel
      Left = 593
      Top = 40
      Caption = '09:00'
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 459
      Top = 40
      Caption = '09:00 ~ '
      Transparent = True
    end
    object cxDtEndA1: TcxDateEdit
      Left = 509
      Top = 33
      TabStop = False
      AutoSize = False
      EditValue = 39717d
      ParentShowHint = False
      PopupMenu = pop_dateA1
      Properties.Alignment.Vert = taBottomJustify
      Properties.DateButtons = [btnToday]
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
      Width = 84
    end
    object cxDtStartA1: TcxDateEdit
      Left = 376
      Top = 33
      TabStop = False
      AutoSize = False
      EditValue = 39717d
      ParentShowHint = False
      PopupMenu = pop_dateA1
      Properties.Alignment.Vert = taBottomJustify
      Properties.DateButtons = [btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      ShowHint = True
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Height = 26
      Width = 84
    end
    object cbKeynumber01: TcxComboBox
      Left = 155
      Top = 33
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #51204#52404)
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.Color = 11796479
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Text = #51204#52404
      Height = 26
      Width = 147
    end
    object cxComboBox1: TcxComboBox
      Left = 6
      Top = 33
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #53685'  '#54633
        #51068'  '#48324
        #50900'  '#48324)
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Text = #53685'  '#54633
      Height = 26
      Width = 75
    end
  end
  object pnlChart: TPanel
    Left = 0
    Top = 599
    Width = 984
    Height = 123
    Align = alClient
    TabOrder = 2
    ExplicitTop = 669
    ExplicitHeight = 53
    object cxGridA1C1: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 86
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 16
      object cxGridA1C1ChartView1: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #45824#54364#48264#54840#48324' '#53685#44228
        object cxGridA1C1ChartView1Series1: TcxGridChartSeries
          DisplayText = ' '
          GroupSummaryKind = skCount
          Styles.Values = Frm_Main.cxStyle14
        end
      end
      object cxGridA1C1Level1: TcxGridLevel
        GridView = cxGridA1C1ChartView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Shape3: TShape
        Left = 5
        Top = 5
        Width = 198
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cbChartKindA1: TcxComboBox
        Left = 80
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Column Diagram'
          'Bar Diagram'
          'Stacked Area Diagram'
          'Stacked Bars Diagram'
          'Stacked Column Diagram'
          'Line Diagram'
          'Area Diagram'
          'Pie Diagram')
        Properties.OnChange = cbChartKindPropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Text = 'Column Diagram'
        Height = 26
        Width = 147
      end
      object cxLabel1: TcxLabel
        Left = 13
        Top = 9
        Caption = #44536#47000#54532#49440#53469
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 45
        AnchorY = 17
      end
      object btnChartA1: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Caption = 'btnChartA1'
        TabOrder = 2
        Visible = False
        OnClick = btnChartA1Click
      end
      object cbKindA1: TcxComboBox
        Left = 233
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #50756#47308#44148#49688
          #52712#49548#44148#49688
          #47928#51032#44148#49688
          #52509#44148#49688
          #51204#52404)
        Properties.OnChange = cxComboBox2PropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Text = #50756#47308#44148#49688
        Height = 26
        Width = 80
      end
    end
    object cxGridA1C2: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 86
      Align = alClient
      TabOrder = 2
      Visible = False
      ExplicitHeight = 16
      object cxGridChartALL: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #45824#54364#48264#54840#48324' '#53685#44228
        object cxGridChartSeries1: TcxGridChartSeries
          DisplayText = #50756#47308#44148#49688
          GroupSummaryKind = skCount
        end
        object cxGridChartSeries2: TcxGridChartSeries
          DisplayText = #52572#49548#44148#49688
        end
        object cxGridChartSeries3: TcxGridChartSeries
          DisplayText = #47928#51032#44148#49688
        end
        object cxGridChartSeries4: TcxGridChartSeries
          DisplayText = #52509#44148#49688
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridChartALL
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 36
    Top = 168
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItemClick
    end
    object MenuItem2: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MenuItemClick
    end
    object MenuItem3: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItemClick
    end
    object MenuItem4: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MenuItemClick
    end
    object MenuItem5: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItemClick
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 160
    Top = 112
  end
  object pmExcelA1: TPopupMenu
    AutoHotkeys = maManual
    Left = 36
    Top = 232
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

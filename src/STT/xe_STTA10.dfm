object Frm_STTA10: TFrm_STTA10
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_STTA10'
  ClientHeight = 657
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object AdvSplitter1: TAdvSplitter
    Left = 0
    Top = 500
    Width = 1092
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 8
    ExplicitTop = 281
  end
  object PnlMainA10: TPanel
    Left = 0
    Top = 0
    Width = 1092
    Height = 500
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Shape6: TShape
      Left = 0
      Top = 62
      Width = 1092
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
      Height = 62
      Width = 1092
      object Shape2: TShape
        Left = 6
        Top = 7
        Width = 230
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 231
        Top = 34
        Width = 349
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 5
        Top = 34
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxLabel218: TcxLabel
        Left = 12
        Top = 11
        Caption = #49548'      '#49549
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 19
      end
      object btn12: TcxButton
        Tag = 2
        Left = 566
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
        TabOrder = 1
        OnMouseDown = btn12MouseDown
      end
      object cxDtStartA10: TcxDateEdit
        Left = 305
        Top = 33
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
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
        TabOrder = 2
        Height = 26
        Width = 84
      end
      object cxDtEndA10: TcxDateEdit
        Left = 440
        Top = 33
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
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
        TabOrder = 3
        Height = 26
        Width = 84
      end
      object lblSosokNameA10: TcxLabel
        Left = 80
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
        Width = 511
        AnchorX = 336
        AnchorY = 19
      end
      object cxLabel28: TcxLabel
        Left = 391
        Top = 39
        Caption = '09:00 ~ '
        Transparent = True
      end
      object cxLabel29: TcxLabel
        Left = 527
        Top = 39
        Caption = '09:00'
        Transparent = True
      end
      object btnSearchA10: TcxButton
        Left = 596
        Top = 6
        Width = 58
        Height = 52
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnSearchA10Click
      end
      object btnExcelA10: TcxButton
        Left = 656
        Top = 6
        Width = 58
        Height = 52
        Cursor = crHandPoint
        Caption = #50641#49472#45796#50868
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        OnClick = btnExcelA10Click
      end
      object cxLabel33: TcxLabel
        Left = 237
        Top = 40
        Caption = #44592'      '#44036
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 269
        AnchorY = 48
      end
      object cbbA10: TcxComboBox
        Left = 80
        Top = 33
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 26
        Width = 145
      end
      object cxLabel16: TcxLabel
        Left = 18
        Top = 39
        Caption = #44160#49353#51312#44148
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 47
      end
    end
    object cxGridA10: TcxGrid
      Left = 0
      Top = 64
      Width = 1092
      Height = 436
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      PopupMenu = pm3
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      ExplicitHeight = 506
      object cxGrid_OrderDayList: TcxGridDBTableView
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
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            Column = cxGrid_OrderDayListColumn3
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
            Column = cxGrid_OrderDayListColumn5
          end
          item
            Format = ',0.;-,0.'
            Kind = skAverage
            Column = cxGrid_OrderDayListColumn5
          end
          item
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
            Column = cxGrid_OrderDayListColumn6
          end
          item
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
            Column = cxGrid_OrderDayListColumn2
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems5GetText
            Column = cxGrid_OrderDayListColumn4
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            OnGetText = cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText
            Column = cxGrid_OrderDayListColumn7
          end>
        DataController.Summary.SummaryGroups = <>
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
        object cxGrid_OrderDayListColumn1: TcxGridDBColumn
          DataBinding.FieldName = #51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object cxGrid_OrderDayListColumn2: TcxGridDBColumn
          DataBinding.FieldName = #50836#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid_OrderDayListColumn7: TcxGridDBColumn
          Caption = #52509#53084#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid_OrderDayListColumn3: TcxGridDBColumn
          Caption = #49888#44508#53084#49688
          DataBinding.FieldName = #52509#53084#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid_OrderDayListColumn4: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308#53084#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid_OrderDayListColumn5: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#53084#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid_OrderDayListColumn6: TcxGridDBColumn
          Caption = #49888#44508#53084#48708#50984'(%)'
          DataBinding.FieldName = #52712#49548#48708#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
      end
      object cxLevel4: TcxGridLevel
        GridView = cxGrid_OrderDayList
      end
    end
  end
  object pnlChart: TPanel
    Left = 0
    Top = 508
    Width = 1092
    Height = 149
    Align = alClient
    TabOrder = 1
    ExplicitTop = 578
    ExplicitHeight = 79
    object cxGridA10C1: TcxGrid
      Left = 1
      Top = 36
      Width = 1090
      Height = 112
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 42
      object cxGridA10C1ChartView1: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #49888#44508#53084#49688#53685#44228
        object cxGridA10C1ChartView1Series1: TcxGridChartSeries
          DisplayText = ' '
          GroupSummaryKind = skCount
          Styles.Values = Frm_Main.cxStyle14
        end
      end
      object cxGridA10C1Level1: TcxGridLevel
        GridView = cxGridA10C1ChartView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1090
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Shape7: TShape
        Left = 5
        Top = 5
        Width = 198
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cbChartKindA10: TcxComboBox
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
      object btnChartA10: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Caption = 'btnChartA10'
        TabOrder = 2
        Visible = False
        OnClick = btnChartA10Click
      end
      object cbKindA10: TcxComboBox
        Left = 231
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #52509#53084#49688
          #49888#44508#53084#49688
          #50756#47308#53084#49688
          #52712#49548#53084#49688
          #51204#52404)
        Properties.OnChange = cxComboBox2PropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Text = #52509#53084#49688
        Height = 26
        Width = 121
      end
    end
    object cxGridA10C2: TcxGrid
      Left = 1
      Top = 36
      Width = 1090
      Height = 112
      Align = alClient
      TabOrder = 2
      Visible = False
      ExplicitHeight = 42
      object cxGridA10C2ChartALL: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #49888#44508#53084#49688#53685#44228
        object cxGridA10C2ChartSeries1: TcxGridChartSeries
          DisplayText = #52509#53084#49688
          GroupSummaryKind = skCount
        end
        object cxGridA10C2ChartSeries2: TcxGridChartSeries
          DisplayText = #49888#44508#53084#49688
        end
        object cxGridA10C2ChartSeries3: TcxGridChartSeries
          DisplayText = #50756#47308#53084#49688
        end
        object cxGridA10C2ChartSeries4: TcxGridChartSeries
          DisplayText = #52712#49548#53084#49688
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridA10C2ChartALL
      end
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    Left = 732
    Top = 280
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MenuItem1Click
    end
    object MenuItem3: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem1Click
    end
    object MenuItem4: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem1Click
    end
    object MenuItem5: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem1Click
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 792
    Top = 280
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 844
    Top = 280
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

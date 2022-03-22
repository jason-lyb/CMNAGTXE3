object Frm_STTA7: TFrm_STTA7
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_STTA7'
  ClientHeight = 741
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
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
    Top = 600
    Width = 1058
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
    ExplicitLeft = -54
    ExplicitTop = 281
    ExplicitWidth = 984
  end
  object PnlMainA7: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 600
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape6: TShape
      Left = 0
      Top = 62
      Width = 1058
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
      Width = 1058
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
        Left = 565
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
        PopupMenu = pop_date
        TabOrder = 1
        OnMouseDown = btn12MouseDown
      end
      object cxDtStartA7: TcxDateEdit
        Left = 305
        Top = 33
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
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
      object cxDtEndA7: TcxDateEdit
        Left = 440
        Top = 33
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        Properties.Alignment.Horz = taCenter
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
      object lblSosokNameA7: TcxLabel
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
      object btnSearchA7: TcxButton
        Left = 596
        Top = 5
        Width = 58
        Height = 53
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
        OnClick = btnSearchA7Click
      end
      object btnExcelA7: TcxButton
        Left = 656
        Top = 5
        Width = 58
        Height = 53
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
        OnClick = btnExcelA7Click
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
      object cbbA7: TcxComboBox
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
    object cxGridA7: TcxGrid
      Left = 0
      Top = 64
      Width = 1058
      Height = 536
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGrid_NewCust: TcxGridDBTableView
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
            OnGetText = cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            Column = cxGrid_NewCustColumn2
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            OnGetText = cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
            Column = cxGrid_NewCustColumn3
          end
          item
            Format = ',0.;-,0.'
            OnGetText = cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
            Column = cxGrid_NewCustColumn4
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
        object cxGrid_NewCustColumn1: TcxGridDBColumn
          DataBinding.FieldName = #45216#51676
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object cxGrid_NewCustColumn2: TcxGridDBColumn
          DataBinding.FieldName = #52509#44256#44061
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxGrid_NewCustColumn3: TcxGridDBColumn
          DataBinding.FieldName = #49888#44508#44256#44061
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxGrid_NewCustColumn4: TcxGridDBColumn
          DataBinding.FieldName = #49888#44508#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
      end
      object cxLevel4: TcxGridLevel
        GridView = cxGrid_NewCust
      end
    end
  end
  object pnlChart: TPanel
    Left = 0
    Top = 608
    Width = 1058
    Height = 133
    Align = alClient
    TabOrder = 1
    object cxGridA7C1: TcxGrid
      Left = 1
      Top = 36
      Width = 1056
      Height = 96
      Align = alClient
      TabOrder = 0
      object cxGridA7C1ChartView1: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #49888#44508#44256#44061#53685#44228
        object cxGridA7C1ChartView1Series1: TcxGridChartSeries
          DisplayText = #52509#44256#44061
          GroupSummaryKind = skCount
        end
        object cxGridA7C1ChartView1Series2: TcxGridChartSeries
          DisplayText = #49888#44508#44256#44061
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridA7C1ChartView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1056
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
      object cbChartKindA7: TcxComboBox
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
      object btnChartA7: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Caption = 'btnChartA7'
        TabOrder = 2
        Visible = False
        OnClick = btnChartA7Click
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

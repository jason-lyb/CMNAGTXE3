object Frm_STTA2: TFrm_STTA2
  Left = 634
  Top = 226
  BorderStyle = bsNone
  Caption = 'STT'
  ClientHeight = 700
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
    Top = 500
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
    Top = 0
    Width = 984
    Height = 500
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape6: TShape
      Left = 0
      Top = 91
      Width = 984
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
      Height = 91
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
        Left = 6
        Top = 34
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 6
        Top = 61
        Width = 349
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxLabel218: TcxLabel
        Left = 18
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
      object cxLabel31: TcxLabel
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
      object cxLabel33: TcxLabel
        Left = 18
        Top = 66
        Caption = #44592'      '#44036
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 74
      end
      object btnDateA2: TcxButton
        Tag = 2
        Left = 330
        Top = 61
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
        PopupMenu = pop_dateA2
        TabOrder = 3
        OnMouseDown = btnDateMouseDown
      end
      object btnExcelA2: TcxButton
        Left = 424
        Top = 34
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
        OnClick = btnKeyExcelClick
      end
      object btnSearchA2: TcxButton
        Left = 358
        Top = 34
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
        OnClick = btnSearchA2Click
      end
      object cxLabel32: TcxLabel
        Left = 295
        Top = 66
        Caption = '09:00'
        Transparent = True
      end
      object cxLabel34: TcxLabel
        Left = 161
        Top = 66
        Caption = '09:00 ~ '
        Transparent = True
      end
      object cxDtEndA2: TcxDateEdit
        Left = 211
        Top = 60
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        PopupMenu = pop_dateA2
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
      object cxDtStartA2: TcxDateEdit
        Left = 78
        Top = 60
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        PopupMenu = pop_dateA2
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
      object edtWorkerSearchValue: TcxTextEdit
        Left = 193
        Top = 33
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        OnEnter = edtWorkerSearchValueEnter
        Height = 26
        Width = 162
      end
      object lblSosokNameA2: TcxLabel
        Left = 78
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
        Width = 411
        AnchorX = 284
        AnchorY = 19
      end
      object cbbWorkerSearchType: TcxComboBox
        Left = 78
        Top = 33
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #44592#49324#49324#48264
          #44036#45800#47700#47784)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Text = #44592#49324#49324#48264
        Height = 26
        Width = 115
      end
    end
    object cxGridA2: TcxGrid
      Left = 0
      Top = 93
      Width = 984
      Height = 407
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
      object cxViewWorker: TcxGridDBTableView
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
            Column = cxCol6
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxCol7
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxCol8
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = cxCol9
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxViewWorkerDataControllerSortingChanged
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
        OnColumnHeaderClick = cxViewWorkerColumnHeaderClick
        object cxCol1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 33
        end
        object cxCol2: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object cxCol3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324'('#53076#46300')'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 134
        end
        object cxCol4: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object cxCol5: TcxGridDBColumn
          DataBinding.FieldName = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 148
        end
        object cxCol6: TcxGridDBColumn
          Caption = #51088#49324#53084#50868#54665#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxCol7: TcxGridDBColumn
          Caption = #53440#49324#53084#50868#54665#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxCol8: TcxGridDBColumn
          Caption = #52509#50868#54665#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object cxCol9: TcxGridDBColumn
          Caption = #50724#45908#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object cxCol10: TcxGridDBColumn
          DataBinding.FieldName = #44036#45800#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
      end
      object cxLevelWorker: TcxGridLevel
        GridView = cxViewWorker
      end
    end
  end
  object pnlChart: TPanel
    Left = 0
    Top = 505
    Width = 984
    Height = 195
    Align = alClient
    TabOrder = 1
    object cxGridA2C1: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 158
      Align = alClient
      TabOrder = 0
      object cxGridA2C1ChartView1: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #44592#49324#48324#53685#44228
        object cxGridA2C1ChartView1Series1: TcxGridChartSeries
          DisplayText = ' '
          GroupSummaryKind = skCount
          Styles.Values = Frm_Main.cxStyle14
        end
      end
      object cxGridA2C1Level1: TcxGridLevel
        GridView = cxGridA2C1ChartView1
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
      object cbChartKindA2: TcxComboBox
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
      object btnChartA2: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Caption = 'btnChartA2'
        TabOrder = 2
        Visible = False
        OnClick = btnChartA2Click
      end
      object cbKindA2: TcxComboBox
        Left = 233
        Top = 5
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51088#49324#53084#50868#54665#44148#49688
          #53440#49324#53084#50868#54665#44148#49688
          #52509#50868#54665#44148#49688
          #50724#45908#44552#50529
          #51204#52404)
        Properties.OnChange = cxComboBox2PropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Text = #51088#49324#53084#50868#54665#44148#49688
        Height = 26
        Width = 112
      end
      object cbKindA21: TcxComboBox
        Left = 349
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #49345#50948'20'#47749
          #49345#50948'40'#47749
          #49345#50948'60'#47749)
        Properties.OnChange = cxComboBox2PropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Text = #49345#50948'20'#47749
        Height = 26
        Width = 112
      end
    end
    object cxGridA2C2: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 158
      Align = alClient
      TabOrder = 2
      Visible = False
      object cxGridChartALL: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #44592#49324#48324#53685#44228
        object cxGridChartSeries1: TcxGridChartSeries
          DisplayText = #51088#49324#53084#50868#54665#44148#49688
          GroupSummaryKind = skCount
        end
        object cxGridChartSeries2: TcxGridChartSeries
          DisplayText = #53440#49324#53084#50868#54665#44148#49688
        end
        object cxGridChartSeries3: TcxGridChartSeries
          DisplayText = #52509#50868#54665#44148#49688
        end
        object cxGridChartSeries4: TcxGridChartSeries
          DisplayText = #50724#45908#44552#50529
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridChartALL
      end
    end
  end
  object pop_dateA2: TPopupMenu
    AutoHotkeys = maManual
    Left = 52
    Top = 152
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
    Left = 920
    Top = 72
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 148
    Top = 160
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

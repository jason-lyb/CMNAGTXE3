object Frm_STTA3: TFrm_STTA3
  Left = 634
  Top = 226
  BorderStyle = bsNone
  Caption = 'STT'
  ClientHeight = 660
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
    ExplicitTop = 355
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
      Top = 65
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
      Height = 65
      Width = 984
      object Shape1: TShape
        Left = 6
        Top = 34
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 6
        Top = 7
        Width = 198
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
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
      object lblSosokNameA3: TcxLabel
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
      object btnSearchA3: TcxButton
        Left = 360
        Top = 34
        Width = 63
        Height = 25
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnSearchA3Click
      end
      object btnExcelA3: TcxButton
        Left = 426
        Top = 34
        Width = 63
        Height = 25
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
        OnClick = btnExcelA3Click
      end
      object cbb1: TcxComboBox
        Left = 78
        Top = 33
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #48376#49324#47749
          #51648#49324#47749)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Text = #48376#49324#47749
        Height = 26
        Width = 115
      end
      object edt1: TcxTextEdit
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
        TabOrder = 6
        Height = 26
        Width = 164
      end
    end
    object cxGridA3: TcxGrid
      Left = 0
      Top = 67
      Width = 984
      Height = 433
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
      ExplicitHeight = 533
      object cxGridA3View1: TcxGridDBTableView
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
            Column = asg6
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asg7
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asg8
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asg9
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asg4
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asg5
          end
          item
            Format = ',0.;-,0.'
            Kind = skSum
            Column = asgView1Column1
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxView1DataControllerSortingChanged
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
        OnColumnHeaderClick = cxGridA3View1ColumnHeaderClick
        object asg1: TcxGridDBColumn
          Caption = 'No'
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 33
        end
        object asg2: TcxGridDBColumn
          Caption = #49548#49549#48376#49324
          DataBinding.ValueType = 'String'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 130
        end
        object asg3: TcxGridDBColumn
          Caption = #49548#49549#51648#49324
          DataBinding.ValueType = 'String'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object asg4: TcxGridDBColumn
          Caption = '1'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asg5: TcxGridDBColumn
          Caption = '2'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asg6: TcxGridDBColumn
          Caption = '3'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asg7: TcxGridDBColumn
          Caption = '4'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asg8: TcxGridDBColumn
          Caption = '5'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asg9: TcxGridDBColumn
          Caption = '6~10'#54924
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object asgView1Column1: TcxGridDBColumn
          Caption = '11'#54924#51060#49345
          DataBinding.ValueType = 'LargeInt'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxLevel1: TcxGridLevel
        GridView = cxGridA3View1
      end
    end
  end
  object pnlChart: TPanel
    Left = 0
    Top = 508
    Width = 984
    Height = 152
    Align = alClient
    TabOrder = 1
    ExplicitTop = 608
    ExplicitHeight = 52
    object cxGridA3C2: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 115
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 15
      object cxGridA3C2ChartALL: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #44256#44061#48324#53685#44228
        object cxGridA3C2ChartALLSeries1: TcxGridChartSeries
          DisplayText = '1'#54924
          GroupSummaryKind = skCount
        end
        object cxGridA3C2ChartALLSeries2: TcxGridChartSeries
          DisplayText = '2'#54924
        end
        object cxGridA3C2ChartALLSeries3: TcxGridChartSeries
          DisplayText = '3'#54924
        end
        object cxGridA3C2ChartALLSeries4: TcxGridChartSeries
          DisplayText = '4'#54924
        end
        object cxGridA3C2ChartALLSeries5: TcxGridChartSeries
          DisplayText = '5'#54924
        end
        object cxGridA3C2ChartALLSeries6: TcxGridChartSeries
          DisplayText = '6-10'#54924
        end
        object cxGridA3C2ChartALLSeries7: TcxGridChartSeries
          DisplayText = '11'#54924#51060#49345
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridA3C2ChartALL
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
      object cbChartKindA3: TcxComboBox
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
      object btnChartA3: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Caption = 'btnChartA3'
        TabOrder = 2
        Visible = False
        OnClick = btnChartA3Click
      end
      object cbKindA3: TcxComboBox
        Left = 230
        Top = 4
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'#54924
          '2'#54924
          '3'#54924
          '4'#54924
          '5'#54924
          '6~10'#54924
          '11'#54924#51060#49345
          #51204#52404)
        Properties.OnChange = cxComboBox2PropertiesChange
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Text = '1'#54924
        Height = 26
        Width = 121
      end
    end
    object cxGridA3C1: TcxGrid
      Left = 1
      Top = 36
      Width = 982
      Height = 115
      Align = alClient
      TabOrder = 2
      ExplicitHeight = 15
      object cxGridA3C1ChartView1: TcxGridChartView
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DiagramColumn.Active = True
        DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
        DiagramPie.Values.CaptionPosition = pdvcpCenter
        OptionsBehavior.ValueHints = False
        Title.Alignment = cpaStart
        Title.Text = #44256#44061#48324#53685#44228
        object cxGridA3C1ChartView1Series1: TcxGridChartSeries
          DisplayText = ' '
          GroupSummaryKind = skCount
          Styles.Values = Frm_Main.cxStyle14
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridA3C1ChartView1
      end
    end
  end
  object dlgSave: TSaveDialog
    Filter = #50641#49472#54028#51068'(*.xls)|*.xls'
    Left = 800
    Top = 144
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 860
    Top = 144
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

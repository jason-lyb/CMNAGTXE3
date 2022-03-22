object Frm_APPA6: TFrm_APPA6
  Left = 2663
  Top = 123
  BorderStyle = bsNone
  Caption = 'Frm_APPA6'
  ClientHeight = 679
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMainA6: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 679
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape7: TShape
      Left = 0
      Top = 66
      Width = 1038
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
      Height = 66
      Width = 1038
      object Shape3: TShape
        Left = 6
        Top = 7
        Width = 198
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 6
        Top = 34
        Width = 155
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 184
        Top = 34
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 446
        Top = 34
        Width = 105
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
      object cxLabel79: TcxLabel
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
      object btnSearchA6: TcxButton
        Left = 603
        Top = 6
        Width = 72
        Height = 53
        Cursor = crHandPoint
        Caption = #51312#54924
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnSearchA6Click
      end
      object btnExcelA6: TcxButton
        Left = 677
        Top = 6
        Width = 72
        Height = 53
        Cursor = crHandPoint
        Caption = #50641#49472#45796#50868
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btnExcelA6Click
      end
      object cbKeynumberA6: TcxComboBox
        Left = 254
        Top = 33
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
        OnClick = cbKeynumber01Click
        Height = 26
        Width = 190
      end
      object cxBrNo5: TcxTextEdit
        Left = 811
        Top = 13
        Style.Color = 15456255
        TabOrder = 5
        Text = #51648#49324#53076#46300
        Visible = False
        Width = 54
      end
      object cxHdNo5: TcxTextEdit
        Left = 755
        Top = 13
        Style.Color = 15456255
        TabOrder = 6
        Text = #48376#49324#53076#46300
        Visible = False
        Width = 54
      end
      object cxSEYearA6: TcxSpinEdit
        Left = 81
        Top = 33
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taBottomJustify
        Properties.CanEdit = False
        Properties.MaxValue = 3000.000000000000000000
        Properties.MinValue = 2000.000000000000000000
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Value = 2008
        Height = 26
        Width = 60
      end
      object cxSEMonthA6: TcxSpinEdit
        Left = 141
        Top = 33
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taBottomJustify
        Properties.CanEdit = False
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Value = 12
        Height = 26
        Width = 40
      end
      object edtBranchSMSCash: TcxTextEdit
        Left = 515
        Top = 33
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 26
        Width = 86
      end
      object lblSosokNameA6: TcxLabel
        Left = 81
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
        Width = 520
        AnchorX = 341
        AnchorY = 19
      end
      object cxLabel83: TcxLabel
        Left = 196
        Top = 38
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 222
        AnchorY = 46
      end
      object cxLabel84: TcxLabel
        Left = 454
        Top = 38
        Caption = 'SMS'#51092#50529
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 482
        AnchorY = 46
      end
    end
    object cxGridA6: TcxGrid
      Left = 0
      Top = 68
      Width = 1038
      Height = 611
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView4: TcxGridDBTableView
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
        Navigator.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxGridDBColumn73: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGridDBColumn74: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
        end
        object cxGridDBColumn75: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn76: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn77: TcxGridDBColumn
          DataBinding.FieldName = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn78: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn79: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn80: TcxGridDBColumn
          DataBinding.FieldName = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn81: TcxGridDBColumn
          DataBinding.FieldName = #51092'  '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn82: TcxGridDBColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 30
        end
        object cxGridDBColumn83: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn84: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn85: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = '#,##0'
          Properties.HideSelection = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn86: TcxGridDBColumn
          DataBinding.FieldName = #51201' '#50836
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn87: TcxGridDBColumn
          DataBinding.FieldName = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBColumn88: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn89: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 123
        end
        object cxGridDBColumn90: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object CID_SMS_SENT_STAT_List: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText
            Column = cxGridBandedColumn29
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText
            Column = cxGridBandedColumn30
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText
            Column = cxGridBandedColumn31
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText
            Column = cxGridBandedColumn32
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText
            Column = cxGridBandedColumn36
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText
            Column = cxGridBandedColumn42
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText
            Column = cxGridBandedColumn60
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText
            Column = cxGridBandedColumn61
          end
          item
            Format = '#,##0;-#,##0'
            OnGetText = CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText
            Column = cxGridBandedColumn62
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandSizing = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaderHeight = 22
        Bands = <
          item
            Caption = 'No'
          end
          item
            Caption = #48156#49569#51068#51088
          end
          item
            Caption = #51204#52404#44148#49688
          end
          item
            Caption = #50724#54140#47553
            Position.BandIndex = 2
            Position.ColIndex = 0
          end
          item
            Caption = #53685#54868#51333#47308
            Position.BandIndex = 2
            Position.ColIndex = 1
          end
          item
            Caption = #48120#53685#54868
            Position.BandIndex = 2
            Position.ColIndex = 2
          end
          item
            Caption = #49457#44277#44148#49688
          end
          item
            Caption = #50724#54140#47553
            Position.BandIndex = 6
            Position.ColIndex = 0
          end
          item
            Caption = #53685#54868#51333#47308
            Position.BandIndex = 6
            Position.ColIndex = 1
          end
          item
            Caption = #48120#53685#54868
            Position.BandIndex = 6
            Position.ColIndex = 2
          end
          item
            Caption = #49892#54056#44148#49688
          end
          item
            Caption = #50724#54140#47553
            Position.BandIndex = 10
            Position.ColIndex = 0
          end
          item
            Caption = #53685#54868#51333#47308
            Position.BandIndex = 10
            Position.ColIndex = 1
          end
          item
            Caption = #48120#53685#54868
            Position.BandIndex = 10
            Position.ColIndex = 2
          end>
        object cxGridBandedColumn27: TcxGridBandedColumn
          Caption = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn28: TcxGridBandedColumn
          Caption = #48156#49569#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Width = 81
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn29: TcxGridBandedColumn
          Caption = #50724#54140#47553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 74
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn30: TcxGridBandedColumn
          Caption = #53685#54868#51333#47308
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn31: TcxGridBandedColumn
          Caption = #48120#53685#54868
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn32: TcxGridBandedColumn
          Caption = #50724#54140#47553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 83
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn36: TcxGridBandedColumn
          Caption = #53685#54868#51333#47308
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 82
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn42: TcxGridBandedColumn
          Caption = #48120#53685#54868
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 71
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn60: TcxGridBandedColumn
          Caption = #50724#54140#47553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn61: TcxGridBandedColumn
          Caption = #53685#54868#51333#47308
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn62: TcxGridBandedColumn
          Caption = #48120#53685#54868
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = CID_SMS_SENT_STAT_List
      end
    end
  end
end

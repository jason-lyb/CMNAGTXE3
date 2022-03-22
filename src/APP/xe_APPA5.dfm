object Frm_APPA5: TFrm_APPA5
  Left = 2663
  Top = 123
  BorderStyle = bsNone
  Caption = 'Frm_APPA5'
  ClientHeight = 677
  ClientWidth = 1007
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
  object PnlMainA5: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 677
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape7: TShape
      Left = 0
      Top = 66
      Width = 1007
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
      TabOrder = 0
      Height = 66
      Width = 1007
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
        Width = 286
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 296
        Top = 34
        Width = 143
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 504
        Top = 34
        Width = 105
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Label5: TLabel
        Left = 168
        Top = 41
        Width = 12
        Height = 12
        Caption = #8764
        Transparent = True
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
      object btnSearchA5: TcxButton
        Left = 676
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
        OnClick = btnSearchA5Click
      end
      object btnExcelA5: TcxButton
        Left = 750
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
        OnClick = btnExcelA5Click
      end
      object cbKeynumberA5: TcxComboBox
        Left = 383
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
        Width = 119
      end
      object cxBrNo4: TcxTextEdit
        Left = 882
        Top = 13
        Style.Color = 15456255
        TabOrder = 5
        Text = #51648#49324#53076#46300
        Visible = False
        Width = 54
      end
      object cxHdNo4: TcxTextEdit
        Left = 826
        Top = 13
        Style.Color = 15456255
        TabOrder = 6
        Text = #48376#49324#53076#46300
        Visible = False
        Width = 54
      end
      object cbbA5: TcxTextEdit
        Left = 573
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
        TabOrder = 7
        Height = 26
        Width = 100
      end
      object lblSosokNameA5: TcxLabel
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
        Width = 592
        AnchorX = 377
        AnchorY = 19
      end
      object cxLabel83: TcxLabel
        Left = 314
        Top = 38
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 340
        AnchorY = 46
      end
      object cxLabel84: TcxLabel
        Left = 514
        Top = 38
        Caption = #45800#47568#48264#54840
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 540
        AnchorY = 46
      end
      object btnDateA5: TcxButton
        Left = 268
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
        PopupMenu = pm_Date
        TabOrder = 11
        OnMouseDown = btn6MouseDown
      end
      object cxDtEndA5: TcxDateEdit
        Left = 182
        Top = 33
        AutoSize = False
        EditValue = 39777d
        Properties.Alignment.Vert = taBottomJustify
        Properties.InputKind = ikStandard
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 26
        Width = 84
      end
      object cxDtStartA5: TcxDateEdit
        Left = 82
        Top = 33
        AutoSize = False
        EditValue = 39777d
        Properties.Alignment.Vert = taBottomJustify
        Properties.InputKind = ikStandard
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 26
        Width = 84
      end
    end
    object cxGridA5: TcxGrid
      Left = 0
      Top = 68
      Width = 1007
      Height = 609
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
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
        object cxGridDBColumn55: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object cxGridDBColumn56: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 125
        end
        object cxGridDBColumn57: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn58: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#44228#51340
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn59: TcxGridDBColumn
          DataBinding.FieldName = #50696#44552#51452
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn60: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn61: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn62: TcxGridDBColumn
          DataBinding.FieldName = #49444#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn63: TcxGridDBColumn
          DataBinding.FieldName = #51092'  '#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBColumn64: TcxGridDBColumn
          Caption = #50696#50557
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Width = 30
        end
        object cxGridDBColumn65: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#51068#51088
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn66: TcxGridDBColumn
          DataBinding.FieldName = #50696#50557#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn67: TcxGridDBColumn
          DataBinding.FieldName = #52636#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = '#,##0'
          Properties.HideSelection = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn68: TcxGridDBColumn
          DataBinding.FieldName = #51201' '#50836
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn69: TcxGridDBColumn
          DataBinding.FieldName = #47700' '#47784
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBColumn70: TcxGridDBColumn
          DataBinding.FieldName = #55092#45824#54256
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBColumn71: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 123
        end
        object cxGridDBColumn72: TcxGridDBColumn
          DataBinding.FieldName = #51008#54665#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object CID_PUSH_HISTORY_List: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGridBandedColumn63
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
        OptionsSelection.CellSelect = False
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaderHeight = 22
        OptionsView.BandHeaders = False
        Bands = <
          item
            Caption = 'No'
          end
          item
            Caption = #51068#47144#48264#54840
          end
          item
            Caption = #49436#48708#49828#51333#47448
          end
          item
            Caption = #45824#54364#48264#54840
          end
          item
            Caption = #45800#47568#48264#54840
          end
          item
            Caption = #53685#49888#49324
          end
          item
            Caption = #45800#47568#51333#47448
          end
          item
            Caption = #44208#44284
          end
          item
            Caption = 'CID'#49688#49888#51068#49884
          end
          item
            Caption = #48156#49569#51068#49884
          end
          item
            Caption = #50676#46988#51068#49884
          end
          item
            Caption = #44552#50529
          end>
        object cxGridBandedColumn18: TcxGridBandedColumn
          Caption = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn19: TcxGridBandedColumn
          Caption = #51068#47144#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 68
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn20: TcxGridBandedColumn
          Caption = #49436#48708#49828#51333#47448
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 67
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn34: TcxGridBandedColumn
          Caption = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn21: TcxGridBandedColumn
          Caption = #45800#47568#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 93
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn25: TcxGridBandedColumn
          Caption = #53685#49888#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn43: TcxGridBandedColumn
          Caption = #45800#47568#51333#47448
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn22: TcxGridBandedColumn
          Caption = #44208#44284
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn23: TcxGridBandedColumn
          Caption = 'CID'#49688#49888#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 123
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn24: TcxGridBandedColumn
          Caption = #48156#49569#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 123
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn26: TcxGridBandedColumn
          Caption = #50676#46988#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 123
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridBandedColumn63: TcxGridBandedColumn
          Caption = #44148#48324' '#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = CID_PUSH_HISTORY_List
      end
    end
  end
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 356
    Top = 196
    object MenuItem25: TMenuItem
      Caption = '1'#51452
      OnClick = MenuItem25Click
    end
    object MenuItem26: TMenuItem
      Caption = '2'#51452
      OnClick = MenuItem26Click
    end
    object MenuItem27: TMenuItem
      Caption = '1'#44060#50900
      OnClick = MenuItem27Click
    end
    object MenuItem28: TMenuItem
      Caption = '2'#44060#50900
      OnClick = MenuItem28Click
    end
  end
end

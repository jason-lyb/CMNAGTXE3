object Frm_CUTB2: TFrm_CUTB2
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
    object Panel17: TPanel
      Left = 0
      Top = 0
      Width = 351
      Height = 716
      Align = alLeft
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 2
      object Shape5: TShape
        Left = 0
        Top = 113
        Width = 351
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object custview11: TcxTreeList
        Left = 0
        Top = 115
        Width = 351
        Height = 601
        Align = alClient
        Bands = <
          item
          end>
        LookAndFeel.NativeStyle = True
        Navigator.Buttons.CustomButtons = <>
        OptionsCustomizing.BandMoving = False
        OptionsCustomizing.ColumnMoving = False
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsView.GridLineColor = clBtnShadow
        OptionsView.GridLines = tlglHorz
        OptionsView.TreeLineColor = clWindowText
        OptionsView.TreeLineStyle = tllsSolid
        Preview.AutoHeight = False
        TabOrder = 0
        object cxTreeListColumn1: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = 'No'
          DataBinding.ValueType = 'Integer'
          Options.Editing = False
          Width = 44
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object custview11cxTreeListColumn1: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = 'No.'
          DataBinding.ValueType = 'String'
          Width = 51
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListColumn2: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #48277#51064#47749
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 82
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListColumn3: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #48512#49436#47749
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 82
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListColumn4: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #45812#45817#51088
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 64
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListColumn5: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #50672#46973#52376
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 72
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListColumn7: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #48277#51064#53076#46300
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 100
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object cxGroupBox1: TcxGroupBox
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
        TabOrder = 1
        Height = 113
        Width = 351
        object Shape1: TShape
          Left = 9
          Top = 5
          Width = 221
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 9
          Top = 31
          Width = 221
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 9
          Top = 57
          Width = 221
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel54: TcxLabel
          Left = 33
          Top = 8
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
          AnchorX = 58
          AnchorY = 17
        end
        object cxLabel1: TcxLabel
          Left = 30
          Top = 34
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
          AnchorX = 56
          AnchorY = 43
        end
        object cxLabel2: TcxLabel
          Left = 14
          Top = 61
          Caption = #48277#51064'/'#48512#49436#47749
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
          AnchorX = 48
          AnchorY = 70
        end
        object cxLabel199: TcxLabel
          Left = 9
          Top = 83
          AutoSize = False
          Caption = #48277#51064#50629#52404' '#47532#49828#53944
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 13756393
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 333
          AnchorX = 176
          AnchorY = 96
        end
        object cxButton49: TcxButton
          Left = 273
          Top = 57
          Width = 68
          Height = 24
          Cursor = crHandPoint
          Caption = #51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = cxButton49Click
        end
        object cbCustKeynumber09: TcxComboBox
          Left = 86
          Top = 30
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbCustKeynumber09PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Text = #51204#52404
          Height = 26
          Width = 256
        end
        object lbCustCompany10: TcxLabel
          Left = 86
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
          Width = 256
          AnchorX = 214
          AnchorY = 17
        end
        object cxTextEdit13: TcxTextEdit
          Left = 86
          Top = 56
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 26
          Width = 186
        end
      end
    end
    object Panel18: TPanel
      Left = 356
      Top = 0
      Width = 647
      Height = 716
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 3
      object Shape6: TShape
        Left = 0
        Top = 34
        Width = 647
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGrid9: TcxGrid
        Left = 0
        Top = 36
        Width = 647
        Height = 680
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        PopupMenu = pm_excel8_1
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object custview12: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.CustomizeDialog = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnHorzSizing = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.BandMoving = False
          OptionsCustomize.ColumnVertSizing = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderHeight = 20
          OptionsView.BandHeaderHeight = 22
          Bands = <
            item
              Caption = #49692#48264
              Width = 44
            end
            item
              Caption = #51204#52404#49440#53469#13#10'('#54644#51228')'
              Visible = False
              Width = 57
            end
            item
              Caption = #50724#45908#49345#53468
              Width = 62
            end
            item
              Caption = #44208#51116#13#10#48169#49885
              Width = 45
            end
            item
              Caption = #51217#49688#48264#54840
              Width = 57
            end
            item
              Caption = #51221#49328', '#48372#44592#44428#54620
              Width = 88
            end
            item
              Caption = #48277#51064#47749
              Width = 94
            end
            item
              Caption = #48512#49436#47749
              Width = 90
            end
            item
              Caption = #44256#44061#47749
              Width = 80
            end
            item
              Caption = #51204#54868#48264#54840
              Width = 74
            end
            item
              Caption = #52572#52488#51217#49688#51068#49884
              Width = 101
            end
            item
              Caption = #52636#48156#51648#13#10'('#49884#46020')'
              Width = 20
            end
            item
              Caption = #52636#48156#51648#13#10'('#44396#44400')'
              Width = 20
            end
            item
              Caption = #52636#48156#51648#13#10'('#46041#47732')'
              Width = 20
            end
            item
              Caption = #52636#48156#51648#13#10'('#51077#47141')'
              Width = 131
            end
            item
              Caption = #46020#52265#51648#13#10'('#49884#46020')'
              Width = 20
            end
            item
              Caption = #46020#52265#51648#13#10'('#44396#44400')'
              Width = 20
            end
            item
              Caption = #46020#52265#51648#13#10'('#46041#47732')'
              Width = 20
            end
            item
              Caption = #46020#52265#51648#13#10'('#51077#47141')'
              Width = 120
            end
            item
              Caption = #44221#50976#51648
              Width = 48
            end
            item
              Caption = #44592#49324
              Width = 128
            end
            item
              Caption = #45824#44592#49884#44036
              Width = 58
            end
            item
              Caption = #50756#47308#49884#44036
              Width = 91
            end
            item
              Caption = #44144#47532'(Km)'
              Width = 50
            end
            item
              Caption = #51201#50836'-1'
              Width = 72
            end
            item
              Caption = #51201#50836'-2'
              Width = 76
            end
            item
              Caption = #50836#44552#51221#48372#49688#51221
              Width = 404
            end
            item
              Caption = #49464#44552#44228#49328#49436#51221#48372
              Width = 219
            end
            item
              Caption = #44592#53440#49324#50976
              Width = 78
            end
            item
              Caption = #50689#49688#51613' '#51221#48372
              Width = 130
            end
            item
              Caption = #49548#49549
              Visible = False
            end
            item
              Caption = #48512#44032#49464#54252#54632
              Visible = False
            end
            item
              Caption = #51221#49328
              Position.BandIndex = 5
              Position.ColIndex = 0
              Width = 43
            end
            item
              Caption = #50937#50676#46988
              Position.BandIndex = 5
              Position.ColIndex = 1
              Width = 45
            end
            item
              Caption = #51217#49688#50836#44552
              Position.BandIndex = 26
              Position.ColIndex = 0
              Width = 57
            end
            item
              Caption = #44592#49324#49688#49688#47308
              Position.BandIndex = 26
              Position.ColIndex = 1
              Width = 69
            end
            item
              Caption = #49892#51648#44553#50529
              Position.BandIndex = 26
              Position.ColIndex = 2
              Width = 57
            end
            item
              Caption = #44221#50976#50836#44552
              Position.BandIndex = 26
              Position.ColIndex = 5
              Width = 55
            end
            item
              Caption = #45824#44592#50836#44552
              Position.BandIndex = 26
              Position.ColIndex = 6
              Width = 54
            end
            item
              Caption = #48372#51221#44552#50529
              Position.BandIndex = 26
              Position.ColIndex = 3
              Width = 55
            end
            item
              Caption = #44592#48376#50836#44552
              Position.BandIndex = 26
              Position.ColIndex = 4
              Width = 57
            end
            item
              Caption = #44277#44553#44032
              Position.BandIndex = 27
              Position.ColIndex = 0
              Width = 54
            end
            item
              Caption = #48512#44032#49464
              Position.BandIndex = 27
              Position.ColIndex = 1
              Width = 54
            end
            item
              Caption = #44592#53440#50836#44552
              Position.BandIndex = 27
              Position.ColIndex = 2
              Width = 59
            end
            item
              Caption = #54633#44228
              Position.BandIndex = 27
              Position.ColIndex = 3
              Width = 48
            end
            item
              Caption = #49436#47749
              Position.BandIndex = 29
              Position.ColIndex = 0
              Width = 90
            end
            item
              Caption = #49849#51064
              Position.BandIndex = 29
              Position.ColIndex = 1
              Width = 48
            end
            item
              Caption = #44592#49324#47749
              Position.BandIndex = 20
              Position.ColIndex = 0
              Width = 69
            end
            item
              Caption = #44592#49324#49324#48264
              Position.BandIndex = 20
              Position.ColIndex = 1
              Width = 59
            end>
          object cxGridBandedColumn1: TcxGridBandedColumn
            Caption = #49692#48264
            DataBinding.ValueType = 'Integer'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn2: TcxGridBandedColumn
            Caption = #51204#52404#49440#53469
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.FullFocusRect = True
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            MinWidth = 64
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn3: TcxGridBandedColumn
            Caption = #50724#45908#49345#53468
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #50756#47308
                ImageIndex = 2
                Value = '2'
              end
              item
                Description = #47928#51032
                ImageIndex = 4
                Value = '4'
              end
              item
                Description = #52712#49548
                ImageIndex = 7
                Value = '8'
              end
              item
                Description = #51217#49688
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = #48176#52264
                ImageIndex = 1
                Value = '1'
              end
              item
                Description = #44053#51228
                ImageIndex = 3
                Value = '3'
              end
              item
                Description = #45824#44592
                ImageIndex = 5
                Value = '5'
              end
              item
                Description = #50696#50557
                ImageIndex = 9
                Value = 'R'
              end>
            Options.Moving = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn4: TcxGridBandedColumn
            Caption = #44208#51116#48169#49885
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn5: TcxGridBandedColumn
            Caption = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn6: TcxGridBandedColumn
            Caption = #51221#49328#50668#48512
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 32
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn7: TcxGridBandedColumn
            Caption = #50937#50676#46988
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 33
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn8: TcxGridBandedColumn
            Caption = #48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn9: TcxGridBandedColumn
            Caption = #48512#49436#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn10: TcxGridBandedColumn
            Caption = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn11: TcxGridBandedColumn
            Caption = #51204#54868#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn12: TcxGridBandedColumn
            Caption = #52572#52488#51217#49688#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 10
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn13: TcxGridBandedColumn
            Caption = #52636'1'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 11
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn14: TcxGridBandedColumn
            Caption = #52636'2'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 12
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn15: TcxGridBandedColumn
            Caption = #52636'3'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 13
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn16: TcxGridBandedColumn
            Caption = #52636'5'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Width = 71
            Position.BandIndex = 14
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn17: TcxGridBandedColumn
            Caption = #46020'1'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 15
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn18: TcxGridBandedColumn
            Caption = #46020'2'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 16
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn19: TcxGridBandedColumn
            Caption = #46020'3'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 17
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn20: TcxGridBandedColumn
            Caption = #46020'5'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 18
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn21: TcxGridBandedColumn
            Caption = #45824#44592#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 21
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn22: TcxGridBandedColumn
            Caption = #50756#47308#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 22
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn23: TcxGridBandedColumn
            Caption = #44144#47532
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 23
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn24: TcxGridBandedColumn
            Caption = #51201#50836'1'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 24
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn25: TcxGridBandedColumn
            Caption = #51201#50836'2'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 25
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn26: TcxGridBandedColumn
            Caption = #51217#49688#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 34
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn27: TcxGridBandedColumn
            Caption = #44592#49324#49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 35
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn28: TcxGridBandedColumn
            Caption = #49892#51648#44553#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 36
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn29: TcxGridBandedColumn
            Caption = #48372#51221#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 39
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn30: TcxGridBandedColumn
            Caption = #44592#48376#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 40
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn31: TcxGridBandedColumn
            Caption = #44221#50976#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 37
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn32: TcxGridBandedColumn
            Caption = #45824#44592#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 38
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn33: TcxGridBandedColumn
            Caption = #44277#44553#44032
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 41
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn34: TcxGridBandedColumn
            Caption = #48512#44032#49464
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 42
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn35: TcxGridBandedColumn
            Caption = #44592#53440#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 43
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn36: TcxGridBandedColumn
            Caption = #54633#44228
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AutoSelect = False
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.Nullstring = '0'
            Properties.ReadOnly = True
            Options.Moving = False
            Position.BandIndex = 44
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn37: TcxGridBandedColumn
            Caption = #44592#53440#49324#50976
            PropertiesClassName = 'TcxLabelProperties'
            Options.Moving = False
            Position.BandIndex = 28
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn38: TcxGridBandedColumn
            Caption = #49436#47749#50668#48512
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 45
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn39: TcxGridBandedColumn
            Caption = #51064#51613#50668#48512
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 46
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn40: TcxGridBandedColumn
            Caption = #49548#49549
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Moving = False
            Position.BandIndex = 30
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn41: TcxGridBandedColumn
            Caption = #44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = 47
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn42: TcxGridBandedColumn
            Caption = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = 48
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn43: TcxGridBandedColumn
            Caption = #44221#50976#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = 19
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBandedColumn44: TcxGridBandedColumn
            Caption = #48512#44032#49464#54252#54632
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Position.BandIndex = 31
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = custview12
        end
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
        TabOrder = 1
        Height = 34
        Width = 647
        object Shape4: TShape
          Left = 230
          Top = 5
          Width = 267
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxComboBox2: TcxComboBox
          Left = 5
          Top = 4
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #44256#44061#47749
            #51204#54868#48264#54840)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = #44256#44061#47749
          Height = 26
          Width = 73
        end
        object cxComboBox3: TcxComboBox
          Left = 176
          Top = 4
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #50756#47308
            #52712#49548
            #47928#51032)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 26
          Width = 50
        end
        object cxTextEdit14: TcxTextEdit
          Left = 77
          Top = 4
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 26
          Width = 100
        end
        object cxButton47: TcxButton
          Left = 567
          Top = 5
          Width = 55
          Height = 24
          Cursor = crHandPoint
          Caption = #51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = cxButton47Click
        end
        object cxButton58: TcxButton
          Left = 472
          Top = 5
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
          TabOrder = 4
          OnMouseDown = RbButton1MouseDown
        end
        object cxCheckBox2: TcxCheckBox
          Left = 232
          Top = 7
          Caption = #51060#50857#44592#44036
          TabOrder = 5
          Transparent = True
          OnClick = cxCheckBox2Click
        end
        object cxCheckBox3: TcxCheckBox
          Left = 497
          Top = 7
          Caption = #48277#51064#51204#52404
          TabOrder = 6
          Transparent = True
        end
        object cxDate20: TcxDateEdit
          Left = 302
          Top = 4
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
        object cxDate21: TcxDateEdit
          Left = 387
          Top = 4
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
      end
    end
    object cxSplitter3: TcxSplitter
      Left = 351
      Top = 0
      Width = 5
      Height = 716
      Control = Panel17
    end
    object cxBrNo9: TcxTextEdit
      Left = 853
      Top = 115
      Style.Color = 15456255
      TabOrder = 0
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxHdNo9: TcxTextEdit
      Left = 914
      Top = 115
      Style.Color = 15456255
      TabOrder = 1
      Text = #48376#49324#53076#46300
      Visible = False
      Width = 54
    end
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

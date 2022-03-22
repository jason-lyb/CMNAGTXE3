object Frm_CUTB1: TFrm_CUTB1
  Left = 602
  Top = 193
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 678
  ClientWidth = 1058
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
    Width = 1058
    Height = 678
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel14: TPanel
      Left = 0
      Top = 0
      Width = 298
      Height = 678
      Align = alLeft
      BevelOuter = bvNone
      Color = 16444898
      Constraints.MinWidth = 298
      TabOrder = 2
      object Shape5: TShape
        Left = 0
        Top = 165
        Width = 298
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGrid13: TcxGrid
        Left = 24
        Top = 317
        Width = 249
        Height = 188
        PopupMenu = pm_excel8_2
        TabOrder = 0
        object cxGridBebinList: TcxGridDBTableView
          OnKeyDown = CustView10KeyDown
          OnMouseDown = CustView10MouseDown
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
          OnCellDblClick = CustView10CellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          object cxGridDBColumnB0: TcxGridDBColumn
            DataBinding.FieldName = 'No.'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB29: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#47749
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB1: TcxGridDBColumn
            DataBinding.FieldName = #48512#49436#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB2: TcxGridDBColumn
            DataBinding.FieldName = #45800#52629#48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB3: TcxGridDBColumn
            DataBinding.FieldName = #45800#52629#48512#49436#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB4: TcxGridDBColumn
            DataBinding.FieldName = #50836#44552#53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB5: TcxGridDBColumn
            DataBinding.FieldName = #45812#45817#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB6: TcxGridDBColumn
            DataBinding.FieldName = #50672#46973#52376
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB7: TcxGridDBColumn
            DataBinding.FieldName = #47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB8: TcxGridDBColumn
            DataBinding.FieldName = #51452#49548
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB9: TcxGridDBColumn
            DataBinding.FieldName = #51060#47700#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB12: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#47197#50668#48512
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB13: TcxGridDBColumn
            DataBinding.FieldName = #44228#50557#51068
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB14: TcxGridDBColumn
            DataBinding.FieldName = #51333#47308#51068
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB15: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#44256#44061#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB16: TcxGridDBColumn
            DataBinding.FieldName = #50500#51060#46356
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB17: TcxGridDBColumn
            DataBinding.FieldName = #48708#48128#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB18: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#51068
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB19: TcxGridDBColumn
            DataBinding.FieldName = #45812#45817#51088
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB20: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#49884#48512#44032#49464
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB21: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#51088
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB22: TcxGridDBColumn
            DataBinding.FieldName = #49324#50629#51088#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB23: TcxGridDBColumn
            DataBinding.FieldName = #50629#53468
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB24: TcxGridDBColumn
            DataBinding.FieldName = #50629#51333
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB25: TcxGridDBColumn
            DataBinding.FieldName = #44228#49328#49436#51452#49548
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
          object cxGridDBColumnB26: TcxGridDBColumn
            DataBinding.FieldName = #46321#47197#51068
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
          end
          object cxGridDBColumnB27: TcxGridDBColumn
            DataBinding.FieldName = #52572#51333#51060#50857#51068
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
          end
          object cxGridDBColumnB28: TcxGridDBColumn
            DataBinding.FieldName = #51060#50857#54943#49688
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridBebinList
        end
      end
      object CustView8: TcxTreeList
        Left = 0
        Top = 167
        Width = 298
        Height = 511
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
        PopupMenu = pop_imtrgrd1
        Preview.AutoHeight = False
        TabOrder = 1
        OnSelectionChanged = CustView8SelectionChanged
        object cxTreeList1cxTreeListColumn1: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          DataBinding.ValueType = 'Integer'
          Options.Editing = False
          Width = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object CustView8cxTreeListColumn1: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = 'No.'
          DataBinding.ValueType = 'String'
          Width = 41
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeList1cxTreeListColumn2: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #48277#51064#47749
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 80
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeList1cxTreeListColumn3: TcxTreeListColumn
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
        object cxTreeList1cxTreeListColumn6: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #50836#44552#53440#51077
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 60
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnTreeList1cxTreeListColumn4: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #45812#45817#51088
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 100
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnTreeList1cxTreeListColumn5: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #50672#46973#52376
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 100
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnTreeList1cxTreeListColumn7: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Caption.AlignHorz = taCenter
          Caption.Text = #48277#51064#53076#46300
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 100
          Position.ColIndex = 10
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnCustView8cxTreeListColumn2: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #51221#49328#51068
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 50
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnCustView8cxTreeListColumn3: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #44228#50557#51068
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 80
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxtrlstclmnCustView8cxTreeListColumn4: TcxTreeListColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Caption.AlignHorz = taCenter
          Caption.Text = #51333#47308#51068
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 80
          Position.ColIndex = 9
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
        TabOrder = 2
        DesignSize = (
          298
          165)
        Height = 165
        Width = 298
        object Shape1: TShape
          Left = 5
          Top = 5
          Width = 288
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 5
          Top = 31
          Width = 288
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 5
          Top = 83
          Width = 228
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 5
          Top = 57
          Width = 288
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel54: TcxLabel
          Left = 16
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
          AnchorX = 41
          AnchorY = 18
        end
        object lbCustCompany09: TcxLabel
          Left = 77
          Top = 4
          Anchors = [akLeft, akTop, akRight]
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
          Width = 217
          AnchorX = 186
          AnchorY = 17
        end
        object cxLabel1: TcxLabel
          Left = 16
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
          AnchorX = 42
          AnchorY = 43
        end
        object cbCustKeynumber08: TcxComboBox
          Left = 78
          Top = 30
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = #51204#52404
          OnClick = cbKeynumber01Click
          Height = 26
          Width = 216
        end
        object cxLabel199: TcxLabel
          Left = 4
          Top = 139
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
          Width = 289
          AnchorX = 149
          AnchorY = 152
        end
        object cxLabel2: TcxLabel
          Left = 7
          Top = 87
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
          AnchorX = 41
          AnchorY = 96
        end
        object edBubinName01: TcxTextEdit
          Left = 78
          Top = 82
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
          Width = 156
        end
        object cxButton39: TcxButton
          Left = 235
          Top = 83
          Width = 58
          Height = 24
          Cursor = crHandPoint
          Caption = #51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = cxButton39Click
        end
        object btnDeptModify: TcxButton
          Left = 102
          Top = 111
          Width = 94
          Height = 26
          Cursor = crHandPoint
          Caption = #48512#49436#49688#51221
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 8
          OnClick = btnDeptModifyClick
        end
        object cxButton37: TcxButton
          Left = 5
          Top = 111
          Width = 95
          Height = 26
          Cursor = crHandPoint
          Caption = #49888#44508#52628#44032
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 9
          OnClick = cxButton37Click
        end
        object cxButton38: TcxButton
          Left = 198
          Top = 111
          Width = 95
          Height = 26
          Cursor = crHandPoint
          Caption = #48512#49436#49325#51228
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 10
          OnClick = cxButton38Click
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 60
          Caption = #44228#50557#50668#48512
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
          AnchorX = 42
          AnchorY = 69
        end
        object cb_Contract: TcxComboBox
          Left = 78
          Top = 56
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44228#50557#50976#51648
            #51060#50857#51221#51648'('#48120#49688')'
            #44228#50557#54644#51648'('#51333#47308'/'#54644#51648')')
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 12
          Text = #51204#52404
          OnClick = cb_ContractClick
          Height = 26
          Width = 216
        end
      end
    end
    object Panel16: TPanel
      Left = 678
      Top = 0
      Width = 380
      Height = 678
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      Constraints.MinWidth = 373
      TabOrder = 6
      object Shape11: TShape
        Left = 0
        Top = 141
        Width = 380
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 149
        ExplicitWidth = 375
      end
      object cxLabel207: TcxLabel
        Left = 0
        Top = 143
        Align = alLeft
        AutoSize = False
        Transparent = True
        Height = 535
        Width = 33
      end
      object cxButton45: TcxButton
        Left = 0
        Top = 143
        Width = 30
        Height = 255
        Cursor = crHandPoint
        Caption = #13#10#52628#13#10#44032
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          2000000000004006000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000220C003F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000037130065822D00F200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000038130065933803FB973904FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003313015A963A
          04FDB75612FFA14208FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000331301579A3E06FBC96B1DFFC16119FFA44409FF000000000000
          0000000000001307001F1307001F1307001F1307001F1307001F1307001F1307
          001F1307001F1106001B000000000000000034150255A04408FBCF7223FFD87B
          28FFCD6E21FFB95A15FFA9490CFFAC4B0EFFAC4B0DFFAC4C0CFFAC4B0DFFAB4A
          0CFFAA490BFFAA4A0BFFAA4A0BFFAB490CFFAA490BFFA03E05FD000000003616
          0254A74A0BFAD37827FFDA7F2CFFDA7E2BFFD37728FFD97F2CFFE18831FFE086
          30FFE08730FFDF8730FFDF8730FFDF8830FFE0862FFFDF862FFFDF8730FFDF86
          2FFFE38C34FFBC5D16FE3D1B0359B0510FFBD77D2BFFDE8531FFDD8430FFDC83
          30FFD97F2DFFDC842FFFE0872FFFDE862EFFDE852FFFDE862EFFDE862FFFDE86
          2FFFDE852EFFDE862EFFDE862FFFDE852EFFE18A31FFBE5E16FEB65611F6DD85
          30FFE28A31FFE18931FFE08932FFE08932FFDD842DFFDF8A36FFE5994AFFE499
          4CFFE5984BFFE5994BFFE4994BFFE5994BFFE5984BFFE4994BFFE5994BFFE498
          4BFFE79D4FFFC5671EFE5225056ED6823DFFF7DBBEFFF1C191FFEFBC88FFF0BE
          8BFFEEBA87FFE7A562FFEAAB6AFFECB67FFFECB67FFFECB67FFFEDB781FFEDB7
          81FFECB781FFEDB781FFECB781FFEDB781FFF0BE89FFCD712AFE000000005125
          0468D88541FEF9E1C7FFF3C594FFF2C18CFFF1C08CFFE8A25BFFE69B4EFFE9A7
          65FFE9A966FFE9A966FFE9A967FFEAA967FFE9A967FFE9A967FFE9A967FFE9A9
          66FFEBAE6DFFD06E23FD00000000000000005628066ADE853DFEF6D4AEFFF4C2
          88FFF2BB7FFFE79E59FFDF8431FFE18C3EFFE18B3EFFE18B3EFFE18B3EFFE18B
          3EFFE18B3EFFE18B3EFFE18B3EFFE18B3EFFE18B3EFFD56B18FF000000000000
          0000000000004E26065CE18435FEF6C58BFFF6BC78FFE38B41FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004B240655E583
          2DFEF5B76CFFE98F3FFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004D260755EB8D37FDEA8930FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000532A095AE6761AFB00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A05111AE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphTop
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton45Click
      end
      object cxButton46: TcxButton
        Left = 0
        Top = 400
        Width = 30
        Height = 275
        Cursor = crHandPoint
        Caption = #13#10#49325#13#10#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          76060000424D7606000000000000360000002800000014000000140000000100
          2000000000004006000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000220C003F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000822D00F2371300650000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000953804FF9036
          02FA381300650000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A14208FFB3530FFF933703FC3313015A000000000000
          000000000000000000001106001B1307001F1307001F1307001F1307001F1307
          001F1307001F1307001F1307001F000000000000000000000000A8470AFFC969
          1CFFB55512FF943A04FA33130157000000000000000000000000A03E05FDAA49
          0BFFAB490CFFAA4A0BFFAA4A0BFFAA490BFFAA490BFFAA490CFFAA4A0BFFAA49
          0CFFAA490DFFA7470AFFBB5C16FFD87B28FFCB6B1EFFB95A15FF9B3F06F93415
          02550000000000000000AB4809FDDB822DFFDE842FFFDD852EFFDD842EFFDE84
          2EFFDD852EFFDD842EFFDD852EFFDE842EFFDE842EFFDD842EFFDB812DFFD77D
          2AFFD97E2AFFDB802CFFC86A1FFFA14408F83616025400000000B34F0DFDDC83
          2DFFDE862FFFDE852FFFDE852EFFDE852EFFDE862FFFDE852FFFDE862FFFDE85
          2FFFDE852EFFDF872FFFDC832EFFDA812FFFDC832FFFDD8430FFDF8531FFCD71
          23FFAB4B0BF93D1B0359BD5912FDE3974AFFE59A4DFFE5994DFFE59A4DFFE599
          4DFFE59A4DFFE59A4DFFE59A4DFFE5994DFFE59A4DFFE69C4FFFE08F40FFDE85
          2FFFE18B34FFE08A34FFE28B35FFE38D37FFD67A2AFFB1510EF3C66219FDEBB3
          7BFFEDB882FFECB781FFEDB781FFECB781FFEDB781FFEDB781FFECB680FFECB6
          7FFFECB67FFFEBB278FFF2D0ADFFF5D4B4FFEFBB87FFF0BF8DFFF1C392FFEBB4
          7DFFCD7128FE5225056ECD6619FDE8A562FFE9A966FFE9A965FFE9A966FFE9A9
          66FFEAA966FFE9A966FFE9A965FFE9A965FFEAA966FFE8A45DFFF0C598FFF6D5
          B0FFF1BD87FFF4C491FFEDB279FFD0732AFD5125046800000000D56A17FFDF85
          36FFDF8738FFDF8738FFDF8738FFDF8738FFDF8738FFDF8738FFDF8738FFDF87
          38FFDF8738FFDD802DFFE9AC74FFF6D0A3FFF3BD7CFFEDAD6CFFD87629FD5628
          066A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E59450FFF9CC
          95FFEFA95EFFDD7825FD4E26065C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000EB994FFFF3B671FFE17921FD4B240655000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EB882EFFE884
          2CFC4D2607550000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000E57519FA532A095A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A05111AE0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OptionsImage.Layout = blGlyphBottom
        OptionsImage.Spacing = 10
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton46Click
      end
      object cxGrid11: TcxGrid
        Left = 33
        Top = 143
        Width = 347
        Height = 535
        Align = alClient
        PopupMenu = pm_excel8_2
        TabOrder = 1
        OnResize = cxGrid11Resize
        LookAndFeel.NativeStyle = True
        object CustView10: TcxGridDBTableView
          OnKeyDown = CustView10KeyDown
          OnMouseDown = CustView10MouseDown
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
          OnCellDblClick = CustView10CellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = CustView10DataControllerSortingChanged
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
          OnColumnHeaderClick = CustView10ColumnHeaderClick
          object CustView10Column1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object CustView10Column2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
          object CustView10Column3: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 68
          end
          object CustView10Column4: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 72
          end
          object CustView10Column10: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object CustView10Column12: TcxGridDBColumn
            DataBinding.FieldName = #44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 35
          end
          object CustView10Column11: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object CustView10Column5: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#44553
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object CustView10Column6: TcxGridDBColumn
            DataBinding.FieldName = #51201#47549#47560#51068#47532#51648
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object CustView10Column7: TcxGridDBColumn
            DataBinding.FieldName = #52572#44540#51060#50857#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object CustView10Column8: TcxGridDBColumn
            DataBinding.FieldName = #46321#47197#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object CustView10Column9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = CustView10
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Alignment = alTopCenter
        Caption = #51068#48152' '#44256#44061#47532#49828#53944
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 141
        Width = 380
        object Shape8: TShape
          Left = 6
          Top = 17
          Width = 205
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 6
          Top = 44
          Width = 205
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 6
          Top = 71
          Width = 205
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 21
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
          AnchorX = 42
          AnchorY = 30
        end
        object cbGubun08: TcxComboBox
          Left = 78
          Top = 16
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #51068#48152
            #50629#49548
            #48277#51064)
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 26
          Width = 134
        end
        object cxLabel4: TcxLabel
          Left = 22
          Top = 48
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
          AnchorX = 45
          AnchorY = 57
        end
        object cxLabel5: TcxLabel
          Left = 22
          Top = 76
          Caption = #51204'      '#54868
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
          AnchorX = 45
          AnchorY = 85
        end
        object edCustName05: TcxTextEdit
          Left = 78
          Top = 43
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          OnKeyDown = edCustName05KeyDown
          Height = 26
          Width = 134
        end
        object edCustTel04: TcxTextEdit
          Left = 78
          Top = 70
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          OnKeyDown = edCustName05KeyDown
          Height = 26
          Width = 134
        end
        object cxButton44: TcxButton
          Left = 213
          Top = 16
          Width = 76
          Height = 79
          Cursor = crHandPoint
          Caption = #44160'     '#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton44Click
        end
        object cxButton59: TcxButton
          Left = 291
          Top = 16
          Width = 81
          Height = 79
          Cursor = crHandPoint
          Caption = #44256#44061#49325#51228
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton59Click
        end
        object cxLabel216: TcxLabel
          Left = 7
          Top = 108
          Caption = #8251' ['#44256#44061#49325#51228']'#49884' '#47560#51648#47561' '#49440#53469#46108' '#44256#44061#51060' '#49325#51228#46121#45768#45796'.'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorY = 116
        end
      end
    end
    object Panel15: TPanel
      Left = 303
      Top = 0
      Width = 370
      Height = 678
      Align = alLeft
      BevelOuter = bvNone
      Color = 16444898
      Constraints.MinWidth = 370
      TabOrder = 3
      object Shape7: TShape
        Left = 0
        Top = 141
        Width = 370
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 149
        ExplicitWidth = 290
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Alignment = alTopCenter
        Caption = #49548#49549#46108' '#44256#44061#47532#49828#53944
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        DesignSize = (
          370
          134)
        Height = 141
        Width = 370
        object Shape6: TShape
          Left = 4
          Top = 106
          Width = 307
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Pen.Color = 12566402
          ExplicitWidth = 227
        end
        object edBubinName02: TcxTextEdit
          Left = 3
          Top = 16
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Height = 24
          Width = 365
        end
        object btnAll: TcxButton
          Left = 77
          Top = 43
          Width = 72
          Height = 36
          Cursor = crHandPoint
          Caption = #51068#44292#46321#47197
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnAllClick
        end
        object cxButton40: TcxButton
          Left = 4
          Top = 43
          Width = 72
          Height = 36
          Cursor = crHandPoint
          Caption = #49888#44508
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton40Click
        end
        object cxButton41: TcxButton
          Left = 150
          Top = 43
          Width = 72
          Height = 36
          Cursor = crHandPoint
          Caption = #49688#51221
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton41Click
        end
        object cxButton42: TcxButton
          Left = 223
          Top = 43
          Width = 72
          Height = 36
          Cursor = crHandPoint
          Caption = #51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton42Click
        end
        object cxButton43: TcxButton
          Left = 296
          Top = 43
          Width = 71
          Height = 36
          Cursor = crHandPoint
          Caption = #51204#52404#51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = cxButton43Click
        end
        object btnResultSearch: TcxButton
          Left = 313
          Top = 106
          Width = 54
          Height = 24
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #51312#54924
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = btnResultSearchClick
        end
        object cbbResultSearch: TcxComboBox
          Left = 3
          Top = 105
          AutoSize = False
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #44256#44061#47749
            #44256#44061#48264#54840)
          Properties.OnChange = cbbBubInMngCustomResultSearchPropertiesChange
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Text = #51204#52404
          Height = 26
          Width = 82
        end
        object edtResultSearch: TcxTextEdit
          Left = 84
          Top = 105
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Enabled = False
          ImeMode = imSHanguel
          ParentFont = False
          Properties.ImeMode = imSHanguel
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Height = 26
          Width = 228
        end
        object lbl2: TcxLabel
          Left = 4
          Top = 81
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = #44208#44284#45236' '#44160#49353
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 13756393
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 363
          AnchorX = 186
          AnchorY = 93
        end
        object cxTextEdit15: TcxTextEdit
          Left = 307
          Top = 18
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Properties.ReadOnly = True
          TabOrder = 0
          Visible = False
          Width = 58
        end
      end
      object cxGridCustom: TcxGrid
        Left = 0
        Top = 143
        Width = 370
        Height = 535
        Align = alClient
        PopupMenu = pm_excel8_1
        TabOrder = 0
        Visible = False
        LookAndFeel.NativeStyle = True
        object cxViewCustom: TcxGridDBTableView
          OnKeyDown = CustView9KeyDown
          OnMouseDown = CustView9MouseDown
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
          OnCellDblClick = CustView9CellDblClick
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxViewCustomDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxViewCustomColumnHeaderClick
          object cxCol1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object cxCol2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxCol3: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object cxCol4: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxCol5: TcxGridDBColumn
            DataBinding.FieldName = #48512#49436#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxCol6: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxCol7: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object cxCol8: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxCol9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#44553
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxCol10: TcxGridDBColumn
            DataBinding.FieldName = #51201#47549#47560#51068#47532#51648
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object cxCol11: TcxGridDBColumn
            DataBinding.FieldName = #52572#44540#51060#50857#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object cxCol12: TcxGridDBColumn
            DataBinding.FieldName = #46321#47197#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxCol13: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxCol14: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxLevelCustom: TcxGridLevel
          GridView = cxViewCustom
        end
      end
      object cxGrid10: TcxGrid
        Left = 0
        Top = 143
        Width = 370
        Height = 535
        Align = alClient
        PopupMenu = pm_excel8_1
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        ExplicitLeft = 112
        ExplicitTop = 127
        object CustView9: TcxGridDBTableView
          OnKeyDown = CustView9KeyDown
          OnMouseDown = CustView9MouseDown
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
          OnCellDblClick = CustView9CellDblClick
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = CustView9DataControllerSortingChanged
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
          OnColumnHeaderClick = CustView9ColumnHeaderClick
          object CustView9Column1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object CustView9Column2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object CustView9Column3: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object CustView9Column4: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object CustView9Column5: TcxGridDBColumn
            DataBinding.FieldName = #48512#49436#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object CustView9Column6: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object CustView9Column7: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object CustView9Column8: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47700#47784
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object CustView9Column9: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#46321#44553
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object CustView9Column10: TcxGridDBColumn
            DataBinding.FieldName = #51201#47549#47560#51068#47532#51648
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object CustView9Column11: TcxGridDBColumn
            DataBinding.FieldName = #52572#44540#51060#50857#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object CustView9Column12: TcxGridDBColumn
            DataBinding.FieldName = #46321#47197#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object CustView9Column13: TcxGridDBColumn
            DataBinding.FieldName = #48277#51064#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object CustView9Column14: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = CustView9
        end
      end
    end
    object cxBrNo8: TcxTextEdit
      Left = 43
      Top = 300
      Style.Color = 15456255
      TabOrder = 0
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxHdNo8: TcxTextEdit
      Left = 103
      Top = 300
      Style.Color = 15456255
      TabOrder = 1
      Text = #48376#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxSplitter1: TcxSplitter
      Left = 298
      Top = 0
      Width = 5
      Height = 678
      NativeBackground = False
      Control = Panel14
      Color = 16241075
      ParentColor = False
    end
    object cxSplitter2: TcxSplitter
      Left = 673
      Top = 0
      Width = 5
      Height = 678
      NativeBackground = False
      Control = Panel15
      Color = 16241075
      ParentColor = False
    end
  end
  object pm_excel8_1: TPopupMenu
    AutoHotkeys = maManual
    Left = 340
    Top = 596
    object MenuItem10: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem10Click
    end
  end
  object pm_excel8_2: TPopupMenu
    AutoHotkeys = maManual
    Left = 748
    Top = 600
    object MenuItem7: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem7Click
    end
  end
  object cxStyleCustLevel: TcxStyleRepository
    Left = 920
    Top = 188
    PixelsPerInch = 96
    object stlCustLevelColor: TcxStyle
    end
  end
  object pop_imtrgrd1: TPopupMenu
    AutoHotkeys = maManual
    Left = 196
    Top = 368
    object N5: TMenuItem
      Caption = #49688#51221
      OnClick = N5Click
    end
    object MenuItem1: TMenuItem
      Caption = #52572#49345#50948#52628#44032
      OnClick = MenuItem1Click
    end
    object N4: TMenuItem
      Caption = #49440#53469#48277#51064#47749#51032' '#54616#50948#52628#44032
      OnClick = N4Click
    end
    object MenuItem6: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem06Click
    end
    object N8: TMenuItem
      Caption = #50641#49472#51200#51109'('#49345#49464')'
      OnClick = N8Click
    end
  end
end

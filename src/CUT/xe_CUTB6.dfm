object Frm_CUTB6: TFrm_CUTB6
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #48277#51064#50900#51221#49328
  ClientHeight = 687
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 687
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape5: TShape
      Left = 0
      Top = 102
      Width = 1093
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 104
      Width = 1093
      Height = 583
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      LookAndFeel.NativeStyle = True
      object cgrid_CalMonth: TcxGridDBTableView
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
        OnCellDblClick = cgrid_CalMonthCellDblClick
        DataController.DataModeController.SmartRefresh = True
        DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
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
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.CellAutoHeight = True
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cgrid_CalMonthColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 41
        end
        object cgrid_CalMonthColumn2: TcxGridDBColumn
          Tag = 1
          Caption = #49440#53469
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.GlyphCount = 0
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Moving = False
          Options.Sorting = False
          Width = 33
          OnHeaderClick = cgrid_CalMonthColumn2HeaderClick
        end
        object cgrid_CalMonthColumn3: TcxGridDBColumn
          Tag = 1
          DataBinding.FieldName = #47560#44048#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn4: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn5: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 158
        end
        object cgrid_CalMonthColumn6: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn7: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 160
        end
        object cgrid_CalMonthColumn8: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn9: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 179
        end
        object cgrid_CalMonthColumn10: TcxGridDBColumn
          DataBinding.FieldName = #51060#50857#54943#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn11: TcxGridDBColumn
          DataBinding.FieldName = #51060#50857#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn12: TcxGridDBColumn
          DataBinding.FieldName = #48512#44032#49464#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn13: TcxGridDBColumn
          DataBinding.FieldName = #52509#54633#44228
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 68
        end
        object cgrid_CalMonthColumn24: TcxGridDBColumn
          DataBinding.FieldName = #48512#44032#49464#51201#50857
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
        object cgrid_CalMonthColumn19: TcxGridDBColumn
          DataBinding.FieldName = #49892#51221#49328#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
        object cgrid_CalMonthColumn20: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn21: TcxGridDBColumn
          DataBinding.FieldName = #44208#51228#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn14: TcxGridDBColumn
          DataBinding.FieldName = #51077#44552#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 54
        end
        object cgrid_CalMonthColumn17: TcxGridDBColumn
          DataBinding.FieldName = #51077#44552#52376#47532#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 78
        end
        object cgrid_CalMonthColumn15: TcxGridDBColumn
          DataBinding.FieldName = #44228#49328#49436#48156#54665
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
        object cgrid_CalMonthColumn18: TcxGridDBColumn
          DataBinding.FieldName = #44228#49328#49436#52376#47532#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 90
        end
        object cgrid_CalMonthColumn16: TcxGridDBColumn
          DataBinding.FieldName = #45572#46973#44148#49688
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cgrid_CalMonthColumn22: TcxGridDBColumn
          DataBinding.FieldName = #51221#49328#44592#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cgrid_CalMonthColumn23: TcxGridDBColumn
          DataBinding.FieldName = #51221#49328#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cgrid_CalMonthColumn26: TcxGridDBColumn
          DataBinding.FieldName = 'E-mail'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 195
        end
        object cgrid_CalMonthColumn27: TcxGridDBColumn
          DataBinding.FieldName = #45812#45817#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 97
        end
        object cgrid_CalMonthColumn28: TcxGridDBColumn
          DataBinding.FieldName = #45812#45817#51088#50672#46973#52376
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 92
        end
        object cgrid_CalMonthColumn29: TcxGridDBColumn
          DataBinding.FieldName = #49324#50629#51088#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
      end
      object cxGrid11Level: TcxGridLevel
        GridView = cgrid_CalMonth
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
      TabOrder = 0
      Height = 102
      Width = 1093
      object Shape1: TShape
        Left = 9
        Top = 9
        Width = 221
        Height = 23
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 9
        Top = 37
        Width = 120
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 443
        Top = 37
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape10: TShape
        Left = 147
        Top = 37
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btBubinSttExcel: TcxButton
        Left = 741
        Top = 55
        Width = 105
        Height = 41
        Cursor = crHandPoint
        Caption = #50641#49472
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        OnClick = btBubinSttExcelClick
      end
      object btn_AllProc2: TcxButton
        Left = 852
        Top = 8
        Width = 105
        Height = 41
        Cursor = crHandPoint
        Caption = #51077#44552#51068#44292#52376#47532
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btn_AllProc1Click
      end
      object btBubinSttSearch: TcxButton
        Left = 741
        Top = 8
        Width = 105
        Height = 41
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = btBubinSttSearchClick
      end
      object btn_AllProc1: TcxButton
        Tag = 1
        Left = 852
        Top = 55
        Width = 105
        Height = 41
        Cursor = crHandPoint
        Caption = #44228#49328#49436#51068#44292#52376#47532
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btn_AllProc1Click
      end
      object cbBubinSttCondition: TcxComboBox
        Left = 485
        Top = 8
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #48277#51064#47749)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Text = #48277#51064#47749
        Height = 25
        Width = 79
      end
      object cbBubinSttKeyNumber: TcxComboBox
        Left = 376
        Top = 8
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Text = #51204#52404
        Height = 25
        Width = 110
      end
      object cxCheckBox1: TcxCheckBox
        Left = 668
        Top = 12
        Caption = #51204#52404
        TabOrder = 6
      end
      object cxdBubinSttSearch: TcxTextEdit
        Left = 564
        Top = 8
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 25
        Width = 107
      end
      object cxLabel14: TcxLabel
        Left = 463
        Top = 42
        Caption = #44228#49328#49436#48156#54665
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 495
        AnchorY = 50
      end
      object cxLabel33: TcxLabel
        Left = 173
        Top = 43
        Caption = #51221#49328#50668#48512
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 199
        AnchorY = 51
      end
      object cxLabel8: TcxLabel
        Left = 33
        Top = 43
        Caption = #51221#49328#50900
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 53
        AnchorY = 51
      end
      object lbBubinSttCaption: TcxLabel
        Left = 82
        Top = 8
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 25
        Width = 292
        AnchorX = 228
        AnchorY = 21
      end
      object Panel2: TPanel
        Left = 233
        Top = 37
        Width = 206
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 12
        object Shape16: TShape
          Left = 0
          Top = 0
          Width = 206
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = -1
        end
        object chkCalAll: TcxRadioButton
          Left = 6
          Top = 4
          Width = 48
          Height = 17
          Caption = #51204#52404
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = chkCalAllClick
          Transparent = True
        end
        object chkCalY: TcxRadioButton
          Left = 56
          Top = 4
          Width = 48
          Height = 17
          Caption = #51077#44552
          TabOrder = 1
          OnClick = chkCalAllClick
          Transparent = True
        end
        object chkCalN: TcxRadioButton
          Left = 106
          Top = 4
          Width = 66
          Height = 17
          Caption = #48120#51077#44552
          TabOrder = 2
          OnClick = chkCalAllClick
          Transparent = True
        end
      end
      object Panel3: TPanel
        Left = 529
        Top = 37
        Width = 206
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 13
        object Shape14: TShape
          Left = 0
          Top = 0
          Width = 206
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitTop = 1
          ExplicitHeight = 25
        end
        object chkBillAll: TcxRadioButton
          Left = 6
          Top = 4
          Width = 48
          Height = 17
          Caption = #51204#52404
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = chkBillAllClick
          Transparent = True
        end
        object chkBillY: TcxRadioButton
          Left = 56
          Top = 4
          Width = 51
          Height = 17
          Caption = #48156#54665
          TabOrder = 1
          OnClick = chkBillAllClick
          Transparent = True
        end
        object chkBillN: TcxRadioButton
          Left = 106
          Top = 3
          Width = 60
          Height = 17
          Caption = #48120#48156#54665
          TabOrder = 2
          OnClick = chkBillAllClick
          Transparent = True
        end
      end
      object chkBubinStt: TCheckBox
        Left = 31
        Top = 148
        Width = 49
        Height = 17
        Caption = #52404#53356
        TabOrder = 14
        Visible = False
      end
      object cxLabel54: TcxLabel
        Left = 22
        Top = 12
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
        AnchorX = 47
        AnchorY = 21
      end
      object cb_CalMonth: TcxComboBox
        Left = 82
        Top = 36
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '1'#50900
          '2'#50900
          '3'#50900
          '4'#50900
          '5'#50900
          '6'#50900
          '7'#50900
          '8'#50900
          '9'#50900
          '10'#50900
          '11'#50900
          '12'#50900)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 16
        Text = '1'#50900
        Height = 26
        Width = 61
      end
      object cxLabel216: TcxLabel
        Left = 9
        Top = 68
        Caption = #8251' '#44228#49328#49436' '#48156#54665#49884' '#51088#46041#51004#47196' '#47560#44048#52376#47532' '#46104#47728', '#44228#49328#49436#48156#54665#44284' '#46041#49884#50640' '#47560#44048#46108' '#50724#45908#45716' '#45908' '#51060#49345' '#49688#51221#54624' '#49688' '#50630#49845#45768#45796'.'
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
        AnchorY = 76
      end
      object cxLabel1: TcxLabel
        Left = 9
        Top = 82
        Caption = '    '#45800', '#49688#51221#51060' '#54596#50836#54620' '#50724#45908#44032' '#51080#51012' '#44221#50864' '#44228#49328#49436#39#48120#48156#54665#39#51004#47196' '#51204#54889' '#54980' '#49688#51221#54616#49884#47732' '#46121#45768#45796'.'
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
        AnchorY = 90
      end
      object lb_Year: TcxLabel
        Left = 9
        Top = 65
        Caption = 'lb_Year'
        Visible = False
      end
    end
    object pnl_BubinAccStatus: TPanel
      Left = 741
      Top = 98
      Width = 256
      Height = 102
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 1
      Visible = False
      DesignSize = (
        252
        98)
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '   '#51089#50629#51652#54665
        TabOrder = 0
        Height = 98
        Width = 252
        object Shape17: TShape
          Left = 7
          Top = 25
          Width = 106
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape18: TShape
          Left = 124
          Top = 25
          Width = 106
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Gauge1: TAdvProgressBar
          Left = 7
          Top = 57
          Width = 235
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Level0ColorTo = 14811105
          Level1ColorTo = 13303807
          Level2Color = 5483007
          Level2ColorTo = 11064319
          Level3ColorTo = 13290239
          Level1Perc = 70
          Level2Perc = 90
          Position = 0
          ShowBorder = True
          Version = '1.2.1.1'
        end
        object cxLabel2: TcxLabel
          Left = 13
          Top = 30
          Caption = #51204#52404#44148#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 39
          AnchorY = 38
        end
        object cxLabel3: TcxLabel
          Left = 133
          Top = 30
          Caption = #50756#47308#44148#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 159
          AnchorY = 38
        end
        object cxLabel4: TcxLabel
          Left = 73
          Top = 24
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 12189690
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 49
          AnchorX = 98
          AnchorY = 37
        end
        object cxLabel5: TcxLabel
          Left = 193
          Top = 24
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 65408
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 49
          AnchorX = 218
          AnchorY = 37
        end
      end
      object btnClose: TcxButton
        Left = 231
        Top = 1
        Width = 19
        Height = 20
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001511
          93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
          BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
          FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
          F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
          EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
          F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
          BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
          CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
          D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
          BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
          FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
          F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
          F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
          FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
          F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
          F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
          F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
          F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
          F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
          FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
          F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
          FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
          F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
          EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
          EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
          F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
          F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
          F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
          F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
          F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
          B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
          E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = btnCloseClick
      end
    end
    object cxBrNo10: TcxTextEdit
      Left = 862
      Top = 320
      Style.Color = 15456255
      TabOrder = 2
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxHdNo10: TcxTextEdit
      Left = 915
      Top = 320
      Style.Color = 15456255
      TabOrder = 3
      Text = #48376#49324#53076#46300
      Visible = False
      Width = 54
    end
    object pnl_UseList: TPanel
      Left = 216
      Top = 207
      Width = 834
      Height = 371
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object pnl_UseListTitle: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Caption = #51060#50857#45236#50669' '#47532#49828#53944'('#51060#50857#54943#49688')'
        Color = 16756576
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnMouseDown = pnl_UseListTitleMouseDown
        DesignSize = (
          834
          26)
        object cxButton2: TcxButton
          Left = 812
          Top = 3
          Width = 19
          Height = 20
          Cursor = crHandPoint
          Hint = #45803#44592
          Anchors = [akTop, akRight]
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000001511
            93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
            BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
            FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
            F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
            EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
            F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
            BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
            CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
            D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
            BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
            FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
            F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
            F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
            FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
            F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
            F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
            F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
            F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
            F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
            FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
            F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
            FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
            F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
            EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
            EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
            F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
            F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
            F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
            F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
            F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
            B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
            E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = cxButton2Click
        end
        object btBubinSttListExcel: TcxButton
          Tag = 1
          Left = 705
          Top = 4
          Width = 105
          Height = 21
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btBubinSttExcelClick
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 26
        Width = 834
        Height = 345
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cgrid_UseList: TcxGridDBTableView
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
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Column = cxGridDBColumn14
            end
            item
              Column = cxGridDBColumn16
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Editing = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          object cgrid_UseListColumn1: TcxGridDBColumn
            Caption = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 28
          end
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #51060#50857#51068#51088
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 113
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 92
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 63
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #50724#45908#49345#53468
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 106
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 66
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 139
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = #44256#44061#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 83
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = #52636#48156#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 193
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = #46020#52265#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 180
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #44221#50976#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 54
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = #45824#44592#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 54
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = #50756#47308#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 70
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = #44144#47532
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.0;-,0.0'
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 30
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = #51217#49688#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 54
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 66
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = #49892#51648#44553#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            VisibleForEditForm = bTrue
            Width = 54
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = #48372#51221#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            Width = 54
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = #44592#48376#50836#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            Width = 54
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cgrid_UseList
        end
      end
    end
    object pnl_CalCampInfo: TPanel
      Left = 127
      Top = 148
      Width = 440
      Height = 406
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object pnl_Title: TPanel
        Left = 0
        Top = 0
        Width = 440
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Caption = #50900' '#51221#49328' '#49345#49464' '#49688#51221
        Color = 16756576
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnMouseDown = pnl_TitleMouseDown
        DesignSize = (
          440
          26)
        object cxButton1: TcxButton
          Left = 418
          Top = 3
          Width = 19
          Height = 20
          Cursor = crHandPoint
          Hint = #45803#44592
          Anchors = [akTop, akRight]
          Colors.Default = 16635384
          Colors.Normal = 16773362
          Colors.Hot = 16360076
          Colors.Pressed = 16644080
          Colors.Disabled = 4227327
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000001511
            93B91C17C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13
            BEF41A13BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2D
            FBFF2423EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722
            F4FF2925FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272B
            EFFF1312B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2D
            F4FF0E0DCAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100E
            BBFF918ED3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0D
            CEFF3835B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24
            D7FF433DC3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934
            BEFFEEEDF9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384F
            FAFF161ED4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2
            F6FFFFFFFFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364F
            F3FF3950F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFF
            FFFFD4D3F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55
            F3FF334BEFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCB
            F4FF2120CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82
            F7FF556AF2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCB
            F4FF201DD2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388
            F7FF788CF6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFF
            FFFFDCDAF8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891
            F7FF6779F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DE
            FAFFFFFFFFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82
            F3FF5E59EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57
            EBFFC5C1F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5C
            EFFF928BF3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775
            F2FF5551EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91
            F6FF5A57F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94
            F6FF6D7FF4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1
            F7FF7C94F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97
            F6FF819CF6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055
            B1B96970E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676E
            E9F4666DE9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = cxButton1Click
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 8
        Top = 30
        Caption = ' '#50629#52404#51221#48372
        TabOrder = 1
        Height = 72
        Width = 425
        object Shape4: TShape
          Left = 12
          Top = 22
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape23: TShape
          Left = 97
          Top = 22
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape24: TShape
          Left = 208
          Top = 22
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape25: TShape
          Left = 293
          Top = 22
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape26: TShape
          Left = 410
          Top = 44
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object Shape27: TShape
          Left = 495
          Top = 44
          Width = 307
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object Shape28: TShape
          Left = 410
          Top = 66
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object Shape29: TShape
          Left = 495
          Top = 66
          Width = 307
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
        end
        object Shape32: TShape
          Left = 12
          Top = 44
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape34: TShape
          Left = 208
          Top = 44
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape35: TShape
          Left = 293
          Top = 44
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel6: TcxLabel
          Left = 14
          Top = 24
          AutoSize = False
          Caption = #44228#49328#49436#45812#45817#51088
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 90
          AnchorY = 33
        end
        object lb_CamInfo1: TcxLabel
          Left = 97
          Top = 24
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 152
          AnchorY = 33
        end
        object cxLabel7: TcxLabel
          Left = 208
          Top = 24
          AutoSize = False
          Caption = #45812#45817#51088#50672#46973#52376
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 78
          AnchorX = 286
          AnchorY = 33
        end
        object lb_CamInfo2: TcxLabel
          Left = 293
          Top = 24
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 348
          AnchorY = 33
        end
        object cxLabel21: TcxLabel
          Left = 410
          Top = 46
          AutoSize = False
          Caption = #47700'      '#47784
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          Height = 17
          Width = 78
          AnchorX = 488
          AnchorY = 55
        end
        object lb_CamInfo3: TcxLabel
          Left = 495
          Top = 46
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          Height = 17
          Width = 307
          AnchorY = 55
        end
        object cxLabel24: TcxLabel
          Left = 410
          Top = 68
          AutoSize = False
          Caption = #51452'      '#49548
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          Height = 17
          Width = 78
          AnchorX = 488
          AnchorY = 77
        end
        object lb_CamInfo4: TcxLabel
          Left = 495
          Top = 68
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Visible = False
          Height = 17
          Width = 307
          AnchorY = 77
        end
        object cxLabel28: TcxLabel
          Left = 14
          Top = 46
          AutoSize = False
          Caption = #44228#49328#49436'e-mail'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 90
          AnchorY = 55
        end
        object cxLabel30: TcxLabel
          Left = 208
          Top = 46
          AutoSize = False
          Caption = #49324#50629#51088#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 78
          AnchorX = 286
          AnchorY = 55
        end
        object lb_CamInfo6: TcxLabel
          Left = 293
          Top = 47
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 348
          AnchorY = 56
        end
        object edt_RowNum: TcxTextEdit
          Left = 176
          Top = -2
          AutoSize = False
          ImeMode = imSHanguel
          Properties.Alignment.Vert = taBottomJustify
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Visible = False
          Height = 22
          Width = 48
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 8
        Top = 104
        Caption = ' '#44208#51228#51221#48372
        TabOrder = 2
        Height = 75
        Width = 425
        object Shape3: TShape
          Left = 12
          Top = 22
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape6: TShape
          Left = 97
          Top = 22
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 208
          Top = 22
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 293
          Top = 22
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape19: TShape
          Left = 12
          Top = 44
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape20: TShape
          Left = 97
          Top = 44
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel10: TcxLabel
          Left = 15
          Top = 23
          AutoSize = False
          Caption = #44208#51228#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 91
          AnchorY = 32
        end
        object lb_CalInfo1: TcxLabel
          Left = 97
          Top = 24
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 152
          AnchorY = 33
        end
        object cxLabel12: TcxLabel
          Left = 208
          Top = 24
          AutoSize = False
          Caption = #51221#49328#44592#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 78
          AnchorX = 286
          AnchorY = 33
        end
        object lb_CalInfo2: TcxLabel
          Left = 293
          Top = 24
          AutoSize = False
          Caption = '1'#51068
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 348
          AnchorY = 33
        end
        object cxLabel20: TcxLabel
          Left = 14
          Top = 46
          AutoSize = False
          Caption = #51221#49328#49884#48512#44032#49464
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 90
          AnchorY = 55
        end
        object lb_CalInfo3: TcxLabel
          Left = 97
          Top = 46
          AutoSize = False
          Caption = #48512#44032#49464#48120#54252#54632
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 152
          AnchorY = 55
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 8
        Top = 181
        Caption = ' '#44208#51228#51221#48372
        TabOrder = 3
        Height = 75
        Width = 425
        object Shape11: TShape
          Left = 12
          Top = 22
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 97
          Top = 22
          Width = 122
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape21: TShape
          Left = 12
          Top = 44
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape22: TShape
          Left = 97
          Top = 44
          Width = 122
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel15: TcxLabel
          Left = 14
          Top = 24
          AutoSize = False
          Caption = #51077#44552#50668#48512
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 90
          AnchorY = 33
        end
        object cxLabel26: TcxLabel
          Left = 14
          Top = 46
          AutoSize = False
          Caption = #44228#49328#49436#48156#54665
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 90
          AnchorY = 55
        end
        object Panel5: TPanel
          Left = 99
          Top = 23
          Width = 118
          Height = 19
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object rb_DepositY: TcxRadioButton
            Left = 4
            Top = 1
            Width = 44
            Height = 17
            Caption = #51077#44552
            TabOrder = 0
            OnClick = rb_DepositYClick
            Transparent = True
          end
          object rb_DepositN: TcxRadioButton
            Left = 54
            Top = 1
            Width = 55
            Height = 17
            Caption = #48120#51077#44552
            TabOrder = 1
            OnClick = rb_DepositYClick
            Transparent = True
          end
        end
        object Panel6: TPanel
          Left = 98
          Top = 46
          Width = 118
          Height = 17
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object rb_BillY: TcxRadioButton
            Left = 5
            Top = 0
            Width = 44
            Height = 17
            Caption = #48156#54665
            TabOrder = 0
            OnClick = rb_BillYClick
            Transparent = True
          end
          object rb_BillN: TcxRadioButton
            Left = 56
            Top = 0
            Width = 60
            Height = 17
            Caption = #48120#48156#54665
            TabOrder = 1
            OnClick = rb_BillYClick
            Transparent = True
          end
        end
        object cxLabel17: TcxLabel
          Left = 220
          Top = 24
          AutoSize = False
          Caption = #51077#44552#52376#47532#51068#51088' : '
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 102
          AnchorX = 322
          AnchorY = 33
        end
        object lbDepositDate: TcxLabel
          Left = 319
          Top = 24
          AutoSize = False
          Caption = #48512#44032#49464#48120#54252#54632
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 95
          AnchorY = 33
        end
        object cxLabel18: TcxLabel
          Left = 220
          Top = 47
          AutoSize = False
          Caption = #44228#49328#49436#52376#47532#51068#51088' : '
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 102
          AnchorX = 322
          AnchorY = 56
        end
        object lbBillDate: TcxLabel
          Left = 319
          Top = 47
          AutoSize = False
          Caption = #48512#44032#49464#48120#54252#54632
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 95
          AnchorY = 56
        end
      end
      object btn_InfoSave: TcxButton
        Left = 314
        Top = 263
        Width = 58
        Height = 49
        Cursor = crHandPoint
        Caption = #51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btn_InfoSaveClick
      end
      object btn_Close: TcxButton
        Left = 375
        Top = 263
        Width = 58
        Height = 49
        Cursor = crHandPoint
        Caption = #45803#44592
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btn_CloseClick
      end
      object edtBubinCode: TcxTextEdit
        Left = 231
        Top = 27
        AutoSize = False
        ImeMode = imSHanguel
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Visible = False
        Height = 22
        Width = 48
      end
      object cxLabel9: TcxLabel
        Left = 8
        Top = 259
        AutoSize = False
        Caption = '* '#51221#49328#47560#44048' '#54980#50640#45716' '#47784#46304' '#49345#53468#51032' '#49688#51221#51060' '#48520#44032#54633#45768#45796'.'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 17
        Width = 273
        AnchorY = 268
      end
      object cxLabel11: TcxLabel
        Left = 16
        Top = 275
        AutoSize = False
        Caption = '+ '#48120#51077#44552' '#49345#53468#50640#49436#45716' '#51221#49328#47560#44048#51060' '#46104#51648' '#50506#49845#45768#45796
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 17
        Width = 257
        AnchorY = 284
      end
      object cxLabel13: TcxLabel
        Left = 16
        Top = 292
        AutoSize = False
        Caption = '+ '#44228#49328#49436' '#48120#48156#54665' '#49345#53468#50640#49436#45716' '#51221#49328#47560#44048#51060' '#46104#51648' '#50506#49845#45768#45796'.'
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 17
        Width = 298
        AnchorY = 301
      end
      object edt_FinishCnt: TcxTextEdit
        Left = 277
        Top = 27
        AutoSize = False
        ImeMode = imSHanguel
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Visible = False
        Height = 22
        Width = 48
      end
      object edt_FinishTCharge: TcxTextEdit
        Left = 323
        Top = 27
        AutoSize = False
        ImeMode = imSHanguel
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Visible = False
        Height = 22
        Width = 48
      end
      object edt_OrderCnt: TcxTextEdit
        Left = 369
        Top = 27
        AutoSize = False
        ImeMode = imSHanguel
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Visible = False
        Height = 22
        Width = 48
      end
      object cxGroupBox6: TcxGroupBox
        Left = 8
        Top = 316
        Alignment = alTopCenter
        Caption = #52852#46300#44208#51228'/'#54788#44552#50689#49688#51613' '#52376#47532
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 79
        Width = 425
        object Shape37: TShape
          Left = 9
          Top = 19
          Width = 88
          Height = 21
          Pen.Color = clSilver
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 9
          Top = 46
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape15: TShape
          Left = 94
          Top = 46
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape30: TShape
          Left = 211
          Top = 46
          Width = 165
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape31: TShape
          Left = 296
          Top = 46
          Width = 110
          Height = 21
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object btn_CashBill: TcxButton
          Left = 311
          Top = 18
          Width = 94
          Height = 23
          Cursor = crHandPoint
          Caption = #54788#44552#50689#49688#51613
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btn_CashBillClick
        end
        object btn_Card: TcxButton
          Left = 211
          Top = 18
          Width = 98
          Height = 22
          Cursor = crHandPoint
          Caption = #52852#46300#49849#51064
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btn_CardClick
        end
        object cxLabel23: TcxLabel
          Left = 35
          Top = 22
          Caption = #51221#49328#44552#50529
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 61
          AnchorY = 30
        end
        object edt_CalMoney: TcxCurrencyEdit
          Left = 93
          Top = 18
          AutoSize = False
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '###,##0;-,###,##0'
          Properties.Nullable = False
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Height = 24
          Width = 111
        end
        object cxLabel16: TcxLabel
          Left = 11
          Top = 48
          AutoSize = False
          Caption = #44208#51228#44396#48516
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 87
          AnchorY = 57
        end
        object lb_CalInfo4: TcxLabel
          Left = 94
          Top = 48
          AutoSize = False
          Caption = #52852#46300'/'#54788#44552
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 149
          AnchorY = 57
        end
        object cxLabel19: TcxLabel
          Left = 213
          Top = 48
          AutoSize = False
          Caption = #49849#51064#48264#54840
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 76
          AnchorX = 289
          AnchorY = 57
        end
        object lb_CalInfo5: TcxLabel
          Left = 296
          Top = 48
          AutoSize = False
          Caption = #52852#46300'/'#54788#44552
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 17
          Width = 110
          AnchorX = 351
          AnchorY = 57
        end
      end
      object edt_CamInfo5: TcxTextEdit
        Left = 104
        Top = 75
        AutoSize = False
        ImeMode = imSHanguel
        Properties.Alignment.Vert = taBottomJustify
        Properties.ImeMode = imSHanguel
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Height = 23
        Width = 111
      end
    end
  end
  object CheckBox1: TCheckBox
    Left = 33
    Top = 88
    Width = 49
    Height = 17
    Caption = #52404#53356
    TabOrder = 1
    Visible = False
  end
end

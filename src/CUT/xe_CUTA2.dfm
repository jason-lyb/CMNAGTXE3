object Frm_CUTA2: TFrm_CUTA2
  Left = 602
  Top = 193
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
    ParentColor = True
    TabOrder = 0
    object Shape15: TShape
      Left = 0
      Top = 279
      Width = 1003
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 281
      Width = 1003
      Height = 435
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      PopupMenu = pm_excel8_1
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object CustView2: TcxGridDBTableView
        OnKeyDown = CustView2KeyDown
        OnKeyUp = CustView2KeyUp
        OnMouseDown = CustView2MouseDown
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
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = CustView2DataControllerSortingChanged
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
        OnColumnHeaderClick = CustView1ColumnHeaderClick
        object CustView2Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 48
        end
        object CustView2Column22: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object CustView2Column2: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 90
        end
        object CustView2Column3: TcxGridDBColumn
          DataBinding.FieldName = #44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 52
        end
        object CustView2Column4: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 85
        end
        object CustView2Column5: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 88
        end
        object CustView2Column6: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308'/'#52712#49548
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object CustView2Column7: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 42
        end
        object CustView2Column8: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
        object CustView2Column9: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object CustView2Column10: TcxGridDBColumn
          DataBinding.FieldName = #49884'/'#46020
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 48
        end
        object CustView2Column11: TcxGridDBColumn
          DataBinding.FieldName = #44396'/'#44400
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
        object CustView2Column12: TcxGridDBColumn
          DataBinding.FieldName = #46321#44553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 62
        end
        object CustView2Column13: TcxGridDBColumn
          DataBinding.FieldName = #52572#44540#51060#50857#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 66
        end
        object CustView2Column14: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column15: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column16: TcxGridDBColumn
          DataBinding.FieldName = #44592#53440
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 57
        end
        object CustView2Column17: TcxGridDBColumn
          DataBinding.FieldName = #46321#47197#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column18: TcxGridDBColumn
          DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 77
        end
        object CustView2Column19: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364'+'#44256#44061
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column20: TcxGridDBColumn
          DataBinding.FieldName = #44160#49353#44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column21: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
        end
        object CustView2Column23: TcxGridDBColumn
          DataBinding.FieldName = #47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object CustView2Column24: TcxGridDBColumn
          DataBinding.FieldName = #50500#50883#48148#50868#46300#49345#53468
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = CustView2
      end
    end
    object cxGrdCuList: TcxGrid
      Left = 414
      Top = 349
      Width = 279
      Height = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      LookAndFeel.NativeStyle = True
      object sg_notsms_list: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ColumnHeaderHints = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Appending = True
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.ScrollBars = ssVertical
        OptionsView.DataRowHeight = 16
        OptionsView.GridLineColor = 16635384
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 16
        OptionsView.Indicator = True
        object cxGrdCol1: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGrdCol2: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
        end
        object cxGrdCol3: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840'+'#44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.GroupFooters = False
          Options.Grouping = False
          Options.Moving = False
          Width = 99
        end
      end
      object cxGrdCuListLevel1: TcxGridLevel
        GridView = sg_notsms_list
      end
    end
    object lb_Status: TListBox
      Left = 348
      Top = 348
      Width = 65
      Height = 201
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 12
      Items.Strings = (
        #51217#49688
        #48176#52264
        #50756#47308
        #44053#51228
        #47928#51032
        #45824#44592
        #45824#44592#54644#51228
        #48176#52264#52712#49548
        #52712#49548
        #50724#45908#49688#51221
        #51116#51217#49688
        #50696#50557
        'LOCK'
        'UNLOCK'
        #51217#49688#45824#44592)
      TabOrder = 2
      Visible = False
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
      TabOrder = 3
      Height = 279
      Width = 1003
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 445
        Height = 24
        Pen.Color = 12566402
      end
      object lbCustCompany02: TcxLabel
        Left = 83
        Top = 4
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clBlack
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 406
        AnchorX = 286
        AnchorY = 17
      end
      object cxLabel271: TcxLabel
        Left = 25
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
        AnchorX = 50
        AnchorY = 18
      end
      object cxGroupBox2: TcxGroupBox
        Left = 10
        Top = 32
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 167
        Width = 372
        object Shape3: TShape
          Left = 5
          Top = 31
          Width = 201
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 5
          Top = 57
          Width = 201
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 5
          Top = 83
          Width = 201
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape14: TShape
          Left = 4
          Top = 137
          Width = 363
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape16: TShape
          Left = 5
          Top = 109
          Width = 146
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object rg_SType: TPanel
          Tag = 1
          Left = 5
          Top = 5
          Width = 201
          Height = 24
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 0
            Top = 0
            Width = 201
            Height = 24
            Align = alClient
            Pen.Color = 12566402
            Shape = stRoundRect
            ExplicitHeight = 27
          end
          object rbAll01: TcxRadioButton
            Left = 5
            Top = 4
            Width = 47
            Height = 17
            Caption = #51204#52404
            TabOrder = 0
            OnClick = rbAll01Click
            Transparent = True
          end
          object rbNew01: TcxRadioButton
            Tag = 1
            Left = 53
            Top = 4
            Width = 72
            Height = 17
            Caption = #49888#44508#46321#47197
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = rbAll01Click
            Transparent = True
          end
          object rbUseList01: TcxRadioButton
            Tag = 2
            Left = 127
            Top = 4
            Width = 70
            Height = 17
            Caption = #51060#50857#45236#50669
            TabOrder = 2
            OnClick = rbAll01Click
            Transparent = True
          end
        end
        object cxLabel1: TcxLabel
          Left = 15
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
          AnchorX = 41
          AnchorY = 43
        end
        object cbKeynumber02: TcxComboBox
          Left = 74
          Top = 30
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber02PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Text = #51204#52404
          Height = 26
          Width = 133
        end
        object cxLabel2: TcxLabel
          Left = 18
          Top = 60
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
          AnchorX = 41
          AnchorY = 69
        end
        object cxLabel3: TcxLabel
          Left = 15
          Top = 87
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
          AnchorX = 41
          AnchorY = 96
        end
        object edCustName02: TcxTextEdit
          Left = 74
          Top = 56
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 133
        end
        object cb_s_CGubun: TcxComboBox
          Left = 74
          Top = 82
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404
            #51068#48152
            #50629#49548
            #48277#51064)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Text = #51204#52404
          Height = 26
          Width = 133
        end
        object GroupBox4: TcxGroupBox
          Left = 212
          Top = 5
          Caption = #44592#44036#45236#50724#45908#49345#53468
          Style.BorderStyle = ebsFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Height = 128
          Width = 155
          object rrb_st_all: TcxRadioButton
            Left = 8
            Top = 18
            Width = 47
            Height = 17
            Caption = #51204#52404
            Checked = True
            TabOrder = 0
            TabStop = True
            Transparent = True
          end
          object rrb_st_comp: TcxRadioButton
            Left = 8
            Top = 44
            Width = 100
            Height = 17
            Caption = #50756#47308'(1'#54924#51060#49345')'
            TabOrder = 1
            Transparent = True
          end
          object rrb_st_cancel: TcxRadioButton
            Left = 8
            Top = 71
            Width = 84
            Height = 17
            Caption = #52712#49548'(100%)'
            TabOrder = 2
            Transparent = True
          end
          object rrb_st_req: TcxRadioButton
            Left = 8
            Top = 97
            Width = 83
            Height = 17
            Caption = #47928#51032'(100%)'
            TabOrder = 3
            Transparent = True
          end
        end
        object chk_Before: TcxCheckBox
          Left = 5
          Top = 140
          Caption = #51204#51068#51060#50857#44256#44061
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
          OnClick = chk_BeforeClick
        end
        object RbCheckBox9: TcxCheckBox
          Left = 102
          Top = 140
          Caption = #51204#51068#50756#47308#44256#44061
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Transparent = True
          OnClick = RbCheckBox9Click
        end
        object chk_Before_New: TcxCheckBox
          Left = 199
          Top = 140
          Caption = #51204#51068#49888#44508#44256#44061
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Transparent = True
          OnClick = chk_Before_NewClick
        end
        object lbCount02: TcxLabel
          Left = 321
          Top = 141
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 365
        end
        object cxLabel13: TcxLabel
          Left = 19
          Top = 113
          Caption = #50500#50883#48148#50868#46300#49345#53468
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
          AnchorX = 63
          AnchorY = 122
        end
        object cbOutBound: TcxComboBox
          Left = 118
          Top = 108
          Hint = #51204#52404
          AutoSize = False
          ParentShowHint = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 16
          Properties.Items.Strings = (
            #51204#52404
            #46041#51032
            #44144#48512
            #47928#51088)
          ShowHint = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 13
          Text = #51204#52404
          Height = 26
          Width = 88
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 385
        Top = 32
        Style.BorderStyle = ebsFlat
        TabOrder = 3
        Height = 137
        Width = 353
        object Shape6: TShape
          Left = 5
          Top = 5
          Width = 317
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 5
          Top = 31
          Width = 171
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape8: TShape
          Left = 5
          Top = 57
          Width = 171
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape9: TShape
          Left = 5
          Top = 83
          Width = 171
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape10: TShape
          Left = 178
          Top = 32
          Width = 170
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape11: TShape
          Left = 178
          Top = 83
          Width = 170
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape12: TShape
          Left = 178
          Top = 58
          Width = 170
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape13: TShape
          Left = 5
          Top = 109
          Width = 343
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel4: TcxLabel
          Left = 13
          Top = 9
          Caption = #44592'      '#44036
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
          AnchorX = 36
          AnchorY = 18
        end
        object cxButton52: TcxButton
          Left = 323
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
          TabOrder = 1
          OnMouseDown = RbButton1MouseDown
        end
        object cxDate05: TcxDateEdit
          Left = 69
          Top = 4
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Vert = taBottomJustify
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
          TabOrder = 2
          Height = 26
          Width = 84
        end
        object cxDate06: TcxDateEdit
          Left = 201
          Top = 4
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          ParentShowHint = False
          Properties.Alignment.Vert = taBottomJustify
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
          TabOrder = 3
          Height = 26
          Width = 84
        end
        object cxLabel60: TcxLabel
          Left = 153
          Top = 11
          Caption = '09:00 ~'
          Transparent = True
        end
        object cxLabel61: TcxLabel
          Left = 285
          Top = 11
          Caption = '09:00'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 21
          Top = 34
          Caption = 'SMS'
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
          AnchorX = 33
          AnchorY = 43
        end
        object cxLabel6: TcxLabel
          Left = 11
          Top = 60
          Caption = #51204#54868#48264#54840
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
          AnchorX = 37
          AnchorY = 69
        end
        object cxLabel7: TcxLabel
          Left = 9
          Top = 86
          Caption = #47700#47784'('#49345#45812')'
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
          AnchorX = 39
          AnchorY = 95
        end
        object cb_Sms_Gubun: TcxComboBox
          Left = 71
          Top = 30
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SMS'#51204#52404
            #49688'    '#49888
            #44144'    '#48512)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Text = 'SMS'#51204#52404
          Height = 26
          Width = 106
        end
        object edCustMemo01: TcxTextEdit
          Left = 71
          Top = 82
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 10
          Height = 26
          Width = 106
        end
        object edCustTel02: TcxTextEdit
          Left = 71
          Top = 56
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 26
          Width = 106
        end
        object cxLabel8: TcxLabel
          Left = 188
          Top = 86
          Caption = #46321'   '#44553
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
          AnchorX = 207
          AnchorY = 95
        end
        object cxLabel9: TcxLabel
          Left = 182
          Top = 61
          Caption = #52712#49548#54943#49688
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
          AnchorX = 208
          AnchorY = 70
        end
        object cxLabel10: TcxLabel
          Left = 182
          Top = 35
          Caption = #50756#47308#54943#49688
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
          AnchorX = 208
          AnchorY = 44
        end
        object cb_S_Cnt1: TcxTextEdit
          Left = 246
          Top = 31
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Properties.OnChange = cb_S_Cnt1PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 15
          Height = 26
          Width = 40
        end
        object cb_S_CCnt1: TcxTextEdit
          Left = 246
          Top = 57
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 16
          Height = 26
          Width = 40
        end
        object cb_S_Grad: TcxComboBox
          Left = 246
          Top = 82
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 16
          Properties.Items.Strings = (
            #51204#52404
            'VIP'
            #52572#50864#49688
            #50864#49688
            #51068#48152
            #51452#51032
            #48520#47049)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 17
          Text = #51204#52404
          OnClick = cb_S_GradClick
          Height = 26
          Width = 103
        end
        object cxLabel54: TcxLabel
          Left = 291
          Top = 61
          Caption = '~'
          Transparent = True
        end
        object cxLabel53: TcxLabel
          Left = 291
          Top = 37
          Caption = '~'
          Transparent = True
        end
        object cb_S_Cnt2: TcxTextEdit
          Left = 306
          Top = 31
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 20
          Height = 26
          Width = 43
        end
        object cb_S_CCnt2: TcxTextEdit
          Left = 306
          Top = 57
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 21
          Height = 26
          Width = 43
        end
        object cxLabel11: TcxLabel
          Left = 9
          Top = 113
          Caption = #52636#48156#51648'  '#49884'/'#46020
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
          AnchorX = 46
          AnchorY = 122
        end
        object cb_st_city: TcxComboBox
          Left = 84
          Top = 108
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SMS'#51204#52404
            #49688'    '#49888
            #48120#49688#49888)
          Properties.OnChange = cb_st_cityPropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 23
          Height = 26
          Width = 92
        end
        object cxLabel12: TcxLabel
          Left = 179
          Top = 113
          Caption = #44396'/'#44400
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
          AnchorX = 195
          AnchorY = 122
        end
        object cb_st_ward: TcxComboBox
          Left = 213
          Top = 108
          AutoSize = False
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SMS'#51204#52404
            #49688'    '#49888
            #48120#49688#49888)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 25
          Height = 26
          Width = 136
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 839
        Top = 32
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 137
        Width = 136
        object cxButton12: TcxButton
          Left = 9
          Top = 85
          Width = 117
          Height = 49
          Cursor = crHandPoint
          Caption = #49440#53469#54924#50896' '#13#10#44305#44256'SMS(11.9'#50896')'
          Colors.Normal = 12189690
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = cxButton12Click
        end
        object chk_All_Select: TcxCheckBox
          Left = 11
          Top = 9
          Caption = #51204#52404#49440#53469
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Transparent = True
          OnClick = chk_All_SelectClick
        end
        object chkCust02Type04: TcxCheckBox
          Left = 11
          Top = 59
          Caption = #44160#49353#52628#44032
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Transparent = True
        end
        object chkNmlPhoneOut02: TcxCheckBox
          Left = 11
          Top = 34
          Caption = #51068#48152#51204#54868#51228#50808
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Transparent = True
        end
      end
      object btnNmlCustDel: TcxButton
        Left = 740
        Top = 78
        Width = 92
        Height = 45
        Cursor = crHandPoint
        Caption = #44256#44061#49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btnNmlCustDelClick
      end
      object cxButton10: TcxButton
        Left = 740
        Top = 32
        Width = 92
        Height = 45
        Cursor = crHandPoint
        Caption = #44160'      '#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = cxButton10Click
      end
      object cxButton13: TcxButton
        Left = 740
        Top = 124
        Width = 92
        Height = 45
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 7
        OnClick = cxButton13Click
      end
      object cxButton11: TcxButton
        Left = 492
        Top = 5
        Width = 204
        Height = 24
        Cursor = crHandPoint
        Caption = #49440#53469#51648#49324' '#49688#49888#44144#48512' '#44256#44061' PC'#50640' '#45796#50868
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 8
        OnClick = cxButton11Click
      end
      object cxLabel210: TcxLabel
        Left = 698
        Top = 10
        Caption = '( '#54596#50836#49884' '#47784#46304' '#51648#49324#50640' '#45824#54644' '#48152#48373#54616#50668' '#53364#47533#54616#49464#50836' )'
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = 16441805
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorY = 18
      end
      object cxGroupBox5: TcxGroupBox
        Left = 10
        Top = 201
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 74
        Width = 965
        object cxLabel39: TcxLabel
          Left = 5
          Top = 2
          AutoSize = False
          Caption = 
            #8251' '#51020#50689' '#54364#49884' '#51460#51060' '#39#49440#53469#39#46108' '#51460#51077#45768#45796'. ('#47560#50864#49828' '#46300#47000#44536'('#45132#44592')'#49440#53469#44032#45733'/CTRL'#65291#47560#50864#49828#53364#47533#49884' '#48373#49688#49440#53469#44032#45733')'#13#10#8251' S' +
            'MS'#52880#49772' '#52264#44048#51008' '#45824#54364#48264#54840#44032' '#49548#49549#46108' '#51648#49324#50640#49436' '#52264#44048#46121#45768#45796'.('#51204#49569#49884#54869#51064#50836#47581')'#13#10#8251' ('#45824#54805#50629#52404'-'#44256#44061' 5'#47564#47749#51060#49345') ['#51060#50857#45236#50669 +
            '] '#44160#49353#49884' '#45712#47140#51648#47732' '#50500#47000#50752' '#44057#51060' '#51060#50857#13#10'    1. '#51648#49324#48324#47196' ['#49688#49888#44144#48512' '#44256#44061' '#45796#50868#47196#46300']'#47484' '#53364#47533#54616#50668' '#51088#46041#51004#47196' '#49688#49888#44144#48512 +
            #46104#46020#47197' '#54632#13#10'    2. SMS'#47484' ['#51204#52404']'#47196' '#45459#44256' ['#44160#49353']'#54616#50668' '#51204#49569
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 70
          Width = 576
          AnchorY = 37
        end
      end
    end
    object cxBrNo1: TcxTextEdit
      Left = 845
      Top = 279
      Style.Color = 15456255
      TabOrder = 4
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxHdNo1: TcxTextEdit
      Left = 900
      Top = 279
      Style.Color = 15456255
      TabOrder = 5
      Text = #48376#49324#53076#46300
      Visible = False
      Width = 54
    end
    object pnl_Excel_OPT: TPanel
      Left = 14
      Top = 472
      Width = 249
      Height = 112
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 6
      Visible = False
      object cxGroupBox7: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '   '#50641#49472#52636#47141#50741#49496
        ParentBackground = False
        ParentColor = False
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 108
        Width = 245
        object btnAll1: TcxButton
          Left = 6
          Top = 74
          Width = 117
          Height = 23
          Cursor = crHandPoint
          Caption = #54869'  '#51064
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          OnClick = btnAll1Click
        end
        object btnAll2: TcxButton
          Left = 124
          Top = 74
          Width = 117
          Height = 23
          Cursor = crHandPoint
          Caption = #52712#49548
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          OnClick = btnAll2Click
        end
        object RdExcel1: TcxRadioButton
          Tag = 1
          Left = 28
          Top = 24
          Width = 180
          Height = 17
          Caption = #50641#49472#49436#49885#50976#51648'('#48320#54872#49549#46020#45712#47548')'
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object RdExcel2: TcxRadioButton
          Tag = 1
          Left = 28
          Top = 49
          Width = 180
          Height = 17
          Caption = #50641#49472#49436#49885#50630#51020'('#48320#54872#49549#46020#48736#47492')'
          Checked = True
          TabOrder = 3
          TabStop = True
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
      end
    end
  end
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 708
    Top = 68
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
    Left = 92
    Top = 396
    object MenuItem10: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem10Click
    end
  end
  object cxStyleCustLevel: TcxStyleRepository
    Left = 920
    Top = 532
    PixelsPerInch = 96
    object stlCustLevelColor: TcxStyle
    end
  end
end

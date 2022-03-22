object Frm_CUTA6: TFrm_CUTA6
  Left = 602
  Top = 193
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 678
  ClientWidth = 1001
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
    Width = 1001
    Height = 678
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Shape15: TShape
      Left = 0
      Top = 167
      Width = 1001
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGrid5: TcxGrid
      Left = 0
      Top = 169
      Width = 1001
      Height = 509
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object CustView5: TcxGridDBTableView
        OnKeyDown = CustView5KeyDown
        OnKeyUp = CustView1KeyUp
        OnMouseDown = CustView5MouseDown
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
        DataController.OnSortingChanged = CustView5DataControllerSortingChanged
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
        OnColumnHeaderClick = CustView5ColumnHeaderClick
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object cxGridDBColumn15: TcxGridDBColumn
          DataBinding.FieldName = #45824#54364#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxGridDBColumn16: TcxGridDBColumn
          DataBinding.FieldName = #44396#48516
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object cxGridDBColumn17: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object cxGridDBColumn18: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object cxGridDBColumn19: TcxGridDBColumn
          DataBinding.FieldName = #46321#44553
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object cxGridDBColumn20: TcxGridDBColumn
          DataBinding.FieldName = #50756#47308'/'#52712#49548
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGridDBColumn21: TcxGridDBColumn
          DataBinding.FieldName = #52712#49548#50984
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object cxGridDBColumn22: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object cxGridDBColumn23: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#51221#48372
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxGridDBColumn26: TcxGridDBColumn
          DataBinding.FieldName = #52572#51333#51060#50857#51068
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object cxGridDBColumn27: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBColumn28: TcxGridDBColumn
          DataBinding.FieldName = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object CustView5Column1: TcxGridDBColumn
          DataBinding.FieldName = 'SMS'#49688#49888#44144#48512
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object CustView5Column2: TcxGridDBColumn
          DataBinding.FieldName = #47560#51068#47532#51648
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = CustView5
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
      Height = 167
      Width = 1001
      object Shape1: TShape
        Left = 6
        Top = 5
        Width = 513
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object lbCustCompany01: TcxLabel
        Left = 79
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
        Width = 887
        AnchorX = 523
        AnchorY = 17
      end
      object cxLabel54: TcxLabel
        Left = 21
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
        AnchorX = 46
        AnchorY = 18
      end
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 126
        Width = 332
        object Shape3: TShape
          Left = 7
          Top = 10
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 7
          Top = 37
          Width = 244
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 7
          Top = 64
          Width = 124
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape7: TShape
          Left = 8
          Top = 92
          Width = 314
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 19
          Top = 14
          Caption = #45824#54364' '#48264#54840
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
          AnchorY = 23
        end
        object cxLabel2: TcxLabel
          Left = 19
          Top = 41
          Caption = #44396#48516'/'#46321#44553
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
          AnchorY = 50
        end
        object cxLabel3: TcxLabel
          Left = 23
          Top = 68
          Caption = 'SMS'#49688#49888
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
          AnchorY = 77
        end
        object cbGubun05: TcxComboBox
          Left = 81
          Top = 36
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
          TabOrder = 3
          Text = #51204#52404
          OnClick = cbGubun05Click
          Height = 26
          Width = 112
        end
        object cbKeynumber05: TcxComboBox
          Left = 81
          Top = 9
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber05PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Text = #51204#52404
          Height = 26
          Width = 241
        end
        object cbLevel04: TcxComboBox
          Left = 192
          Top = 36
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
          TabOrder = 5
          Text = #51204#52404
          Height = 26
          Width = 130
        end
        object cbSmsUse05: TcxComboBox
          Left = 81
          Top = 63
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
          TabOrder = 6
          Text = #49688'    '#49888
          Height = 26
          Width = 241
        end
        object chkCust05Type02: TcxCheckBox
          Left = 27
          Top = 95
          Caption = #48277#51064#44256#44061#51228#50808
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Transparent = True
        end
        object chkNmlPhoneOut05: TcxCheckBox
          Left = 137
          Top = 94
          Caption = #51068#48152#51204#54868#51228#50808
          Style.HotTrack = True
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
        end
        object lbCount05: TcxLabel
          Left = 270
          Top = 96
          Caption = #52509' 00'#47749
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 314
        end
      end
      object TcxGroupBox
        Left = 342
        Top = 35
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 126
        Width = 395
        object rbCust05Type01: TcxRadioButton
          Left = 7
          Top = 7
          Width = 85
          Height = 17
          Caption = #52572#51333#51060#50857#51068
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbCust05Type01Click
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object cxDate13: TcxDateEdit
          Left = 94
          Top = 5
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
          TabOrder = 1
          Height = 20
          Width = 86
        end
        object cxLabel88: TcxLabel
          Left = 182
          Top = 6
          Caption = #51068' '#51060#54980' '#51060#50857#54616#51648' '#50506#51008' '#44256#44061
        end
        object cxButton22: TcxButton
          Left = 94
          Top = 26
          Width = 35
          Height = 21
          Cursor = crHandPoint
          Caption = '15'
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          OnClick = cxButton22Click
        end
        object cxButton23: TcxButton
          Left = 134
          Top = 26
          Width = 35
          Height = 21
          Cursor = crHandPoint
          Caption = '30'
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          OnClick = cxButton22Click
        end
        object cxButton24: TcxButton
          Left = 174
          Top = 26
          Width = 35
          Height = 21
          Cursor = crHandPoint
          Caption = '60'
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = cxButton22Click
        end
        object cxButton25: TcxButton
          Left = 214
          Top = 26
          Width = 35
          Height = 21
          Cursor = crHandPoint
          Caption = '90'
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = cxButton22Click
        end
        object cxButton26: TcxButton
          Left = 254
          Top = 26
          Width = 35
          Height = 21
          Cursor = crHandPoint
          Caption = '120'
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = cxButton22Click
        end
        object chkCust05Type01: TcxCheckBox
          Left = 7
          Top = 50
          Caption = #54620#48264#46020' '#51060#50857#54616#51648' '#50506#51008' '#44256#44061' '#54252#54632' '#50696') '#49688#46020'/DB '#46321#47197' '#54980' '#48120#49324#50857' '#44256#44061
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Transparent = True
        end
        object rbCust05Type02: TcxRadioButton
          Left = 7
          Top = 75
          Width = 191
          Height = 17
          Caption = #44592#44036#45236' '#51060#50857#54616#51648' '#50506#51008' '#44256#44061
          TabOrder = 9
          OnClick = rbCust05Type02Click
          LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object cxDate14: TcxDateEdit
          Left = 182
          Top = 72
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
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
          TabOrder = 10
          Height = 20
          Width = 86
        end
        object cxDate15: TcxDateEdit
          Left = 285
          Top = 72
          AutoSize = False
          BeepOnEnter = False
          EditValue = 0d
          Enabled = False
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
          TabOrder = 11
          Height = 20
          Width = 86
        end
        object cxLabel91: TcxLabel
          Left = 271
          Top = 73
          Caption = '~'
          Transparent = True
        end
        object cxLabel229: TcxLabel
          Left = 8
          Top = 100
          Caption = #8251' '#44592#48376' '#44160#49353' '#45824#49345#51008' '#52572#44540' 6'#44060#50900' '#51060#45236' '#44256#44061' '#51077#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.TextColor = clRed
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorY = 108
        end
      end
      object cxButton15: TcxButton
        Left = 741
        Top = 34
        Width = 110
        Height = 46
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = cxButton15Click
      end
      object cxButton16: TcxButton
        Left = 741
        Top = 81
        Width = 110
        Height = 37
        Cursor = crHandPoint
        Caption = #50641#49472#51200#51109
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = cxButton16Click
      end
      object cxButton17: TcxButton
        Left = 853
        Top = 81
        Width = 110
        Height = 37
        Cursor = crHandPoint
        Caption = #49440#53469#54924#50896' '#13#10#44305#44256'SMS(11.9'#50896')'
        Colors.Normal = 12189690
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 6
        OnClick = cxButton17Click
      end
      object btnHighCustDel: TcxButton
        Left = 853
        Top = 34
        Width = 110
        Height = 46
        Cursor = crHandPoint
        Caption = #44256#44061#49325#51228
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 7
        OnClick = btnHighCustDelClick
      end
      object chkCust05Type03: TcxCheckBox
        Left = 743
        Top = 119
        Caption = #44160#49353#52628#44032
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Transparent = True
      end
      object chkRestSubscribe: TcxCheckBox
        Left = 743
        Top = 140
        Caption = #44305#44256#49688#49888#44144#48512#51228#44144
        ParentFont = False
        State = cbsChecked
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Transparent = True
      end
      object chk1: TcxCheckBox
        Left = 860
        Top = 119
        Caption = #51204'      '#52404
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Transparent = True
        OnClick = chk1Click
      end
    end
  end
  object pnl_Excel_OPT: TPanel
    Left = 8
    Top = 392
    Width = 249
    Height = 112
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 16444898
    TabOrder = 0
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
      OnMouseMove = cxGroupBox7MouseMove
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
  object cxBrNo: TcxTextEdit
    Left = 853
    Top = 252
    Style.Color = 15456255
    TabOrder = 2
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxHdNo: TcxTextEdit
    Left = 913
    Top = 252
    Style.Color = 15456255
    TabOrder = 3
    Text = #48376#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxStyleCustLevel: TcxStyleRepository
    Left = 40
    Top = 612
    PixelsPerInch = 96
    object stlCustLevelColor: TcxStyle
    end
  end
  object pmCustMgr: TPopupMenu
    AutoHotkeys = maManual
    Left = 752
    Top = 516
    object mniN9: TMenuItem
      Caption = #44256#44061#54633#52824#44592
    end
    object mniN10: TMenuItem
      Caption = '-'
    end
    object mniN8: TMenuItem
      Caption = #50641#49472#51200#51109
    end
  end
  object pmDetail: TPopupMenu
    AutoHotkeys = maManual
    Left = 600
    Top = 564
    object mniDetailCustLevel: TMenuItem
      Caption = #49440#53469#44256#44061#46321#44553#48320#44221
    end
    object MenuItem19: TMenuItem
      Caption = #50641#49472#51200#51109
    end
  end
end

object Frm_CUTA5: TFrm_CUTA5
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
      Top = 206
      Width = 1001
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
      Height = 206
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
        Caption = '  '#44256#44061' '#51312#54924
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Height = 64
        Width = 960
        object Shape3: TShape
          Left = 7
          Top = 24
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape4: TShape
          Left = 199
          Top = 24
          Width = 123
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 444
          Top = 24
          Width = 124
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 28
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
          AnchorX = 44
          AnchorY = 37
        end
        object cxLabel2: TcxLabel
          Left = 202
          Top = 28
          Caption = #44256#44061#51204#54868#48264#54840
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
          AnchorX = 240
          AnchorY = 37
        end
        object cxLabel3: TcxLabel
          Left = 449
          Top = 28
          Caption = #46244'4'#51088#47532#44160#49353
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
          AnchorX = 484
          AnchorY = 37
        end
        object cbKeynumber11: TcxComboBox
          Left = 77
          Top = 23
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cbKeynumber11PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Text = #51204#52404
          Height = 26
          Width = 118
        end
        object cxTextEdit18: TcxTextEdit
          Left = 280
          Top = 23
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 26
          Width = 109
        end
        object cxTextEdit19: TcxTextEdit
          Left = 520
          Top = 23
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Height = 26
          Width = 61
        end
        object cxButton63: TcxButton
          Left = 389
          Top = 24
          Width = 50
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = cxButton63Click
        end
        object cxButton64: TcxButton
          Left = 584
          Top = 24
          Width = 50
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = cxButton64Click
        end
        object cxButton69: TcxButton
          Left = 754
          Top = 15
          Width = 100
          Height = 38
          Cursor = crHandPoint
          Caption = #50504#49900#48264#54840#44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 8
          OnClick = cxButton69Click
        end
        object cxButton65: TcxButton
          Left = 856
          Top = 15
          Width = 100
          Height = 38
          Cursor = crHandPoint
          Caption = #50641#49472#51200#51109
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 9
          OnClick = cxButton65Click
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 6
        Top = 101
        Caption = '  '#44256#44061' '#51452#52264' '#50504#49900#48264#54840' '#54624#45817'/'#54644#51228
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 100
        Width = 960
        object pnl4: TPanel
          Left = 3
          Top = 14
          Width = 261
          Height = 76
          Align = alLeft
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 0
          object cxGridBrOrder: TcxGrid
            Left = 0
            Top = 0
            Width = 261
            Height = 76
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = True
            object cxVirtureList: TcxGridDBTableView
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
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0;-,0'
                  Kind = skSum
                end
                item
                  Format = ',0.;-,0.'
                  Kind = skSum
                  DisplayText = '999'
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
              OptionsCustomize.ColumnSorting = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.MultiSelect = True
              OptionsView.FocusRect = False
              OptionsView.NoDataToDisplayInfoText = '  '
              OptionsView.CellAutoHeight = True
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              object CustView1ViewNoticeListVirtureColumn1: TcxGridDBColumn
                Tag = 1
                Caption = #49440#53469
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ReadOnly = False
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Width = 33
              end
              object CustView1ViewNoticeListVirtureColumn3: TcxGridDBColumn
                Tag = 1
                DataBinding.FieldName = #44256#44061#46321#47197#48264#54840
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 90
              end
              object CustView1VirtureListColumn1: TcxGridDBColumn
                DataBinding.FieldName = #50504#49900#48264#54840
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 90
              end
            end
            object cxGrid19: TcxGridLevel
              GridView = cxVirtureList
            end
          end
        end
        object pnl2: TPanel
          Left = 264
          Top = 14
          Width = 693
          Height = 76
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object Shape2: TShape
            Left = 4
            Top = 0
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape6: TShape
            Left = 4
            Top = 26
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape7: TShape
            Left = 4
            Top = 52
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape8: TShape
            Left = 223
            Top = 0
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape9: TShape
            Left = 223
            Top = 26
            Width = 123
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel242: TcxLabel
            Left = 15
            Top = 5
            Caption = #44256'    '#44061'    '#47749
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 51
            AnchorY = 13
          end
          object cxLabel243: TcxLabel
            Left = 101
            Top = -1
            AutoSize = False
            Caption = #44256#44061#47749
            Enabled = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 110
            AnchorX = 156
            AnchorY = 12
          end
          object cxLabel244: TcxLabel
            Left = 242
            Top = 4
            Caption = #51060#50857#54943#49688
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 268
            AnchorY = 12
          end
          object cxLabel245: TcxLabel
            Left = 311
            Top = -1
            AutoSize = False
            Caption = #51060#50857#54943#49688
            Enabled = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 117
            AnchorX = 370
            AnchorY = 12
          end
          object cxLabel246: TcxLabel
            Left = 13
            Top = 29
            Caption = #52572#51333#51060#50857#51068#51088
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 51
            AnchorY = 37
          end
          object cxLabel247: TcxLabel
            Left = 101
            Top = 25
            AutoSize = False
            Caption = #51060#50857#54943#49688
            Enabled = False
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 110
            AnchorX = 156
            AnchorY = 38
          end
          object cxLabel248: TcxLabel
            Left = 13
            Top = 53
            Caption = #47700'            '#47784
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 51
            AnchorY = 61
          end
          object cxTextEdit20: TcxTextEdit
            Left = 101
            Top = 51
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
            Width = 588
          end
          object cxLabel249: TcxLabel
            Left = 242
            Top = 29
            Caption = #50504#49900#48264#54840
            ParentColor = False
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 268
            AnchorY = 37
          end
          object cxLabel250: TcxLabel
            Left = 311
            Top = 25
            AutoSize = False
            Caption = #50504#49900#48264#54840
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsSingle
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.TextColor = clBlack
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Height = 26
            Width = 117
            AnchorX = 370
            AnchorY = 38
          end
          object cxButton66: TcxButton
            Left = 469
            Top = 3
            Width = 72
            Height = 45
            Cursor = crHandPoint
            Caption = #46321#47197
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 10
            OnClick = cxButton66Click
          end
          object cxButton67: TcxButton
            Left = 617
            Top = 3
            Width = 72
            Height = 45
            Cursor = crHandPoint
            Caption = #47700#47784#49688#51221
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 11
            OnClick = cxButton67Click
          end
          object cxButton68: TcxButton
            Left = 543
            Top = 3
            Width = 72
            Height = 45
            Cursor = crHandPoint
            Caption = #54644#51228
            Colors.Normal = 16773362
            Colors.Pressed = 16644080
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 12
            OnClick = cxButton68Click
          end
          object pnl5: TPanel
            Left = 3
            Top = 0
            Width = 457
            Height = 76
            BevelKind = bkFlat
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 13
            Visible = False
            object cxLabel252: TcxLabel
              Left = 6
              Top = 4
              Caption = #49548#49549' '#49440#53469#51648#49324'(B111.['#52572']'#49552#44032#46973#48156#44032#46973' - 15880005)'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = 16441805
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorY = 12
            end
            object cxLabel253: TcxLabel
              Left = 6
              Top = 25
              Caption = #47532#49828#53944' '#49440#53469#44256#44061'(A111.['#52572']'#49552#44032#46973#48156#44032#46973' - 15880005)'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = 16441805
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorY = 33
            end
            object cxLabel254: TcxLabel
              Left = 6
              Top = 46
              Caption = #49436#47196' '#51068#52824#54616#51648' '#50506#51004#48064#47196' '#51221#48372#54364#44592#47484' '#54624' '#49688' '#50630#49845#45768#45796'.'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = 16441805
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = #44404#47548
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.TextColor = 16744448
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorY = 54
            end
          end
        end
      end
      object cxLabel240: TcxLabel
        Left = 739
        Top = 11
        AutoSize = False
        Enabled = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 15076287
        Style.BorderStyle = ebsSingle
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Visible = False
        Height = 18
        Width = 49
        AnchorX = 764
        AnchorY = 20
      end
      object cxLabel251: TcxLabel
        Left = 794
        Top = 11
        AutoSize = False
        Enabled = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 15076287
        Style.BorderStyle = ebsSingle
        Style.Color = clWindow
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Visible = False
        Height = 18
        Width = 39
        AnchorX = 814
        AnchorY = 20
      end
    end
    object cxGrid14: TcxGrid
      Left = 0
      Top = 208
      Width = 1001
      Height = 470
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
        OnKeyUp = CustView1KeyUp
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
        OnCellClick = cxGridDBTableView1CellClick
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxGridDBTableView1DataControllerSortingChanged
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OnColumnHeaderClick = cxGridDBTableView1ColumnHeaderClick
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #50504#49900#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = #51060#50857#54943#49688
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = #52572#51333#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 237
        end
        object cxGridDBColumn8: TcxGridDBColumn
          DataBinding.FieldName = #47700#47784
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 235
        end
        object CustView1GridDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'cuseq'
          Visible = False
        end
        object CustView1GridDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = '4num'
          Visible = False
        end
        object CustView1GridDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324#53076#46300
          Visible = False
        end
        object CustView1GridDBTableView1Column4: TcxGridDBColumn
          DataBinding.FieldName = '4Phone'
          Visible = False
        end
      end
      object cxGridLevel7: TcxGridLevel
        GridView = cxGridDBTableView1
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
      Style.BorderStyle = ebsNone
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
    Left = 904
    Top = 252
    Style.Color = 15456255
    TabOrder = 2
    Text = #51648#49324#53076#46300
    Visible = False
    Width = 54
  end
  object cxHdNo: TcxTextEdit
    Left = 957
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

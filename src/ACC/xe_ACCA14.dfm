object Frm_ACCA14: TFrm_ACCA14
  Left = 722
  Top = 103
  BorderStyle = bsNone
  Caption = 'ACC'
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1003
    Height = 716
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 710
    ClientRectLeft = 2
    ClientRectRight = 997
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = #44592#44036#44160#49353
      ImageIndex = 0
      object PnlMain: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel18: TPanel
          Left = 0
          Top = 0
          Width = 995
          Height = 683
          Align = alClient
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 0
          object Shape6: TShape
            Left = 0
            Top = 63
            Width = 995
            Height = 2
            Align = alTop
            Brush.Style = bsClear
            Pen.Style = psClear
            ExplicitLeft = -6
            ExplicitTop = 23
            ExplicitWidth = 305
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
            TabOrder = 0
            Height = 63
            Width = 995
            object Shape2: TShape
              Left = 6
              Top = 7
              Width = 267
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape1: TShape
              Left = 6
              Top = 33
              Width = 376
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel218: TcxLabel
              Left = 18
              Top = 11
              Caption = #49548'     '#49549
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 19
            end
            object lblSosokNameA14: TcxLabel
              Left = 83
              Top = 6
              AutoSize = False
              Caption = #49548#49549
              ParentColor = False
              Style.BorderStyle = ebsSingle
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 321
              AnchorX = 244
              AnchorY = 19
            end
            object cxDtStartA14: TcxDateEdit
              Left = 83
              Top = 32
              AutoSize = False
              BeepOnEnter = False
              EditValue = 0d
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
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
              Width = 87
            end
            object cxLabel264: TcxLabel
              Left = 223
              Top = 37
              AutoSize = False
              Caption = '~'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 16441805
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              Height = 17
              Width = 12
              AnchorX = 229
              AnchorY = 46
            end
            object cxDtEndA14: TcxDateEdit
              Left = 241
              Top = 32
              AutoSize = False
              BeepOnEnter = False
              EditValue = 0d
              ParentShowHint = False
              Properties.Alignment.Horz = taCenter
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
              TabOrder = 4
              Height = 26
              Width = 87
            end
            object btnSearchA14: TcxButton
              Left = 828
              Top = 7
              Width = 78
              Height = 50
              Cursor = crHandPoint
              Caption = #44160#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 5
              OnClick = btnSearchA14Click
            end
            object btnExcelA14: TcxButton
              Left = 907
              Top = 7
              Width = 78
              Height = 50
              Cursor = crHandPoint
              Caption = #50641#49472
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 6
              OnClick = btnExcelA14Click
            end
            object btnDateA14: TcxButton
              Left = 376
              Top = 33
              Width = 28
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
              TabOrder = 7
              OnMouseDown = btnDateA14MouseDown
            end
            object cxLabel1: TcxLabel
              Left = 18
              Top = 37
              Caption = #44592'     '#44036
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 45
            end
            object cxTeStartA14: TcxTimeEdit
              Left = 169
              Top = 32
              AutoSize = False
              EditValue = 0.375d
              Properties.TimeFormat = tfHourMin
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 9
              Height = 26
              Width = 51
            end
            object cxTeEndA14: TcxTimeEdit
              Left = 324
              Top = 32
              AutoSize = False
              EditValue = 0.375d
              Properties.TimeFormat = tfHourMin
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 10
              Height = 26
              Width = 51
            end
            object cxLabel108: TcxLabel
              Left = 453
              Top = 30
              Caption = #8251' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 13483435
              Style.TextColor = clBlue
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 38
            end
          end
          object cxGridA14: TcxGrid
            Left = 0
            Top = 65
            Width = 995
            Height = 618
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = True
            object cxGridA14View: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridA14ViewCellDblClick
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.OnSortingChanged = cxGridA14ViewDataControllerSortingChanged
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
              object cxGridDBColumn37: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 40
              end
              object cxGridDBColumn38: TcxGridDBColumn
                DataBinding.FieldName = #48376#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Width = 100
              end
              object cxGridDBColumn39: TcxGridDBColumn
                DataBinding.FieldName = #48376#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn40: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#53076#46300
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn41: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#47749
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn42: TcxGridDBColumn
                DataBinding.FieldName = #44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
            end
            object cxGridA14Level: TcxGridLevel
              GridView = cxGridA14View
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #50900#48324#44160#49353
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 995
        Height = 683
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 995
          Height = 683
          Align = alClient
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 0
          object Shape3: TShape
            Left = 0
            Top = 63
            Width = 995
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
            ParentBackground = False
            ParentColor = False
            Style.BorderStyle = ebsFlat
            Style.Color = clBtnFace
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 63
            Width = 995
            object Shape4: TShape
              Left = 6
              Top = 7
              Width = 267
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object Shape5: TShape
              Left = 6
              Top = 33
              Width = 181
              Height = 24
              Pen.Color = 12566402
              Shape = stRoundRect
            end
            object cxLabel2: TcxLabel
              Left = 18
              Top = 11
              Caption = #49548'     '#49549
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 19
            end
            object lblSosokNameA141: TcxLabel
              Left = 83
              Top = 6
              AutoSize = False
              Caption = #49548#49549
              ParentColor = False
              Style.BorderStyle = ebsSingle
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Height = 26
              Width = 321
              AnchorX = 244
              AnchorY = 19
            end
            object btnSearchA141: TcxButton
              Left = 828
              Top = 7
              Width = 78
              Height = 50
              Cursor = crHandPoint
              Caption = #44160#49353
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 2
              OnClick = btnSearchA141Click
            end
            object btnExcelA141: TcxButton
              Left = 907
              Top = 7
              Width = 78
              Height = 50
              Cursor = crHandPoint
              Caption = #50641#49472
              Colors.Normal = 16773362
              Colors.Pressed = 16644080
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              OptionsImage.Layout = blGlyphBottom
              TabOrder = 3
              OnClick = btnExcelA141Click
            end
            object cxLabel5: TcxLabel
              Left = 16
              Top = 37
              Caption = #51312#54924#45380#50900
              ParentColor = False
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ShadowedColor = clGray
              Transparent = True
              AnchorX = 42
              AnchorY = 45
            end
            object cxSEMonth: TcxSpinEdit
              Left = 149
              Top = 32
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              Properties.CanEdit = False
              Properties.MaxValue = 12.000000000000000000
              Properties.MinValue = 1.000000000000000000
              Properties.ReadOnly = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Value = 12
              Height = 26
              Width = 40
            end
            object cxSEYear: TcxSpinEdit
              Left = 83
              Top = 32
              AutoSize = False
              Properties.Alignment.Horz = taRightJustify
              Properties.CanEdit = False
              Properties.MaxValue = 3000.000000000000000000
              Properties.MinValue = 2000.000000000000000000
              Properties.ReadOnly = False
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.Color = 11796479
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 6
              Value = 2008
              Height = 26
              Width = 60
            end
            object cxLabel3: TcxLabel
              Left = 453
              Top = 30
              Caption = #8251' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'
              ParentColor = False
              Style.BorderStyle = ebsNone
              Style.Color = 13483435
              Style.TextColor = clBlue
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              AnchorY = 38
            end
          end
          object cxGridA141: TcxGrid
            Left = 0
            Top = 65
            Width = 995
            Height = 618
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = True
            object cxGridA141View: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxGridA141ViewCellDblClick
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
              OptionsSelection.CellSelect = False
              OptionsView.NoDataToDisplayInfoText = ' '
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OnColumnHeaderClick = cxGridA14ViewColumnHeaderClick
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'No'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Sorting = False
                Width = 40
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = #48376#49324#51221#48372
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Width = 100
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = #51648#49324#51221#48372
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = #53084#45824#54665#49444#51221#44552#50529
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Filtering = False
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = #51077#44552#51648#49324
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Vert = taVCenter
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = #44148#49688
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                FooterAlignmentHorz = taRightJustify
                HeaderAlignmentHorz = taCenter
                Options.Moving = False
                Options.Sorting = False
                Width = 100
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = #50868#54665#50836#44552#54633#44228
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Width = 95
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = #51077#44552'/'#52264#44048#54633#44228
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0;-,0'
                HeaderAlignmentHorz = taCenter
                Width = 116
              end
            end
            object cxGridA141Level: TcxGridLevel
              GridView = cxGridA141View
            end
          end
        end
      end
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

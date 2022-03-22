object Frm_ACCA9: TFrm_ACCA9
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
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1003
    Height = 716
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel18: TPanel
      Left = 0
      Top = 0
      Width = 1003
      Height = 716
      Align = alClient
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 0
      object Shape6: TShape
        Left = 0
        Top = 185
        Width = 1003
        Height = 2
        Align = alTop
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitLeft = -6
        ExplicitTop = 23
        ExplicitWidth = 305
      end
      object cxGBA9: TcxGroupBox
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
        ExplicitTop = -4
        DesignSize = (
          1003
          185)
        Height = 185
        Width = 1003
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
          Top = 156
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
        object lblSosokNameA9: TcxLabel
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
          Width = 534
          AnchorX = 350
          AnchorY = 19
        end
        object cxDtStartA9: TcxDateEdit
          Left = 83
          Top = 155
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
          Top = 160
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
          AnchorY = 169
        end
        object cxDtEndA9: TcxDateEdit
          Left = 238
          Top = 155
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
        object btnSearchA9: TcxButton
          Left = 410
          Top = 156
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #44160#49353
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = btnSearchA9Click
        end
        object btnExcelA9: TcxButton
          Left = 489
          Top = 156
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Caption = #50641#49472
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = btnExcelA9Click
        end
        object btnDateA9: TcxButton
          Left = 376
          Top = 156
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
          OnMouseDown = btnDateA9MouseDown
        end
        object cxLabel1: TcxLabel
          Left = 18
          Top = 160
          Caption = #44592'     '#44036
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 168
        end
        object cxTeStartA9: TcxTimeEdit
          Left = 169
          Top = 155
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
        object cxTeEndA9: TcxTimeEdit
          Left = 324
          Top = 155
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
        object cxGroupBox1: TcxGroupBox
          Left = 6
          Top = 35
          Anchors = [akLeft, akTop, akRight]
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 11
          Height = 117
          Width = 989
          object Shape3: TShape
            Left = 12
            Top = 8
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape4: TShape
            Left = 12
            Top = 34
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape5: TShape
            Left = 12
            Top = 60
            Width = 485
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object Shape7: TShape
            Left = 12
            Top = 86
            Width = 247
            Height = 24
            Pen.Color = 12566402
            Shape = stRoundRect
          end
          object cxLabel82: TcxLabel
            Left = 281
            Top = 11
            Caption = ' '#51648#49324#52880#49772
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 309
            AnchorY = 19
          end
          object cxLblBrCashA9: TcxLabel
            Left = 351
            Top = 7
            AutoSize = False
            Caption = ' '#51648#49324#52880#49772
            ParentColor = False
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 108
            AnchorX = 459
            AnchorY = 20
          end
          object cxLabel84: TcxLabel
            Left = 23
            Top = 12
            Caption = 'SMS'#52880#49772
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 51
            AnchorY = 20
          end
          object cxLblSMCashA9: TcxLabel
            Left = 87
            Top = 7
            AutoSize = False
            Caption = ' '#51648#49324#52880#49772
            ParentColor = False
            Style.BorderStyle = ebsOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            Height = 26
            Width = 108
            AnchorX = 195
            AnchorY = 20
          end
          object cxLabel86: TcxLabel
            Left = 460
            Top = 12
            Caption = '('#50896')'
            Transparent = True
          end
          object cxLabel87: TcxLabel
            Left = 196
            Top = 12
            Caption = '('#50896')'
            Transparent = True
          end
          object EdtChargeCashA9: TcxCurrencyEdit
            Left = 145
            Top = 85
            AutoSize = False
            EditValue = 0
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            Properties.Nullstring = '0'
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.Color = 11796479
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Height = 26
            Width = 115
          end
          object cxLabel89: TcxLabel
            Left = 34
            Top = 91
            Caption = 'SMS '#52649#51204#52880#49772
            ParentColor = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            AnchorX = 80
            AnchorY = 99
          end
          object cxLabel90: TcxLabel
            Left = 262
            Top = 92
            Caption = '('#50896')'
            Transparent = True
          end
          object BtnChargeA9: TcxButton
            Left = 297
            Top = 86
            Width = 104
            Height = 24
            Cursor = crHandPoint
            Caption = #52649#51204
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 9
            TabStop = False
            OnClick = BtnChargeA9Click
          end
          object cxLabel80: TcxLabel
            Left = 19
            Top = 38
            Caption = #51068#48152' SMS'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 49
            AnchorY = 46
          end
          object cxLabel91: TcxLabel
            Left = 19
            Top = 65
            Caption = #44305#44256' SMS'
            ParentColor = False
            Style.TextColor = clBlack
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorX = 49
            AnchorY = 73
          end
          object cxLblSMCnt1A9: TcxLabel
            Left = 88
            Top = 38
            Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13565951
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 46
          end
          object cxLblSMCnt2A9: TcxLabel
            Left = 87
            Top = 65
            Caption = '0 '#50896' / '#44148#45817'  ('#51068#48152'SMS'#47564' '#48372#45244#46412' '#51204#49569#44032#45733#44148#49688' : '#44148')'
            ParentColor = False
            Style.BorderStyle = ebsNone
            Style.Color = 13565951
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 73
          end
          object cxLabel95: TcxLabel
            Left = 503
            Top = 38
            AutoSize = False
            Caption = 
              '* '#52649#51204#52880#49772#45716' '#49707#51088#47564' '#51077#47141#54616#49464#50836#13#10'* '#51648#49324#52880#49772#47484' '#52264#44048#54616#50668' SMS'#52880#49772#47484' '#52649#51204#54633#45768#45796'.'#13#10'* '#51648#49324#52880#49772#47484' '#54869#51064#54616#49884#44256' SMS' +
              #52880#49772#47484' '#52649#51204#54616#49464#50836
            ParentColor = False
            Style.BorderColor = 15076287
            Style.BorderStyle = ebsNone
            Style.Color = 16774371
            Style.HotTrack = False
            Style.Shadow = False
            Style.TextColor = 13719147
            Style.TextStyle = [fsBold]
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ShadowedColor = clGray
            Transparent = True
            Height = 45
            Width = 313
            AnchorY = 61
          end
          object lbl1: TcxLabel
            Left = 232
            Top = 11
            Caption = '<=='
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = #44404#47548
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object BtnSearch1A9: TcxButton
            Left = 501
            Top = 8
            Width = 104
            Height = 24
            Cursor = crHandPoint
            Caption = #51312'   '#54924
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            OptionsImage.Layout = blGlyphBottom
            TabOrder = 16
            TabStop = False
            OnClick = BtnSearch1A9Click
          end
        end
      end
      object GridA9: TcxGrid
        Left = 0
        Top = 187
        Width = 1003
        Height = 529
        Align = alClient
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
        object GridA9DBTableView: TcxGridDBTableView
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
              Format = ',0;-,0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA9DBTableViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = GridA9DBTableViewColumnHeaderClick
          object GridA9DBTableViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No.'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 47
          end
          object GridA9DBTableViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51077#47141#51068
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 167
          end
          object GridA9DBTableViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 158
          end
          object GridA9DBTableViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object GridA9DBTableViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #52636#44552#51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 181
          end
          object GridA9DBTableViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #52636#44552#51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object GridA9DBTableViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #52649#51204#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '###,##0.#'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object GridA9DBTableViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #53440#51077
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object GridA9DBTableViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #50500#51060#46356
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
        end
        object GridA9Level: TcxGridLevel
          GridView = GridA9DBTableView
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

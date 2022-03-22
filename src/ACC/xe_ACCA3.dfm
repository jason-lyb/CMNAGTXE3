object Frm_ACCA3: TFrm_ACCA3
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
        Top = 63
        Width = 1003
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
        object lblSosokNameA3: TcxLabel
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
        object cxDtStartA3: TcxDateEdit
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
        object cxDtEndA3: TcxDateEdit
          Left = 238
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
        object btnSearchA3: TcxButton
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
          OnClick = btnSearchA3Click
        end
        object btnExcelA3: TcxButton
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
          OnClick = btnExcelA3Click
        end
        object btnDateA3: TcxButton
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
          OnMouseDown = btnDateA3MouseDown
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
        object cxTeStartA3: TcxTimeEdit
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
        object cxTeEndA3: TcxTimeEdit
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
        object cxLabel42: TcxLabel
          Left = 412
          Top = 17
          Caption = 
            #8251' 1. '#51648#49324#44592#51456#51004#47196#47564' '#51312#54924' '#44032#45733#54633#45768#45796'.'#13#10'    2. '#45817#51068' '#50724#45908#45716' '#51312#54924#54624#49688' '#50630#49845#45768#45796'.'#13#10'    3. '#47560#50864#49828' '#50724#47480#51901 +
            #48260#53948' '#53364#47533#51004#47196' '#50724#45908#51221#48372', '#50724#45908#49345#49464#45236#50669#51012' '#48380#49688#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 37
        end
      end
      object GridA3: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        PopupMenu = PopupMenu3
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
        object GridA3View: TcxGridDBTableView
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
          DataController.DataModeController.SmartRefresh = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn11
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn12
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn13
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn20
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA3ViewColumn21
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA3ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = GridA3ViewColumnHeaderClick
          object GridA3ViewColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object GridA3ViewColumn1: TcxGridDBColumn
            Caption = #45216#51676
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object GridA3ViewColumn2: TcxGridDBColumn
            Caption = #48156#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object GridA3ViewColumn3: TcxGridDBColumn
            Caption = #48156#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object GridA3ViewColumn4: TcxGridDBColumn
            Caption = #49688#51452#48376#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object GridA3ViewColumn5: TcxGridDBColumn
            Caption = #49688#51452#51648#49324
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn6: TcxGridDBColumn
            Caption = #44277#50976#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object GridA3ViewColumn7: TcxGridDBColumn
            Caption = #45824#54364#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn8: TcxGridDBColumn
            Caption = #52636#48156#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object GridA3ViewColumn9: TcxGridDBColumn
            Caption = #46020#52265#51648
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object GridA3ViewColumn10: TcxGridDBColumn
            Caption = #51060#50857#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object GridA3ViewColumn11: TcxGridDBColumn
            Caption = #44592#49324#49688#49688#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object GridA3ViewColumn12: TcxGridDBColumn
            Caption = #49688#49688#47308'('#44277#50857#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn20: TcxGridDBColumn
            Caption = #49688#49688#47308'('#51088#52404#52880#49772')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object GridA3ViewColumn13: TcxGridDBColumn
            Caption = #51221#49328#44552#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object GridA3ViewColumn21: TcxGridDBColumn
            Caption = #49688#51061#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object GridA3ViewColumn19: TcxGridDBColumn
            DataBinding.FieldName = #51221#49328#48708#50984
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA3ViewColumn14: TcxGridDBColumn
            Caption = #50868#54665#44592#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object GridA3ViewColumn15: TcxGridDBColumn
            Caption = #44592#49324#49324#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object GridA3ViewColumn16: TcxGridDBColumn
            Caption = #51217#49688#48264#54840
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object GridA3ViewColumn17: TcxGridDBColumn
            Caption = #44277#50976#52264#49688
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object cxColGrid4ViewColumn22: TcxGridDBColumn
            Caption = #48176#52264#54805#49885
          end
        end
        object GridA3Level: TcxGridLevel
          GridView = GridA3View
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
      OnClick = N3Click
    end
    object MenuItem2: TMenuItem
      Caption = #50612#51228
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #52572#44540#54620#45804
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItem5Click
    end
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopupMenu3Popup
    Left = 166
    Top = 371
    object N1: TMenuItem
      Caption = #50641#49472#45796#50868
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #51648#49324#48324' '#52880#49772#45236#50669
    end
    object N11: TMenuItem
      Caption = #44592#49324#48324#54532#47196#44536#47016#49324#50857#45236#50669
    end
    object N12: TMenuItem
      Caption = #49888#50857#52852#46300#44208#51116' '#49345#49464#51060#47141#54788#54889
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N5: TMenuItem
      Caption = #50724#45908#51221#48372#48372#44592
      Visible = False
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #50724#45908#49345#49464#45236#50669#48372#44592
      Visible = False
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = '-'
      Visible = False
    end
    object N8: TMenuItem
      Caption = #44592#49324#44288#47532#51221#48372#48372#44592
      Visible = False
    end
    object N9: TMenuItem
      Caption = #44592#49324#52649#51204#54616#44592
      Visible = False
    end
    object SMS1: TMenuItem
      Caption = #44592#49324'SMS'#48372#45236#44592
      Visible = False
    end
    object N10: TMenuItem
      Caption = #44592#49324#50640#49569#44552#54616#44592
      Visible = False
    end
  end
end

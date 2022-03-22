object Frm_STTA5: TFrm_STTA5
  Left = 634
  Top = 226
  BorderStyle = bsNone
  Caption = 'STT'
  ClientHeight = 660
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 660
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape6: TShape
      Left = 0
      Top = 91
      Width = 984
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
      Height = 91
      Width = 984
      object Shape2: TShape
        Left = 6
        Top = 7
        Width = 230
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 6
        Top = 34
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape5: TShape
        Left = 6
        Top = 61
        Width = 349
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
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
      object cxLabel31: TcxLabel
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
      object cxLabel33: TcxLabel
        Left = 18
        Top = 66
        Caption = #44592'      '#44036
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 44
        AnchorY = 74
      end
      object lblSosokNameA5: TcxLabel
        Left = 80
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
        Width = 497
        AnchorX = 329
        AnchorY = 19
      end
      object btnSearchA5: TcxButton
        Left = 453
        Top = 33
        Width = 60
        Height = 52
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnSearchA5Click
      end
      object btnExcelA5: TcxButton
        Left = 516
        Top = 33
        Width = 60
        Height = 52
        Cursor = crHandPoint
        Caption = #50641#49472#45796#50868
        Colors.Default = 16773362
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = btnExcelA5Click
      end
      object btn9: TcxButton
        Tag = 2
        Left = 330
        Top = 61
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
        PopupMenu = pop_date
        TabOrder = 6
        OnMouseDown = btnDateMouseDown
      end
      object cbbA5: TcxComboBox
        Left = 80
        Top = 33
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = cbb4PropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 7
        Height = 26
        Width = 169
      end
      object cbb1A5: TcxComboBox
        Left = 249
        Top = 33
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #44160#49353#50612#54637#47785
          #51648#49324#47749
          #51648#49324#53076#46300)
        Properties.OnChange = cbb5PropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 8
        Text = #44160#49353#50612#54637#47785
        Height = 26
        Width = 88
      end
      object cxDtEndA5: TcxDateEdit
        Left = 210
        Top = 60
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        PopupMenu = pop_date
        Properties.DateButtons = [btnToday]
        Properties.SaveTime = False
        Properties.ShowTime = False
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 26
        Width = 84
      end
      object cxDtStartA5: TcxDateEdit
        Left = 80
        Top = 60
        TabStop = False
        AutoSize = False
        EditValue = 39717d
        ParentShowHint = False
        PopupMenu = pop_date
        Properties.DateButtons = [btnToday]
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
        Height = 26
        Width = 84
      end
      object cxLabel23: TcxLabel
        Left = 164
        Top = 66
        Caption = '09:00 ~ '
        Transparent = True
      end
      object cxLabel24: TcxLabel
        Left = 296
        Top = 66
        Caption = '09:00'
        Transparent = True
      end
      object edtA5: TcxTextEdit
        Left = 338
        Top = 33
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 13
        Height = 26
        Width = 113
      end
      object cxGroupBox2: TcxGroupBox
        Left = 579
        Top = 6
        Style.BorderStyle = ebsFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 14
        Height = 79
        Width = 402
        object cxLabel1: TcxLabel
          Left = 8
          Top = 22
          Caption = '   - '#51088#49324#48156#51452' : '#51204#52404' '#51088#49324' '#48156#51452#44148#50640#49436' '#51088#49324#44592#49324#44032' '#52376#47532' '#54620' '#48156#51452#44148#49688
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 4
          Caption = '   - '#48156'      '#51452' : '#51204#52404' '#51088#49324' '#48156#51452#44148#50640#49436' '#51088#49324' '#48156#51452#44148#51012' '#51228#50808#54620' '#48156#51452#44148#49688
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 41
          Caption = '   - '#49688'      '#51452' : '#51088#49324' '#44592#49324#44032' '#53440#49324#53084' '#52376#47532#54620' '#52509' '#44148#49688
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 60
          Caption = '   - '#51088#49324#49688#51452' : '#51088#49324' '#44592#49324#44032' '#51088#49324#53084' '#52376#47532#54620' '#52509' '#44148#49688
          Transparent = True
        end
      end
    end
    object cxGridA5: TcxGrid
      Left = 0
      Top = 93
      Width = 984
      Height = 567
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      PopupMenu = pm3
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGridA5View1: TcxGridDBTableView
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
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = cxView3DataControllerSortingChanged
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        Filtering.ColumnMRUItemsListCount = 0
        OptionsBehavior.CellHints = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        Styles.OnGetContentStyle = cxView3StylesGetContentStyle
        OnColumnHeaderClick = cxGridA5View1ColumnHeaderClick
        object cxGridA5View1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'No.'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 33
        end
        object cxGridA5View1Column2: TcxGridDBColumn
          DataBinding.FieldName = #48376#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 100
        end
        object cxGridA5View1Column3: TcxGridDBColumn
          DataBinding.FieldName = #51648#49324
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.CellMerging = True
          Width = 130
        end
        object cxGridA5View1Column4: TcxGridDBColumn
          DataBinding.FieldName = #48516#47448
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 128
        end
        object cxGridA5View1Column5: TcxGridDBColumn
          DataBinding.FieldName = '0'#52264#44277#50976
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column6: TcxGridDBColumn
          DataBinding.FieldName = '1'#52264#44277#50976
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column7: TcxGridDBColumn
          DataBinding.FieldName = '2'#52264#44277#50976
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column8: TcxGridDBColumn
          DataBinding.FieldName = '3'#52264#44277#50976
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column9: TcxGridDBColumn
          DataBinding.FieldName = '4'#52264#44277#50976
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column10: TcxGridDBColumn
          DataBinding.FieldName = '5'#52264#44277#50976#51060#49345
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridA5View1Column11: TcxGridDBColumn
          DataBinding.FieldName = #48156#51452'/'#51088#49324'='#52509#54633
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
      end
      object cxLevel3: TcxGridLevel
        GridView = cxGridA5View1
      end
    end
  end
  object pop_date: TPopupMenu
    AutoHotkeys = maManual
    Left = 844
    Top = 184
    object MenuItem1: TMenuItem
      Caption = #50724#45720
      OnClick = MenuItemClick
    end
    object MenuItem2: TMenuItem
      Tag = 1
      Caption = #50612#51228
      OnClick = MenuItemClick
    end
    object MenuItem3: TMenuItem
      Tag = 2
      Caption = #52572#44540#51068#51452#51068
      OnClick = MenuItemClick
    end
    object MenuItem4: TMenuItem
      Tag = 3
      Caption = #52572#44540#54620#45804
      OnClick = MenuItemClick
    end
    object MenuItem5: TMenuItem
      Tag = 4
      Caption = '1'#51068'~'#47568#51068
      OnClick = MenuItemClick
    end
  end
  object pm3: TPopupMenu
    AutoHotkeys = maManual
    Left = 940
    Top = 176
    object mniN1: TMenuItem
      Caption = #50641' '#49472' '#45796' '#50868
      OnClick = mniN1Click
    end
  end
end

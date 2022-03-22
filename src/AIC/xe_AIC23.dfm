object frm_AIC23: Tfrm_AIC23
  Left = 0
  Top = 0
  Caption = 'frm_AIC23'
  ClientHeight = 615
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_main: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 615
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 604
      Height = 52
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#51064#48148#50868#46300' '#49464#48512#45236#50669
      Color = 8404992
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnMouseMove = pnlTitleMouseMove
      DesignSize = (
        604
        52)
      object cxLblActive: TLabel
        Left = 0
        Top = 0
        Width = 604
        Height = 5
        Align = alTop
        AutoSize = False
        Color = 33023
        ParentColor = False
        Transparent = True
        ExplicitTop = 8
        ExplicitWidth = 658
      end
      object BtnClose: TcxButton
        Left = 576
        Top = 8
        Width = 23
        Height = 21
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000151193B91C17
          C2F41B17C3F41C16C2F41A14BFF41914BFF41913BFF41A14BFF41A13BEF41A13
          BEF41B14C1F41812BDF41B14C1F4140F93B90000000019199BB92E2DFBFF2423
          EFFF0B06B6FF201DE5FF2B29FAFF2824F4FF2824F4FF2723F4FF2722F4FF2925
          FCFF130DCEFF0A05B0FF211AEFFF2921FBFF161498B92322D4FE272BEFFF1312
          B1FF6A67BFFF1B1AB0FF1F20E2FF2D2EF4FF282AEDFF2929EEFF2C2DF4FF0E0D
          CAFF3F3CB5FF9090CEFF1210B1FF2321EEFF1F1BD0FE2121C9F4100EBBFF918E
          D3FFFFFFFFFFADAAE0FF100FB2FF1C20E0FF3036F4FF2F35F4FF0D0DCEFF3835
          B8FFECECF8FFFFFFFFFF6A67C6FF0F0DC0FF201ECAF42428D0F41D24D7FF433D
          C3FFEBEAF8FFFFFFFFFFAFADE3FF1D1BB9FF1D24DEFF171CD7FF3934BEFFEEED
          F9FFFFFFFFFFACAAE4FF1F1BBDFF252CE7FF2221CDF4252AD1F4384FFAFF161E
          D4FF3A32C5FFEDEDF9FFFFFFFFFFD0CEF0FF201FC1FF1E1DC0FFE2E2F6FFFFFF
          FFFFB3B1E8FF1511BFFF232DE5FF3241F7FF2324CDF42228D2F4364FF3FF3950
          F3FF151DD8FF3E35CCFFDEDBF6FFFFFFFFFFCFCDF2FFCFCEF3FFFFFFFFFFD4D3
          F3FF2321C7FF202CE3FF3447F4FF3144F2FF2023D0F4454BD9F43B55F3FF334B
          EFFF3852F4FF1F2ADFFF211DCBFFCDCCF4FFFFFFFFFFFFFFFFFFCDCBF4FF2120
          CDFF2232E3FF354DF4FF2F44EEFF364DF2FF4247D7F46366DFF46E82F7FF556A
          F2FF4862F3FF2B3BE8FF221FD2FFCDCBF3FFFFFFFFFFFFFFFFFFCDCBF4FF201D
          D2FF242FE4FF445DF3FF5366F2FF6A7DF6FF6064DDF46064E1F47388F7FF788C
          F6FF6472F1FF514BE0FFD5D2F7FFFFFFFFFFDCDAF8FFDCDAF8FFFFFFFFFFDCDA
          F8FF655EE2FF575EEAFF7588F6FF6F83F6FF5D62DFF46166E3F47891F7FF6779
          F2FF5550E6FFCAC6F6FFFFFFFFFFE9E8FCFF5851E6FF5954E6FFE0DEFAFFFFFF
          FFFFF6F5FDFF6F69E9FF575FECFF748CF7FF5F64E2F4636AE4F46F82F3FF5E59
          EBFFC2BFF7FFFFFFFFFFF2F1FDFF6E66ECFF5D68EFFF6472F1FF5E57EBFFC5C1
          F8FFFFFFFFFFF1F0FDFF7670ECFF616BF1FF6268E4F4646CE6F45A5CEFFF928B
          F3FFFFFFFFFFF1F0FEFF6F68F0FF5B64EFFF7A92F6FF7A91F6FF6775F2FF5551
          EDFFC3BFF9FFFFFFFFFFAFA8F7FF5857F0FF6165E4F46B74F1FE7A91F6FF5A57
          F0FFAEA8F7FF7771F3FF5F68F2FF7D96F6FF798EF5FF788EF5FF7C94F6FF6D7F
          F4FF5F5BF0FF948CF5FF5956F1FF758BF6FF6972EFFE4E54B0B985A1F7FF7C94
          F6FF5B5BF3FF6975F5FF84A1F8FF8099F7FF7F98F7FF7F98F7FF7E97F6FF819C
          F6FF7588F5FF5C5FF3FF7990F5FF819DF7FF4C53AEB9000000005055B1B96970
          E9F4666CE9F46971E9F4676EE9F4676EE9F4666EE9F4666EE9F4676EE9F4666D
          E9F4676FE9F4676FE9F4676EE9F44E53B0B900000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = BtnCloseClick
      end
      object cxLabel2: TcxLabel
        Left = 189
        Top = 27
        Caption = #45433#52712#46108' '#47928#51109#51012' '#48372#49884#47140#47732' '#49464#48512#45236#50669' '#47532#49828#53944#47484' '#53364#47533#54616#49464#50836
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = #45208#45588#44256#46357
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clWhite
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object pnl_MediaBase: TPanel
        Left = 542
        Top = 7
        Width = 243
        Height = 44
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 2
      end
    end
    object pnl_Top: TPanel
      Left = 0
      Top = 52
      Width = 604
      Height = 294
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 294
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
        object cxGridAI2_List2: TcxGridDBTableView
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
          OnCellClick = cxGridAI2_List2CellClick
          DataController.DataModeController.SmartRefresh = True
          DataController.Filter.Options = [fcoShowOperatorDescription, fcoSoftNull]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0;'
              Kind = skSum
              Column = cxGridDBColumn10
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
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.CellAutoHeight = True
          OptionsView.DataRowHeight = 26
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          object cxGridDBColumn7: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 33
          end
          object cxGridAI2_List2Column1: TcxGridDBColumn
            DataBinding.FieldName = #53685#54868#49884#51089#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 140
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = #53685#54868#51333#47308#49884#44036
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 140
          end
          object cxGridAI2_List2Column4: TcxGridDBColumn
            DataBinding.FieldName = #53685#54868#49884#44036'('#52488')'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Width = 76
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = #53685#54868#44396#48516
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 142
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = #52264#44048#52880#49884
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 68
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'ppn'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 27
          end
          object cxGridAI2_List2Column3: TcxGridDBColumn
            DataBinding.FieldName = #45433#52712#45236#50669#50976#47924
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Width = 78
          end
          object cxGridAI2_List2Column2: TcxGridDBColumn
            DataBinding.FieldName = #51204#52404#45433#52712#52397#52712
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 55
                Kind = bkGlyph
              end>
            Properties.Images = Frm_Main.cxSmallImages
            Properties.ViewStyle = vsButtonsAutoWidth
            Properties.OnButtonClick = cxGridAI2_List2Column2PropertiesButtonClick
            OnCustomDrawCell = cxGridAI2_List2Column2CustomDrawCell
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
            Width = 81
          end
          object cxGridAI2_List2Column5: TcxGridDBColumn
            DataBinding.FieldName = #45796#50868#47196#46300
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 56
                Kind = bkGlyph
              end>
            Properties.Images = Frm_Main.cxSmallImages
            Properties.ViewStyle = vsButtonsAutoWidth
            Properties.OnButtonClick = cxGridAI2_List2Column5PropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
          end
          object cxGridAI2_List2Column7: TcxGridDBColumn
            DataBinding.FieldName = #51200#51109#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridAI2_List2
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 346
      Width = 604
      Height = 35
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#54644#54588#53084' '#45433#52712#47928#51109#48372#44592
      Color = 16747287
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object pnl_Botton: TPanel
      Left = 0
      Top = 381
      Width = 604
      Height = 234
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 604
        Height = 234
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
        object cxGridAI2_List3: TcxGridDBTableView
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
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          Filtering.ColumnMRUItemsListCount = 0
          OptionsBehavior.CellHints = True
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsBehavior.CopyPreviewToClipboard = False
          OptionsBehavior.ExpandMasterRowOnDblClick = False
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.CellAutoHeight = True
          OptionsView.DataRowHeight = 40
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 25
          object cxGridDBColumn1: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 33
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #52376#47532#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 125
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = #49692#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 30
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Tag = 1
            Caption = 'AI'#49436#48260'('#51020#49457#51064#49885#49884#49828#53596' '#51656#47928#45236#50669')'
            DataBinding.FieldName = 'AI'#49436#48260
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = Frm_Main.cxsInsure
            Width = 340
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Tag = 1
            Caption = #44256#44061#45813#48320#45236#50857
            DataBinding.FieldName = #44256#44061#45813#48320
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 340
          end
          object cxGridAI2_List3Column1: TcxGridDBColumn
            DataBinding.FieldName = 'ppn'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Editing = False
            Width = 27
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = #45433#52712#52397#52712
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 55
                Kind = bkGlyph
              end>
            Properties.Images = Frm_Main.cxSmallImages
            Properties.ViewStyle = vsButtonsAutoWidth
            Properties.OnButtonClick = cxGridDBColumn6PropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
            Width = 72
          end
          object cxGridAI2_List3Column2: TcxGridDBColumn
            DataBinding.FieldName = #45796#50868#47196#46300
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 56
                Kind = bkGlyph
              end>
            Properties.Images = Frm_Main.cxSmallImages
            Properties.ViewStyle = vsButtonsAutoWidth
            Properties.OnButtonClick = cxGridAI2_List3Column2PropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
          end
          object cxGridAI2_List3Column3: TcxGridDBColumn
            DataBinding.FieldName = #51200#51109#51068#49884
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridAI2_List3
        end
      end
    end
  end
  object grpPlayer: TcxGroupBox
    Left = 290
    Top = 176
    Caption = #51116#49373
    TabOrder = 1
    Visible = False
    DesignSize = (
      393
      59)
    Height = 66
    Width = 393
    object btnExit: TcxButton
      Left = 330
      Top = 13
      Width = 60
      Height = 46
      Cursor = crHandPoint
      Hint = #45803#44592
      Anchors = [akTop, akRight]
      Caption = #45803' '#44592
      Colors.Default = 16635384
      Colors.Normal = 16773362
      Colors.Hot = 16360076
      Colors.Pressed = 16644080
      Colors.Disabled = 4227327
      LookAndFeel.NativeStyle = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = btnExitClick
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 724
    Top = 442
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'wav'
    Filter = '.wav'
    Left = 716
    Top = 114
  end
end

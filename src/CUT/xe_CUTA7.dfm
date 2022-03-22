object Frm_CUTA7: TFrm_CUTA7
  Left = 632
  Top = 221
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 723
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
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
    Width = 975
    Height = 723
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape15: TShape
      Left = 0
      Top = 35
      Width = 975
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object Panel22: TPanel
      Left = 0
      Top = 37
      Width = 975
      Height = 686
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Shape2: TShape
        Left = 0
        Top = 416
        Width = 975
        Height = 2
        Align = alBottom
        Brush.Style = bsClear
        Pen.Style = psClear
        ExplicitTop = 384
        ExplicitWidth = 1003
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '1. '#44256#44061#46321#44553' '#49444#51221
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        DesignSize = (
          975
          409)
        Height = 416
        Width = 975
        object Label26: TLabel
          Left = 15
          Top = 21
          Width = 572
          Height = 24
          Caption = 
            '- '#46321#44553#52628#44032' '#48143' '#49688#51221'('#54637#47785' '#45908#48660#53364#47533') '#54616#50668' '#46321#44553#51012' '#44396#49457#54633#45768#45796'.'#13#10'- '#50500#47000' '#47785#47197#50640' '#54637#47785#51060' '#50630#45716' '#44221#50864' ['#44536#47353#52628#44032'] '#48260#53948 +
            #51012' '#53364#47533#54616#49464#50836'.('#44536#47353' '#46321#47197' '#49884' '#46321#44553#46020' '#54632#44760' '#51077#47141' '#48148#46989#45768#45796'.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clFuchsia
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object btnCustGroupAdd: TcxButton
          Left = 626
          Top = 19
          Width = 75
          Height = 26
          Cursor = crHandPoint
          Caption = #44536#47353#52628#44032
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnCustGroupAddClick
        end
        object btnCustGroupDel: TcxButton
          Left = 702
          Top = 19
          Width = 75
          Height = 26
          Cursor = crHandPoint
          Caption = #44536#47353#49325#51228
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
          OnClick = btnCustGroupDelClick
        end
        object btnCustLevelAdd: TcxButton
          Left = 814
          Top = 19
          Width = 75
          Height = 26
          Cursor = crHandPoint
          Caption = #46321#44553#52628#44032
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnCustLevelAddClick
        end
        object btnCustLevelDel: TcxButton
          Left = 890
          Top = 19
          Width = 75
          Height = 26
          Cursor = crHandPoint
          Caption = #46321#44553#49325#51228
          Colors.Normal = 16773362
          Colors.Pressed = 16644080
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          OnClick = btnCustLevelDelClick
        end
        object cxGridCustGroup: TcxGrid
          Left = 13
          Top = 54
          Width = 951
          Height = 316
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          LookAndFeel.NativeStyle = True
          object cxGridBandedTableView3: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxViewCustGroup: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = cxViewCustGroupCellDblClick
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxColCGGroupName: TcxGridColumn
              Caption = #44536#47353#47749
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxColCGSortNo: TcxGridColumn
              Caption = #51221#47148
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 64
            end
            object cxColCGLevelName: TcxGridColumn
              Caption = #44256#44061#46321#44553#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Styles.OnGetContentStyle = cxColCGLevelNameStylesGetContentStyle
              Width = 158
            end
            object cxColCGMileage: TcxGridColumn
              Caption = #47560#51068#47532#51648' '#51201#47549
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 137
            end
            object cxColCGColor: TcxGridColumn
              Caption = #51217#49688#52285' '#51201#50857' '#49353#49345
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Styles.OnGetContentStyle = cxColCGColorStylesGetContentStyle
              Width = 131
            end
            object cxColCGLevelUpDesc: TcxGridColumn
              Caption = #51088#46041#49849#44553#44592#51456'('#50756#47308#44148'/'#52712#49548#50984')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 205
            end
            object cxColCGGroupSeq: TcxGridColumn
              Caption = #44536#47353'Seq'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxColCGLevelSeq: TcxGridColumn
              Caption = #46321#44553'Seq'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
            end
            object cxColCGDefaultYN: TcxGridColumn
              Caption = #44592#48376#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelCustGroup: TcxGridLevel
            GridView = cxViewCustGroup
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 418
        Align = alBottom
        Caption = '2. '#45824#54364#48264#54840#48324' '#44256#44061#46321#44553
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 268
        Width = 975
        object Label1: TLabel
          Left = 14
          Top = 23
          Width = 430
          Height = 36
          Caption = 
            '- '#45824#54364#48264#54840#47484' '#49440#53469#54616#50668' '#54788#51116' '#49324#50857#51473#51064' '#44256#44061#46321#44553#51012' '#54869#51064' '#54980' '#49888#52397#49436#47484' '#51089#49457#54633#45768#45796'.'#13#10'- '#53084#47560#45320' '#44256#44061#49468#53552'(1688-661' +
            '8)'#47196' '#51204#54868#54616#50668' '#44256#44061#46321#44553' '#48320#44221#51012' '#50836#52397#54633#45768#45796'.'#13#10'   ('#45824#54364#48264#54840#51032' '#44256#44061#46321#44553' '#48320#44221' '#49884' '#51204#52404#44256#44061#51032' '#51221#48372#44032' '#48320#44221#46121#45768#45796'.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clFuchsia
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 858
          Top = 47
          Width = 105
          Height = 12
          Cursor = crHandPoint
          Caption = '['#49888#52397#49436#45796#50868#47196#46300']'
          Font.Charset = ANSI_CHARSET
          Font.Color = 16744448
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Label2Click
        end
        object cxGridCustLevel: TcxGrid
          Left = 14
          Top = 64
          Width = 391
          Height = 186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object cxGridBandedTableView2: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxViewCustLevel: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            OnCanSelectRecord = cxViewCustLevelCanSelectRecord
            OnCellClick = cxViewCustLevelCellClick
            OnFocusedRecordChanged = cxViewCustLevelFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.GroupByBox = False
            object cxColCLBranchTel: TcxGridColumn
              Caption = #45824#54364#48264#54840
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 114
            end
            object cxColCLGroup: TcxGridColumn
              Caption = #44256#44061#46321#44553' '#44536#47353
              PropertiesClassName = 'TcxComboBoxProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 145
            end
            object cxColCLAutoUp: TcxGridColumn
              Caption = #51088#46041#49849#44553
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.GroupFooters = False
              Options.Grouping = False
              Width = 92
            end
            object cxColCLGroupSeq: TcxGridColumn
              Caption = #44536#47353'SEQ'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
            end
          end
          object cxLevelCustLevel: TcxGridLevel
            GridView = cxViewCustLevel
          end
        end
        object cxGridGroupLevel: TcxGrid
          Left = 411
          Top = 64
          Width = 553
          Height = 186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGridBandedTableView1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object cxViewGroupLevel: TcxGridTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxColGLSortNo: TcxGridColumn
              Caption = #51221#47148
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 45
            end
            object cxColGLLevelName: TcxGridColumn
              Caption = #44256#44061#46321#44553#47749
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Styles.OnGetContentStyle = cxColGLLevelNameStylesGetContentStyle
              Width = 101
            end
            object cxColGLMileage: TcxGridColumn
              Caption = #47560#51068#47532#51648' '#51201#47549
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 101
            end
            object cxColGLColor: TcxGridColumn
              Caption = #51217#49688#52285' '#51201#50857' '#49353#49345
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Styles.OnGetContentStyle = cxColGLColorStylesGetContentStyle
              Width = 103
            end
            object cxColGLLevelUpDesc: TcxGridColumn
              Caption = #51088#46041#49849#44553#44592#51456'('#50756#47308#44148'/'#52712#49548#50984')'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
              Width = 181
            end
            object cxColGLDefaultYN: TcxGridColumn
              Caption = #44592#48376#46321#44553#50668#48512
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
              Options.Sorting = False
            end
          end
          object cxLevelGroupLevel: TcxGridLevel
            GridView = cxViewGroupLevel
          end
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      Style.BorderStyle = ebsFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 35
      Width = 975
      object Shape1: TShape
        Left = 10
        Top = 5
        Width = 513
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object lblCustLvlSosok: TcxLabel
        Left = 91
        Top = 4
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
        Width = 533
        AnchorX = 358
        AnchorY = 17
      end
      object cxLabel54: TcxLabel
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
      object BtnSearch: TcxButton
        Left = 626
        Top = 4
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = #51312'  '#54924
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        OnClick = BtnSearchClick
      end
    end
  end
  object cxStyleCustLevel: TcxStyleRepository
    Left = 856
    Top = 212
    PixelsPerInch = 96
    object stlCustLevelColor: TcxStyle
    end
  end
end

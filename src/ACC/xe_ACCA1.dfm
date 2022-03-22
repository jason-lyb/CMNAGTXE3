object Frm_ACCA1: TFrm_ACCA1
  Left = 722
  Top = 103
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
        object lblSosokNameA1: TcxLabel
          Left = 83
          Top = 6
          AutoSize = False
          Caption = #49548#49549
          ParentColor = False
          Style.BorderStyle = ebsUltraFlat
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
        object cxDtStartA1: TcxDateEdit
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
        object cxDtEndA1: TcxDateEdit
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
        object btnDateA1: TcxButton
          Left = 376
          Top = 33
          Width = 28
          Height = 24
          Cursor = crHandPoint
          DropDownMenu = pop_dateA1
          Kind = cxbkDropDown
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
          TabOrder = 5
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
        object cxTeStartA1: TcxTimeEdit
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
          TabOrder = 7
          Height = 26
          Width = 51
        end
        object cxTeEndA1: TcxTimeEdit
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
          TabOrder = 8
          Height = 26
          Width = 51
        end
        object cxLabel37: TcxLabel
          Left = 413
          Top = 8
          Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732' '#51648#49324#48324' '#52880#49772#45236#50669#51012' '#54869#51064' '#54624#49688' '#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 16
        end
        object btnSearchA1: TcxButton
          Left = 417
          Top = 30
          Width = 80
          Height = 26
          Cursor = crHandPoint
          Caption = #44160' '#49353
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 10
          TabStop = False
          OnClick = btnSearchA1Click
        end
        object btnExcelA1: TcxButton
          Left = 500
          Top = 30
          Width = 80
          Height = 26
          Cursor = crHandPoint
          Caption = #50641#49472#45796#50868
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 11
          TabStop = False
          OnClick = btnExcelA1Click
        end
        object btnHelpA1: TcxButton
          Left = 583
          Top = 30
          Width = 80
          Height = 26
          Cursor = crHandPoint
          Caption = #51060#50857#50504#45236
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 12
          TabStop = False
          OnClick = btnHelpA1Click
        end
      end
      object GridA1: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        PopupMenu = PopupMenuA1
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
        object GridA1View: TcxGridDBTableView
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
          OnCellDblClick = GridA1ViewCellDblClick
          DataController.DataModeController.SmartRefresh = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn2
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn3
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn4
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn6
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn7
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn8
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn9
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn11
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn12
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn13
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn14
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA1ViewColumn15
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = Grid1ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 23
          OnColumnHeaderClick = GridA1ViewColumnHeaderClick
          object GridA1ViewColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object GridA1ViewColumn18: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
          end
          object GridA1ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 124
          end
          object GridA1ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#44277#50857#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
          end
          object GridA1ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49688#51061
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 70
          end
          object GridA1ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #49688#51452#51648#44553
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 70
          end
          object GridA1ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #49556#47336#49496#49324#50857#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
          end
          object GridA1ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #48372#54744#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 70
          end
          object GridA1ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 88
          end
          object GridA1ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #53084#45824#54665
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 70
          end
          object GridA1ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#51077#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 70
          end
          object GridA1ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #53084#47560#45320#51221#49328
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 80
          end
          object GridA1ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#52880#49772#51060#46041
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 82
          end
          object GridA1ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#52880#49772#52636#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 81
          end
          object GridA1ViewColumn13: TcxGridDBColumn
            DataBinding.FieldName = #44592#53440
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 60
          end
          object GridA1ViewColumn14: TcxGridDBColumn
            DataBinding.FieldName = #54633#44228
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 90
          end
          object GridA1ViewColumn17: TcxGridDBColumn
            DataBinding.FieldName = #49884#51089#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object GridA1ViewColumn19: TcxGridDBColumn
            DataBinding.FieldName = #51333#47308#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object GridA1ViewColumn15: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Moving = False
            Width = 90
          end
        end
        object GridA1Level: TcxGridLevel
          GridView = GridA1View
        end
      end
    end
    object pnlHelpA1: TPanel
      Left = 128
      Top = 136
      Width = 513
      Height = 480
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16316393
      TabOrder = 1
      Visible = False
      DesignSize = (
        509
        476)
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #51060#50857#50504#45236
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        ExplicitLeft = 24
        ExplicitTop = -2
        Height = 476
        Width = 509
        object cxLabel6: TcxLabel
          Left = 3
          Top = 14
          Align = alClient
          Caption = 
            #13#10#48376' '#39#54637#47785#48324#51648#49324#52880#49772#39' '#45236#50669#51008' '#51648#49324#52880#49772#51032' '#47784#46304' '#48320#44221#45236#50669#51012' '#45208#53440#45253#45768#45796'.'#13#10#51593', '#54644#45817' '#44592#44036#46041#50504#51032' '#51648#49324#52880#49772#44032' '#51613#44032#54616#44256' ' +
            #44048#49548#54620' '#44163#51012' '#54637#47785#48324#47196' '#51312#54924#44032#45733#54633#45768#45796'.'#13#10#13#10#39#51648#49324#52880#49772#39#45716' '#49892#51228' '#54788#44552#51060#45208' '#47560#52268#44032#51648#51064' '#44480' '#51648#49324#51032' '#51092#44256#47484' '#45208#53440#45253#45768#45796'.'#13#10 +
            #13#10'*'#44592#49324#44277#50857#52880#49772': '#44592#49324#44032' '#50724#45908' '#50868#54665#49884' '#39#44592#49324#44277#50857#52880#49772#39#50640#49436' '#49688#49688#47308#44032' '#52264#44048#46108' '#52509#50529','#13#10' '#49688#49688#47308#51204#50529#51060' '#51648#49324#52880#49772#50640' '#52649#51204#46108 +
            ' '#45236#50669#51077#45768#45796'.'#13#10#13#10'*'#48156#51452#49688#51061': '#50724#45908#47484' '#48156#51452#54616#50668' '#53440#51648#49324'('#48376#49324#45236' '#53440' '#51648#49324' '#54252#54632')'#47196#48512#53552' '#48155#51008' '#44552#50529'(+ '#44552#50529')'#13#10#13#10'*'#49688 +
            #51452#51648#44553': '#53440#49324#51032' '#50724#45908#47484' '#49688#51452#54616#50668' '#53440#49324#50640' '#51648#44553#54620' '#44552#50529'(- '#44552#50529')'#13#10#13#10'*'#49556#47336#49496#49324#50857#47308': '#44592#49324#49324#50857#47308#47484' '#51648#49324#52880#49772#50640#49436' '#48320#44221#46108 +
            ' '#45236#50669#51077#45768#45796'.'#13#10' ('#51648#49324#45824#45225#51060#45208' '#54980#48520#50629#52404#50640' '#54644#45817')'#13#10#13#10'*'#48372#54744#47308': '#44592#49324#48372#54744#47308' '#54637#47785#51004#47196', '#44592#49324#51032' '#44277#50857#52880#49772#50640' '#52264#44048#54616#50668' ' +
            #51648#49324#52880#49772#47196' '#52649#51204#46104#45716#13#10' '#45236#50669' '#46321#51012' '#54364#49884#54633#45768#45796'.'#13#10#13#10'*'#52712#49548#48268#44552'('#44277#50857'): '#44592#49324#51032' '#50724#45908#52712#49548' '#48268#44552#51060' '#39#44277#50857#52880#49772#39#50640#49436' '#52264#44048 +
            #46108' '#44552#50529'.'#13#10' '#51060#44552#50529#46020' '#51648#49324#51032' '#52880#49772#50640' '#51201#47549#46121#45768#45796'.'#13#10#13#10'*'#53084#45824#54665': '#53084#49468#53552#47484' '#45824#54665'/'#51060#44288#51032' '#44221#50864' '#50577#49324#44032' '#50724#45908' '#45800#50948#47196' '#51221 +
            #49328'('#51201#47549'/'#52264#44048')'#51012' '#50557#49549#54620' '#44552#50529#13#10#13#10'*'#51648#49324#51077#44552': '#44480#49324#50640#49436' '#51648#49324#51032' '#39#44032#49345#44228#51340#39#47196' '#51649#51217' '#49569#44552#54616#50668' '#52649#51204#54620' '#44552#50529#13#10#13#10'*'#53084 +
            #47560#45320#51221#49328': '#53084#47560#45320#50640#49436' '#51648#49324#51032' '#52880#49772#47484' '#52264#44048#54616#44256', '#49569#44552#54616#50668' '#51221#49328' '#51077#44552#54644' '#46300#47536' '#44552#50529'.'#13#10' ('#48376#49324#45208' '#51648#49324#51032' '#44228#51340#47196' '#51077#44552')'#13 +
            #10#13#10'*'#51648#49324#52880#49772#51060#46041': '#48376#49324#45236' '#51648#49324#44036#50640' '#52880#49772#47484' '#51060#46041#54620' '#45236#50669#13#10#13#10'*SMS'#52880#49772' '#52636#44552': '#51648#49324#52880#49772#50640#49436' SMS'#52880#49772#47196' '#51060#46041#54620' ' +
            #45236#50669#13#10#13#10'*'#44592#53440': '#44592#49324#53748#51649#52649#51204'('#53748#51649#49884' '#44592#49324#44277#50857#52880#49772' '#51092#50529#51012' '#51648#49324#50640' '#52649#51204'), '#54980#48520#48277#51064#50868#54665#51648#44553#50529#13#10' ('#44592#49324#50640' '#51088#46041#51648#44553#52649 +
            #51204' '#46108' '#48512#48516'), '#48512#44032#49436#48708#49828#49324#50857#47308', '#44592#49324#54532#47196#44536#47016#49324#50857#47308' '#54872#48520' '#46321#13#10' '#53945#49688#49345#54889#50640' '#51032#54620' '#48372#51221#51077#47141' '#46321#51032' '#45236#50857#51077#45768#45796'.'#13#10
          ParentColor = False
          Style.Color = 15269887
        end
      end
      object BtnCloseA1: TcxButton
        Left = 486
        Top = 21
        Width = 20
        Height = 20
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
        LookAndFeel.NativeStyle = False
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
        OnClick = BtnCloseA1Click
      end
    end
  end
  object pop_dateA1: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 708
    Top = 148
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
  object PopupMenuA1: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopupMenuA1Popup
    Left = 54
    Top = 139
    object N1: TMenuItem
      Caption = #50641#49472#45796#50868
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #51648#49324#48324' '#52880#49772#45236#50669
      OnClick = N2Click
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
    end
    object N6: TMenuItem
      Caption = #50724#45908#49345#49464#45236#50669#48372#44592
      Visible = False
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

object Frm_ACCA13: TFrm_ACCA13
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
    object pnlMainA13: TPanel
      Left = 0
      Top = 0
      Width = 1003
      Height = 716
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
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
        object lblSosokNameA13: TcxLabel
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
        object cxDtStartA13: TcxDateEdit
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
        object cxDtEndA13: TcxDateEdit
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
        object btnSearchA13: TcxButton
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
          OnClick = btnSearchA13Click
        end
        object btnExcelA13: TcxButton
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
          OnClick = btnExcelA13Click
        end
        object btnDateA13: TcxButton
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
          OnMouseDown = btnDateA13MouseDown
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
        object cxTeStartA13: TcxTimeEdit
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
        object cxTeEndA13: TcxTimeEdit
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
        object btnHelpA13: TcxButton
          Left = 410
          Top = 33
          Width = 71
          Height = 24
          Cursor = crHandPoint
          Caption = #51060#50857#50504#45236
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 11
          TabStop = False
          OnClick = btnHelpA13Click
        end
      end
      object cxGridA13: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGridA13View: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGridA13ViewCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn29
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn30
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn31
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn32
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn33
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn34
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBColumn35
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxGridA13ViewDataControllerSortingChanged
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxGridA13ViewColumnHeaderClick
          object cxGridDBColumn25: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 40
          end
          object cxGridDBColumn36: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
          end
          object cxGridDBColumn26: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 100
          end
          object cxGridDBColumn27: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#51077#44552'(R)'
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
          object cxGridDBColumn28: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#51077#47141'(C)'
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
          object cxGridDBColumn29: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'(R)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn30: TcxGridDBColumn
            DataBinding.FieldName = #49688#49688#47308'(C)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn31: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'(R)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn32: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'(C)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn33: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#52636#44552'(R)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn34: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#52636#44552'(C)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridDBColumn35: TcxGridDBColumn
            DataBinding.FieldName = #49324#50857','#48372#54744#47308
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
        object cxGridA13Level: TcxGridLevel
          GridView = cxGridA13View
        end
      end
      object pnlHelpA13: TPanel
        Left = 128
        Top = 216
        Width = 529
        Height = 369
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 16316393
        TabOrder = 2
        Visible = False
        DesignSize = (
          525
          365)
        object cxGropuBox12: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #51060#50857#50504#45236
          ParentBackground = False
          ParentColor = False
          Style.BorderStyle = ebsFlat
          Style.Color = clBtnFace
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 365
          Width = 525
          object cxMemo6: TcxMemo
            Left = 3
            Top = 14
            Align = alClient
            Lines.Strings = (
              '** '#47784#46304#54637#47785#51012' '#53364#47533#54616#47732' '#45236#50669#51060' '#54364#49884#46121#45768#45796'.'
              '** R: '#8216#44277#50857#52880#49772#8217#47484' '#51032#48120#54616#47728', '#44032#49345#44228#51340'('#53084#47560#45320' '#49884#49828#53596')'#47196' '#51077#44552#54620' '#44552#50529#51077#45768#45796'.'
              '/ C: '#8216#51088#52404#52880#49772#8217#47484' '#51032#48120#54616#47728', '#51648#49324#50640#49436' '#51076#51032#51201#51004#47196' '#52649#51204#54620' '#44552#50529#51077#45768#45796'.'
              ''
              '*'#44592#49324#51077#44552'(R): '#49548#49549#44592#49324#44032' '#51088#49888#51032' '#44032#49345#44228#51340#47196' '#51077#44552#54620' '#44277#50857#52880#49772' '#44552#50529'.'
              '  ('#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#51032' '#51077#44552#51012' '#47785#51201#51004#47196' '#51077#44552#54620' '#44552#50529#46020' '#54252#54632#54633#45768#45796'.)'
              '* '#51648#49324#51077#47141'(C): '#51648#49324#50640#49436' '#8216#44592#49324#44288#47532#8217' '#47700#45684#51032' '#8216#52649#51204#54616#44592#8217#47484' '#51060#50857#54616#50668','
              '  '#44592#49324#51032' '#51088#52404#52880#49772#47484' '#52649#51204#54620' '#44552#50529'('#44592#49324#47196#48512#53552' '#51648#49324#44032' '#51649#51217' '#49688#44552#54620' '#44552#50529'('#54788#44552#49688#51077') '#46321'. '
              '  '#45800', '#48372#45320#49828#47196' '#52649#51204#54644' '#51456' '#44163#46020' '#54252#54632#46120') '
              '  -> '#9733#53364#47533#9756#54616#47732' '#47532#49828#53944#47484' '#48380' '#49688' '#51080#49845#45768#45796'.'
              ''
              '* '#49688#49688#47308'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
              '* '#49688#49688#47308'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
              ''
              '* '#52712#49548#48268#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
              '* '#52712#49548#48268#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529
              ''
              '* '#44592#49324#52636#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#52636#44552'('#54872#48520')'#46108' '#44552#50529'('#53748#49324' '#46321#51032' '#44221#50864')'
              '* '#44592#49324#52636#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#52636#44552#54620' '#44552#50529'.'#8216#44592#49324#44288#47532#8217' '#50640#49436' '#52649#51204#54616#44592' '#48260#53948#51012' '
              '   '#51060#50857#54616#50668' '#51648#49324#44288#47532#51088#44032' '#52636#44552' '#51312#51089#54620' '#44552#50529#51032' '#54633#44228' '#51077#45768#45796'.'
              ''
              '*'#49324#50857','#48372#54744#47308': '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#47196' '#52264#44048#46108' '#44552#50529#51032' '#52509#50529' ')
            Properties.ReadOnly = True
            TabOrder = 0
            Height = 341
            Width = 519
          end
          object cxLabel6: TcxLabel
            Left = 3
            Top = 14
            Align = alClient
            Caption = 
              #13#10'** '#47784#46304#54637#47785#51012' '#53364#47533#54616#47732' '#45236#50669#51060' '#54364#49884#46121#45768#45796'.'#13#10#13#10'** R: '#8216#44277#50857#52880#49772#8217#47484' '#51032#48120#54616#47728', '#44032#49345#44228#51340'('#53084#47560#45320' '#49884#49828#53596')'#47196 +
              ' '#51077#44552#54620' '#44552#50529#51077#45768#45796'.'#13#10'/ C: '#8216#51088#52404#52880#49772#8217#47484' '#51032#48120#54616#47728', '#51648#49324#50640#49436' '#51076#51032#51201#51004#47196' '#52649#51204#54620' '#44552#50529#51077#45768#45796'.'#13#10#13#10'*'#44592#49324#51077#44552'(R' +
              '): '#49548#49549#44592#49324#44032' '#51088#49888#51032' '#44032#49345#44228#51340#47196' '#51077#44552#54620' '#44277#50857#52880#49772' '#44552#50529'.'#13#10'  ('#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#51032' '#51077#44552#51012' '#47785#51201#51004#47196' '#51077#44552#54620' ' +
              #44552#50529#46020' '#54252#54632#54633#45768#45796'.)'#13#10#13#10'* '#51648#49324#51077#47141'(C): '#51648#49324#50640#49436' '#8216#44592#49324#44288#47532#8217' '#47700#45684#51032' '#8216#52649#51204#54616#44592#8217#47484' '#51060#50857#54616#50668','#13#10'  '#44592#49324#51032' '#51088 +
              #52404#52880#49772#47484' '#52649#51204#54620' '#44552#50529'('#44592#49324#47196#48512#53552' '#51648#49324#44032' '#51649#51217' '#49688#44552#54620' '#44552#50529'('#54788#44552#49688#51077') '#46321'. '#13#10'  '#45800', '#48372#45320#49828#47196' '#52649#51204#54644' '#51456' '#44163#46020' '#54252#54632 +
              #46120') '#13#10'  -> '#9733#53364#47533#9756#54616#47732' '#47532#49828#53944#47484' '#48380' '#49688' '#51080#49845#45768#45796'.'#13#10#13#10'* '#49688#49688#47308'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#50868#54665' ' +
              #49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#49688#49688#47308'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#50868#54665' '#49688#49688#47308#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13 +
              #10'* '#52712#49548#48268#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#52712#49548#48268#44552'(C): '#49548#49549' '#44592 +
              #49324#51032' '#51088#52404#52880#49772#50640#49436' '#50724#45908#52712#49548' '#48268#44552#51004#47196' '#52264#44048#46108' '#44552#50529' '#52509#50529#13#10#13#10'* '#44592#49324#52636#44552'(R): '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436' '#52636#44552'('#54872#48520')' +
              #46108' '#44552#50529'('#53748#49324' '#46321#51032' '#44221#50864')'#13#10'* '#44592#49324#52636#44552'(C): '#49548#49549' '#44592#49324#51032' '#51088#52404#52880#49772#50640#49436' '#52636#44552#54620' '#44552#50529'.'#8216#44592#49324#44288#47532#8217' '#50640#49436' '#52649#51204#54616#44592' '#48260 +
              #53948#51012' '#13#10'   '#51060#50857#54616#50668' '#51648#49324#44288#47532#51088#44032' '#52636#44552' '#51312#51089#54620' '#44552#50529#51032' '#54633#44228' '#51077#45768#45796'.'#13#10#13#10'*'#49324#50857','#48372#54744#47308': '#49548#49549' '#44592#49324#51032' '#44277#50857#52880#49772#50640#49436 +
              ' '#54532#47196#44536#47016#49324#50857#47308' '#48143' '#48372#54744#47308#47196' '#52264#44048#46108' '#44552#50529#51032' '#52509#50529' '#13#10
            ParentColor = False
            Style.Color = 15269887
          end
        end
        object BtnCloseA13: TcxButton
          Left = 502
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
          OnClick = BtnCloseA13Click
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

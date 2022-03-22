object Frm_ACCA10: TFrm_ACCA10
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
        Style.BorderStyle = ebsFlat
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
        object lblSosokNameA10: TcxLabel
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
        object cxDtStartA10: TcxDateEdit
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
        object cxDtEndA10: TcxDateEdit
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
        object btnSearchA10: TcxButton
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
          OnClick = btnSearchA10Click
        end
        object btnExcelA10: TcxButton
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
          OnClick = btnExcelA10Click
        end
        object btnDateA10: TcxButton
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
          OnMouseDown = btnDateA10MouseDown
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
        object cxTeStartA10: TcxTimeEdit
          Left = 166
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
        object cxTeEndA10: TcxTimeEdit
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
          Top = 6
          Caption = 
            #8251' '#44033' '#54637#47785#51012' '#45908#48660#53364#47533#54616#50668' '#49345#49464#45236#50669#51012' '#54869#51064#54624' '#49688' '#51080#49845#45768#45796'.'#13#10#8251' '#54924#49353#48176#44221' '#54637#47785'('#51648#49324#50756#47308#53084#49688','#54633#44228','#51092#50529','#49688#51061#44552')'#50640' '#13 +
            #10'    '#54644#45817#54616#45716' '#49345#49464#45236#50669#51008' '#48372#49892#49688' '#50630#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 26
        end
        object cxLabel2: TcxLabel
          Left = 453
          Top = 46
          Caption = #8251' '#50724#54980' 9'#49884#48512#53552' '#50724#51204' 1'#49884#44620#51648#45716' '#44160#49353#54616#49892#49688' '#50630#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 54
        end
      end
      object GridA10: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object cxGrid10View: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid10ViewCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn4
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn3
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn6
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn7
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn8
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn9
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn11
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn12
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn13
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn14
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn15
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn16
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn17
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn18
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn19
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn20
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn21
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn22
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn23
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn24
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn26
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn27
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxGrid10ViewColumn28
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = cxGrid10ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = cxGrid10ViewColumnHeaderClick
          object cxGrid10ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Sorting = False
            Width = 40
          end
          object cxGrid10ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Width = 100
          end
          object cxGrid10ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#44277#50857#52880#49772
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
          object cxGrid10ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49688#51061'('#44277#50857')'
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
          object cxGrid10ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #48156#51452#49688#51061'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #49688#51452#51648#44553
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn26: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#50756#47308#53084#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 100
          end
          object cxGrid10ViewColumn27: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#51068#48708'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn28: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#51068#48708'('#51088#52404')'
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
          object cxGrid10ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #49556#47336#49496#49324#50857#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #48372#54744#47308
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #52712#49548#48268#44552'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn11: TcxGridDBColumn
            DataBinding.FieldName = #53084#45824#54665
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#51077#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn13: TcxGridDBColumn
            DataBinding.FieldName = #53084#47560#45320#51221#49328
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn14: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#52880#49772#51060#46041
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'SMS'#52880#49772#52636#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn16: TcxGridDBColumn
            DataBinding.FieldName = #54980#48520#51077#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn17: TcxGridDBColumn
            DataBinding.FieldName = #48372#51221#51077#47141
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn18: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#50640#49569#44552
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn19: TcxGridDBColumn
            DataBinding.FieldName = #53748#51649#54872#48520
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn20: TcxGridDBColumn
            DataBinding.FieldName = #44592#53440
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object cxGrid10ViewColumn21: TcxGridDBColumn
            DataBinding.FieldName = #54633#44228'('#44277#50857')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 100
          end
          object cxGrid10ViewColumn29: TcxGridDBColumn
            DataBinding.FieldName = #49884#51089#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid10ViewColumn30: TcxGridDBColumn
            DataBinding.FieldName = #51333#47308#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGrid10ViewColumn22: TcxGridDBColumn
            DataBinding.FieldName = #51092#50529
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 100
          end
          object cxGrid10ViewColumn23: TcxGridDBColumn
            DataBinding.FieldName = #49688#51061#44552'('#44277#50857'+'#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Width = 110
          end
          object cxGrid10ViewColumn24: TcxGridDBColumn
            DataBinding.FieldName = #49688#51061#44552'('#51088#52404')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Options.Moving = False
            Options.Sorting = False
            Styles.Content = cxStyle1
            Width = 100
          end
          object cxGrid10ViewColumn25: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 20
          end
        end
        object GridA10Level1: TcxGridLevel
          GridView = cxGrid10View
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
  object cxSTR01: TcxStyleRepository
    Left = 144
    Top = 627
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11458510
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.Content = cxStyle1
      Styles.Header = cxStyle2
      BuiltIn = True
    end
  end
end

object Frm_ACCA8: TFrm_ACCA8
  Left = 2259
  Top = 143
  BorderStyle = bsNone
  Caption = 'ACC'
  ClientHeight = 731
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1043
    Height = 731
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 5
      Top = 8
      Caption = '  '#8251' '#52636#44552#51648#49324#50640#49436' '#51077#44552#51648#49324#47196' '#49440#53469#54620' '#51648#49324' '#46608#45716' SMS'#52880#49772#47484' '#51060#46041#54633#45768#45796'. '
      Style.BorderColor = clDefault
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 662
      Width = 525
      object Shape6: TShape
        Left = 278
        Top = 24
        Width = 235
        Height = 40
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 12
        Top = 216
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 12
        Top = 242
        Width = 197
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object chkUseCashMoveDefault: TcxCheckBox
        Left = 284
        Top = 25
        Caption = #44592#48376#52636#44552#51648#49324' '#49440#53469
        TabOrder = 0
        Transparent = True
        OnClick = chkUseCashMoveDefaultClick
      end
      object cxBtnOKLA8: TcxButton
        Left = 278
        Top = 214
        Width = 140
        Height = 27
        Cursor = crHandPoint
        Caption = #54869#51064
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        TabStop = False
        OnClick = cxBtnOKLA8Click
      end
      object cxLabel52: TcxLabel
        Left = 246
        Top = 131
        AutoSize = False
        Caption = '<=='
        ParentColor = False
        Style.BorderColor = 15076287
        Style.BorderStyle = ebsNone
        Style.Color = 12189690
        Style.HotTrack = False
        Style.Shadow = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 21
        Width = 29
        AnchorY = 142
      end
      object cxLabel65: TcxLabel
        Left = 37
        Top = 221
        Caption = #51060#46041#44552#50529
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 65
        AnchorY = 229
      end
      object cxLabel66: TcxLabel
        Left = 228
        Top = 221
        Caption = '('#50896')'
      end
      object cxLabel67: TcxLabel
        Left = 12
        Top = 276
        AutoSize = False
        Caption = '* '#51648#49324#44036#51032' '#52880#49772#51060#46041' '#44032#45733#54633#45768#45796'!'#13#10'* '#51648#49324#44036' SMS'#52880#49772#51060#46041' '#44032#45733#54633#45768#45796'!'#13#10'* '#51060#46041#49884' '#52880#49772#47484' '#54869#51064' '#54616#49464#50836'! '
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
        Height = 48
        Width = 228
        AnchorY = 300
      end
      object cxLabel8: TcxLabel
        Left = 37
        Top = 245
        Caption = #52880#49772#47700#47784
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 65
        AnchorY = 253
      end
      object cxEdtLMoveAmt: TcxCurrencyEdit
        Left = 110
        Top = 215
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
        TabOrder = 7
        OnKeyUp = cxEdtLMoveAmtKeyUp
        Height = 26
        Width = 111
      end
      object edtCashMoveDefaultBranch: TcxTextEdit
        Left = 278
        Top = 43
        AutoSize = False
        Enabled = False
        TabOrder = 8
        Height = 21
        Width = 235
      end
      object edtCashMoveMemo: TcxTextEdit
        Left = 110
        Top = 241
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 100
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnKeyUp = cxEdtLMoveAmtKeyUp
        Height = 26
        Width = 402
      end
      object Panel7: TPanel
        Left = 12
        Top = 24
        Width = 234
        Height = 40
        BevelOuter = bvNone
        Color = 16774371
        TabOrder = 10
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 234
          Height = 40
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = -98
          ExplicitTop = 7
          ExplicitWidth = 267
          ExplicitHeight = 24
        end
        object cxrbBrCash: TcxRadioButton
          Left = 26
          Top = 11
          Width = 73
          Height = 17
          Caption = #51648#49324#52880#49772
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object chrbSmsCash: TcxRadioButton
          Left = 137
          Top = 11
          Width = 73
          Height = 17
          Caption = 'SMS'#52880#49772
          TabOrder = 1
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 12
        Top = 70
        Caption = '  '#8251' '#52880#49772' '#51077#44552' '#48376#49324' '#51648#49324
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        Height = 133
        Width = 234
        object Shape1: TShape
          Left = 9
          Top = 68
          Width = 215
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 9
          Top = 94
          Width = 215
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxcbCashMoveBrName1: TcxComboBox
          Left = 8
          Top = 44
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = #51204#52404
          OnClick = cxcbCashMoveBrName1Click
          Height = 23
          Width = 217
        end
        object cxcbCashMoveHdName1: TcxComboBox
          Left = 8
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cxcbCashMoveHdName1PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 23
          Width = 217
        end
        object cxLabel53: TcxLabel
          Left = 24
          Top = 72
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 52
          AnchorY = 80
        end
        object cxLabel54: TcxLabel
          Left = 24
          Top = 100
          Caption = 'SMS'#52880#49772
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 52
          AnchorY = 108
        end
        object cxLblIBrCash: TcxLabel
          Left = 89
          Top = 67
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
          AnchorX = 197
          AnchorY = 80
        end
        object cxLblISmCash: TcxLabel
          Left = 89
          Top = 93
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
          AnchorX = 197
          AnchorY = 106
        end
        object cxLabel57: TcxLabel
          Left = 198
          Top = 73
          Caption = '('#50896')'
          Transparent = True
        end
        object cxLabel58: TcxLabel
          Left = 198
          Top = 99
          Caption = '('#50896')'
          Transparent = True
        end
        object cxLblBrView: TcxLabel
          Left = 8
          Top = 122
          AutoSize = False
          Caption = '  '#51648#49324' '#49440#53469#49884' '#51648#49324#52880#49772', '#13#10#13#10'  SMS'#52880#49772#44032' '#48372#50668#51665#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 13818344
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 52
          Width = 218
          AnchorY = 148
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 278
        Top = 70
        Caption = '  '#8251' '#52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 133
        Width = 234
        object Shape4: TShape
          Left = 9
          Top = 68
          Width = 215
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 9
          Top = 94
          Width = 215
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxcbCashMoveBrName2: TcxComboBox
          Left = 8
          Top = 44
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = #51204#52404
          OnClick = cxcbCashMoveBrName2Click
          Height = 23
          Width = 217
        end
        object cxcbCashMoveHdName2: TcxComboBox
          Left = 8
          Top = 19
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cxcbCashMoveHdName2PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 23
          Width = 217
        end
        object cxLabel51: TcxLabel
          Left = 19
          Top = 71
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 47
          AnchorY = 79
        end
        object cxLblOBrCash: TcxLabel
          Left = 88
          Top = 67
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
          AnchorX = 196
          AnchorY = 80
        end
        object cxLabel60: TcxLabel
          Left = 19
          Top = 98
          Caption = 'SMS'#52880#49772
          ParentColor = False
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 47
          AnchorY = 106
        end
        object cxLblOSmCash: TcxLabel
          Left = 88
          Top = 93
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
          AnchorX = 196
          AnchorY = 106
        end
        object cxLabel62: TcxLabel
          Left = 196
          Top = 73
          Caption = '('#50896')'
          Transparent = True
        end
        object cxLabel63: TcxLabel
          Left = 196
          Top = 99
          Caption = '('#50896')'
          Transparent = True
        end
        object cxLblSMView: TcxLabel
          Left = 10
          Top = 121
          AutoSize = False
          Caption = '  '#51648#49324' '#49440#53469#49884' '#51648#49324#52880#49772', '#13#10#13#10'  SMS'#52880#49772#44032' '#48372#50668#51665#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 13818344
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TextColor = 13719147
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 55
          Width = 218
          AnchorY = 149
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 534
      Top = 8
      Caption = ' '#8251' '#54620#44060#51032' '#51648#49324#50640#49436' '#50668#47084#44060#51032' '#51648#49324#47196' '#52880#49772#47484' '#46041#49884#50640' '#51060#46041#54633#45768#45796'. '
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Height = 662
      Width = 458
      object Shape11: TShape
        Left = 18
        Top = 507
        Width = 223
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape12: TShape
        Left = 18
        Top = 533
        Width = 223
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object cxBtnOKRA8: TcxButton
        Left = 243
        Top = 505
        Width = 142
        Height = 26
        Cursor = crHandPoint
        Caption = #54869#51064
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 0
        TabStop = False
        OnClick = cxBtnOKRA8Click
      end
      object cxEdtRMoveAmt: TcxCurrencyEdit
        Left = 85
        Top = 506
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
        TabOrder = 1
        OnKeyUp = cxEdtLMoveAmtKeyUp
        Height = 26
        Width = 102
      end
      object cxGridA8: TcxGrid
        Left = 12
        Top = 194
        Width = 433
        Height = 259
        TabOrder = 2
        TabStop = False
        LookAndFeel.NativeStyle = True
        object cxBrCashMove: TcxGridBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = cxBrCashMoveColumn3
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.BandMoving = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.BandHeaderHeight = 22
          Bands = <
            item
              Caption = 'No.'
              Width = 43
            end
            item
              Caption = #51648#49324#47749
              Width = 207
              OnHeaderClick = cxBrCashMoveBands1HeaderClick
            end
            item
              Caption = #51648#49324#52880#49772
              Width = 123
              OnHeaderClick = cxBrCashMoveBands2HeaderClick
            end
            item
              Caption = #49440#53469
              Width = 38
              OnHeaderClick = cxBrCashMoveBands3HeaderClick
            end
            item
              Caption = #51648#49324#53076#46300
              Visible = False
            end>
          object cxBrCashMoveColumn1: TcxGridBandedColumn
            Caption = 'No.'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrCashMoveColumn2: TcxGridBandedColumn
            Caption = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrCashMoveColumn3: TcxGridBandedColumn
            Caption = #51648#49324#52880#49772
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrCashMoveColumn4: TcxGridBandedColumn
            Caption = #49440#53469
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.FullFocusRect = True
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 20
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxBrCashMoveColumn5: TcxGridBandedColumn
            Caption = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxBrCashMove
        end
      end
      object cxLabel11: TcxLabel
        Left = 25
        Top = 536
        Caption = #52880#49772#47700#47784
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 53
        AnchorY = 544
      end
      object cxLabel70: TcxLabel
        Left = 12
        Top = 24
        AutoSize = False
        Caption = ' '#8251' 20'#49884#51060#54980#51312#51089#44552#51648
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 27
        Width = 433
        AnchorY = 38
      end
      object cxLabel75: TcxLabel
        Left = 12
        Top = 456
        AutoSize = False
        Caption = #49440#53469#46108' '#52636#44552' '#51648#49324' '#50808#50640' 00'#44060' '#51648#49324#44032' '#51080#49845#45768#45796'.'
        ParentColor = False
        Style.BorderColor = 15076287
        Style.BorderStyle = ebsNone
        Style.Color = 12189690
        Style.HotTrack = False
        Style.Shadow = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 21
        Width = 273
        AnchorY = 467
      end
      object cxLabel76: TcxLabel
        Left = 24
        Top = 511
        Caption = #51060#46041#44552#50529
        ParentColor = False
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = 13719147
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 52
        AnchorY = 519
      end
      object cxLabel77: TcxLabel
        Left = 189
        Top = 511
        Caption = '('#50896')'
        Transparent = True
      end
      object cxLabel78: TcxLabel
        Left = 13
        Top = 556
        AutoSize = False
        Caption = 
          #8251' '#49444#47749' '#13#10' 1. '#52880#49772#51060#46041' : '#44033' '#51648#49324#50640' '#51077#47141#50529#47564#53372#50473' '#51060#46041#54633#45768#45796'.'#13#10' 2. '#52880#49772#54217#51456#54868' : '#44033#51648#49324#52880#49772#47484' '#51077#47141#50529#51032' '#51092 +
          #50529#51004#47196' '#13#10'     '#47582#52628#50612' '#48260#47549#45768#45796'.('#51077#44552' '#46608#45716' '#52636#44552#51060' '#51088#46041#51004#47196' '#52376#47532#46120')'#13#10#13#10#8251' '#51452#51032') '#50948' '#51312#51089#49884' '#52636#44552#51648#49324#51032' '#52880#49772 +
          #44032#48512#51313#54616#47732' '#13#10'     '#44032#45733#54620#51648#49324#44620#51648#47564' '#50756#47308#54633#45768#45796'. '
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
        Height = 91
        Width = 427
        AnchorY = 602
      end
      object edtCashMoveMultiMemo: TcxTextEdit
        Left = 86
        Top = 532
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Properties.MaxLength = 70
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        OnKeyUp = cxEdtLMoveAmtKeyUp
        Height = 26
        Width = 358
      end
      object Panel8: TPanel
        Left = 16
        Top = 475
        Width = 169
        Height = 27
        BevelOuter = bvNone
        Color = 16774371
        TabOrder = 10
        object Shape13: TShape
          Left = 0
          Top = 0
          Width = 169
          Height = 27
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = -98
          ExplicitTop = 7
          ExplicitWidth = 267
          ExplicitHeight = 24
        end
        object cxRBCashM: TcxRadioButton
          Left = 8
          Top = 6
          Width = 67
          Height = 17
          Caption = #52880#49772#51060#46041
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object cxRBCashB: TcxRadioButton
          Left = 80
          Top = 6
          Width = 82
          Height = 17
          Caption = #52880#49772#54217#51456#54868
          TabOrder = 1
          Transparent = True
        end
      end
      object PnlSelHdOpt: TPanel
        Left = 12
        Top = 53
        Width = 433
        Height = 28
        BevelOuter = bvNone
        Color = 16774371
        TabOrder = 11
        object Shape9: TShape
          Left = 0
          Top = 0
          Width = 433
          Height = 28
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = -98
          ExplicitTop = 7
          ExplicitWidth = 267
          ExplicitHeight = 24
        end
        object RB_SelHdOpt1: TcxRadioButton
          Left = 99
          Top = 6
          Width = 88
          Height = 17
          Caption = #49440#53469' '#48376#49324' '#45236
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RB_SelHdOpt1Click
          Transparent = True
        end
        object RB_SelHdOpt2: TcxRadioButton
          Left = 237
          Top = 6
          Width = 117
          Height = 17
          Caption = #49440#53469' '#48376#49324' '#50808' '#51204#52404
          TabOrder = 1
          OnClick = RB_SelHdOpt1Click
          Transparent = True
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 12
        Top = 84
        Caption = '  '#8251' '#52880#49772' '#52636#44552' '#48376#49324' '#51648#49324
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 104
        Width = 433
        object Shape10: TShape
          Left = 10
          Top = 67
          Width = 223
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxcbCashMoveBrName4: TcxComboBox
          Left = 9
          Top = 40
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Text = #51204#52404
          OnClick = cxcbCashMoveBrName4Click
          Height = 23
          Width = 224
        end
        object cxcbCashMoveHdName4: TcxComboBox
          Left = 9
          Top = 18
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #51204#52404)
          Properties.OnChange = cxcbCashMoveHdName4PropertiesChange
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Text = #51204#52404
          Height = 23
          Width = 224
        end
        object cxChkSel: TcxCheckBox
          Left = 240
          Top = 70
          Caption = #49440#53469
          TabOrder = 2
          Transparent = True
          Visible = False
        end
        object cxLabel72: TcxLabel
          Left = 13
          Top = 71
          Caption = ' '#51648#49324#52880#49772
          ParentColor = False
          Style.Color = 13565951
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 41
          AnchorY = 79
        end
        object cxLblBrCash: TcxLabel
          Left = 86
          Top = 66
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
          AnchorX = 194
          AnchorY = 79
        end
        object cxLabel74: TcxLabel
          Left = 197
          Top = 72
          Caption = '('#50896')'
          Transparent = True
        end
      end
    end
  end
  object cxSTR01: TcxStyleRepository
    Left = 432
    Top = 651
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

object Frm_CUTB3: TFrm_CUTB3
  Left = 722
  Top = 103
  BorderStyle = bsNone
  Caption = 'CUT00'
  ClientHeight = 678
  ClientWidth = 987
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
    Width = 987
    Height = 678
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape5: TShape
      Left = 0
      Top = 146
      Width = 987
      Height = 2
      Align = alTop
      Brush.Style = bsClear
      Pen.Style = psClear
      ExplicitLeft = -6
      ExplicitTop = 23
      ExplicitWidth = 305
    end
    object cxGrid7: TcxGrid
      Left = 0
      Top = 148
      Width = 987
      Height = 530
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      PopupMenu = pm_excel8_1
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object cxGBubinStt: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        OnCellDblClick = cxGBubinSttCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn24
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn25
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn26
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn29
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn40
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn27
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn28
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn30
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn31
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn32
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = cxGBubinSttColumn33
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.BandMoving = False
        OptionsCustomize.ColumnVertSizing = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '  '
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderHeight = 20
        OptionsView.BandHeaderHeight = 22
        Bands = <
          item
            Caption = #49692#48264
            Width = 44
            OnHeaderClick = cxGBubinSttBands0HeaderClick
          end
          item
            Caption = #51204#52404#49440#53469#13#10'('#54644#51228')'
            Width = 57
            OnHeaderClick = cxGBubinSttBands1HeaderClick
          end
          item
            Caption = #50724#45908#49345#53468
            Width = 62
            OnHeaderClick = cxGBubinSttBands2HeaderClick
          end
          item
            Caption = #44208#51116#13#10#48169#49885
            Width = 45
            OnHeaderClick = cxGBubinSttBands3HeaderClick
          end
          item
            Caption = #51217#49688#48264#54840
            Width = 57
            OnHeaderClick = cxGBubinSttBands4HeaderClick
          end
          item
            Caption = #51221#49328', '#48372#44592#44428#54620
            Width = 99
          end
          item
            Caption = #48277#51064#47749
            Width = 94
            OnHeaderClick = cxGBubinSttBands7HeaderClick
          end
          item
            Caption = #48512#49436#47749
            Width = 90
            OnHeaderClick = cxGBubinSttBands8HeaderClick
          end
          item
            Caption = #44256#44061#47749
            Width = 80
            OnHeaderClick = cxGBubinSttBands9HeaderClick
          end
          item
            Caption = #51204#54868#48264#54840
            Width = 74
            OnHeaderClick = cxGBubinSttBands11HeaderClick
          end
          item
            Caption = #52572#52488#51217#49688#51068#49884
            Width = 101
            OnHeaderClick = cxGBubinSttBands12HeaderClick
          end
          item
            Caption = #52636#48156#51648#13#10'('#49884#46020')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands13HeaderClick
          end
          item
            Caption = #52636#48156#51648#13#10'('#44396#44400')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands14HeaderClick
          end
          item
            Caption = #52636#48156#51648#13#10'('#46041#47732')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands15HeaderClick
          end
          item
            Caption = #52636#48156#51648#13#10'('#51077#47141')'
            Width = 131
            OnHeaderClick = cxGBubinSttBands16HeaderClick
          end
          item
            Caption = #46020#52265#51648#13#10'('#49884#46020')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands17HeaderClick
          end
          item
            Caption = #46020#52265#51648#13#10'('#44396#44400')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands18HeaderClick
          end
          item
            Caption = #46020#52265#51648#13#10'('#46041#47732')'
            Width = 20
            OnHeaderClick = cxGBubinSttBands19HeaderClick
          end
          item
            Caption = #46020#52265#51648#13#10'('#51077#47141')'
            Width = 120
            OnHeaderClick = cxGBubinSttBands20HeaderClick
          end
          item
            Caption = #44221#50976#51648
            Width = 48
            OnHeaderClick = cxGBubinSttBands47HeaderClick
          end
          item
            Caption = #44592#49324
            Width = 128
          end
          item
            Caption = #45824#44592#49884#44036
            Width = 58
            OnHeaderClick = cxGBubinSttBands21HeaderClick
          end
          item
            Caption = #50756#47308#49884#44036
            Width = 91
            OnHeaderClick = cxGBubinSttBands22HeaderClick
          end
          item
            Caption = #44144#47532'(Km)'
            Width = 50
            OnHeaderClick = cxGBubinSttBands23HeaderClick
          end
          item
            Caption = #51201#50836'-1'
            Width = 72
            OnHeaderClick = cxGBubinSttBands24HeaderClick
          end
          item
            Caption = #51201#50836'-2'
            Width = 76
            OnHeaderClick = cxGBubinSttBands25HeaderClick
          end
          item
            Caption = #50836#44552#51221#48372#49688#51221
            Width = 404
          end
          item
            Caption = #49464#44552#44228#49328#49436#51221#48372
            Width = 219
          end
          item
            Caption = #44592#53440#49324#50976
            Width = 78
            OnHeaderClick = cxGBubinSttBands39HeaderClick
          end
          item
            Caption = #50689#49688#51613' '#51221#48372
            Width = 130
          end
          item
            Caption = #49548#49549
            Visible = False
          end
          item
            Caption = #48512#44032#49464#54252#54632
            Visible = False
          end
          item
            Caption = #51221#49328
            Position.BandIndex = 5
            Position.ColIndex = 0
            Width = 43
            OnHeaderClick = cxGBubinSttBands6HeaderClick
          end
          item
            Caption = #50937#50676#46988
            Position.BandIndex = 5
            Position.ColIndex = 1
            Width = 45
            OnHeaderClick = cxGBubinSttBands10HeaderClick
          end
          item
            Caption = #51217#49688#50836#44552
            Position.BandIndex = 26
            Position.ColIndex = 0
            Width = 57
            OnHeaderClick = cxGBubinSttBands27HeaderClick
          end
          item
            Caption = #44592#49324#49688#49688#47308
            Position.BandIndex = 26
            Position.ColIndex = 1
            Width = 69
            OnHeaderClick = cxGBubinSttBands28HeaderClick
          end
          item
            Caption = #49892#51648#44553#50529
            Position.BandIndex = 26
            Position.ColIndex = 2
            Width = 57
            OnHeaderClick = cxGBubinSttBands29HeaderClick
          end
          item
            Caption = #44221#50976#50836#44552
            Position.BandIndex = 26
            Position.ColIndex = 5
            Width = 55
            OnHeaderClick = cxGBubinSttBands30HeaderClick
          end
          item
            Caption = #45824#44592#50836#44552
            Position.BandIndex = 26
            Position.ColIndex = 6
            Width = 54
            OnHeaderClick = cxGBubinSttBands31HeaderClick
          end
          item
            Caption = #48372#51221#44552#50529
            Position.BandIndex = 26
            Position.ColIndex = 3
            Width = 55
            OnHeaderClick = cxGBubinSttBands32HeaderClick
          end
          item
            Caption = #44592#48376#50836#44552
            Position.BandIndex = 26
            Position.ColIndex = 4
            Width = 57
            OnHeaderClick = cxGBubinSttBands33HeaderClick
          end
          item
            Caption = #44277#44553#44032
            Position.BandIndex = 27
            Position.ColIndex = 0
            Width = 54
            OnHeaderClick = cxGBubinSttBands35HeaderClick
          end
          item
            Caption = #48512#44032#49464
            Position.BandIndex = 27
            Position.ColIndex = 1
            Width = 54
            OnHeaderClick = cxGBubinSttBands36HeaderClick
          end
          item
            Caption = #44592#53440#50836#44552
            Position.BandIndex = 27
            Position.ColIndex = 2
            Width = 59
            OnHeaderClick = cxGBubinSttBands37HeaderClick
          end
          item
            Caption = #54633#44228
            Position.BandIndex = 27
            Position.ColIndex = 3
            Width = 48
            OnHeaderClick = cxGBubinSttBands38HeaderClick
          end
          item
            Caption = #49436#47749
            Position.BandIndex = 29
            Position.ColIndex = 0
            Width = 90
            OnHeaderClick = cxGBubinSttBands41HeaderClick
          end
          item
            Caption = #49849#51064
            Position.BandIndex = 29
            Position.ColIndex = 1
            Width = 48
            OnHeaderClick = cxGBubinSttBands42HeaderClick
          end
          item
            Caption = #44592#49324#47749
            Position.BandIndex = 20
            Position.ColIndex = 0
            Width = 69
            OnHeaderClick = cxGBubinSttBands45HeaderClick
          end
          item
            Caption = #44592#49324#49324#48264
            Position.BandIndex = 20
            Position.ColIndex = 1
            Width = 59
            OnHeaderClick = cxGBubinSttBands46HeaderClick
          end
          item
            Caption = #45216#50472
          end>
        object cxGBubinSttColumn1: TcxGridBandedColumn
          Caption = #49692#48264
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn2: TcxGridBandedColumn
          Caption = #51204#52404#49440#53469
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          MinWidth = 64
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn3: TcxGridBandedColumn
          Caption = #50724#45908#49345#53468
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #50756#47308
              ImageIndex = 2
              Value = '2'
            end
            item
              Description = #47928#51032
              ImageIndex = 4
              Value = '4'
            end
            item
              Description = #52712#49548
              ImageIndex = 7
              Value = '8'
            end
            item
              Description = #51217#49688
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = #48176#52264
              ImageIndex = 1
              Value = '1'
            end
            item
              Description = #44053#51228
              ImageIndex = 3
              Value = '3'
            end
            item
              Description = #45824#44592
              ImageIndex = 5
              Value = '5'
            end
            item
              Description = #50696#50557
              ImageIndex = 9
              Value = 'R'
            end>
          Properties.ReadOnly = True
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn4: TcxGridBandedColumn
          Caption = #44208#51116#48169#49885
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn5: TcxGridBandedColumn
          Caption = #51217#49688#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn6: TcxGridBandedColumn
          Caption = #51221#49328#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 32
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn39: TcxGridBandedColumn
          Caption = #50937#50676#46988
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 33
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn7: TcxGridBandedColumn
          Caption = #48277#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn8: TcxGridBandedColumn
          Caption = #48512#49436#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn9: TcxGridBandedColumn
          Caption = #44256#44061#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn10: TcxGridBandedColumn
          Caption = #51204#54868#48264#54840
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn11: TcxGridBandedColumn
          Caption = #52572#52488#51217#49688#51068#49884
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn12: TcxGridBandedColumn
          Caption = #52636'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 11
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn13: TcxGridBandedColumn
          Caption = #52636'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 12
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn14: TcxGridBandedColumn
          Caption = #52636'3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 13
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn15: TcxGridBandedColumn
          Caption = #52636'5'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Width = 71
          Position.BandIndex = 14
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn16: TcxGridBandedColumn
          Caption = #46020'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 15
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn17: TcxGridBandedColumn
          Caption = #46020'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 16
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn18: TcxGridBandedColumn
          Caption = #46020'3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 17
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn19: TcxGridBandedColumn
          Caption = #46020'5'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 18
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn20: TcxGridBandedColumn
          Caption = #45824#44592#49884#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 21
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn38: TcxGridBandedColumn
          Caption = #50756#47308#49884#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 22
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn21: TcxGridBandedColumn
          Caption = #44144#47532
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 23
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn22: TcxGridBandedColumn
          Caption = #51201#50836'1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 24
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn23: TcxGridBandedColumn
          Caption = #51201#50836'2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 25
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn24: TcxGridBandedColumn
          Caption = #51217#49688#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 34
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn25: TcxGridBandedColumn
          Caption = #44592#49324#49688#49688#47308
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 35
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn26: TcxGridBandedColumn
          Caption = #49892#51648#44553#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 36
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn29: TcxGridBandedColumn
          Caption = #48372#51221#44552#50529
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 39
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn40: TcxGridBandedColumn
          Caption = #44592#48376#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 40
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn27: TcxGridBandedColumn
          Caption = #44221#50976#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 37
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn28: TcxGridBandedColumn
          Caption = #45824#44592#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 38
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn30: TcxGridBandedColumn
          Caption = #44277#44553#44032
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 41
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn31: TcxGridBandedColumn
          Caption = #48512#44032#49464
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 42
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn32: TcxGridBandedColumn
          Caption = #44592#53440#50836#44552
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 43
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn33: TcxGridBandedColumn
          Caption = #54633#44228
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AutoSelect = False
          Properties.DisplayFormat = ',0;-,0'
          Properties.Nullstring = '0'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 44
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn34: TcxGridBandedColumn
          Caption = #44592#53440#49324#50976
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 28
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn35: TcxGridBandedColumn
          Caption = #49436#47749#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 45
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn36: TcxGridBandedColumn
          Caption = #51064#51613#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 46
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn37: TcxGridBandedColumn
          Caption = #49548#49549
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Options.Moving = False
          Position.BandIndex = 30
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn41: TcxGridBandedColumn
          Caption = #44592#49324#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 47
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn42: TcxGridBandedColumn
          Caption = #44592#49324#49324#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 48
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn43: TcxGridBandedColumn
          Caption = #44221#50976#51648
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 19
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn44: TcxGridBandedColumn
          Caption = #48512#44032#49464#54252#54632
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 31
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGBubinSttColumn45: TcxGridBandedColumn
          Caption = #45216#50472
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Position.BandIndex = 49
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGBubinStt
      end
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
      Height = 146
      Width = 987
      object Shape1: TShape
        Left = 9
        Top = 9
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 9
        Top = 35
        Width = 357
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 9
        Top = 61
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 9
        Top = 113
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape6: TShape
        Left = 9
        Top = 87
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 378
        Top = 113
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 378
        Top = 87
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape9: TShape
        Left = 378
        Top = 61
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object Shape10: TShape
        Left = 378
        Top = 35
        Width = 221
        Height = 24
        Pen.Color = 12566402
        Shape = stRoundRect
      end
      object btBubinSttDate: TcxButton
        Left = 347
        Top = 35
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
        TabOrder = 0
        OnMouseDown = btBubinSttDateMouseDown
      end
      object btBubinSttExcel: TcxButton
        Left = 745
        Top = 7
        Width = 61
        Height = 51
        Cursor = crHandPoint
        Caption = #50641#49472
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 1
        OnClick = btBubinSttExcelClick
      end
      object btBubinSttPrint: TcxButton
        Left = 888
        Top = 61
        Width = 88
        Height = 50
        Cursor = crHandPoint
        Caption = #50689#49688#51613#52636#47141
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 2
        OnClick = btBubinSttPrintClick
      end
      object btBubinSttSearch: TcxButton
        Left = 682
        Top = 7
        Width = 62
        Height = 51
        Cursor = crHandPoint
        Caption = #44160#49353
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 3
        OnClick = btBubinSttSearchClick
      end
      object btBubinSttSelStt: TcxButton
        Left = 808
        Top = 61
        Width = 78
        Height = 50
        Cursor = crHandPoint
        Caption = #51068#44292#51221#49328
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 4
        OnClick = btBubinSttSelSttClick
      end
      object cbBubinSttCondition: TcxComboBox
        Left = 485
        Top = 8
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51217#49688#48264#54840
          #52636#48156#51648
          #46020#52265#51648
          #44256#44061#48264#54840
          #44256#44061#47749
          #48277#51064#47749
          #51201#50836
          #44592#49324#47749
          #44592#49324#49324#48264
          #49345#45812#50896'ID')
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Text = #51217#49688#48264#54840
        Height = 26
        Width = 79
      end
      object cbBubinSttKeyNumber: TcxComboBox
        Left = 376
        Top = 8
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404)
        Properties.OnChange = cbBubinSttKeyNumberPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Text = #51204#52404
        Height = 26
        Width = 110
      end
      object cxButton1: TcxButton
        Left = 682
        Top = 61
        Width = 124
        Height = 50
        Cursor = crHandPoint
        Caption = '('#50937#50676#46988')'#48372#44592#44428#54620#51452#44592
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 7
        OnClick = cxButton1Click
      end
      object cxButton3: TcxButton
        Left = 809
        Top = 8
        Width = 167
        Height = 51
        Cursor = crHandPoint
        Caption = #48277#51064#54924#50896#51204#50857#50937#54168#51060#51648#48372#44592
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 8
        OnClick = cxButton3Click
      end
      object cxCheckBox1: TcxCheckBox
        Left = 916
        Top = 118
        Caption = #51204#52404
        TabOrder = 9
        OnClick = cxCheckBox1Click
      end
      object cxChkTitle: TcxCheckComboBox
        Left = 456
        Top = 112
        AutoSize = False
        Properties.EmptySelectionText = ' '
        Properties.Items = <
          item
            Description = #49692#48264
          end
          item
            Description = #51204#52404#49440#53469
          end
          item
            Description = #50724#45908#49345#53468
          end
          item
            Description = #44208#51116#48169#49885
          end
          item
            Description = #51217#49688#48264#54840
          end
          item
            Description = #51221#49328','#48372#44592#44428#54620
          end
          item
            Description = #48277#51064#47749
          end
          item
            Description = #48512#49436#47749
          end
          item
            Description = #44256#44061#47749
          end
          item
            Description = #51204#54868#48264#54840
          end
          item
            Description = #52572#52488#51217#49688#51068#49884
          end
          item
            Description = #52636#48156#51648'('#49884#46020')'
          end
          item
            Description = #52636#48156#51648'('#44396#44400')'
          end
          item
            Description = #52636#48156#51648'('#46041#47732')'
          end
          item
            Description = #52636#48156#51648#51077#47141
          end
          item
            Description = #46020#52265#51648'('#49884#46020')'
          end
          item
            Description = #46020#52265#51648'('#44396#44400')'
          end
          item
            Description = #46020#52265#51648'('#46041#47732')'
          end
          item
            Description = #46020#52265#51648'('#51077#47141')'
          end
          item
            Description = #44221#50976#51648
          end
          item
            Description = #44592#49324
          end
          item
            Description = #45824#44592#49884#44036
          end
          item
            Description = #50756#47308#49884#44036
          end
          item
            Description = #44144#47532'(Km)'
          end
          item
            Description = #51201#50836'-1'
          end
          item
            Description = #51201#50836'-2'
          end
          item
            Description = #50836#44552#51221#48372#49688#51221
          end
          item
            Description = #49464#44552#44228#49328#49436#51221#48372
          end
          item
            Description = #44592#53440#49324#50976
          end
          item
            Description = #50689#49688#51613#51221#48372
          end
          item
            Description = #45216#50472
          end>
        Properties.OnChange = cxChkTitlePropertiesChange
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 10
        Height = 26
        Width = 459
      end
      object cxdBubinSttSearch: TcxTextEdit
        Left = 564
        Top = 8
        AutoSize = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 11
        OnKeyPress = cxdBubinSttSearchKeyPress
        Height = 26
        Width = 116
      end
      object cxDtEdBubinStt: TcxDateEdit
        Left = 223
        Top = 34
        AutoSize = False
        BeepOnEnter = False
        EditValue = 0d
        ParentShowHint = False
        Properties.Alignment.Vert = taBottomJustify
        Properties.DateButtons = [btnNow, btnToday]
        Properties.InputKind = ikStandard
        ShowHint = True
        Style.BorderStyle = ebsOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.Color = 11796479
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 12
        Height = 26
        Width = 82
      end
      object cxDtStBubinStt: TcxDateEdit
        Left = 83
        Top = 34
        AutoSize = False
        BeepOnEnter = False
        EditValue = 0d
        ParentShowHint = False
        Properties.Alignment.Vert = taBottomJustify
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
        TabOrder = 13
        Height = 26
        Width = 86
      end
      object cxLabel11: TcxLabel
        Left = 15
        Top = 92
        Caption = #50689#49688#51613#54869#51064
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 47
        AnchorY = 100
      end
      object cxLabel14: TcxLabel
        Left = 400
        Top = 92
        Caption = #50937' '#50676' '#46988
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 424
        AnchorY = 100
      end
      object cxLabel16: TcxLabel
        Left = 386
        Top = 117
        Caption = #53440#51060#53952#48372#44592
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 418
        AnchorY = 125
      end
      object cxLabel18: TcxLabel
        Left = 15
        Top = 117
        Caption = #48277#51064#49324#44396#48516
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 47
        AnchorY = 125
      end
      object cxLabel33: TcxLabel
        Left = 398
        Top = 41
        Caption = #51221#49328#50668#48512
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 424
        AnchorY = 49
      end
      object cxLabel41: TcxLabel
        Left = 27
        Top = 67
        Caption = #50724#45908#49345#53468
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 53
        AnchorY = 75
      end
      object cxLabel47: TcxLabel
        Left = 398
        Top = 67
        Caption = #51648#48520#50976#54805
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 424
        AnchorY = 75
      end
      object cxLabel49: TcxLabel
        Left = 171
        Top = 41
        Caption = '09:00 ~'
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = 16441805
        Style.TransparentBorder = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 194
        AnchorY = 49
      end
      object cxLabel50: TcxLabel
        Left = 305
        Top = 41
        AutoSize = False
        Caption = '09:00'
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = 16441805
        Style.TransparentBorder = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 17
        Width = 36
        AnchorX = 323
        AnchorY = 50
      end
      object cxLabel8: TcxLabel
        Left = 27
        Top = 41
        Caption = #51060#50857#44592#44036
        ParentColor = False
        Style.TextColor = clBlack
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 53
        AnchorY = 49
      end
      object lbBubinSttCaption: TcxLabel
        Left = 83
        Top = 8
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
        Width = 292
        AnchorX = 229
        AnchorY = 21
      end
      object Panel1: TPanel
        Left = 83
        Top = 87
        Width = 292
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 25
        object Shape12: TShape
          Left = 0
          Top = 0
          Width = 292
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitHeight = 25
        end
        object cxRadioButton1: TcxRadioButton
          Left = 6
          Top = 4
          Width = 49
          Height = 17
          Caption = #51204#52404
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object cxRadioButton2: TcxRadioButton
          Left = 67
          Top = 4
          Width = 50
          Height = 17
          Caption = #49849#51064
          TabOrder = 1
          Transparent = True
        end
        object cxRadioButton3: TcxRadioButton
          Left = 125
          Top = 4
          Width = 63
          Height = 17
          Caption = #48120#49849#51064
          TabOrder = 2
          Transparent = True
        end
      end
      object Panel2: TPanel
        Left = 457
        Top = 35
        Width = 222
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 26
        object Shape16: TShape
          Left = 0
          Top = 0
          Width = 222
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = -1
          ExplicitWidth = 206
        end
        object chkBubinSttTotal: TcxRadioButton
          Left = 6
          Top = 4
          Width = 43
          Height = 17
          Caption = #51204#52404
          TabOrder = 0
          Transparent = True
        end
        object chkBubinSttFinish: TcxRadioButton
          Left = 50
          Top = 4
          Width = 43
          Height = 17
          Caption = #50756#47308
          Checked = True
          TabOrder = 1
          TabStop = True
          Transparent = True
        end
        object chkBubinSttNotFinish: TcxRadioButton
          Left = 95
          Top = 4
          Width = 55
          Height = 17
          Caption = #48120#51221#49328
          TabOrder = 2
          Transparent = True
        end
        object chkBubinSttNotBubin: TcxRadioButton
          Left = 152
          Top = 3
          Width = 65
          Height = 17
          Caption = #44060#51064#51221#49328
          TabOrder = 3
          Transparent = True
        end
      end
      object Panel3: TPanel
        Left = 457
        Top = 87
        Width = 222
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 27
        object Shape14: TShape
          Left = 0
          Top = 0
          Width = 222
          Height = 24
          Align = alClient
          Pen.Color = 12566402
        end
        object cxRadioButton4: TcxRadioButton
          Left = 6
          Top = 4
          Width = 48
          Height = 17
          Caption = #51204#52404
          Checked = True
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object cxRadioButton5: TcxRadioButton
          Left = 56
          Top = 4
          Width = 51
          Height = 17
          Caption = #44032#45733
          TabOrder = 1
          Transparent = True
        end
        object cxRadioButton6: TcxRadioButton
          Left = 106
          Top = 4
          Width = 60
          Height = 17
          Caption = #48520#44032#45733
          TabOrder = 2
          Transparent = True
        end
      end
      object Panel5: TPanel
        Left = 83
        Top = 61
        Width = 292
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 28
        object Shape13: TShape
          Left = 0
          Top = 0
          Width = 292
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitWidth = 50
        end
        object chkBubinSttOrdTotal: TcxRadioButton
          Left = 6
          Top = 4
          Width = 50
          Height = 17
          Caption = #51204#52404
          TabOrder = 0
          Transparent = True
        end
        object chkBubinSttOrdFinish: TcxRadioButton
          Left = 67
          Top = 4
          Width = 50
          Height = 17
          Caption = #50756#47308
          Checked = True
          TabOrder = 1
          TabStop = True
          Transparent = True
        end
        object chkBubinSttOrdCancel: TcxRadioButton
          Left = 125
          Top = 4
          Width = 50
          Height = 17
          Caption = #52712#49548
          TabOrder = 2
          Transparent = True
        end
        object chkBubinSttOrdReq: TcxRadioButton
          Left = 190
          Top = 5
          Width = 49
          Height = 17
          Caption = #47928#51032
          TabOrder = 3
          Transparent = True
        end
      end
      object Panel6: TPanel
        Left = 457
        Top = 61
        Width = 222
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 29
        object Shape15: TShape
          Left = 0
          Top = 0
          Width = 222
          Height = 24
          Align = alClient
          Pen.Color = 12566402
        end
        object chkBubinSttPayTotal: TcxRadioButton
          Left = 6
          Top = 4
          Width = 48
          Height = 17
          Caption = #51204#52404
          TabOrder = 0
          Transparent = True
        end
        object chkBubinSttPayAfter: TcxRadioButton
          Left = 56
          Top = 4
          Width = 49
          Height = 17
          Caption = #54980#48520
          Checked = True
          TabOrder = 1
          TabStop = True
          Transparent = True
        end
        object chkBubinSttPayTick: TcxRadioButton
          Left = 106
          Top = 4
          Width = 49
          Height = 17
          Caption = #50808#49345
          TabOrder = 2
          Transparent = True
        end
        object chkBubinSttPayCash: TcxRadioButton
          Left = 156
          Top = 4
          Width = 49
          Height = 17
          Caption = #54788#44552
          TabOrder = 3
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 83
        Top = 113
        Width = 292
        Height = 24
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 30
        object Shape11: TShape
          Left = 0
          Top = 0
          Width = 292
          Height = 24
          Align = alClient
          Pen.Color = 12566402
          ExplicitLeft = 9
          ExplicitTop = 2
          ExplicitWidth = 221
        end
        object cxRadioButton7: TcxRadioButton
          Left = 6
          Top = 5
          Width = 49
          Height = 17
          Caption = #51204#52404
          TabOrder = 0
          Transparent = True
        end
        object cxRadioButton8: TcxRadioButton
          Left = 67
          Top = 5
          Width = 48
          Height = 17
          Caption = #46321#47197
          Checked = True
          TabOrder = 1
          TabStop = True
          Transparent = True
        end
        object cxRadioButton9: TcxRadioButton
          Left = 125
          Top = 5
          Width = 161
          Height = 17
          Caption = #48120#46321#47197'('#48277#51064#53076#46300' '#48120#46321#47197')'
          TabOrder = 2
          Transparent = True
        end
      end
      object chkBubinStt: TCheckBox
        Left = 31
        Top = 148
        Width = 49
        Height = 17
        Caption = #52404#53356
        TabOrder = 31
        Visible = False
      end
      object cxLabel54: TcxLabel
        Left = 30
        Top = 12
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
        AnchorX = 55
        AnchorY = 21
      end
    end
    object pnlBubinAccPrt: TPanel
      Left = -41
      Top = 187
      Width = 841
      Height = 449
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '   '#50689#49688#51613' '#52636#47141
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnMouseMove = cxGroupBox3MouseMove
        Height = 445
        Width = 837
        object Shape19: TShape
          Left = 388
          Top = 17
          Width = 221
          Height = 22
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object cxLabel10: TcxLabel
          Left = 12
          Top = 43
          Caption = '2. '#51064#53552#45367' '#51061#49828#54540#47196#50612' ['#46020#44396']-['#50741#49496']-['#44256#44553']-['#51064#49604']-['#48176#44221#49353#48143' '#51060#48120#51648' '#51064#49604'] '#52404#53356#54616#49884#44256' '#51064#49604#54616#49464#50836
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.TextColor = 10485760
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorY = 51
        end
        object cxLabel6: TcxLabel
          Left = 391
          Top = 20
          Caption = #51204#52404'page'
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 419
          AnchorY = 28
        end
        object cxLabel7: TcxLabel
          Left = 454
          Top = 16
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 12189690
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 24
          Width = 54
          AnchorX = 481
          AnchorY = 28
        end
        object cxLabel9: TcxLabel
          Left = 12
          Top = 22
          Caption = '1. '#49440#53469#54620' '#54168#51060#51648#47564' '#52636#47141#51060' '#46121#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 16441805
          Style.TextColor = 10485760
          Style.TextStyle = [fsBold]
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorY = 30
        end
        object cxcbBubinAccPage: TcxComboBox
          Left = 508
          Top = 16
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Height = 24
          Width = 121
        end
        object cxBtnPriv: TcxButton
          Left = 630
          Top = 17
          Width = 50
          Height = 40
          Cursor = crHandPoint
          Caption = #48120#47532#48372#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 5
          OnClick = cxBtnPrivClick
        end
        object cxButton4: TcxButton
          Left = 732
          Top = 17
          Width = 50
          Height = 40
          Cursor = crHandPoint
          Caption = #54028#51068#51200#51109
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 6
          OnClick = cxButton4Click
        end
        object sb_Cancel_Can: TcxButton
          Left = 783
          Top = 17
          Width = 50
          Height = 40
          Cursor = crHandPoint
          Caption = #45803'  '#44592
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 7
          OnClick = sb_Cancel_CanClick
        end
        object sb_Cancel_comm: TcxButton
          Left = 681
          Top = 17
          Width = 50
          Height = 40
          Cursor = crHandPoint
          Caption = #51064'  '#49604
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 8
          OnClick = sb_Cancel_commClick
        end
        object lbbubinAccPrintList: TListBox
          Left = 16
          Top = 96
          Width = 121
          Height = 97
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 12
          TabOrder = 9
          Visible = False
        end
        object Panel4: TPanel
          Left = 37
          Top = 71
          Width = 762
          Height = 364
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 10
          object WebBrowser1: TWebBrowser
            Left = 0
            Top = 0
            Width = 758
            Height = 360
            Align = alClient
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 2
            ExplicitWidth = 761
            ExplicitHeight = 358
            ControlData = {
              4C000000574E0000352500000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
      end
    end
    object pnl_BubinAccStatus: TPanel
      Left = 731
      Top = 493
      Width = 256
      Height = 102
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16444898
      TabOrder = 2
      Visible = False
      DesignSize = (
        252
        98)
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = '   '#51089#50629#51652#54665
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnMouseMove = cxGroupBox2MouseMove
        Height = 98
        Width = 252
        object Shape17: TShape
          Left = 7
          Top = 25
          Width = 106
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape18: TShape
          Left = 124
          Top = 25
          Width = 106
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Gauge1: TAdvProgressBar
          Left = 7
          Top = 56
          Width = 235
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Level0ColorTo = 14811105
          Level1ColorTo = 13303807
          Level2Color = 5483007
          Level2ColorTo = 11064319
          Level3ColorTo = 13290239
          Level1Perc = 70
          Level2Perc = 90
          Position = 0
          ShowBorder = True
          Version = '1.2.1.1'
        end
        object cxLabel2: TcxLabel
          Left = 13
          Top = 30
          Caption = #51204#52404#44148#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 39
          AnchorY = 38
        end
        object cxLabel3: TcxLabel
          Left = 133
          Top = 30
          Caption = #50756#47308#44148#49688
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 159
          AnchorY = 38
        end
        object cxLabel4: TcxLabel
          Left = 73
          Top = 24
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 12189690
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 49
          AnchorX = 98
          AnchorY = 37
        end
        object cxLabel5: TcxLabel
          Left = 193
          Top = 24
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 65408
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 26
          Width = 49
          AnchorX = 218
          AnchorY = 37
        end
      end
      object btnClose: TcxButton
        Left = 231
        Top = 1
        Width = 19
        Height = 20
        Cursor = crHandPoint
        Hint = #45803#44592
        Anchors = [akTop, akRight]
        Colors.Default = 16635384
        Colors.Normal = 16773362
        Colors.Hot = 16360076
        Colors.Pressed = 16644080
        Colors.Disabled = 4227327
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
        OnClick = btnCloseClick
      end
    end
    object cxBrNo10: TcxTextEdit
      Left = 862
      Top = 320
      Style.Color = 15456255
      TabOrder = 4
      Text = #51648#49324#53076#46300
      Visible = False
      Width = 54
    end
    object cxHdNo10: TcxTextEdit
      Left = 915
      Top = 320
      Style.Color = 15456255
      TabOrder = 5
      Text = #48376#49324#53076#46300
      Visible = False
      Width = 54
    end
  end
  object pop_date2: TPopupMenu
    AutoHotkeys = maManual
    AutoPopup = False
    Left = 580
    Top = 428
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
    Left = 324
    Top = 580
    object MenuItem10: TMenuItem
      Caption = #50641#49472#51200#51109
      OnClick = MenuItem10Click
    end
  end
end

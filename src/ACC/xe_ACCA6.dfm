object Frm_ACCA6: TFrm_ACCA6
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
          Width = 163
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
        end
        object Shape3: TShape
          Left = 240
          Top = 33
          Width = 117
          Height = 24
          Pen.Color = 12566402
          Shape = stRoundRect
          Visible = False
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
        object lblSosokNameA6: TcxLabel
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
        object btnSearchA6: TcxButton
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
          TabOrder = 2
          OnClick = btnSearchA6Click
        end
        object btnExcelA6: TcxButton
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
          TabOrder = 3
          OnClick = btnExcelA6Click
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 37
          Caption = #51312#54924#45380#50900
          ParentColor = False
          Style.TextColor = clBlack
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          AnchorX = 42
          AnchorY = 45
        end
        object cxSEYYA6: TcxSpinEdit
          Left = 83
          Top = 32
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 3000.000000000000000000
          Properties.MinValue = 2000.000000000000000000
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Value = 2008
          Height = 26
          Width = 60
        end
        object cxSEMMA6: TcxSpinEdit
          Left = 147
          Top = 32
          AutoSize = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CanEdit = False
          Properties.MaxValue = 12.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Value = 12
          Height = 26
          Width = 40
        end
        object cxCBA6: TcxComboBox
          Left = 205
          Top = 32
          TabStop = False
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #44592#49324#49324#48264
            #44592#49324#47749
            #51204#54868#48264#54840)
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Text = #44592#49324#49324#48264
          Visible = False
          Height = 26
          Width = 83
        end
        object cxSEdtA6: TcxTextEdit
          Left = 290
          Top = 32
          AutoSize = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.Color = 11796479
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Visible = False
          Height = 26
          Width = 114
        end
        object cxLabel38: TcxLabel
          Left = 412
          Top = 41
          Caption = #8251' '#51312#54924#46108' '#47785#47197#51012' '#45908#48660#53364#47533#54616#49884#47732'  '#45225#48512#54620' '#44592#49324#47532#49828#53944#47484' '#48372#49892' '#49688' '#51080#49845#45768#45796'.'
          ParentColor = False
          Style.BorderStyle = ebsNone
          Style.Color = 13483435
          Style.TextColor = clBlue
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorY = 49
        end
      end
      object GridA6: TcxGrid
        Left = 0
        Top = 65
        Width = 1003
        Height = 651
        Align = alClient
        PopupMenu = PopupMenu3
        TabOrder = 1
        TabStop = False
        LookAndFeel.NativeStyle = True
        object GridA6View: TcxGridDBTableView
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
          OnCellDblClick = GridA6ViewCellDblClick
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn7
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn8
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn9
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn10
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn5
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = GridA6ViewColumn6
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnSortingChanged = GridA6ViewDataControllerSortingChanged
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OnColumnHeaderClick = GridA6ViewColumnHeaderClick
          object GridA6ViewColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'No'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object GridA6ViewColumn1: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 163
          end
          object GridA6ViewColumn2: TcxGridDBColumn
            DataBinding.FieldName = #48376#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA6ViewColumn3: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#47749
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 164
          end
          object GridA6ViewColumn4: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#53076#46300
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 54
          end
          object GridA6ViewColumn5: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#49688#51204#52404
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object GridA6ViewColumn6: TcxGridDBColumn
            DataBinding.FieldName = #44592#49324#45225#48512#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 92
          end
          object GridA6ViewColumn7: TcxGridDBColumn
            DataBinding.FieldName = #51648#49324#45225#48512#49688
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object GridA6ViewColumn8: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529'('#44592#49324')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object GridA6ViewColumn9: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529'('#51648#49324')'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 109
          end
          object GridA6ViewColumn10: TcxGridDBColumn
            DataBinding.FieldName = #45225#48512#50529#54633#44228
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0;-,0'
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
        end
        object GridA6Level: TcxGridLevel
          GridView = GridA6View
        end
      end
    end
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = PopupMenu3Popup
    Left = 166
    Top = 371
    object N1: TMenuItem
      Caption = #50641#49472#45796#50868
    end
    object N2: TMenuItem
      Caption = #51648#49324#48324' '#52880#49772#45236#50669
    end
    object N11: TMenuItem
      Caption = #44592#49324#48324#54532#47196#44536#47016#49324#50857#45236#50669
      OnClick = N11Click
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

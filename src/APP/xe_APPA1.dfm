object Frm_APPA1: TFrm_APPA1
  Left = 2663
  Top = 123
  BorderStyle = bsNone
  Caption = 'Frm_APPA1'
  ClientHeight = 742
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
    Width = 1124
    Height = 742
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object sbPanel1: TAdvScrollBox
      Left = 0
      Top = 0
      Width = 1124
      Height = 742
      VertScrollBar.Position = 339
      VertScrollBar.Smooth = True
      VertScrollBar.Tracking = True
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      Ctl3D = False
      ParentCtl3D = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object bvl1: TBevel
        Left = 11
        Top = 150
        Width = 954
        Height = 590
        Shape = bsFrame
      end
      object lbl1: TLabel
        Left = 307
        Top = 155
        Width = 344
        Height = 12
        Caption = #9758' '#54392#49884' '#49444#51221' '#48320#44221' '#49884#50640#45716'  CID'#49436#48260' '#51116#50672#44208' '#46608#45716' '#51116#49884#51089' '#54644#50556' '#54632'.'
      end
      object lbl4: TLabel
        Left = 394
        Top = 183
        Width = 19
        Height = 12
        Caption = 'lbl4'
        Visible = False
      end
      object cxLabel45: TcxLabel
        Left = 174
        Top = 105
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 42
        Width = 791
        AnchorX = 570
        AnchorY = 126
      end
      object cxLabel30: TcxLabel
        Left = 174
        Top = 149
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 26
        Width = 129
        AnchorX = 239
        AnchorY = 162
      end
      object cxLabel13: TcxLabel
        Left = 505
        Top = -169
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 77
        Width = 460
        AnchorX = 735
        AnchorY = -130
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = -326
        AutoSize = False
        Caption = #49444#51221#51648#49324
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 75
        AnchorX = 48
        AnchorY = -315
      end
      object lbCustCompany01: TcxLabel
        Left = 89
        Top = -326
        AutoSize = False
        Caption = #49548#49549
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.TextColor = 13719147
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 328
        AnchorX = 253
        AnchorY = -315
      end
      object btn1: TcxButton
        Left = 903
        Top = -326
        Width = 60
        Height = 46
        Cursor = crHandPoint
        Caption = #49688#51221
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 5
        OnClick = btn1Click
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = -276
        AutoSize = False
        Caption = #44396'        '#48516
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 75
        AnchorX = 48
        AnchorY = -265
      end
      object cxLabel5: TcxLabel
        Left = 174
        Top = -276
        AutoSize = False
        Caption = #49444#51221#44050
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 328
        AnchorX = 338
        AnchorY = -265
      end
      object cxLabel6: TcxLabel
        Left = 505
        Top = -276
        AutoSize = False
        Caption = #49444' '#47749
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 460
        AnchorX = 735
        AnchorY = -265
      end
      object cxLabel7: TcxLabel
        Left = 10
        Top = -252
        AutoSize = False
        Caption = #47560#51068#47532#51648
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 81
        Width = 75
        AnchorX = 48
        AnchorY = -211
      end
      object cxLabel11: TcxLabel
        Left = 89
        Top = -252
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 81
        Width = 412
        AnchorX = 295
        AnchorY = -211
      end
      object cxLabel14: TcxLabel
        Left = 505
        Top = -252
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 81
        Width = 460
        AnchorX = 735
        AnchorY = -211
      end
      object pnl2: TPanel
        Left = 94
        Top = -236
        Width = 400
        Height = 19
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 12
        object Label1: TLabel
          Left = 33
          Top = 6
          Width = 70
          Height = 12
          Caption = '- '#54788#44552#50756#47308#49884
        end
        object rg_charge_ser1: TcxRadioButton
          Left = 126
          Top = 1
          Width = 43
          Height = 17
          Caption = #50630#51020
          Checked = True
          Enabled = False
          TabOrder = 0
          TabStop = True
          OnClick = rg_charge_ser1Click
          Transparent = True
        end
        object rg_charge_ser2: TcxRadioButton
          Left = 172
          Top = 1
          Width = 45
          Height = 17
          Caption = #51221#50529
          Enabled = False
          TabOrder = 1
          OnClick = rg_charge_ser1Click
          Transparent = True
        end
        object rg_charge_ser3: TcxRadioButton
          Left = 217
          Top = 1
          Width = 44
          Height = 17
          Caption = #51221#47456
          Enabled = False
          TabOrder = 2
          OnClick = rg_charge_ser1Click
          Transparent = True
        end
        object cxCurrencyEdit2: TcxCurrencyEdit
          Left = 275
          Top = -1
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 3
          OnExit = cxCurrencyEdit2Exit
          Width = 80
        end
        object cxLabel22: TcxLabel
          Left = 355
          Top = 1
          Caption = #50896
          Transparent = True
        end
      end
      object cxLabel18: TcxLabel
        Left = 509
        Top = -245
        Caption = #51221#50529' : '#50756#47308#50724#45908#45817' '#51068#51221' '#44552#50529'('#51216#49688')'#51012' '#47560#51068#47532#51648#47196' '#48512#50668#54632'.'
        Transparent = True
      end
      object cxLabel19: TcxLabel
        Left = 509
        Top = -230
        Caption = #51221#47456' : '#50756#47308#50724#45908#51032' '#50868#54665#50836#44552#51032' '#51068#51221' %'#47484' '#47560#51068#47532#51648#47196' '#48512#50668#54632'.'
        Transparent = True
      end
      object cxLabel24: TcxLabel
        Left = 10
        Top = -301
        AutoSize = False
        Caption = #50545#53440#51060#53952
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 75
        AnchorX = 48
        AnchorY = -290
      end
      object Edt_AppTitle: TcxTextEdit
        Left = 89
        Top = -301
        AutoSize = False
        Enabled = False
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 16
        Height = 21
        Width = 750
      end
      object cxLabel25: TcxLabel
        Left = 419
        Top = -326
        AutoSize = False
        Caption = #45824#54364#48264#54840
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 83
        AnchorX = 461
        AnchorY = -315
      end
      object cxLabel9: TcxLabel
        Left = 10
        Top = -89
        AutoSize = False
        Caption = #50836#44552#54801#49345
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 56
        Width = 75
        AnchorX = 48
        AnchorY = -61
      end
      object cxLabel4: TcxLabel
        Left = 174
        Top = -89
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 56
        Width = 128
        AnchorX = 238
        AnchorY = -61
      end
      object cxLabel96: TcxLabel
        Left = 89
        Top = -276
        AutoSize = False
        Caption = #49464#48512#49324#54637
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 21
        Width = 82
        AnchorX = 130
        AnchorY = -265
      end
      object cxLabel8: TcxLabel
        Left = 89
        Top = -89
        AutoSize = False
        Caption = #49324#50857#50668#48512
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 56
        Width = 82
        AnchorX = 130
        AnchorY = -61
      end
      object cxLabel16: TcxLabel
        Left = 10
        Top = -31
        AutoSize = False
        Caption = #52852#46300#44208#51228
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 134
        Width = 75
        AnchorX = 48
        AnchorY = 36
      end
      object cxLabel17: TcxLabel
        Left = 174
        Top = -31
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 133
        Width = 128
        AnchorX = 238
        AnchorY = 36
      end
      object cxLabel20: TcxLabel
        Left = 89
        Top = -31
        AutoSize = False
        Caption = #49324#50857#50668#48512
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 134
        Width = 82
        AnchorX = 130
        AnchorY = 36
      end
      object cxLabel27: TcxLabel
        Left = 10
        Top = 149
        AutoSize = False
        Caption = 'CID '#54392#49884
        ParentColor = False
        Style.BorderColor = 13088607
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = clNavy
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 591
        Width = 75
        AnchorX = 48
        AnchorY = 445
      end
      object cxLabel32: TcxLabel
        Left = 89
        Top = 204
        AutoSize = False
        Caption = #54392#49884#49444#51221
        ParentColor = False
        Style.BorderColor = 13088607
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = clNavy
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 536
        Width = 82
        AnchorX = 130
        AnchorY = 472
      end
      object cxLabel41: TcxLabel
        Left = 89
        Top = 177
        AutoSize = False
        Caption = #49436#48708#49828#49440#53469
        ParentColor = False
        Style.BorderColor = 13088607
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = clNavy
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 25
        Width = 82
        AnchorX = 130
        AnchorY = 190
      end
      object cxLabel43: TcxLabel
        Left = 10
        Top = 105
        AutoSize = False
        Caption = #50545' '#54392#49884
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 42
        Width = 75
        AnchorX = 48
        AnchorY = 126
      end
      object cxLabel44: TcxLabel
        Left = 89
        Top = 105
        AutoSize = False
        Caption = #54392#49884#49444#51221
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 42
        Width = 82
        AnchorX = 130
        AnchorY = 126
      end
      object Cb_AppChk1: TcxCheckBox
        Left = 177
        Top = 107
        Caption = '  '#50545#51004#47196' '#51217#49688' '#49884' '#48156#49569' - '#44256#44061#50857' '#50612#54540#49444#52824' '#44256#44061#50640#44172' '#53084' '#51652#54665' '#49345#53468' '#54392#49884'('#51217#49688', '#48176#52264', '#52712#49548' '#49345#53468' '#54392#49884')'
        Enabled = False
        TabOrder = 30
        Transparent = True
      end
      object pnl4: TPanel
        Left = 176
        Top = -87
        Width = 124
        Height = 52
        BevelOuter = bvNone
        Color = 16444898
        TabOrder = 31
        object rg_charge_ser4: TcxRadioButton
          Left = 3
          Top = 17
          Width = 47
          Height = 17
          Caption = #49324#50857
          Enabled = False
          TabOrder = 0
          OnClick = rg_charge_ser4Click
          Transparent = True
        end
        object rg_charge_ser5: TcxRadioButton
          Left = 52
          Top = 17
          Width = 70
          Height = 17
          Caption = #49324#50857#50504#54632
          Checked = True
          Enabled = False
          TabOrder = 1
          TabStop = True
          OnClick = rg_charge_ser4Click
          Transparent = True
        end
      end
      object pnl5: TPanel
        Left = 177
        Top = 21
        Width = 123
        Height = 21
        BevelOuter = bvNone
        Color = 16444898
        TabOrder = 32
        object rg_charge_ser6: TcxRadioButton
          Left = 2
          Top = 4
          Width = 47
          Height = 17
          Caption = #49324#50857
          Enabled = False
          TabOrder = 0
          OnClick = rg_charge_ser6Click
          Transparent = True
        end
        object rg_charge_ser7: TcxRadioButton
          Left = 51
          Top = 4
          Width = 70
          Height = 17
          Caption = #49324#50857#50504#54632
          Checked = True
          Enabled = False
          TabOrder = 1
          TabStop = True
          OnClick = rg_charge_ser6Click
          Transparent = True
        end
      end
      object cxHdNo: TcxTextEdit
        Left = 867
        Top = -47
        Style.Color = 15456255
        TabOrder = 33
        Text = #48376#49324#53076#46300
        Visible = False
        Width = 54
      end
      object cxBrNo: TcxTextEdit
        Left = 867
        Top = 15
        Style.Color = 15456255
        TabOrder = 34
        Text = #51648#49324#53076#46300
        Visible = False
        Width = 54
      end
      object Pnl_Card: TPanel
        Left = 303
        Top = -32
        Width = 372
        Height = 134
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 35
        object lb_map: TcxListBox
          Left = 213
          Top = 23
          Width = 158
          Height = 111
          Enabled = False
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 12
          Items.Strings = (
            #47215#45936#52852#46300
            #49888#54620#52852#46300
            #44397#48124#52852#46300
            #49340#49457#52852#46300
            #50472#54000#52852#46300
            'BC'#52852#46300'('#50864#52404#44397#52404#53356#52852#46300')'
            'NH'#52852#46300
            #54788#45824#52852#46300
            #50808#54872#52852#46300
            #54616#45208'SK'#52852#46300
            #51204#48513#51008#54665
            #44305#51452#51008#54665
            #51228#51452#51008#54665
            #49688#54801#52852#46300
            #49328#50629#51008#54665#52852#46300)
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #44404#47548#52404
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object btn3: TcxButton
          Tag = 2
          Left = 163
          Top = 34
          Width = 48
          Height = 32
          Cursor = crHandPoint
          Caption = '<-'
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn4Click
        end
        object lb_sel_map: TcxListBox
          Left = 2
          Top = 23
          Width = 158
          Height = 111
          DragMode = dmAutomatic
          Enabled = False
          ImeName = 'Microsoft Office IME 2007'
          ItemHeight = 12
          Style.Color = 16771538
          TabOrder = 2
        end
        object btn4: TcxButton
          Tag = 1
          Left = 163
          Top = 100
          Width = 48
          Height = 32
          Cursor = crHandPoint
          Caption = 'DEL'
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn4Click
        end
        object btn5: TcxButton
          Tag = 3
          Left = 163
          Top = 67
          Width = 48
          Height = 32
          Cursor = crHandPoint
          Caption = '<<-'
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Layout = blGlyphBottom
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn4Click
        end
        object cxLabel21: TcxLabel
          Left = 2
          Top = 2
          AutoSize = False
          Caption = #51201#50857#52852#46300
          ParentColor = False
          Style.BorderColor = 5811619
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 20
          Width = 158
          AnchorX = 81
          AnchorY = 12
        end
        object cxLabel26: TcxLabel
          Left = 213
          Top = 2
          AutoSize = False
          Caption = #52852#46300#51333#47448
          ParentColor = False
          Style.BorderColor = 5811619
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 20
          Width = 158
          AnchorX = 292
          AnchorY = 12
        end
      end
      object Pnl_Charge: TPanel
        Left = 304
        Top = -89
        Width = 197
        Height = 57
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 36
        object lbl2: TLabel
          Left = 164
          Top = 8
          Width = 12
          Height = 12
          Caption = #52488
        end
        object cxLabel10: TcxLabel
          Left = 106
          Top = 0
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 28
          Width = 92
          AnchorX = 152
          AnchorY = 14
        end
        object cxLabel12: TcxLabel
          Left = 1
          Top = 0
          AutoSize = False
          Caption = #51648#50672#49884#44036#49444#51221
          ParentColor = False
          Style.BorderColor = 5811619
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 27
          Width = 101
          AnchorX = 52
          AnchorY = 14
        end
        object cxLabel15: TcxLabel
          Left = 1
          Top = 29
          AutoSize = False
          Caption = #52628#44032#44552#50529#49444#51221
          ParentColor = False
          Style.BorderColor = 5811619
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.TextColor = 16512
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 27
          Width = 101
          AnchorX = 52
          AnchorY = 43
        end
        object cxCurrencyEdit1: TcxCurrencyEdit
          Left = 107
          Top = 33
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 3
          OnExit = cxCurrencyEdit2Exit
          Width = 80
        end
        object Se_Key_Number1: TcxSpinEdit
          Left = 114
          Top = 4
          Enabled = False
          Properties.Increment = 30.000000000000000000
          Properties.LargeIncrement = 30.000000000000000000
          Properties.MaxValue = 3000.000000000000000000
          Properties.MinValue = 30.000000000000000000
          TabOrder = 4
          Value = 30
          Width = 44
        end
      end
      object Pnl_Cid: TPanel
        Left = 174
        Top = 204
        Width = 786
        Height = 534
        BevelOuter = bvNone
        Enabled = False
        ParentColor = True
        TabOrder = 37
        object cxLabel38: TcxLabel
          Left = 0
          Top = 357
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 179
          Width = 786
          AnchorX = 393
          AnchorY = 447
        end
        object cxLabel35: TcxLabel
          Left = 0
          Top = 177
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 178
          Width = 786
          AnchorX = 393
          AnchorY = 266
        end
        object cxLabel33: TcxLabel
          Left = 0
          Top = 0
          AutoSize = False
          ParentColor = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 16441805
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Transparent = True
          Height = 176
          Width = 786
          AnchorX = 393
          AnchorY = 88
        end
        object OF_Edt1: TcxTextEdit
          Left = 94
          Top = 24
          Enabled = False
          ImeMode = imSHanguel
          ParentShowHint = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 40
          ShowHint = False
          TabOrder = 3
          Text = #44032#45208#45796#46972#47560#48148#49324#50500#51088#52264#44032#45208#45796#46972#47560#48148#49324#50500#51088#52264
          Width = 259
        end
        object cxLabel34: TcxLabel
          Left = 11
          Top = 24
          AutoSize = False
          Caption = #54392' '#49884' '#45236' '#50857
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 35
        end
        object CE_Edt1: TcxTextEdit
          Left = 94
          Top = 201
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          TabOrder = 5
          Width = 259
        end
        object cxLabel36: TcxLabel
          Left = 11
          Top = 201
          AutoSize = False
          Caption = #54392' '#49884' '#45236' '#50857
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 212
        end
        object cxLabel37: TcxLabel
          Left = 11
          Top = 381
          AutoSize = False
          Caption = #54392' '#49884' '#45236' '#50857
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 392
        end
        object NE_Edt1: TcxTextEdit
          Left = 94
          Top = 381
          Enabled = False
          ImeMode = imSHanguel
          ParentShowHint = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 40
          ShowHint = False
          TabOrder = 8
          Width = 259
        end
        object OF_CidChk: TcxCheckBox
          Left = 4
          Top = 2
          Caption = '  '#53084' '#49468#53552' '#51064#51077#53084' '#51204#52404#51204#49569'('#44256#44061#50857' '#50612#54540#49444#52824#50976#46020' '#54392#49884')'
          Enabled = False
          TabOrder = 9
          Transparent = True
          OnClick = OF_CidChkClick
        end
        object CE_CidChk: TcxCheckBox
          Left = 4
          Top = 180
          Caption = '  '#53685#54868' '#44256#44061' '#51333#47308' '#49884
          Enabled = False
          TabOrder = 10
          Transparent = True
          OnClick = CE_CidChkClick
        end
        object NE_CidChk: TcxCheckBox
          Left = 4
          Top = 360
          Caption = '  '#48120#53685#54868' '#44256#44061' '#51333#47308' '#49884
          Enabled = False
          TabOrder = 11
          Transparent = True
          OnClick = NE_CidChkClick
        end
        object cxLabel48: TcxLabel
          Left = 355
          Top = 24
          AutoSize = False
          Caption = #50672#44208#54168#51060#51648
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 396
          AnchorY = 35
        end
        object OF_Edt2: TcxTextEdit
          Left = 438
          Top = 24
          Enabled = False
          ImeMode = imSHanguel
          ParentShowHint = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 200
          ShowHint = False
          TabOrder = 13
          Text = 'http://'
          Width = 344
        end
        object cxLabel49: TcxLabel
          Left = 355
          Top = 201
          AutoSize = False
          Caption = #50672#44208#54168#51060#51648
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 396
          AnchorY = 212
        end
        object CE_Edt2: TcxTextEdit
          Left = 438
          Top = 201
          Enabled = False
          ImeMode = imSHanguel
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 200
          TabOrder = 15
          Text = 'http://'
          Width = 344
        end
        object cxLabel50: TcxLabel
          Left = 355
          Top = 381
          AutoSize = False
          Caption = #50672#44208#54168#51060#51648
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 396
          AnchorY = 392
        end
        object NE_Edt2: TcxTextEdit
          Left = 438
          Top = 381
          Enabled = False
          ImeMode = imSHanguel
          ParentShowHint = False
          Properties.ImeMode = imSHanguel
          Properties.MaxLength = 200
          ShowHint = False
          TabOrder = 17
          Text = 'http://'
          Width = 344
        end
        object cxLabel51: TcxLabel
          Left = 11
          Top = 84
          AutoSize = False
          Caption = #45800#47568#54540#47019#54268
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 95
        end
        object OF_WifiChk: TcxCheckBox
          Left = 94
          Top = 84
          Caption = ' '#54588#52376#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 19
          Transparent = True
        end
        object OF_AndroidChk: TcxCheckBox
          Left = 150
          Top = 84
          Caption = ' '#50504#46300#47196#51060#46300
          Enabled = False
          TabOrder = 20
          Transparent = True
        end
        object OF_IphoneChk: TcxCheckBox
          Left = 264
          Top = 84
          Caption = ' '#50500#51060#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 21
          Transparent = True
        end
        object OF_EtcChk: TcxCheckBox
          Left = 336
          Top = 84
          Caption = ' '#44592#53440
          Enabled = False
          State = cbsChecked
          TabOrder = 22
          Transparent = True
        end
        object cxLabel52: TcxLabel
          Left = 11
          Top = 106
          AutoSize = False
          Caption = #44256' '#44061' '#44396' '#48516
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 117
        end
        object OF_CustChk1: TcxCheckBox
          Left = 94
          Top = 106
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 24
          Transparent = True
        end
        object OF_CustChk2: TcxCheckBox
          Left = 150
          Top = 106
          Caption = ' '#50629#49548
          Enabled = False
          State = cbsChecked
          TabOrder = 25
          Transparent = True
        end
        object OF_CustChk3: TcxCheckBox
          Left = 206
          Top = 106
          Caption = ' '#48277#51064
          Enabled = False
          State = cbsChecked
          TabOrder = 26
          Transparent = True
        end
        object OF_CustChk4: TcxCheckBox
          Left = 264
          Top = 106
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 27
          Transparent = True
        end
        object cxLabel54: TcxLabel
          Left = 11
          Top = 128
          AutoSize = False
          Caption = #44256#44061#46321#44553#53076#46300
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 139
        end
        object OF_CustLevChk1: TcxCheckBox
          Left = 94
          Top = 128
          Caption = ' '#49888#44508
          Enabled = False
          State = cbsChecked
          TabOrder = 29
          Transparent = True
        end
        object OF_CustLevChk2: TcxCheckBox
          Left = 150
          Top = 128
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 30
          Transparent = True
        end
        object OF_CustLevChk3: TcxCheckBox
          Left = 206
          Top = 128
          Caption = ' '#51452#51032
          Enabled = False
          State = cbsChecked
          TabOrder = 31
          Transparent = True
        end
        object OF_CustLevChk4: TcxCheckBox
          Left = 264
          Top = 128
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 32
          Transparent = True
        end
        object OF_CustLevChk5: TcxCheckBox
          Left = 336
          Top = 128
          Caption = ' '#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 33
          Transparent = True
        end
        object OF_CustLevChk6: TcxCheckBox
          Left = 394
          Top = 128
          Caption = ' '#52572#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 34
          Transparent = True
        end
        object OF_CustLevChk7: TcxCheckBox
          Left = 462
          Top = 128
          Caption = ' VIP'
          Enabled = False
          State = cbsChecked
          TabOrder = 35
          Transparent = True
        end
        object OF_Edt_Cnt: TcxCurrencyEdit
          Left = 96
          Top = 151
          EditValue = 0.000000000000000000
          Enabled = False
          Properties.DisplayFormat = ',0'
          TabOrder = 36
          Width = 22
        end
        object cxLabel55: TcxLabel
          Left = 11
          Top = 263
          AutoSize = False
          Caption = #45800#47568#54540#47019#54268
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 274
        end
        object CE_WifiChk: TcxCheckBox
          Left = 94
          Top = 263
          Caption = ' '#54588#52376#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 38
          Transparent = True
        end
        object CE_AndroidChk: TcxCheckBox
          Left = 150
          Top = 263
          Caption = ' '#50504#46300#47196#51060#46300
          Enabled = False
          State = cbsChecked
          TabOrder = 39
          Transparent = True
        end
        object CE_IphoneChk: TcxCheckBox
          Left = 264
          Top = 263
          Caption = ' '#50500#51060#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 40
          Transparent = True
        end
        object CE_EtcChk: TcxCheckBox
          Left = 336
          Top = 263
          Caption = ' '#44592#53440
          Enabled = False
          State = cbsChecked
          TabOrder = 41
          Transparent = True
        end
        object cxLabel56: TcxLabel
          Left = 11
          Top = 285
          AutoSize = False
          Caption = #44256' '#44061' '#44396' '#48516
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 296
        end
        object CE_CustChk1: TcxCheckBox
          Left = 94
          Top = 285
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 43
          Transparent = True
        end
        object CE_CustChk2: TcxCheckBox
          Left = 150
          Top = 285
          Caption = ' '#50629#49548
          Enabled = False
          State = cbsChecked
          TabOrder = 44
          Transparent = True
        end
        object CE_CustChk3: TcxCheckBox
          Left = 206
          Top = 285
          Caption = ' '#48277#51064
          Enabled = False
          State = cbsChecked
          TabOrder = 45
          Transparent = True
        end
        object CE_CustChk4: TcxCheckBox
          Left = 264
          Top = 285
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 46
          Transparent = True
        end
        object cxLabel57: TcxLabel
          Left = 11
          Top = 307
          AutoSize = False
          Caption = #44256#44061#46321#44553#53076#46300
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 318
        end
        object CE_CustLevChk1: TcxCheckBox
          Left = 94
          Top = 307
          Caption = ' '#49888#44508
          Enabled = False
          State = cbsChecked
          TabOrder = 48
          Transparent = True
        end
        object CE_CustLevChk2: TcxCheckBox
          Left = 150
          Top = 307
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 49
          Transparent = True
        end
        object CE_CustLevChk3: TcxCheckBox
          Left = 206
          Top = 307
          Caption = ' '#51452#51032
          Enabled = False
          State = cbsChecked
          TabOrder = 50
          Transparent = True
        end
        object CE_CustLevChk4: TcxCheckBox
          Left = 264
          Top = 307
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 51
          Transparent = True
        end
        object CE_CustLevChk5: TcxCheckBox
          Left = 336
          Top = 307
          Caption = ' '#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 52
          Transparent = True
        end
        object CE_CustLevChk6: TcxCheckBox
          Left = 394
          Top = 307
          Caption = ' '#52572#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 53
          Transparent = True
        end
        object CE_CustLevChk7: TcxCheckBox
          Left = 462
          Top = 307
          Caption = ' VIP'
          Enabled = False
          State = cbsChecked
          TabOrder = 54
          Transparent = True
        end
        object CE_Edt_Cnt: TcxCurrencyEdit
          Left = 96
          Top = 329
          EditValue = 0.000000000000000000
          Enabled = False
          Properties.DisplayFormat = ',0'
          TabOrder = 55
          Width = 22
        end
        object cxLabel58: TcxLabel
          Left = 11
          Top = 444
          AutoSize = False
          Caption = #45800#47568#54540#47019#54268
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 455
        end
        object NE_WifiChk: TcxCheckBox
          Left = 94
          Top = 444
          Caption = ' '#54588#52376#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 57
          Transparent = True
        end
        object NE_AndroidChk: TcxCheckBox
          Left = 150
          Top = 444
          Caption = ' '#50504#46300#47196#51060#46300
          Enabled = False
          State = cbsChecked
          TabOrder = 58
          Transparent = True
        end
        object NE_IphoneChk: TcxCheckBox
          Left = 264
          Top = 444
          Caption = ' '#50500#51060#54256
          Enabled = False
          State = cbsChecked
          TabOrder = 59
          Transparent = True
        end
        object NE_EtcChk: TcxCheckBox
          Left = 336
          Top = 444
          Caption = ' '#44592#53440
          Enabled = False
          State = cbsChecked
          TabOrder = 60
          Transparent = True
        end
        object cxLabel59: TcxLabel
          Left = 11
          Top = 466
          AutoSize = False
          Caption = #44256' '#44061' '#44396' '#48516
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 477
        end
        object NE_CustChk1: TcxCheckBox
          Left = 94
          Top = 466
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 62
          Transparent = True
        end
        object NE_CustChk2: TcxCheckBox
          Left = 150
          Top = 466
          Caption = ' '#50629#49548
          Enabled = False
          State = cbsChecked
          TabOrder = 63
          Transparent = True
        end
        object NE_CustChk3: TcxCheckBox
          Left = 206
          Top = 466
          Caption = ' '#48277#51064
          Enabled = False
          State = cbsChecked
          TabOrder = 64
          Transparent = True
        end
        object NE_CustChk4: TcxCheckBox
          Left = 264
          Top = 466
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 65
          Transparent = True
        end
        object cxLabel60: TcxLabel
          Left = 11
          Top = 488
          AutoSize = False
          Caption = #44256#44061#46321#44553#53076#46300
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 499
        end
        object NE_CustLevChk1: TcxCheckBox
          Left = 94
          Top = 488
          Caption = ' '#49888#44508
          Enabled = False
          State = cbsChecked
          TabOrder = 67
          Transparent = True
        end
        object NE_CustLevChk2: TcxCheckBox
          Left = 150
          Top = 488
          Caption = ' '#48520#47049
          Enabled = False
          TabOrder = 68
          Transparent = True
        end
        object NE_CustLevChk3: TcxCheckBox
          Left = 206
          Top = 488
          Caption = ' '#51452#51032
          Enabled = False
          State = cbsChecked
          TabOrder = 69
          Transparent = True
        end
        object NE_CustLevChk4: TcxCheckBox
          Left = 264
          Top = 488
          Caption = ' '#51068#48152
          Enabled = False
          State = cbsChecked
          TabOrder = 70
          Transparent = True
        end
        object NE_CustLevChk5: TcxCheckBox
          Left = 336
          Top = 488
          Caption = ' '#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 71
          Transparent = True
        end
        object NE_CustLevChk6: TcxCheckBox
          Left = 394
          Top = 488
          Caption = ' '#52572#50864#49688
          Enabled = False
          State = cbsChecked
          TabOrder = 72
          Transparent = True
        end
        object NE_CustLevChk7: TcxCheckBox
          Left = 462
          Top = 488
          Caption = ' VIP'
          Enabled = False
          State = cbsChecked
          TabOrder = 73
          Transparent = True
        end
        object NE_Edt_Cnt: TcxCurrencyEdit
          Left = 96
          Top = 511
          EditValue = 0.000000000000000000
          Enabled = False
          Properties.DisplayFormat = ',0'
          TabOrder = 74
          Width = 22
        end
        object cxLabel39: TcxLabel
          Left = 11
          Top = 151
          AutoSize = False
          Caption = #50756' '#47308' '#44148' '#49688
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 162
        end
        object cxLabel61: TcxLabel
          Left = 120
          Top = 154
          Caption = #44148' '#51060#49345' '#44256#44061' '#48156#49569
          Enabled = False
          Transparent = True
        end
        object cxLabel62: TcxLabel
          Left = 11
          Top = 328
          AutoSize = False
          Caption = #50756' '#47308' '#44148' '#49688
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 339
        end
        object cxLabel64: TcxLabel
          Left = 120
          Top = 330
          Caption = #44148' '#51060#49345' '#44256#44061' '#48156#49569
          Enabled = False
          Transparent = True
        end
        object cxLabel65: TcxLabel
          Left = 11
          Top = 511
          AutoSize = False
          Caption = #50756' '#47308' '#44148' '#49688
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = 14143118
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ShadowedColor = clGray
          Height = 21
          Width = 82
          AnchorX = 52
          AnchorY = 522
        end
        object cxLabel66: TcxLabel
          Left = 120
          Top = 514
          Caption = #44148' '#51060#49345' '#44256#44061' '#48156#49569
          Enabled = False
          Transparent = True
        end
        object OF_CustChk5: TcxCheckBox
          Left = 336
          Top = 154
          Caption = ' '#44592#49324#54252#54632
          Enabled = False
          State = cbsChecked
          TabOrder = 81
          Transparent = True
        end
        object CE_CustChk5: TcxCheckBox
          Left = 336
          Top = 330
          Caption = ' '#44592#49324#54252#54632
          Enabled = False
          State = cbsChecked
          TabOrder = 82
          Transparent = True
        end
        object NE_CustChk5: TcxCheckBox
          Left = 336
          Top = 514
          Caption = ' '#44592#49324#54252#54632
          Enabled = False
          State = cbsChecked
          TabOrder = 83
          Transparent = True
        end
        object pnl8: TPanel
          Left = 9
          Top = 45
          Width = 745
          Height = 38
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 84
          object OF_OneDaychk: TcxRadioButton
            Left = 2
            Top = 4
            Width = 557
            Height = 15
            Caption = '  '#44256#44061#45817' '#52572#52488' 1'#44148' '#48156#49569' '#54980'         '#51068#44036' '#48120#48156#49569'('#51077#47141#51068#46041#50504' '#48156#49569#51228#54620#46104#47728' 09'#49884#44592#51456#51004#47196' '#51201#50857#46121#45768#45796'.) '
            Checked = True
            Enabled = False
            TabOrder = 0
            TabStop = True
            OnClick = OF_OneDaychkClick
            Transparent = True
          end
          object OF_DAY: TcxCurrencyEdit
            Left = 168
            Top = 0
            EditValue = 1.000000000000000000
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            TabOrder = 1
            Width = 22
          end
          object OF_ALLDaychk: TcxRadioButton
            Left = 2
            Top = 22
            Width = 375
            Height = 15
            Caption = '  '#44256#44061#45817' '#47784#46160' '#48156#49569'('#44256#44061#51060' '#53084#49468#53552' '#51204#54868#49884' '#47784#46160'('#47588#48264') '#51204#49569#46121#45768#45796'.)'
            Enabled = False
            TabOrder = 2
            TabStop = True
            Transparent = True
          end
        end
        object pnl9: TPanel
          Left = 9
          Top = 221
          Width = 745
          Height = 38
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 85
          object CE_OneDaychk: TcxRadioButton
            Left = 2
            Top = 7
            Width = 557
            Height = 15
            Caption = '  '#44256#44061#45817' '#52572#52488' 1'#44148' '#48156#49569' '#54980'         '#51068#44036' '#48120#48156#49569'('#51077#47141#51068#46041#50504' '#48156#49569#51228#54620#46104#47728' 09'#49884#44592#51456#51004#47196' '#51201#50857#46121#45768#45796'.) '
            Checked = True
            Enabled = False
            TabOrder = 0
            TabStop = True
            OnClick = CE_OneDaychkClick
            Transparent = True
          end
          object CE_DAY: TcxCurrencyEdit
            Left = 168
            Top = 2
            EditValue = 1.000000000000000000
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            TabOrder = 1
            Width = 22
          end
          object CE_ALLDaychk: TcxRadioButton
            Left = 2
            Top = 23
            Width = 383
            Height = 15
            Caption = '  '#44256#44061#45817' '#47784#46160' '#48156#49569'('#44256#44061#51060' '#53084#49468#53552' '#51204#54868#49884' '#47784#46160'('#47588#48264') '#51204#49569#46121#45768#45796'.)'
            Enabled = False
            TabOrder = 2
            TabStop = True
            Transparent = True
          end
        end
        object pnl10: TPanel
          Left = 9
          Top = 403
          Width = 745
          Height = 36
          BevelOuter = bvNone
          Color = 16444898
          TabOrder = 86
          object NE_OneDaychk: TcxRadioButton
            Left = 2
            Top = 5
            Width = 557
            Height = 15
            Caption = '  '#44256#44061#45817' '#52572#52488' 1'#44148' '#48156#49569' '#54980'         '#51068#44036' '#48120#48156#49569'('#51077#47141#51068#46041#50504' '#48156#49569#51228#54620#46104#47728' 09'#49884#44592#51456#51004#47196' '#51201#50857#46121#45768#45796'.) '
            Checked = True
            Enabled = False
            TabOrder = 0
            TabStop = True
            OnClick = NE_OneDaychkClick
            Transparent = True
          end
          object NE_ALLDaychk: TcxRadioButton
            Left = 2
            Top = 21
            Width = 383
            Height = 15
            Caption = '  '#44256#44061#45817' '#47784#46160' '#48156#49569'('#44256#44061#51060' '#53084#49468#53552' '#51204#54868#49884' '#47784#46160'('#47588#48264') '#51204#49569#46121#45768#45796'.)'
            Enabled = False
            TabOrder = 1
            Transparent = True
          end
          object NE_DAY: TcxCurrencyEdit
            Left = 168
            Top = 0
            EditValue = 1.000000000000000000
            Enabled = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0'
            TabOrder = 2
            Width = 22
          end
        end
        object OF_Install_No_Send: TcxCheckBox
          Left = 580
          Top = 154
          Caption = '  '#50612#54540#49444#52824#44256#44061' '#48120#51204#49569
          Enabled = False
          TabOrder = 87
          Transparent = True
        end
        object CE_Install_No_Send: TcxCheckBox
          Left = 580
          Top = 330
          Caption = '  '#50612#54540#49444#52824#44256#44061' '#48120#51204#49569
          Enabled = False
          TabOrder = 88
          Transparent = True
        end
        object NE_Install_No_Send: TcxCheckBox
          Left = 580
          Top = 514
          Caption = '  '#50612#54540#49444#52824#44256#44061' '#48120#51204#49569
          Enabled = False
          TabOrder = 89
          Transparent = True
        end
      end
      object cxLabel2: TcxLabel
        Left = 509
        Top = -209
        Caption = 
          #9680' '#51221#47456' : 1 ~ 100 ( 1,000'#50896#45800#50952#51208#49324' )  '#9680' '#51221#50529' : 101 '#51060#49345' '#13#10'   ex )  '#44592#48376#50836#44552' : 1' +
          '0,000'#50896' , '#51221#47456' 25% = 10,000 + 2,500 = 12,000 '
        Transparent = True
      end
      object LB_CardList: TcxListBox
        Left = 685
        Top = -7
        Width = 158
        Height = 110
        ImeName = 'Microsoft Office IME 2007'
        ItemHeight = 12
        Items.Strings = (
          #47215#45936#52852#46300
          #49888#54620#52852#46300
          #44397#48124#52852#46300
          #49340#49457#52852#46300
          #50472#54000#52852#46300
          'BC'#52852#46300'('#50864#52404#44397#52404#53356#52852#46300')'
          'NH'#52852#46300
          #54788#45824#52852#46300
          #50808#54872#52852#46300
          #54616#45208'SK'#52852#46300
          #51204#48513#51008#54665
          #44305#51452#51008#54665
          #51228#51452#51008#54665
          #49688#54801#52852#46300
          #49328#50629#51008#54665#52852#46300)
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #44404#47548#52404
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 39
        Visible = False
      end
      object Pnl_Mile: TPanel
        Left = 218
        Top = -196
        Width = 250
        Height = 20
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 40
        object cxCurrencyEdit4: TcxCurrencyEdit
          Left = 151
          Top = 1
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 0
          OnExit = cxCurrencyEdit4Exit
          Width = 80
        end
        object cxLabel23: TcxLabel
          Left = 230
          Top = 3
          Caption = #50896
          Transparent = True
        end
        object rg_charge_Aser1: TcxRadioButton
          Left = 2
          Top = 3
          Width = 43
          Height = 17
          Caption = #50630#51020
          Checked = True
          Enabled = False
          TabOrder = 2
          TabStop = True
          OnClick = rg_charge_Aser1Click
          Transparent = True
        end
        object rg_charge_Aser2: TcxRadioButton
          Left = 48
          Top = 3
          Width = 44
          Height = 17
          Caption = #51221#50529
          Enabled = False
          TabOrder = 3
          OnClick = rg_charge_Aser1Click
          Transparent = True
        end
        object rg_charge_Aser3: TcxRadioButton
          Left = 93
          Top = 3
          Width = 44
          Height = 17
          Caption = #51221#47456
          Enabled = False
          TabOrder = 4
          OnClick = rg_charge_Aser1Click
          Transparent = True
        end
      end
      object cxLabel28: TcxLabel
        Left = 89
        Top = 149
        AutoSize = False
        Caption = #49324#50857#50668#48512
        ParentColor = False
        Style.BorderColor = 13088607
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = clNavy
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 26
        Width = 82
        AnchorX = 130
        AnchorY = 162
      end
      object pnl6: TPanel
        Left = 176
        Top = 151
        Width = 123
        Height = 19
        BevelOuter = bvNone
        Color = 16444898
        TabOrder = 42
        object rg_charge_ser8: TcxRadioButton
          Left = 3
          Top = 3
          Width = 47
          Height = 17
          Caption = #49324#50857
          Enabled = False
          TabOrder = 0
          OnClick = rg_charge_ser8Click
          Transparent = True
        end
        object rg_charge_ser9: TcxRadioButton
          Left = 51
          Top = 3
          Width = 70
          Height = 17
          Caption = #49324#50857#50504#54632
          Checked = True
          Enabled = False
          TabOrder = 1
          TabStop = True
          OnClick = rg_charge_ser8Click
          Transparent = True
        end
      end
      object pnl7: TPanel
        Left = 735
        Top = 118
        Width = 18
        Height = 16
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 43
        object img2: TImage
          Left = 0
          Top = 0
          Width = 18
          Height = 16
          Cursor = crHandPoint
          Align = alClient
          AutoSize = True
          ParentShowHint = False
          Picture.Data = {
            055449636F6E0000010001001010000001002000680400001600000028000000
            1000000020000000010020000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000002D1F122B3A2918A10000006F00000010000000000000000000000000
            000000000000000000000000000000000000000000000000000000050000000C
            0000001CBE9266EA9F744BE00000006E00000014000000000000000000000000
            00000000000000000000000000000000000000060000001A0000003A0000005E
            987858C1DCB792FF907356DF000000940000004A0000001D0000000800000000
            0000000000000000000000000000000F00000044453526A47E644BD5987F67E6
            C6A989FFEAC49FFFBB9A77F5463625D1000000AD0000008F0000004E00000014
            00000000000000000000000D634D377EA68A6DF2C1A48AFFCFAF92FFDEBF9DFF
            F3CEAAFFFFE7C0FFE4C3A0FFC4A685FFAF8D6BF9513D28D3000000A300000060
            000000130000000495785A85B9A289FFDCC3A9FFFCDCBDFFFFEFCEFFE3B693FF
            9D3A11FFC87547FFFFDDB8FFFFDEBAFFE4C5A5FFC3A486FF74583BDF000000A2
            0000004EA686673BB8A590FFE3CDB7FFFFEACDFFFFE8CBFFFFF4D7FFD3A988FF
            490000FF701F00FFFFE1BCFFFFE8C7FFFFE3BFFFEDCDAFFFC2A587FF4B3A29CE
            0000009AC4A98DBFD9C7B5FFFFECD4FFFFEBD1FFFFE6CDFFFFE9CFFFFFEFD6FF
            DCB699FFF1D1B6FFFFEFD2FFFFE3C5FFFFE3C5FFFFE5C6FFE5CAADFFB29476F4
            000000BBCAB8A9FFF6E2D1FFFFF1DDFFFFEBD6FFFFEAD5FFFFEBD4FFFFFBE6FF
            CB8960FFE8BF9FFFFFFFE9FFFFE7CDFFFFE4CAFFFFE8CBFFFBE1C4FFD6BBA0FF
            33302CCACFC5B9FFFBECDDFFFFF3E3FFFFEEDEFFFFEEDCFFFFF1DFFFFFFFF8FF
            CEA082FFA54619FFFFEBCFFFFFF8E4FFFFE9D3FFFFEAD0FFFFE8CEFFDEC6B0FF
            6F675EDAD2C9BFFFFCF1E6FFFFF7EBFFFFF2E5FFFFF4E7FFFFF6E7FFFFF2DEFF
            FFFEEFFF88340FFFA73B0FFFEDD2B8FFFFF8E7FFFFEDD9FFFFF0DAFFDDC7B2FF
            605A54CCDDCFC2D6F4EFE9FFFFFFF6FFFFF7EDFFFFFFFFFFC5997FFF8D1D00FF
            EBD3BEFFAB7A5EFF640000FFBD886AFFFFFFF8FFFFF9E9FFFAF0E1FFD6C0ABFF
            1514146FE5D0BA56E3E2E0FFFFFEFCFFFFFFFBFFFFFFFFFFBD9885FF5C0000FF
            E2C5B2FF853E21FF570000FFD2B39DFFFFFFFFFFFFFFFDFFF0E5DAFF998673B9
            0000001D00000000E6D9CC9DEBEBECFFFFFFFFFFFFFFFFFFFFFFFFFFC59A84FF
            B9714DFF904E36FFC2A797FFFFFFFFFFFFFFFFFFF5F1EDFFCDBCABD900000021
            000000000000000000000000E7DDD386EFEDECFFFAFCFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0ECFFCFC1B3B50000001300000000
            00000000000000000000000000000000EDDFCE26E9E3DD9AEEEAE6EBF5F5F6FF
            F6F9FAFFF8F9F9FFF3EEE9F2E5DDD5AEBEB2A541000000050000000000000000
            00000000FF0F0000F80F0000E0030000C00100008000000B00001C47000044B8
            00006EFA00007FFF000085FF000085FF000083FF000086FF80018CFFC00394FF
            E0079FFF}
          ShowHint = False
          OnClick = img2Click
          ExplicitTop = 1
        end
      end
      object Cb_CidChk4: TcxCheckBox
        Left = 660
        Top = 152
        Caption = '  '#53084' '#51652#54665' '#49345#53468' '#54392#49884'('#51217#49688', '#48176#52264', '#52712#49548' '#49345#53468' '#54392#49884')'
        Enabled = False
        TabOrder = 44
        Transparent = True
        Visible = False
      end
      object cxLabel40: TcxLabel
        Left = 174
        Top = 177
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 24
        Width = 204
        AnchorX = 276
        AnchorY = 189
      end
      object rg_charge_ser10: TcxRadioButton
        Left = 282
        Top = 182
        Width = 93
        Height = 15
        Caption = #53084#47560#45320' SMS'
        Enabled = False
        TabOrder = 46
        OnClick = rg_charge_ser10Click
        Transparent = True
      end
      object rg_charge_ser11: TcxRadioButton
        Left = 180
        Top = 182
        Width = 101
        Height = 15
        Caption = #49828#47560#53944' '#54392#49884
        Checked = True
        Enabled = False
        TabOrder = 47
        TabStop = True
        OnClick = rg_charge_ser11Click
        Transparent = True
      end
      object Cb_AppChk2: TcxCheckBox
        Left = 177
        Top = 125
        Caption = '  '#49345#45812#50896' '#51217#49688' '#49884' '#48156#49569' - '#44256#44061#50857' '#50612#54540#49444#52824' '#44256#44061#50640#44172' '#53084' '#51652#54665' '#49345#53468' '#54392#49884'('#48176#52264', '#52712#49548' '#49345#53468' '#54392#49884')'
        Enabled = False
        TabOrder = 48
        Transparent = True
      end
      object btn2: TcxButton
        Left = 841
        Top = -326
        Width = 60
        Height = 46
        Cursor = crHandPoint
        Caption = #51312#54924
        Colors.Normal = 16773362
        Colors.Pressed = 16644080
        Enabled = False
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphBottom
        TabOrder = 49
        OnClick = btn2Click
      end
      object cbKeynumber01: TcxComboBox
        Left = 505
        Top = -326
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #51204#52404)
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 50
        Text = #51204#52404
        OnClick = cbKeynumber01Click
        Height = 21
        Width = 333
      end
      object edt1: TEdit
        Left = 688
        Top = 167
        Width = 121
        Height = 18
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 51
        Text = #49828#47560#53944' '#54392#49884
        Visible = False
      end
      object edt2: TEdit
        Left = 688
        Top = 188
        Width = 121
        Height = 18
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 52
        Text = #53084#47560#45320' SMS'
        Visible = False
      end
      object PnlHelp: TcxGroupBox
        Left = 650
        Top = 177
        Alignment = alTopCenter
        Caption = '*** '#51217#49688','#48176#52264', '#52712#49548' '#49345#53468' '#54392#49884' '#50504#45236' ***'
        TabOrder = 53
        Visible = False
        DesignSize = (
          332
          132)
        Height = 139
        Width = 332
        object cxLabel29: TcxLabel
          Left = 3
          Top = 14
          Align = alClient
          Caption = 
            '1. '#51217#49688' '#54392#49884#13#10'   --> '#50545' '#49444#52824' '#44256#44061' '#51473' '#51204#54868' '#51217#49688' '#54620' '#44256#44061#50640' '#54620#54616#50668' '#54392#49884#13#10#13#10'2. '#48176#52264' '#54392#49884#13#10'   --' +
            '> '#50545' '#49444#52824' '#44256#44061#50640#44172' '#44592#49324' '#48176#52264' '#49884' '#54392#49884#13#10#13#10'3. '#52712#49548' '#54392#49884#13#10'   -->  '#50545' '#49444#52824' '#44256#44061#50640#44172' '#50724#45908' '#52712#49548' '#49884' '#54392#49884
          ParentColor = False
          Style.Color = 15269887
        end
        object cxButton1: TcxButton
          Left = 309
          Top = 14
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Cancel = True
          LookAndFeel.Kind = lfFlat
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
          TabOrder = 0
          OnClick = cxButton1Click
        end
      end
      object cxLabel31: TcxLabel
        Left = 11
        Top = -169
        AutoSize = False
        Caption = #52628#52380#47560#51068#47532#51648
        ParentColor = False
        Style.BorderColor = 5811619
        Style.BorderStyle = ebsOffice11
        Style.Color = clWhite
        Style.TextColor = 16512
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Height = 77
        Width = 75
        AnchorX = 49
        AnchorY = -130
      end
      object cxLabel42: TcxLabel
        Left = 89
        Top = -169
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Style.Color = 16441805
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        Height = 77
        Width = 413
        AnchorX = 296
        AnchorY = -130
      end
      object Panel1: TPanel
        Left = 91
        Top = -145
        Width = 389
        Height = 20
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 56
        object Label2: TLabel
          Left = 3
          Top = 8
          Width = 92
          Height = 12
          Caption = #50756#47308' '#50724#45908#45817' '#51201#47549
        end
        object rg_Chu_ser1: TcxRadioButton
          Left = 126
          Top = 3
          Width = 43
          Height = 17
          Caption = #50630#51020
          Checked = True
          Enabled = False
          TabOrder = 0
          TabStop = True
          OnClick = rg_Chu_ser1Click
          Transparent = True
        end
        object rg_Chu_ser2: TcxRadioButton
          Left = 172
          Top = 3
          Width = 46
          Height = 17
          Caption = #51221#50529
          Enabled = False
          TabOrder = 1
          OnClick = rg_Chu_ser1Click
          Transparent = True
        end
        object rg_Chu_ser3: TcxRadioButton
          Left = 217
          Top = 3
          Width = 44
          Height = 17
          Caption = #51221#47456
          Enabled = False
          TabOrder = 2
          OnClick = rg_Chu_ser1Click
          Transparent = True
        end
        object cxCurrencyEdit3: TcxCurrencyEdit
          Left = 275
          Top = 0
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 3
          OnExit = cxCurrencyEdit3Exit
          Width = 80
        end
        object cxLabel46: TcxLabel
          Left = 355
          Top = 4
          Caption = #50896
          Transparent = True
        end
      end
      object Pnl_ChMile: TPanel
        Left = 216
        Top = -121
        Width = 250
        Height = 20
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 57
        object cxCurrencyEdit5: TcxCurrencyEdit
          Left = 151
          Top = 1
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 0
          OnExit = cxCurrencyEdit5Exit
          Width = 80
        end
        object cxLabel53: TcxLabel
          Left = 231
          Top = 5
          Caption = #50896
          Transparent = True
        end
        object rg_Chu_Aser1: TcxRadioButton
          Left = 2
          Top = 4
          Width = 43
          Height = 17
          Caption = #50630#51020
          Checked = True
          Enabled = False
          TabOrder = 2
          TabStop = True
          OnClick = rg_Chu_Aser1Click
          Transparent = True
        end
        object rg_Chu_Aser2: TcxRadioButton
          Left = 48
          Top = 4
          Width = 46
          Height = 17
          Caption = #51221#50529
          Enabled = False
          TabOrder = 3
          OnClick = rg_Chu_Aser1Click
          Transparent = True
        end
        object rg_Chu_Aser3: TcxRadioButton
          Left = 93
          Top = 3
          Width = 44
          Height = 17
          Caption = #51221#47456
          Enabled = False
          TabOrder = 4
          OnClick = rg_Chu_Aser1Click
          Transparent = True
        end
      end
      object cxChkAppChu: TcxCheckBox
        Left = 91
        Top = -166
        Caption = #50612#54540#52628#52380#44592#45733' '#49324#50857
        Enabled = False
        TabOrder = 58
        Transparent = True
      end
      object cxLabel63: TcxLabel
        Left = 509
        Top = -161
        Caption = #8251' '#52628#52380#54620' '#44256#44061#50640#44172' '#47560#51068#47532#51648' '#48512#50668' '#49444#51221
        Transparent = True
      end
      object cxLabel67: TcxLabel
        Left = 509
        Top = -148
        Caption = ' - '#52628#52380#48155#51008' '#44256#44061#51032' '#50756#47308' '#50724#45908#45817' '#52628#52380#54620' '#44256#44061#50640#44172' '#48512#50668#54624' '#47560#51068#47532#51648' '#44050
        Transparent = True
      end
      object cxLabel68: TcxLabel
        Left = 509
        Top = -135
        Caption = ' - 1'#54924#50756#47308#49884#52628#44032#51201#47549
        Transparent = True
      end
      object cxLabel69: TcxLabel
        Left = 509
        Top = -111
        Caption = ' - '#52628#52380#48155#51008' '#44256#44061#51008' '#51068#48152' '#47560#51068#47532#51648' '#48512#50668' '#49444#51221#44050' '#51201#50857
        Transparent = True
      end
      object cxLabel70: TcxLabel
        Left = 517
        Top = -123
        Caption = ' . '#52628#52380#48155#51008' '#44256#44061#51032' '#52395#54924#50756#47308#49884' '#52628#44032#47196' '#52628#52380#54620' '#44256#44061#50640#44172' '#48512#50668#54624' '#47560#51068#47532#51648' '#44050
        Transparent = True
      end
      object cxCheckBox1: TcxCheckBox
        Left = 91
        Top = -194
        Caption = '1'#54924#50756#47308#49884#52628#44032#51201#47549
        Enabled = False
        TabOrder = 64
        Transparent = True
        OnClick = cxCheckBox1Click
      end
      object cxCheckBox2: TcxCheckBox
        Left = 91
        Top = -119
        Caption = '1'#54924#50756#47308#49884#52628#44032#51201#47549
        Enabled = False
        TabOrder = 65
        Transparent = True
        OnClick = cxCheckBox2Click
      end
      object cxLabel47: TcxLabel
        Left = 94
        Top = -249
        Caption = #50756#47308' '#50724#45908#45817' '#51201#47549
        ParentColor = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = clGray
        Transparent = True
        AnchorX = 142
        AnchorY = -241
      end
      object Panel2: TPanel
        Left = 94
        Top = -215
        Width = 400
        Height = 19
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 67
        object Label3: TLabel
          Left = 33
          Top = 5
          Width = 70
          Height = 12
          Caption = '- '#52852#46300#50756#47308#49884
        end
        object rg_charge_Cser1: TcxRadioButton
          Left = 126
          Top = 1
          Width = 43
          Height = 17
          Caption = #50630#51020
          Checked = True
          Enabled = False
          TabOrder = 0
          TabStop = True
          OnClick = rg_charge_Cser1Click
          Transparent = True
        end
        object rg_charge_Cser2: TcxRadioButton
          Left = 172
          Top = 1
          Width = 45
          Height = 17
          Caption = #51221#50529
          Enabled = False
          TabOrder = 1
          OnClick = rg_charge_Cser1Click
          Transparent = True
        end
        object rg_charge_Cser3: TcxRadioButton
          Left = 217
          Top = 1
          Width = 44
          Height = 17
          Caption = #51221#47456
          Enabled = False
          TabOrder = 2
          OnClick = rg_charge_Cser1Click
          Transparent = True
        end
        object cxCurrencyEdit6: TcxCurrencyEdit
          Left = 275
          Top = -1
          EditValue = 0
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0'
          Properties.Nullstring = '0'
          TabOrder = 3
          OnExit = cxCurrencyEdit2Exit
          Width = 80
        end
        object cxLabel71: TcxLabel
          Left = 355
          Top = 1
          Caption = #50896
          Transparent = True
        end
      end
    end
  end
  object pm_Date: TPopupMenu
    AutoHotkeys = maManual
    Left = 1052
    Top = 244
    object MenuItem25: TMenuItem
      Caption = '1'#51452
    end
    object MenuItem26: TMenuItem
      Caption = '2'#51452
    end
    object MenuItem27: TMenuItem
      Caption = '1'#44060#50900
    end
    object MenuItem28: TMenuItem
      Caption = '2'#44060#50900
    end
  end
end

object Frm_ImageV: TFrm_ImageV
  Left = 0
  Top = 0
  Caption = 'Frm_ImageV'
  ClientHeight = 662
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    OnMouseDown = cxGroupBox1MouseDown
    DesignSize = (
      584
      30)
    Height = 30
    Width = 584
    object cxLblActive: TLabel
      Left = 3
      Top = 2
      Width = 578
      Height = 5
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Color = 33023
      ParentColor = False
      Transparent = False
      ExplicitWidth = 742
    end
    object BtnClose: TcxButton
      Left = 546
      Top = 4
      Width = 33
      Height = 22
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
    object lblTitle: TcxLabel
      Left = 14
      Top = 10
      Caption = 'lblTitle'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      OnMouseDown = cxGroupBox1MouseDown
    end
    object cxButton1: TcxButton
      Left = 444
      Top = 4
      Width = 30
      Height = 22
      Hint = #51060#48120#51648#54869#45824
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002626265F2020204F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002020204F666666FF666666FF1919193F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000C0C0C1F606060EF666666FF606060EF1313133000000000000000000000
        00002727273A7A7A7ADA717171FE686868FF767676FB717171BE1414141D0000
        0000535353CF666666FF535353CF060606100000000000000000000000006161
        619B696969FF949494FFCACACAFFDCDCDCFFBEBEBEFF848484FF717171FE5252
        52B4666666FF4040409F000000000000000000000000000000002727273A6B6B
        6BFFB2B2B2FFF8F8F8FFF3F3F3FFEEEEEEFFEEEEEEFFF3F3F3FFAAAAAAFF6D6D
        6DFE2D2D2D6300000000000000000000000000000000000000007A7A7ADAA1A1
        A1FFF8F8F8FFF2F2F2FFE8E8E8FF444444FFE1E1E1FFE8E8E8FFEBEBEBFF8282
        82FF717171BE0000000000000000000000000000000000000000707070FED8D8
        D8FFF8F8F8FFEEEEEEFFE1E1E1FF444444FFD5D5D5FFE1E1E1FFEEEEEEFFC0C0
        C0FF757575FB0000000000000000000000000000000000000000686868FFEDED
        EDFFF8F8F8FF444444FF444444FF444444FF444444FF444444FFEEEEEEFFDCDC
        DCFF676767FF0000000000000000000000000000000000000000767676FBD5D5
        D5FFF8F8F8FFF2F2F2FFE8E8E8FF444444FFE1E1E1FFE8E8E8FFF3F3F3FFD0D0
        D0FF707070FE0000000000000000000000000000000000000000717171BF9292
        92FFF5F5F5FFF8F8F8FFF2F2F2FF444444FFEEEEEEFFF2F2F2FFF6F6F6FF8E8E
        8EFF7A7A7ADA00000000000000000000000000000000000000001515151F7171
        71FEAAAAAAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFC4C4C4FF6868
        68FF2828283C0000000000000000000000000000000000000000000000003939
        3957717171FE909090FFD6D6D6FFEFEFEFFFDEDEDEFFA3A3A3FF6D6D6DFF6161
        619C000000000000000000000000000000000000000000000000000000000000
        00001515151F717171BF767676FB686868FF717171FE7C7C7CE62828283C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 478
      Top = 4
      Width = 30
      Height = 22
      Hint = #51060#48120#51648#52629#49548
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002626265F2020204F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002020204F666666FF666666FF1919193F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000C0C0C1F606060EF666666FF606060EF1313133000000000000000000000
        00002727273A7A7A7ADA717171FE686868FF767676FB717171BE1414141D0000
        0000535353CF666666FF535353CF060606100000000000000000000000006161
        619B696969FF949494FFCACACAFFDCDCDCFFBEBEBEFF848484FF717171FE5252
        52B4666666FF4040409F000000000000000000000000000000002727273A6B6B
        6BFFB2B2B2FFF8F8F8FFF3F3F3FFEEEEEEFFEEEEEEFFF3F3F3FFAAAAAAFF6D6D
        6DFE2D2D2D6300000000000000000000000000000000000000007A7A7ADAA1A1
        A1FFF8F8F8FFF2F2F2FFE8E8E8FFE1E1E1FFE1E1E1FFE8E8E8FFEBEBEBFF8282
        82FF717171BE0000000000000000000000000000000000000000707070FED8D8
        D8FFF8F8F8FFEEEEEEFFE1E1E1FFD5D5D5FFD5D5D5FFE1E1E1FFEEEEEEFFC0C0
        C0FF757575FB0000000000000000000000000000000000000000686868FFEDED
        EDFFF8F8F8FF444444FF444444FF444444FF444444FF444444FFEEEEEEFFDCDC
        DCFF676767FF0000000000000000000000000000000000000000767676FBD5D5
        D5FFF8F8F8FFF2F2F2FFE8E8E8FFE1E1E1FFE1E1E1FFE8E8E8FFF3F3F3FFD0D0
        D0FF707070FE0000000000000000000000000000000000000000717171BF9292
        92FFF5F5F5FFF8F8F8FFF2F2F2FFEDEDEDFFEEEEEEFFF2F2F2FFF6F6F6FF8E8E
        8EFF7A7A7ADA00000000000000000000000000000000000000001515151F7171
        71FEAAAAAAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFC4C4C4FF6868
        68FF2828283C0000000000000000000000000000000000000000000000003939
        3957717171FE909090FFD6D6D6FFEFEFEFFFDEDEDEFFA3A3A3FF6D6D6DFF6161
        619C000000000000000000000000000000000000000000000000000000000000
        00001515151F717171BF767676FB686868FF717171FE7C7C7CE62828283C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton2Click
    end
  end
  object WebBrowser1: TWebBrowser
    AlignWithMargins = True
    Left = 1
    Top = 31
    Width = 582
    Height = 630
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 570
    ExplicitHeight = 618
    ControlData = {
      4C000000273C00001D4100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
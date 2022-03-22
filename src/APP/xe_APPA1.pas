unit xe_APPA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, SHDocVw,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxDropDownEdit, Vcl.ExtCtrls, cxMaskEdit,
  cxSpinEdit, cxCurrencyEdit, cxListBox, cxCheckBox, cxTextEdit, cxRadioGroup,
  cxButtons, cxLabel, AdvScrollBox, cxGroupBox, dxSkinsCore,
  dxSkinDevExpressStyle;

type
  TFrm_APPA1 = class(TForm)
    sbPanel1: TAdvScrollBox;
    bvl1: TBevel;
    lbl1: TLabel;
    cxLabel45: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel1: TcxLabel;
    lbCustCompany01: TcxLabel;
    btn1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    pnl2: TPanel;
    rg_charge_ser1: TcxRadioButton;
    rg_charge_ser2: TcxRadioButton;
    rg_charge_ser3: TcxRadioButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel24: TcxLabel;
    Edt_AppTitle: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    Cb_AppChk1: TcxCheckBox;
    pnl4: TPanel;
    rg_charge_ser4: TcxRadioButton;
    rg_charge_ser5: TcxRadioButton;
    pnl5: TPanel;
    rg_charge_ser6: TcxRadioButton;
    rg_charge_ser7: TcxRadioButton;
    cxHdNo: TcxTextEdit;
    cxBrNo: TcxTextEdit;
    Pnl_Card: TPanel;
    lb_map: TcxListBox;
    btn3: TcxButton;
    lb_sel_map: TcxListBox;
    btn4: TcxButton;
    btn5: TcxButton;
    cxLabel21: TcxLabel;
    cxLabel26: TcxLabel;
    Pnl_Charge: TPanel;
    lbl2: TLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Se_Key_Number1: TcxSpinEdit;
    Pnl_Cid: TPanel;
    cxLabel38: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel33: TcxLabel;
    OF_Edt1: TcxTextEdit;
    cxLabel34: TcxLabel;
    CE_Edt1: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    NE_Edt1: TcxTextEdit;
		OF_CidChk: TcxCheckBox;
    CE_CidChk: TcxCheckBox;
    NE_CidChk: TcxCheckBox;
		cxLabel48: TcxLabel;
    OF_Edt2: TcxTextEdit;
    cxLabel49: TcxLabel;
    CE_Edt2: TcxTextEdit;
    cxLabel50: TcxLabel;
    NE_Edt2: TcxTextEdit;
    cxLabel2: TcxLabel;
    LB_CardList: TcxListBox;
    Pnl_Mile: TPanel;
    cxLabel22: TcxLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    cxLabel28: TcxLabel;
    pnl6: TPanel;
    rg_charge_ser8: TcxRadioButton;
    rg_charge_ser9: TcxRadioButton;
    pnl7: TPanel;
    img2: TImage;
    Cb_CidChk4: TcxCheckBox;
    cxLabel40: TcxLabel;
    rg_charge_ser10: TcxRadioButton;
    rg_charge_ser11: TcxRadioButton;
    Cb_AppChk2: TcxCheckBox;
    btn2: TcxButton;
    cbKeynumber01: TcxComboBox;
    cxLabel51: TcxLabel;
    OF_WifiChk: TcxCheckBox;
    OF_AndroidChk: TcxCheckBox;
    OF_IphoneChk: TcxCheckBox;
    OF_EtcChk: TcxCheckBox;
    cxLabel52: TcxLabel;
    OF_CustChk1: TcxCheckBox;
    OF_CustChk2: TcxCheckBox;
    OF_CustChk3: TcxCheckBox;
    OF_CustChk4: TcxCheckBox;
    cxLabel54: TcxLabel;
    OF_CustLevChk1: TcxCheckBox;
    OF_CustLevChk2: TcxCheckBox;
    OF_CustLevChk3: TcxCheckBox;
    OF_CustLevChk4: TcxCheckBox;
    OF_CustLevChk5: TcxCheckBox;
    OF_CustLevChk6: TcxCheckBox;
    OF_CustLevChk7: TcxCheckBox;
    OF_Edt_Cnt: TcxCurrencyEdit;
    cxLabel55: TcxLabel;
    CE_WifiChk: TcxCheckBox;
    CE_AndroidChk: TcxCheckBox;
    CE_IphoneChk: TcxCheckBox;
    CE_EtcChk: TcxCheckBox;
    cxLabel56: TcxLabel;
    CE_CustChk1: TcxCheckBox;
    CE_CustChk2: TcxCheckBox;
    CE_CustChk3: TcxCheckBox;
    CE_CustChk4: TcxCheckBox;
    cxLabel57: TcxLabel;
    CE_CustLevChk1: TcxCheckBox;
    CE_CustLevChk2: TcxCheckBox;
    CE_CustLevChk3: TcxCheckBox;
    CE_CustLevChk4: TcxCheckBox;
    CE_CustLevChk5: TcxCheckBox;
    CE_CustLevChk6: TcxCheckBox;
    CE_CustLevChk7: TcxCheckBox;
    CE_Edt_Cnt: TcxCurrencyEdit;
    cxLabel58: TcxLabel;
    NE_WifiChk: TcxCheckBox;
    NE_AndroidChk: TcxCheckBox;
    NE_IphoneChk: TcxCheckBox;
    NE_EtcChk: TcxCheckBox;
    cxLabel59: TcxLabel;
    NE_CustChk1: TcxCheckBox;
    NE_CustChk2: TcxCheckBox;
    NE_CustChk3: TcxCheckBox;
    NE_CustChk4: TcxCheckBox;
    cxLabel60: TcxLabel;
    NE_CustLevChk1: TcxCheckBox;
    NE_CustLevChk2: TcxCheckBox;
    NE_CustLevChk3: TcxCheckBox;
    NE_CustLevChk4: TcxCheckBox;
    NE_CustLevChk5: TcxCheckBox;
    NE_CustLevChk6: TcxCheckBox;
    NE_CustLevChk7: TcxCheckBox;
    NE_Edt_Cnt: TcxCurrencyEdit;
    cxLabel39: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    pm_Date: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    OF_CustChk5: TcxCheckBox;
    CE_CustChk5: TcxCheckBox;
    NE_CustChk5: TcxCheckBox;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    pnl8: TPanel;
    OF_OneDaychk: TcxRadioButton;
    OF_DAY: TcxCurrencyEdit;
    OF_ALLDaychk: TcxRadioButton;
    pnl9: TPanel;
    CE_OneDaychk: TcxRadioButton;
    CE_DAY: TcxCurrencyEdit;
    CE_ALLDaychk: TcxRadioButton;
    pnl10: TPanel;
    NE_OneDaychk: TcxRadioButton;
    NE_ALLDaychk: TcxRadioButton;
    NE_DAY: TcxCurrencyEdit;
    OF_Install_No_Send: TcxCheckBox;
    CE_Install_No_Send: TcxCheckBox;
    NE_Install_No_Send: TcxCheckBox;
    PnlMain: TPanel;
    PnlHelp: TcxGroupBox;
    cxButton1: TcxButton;
    cxLabel29: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel42: TcxLabel;
    Panel1: TPanel;
    rg_Chu_ser1: TcxRadioButton;
    rg_Chu_ser2: TcxRadioButton;
    rg_Chu_ser3: TcxRadioButton;
    Pnl_ChMile: TPanel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxLabel53: TcxLabel;
    cxChkAppChu: TcxCheckBox;
    cxLabel63: TcxLabel;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    Label1: TLabel;
    rg_charge_Aser1: TcxRadioButton;
    rg_charge_Aser2: TcxRadioButton;
    rg_charge_Aser3: TcxRadioButton;
    cxCheckBox1: TcxCheckBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxLabel46: TcxLabel;
    Label2: TLabel;
    cxCheckBox2: TcxCheckBox;
    rg_Chu_Aser1: TcxRadioButton;
    rg_Chu_Aser2: TcxRadioButton;
    rg_Chu_Aser3: TcxRadioButton;
    cxLabel47: TcxLabel;
    Panel2: TPanel;
    Label3: TLabel;
    rg_charge_Cser1: TcxRadioButton;
    rg_charge_Cser2: TcxRadioButton;
    rg_charge_Cser3: TcxRadioButton;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxLabel71: TcxLabel;
    procedure btn4Click(Sender: TObject);
		procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rg_charge_ser6Click(Sender: TObject);
    procedure rg_charge_ser4Click(Sender: TObject);
    procedure cxCurrencyEdit2Exit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rg_charge_ser1Click(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure rg_charge_ser8Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure img1Click(Sender: TObject);
    procedure CE_CidChkClick(Sender: TObject);
    procedure NE_CidChkClick(Sender: TObject);
		procedure OF_CidChkClick(Sender: TObject);
    procedure rg_charge_ser11Click(Sender: TObject);
    procedure rg_charge_ser10Click(Sender: TObject);
    procedure OF_OneDaychkClick(Sender: TObject);
    procedure CE_OneDaychkClick(Sender: TObject);
    procedure NE_OneDaychkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCurrencyEdit3Exit(Sender: TObject);
    procedure rg_Chu_ser1Click(Sender: TObject);
    procedure rg_charge_Aser1Click(Sender: TObject);
    procedure cxCurrencyEdit4Exit(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure rg_Chu_Aser1Click(Sender: TObject);
    procedure cxCurrencyEdit5Exit(Sender: TObject);
    procedure rg_charge_Cser1Click(Sender: TObject);
  private
		{ Private declarations }
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init_AppSetup;
		procedure proc_init;
		procedure proc_AppPushSet;
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
		procedure proc_init_enable(AABLE : Boolean);
	public
    { Public declarations }
    procedure proc_Branch_Change;
  end;

var
  Frm_APPA1: TFrm_APPA1;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm;

procedure TFrm_APPA1.btn4Click(Sender: TObject);
var
  CurIndex, i : Integer;
begin
	case TButton(Sender).Tag of
    1:
      begin
        CurIndex := lb_sel_map.ItemIndex;
				if CurIndex < 0 then
          Exit;

        lb_map.Items.Insert(lb_map.ItemIndex+1, lb_sel_map.Items.Strings[CurIndex]);
        lb_sel_map.Items.Delete(CurIndex);
        if lb_sel_map.Count >= CurIndex - 1 then
          lb_sel_map.ItemIndex := CurIndex;
      end;
    2:
      begin
				CurIndex := lb_map.ItemIndex;
        if CurIndex < 0 then
          Exit;
        lb_sel_map.Items.Insert(lb_sel_map.ItemIndex+1, lb_map.Items.Strings[CurIndex]);
        lb_map.Items.Delete(CurIndex);
        if CurIndex >= lb_map.Items.Count then
          lb_map.ItemIndex := lb_map.Items.Count - 1
        else
          lb_map.ItemIndex := CurIndex;
      end;
    3:
      begin
        i := 0;
        while i < lb_map.Items.Count do
        begin
          if lb_sel_map.Items.IndexOf(lb_map.Items.Strings[i]) < 0 then
          begin
            lb_sel_map.Items.Add(lb_map.Items.Strings[i]);
            lb_map.Items.Delete(i);
          end else Inc(i);
        end;
				lb_sel_map.ItemIndex := 0;
      end;
  end;
end;

procedure TFrm_APPA1.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA1.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
var i : Integer;
		sTmp : TStringList;
begin
	sTmp := TStringList.Create;
	Result := False;
  try
		for i := 0 to scb_CustAPPUseYn.Count - 1 do
    begin
			GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
			if ( sTmp[0] = sBrNo ) And ( sTmp[1] = sKeyNum ) then
			begin
				if sTmp[2] = 'y' then Result := True else
				if sTmp[2] = 'n' then Result := False;
				Break;
			end;
		end;
	finally
		sTmp.Free;
	end;
end;

procedure TFrm_APPA1.proc_BrNameSet;
var
  sName, sBrNo, sHdNo, sBrName: string;
	StrList: TStringList;
	iIndex, iIdx : integer;
begin
	StrList := TStringList.Create;
  try
		if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
		begin
			GetAPPBrTelList(GT_SEL_BRNO.HDNO, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end	else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;

	cxHdNo.Text := sHdNo;
	cxBrNo.Text := sBrNo;

	if cbKeynumber01.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumber01.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	if (cbKeynumber01.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumber01.ItemIndex := 0;
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumber01.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumber01.ItemIndex];

				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end else
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
		end	else
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
			iIdx := scb_BranchCode.IndexOf(sBrNo);
			if iIdx >= 0 then
				sBrName := scb_BranchName[iIdx]
			else
				sBrName := '';
			sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
		end;
		lbCustCompany01.Caption := sName;
//-		cbKeynumber01.Width := 190;
		cbKeynumber01.Tag := 0;
	end else
	begin
		lbCustCompany01.Caption := sName;
		cbKeynumber01.ItemIndex := 0;
//-		cbKeynumber01.Width := 349;
		cbKeynumber01.Tag := 1;
		proc_init_enable(False);
	end;

	proc_init_AppSetup;
	btn2.Click;
end;

procedure TFrm_APPA1.btn2Click(Sender: TObject);
var
  ls_TxLoad: WideString; // XML File Load
  ls_TxSend, rv_str, msg, sBrNo, sBrName: string;
  ls_rxxml: WideString;
  ErrCode: integer;
begin
	if Trim(cxBrNo.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		proc_init_enable(False);
		Exit;
  end;

	if (cbKeynumber01.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_AppPushSet
	else
  begin
    GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
		proc_init_enable(False);
	end;
end;

procedure TFrm_APPA1.proc_AppPushSet;
var
  XmlData, Param, ErrMsg, sBrNo, msg, sBrName : string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	i, j, k, ErrCode, iCnt, iRow : Integer;
  lsCard : TStringList;
  bCard : Boolean;
begin
	proc_init_AppSetup;
  
  try
    sBrNo := cxBrNo.Text;

    if sBrNo = '' then
    begin
			GMessagebox('앱/스마트 푸시설정은 지사를 선택하셔야 합니다.', CDMSI);
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
			msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			proc_init_AppSetup;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('앱/스마트푸시설정') then Exit;

		PnlMain.Enabled := True;

    Param := cxBrNo.Text + '│' + cbKeynumber01.Text;

		if not RequestBase(GetSel05('GET_XE_APP_CONFIG', 'mng_custapp.GET_XE_APP_CONFIG', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('앱/스마트 푸시설정 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
		  	proc_init_enable(True);
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
        lsCard  := TStringList.Create;
        try
		  		iRow := 0;
          for I := 0 to lst_Result.length - 1 do
          begin
            // 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			if i = 0 then
		  			begin
		  				Edt_AppTitle.Text := ls_Rcrd[0];
		  				if StrToFloatDef(ls_Rcrd[1], 0) = 0 then
		  				begin
		  					rg_charge_ser1.Checked := True;
		  					cxCurrencyEdit2.Value := 0;
		  					cxLabel22.Caption := '';
		  				end else
		  				if ( StrToFloatDef(ls_Rcrd[1], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[1], 0) <= 1 ) then
		  				begin
		  					rg_charge_ser3.Checked := True;
		  					cxCurrencyEdit2.Value := StrToFloatDef(ls_Rcrd[1], 0) * 100;
		  					cxLabel22.Caption := '%';
		  				end else
		  				if ( StrToFloatDef(ls_Rcrd[1], 0) > 100 ) then
		  				begin
		  					rg_charge_ser2.Checked := True;
		  					cxCurrencyEdit2.Value := StrToIntDef(ls_Rcrd[1], 0);
		  					cxLabel22.Caption := '원';
		  				end;

              // 카드완료시
  	  				if StrToFloatDef(ls_Rcrd[29], 0) = 0 then
  	  				begin
  	  					rg_charge_Cser1.Checked := True;
  	  					cxCurrencyEdit6.Value := 0;
  	  					cxLabel71.Caption := '';
  	  				end else
  	  				if ( StrToFloatDef(ls_Rcrd[29], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[29], 0) <= 1 ) then
  	  				begin
  	  					rg_charge_Cser3.Checked := True;
  	  					cxCurrencyEdit6.Value := StrToFloatDef(ls_Rcrd[29], 0) * 100;
  	  					cxLabel71.Caption := '%';
  	  				end else
  	  				if ( StrToFloatDef(ls_Rcrd[29], 0) > 100 ) then
  	  				begin
  	  					rg_charge_Cser2.Checked := True;
  	  					cxCurrencyEdit6.Value := StrToIntDef(ls_Rcrd[29], 0);
  	  					cxLabel71.Caption := '원';
  	  				end;

		  				if StrToFloatDef(ls_Rcrd[2], 0) = 0 then
		  				begin
		  					cxCheckBox1.Checked := False;
                Pnl_Mile.Enabled := False;

		  					rg_charge_Aser1.Checked := True;
		  					cxCurrencyEdit4.Value := 0;
		  					cxLabel23.Caption := '';
		  				end else
		  				if ( StrToFloatDef(ls_Rcrd[2], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[2], 0) <= 1 ) then
		  				begin
		  					cxCheckBox1.Checked := True;
                Pnl_Mile.Enabled := True;

		  					rg_charge_Aser3.Checked := True;
		  					cxCurrencyEdit4.Value := StrToFloatDef(ls_Rcrd[2], 0) * 100;
		  					cxLabel23.Caption := '%';
		  				end else
		  				if ( StrToFloatDef(ls_Rcrd[2], 0) > 100 ) then
		  				begin
		  					cxCheckBox1.Checked := True;
                Pnl_Mile.Enabled := True;

		  					rg_charge_Aser2.Checked := True;
		  					cxCurrencyEdit4.Value := StrToIntDef(ls_Rcrd[2], 0);
		  					cxLabel23.Caption := '원';
		  				end;

		  				if ls_Rcrd[3] = 'y' then
		  				begin
		  					rg_charge_ser4.Checked := True;
		  					Se_Key_Number1.Value := StrToIntDef(ls_Rcrd[4], 0);

		  					if StrToFloatDef(ls_Rcrd[5], 0) < 100 then
		  						cxCurrencyEdit1.Value := StrToFloatDef(ls_Rcrd[5], 0) * 100
		  					else
		  						cxCurrencyEdit1.Value := StrToFloatDef(ls_Rcrd[5], 0);
		  				end else
		  				if ls_Rcrd[3] = 'n' then
		  				begin
		  					rg_charge_ser5.Checked := True;
		  					Se_Key_Number1.Value := 30;
		  					cxCurrencyEdit1.Value := 0;
		  				end;

		  				if ls_Rcrd[6] = 'y' then
		  				begin
		  					lb_sel_map.Items.Clear;
		  					lb_map.Items.Clear;

		  					rg_charge_ser6.Checked := True;
		  					GetTextSeperationEx2(',', ls_Rcrd[7], lsCard);

		  					for j := 0 to LB_CardList.Items.Count - 1 do
		  					begin
		  						bCard := True;
		  						for k := 0 to lsCard.Count - 1 do
		  						begin
		  							if LB_CardList.Items.Strings[j] = lsCard[k] then
		  							begin
		  								lb_sel_map.Items.Add(LB_CardList.Items.Strings[j]);
		  								bCard := False;
		  							end;
		  						end;
		  						if bCard then lb_map.Items.Add(LB_CardList.Items.Strings[j]);
		  					end;
		  				end else
		  				if ls_Rcrd[6] = 'n' then
		  				begin
		  					rg_charge_ser7.Checked := True;
		  					lb_sel_map.Items.Clear;
		  				end;

		  				if ls_Rcrd[8] = '018' then Cb_AppChk1.Checked := True else
		  				if ls_Rcrd[8] = '' then Cb_AppChk1.Checked := False;
		  				if ls_Rcrd[9] = '18' then Cb_AppChk2.Checked := True else
		  				if ls_Rcrd[9] = '' then Cb_AppChk2.Checked := False;

		  				if ls_Rcrd[10] = 'y' then rg_charge_ser8.Checked := True else
		  				if ls_Rcrd[10] = 'n' then rg_charge_ser9.Checked := True;

		  				edt1.Text := Trim(ls_Rcrd[23]);
		  				edt2.Text := Trim(ls_Rcrd[24]);
		  				if ls_Rcrd[11] = '1' then
		  				begin
		  					rg_charge_ser10.Checked := True;
		  					lbl4.Visible := True;
		  					if edt2.Text  = '' then
		  						lbl4.Caption := '[ 설정된 콜마너 SMS 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		  					else
		  						lbl4.Caption := '[ 콜마너 SMS 건당 과금금액은 [  '+ edt2.Text + ' ] 원 입니다.] 단, SMS캐시에서 차감됨';
		  				end	else
		  				if ls_Rcrd[11] = '2' then
		  				begin
		  					rg_charge_ser11.Checked := True;
		  					lbl4.Visible := True;
		  					if edt1.Text  = '' then
		  						lbl4.Caption := '[ 설정된 스마트 푸시 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		  					else
		  						lbl4.Caption := '[ 스마트 푸시 건당 과금금액은 [  '+ edt1.Text + ' ] 원 입니다.] 단, SMS캐시에서 차감됨';
		  				end;

              if ls_Rcrd.Count > 25 then
              begin
  		  				if ls_Rcrd[26] = 'y' then cxChkAppChu.Checked := True
  		  				                     else cxChkAppChu.Checked := False;

  	  				  if StrToFloatDef(ls_Rcrd[27], 0) = 0 then
  	  				  begin
  	  				  	rg_Chu_ser1.Checked := True;
  	  				  	cxCurrencyEdit3.Value := 0;
  	  				  	cxLabel46.Caption := '';
  	  				  end else
  	  				  if ( StrToFloatDef(ls_Rcrd[27], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[27], 0) <= 1 ) then
  	  				  begin
  	  				  	rg_Chu_ser3.Checked := True;
  	  				  	cxCurrencyEdit3.Value := StrToFloatDef(ls_Rcrd[27], 0) * 100;
  	  				  	cxLabel46.Caption := '%';
  	  				  end else
  	  				  if ( StrToFloatDef(ls_Rcrd[27], 0) > 100 ) then
  	  				  begin
  	  				  	rg_Chu_ser2.Checked := True;
  	  				  	cxCurrencyEdit3.Value := StrToIntDef(ls_Rcrd[27], 0);
  	  				  	cxLabel46.Caption := '원';
  	  				  end;

  	  				  if StrToFloatDef(ls_Rcrd[28], 0) = 0 then
  	  				  begin
  	  				  	cxCheckBox2.Checked := False;
                  Pnl_ChMile.Enabled := False;

  	  				  	rg_Chu_Aser1.Checked := True;
  	  				  	cxCurrencyEdit5.Value := 0;
  	  				  	cxLabel53.Caption := '';
  	  				  end else
  	  				  if ( StrToFloatDef(ls_Rcrd[28], 0) > 0 ) And ( StrToFloatDef(ls_Rcrd[28], 0) <= 1 ) then
  	  				  begin
  	  				  	cxCheckBox2.Checked := True;
                  Pnl_ChMile.Enabled := True;

  	  				  	rg_Chu_Aser3.Checked := True;
  	  				  	cxCurrencyEdit5.Value := StrToFloatDef(ls_Rcrd[28], 0) * 100;
  	  				  	cxLabel53.Caption := '%';
  	  				  end else
  	  				  if ( StrToFloatDef(ls_Rcrd[28], 0) > 100 ) then
  	  				  begin
  	  				  	cxCheckBox2.Checked := True;
                  Pnl_ChMile.Enabled := True;

  	  				  	rg_Chu_Aser2.Checked := True;
  	  				  	cxCurrencyEdit5.Value := StrToIntDef(ls_Rcrd[28], 0);
  	  				  	cxLabel53.Caption := '원';
  	  				  end;
              end;
		  			end;

		  			if Trim(ls_Rcrd[12]) = 'OF' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					OF_CidChk.Checked := True; //기능 제외(미개발) 2013.06.28 KHS
		  					OF_CidChkClick(self);
		  				end else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					OF_CidChk.Checked := False;
		  					OF_CidChkClick(self);
		  				end;
		  				OF_Edt1.Text := ls_Rcrd[14];
		  				OF_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					OF_OneDaychk.Checked := True;
		  					OF_DAY.Text := ls_Rcrd[17] ;
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					OF_ALLDaychk.Checked := True;
		  					OF_DAY.Text := ls_Rcrd[17] ;
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then OF_WifiChk.Checked    := True
		  				else OF_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then OF_AndroidChk.Checked := True
		  				else OF_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then OF_IphoneChk.Checked  := True
		  				else OF_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then OF_EtcChk.Checked     := True
		  				else OF_EtcChk.Checked    := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then OF_CustChk1.Checked := True
		  				else OF_CustChk1.Checked    := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then OF_CustChk2.Checked := True
		  				else OF_CustChk2.Checked    := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then OF_CustChk3.Checked := True
		  				else OF_CustChk3.Checked    := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then OF_CustChk4.Checked := True
		  				else OF_CustChk4.Checked    := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then OF_CustLevChk1.Checked := True
		  				else OF_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then OF_CustLevChk2.Checked := True
		  				else OF_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then OF_CustLevChk3.Checked := True
		  				else OF_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then OF_CustLevChk4.Checked := True
		  				else OF_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then OF_CustLevChk5.Checked := True
		  				else OF_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then OF_CustLevChk6.Checked := True
		  				else OF_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then OF_CustLevChk7.Checked := True
		  				else OF_CustLevChk7.Checked := False;
		  				OF_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then  OF_CustChk5.Checked := True
		  				else OF_CustChk5.Checked    := False;
		  				if ls_Rcrd[25] = 'y' then  OF_Install_No_Send.Checked := True
		  				else OF_Install_No_Send.Checked    := False;
		  			end else
		  			if Trim(ls_Rcrd[12]) = 'CE' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					CE_CidChk.Checked := True;
		  					CE_CidChkClick(self);
		  				end	else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					CE_CidChk.Checked := False;
		  					CE_CidChkClick(self);
		  				end;
		  				CE_Edt1.Text := ls_Rcrd[14];
		  				CE_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					CE_OneDaychk.Checked := True;
		  					CE_DAY.Text := ls_Rcrd[17];
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					CE_ALLDaychk.Checked := True;
		  					CE_DAY.Text := ls_Rcrd[17];
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then CE_WifiChk.Checked    := True
		  				else CE_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then CE_AndroidChk.Checked := True
		  				else CE_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then CE_IphoneChk.Checked  := True
		  				else CE_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then CE_EtcChk.Checked     := True
		  				else CE_EtcChk.Checked     := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then CE_CustChk1.Checked := True
		  				else CE_CustChk1.Checked := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then CE_CustChk2.Checked := True
		  				else CE_CustChk2.Checked := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then CE_CustChk3.Checked := True
		  				else CE_CustChk3.Checked := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then CE_CustChk4.Checked := True
		  				else CE_CustChk4.Checked := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then CE_CustLevChk1.Checked := True
		  				else CE_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then CE_CustLevChk2.Checked := True
		  				else CE_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then CE_CustLevChk3.Checked := True
		  				else CE_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then CE_CustLevChk4.Checked := True
		  				else CE_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then CE_CustLevChk5.Checked := True
		  				else CE_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then CE_CustLevChk6.Checked := True
		  				else CE_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then CE_CustLevChk7.Checked := True
		  				else CE_CustLevChk7.Checked := False;
		  				CE_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then  CE_CustChk5.Checked := True
		  				else CE_CustChk5.Checked := False;
		  				if ls_Rcrd[25] = 'y' then  CE_Install_No_Send.Checked := True
		  				else CE_Install_No_Send.Checked    := False;
		  			end else
		  			if Trim(ls_Rcrd[12]) = 'NE' then
		  			begin
		  				if ls_Rcrd[13] = 'y' then       //17 파라미터와 5차이
		  				begin
		  					NE_CidChk.Checked := True;
		  					NE_CidChkClick(self);
		  				end else
		  				if ls_Rcrd[13] = 'n' then
		  				begin
		  					NE_CidChk.Checked := False;
		  					NE_CidChkClick(self);
		  				end;
		  				NE_Edt1.Text := ls_Rcrd[14];
		  				NE_Edt2.Text := ls_Rcrd[15];
		  				if ls_Rcrd[16] = 'y' then
		  				begin
		  					NE_OneDaychk.Checked := True;
		  					NE_DAY.Text := ls_Rcrd[17];
		  				end else
		  				if ls_Rcrd[16] = 'n' then
		  				begin
		  					NE_ALLDaychk.Checked := True;
		  					NE_DAY.Text := ls_Rcrd[17];
		  				end;
		  				if Pos('W',ls_Rcrd[18]) > 0 then NE_WifiChk.Checked    := True
		  				else NE_WifiChk.Checked    := False;
		  				if Pos('A',ls_Rcrd[18]) > 0 then NE_AndroidChk.Checked := True
		  				else NE_AndroidChk.Checked := False;
		  				if Pos('I',ls_Rcrd[18]) > 0 then NE_IphoneChk.Checked  := True
		  				else NE_IphoneChk.Checked  := False;
		  				if Pos('E',ls_Rcrd[18]) > 0 then NE_EtcChk.Checked     := True
		  				else NE_EtcChk.Checked     := False;

		  				if Pos('0',ls_Rcrd[19]) > 0 then NE_CustChk1.Checked := True
		  				else NE_CustChk1.Checked    := False;
		  				if Pos('1',ls_Rcrd[19]) > 0 then NE_CustChk2.Checked := True
		  				else NE_CustChk2.Checked    := False;
		  				if Pos('3',ls_Rcrd[19]) > 0 then NE_CustChk3.Checked := True
		  				else NE_CustChk3.Checked    := False;
		  				if Pos('4',ls_Rcrd[19]) > 0 then NE_CustChk4.Checked := True
		  				else NE_CustChk4.Checked    := False;

		  				if Pos('N',ls_Rcrd[20]) > 0 then NE_CustLevChk1.Checked := True
		  				else NE_CustLevChk1.Checked := False;
		  				if Pos('0',ls_Rcrd[20]) > 0 then NE_CustLevChk2.Checked := True
		  				else NE_CustLevChk2.Checked := False;
		  				if Pos('1',ls_Rcrd[20]) > 0 then NE_CustLevChk3.Checked := True
		  				else NE_CustLevChk3.Checked := False;
		  				if Pos('2',ls_Rcrd[20]) > 0 then NE_CustLevChk4.Checked := True
		  				else NE_CustLevChk4.Checked := False;
		  				if Pos('3',ls_Rcrd[20]) > 0 then NE_CustLevChk5.Checked := True
		  				else NE_CustLevChk5.Checked := False;
		  				if Pos('4',ls_Rcrd[20]) > 0 then NE_CustLevChk6.Checked := True
		  				else NE_CustLevChk6.Checked := False;
		  				if Pos('5',ls_Rcrd[20]) > 0 then NE_CustLevChk7.Checked := True
		  				else NE_CustLevChk7.Checked := False;
		  				NE_Edt_Cnt.Text := ls_Rcrd[21];
		  				if ls_Rcrd[22] = 'y' then NE_CustChk5.Checked := True
		  				                     else NE_CustChk5.Checked := False;
		  				if ls_Rcrd[25] = 'y' then NE_Install_No_Send.Checked := True
		  				                     else NE_Install_No_Send.Checked    := False;
		  			end;
		  		end;
        finally
          ls_Rcrd.Free;
          lsCard.Free;
        end;
      end else
      begin
        msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
        sBrName := GetBrName(cxBrNo.Text);
		  	GMessagebox(Format(msg, [cxBrNo.Text, sBrName, cbKeynumber01.Text]), CDMSI);
		  	proc_init_AppSetup;
		  	Exit;
      end;
    finally
      xdom := Nil;
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
	end;
end;

procedure TFrm_APPA1.proc_init_AppSetup;
begin
	Edt_AppTitle.Clear;

	rg_charge_ser1.Checked := True;
	rg_charge_ser1Click(rg_charge_ser1);

	rg_charge_Cser1.Checked := True;
	rg_charge_Cser1Click(rg_charge_Cser1);

  cxCurrencyEdit2.Value := 0;
  cxCheckBox1.Checked := False;
  Pnl_Mile.Enabled := False;
  cxCurrencyEdit4.Value := 0;
	rg_charge_ser5.Checked := True;
	rg_charge_ser4Click(rg_charge_ser5);
	rg_charge_ser7.Checked := True;
	rg_charge_ser6Click(rg_charge_ser7);
	rg_charge_ser9.Checked := True;
	rg_charge_ser8Click(rg_charge_ser9);

  cxChkAppChu.Checked := False;
  rg_Chu_ser1.Checked := True;
  rg_Chu_ser1Click(rg_Chu_ser1);
  cxCurrencyEdit3.Value := 0;
  cxCheckBox2.Checked := False;
  Pnl_ChMile.Enabled := False;
  cxCurrencyEdit5.Value := 0;

	lb_sel_map.Items.Clear;
	lb_map.Items := LB_CardList.items;
	rg_charge_ser11.Checked := True;
	Cb_AppChk1.Checked := False;
	Cb_AppChk2.Checked := False;
	Cb_CidChk4.Checked := False;

	OF_CidChk.Checked := False;
	OF_Edt1.Clear;
	OF_Edt1.Hint := '';
	OF_Edt2.Text := 'http://';
	OF_Edt2.Hint := '';
	OF_OneDaychk.Checked := False;
	OF_WifiChk.Checked := True;
	OF_AndroidChk.Checked := True;
	OF_IphoneChk.Checked := True;
	OF_EtcChk.Checked := False;
	OF_CustChk1.Checked := True;
	OF_CustChk2.Checked := True;
	OF_CustChk3.Checked := True;
	OF_CustChk4.Checked := True;
	OF_CustChk5.Checked := False;
	OF_CustLevChk1.Checked := True;
	OF_CustLevChk2.Checked := False;
	OF_CustLevChk3.Checked := True;
	OF_CustLevChk4.Checked := True;
	OF_CustLevChk5.Checked := True;
	OF_CustLevChk6.Checked := True;
	OF_CustLevChk7.Checked := True;
	OF_Edt_Cnt.Text := '0';
	OF_Edt_Cnt.Hint := '';

	CE_CidChk.Checked := False;
	CE_Edt1.Clear;
	CE_Edt1.Hint := '';
	CE_Edt2.Text := 'http://';
	CE_Edt2.Hint := '';
	CE_OneDaychk.Checked := False;
	CE_WifiChk.Checked := True;
	CE_AndroidChk.Checked := True;
	CE_IphoneChk.Checked := True;
	CE_EtcChk.Checked := True;
	CE_CustChk1.Checked := True;
	CE_CustChk2.Checked := True;
	CE_CustChk3.Checked := True;
	CE_CustChk4.Checked := True;
	CE_CustChk5.Checked := False;
	CE_CustLevChk1.Checked := True;
	CE_CustLevChk2.Checked := False;
	CE_CustLevChk3.Checked := True;
	CE_CustLevChk4.Checked := True;
	CE_CustLevChk5.Checked := True;
	CE_CustLevChk6.Checked := True;
	CE_CustLevChk7.Checked := True;
	CE_Edt_Cnt.Text := '0';
	CE_Edt_Cnt.Hint := '';

	NE_CidChk.Checked := False;
	NE_Edt1.Clear;
	NE_Edt1.Hint := '';
	NE_Edt2.Text := 'http://';
	NE_Edt2.Hint := '';
	NE_OneDaychk.Checked := False;
	NE_WifiChk.Checked := True;
	NE_AndroidChk.Checked := True;
	NE_IphoneChk.Checked := True;
	NE_EtcChk.Checked := True;
	NE_CustChk1.Checked := True;
	NE_CustChk2.Checked := True;
	NE_CustChk3.Checked := True;
	NE_CustChk4.Checked := True;
	NE_CustChk5.Checked := False;
	NE_CustLevChk1.Checked := True;
	NE_CustLevChk2.Checked := False;
	NE_CustLevChk3.Checked := True;
	NE_CustLevChk4.Checked := True;
	NE_CustLevChk5.Checked := True;
	NE_CustLevChk6.Checked := True;
	NE_CustLevChk7.Checked := True;
	NE_Edt_Cnt.Text := '0';
	NE_Edt_Cnt.Hint := '';

	proc_init_enable(False);
	PnlMain.Enabled := False;

	lbl4.Caption := '';
	lbl4.Visible := False;
	edt1.Text := '';
	edt2.Text := '';
end;

procedure TFrm_APPA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA1.FormCreate(Sender: TObject);
begin
	proc_init;
end;

procedure TFrm_APPA1.FormDestroy(Sender: TObject);
begin
  Frm_APPA1 := Nil;
end;

procedure TFrm_APPA1.proc_init;
begin
	proc_BrNameSet;

  cxLabel31.Caption := '추 천' + #13 + '마일리지';

	OF_CidChk.Checked := false;
	OF_CidChkClick(self);
	CE_CidChk.Checked := false;
	CE_CidChkClick(self);
	NE_CidChk.Checked := false;
	NE_CidChkClick(self);
	btn2.Click;
end;

procedure TFrm_APPA1.rg_charge_ser6Click(Sender: TObject);
begin
	if rg_charge_ser6.Checked then Pnl_Card.Enabled := True else
	if rg_charge_ser7.Checked then Pnl_Card.Enabled := False;
end;

procedure TFrm_APPA1.rg_charge_ser4Click(Sender: TObject);
begin
	if rg_charge_ser4.Checked then Pnl_Charge.Enabled := True else
  if rg_charge_ser5.Checked then
	begin
    Pnl_Charge.Enabled := False;
    Se_Key_Number1.Value := 30;
    cxCurrencyEdit1.Value := 0;
  end;
end;

procedure TFrm_APPA1.cxButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_APPA1.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked then
    Pnl_Mile.Enabled := True
  else
  begin
    Pnl_Mile.Enabled := False;
    rg_charge_Aser1.Checked := True;
    rg_charge_Aser1Click(rg_charge_Aser1);
  end;
end;

procedure TFrm_APPA1.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
    Pnl_ChMile.Enabled := True
  else
  begin
    Pnl_ChMile.Enabled := False;
    rg_Chu_Aser1.Checked := True;
    rg_Chu_Aser1Click(rg_Chu_Aser1);
  end;
end;

procedure TFrm_APPA1.cxCurrencyEdit2Exit(Sender: TObject);
begin
  if (rg_charge_ser3.Checked) and (cxCurrencyEdit2.Value > 100) then
  begin
    GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
    cxCurrencyEdit2.Value := 100;
  end;

  if (rg_charge_ser2.Checked) and (cxCurrencyEdit2.Value < 101) then
  begin
    GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
    cxCurrencyEdit2.Value := 101;
  end;
end;

procedure TFrm_APPA1.cxCurrencyEdit3Exit(Sender: TObject);
begin
  if (rg_Chu_ser3.Checked) and (cxCurrencyEdit3.Value > 100) then
  begin
    GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
    cxCurrencyEdit3.Value := 100;
  end;

  if (rg_Chu_ser2.Checked) and (cxCurrencyEdit3.Value < 101) then
  begin
    GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
    cxCurrencyEdit3.Value := 101;
  end;
end;

procedure TFrm_APPA1.cxCurrencyEdit4Exit(Sender: TObject);
begin
  if (rg_charge_Aser3.Checked) and (cxCurrencyEdit4.Value > 100) then
  begin
    GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
    cxCurrencyEdit4.Value := 100;
  end;

  if (rg_charge_Aser2.Checked) and (cxCurrencyEdit4.Value < 101) then
  begin
    GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
    cxCurrencyEdit4.Value := 101;
  end;
end;

procedure TFrm_APPA1.cxCurrencyEdit5Exit(Sender: TObject);
begin
  if (rg_Chu_Aser3.Checked) and (cxCurrencyEdit5.Value > 100) then
  begin
    GMessagebox('정률은 설정값을 100을 초과 할수 없습니다.', CDMSI);
    cxCurrencyEdit5.Value := 100;
  end;

  if (rg_Chu_Aser2.Checked) and (cxCurrencyEdit5.Value < 101) then
  begin
    GMessagebox('정액은 설정값을 100이하를 입력 할수 없습니다.', CDMSI);
    cxCurrencyEdit5.Value := 101;
  end;
end;

procedure TFrm_APPA1.btn1Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_TxSend, ls_Msg_Err, sTemp, sMsg, sParam: string;
  sBrNo, MLG_TYPE_0, MLG_VALUE_0, PRIZE_POINT_0, PRIZE_0,
    MLG_TYPE_1, MLG_VALUE_1, PRIZE_POINT_1, PRIZE_1,
    MLG_TYPE_3, MLG_VALUE_3, PRIZE_POINT_3, PRIZE_3,
    MLG_TYPE_4, MLG_VALUE_4, PRIZE_POINT_4, PRIZE_4: string;
	i, iCnt, ichkCNT: Integer;

	asParam: array[1..100] of string;
  slReceive: TStringList;
  ErrCode: integer;

	SendData, XmlData,
	Param, Key, ErrMsg, sStmp, msg, sBrName: string;
begin
	if (cbKeynumber01.ItemIndex <= 0) and (not UseAPPKeyNumberCHK) then
	begin
		ShowMessage('대표번호를 선택하세요. ');
		Exit;
	end;
	asParam[1] := cxBrNo.Text;

	if not getKeyNumberCustUseYn(cxBrNo.Text, cbKeynumber01.Text) then
	begin
			msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
			sBrName := GetBrName(cxBrNo.Text);
			GMessagebox(Format(msg, [cxBrNo.Text, sBrName, cbKeynumber01.Text]), CDMSI);
		Exit;
	end;
	asParam[1] := cxBrNo.Text;

  if asParam[1] = '' then
  begin
		GMessagebox('앱/스마트 푸시설정은 지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	asParam[2] := cbKeynumber01.Text;
	asParam[3] := Trim(Edt_AppTitle.Text);

  if asParam[3] = '' then
  begin
		GMessagebox('앱타이틀을 입력하십시오.', CDMSI);
		Edt_AppTitle.SetFocus;
		Exit;
	end;

  if rg_charge_ser1.Checked then
    asParam[4] := '0'
  else
  if rg_charge_ser3.Checked then
    asParam[4] := FloatToStr(cxCurrencyEdit2.Value/100)
  else
  if rg_charge_ser2.Checked then
    asParam[4] := StringReplace(cxCurrencyEdit2.Text, ',', '', [rfReplaceAll]);

  asParam[5] := StringReplace(cxCurrencyEdit4.Text, ',', '', [rfReplaceAll]);

  if rg_charge_ser4.Checked then
	begin
    asParam[6] := 'y';
    asParam[7] := StringReplace(Se_Key_Number1.Value, ',', '', [rfReplaceAll]);

    if StrToFloatDef(StringReplace(cxCurrencyEdit1.Text, ',', '', [rfReplaceAll]), 0) <= 100 then
      asParam[8] := FloatToStr(cxCurrencyEdit1.Value/100)
    else
			asParam[8] := StringReplace(cxCurrencyEdit1.Text, ',', '', [rfReplaceAll]);
  end else
  if rg_charge_ser5.Checked then
  begin
    asParam[6] := 'n';
    asParam[7] := '';
    asParam[8] := '';
  end;

  if rg_charge_ser6.Checked then
  begin
    asParam[9] := 'y';
    for i := 0 to lb_sel_map.Items.Count - 1 do
    begin
      if i = 0 then
        asParam[10] := lb_sel_map.Items.Strings[i]
      else
        asParam[10] := asParam[10] + ',' + lb_sel_map.Items.Strings[i];
    end;  
  end else
  if rg_charge_ser7.Checked then
  begin
    asParam[9] := 'n';
    asParam[10] := '';
	end;

	if Cb_AppChk1.Checked then asParam[11] := '018'          //고객앱 접수 시 발송
												else asParam[11] := '';
	if Cb_AppChk2.Checked then asParam[12] := '18'          //상담원 접수 시 발송
												else asParam[12] := '';

	if rg_charge_ser8.Checked then        // CID 푸시 사용유무
	begin
		asParam[13] := 'y';
	end else
	if rg_charge_ser9.Checked then
	begin
		asParam[13] := 'n';
	end;
	if rg_charge_ser11.Checked then       // CID 푸시 서비스사 (1:콜마너, 2:콜게이트)
	begin
		asParam[14] := '2';
	end else
	if rg_charge_ser10.Checked then
	begin
		asParam[14] := '1';
	end;

  if rg_charge_Cser1.Checked then
    asParam[15] := '0'
  else
  if rg_charge_Cser3.Checked then
    asParam[15] := FloatToStr(cxCurrencyEdit6.Value/100)
  else
  if rg_charge_Cser2.Checked then
    asParam[15] := StringReplace(cxCurrencyEdit6.Text, ',', '', [rfReplaceAll]);

///////////////추가변경//////////////////////////////
	asParam[16] := '3';
	asParam[17] := '12'; //옵션 파라메터 수

//	if OF_CidChk.Checked then
//	BEGIN
	asParam[18] := 'OF';
	IF OF_CidChk.Checked then
	begin
		asParam[19] := 'y';

		asParam[20] := Trim(OF_Edt1.Text);
		if Trim(OF_Edt2.Text) = '' then asParam[21] := 'http://'
                               else asParam[21] := Trim(OF_Edt2.Text);
		IF OF_OneDaychk.Checked then
		begin
			asParam[22] := 'y';
			asParam[23] := OF_DAY.Text;
		end	else
		begin
			asParam[22] := 'n';
			asParam[23] := '';
		end;
		sStmp := '';
		if OF_WifiChk.Checked    then sStmp := sStmp + 'W';
		if OF_AndroidChk.Checked then sStmp := sStmp + 'A';
		if OF_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if OF_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (OF_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[콜센터인입콜]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			OF_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[24] := sStmp;
		sStmp := '';
		if OF_CustChk1.Checked then sStmp := sStmp + '0';
		if OF_CustChk2.Checked then sStmp := sStmp + '1';
		if OF_CustChk3.Checked then sStmp := sStmp + '3';
		if OF_CustChk4.Checked then sStmp := sStmp + '4';
		if (OF_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[콜센터인입콜]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			OF_CustChk1.SetFocus;
			Exit;
		end;
		asParam[25] := sStmp;
		sStmp := '';
		if OF_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if OF_CustLevChk2.Checked then sStmp := sStmp + '0';
		if OF_CustLevChk3.Checked then sStmp := sStmp + '1';
		if OF_CustLevChk4.Checked then sStmp := sStmp + '2';
		if OF_CustLevChk5.Checked then sStmp := sStmp + '3';
		if OF_CustLevChk6.Checked then sStmp := sStmp + '4';
		if OF_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[26] := sStmp;
		asParam[27] := OF_Edt_Cnt.Text;
		if OF_CustChk5.Checked then asParam[28] := 'y'
                           else asParam[28] := 'n';
		if OF_Install_No_Send.Checked then asParam[29] := 'y'
                                  else asParam[29] := 'n';
	end else
	begin
		asParam[19] := 'n';

		asParam[20] := Trim(OF_Edt1.Text);
		if Trim(OF_Edt2.Text) = '' then asParam[21] := 'Http://'
                               else asParam[21] := Trim(OF_Edt2.Text);
		IF OF_OneDaychk.Checked then
		begin
			asParam[22] := 'y';
			asParam[23] := OF_DAY.Text;
		end else
		begin
			asParam[22] := 'n';
			asParam[23] := '';
		end;
		asParam[24] := 'WAIE';
		asParam[25] := '013';
		asParam[26] := 'N12345';
		asParam[27] := '0';
		asParam[28] := 'y';
		if OF_Install_No_Send.Checked then asParam[29] := 'y'
                                  else asParam[29] := 'n';
	end;

	asParam[30] := 'CE';
	IF CE_CidChk.Checked then
	begin
		asParam[31] := 'y';

		asParam[32] := Trim(CE_Edt1.Text);
		if Trim(CE_Edt2.Text) = '' then asParam[33] := 'Http://'
                            	 else asParam[33] := Trim(CE_Edt2.Text);
		IF CE_OneDaychk.Checked then
		begin
			asParam[34] := 'y';
			asParam[35] := CE_DAY.Text;
		end	else
		begin
			asParam[34] := 'n';
			asParam[35] := '';
		end;
		sStmp := '';
		if CE_WifiChk.Checked    then sStmp := sStmp + 'W';
		if CE_AndroidChk.Checked then sStmp := sStmp + 'A';
		if CE_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if CE_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (CE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[통화고객종료시]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			CE_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[36] := sStmp;
		sStmp := '';
		if CE_CustChk1.Checked then sStmp := sStmp + '0';
		if CE_CustChk2.Checked then sStmp := sStmp + '1';
		if CE_CustChk3.Checked then sStmp := sStmp + '3';
		if CE_CustChk4.Checked then sStmp := sStmp + '4';
		if (CE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[통화고객종료시]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			CE_CustChk1.SetFocus;
			Exit;
		end;
		asParam[37] := sStmp;
		sStmp := '';
		if CE_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if CE_CustLevChk2.Checked then sStmp := sStmp + '0';
		if CE_CustLevChk3.Checked then sStmp := sStmp + '1';
		if CE_CustLevChk4.Checked then sStmp := sStmp + '2';
		if CE_CustLevChk5.Checked then sStmp := sStmp + '3';
		if CE_CustLevChk6.Checked then sStmp := sStmp + '4';
		if CE_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[38] := sStmp;
		asParam[39] := CE_Edt_Cnt.Text;
		if CE_CustChk5.Checked then asParam[40] := 'y'
                           else asParam[40] := 'n';
		if CE_Install_No_Send.Checked then asParam[41] := 'y'
                              		else asParam[41] := 'n';
	end else
	begin
		asParam[31] := 'n';

		asParam[32] := Trim(CE_Edt1.Text);
		if Trim(CE_Edt2.Text) = '' then asParam[33] := 'Http://'
		                           else asParam[33] := Trim(CE_Edt2.Text);
		IF CE_OneDaychk.Checked then
		begin
			asParam[34] := 'y';
			asParam[35] := CE_DAY.Text;
		end	else
		begin
			asParam[34] := 'n';
			asParam[35] := '';
		end;
		asParam[36] := 'WAIE';
		asParam[37] := '013';
		asParam[38] := 'N12345';
		asParam[39] := CE_Edt_Cnt.Text;
		asParam[40] := 'y';
		if CE_Install_No_Send.Checked then asParam[41] := 'y'
		                              else asParam[41] := 'n';
	end;

	asParam[42] := 'NE';
	IF NE_CidChk.Checked then
	begin
		asParam[43] := 'y';
		asParam[44] := Trim(NE_Edt1.Text);
		if Trim(NE_Edt2.Text) = '' then asParam[45] := 'Http://'
		                           else asParam[45] := Trim(NE_Edt2.Text);
		IF NE_OneDaychk.Checked then
		begin
			asParam[46] := 'y';
			asParam[47] := NE_DAY.Text;
		end	else
		begin
			asParam[46] := 'n';
			asParam[47] := '';
		end;
		sStmp := '';
		if NE_WifiChk.Checked    then sStmp := sStmp + 'W';
		if NE_AndroidChk.Checked then sStmp := sStmp + 'A';
		if NE_IphoneChk.Checked  then sStmp := sStmp + 'I';
		if NE_EtcChk.Checked     then sStmp := sStmp + 'E';
		if (NE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[미통화고객종료시]단말 플래폼은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			NE_AndroidChk.SetFocus;
			Exit;
		end;
		asParam[48] := sStmp;
		sStmp := '';
		if NE_CustChk1.Checked then sStmp := sStmp + '0';
		if NE_CustChk2.Checked then sStmp := sStmp + '1';
		if NE_CustChk3.Checked then sStmp := sStmp + '3';
		if NE_CustChk4.Checked then sStmp := sStmp + '4';
		if (NE_CidChk.Checked) and (sStmp = '') then
		begin
			GMessagebox('[미통화고객종료시]고객구분은 최소 1개 이상 선택되어야 합니다.', CDMSI);
			NE_CustChk1.SetFocus;
			Exit;
		end;
		asParam[49] := sStmp;
		sStmp := '';
		if NE_CustLevChk1.Checked then sStmp := sStmp + 'N';
		if NE_CustLevChk2.Checked then sStmp := sStmp + '0';
		if NE_CustLevChk3.Checked then sStmp := sStmp + '1';
		if NE_CustLevChk4.Checked then sStmp := sStmp + '2';
		if NE_CustLevChk5.Checked then sStmp := sStmp + '3';
		if NE_CustLevChk6.Checked then sStmp := sStmp + '4';
		if NE_CustLevChk7.Checked then sStmp := sStmp + '5';
		asParam[50] := sStmp;
		asParam[51] := NE_Edt_Cnt.Text;
		if NE_CustChk5.Checked then asParam[52] := 'y'
                        	 else asParam[52] := 'n';
		if NE_Install_No_Send.Checked then asParam[53] := 'y'
                                  else asParam[53] := 'n';
	end else
	begin
		asParam[43] := 'n';

		asParam[44] := Trim(NE_Edt1.Text);
		if Trim(NE_Edt2.Text) = '' then asParam[45] := 'Http://'
                               else asParam[45] := Trim(NE_Edt2.Text);
		IF NE_OneDaychk.Checked then
		begin
			asParam[46] := 'y';
			asParam[47] := NE_DAY.Text;
		end	else
		begin
			asParam[46] := 'n';
			asParam[47] := '';
		end;
		asParam[48] := 'WAIE';
		asParam[49] := '013';
		asParam[50] := 'N12345';
		asParam[51] := NE_Edt_Cnt.Text;
		asParam[52] := 'y';
		if NE_Install_No_Send.Checked then asParam[53] := 'y'
                                  else asParam[53] := 'n';
	end;

	if cxChkAppChu.Checked then asParam[54] := 'y'
                         else asParam[54] := 'n';

  if rg_Chu_ser1.Checked then
    asParam[55] := '0'
  else
  if rg_Chu_ser3.Checked then
    asParam[55] := FloatToStr(cxCurrencyEdit3.Value/100)
  else
  if rg_Chu_ser2.Checked then
    asParam[55] := StringReplace(cxCurrencyEdit3.Text, ',', '', [rfReplaceAll]);

  asParam[56] := StringReplace(cxCurrencyEdit5.Text, ',', '', [rfReplaceAll]);


///////////////추가변경//////////////////////////////

	sTemp := '';
	for i := 1 to 56 do
  begin
		if i = 1 then sTemp := asParam[1]
		else
    begin
      sTemp := sTemp + '│' + asParam[i];
    end;
  end;

//  ShowMessage(sTemp);
	if not RequestBase(GetCallable05('SET_XE_APP_CONFIG', 'mng_custapp.SET_XE_APP_CONFIG', En_Coding(sTemp)), XmlData, ErrCode, ErrMsg) then
	begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;
	GMessagebox('앱/스마트 푸시설정이 완료 되었습니다.', CDMSI);
end;

procedure TFrm_APPA1.rg_charge_ser1Click(Sender: TObject);
begin
  if rg_charge_ser1.Checked then
	begin
		cxLabel22.Caption := '';
    cxCurrencyEdit2.Value := 0;
  end else
  if rg_charge_ser2.Checked then cxLabel22.Caption := '원' else
  if rg_charge_ser3.Checked then cxLabel22.Caption := '%' ;
end;

procedure TFrm_APPA1.cbKeynumber01Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
	iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then
    Exit;
	if (not UseAPPKeyNumberCHK) then exit;

	if GT_USERIF.LV = '60' then
	begin
		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			if TcxComboBox(Sender).Text = '전체' then
			begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end else
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if (TcxComboBox(Sender).Properties.Items.Count > 0) and (TcxComboBox(Sender).ItemIndex > -1) then
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
					else
						sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex]
				end else
				begin
					if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
					else
						sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
				end;
				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
		end else
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
			sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;

	lbCustCompany01.Caption := sName;
	cxHdNo.Text := sHdNo;
	cxBrNo.Text := sBrNo;
	if (cbKeynumber01.ItemIndex = 0) and (not UseAPPKeyNumberCHK) then proc_init_AppSetup
																																else btn2.Click;
end;

procedure TFrm_APPA1.rg_charge_ser8Click(Sender: TObject);
begin
	if rg_charge_ser8.Checked then Pnl_Cid.Enabled := True else
  if rg_charge_ser9.Checked then Pnl_Cid.Enabled := False;
end;

procedure TFrm_APPA1.rg_Chu_Aser1Click(Sender: TObject);
begin
  if rg_Chu_Aser1.Checked then
	begin
		cxLabel53.Caption := '';
    cxCurrencyEdit5.Value := 0;
  end else
  if rg_Chu_Aser2.Checked then cxLabel53.Caption := '원' else
  if rg_Chu_Aser3.Checked then cxLabel53.Caption := '%' ;
end;

procedure TFrm_APPA1.rg_Chu_ser1Click(Sender: TObject);
begin
  if rg_Chu_ser1.Checked then
	begin
		cxLabel46.Caption := '';
    cxCurrencyEdit3.Value := 0;
  end else
  if rg_Chu_ser2.Checked then cxLabel46.Caption := '원' else
  if rg_Chu_ser3.Checked then cxLabel46.Caption := '%' ;
end;

procedure TFrm_APPA1.FlatButton1Click(Sender: TObject);
begin
  PnlHelp.Visible := False;
end;

procedure TFrm_APPA1.img2Click(Sender: TObject);
begin
	if PnlHelp.Visible then PnlHelp.Visible := False
	else
	begin
		PnlHelp.Top := 361;
		PnlHelp.Left := 625;
		PnlHelp.Visible := True;
	end;
end;

procedure TFrm_APPA1.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APPA1.btn6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APPA1.img1Click(Sender: TObject);
begin
	if PnlHelp.Visible then PnlHelp.Visible := False
	else
	begin
		PnlHelp.Top := 379;
		PnlHelp.Left := 625;
		PnlHelp.Visible := True;
	end;
end;

procedure TFrm_APPA1.CE_CidChkClick(Sender: TObject);
begin
	if not CE_CidChk.Checked then
	begin
		CE_Edt1.Enabled := false;
		CE_Edt2.Enabled := false;
		CE_OneDaychk.Enabled := false;
		CE_Day.Enabled := false;
		CE_ALLDaychk.Enabled := false;
		CE_WifiChk.Enabled := false;
		CE_AndroidChk.Enabled := false;
		CE_IphoneChk.Enabled := false;
		CE_EtcChk.Enabled := false;
		CE_CustChk1.Enabled := false;
		CE_CustChk2.Enabled := false;
		CE_CustChk3.Enabled := false;
		CE_CustChk4.Enabled := false;
		CE_CustLevChk1.Enabled := false;
		CE_CustLevChk2.Enabled := false;
		CE_CustLevChk3.Enabled := false;
		CE_CustLevChk4.Enabled := false;
		CE_CustLevChk5.Enabled := false;
		CE_CustLevChk6.Enabled := false;
		CE_CustLevChk7.Enabled := false;
		CE_Edt_Cnt.Enabled := false;
		CE_CustChk5.Enabled := false;
		cxLabel64.Enabled := false;
		CE_Install_No_Send.Enabled := False;
	end else
	begin
		CE_Edt1.Enabled := True;
		CE_Edt2.Enabled := True;
		CE_OneDaychk.Enabled := True;
		CE_Day.Enabled := True;
		CE_ALLDaychk.Enabled := True;
		CE_WifiChk.Enabled := True;
		CE_AndroidChk.Enabled := True;
		CE_IphoneChk.Enabled := True;
		CE_EtcChk.Enabled := True;
		CE_CustChk1.Enabled := True;
		CE_CustChk2.Enabled := True;
		CE_CustChk3.Enabled := True;
		CE_CustChk4.Enabled := True;
		CE_CustLevChk1.Enabled := True;
		CE_CustLevChk2.Enabled := True;
		CE_CustLevChk3.Enabled := True;
		CE_CustLevChk4.Enabled := True;
		CE_CustLevChk5.Enabled := True;
		CE_CustLevChk6.Enabled := True;
		CE_CustLevChk7.Enabled := True;
		CE_Edt_Cnt.Enabled := True;
		CE_CustChk5.Enabled := True;
		cxLabel64.Enabled := True;
		CE_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APPA1.NE_CidChkClick(Sender: TObject);
begin
	if not NE_CidChk.Checked then
	begin
		NE_Edt1.Enabled := false;
		NE_Edt2.Enabled := false;
		NE_OneDaychk.Enabled := false;
		NE_Day.Enabled := false;
		NE_ALLDaychk.Enabled := false;
		NE_WifiChk.Enabled := false;
		NE_AndroidChk.Enabled := false;
		NE_IphoneChk.Enabled := false;
		NE_EtcChk.Enabled := false;
		NE_CustChk1.Enabled := false;
		NE_CustChk2.Enabled := false;
		NE_CustChk3.Enabled := false;
		NE_CustChk4.Enabled := false;
		NE_CustLevChk1.Enabled := false;
		NE_CustLevChk2.Enabled := false;
		NE_CustLevChk3.Enabled := false;
		NE_CustLevChk4.Enabled := false;
		NE_CustLevChk5.Enabled := false;
		NE_CustLevChk6.Enabled := false;
		NE_CustLevChk7.Enabled := false;
		NE_Edt_Cnt.Enabled := false;
		NE_CustChk5.Enabled := false;
		cxLabel66.Enabled := false;
		NE_Install_No_Send.Enabled := False;
	end else
	begin
		NE_Edt1.Enabled := True;
		NE_Edt2.Enabled := True;
		NE_OneDaychk.Enabled := True;
		NE_Day.Enabled := True;
		NE_ALLDaychk.Enabled := True;
		NE_WifiChk.Enabled := True;
		NE_AndroidChk.Enabled := True;
		NE_IphoneChk.Enabled := True;
		NE_EtcChk.Enabled := True;
		NE_CustChk1.Enabled := True;
		NE_CustChk2.Enabled := True;
		NE_CustChk3.Enabled := True;
		NE_CustChk4.Enabled := True;
		NE_CustLevChk1.Enabled := True;
		NE_CustLevChk2.Enabled := True;
		NE_CustLevChk3.Enabled := True;
		NE_CustLevChk4.Enabled := True;
		NE_CustLevChk5.Enabled := True;
		NE_CustLevChk6.Enabled := True;
		NE_CustLevChk7.Enabled := True;
		NE_Edt_Cnt.Enabled := True;
		NE_CustChk5.Enabled := True;
		cxLabel66.Enabled := True;
		NE_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APPA1.OF_CidChkClick(Sender: TObject);
begin
	if not OF_CidChk.Checked then
	begin
		OF_Edt1.Enabled := false;
		OF_Edt2.Enabled := false;
		OF_OneDaychk.Enabled := false;
		OF_Day.Enabled := false;
		OF_ALLDaychk.Enabled := false;
		OF_WifiChk.Enabled := false;
		OF_AndroidChk.Enabled := false;
		OF_IphoneChk.Enabled := false;
		OF_EtcChk.Enabled := false;
		OF_CustChk1.Enabled := false;
		OF_CustChk2.Enabled := false;
		OF_CustChk3.Enabled := false;
		OF_CustChk4.Enabled := false;
		OF_CustLevChk1.Enabled := false;
		OF_CustLevChk2.Enabled := false;
		OF_CustLevChk3.Enabled := false;
		OF_CustLevChk4.Enabled := false;
		OF_CustLevChk5.Enabled := false;
		OF_CustLevChk6.Enabled := false;
		OF_CustLevChk7.Enabled := false;
		OF_Edt_Cnt.Enabled := false;
		OF_CustChk5.Enabled := false;
		cxLabel61.Enabled := false;
		OF_Install_No_Send.Enabled := False; 
	end else
	begin
		OF_Edt1.Enabled := True;
		OF_Edt2.Enabled := True;
		OF_OneDaychk.Enabled := True;
		OF_Day.Enabled := True;
		OF_ALLDaychk.Enabled := True;
		OF_WifiChk.Enabled := True;
		OF_AndroidChk.Enabled := True;
		OF_IphoneChk.Enabled := True;
		OF_EtcChk.Enabled := True;
		OF_CustChk1.Enabled := True;
		OF_CustChk2.Enabled := True;
		OF_CustChk3.Enabled := True;
		OF_CustChk4.Enabled := True;
		OF_CustLevChk1.Enabled := True;
		OF_CustLevChk2.Enabled := True;
		OF_CustLevChk3.Enabled := True;
		OF_CustLevChk4.Enabled := True;
		OF_CustLevChk5.Enabled := True;
		OF_CustLevChk6.Enabled := True;
		OF_CustLevChk7.Enabled := True;
		OF_Edt_Cnt.Enabled := True;
		OF_CustChk5.Enabled := True;
		cxLabel61.Enabled := True;
		OF_Install_No_Send.Enabled := True;
	end;
end;

procedure TFrm_APPA1.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
var
	I: Integer;
	sTmp : TStringList;
begin
	Try
		TBrno := '';
		sTmp := TStringList.Create;
		if scb_HeadCode.IndexOf(ABrNo) = -1 then             //지사선택
		begin
			for I := 0 to scb_CustAPPUseYn.Count - 1 do
			begin
				GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
				if sTmp[2] = 'y' then
				begin
					if sTmp[0] = ABrNo then
					begin
						if Trim(sTmp[1]) <> '' then
						begin
							AList.Add(sTmp[1]);
							if TBrno = '' then TBrno := sTmp[0];
						end;
					end;
				end;
			end;
		end	else
		begin
			if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			begin
				for I := 0 to scb_CustAPPUseYn.Count - 1 do
				begin
					GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
					if sTmp[2] = 'y' then
					begin
						if sTmp[3] = ABrNo then
						begin
							if Trim(sTmp[1]) <> '' then
							begin
								AList.Add(sTmp[1]);
								if TBrno = '' then TBrno := sTmp[0];
							end;
						end;
					end;
				end;
			end	else
			begin
				for I := 0 to scb_CustAPPUseYn.Count - 1 do
				begin
					GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
					if sTmp[2] = 'y' then
					begin
						if Trim(sTmp[1]) <> '' then
						begin
							AList.Add(sTmp[1]);
							if TBrno = '' then TBrno := sTmp[0];
						end;
					end;
				end;
			end;
		end;
	finally
		sTmp.Free;
	end;
end;

procedure TFrm_APPA1.proc_init_enable(AABLE: Boolean);
begin
	btn2.Enabled := AABLE;
	btn1.Enabled := AABLE;
	
	Edt_AppTitle.Enabled := AABLE;
	rg_charge_ser1.Enabled := AABLE;
	rg_charge_ser2.Enabled := AABLE;
	rg_charge_ser3.Enabled := AABLE;
	cxCurrencyEdit2.Enabled := AABLE;

	rg_charge_Cser1.Enabled := AABLE;
	rg_charge_Cser2.Enabled := AABLE;
	rg_charge_Cser3.Enabled := AABLE;
	cxCurrencyEdit6.Enabled := AABLE;

	cxCheckBox1.Enabled := AABLE;
	rg_charge_Aser1.Enabled := AABLE;
	rg_charge_Aser2.Enabled := AABLE;
	rg_charge_Aser3.Enabled := AABLE;
	cxCurrencyEdit4.Enabled := AABLE;

  cxChkAppChu.Enabled := AABLE;
  rg_Chu_ser1.Enabled := AABLE;
  rg_Chu_ser2.Enabled := AABLE;
  rg_Chu_ser3.Enabled := AABLE;
	cxCurrencyEdit3.Enabled := AABLE;
	cxCheckBox2.Enabled := AABLE;
  rg_Chu_Aser1.Enabled := AABLE;
  rg_Chu_Aser2.Enabled := AABLE;
  rg_Chu_Aser3.Enabled := AABLE;
	cxCurrencyEdit5.Enabled := AABLE;

	rg_charge_ser4.Enabled := AABLE;
	rg_charge_ser6.Enabled := AABLE;
	Se_Key_Number1.Enabled := AABLE;
	cxCurrencyEdit1.Enabled := AABLE;
	rg_charge_ser6.Enabled := AABLE;
	rg_charge_ser7.Enabled := AABLE;
	lb_sel_map.Enabled := AABLE;
	btn3.Enabled := AABLE;
	btn5.Enabled := AABLE;
	btn4.Enabled := AABLE;
	lb_map.Enabled := AABLE;
	Cb_AppChk1.Enabled := AABLE;
	Cb_AppChk2.Enabled := AABLE;
	rg_charge_ser8.Enabled := AABLE;
	rg_charge_ser9.Enabled := AABLE;
	rg_charge_ser11.Enabled := AABLE;
	rg_charge_ser10.Enabled := AABLE;

	OF_CidChk.Enabled := AABLE;
	OF_Edt1.Enabled := AABLE;
	OF_Edt2.Enabled := AABLE;
	OF_OneDaychk.Enabled := AABLE;
	OF_Day.Enabled := AABLE;
	OF_ALLDaychk.Enabled := AABLE;
	OF_WifiChk.Enabled := AABLE;
	OF_AndroidChk.Enabled := AABLE;
	OF_IphoneChk.Enabled := AABLE;
	OF_EtcChk.Enabled := AABLE;
	OF_CustChk1.Enabled := AABLE;
	OF_CustChk2.Enabled := AABLE;
	OF_CustChk3.Enabled := AABLE;
	OF_CustChk4.Enabled := AABLE;
	OF_CustLevChk1.Enabled := AABLE;
	OF_CustLevChk2.Enabled := AABLE;
	OF_CustLevChk3.Enabled := AABLE;
	OF_CustLevChk4.Enabled := AABLE;
	OF_CustLevChk5.Enabled := AABLE;
	OF_CustLevChk6.Enabled := AABLE;
	OF_CustLevChk7.Enabled := AABLE;
	OF_Edt_Cnt.Enabled := AABLE;
	cxLabel64.Enabled := AABLE;
	OF_CustChk5.Enabled := AABLE;
	OF_Install_No_Send.Enabled := AABLE;
	
	CE_CidChk.Enabled := AABLE;
	CE_Edt1.Enabled := AABLE;
	CE_Edt2.Enabled := AABLE;
	CE_OneDaychk.Enabled := AABLE;
	CE_Day.Enabled := AABLE;
	CE_ALLDaychk.Enabled := AABLE;
	CE_WifiChk.Enabled := AABLE;
	CE_AndroidChk.Enabled := AABLE;
	CE_IphoneChk.Enabled := AABLE;
	CE_EtcChk.Enabled := AABLE;
	CE_CustChk1.Enabled := AABLE;
	CE_CustChk2.Enabled := AABLE;
	CE_CustChk3.Enabled := AABLE;
	CE_CustChk4.Enabled := AABLE;
	CE_CustLevChk1.Enabled := AABLE;
	CE_CustLevChk2.Enabled := AABLE;
	CE_CustLevChk3.Enabled := AABLE;
	CE_CustLevChk4.Enabled := AABLE;
	CE_CustLevChk5.Enabled := AABLE;
	CE_CustLevChk6.Enabled := AABLE;
	CE_CustLevChk7.Enabled := AABLE;
	CE_Edt_Cnt.Enabled := AABLE;
	cxLabel64.Enabled := AABLE;
	CE_CustChk5.Enabled := AABLE;
	CE_Install_No_Send.Enabled := AABLE;

	NE_CidChk.Enabled := AABLE;
	NE_Edt1.Enabled := AABLE;
	NE_Edt2.Enabled := AABLE;
	NE_OneDaychk.Enabled := AABLE;
	NE_Day.Enabled := AABLE;
	NE_ALLDaychk.Enabled := AABLE;
	NE_WifiChk.Enabled := AABLE;
	NE_AndroidChk.Enabled := AABLE;
	NE_IphoneChk.Enabled := AABLE;
	NE_EtcChk.Enabled := AABLE;
	NE_CustChk1.Enabled := AABLE;
	NE_CustChk2.Enabled := AABLE;
	NE_CustChk3.Enabled := AABLE;
	NE_CustChk4.Enabled := AABLE;
	NE_CustLevChk1.Enabled := AABLE;
	NE_CustLevChk2.Enabled := AABLE;
	NE_CustLevChk3.Enabled := AABLE;
	NE_CustLevChk4.Enabled := AABLE;
	NE_CustLevChk5.Enabled := AABLE;
	NE_CustLevChk6.Enabled := AABLE;
	NE_CustLevChk7.Enabled := AABLE;
	NE_Edt_Cnt.Enabled := AABLE;
	cxLabel66.Enabled := AABLE;
	NE_CustChk5.Enabled := AABLE;
	NE_Install_No_Send.Enabled := AABLE;
end;

procedure TFrm_APPA1.rg_charge_ser11Click(Sender: TObject);
begin
	lbl4.Visible := True;
	if rg_charge_ser11.Checked then
	begin
		if edt1.Text  = '' then
			lbl4.Caption := '[ 설정된 스마트 푸시 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		else
			lbl4.Caption := '[ 스마트 푸시 건당 과금금액은 [  '+ edt1.Text + ' ] 원 입니다.]';
	end;
end;

procedure TFrm_APPA1.rg_charge_Aser1Click(Sender: TObject);
begin
  if rg_charge_Aser1.Checked then
	begin
		cxLabel23.Caption := '';
    cxCurrencyEdit4.Value := 0;
  end else
  if rg_charge_Aser2.Checked then cxLabel23.Caption := '원' else
  if rg_charge_Aser3.Checked then cxLabel23.Caption := '%' ;
end;

procedure TFrm_APPA1.rg_charge_Cser1Click(Sender: TObject);
begin
  if rg_charge_Cser1.Checked then
	begin
		cxLabel71.Caption := '';
    cxCurrencyEdit6.Value := 0;
  end else
  if rg_charge_Cser2.Checked then cxLabel71.Caption := '원' else
  if rg_charge_Cser3.Checked then cxLabel71.Caption := '%' ;
end;

procedure TFrm_APPA1.rg_charge_ser10Click(Sender: TObject);
begin
	lbl4.Visible := True;
	if rg_charge_ser10.Checked then
	begin
		if edt2.Text  = '' then
			lbl4.Caption := '[ 설정된 콜마너 SMS 건당 과금금액이 없습니다. 문의 : 1688-1688]'
		else
			lbl4.Caption := '[ 콜마너 SMS 건당 과금금액은 [  '+ edt2.Text + ' ] 원 입니다.]';
	end;
end;

procedure TFrm_APPA1.OF_OneDaychkClick(Sender: TObject);
begin
	if OF_OneDaychk.Checked then OF_DAY.Enabled := True
	                        else OF_DAY.Enabled := False;
end;

procedure TFrm_APPA1.CE_OneDaychkClick(Sender: TObject);
begin
	if CE_OneDaychk.Checked then CE_DAY.Enabled := True
	                        else CE_DAY.Enabled := False;
end;

procedure TFrm_APPA1.NE_OneDaychkClick(Sender: TObject);
begin
	if NE_OneDaychk.Checked then NE_DAY.Enabled := True
	                        else NE_DAY.Enabled := False;
end;

end.

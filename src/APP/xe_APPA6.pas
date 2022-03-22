unit xe_APPA6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxCheckBox, cxCalendar, cxTimeEdit, cxTextEdit, cxGridLevel,
  cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_APPA6 = class(TForm)
    cxGridA6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    CID_SMS_SENT_STAT_List: TcxGridBandedTableView;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn60: TcxGridBandedColumn;
    cxGridBandedColumn61: TcxGridBandedColumn;
    cxGridBandedColumn62: TcxGridBandedColumn;
    cxGridLevel5: TcxGridLevel;
    PnlMainA6: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    cxLabel79: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cbKeynumberA6: TcxComboBox;
    cxBrNo5: TcxTextEdit;
    cxHdNo5: TcxTextEdit;
    cxSEYearA6: TcxSpinEdit;
    cxSEMonthA6: TcxSpinEdit;
    edtBranchSMSCash: TcxTextEdit;
    lblSosokNameA6: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    Shape7: TShape;
    procedure FormCreate(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
		procedure btnSearchA6Click(Sender: TObject);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcelA6Click(Sender: TObject);
  private
		{ Private declarations }
		ismsSum1, ismsSum2, ismsSum3, ismsSum4, ismsSum5, ismsSum6, ismsSum7, ismsSum8, ismsSum9 : integer;
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init;
		procedure proc_CID_SMS_SENT_STAT;
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
	public
    { Public declarations }
    procedure proc_Branch_Change;
  end;

var
  Frm_APPA6: TFrm_APPA6;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm, xe_SMS01;

procedure TFrm_APPA6.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA6.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
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

procedure TFrm_APPA6.proc_BrNameSet;
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
			cbKeynumberA6.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA6.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;

	if cbKeynumberA6.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumberA6.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	if (cbKeynumberA6.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumberA6.ItemIndex := 0;

		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumberA6.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumberA6.ItemIndex];

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
		end
		else
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
		lblSosokNameA6.Caption := sName;
//		cbKeynumber06.Width := 190;
		cbKeynumberA6.Tag := 0;
	end else
	begin
		lblSosokNameA6.Caption := sName;
		cbKeynumberA6.ItemIndex := 0;
//		cbKeynumber06.Width := 349;
		cbKeynumberA6.Tag := 1;
	end;
	CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);

	edtBranchSMSCash.Text := '';
end;

procedure TFrm_APPA6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA6.FormCreate(Sender: TObject);
begin
	proc_init;
end;

procedure TFrm_APPA6.FormDestroy(Sender: TObject);
begin
  Frm_APPA6 := Nil;
end;

procedure TFrm_APPA6.proc_init;
var i : integer;
begin
	proc_BrNameSet;

	cxSEYearA6.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
	cxSEYearA6.Properties.MaxValue := cxSEYearA6.Value;
	cxSEYearA6.Properties.MinValue := cxSEYearA6.Value - 1;
	cxSEMonthA6.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

	CID_SMS_SENT_STAT_List.Columns[0].DataBinding.ValueType := 'Integer';
	CID_SMS_SENT_STAT_List.Columns[1].DataBinding.ValueType := 'String';
	for i := 2 to CID_SMS_SENT_STAT_List.ColumnCount - 1 do
	begin
		CID_SMS_SENT_STAT_List.Columns[i].DataBinding.ValueType := 'String';
	end;
end;

procedure TFrm_APPA6.cbKeynumber01Click(Sender: TObject);
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
			end
			else
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

	lblSosokNameA6.Caption := sName;
	cxHdNo5.Text := sHdNo;
	cxBrNo5.Text := sBrNo;
	CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
	if (cbKeynumberA6.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA6Click(Sender);
end;

procedure TFrm_APPA6.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APPA6.btnSearchA6Click(Sender: TObject);
begin
	if Trim(cxBrNo5.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA6.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_SMS_SENT_STAT
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APPA6.proc_CID_SMS_SENT_STAT;
var
	XmlData, Param, ErrMsg, sBrNo, msg, sBrName, sDate, sMonth : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	i, j, k, ErrCode, iCnt, iRow : Integer;
	Cash, Account: string;
begin

	try
    sBrNo := cxBrNo5.Text;

    if sBrNo = '' then
    begin
			GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
			Exit;
		end;

		if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
			GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
			Exit;
    end;

    if fGetChk_Search_HdBrNo('콜마너SMS발송일별통계') then Exit;

		if cxSEYearA6.Text = '' then
			cxSEYearA6.Text := FormatDateTime('yyyy', Now);
		if cxSEMonthA6.Text = '' then
			cxSEMonthA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
		sMonth := '';
		if StrToIntDef(cxSEMonthA6.Text, 0) < 10 then sMonth := '0' + cxSEMonthA6.Text
		else
			sMonth := cxSEMonthA6.Text;
		Param := cbKeynumberA6.Text + '│' + cxSEYearA6.Text + sMonth;//FormatDateTime('YYYYMM', de_T6Date.Date);

		if not RequestBase(GetSel05('CID_SMS_SENT_STAT', 'mng_custapp.CID_SMS_SENT_STAT', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('SMS발송 일별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
    end;


		xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
		  ismsSum1 := 0; ismsSum2 := 0; ismsSum3 := 0; ismsSum4 := 0; ismsSum5 := 0; ismsSum6 := 0; ismsSum7 := 0; ismsSum8 := 0; ismsSum9 := 0;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
		  	CID_SMS_SENT_STAT_List.BeginUpdate;
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	try
		  		iRow := 0;
		  		for I := 0 to lst_Result.length - 1 do
          begin
		  			// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

		  			if ls_Rcrd[0] <> sDate then
		  				iRow := CID_SMS_SENT_STAT_List.DataController.AppendRecord;
		  			// 1 Record 추가

		  			CID_SMS_SENT_STAT_List.DataController.Values[iRow, 0] := iRow + 1;
		  			CID_SMS_SENT_STAT_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  			sDate := ls_Rcrd[0];
		  			if ls_Rcrd[1] = '오퍼링' then
		  			begin
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 2]  := ls_Rcrd[2];
		  				ismsSum1 := ismsSum1 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 5]  := ls_Rcrd[3];
		  				ismsSum2 := ismsSum2 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 8]  := ls_Rcrd[4];
		  				ismsSum3 := ismsSum3 + StrToIntDef(ls_Rcrd[4], 0);
		  			end	else
		  			if ls_Rcrd[1] = '통화종료' then
		  			begin
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 3]  := ls_Rcrd[2];
		  				ismsSum4 := ismsSum4 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 6]  := ls_Rcrd[3];
		  				ismsSum5 := ismsSum5 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 9]  := ls_Rcrd[4];
		  				ismsSum6 := ismsSum6 + StrToIntDef(ls_Rcrd[4], 0);
		  			end	else
		  			if ls_Rcrd[1] = '미통화' then
		  			begin
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 4]  := ls_Rcrd[2];
		  				ismsSum7 := ismsSum7 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 7]  := ls_Rcrd[3];
		  				ismsSum8 := ismsSum8 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_SMS_SENT_STAT_List.DataController.Values[iRow, 10] := ls_Rcrd[4];
		  				ismsSum9 := ismsSum9 + StrToIntDef(ls_Rcrd[4], 0);
		  			end;
		  		end;
		  	finally
		  		ls_Rcrd.Free;
		  		CID_SMS_SENT_STAT_List.EndUpdate;
		  		for i := 0 to CID_SMS_SENT_STAT_List.DataController.RowCount - 1 do
		  		begin
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 2] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 2] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 3] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 3] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 4] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 4] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 5] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 5] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 6] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 6] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 7] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 7] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 8] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 8] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 9] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 9] := 0;
		  			if CID_SMS_SENT_STAT_List.DataController.Values[i, 10] < 0 then
		  				 CID_SMS_SENT_STAT_List.DataController.Values[i, 10] := 0;
		  		end;
		  	end;
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        try
  	  		if not Frm_SMS01.RequestBranchSMSInfo(cxBrNo5.text, Cash, Account) then	Exit;
	    		edtBranchSMSCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
        finally
          Frm_SMS01.Free;
        end;
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
		  end else
		  begin
		  	CID_SMS_SENT_STAT_List.DataController.SetRecordCount(0);
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        try
  	  		if not frm_SMS01.RequestBranchSMSInfo(cxBrNo5.text, Cash, Account) then	Exit;
	    		edtBranchSMSCash.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
        finally
          Frm_SMS01.Free;
        end;
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
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

procedure TFrm_APPA6.btnExcelA6Click(Sender: TObject);
begin
  if CID_SMS_SENT_STAT_List.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.CMP_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[회사메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS발송일별통계.xls';
  Frm_Main.sgRpExcel := Format('고객어플>SMS발송일별통계]%s건', [GetMoneyStr(CID_SMS_SENT_STAT_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA6;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: String);
begin
	AText := IntToStr(ismsSum1);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum4);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum7);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum2);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum5);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum8);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum3);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum6);
end;

procedure TFrm_APPA6.CID_SMS_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(ismsSum9);
end;

procedure TFrm_APPA6.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
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

end.

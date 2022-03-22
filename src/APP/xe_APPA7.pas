unit xe_APPA7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxCheckBox, cxCalendar, cxTimeEdit, cxTextEdit, Vcl.ExtCtrls, cxGroupBox,
  cxGridLevel, cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_APPA7 = class(TForm)
    lblSosokNameA7: TcxLabel;
    btnSearchA7: TcxButton;
    cbKeynumberA7: TcxComboBox;
    cxGridA7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    CID_PUSH_SENT_STAT_List: TcxGridBandedTableView;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridLevel6: TcxGridLevel;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxSEYearA7: TcxSpinEdit;
    cxSEMonthA7: TcxSpinEdit;
    cxBrNo6: TcxTextEdit;
    cxHdNo6: TcxTextEdit;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridBandedColumn45: TcxGridBandedColumn;
    cxGridBandedColumn46: TcxGridBandedColumn;
    cxGridBandedColumn47: TcxGridBandedColumn;
    cxGridBandedColumn48: TcxGridBandedColumn;
    cxGridBandedColumn49: TcxGridBandedColumn;
    cxGridBandedColumn50: TcxGridBandedColumn;
    cxGridBandedColumn51: TcxGridBandedColumn;
    cxGridBandedColumn52: TcxGridBandedColumn;
    cxGridBandedColumn53: TcxGridBandedColumn;
    btnExcelA7: TcxButton;
    cxGridBandedColumn64: TcxGridBandedColumn;
    cxGridBandedColumn65: TcxGridBandedColumn;
    edtBranchSMSCash2: TcxTextEdit;
    PnlMainA7: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    cxLabel218: TcxLabel;
    cxLabel79: TcxLabel;
    cxLabel78: TcxLabel;
    Shape5: TShape;
    cxLabel80: TcxLabel;
    Shape6: TShape;
    Shape7: TShape;
    procedure FormCreate(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
		procedure btnSearchA7Click(Sender: TObject);
    procedure CID_PUSH_SENT_STAT_ListBands1HeaderClick(Sender: TObject);
		procedure btn8Click(Sender: TObject);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems9GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems12GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems10GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems13GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems14GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems15GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems16GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
		{ Private declarations }
		iPUSHSum1, iPUSHSum2, iPUSHSum3, iPUSHSum4, iPUSHSum5, iPUSHSum6, iPUSHSum7, iPUSHSum8, iPUSHSum9, iPUSHSum10 : integer;
		iPUSHSum11, iPUSHSum12, iPUSHSum13, iPUSHSum14, iPUSHSum15, iPUSHCNTSum, IPUSHAMTSum  : integer;
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init;
		procedure proc_CID_PUSH_SENT_STAT;
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
	public
    { Public declarations }
    procedure proc_Branch_Change;
  end;

var
  Frm_APPA7: TFrm_APPA7;

implementation

{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm, xe_SMS01;

procedure TFrm_APPA7.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA7.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
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

procedure TFrm_APPA7.proc_BrNameSet;
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
			cbKeynumberA7.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA7.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;

	if cbKeynumberA7.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumberA7.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	if (cbKeynumberA7.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumberA7.ItemIndex := 0;
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumberA7.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumberA7.ItemIndex];

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
		lblSosokNameA7.Caption := sName;
//		cbKeynumber07.Width := 190;
		cbKeynumberA7.Tag := 0;
	end else
	begin
		lblSosokNameA7.Caption := sName;
		cbKeynumberA7.ItemIndex := 0;
//		cbKeynumber07.Width := 349;
		cbKeynumberA7.Tag := 1;
	end;
	CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);

	edtBranchSMSCash2.Text := '';
end;

procedure TFrm_APPA7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA7.FormCreate(Sender: TObject);
begin
	proc_init;
end;

procedure TFrm_APPA7.FormDestroy(Sender: TObject);
begin
  Frm_APPA7 := Nil;
end;

procedure TFrm_APPA7.proc_init;
var i : integer;
begin
	proc_BrNameSet;

	cxSEYearA7.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
	cxSEYearA7.Properties.MaxValue := cxSEYearA7.Value;
	cxSEYearA7.Properties.MinValue := cxSEYearA7.Value - 1;
	cxSEMonthA7.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

	CID_PUSH_SENT_STAT_List.Columns[0].DataBinding.ValueType := 'Integer';
	CID_PUSH_SENT_STAT_List.Columns[1].DataBinding.ValueType := 'String';
	for i := 2 to CID_PUSH_SENT_STAT_List.ColumnCount - 1 do
	begin
		CID_PUSH_SENT_STAT_List.Columns[i].DataBinding.ValueType := 'Currency';
	end;
end;

procedure TFrm_APPA7.cbKeynumber01Click(Sender: TObject);
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

	lblSosokNameA7.Caption := sName;
	cxHdNo6.Text := sHdNo;
	cxBrNo6.Text := sBrNo;
	CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
	if (cbKeynumberA7.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA7Click(Sender);
end;

procedure TFrm_APPA7.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APPA7.btnSearchA7Click(Sender: TObject);
begin
	if Trim(cxBrNo6.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA7.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_PUSH_SENT_STAT
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APPA7.proc_CID_PUSH_SENT_STAT;
var
	XmlData, Param, ErrMsg, sBrNo, msg, sBrName, sDate, sMonth : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	i, j, k, ErrCode, iCnt, iRow : Integer;
	Cash, Account : string;
begin

	try
		sBrNo := cxBrNo6.Text;
		sDate := '';
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

    if fGetChk_Search_HdBrNo('스마트PUSH발송일별통계') then Exit;

		if cxSEYearA7.Text = '' then
			cxSEYearA7.Text := FormatDateTime('yyyy', Now);
		if cxSEMonthA7.Text = '' then
			cxSEMonthA7.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
		sMonth := '';
		if strtoint(cxSEMonthA7.Text) < 10 then  sMonth := '0' + cxSEMonthA7.Text
		else
			sMonth := cxSEMonthA7.Text;

		Param := cbKeynumberA7.Text + '│' + cxSEYearA7.Text + sMonth;//FormatDateTime('YYYYMM', de_T7Date.Date);

		if not RequestBase(GetSel05('CID_PUSH_SENT_STAT', 'mng_custapp.CID_PUSH_SENT_STAT', '1000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('스마트푸시발송 일별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  iPUSHSum1 := 0; iPUSHSum2 := 0; iPUSHSum3 := 0; iPUSHSum4 := 0; iPUSHSum5 := 0; iPUSHSum6 := 0; iPUSHSum7 := 0; iPUSHSum8 := 0; iPUSHSum9 := 0;
		  iPUSHSum10 := 0; iPUSHSum11 := 0; iPUSHSum12 := 0; iPUSHSum13 := 0; iPUSHSum14 := 0; iPUSHSum15 := 0; iPUSHCNTSum := 0; IPUSHAMTSum := 0;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
		  	CID_PUSH_SENT_STAT_List.BeginUpdate;
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	try
		  		iRow := 0;
		  		for I := 0 to lst_Result.length - 1 do
          begin
		  			// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			if ls_Rcrd[0] <> sDate then
		  				iRow := CID_PUSH_SENT_STAT_List.DataController.AppendRecord;
		  			// 1 Record 추가

		  			CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 0] := iRow + 1;
		  			CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  			sDate := ls_Rcrd[0];
		  			if ls_Rcrd[1] = '오퍼링' then
		  			begin
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 2]  := ls_Rcrd[2];
		  				iPUSHSum1 := iPUSHSum1 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 5]  := ls_Rcrd[3];
		  				iPUSHSum2 := iPUSHSum2 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 8]  := ls_Rcrd[4];
		  				iPUSHSum3 := iPUSHSum3 + StrToIntDef(ls_Rcrd[4], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 11] := ls_Rcrd[5];
		  				iPUSHSum4 := iPUSHSum4 + StrToIntDef(ls_Rcrd[5], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 14] := ls_Rcrd[6];
		  				iPUSHSum5 := iPUSHSum5 + StrToIntDef(ls_Rcrd[6], 0);

		  				iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
		  				IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
		  			end else
		  			if ls_Rcrd[1] = '통화종료' then
		  			begin
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 3]  := ls_Rcrd[2];
		  				iPUSHSum6 := iPUSHSum6 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 6]  := ls_Rcrd[3];
		  				iPUSHSum7 := iPUSHSum7 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 9]  := ls_Rcrd[4];
		  				iPUSHSum8 := iPUSHSum8 + StrToIntDef(ls_Rcrd[4], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 12] := ls_Rcrd[5];
		  				iPUSHSum9 := iPUSHSum9 + StrToIntDef(ls_Rcrd[5], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 15] := ls_Rcrd[6];
		  				iPUSHSum10 := iPUSHSum10 + StrToIntDef(ls_Rcrd[6], 0);
		  				iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
		  				IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
		  			end else
		  			if ls_Rcrd[1] = '미통화' then
		  			begin
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 4]  := ls_Rcrd[2];
		  				iPUSHSum11 := iPUSHSum11 + StrToIntDef(ls_Rcrd[2], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 7]  := ls_Rcrd[3];
		  				iPUSHSum12 := iPUSHSum12 + StrToIntDef(ls_Rcrd[3], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 10] := ls_Rcrd[4];
		  				iPUSHSum13 := iPUSHSum13 + StrToIntDef(ls_Rcrd[4], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 13] := ls_Rcrd[5];
		  				iPUSHSum14 := iPUSHSum14 + StrToIntDef(ls_Rcrd[5], 0);
		  				CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 16] := ls_Rcrd[6];
		  				iPUSHSum15 := iPUSHSum15 + StrToIntDef(ls_Rcrd[6], 0);
		  				iPUSHCNTSum := iPUSHCNTSum +  + StrToIntDef(ls_Rcrd[7], 0);
		  				IPUSHAMTSum := IPUSHAMTSum +  + StrToIntDef(ls_Rcrd[8], 0);
		  			end;
		  		CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 17] := IntToStr(iPUSHCNTSum);
		  		CID_PUSH_SENT_STAT_List.DataController.Values[iRow, 18] := IntToStr(IPUSHAMTSum);
		  		end;
		  	finally
		  		ls_Rcrd.Free;
		  		CID_PUSH_SENT_STAT_List.EndUpdate;
		  		for i := 0 to CID_PUSH_SENT_STAT_List.DataController.RowCount - 1 do
		  		begin
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 2] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 2] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 3] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 3] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 4] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 4] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 5] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 5] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 6] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 6] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 7] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 7] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 8] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 8] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 9] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 9] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 10] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 10] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 11] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 11] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 12] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 12] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 13] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 13] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 14] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 14] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 15] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 15] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 16] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 16] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 17] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 17] := 0;
		  			if CID_PUSH_SENT_STAT_List.DataController.Values[i, 18] < 0 then
		  				 CID_PUSH_SENT_STAT_List.DataController.Values[i, 18] := 0;
		  		end;
		  	end;
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        try
  	  		if not Frm_SMS01.RequestBranchSMSInfo(cxBrNo6.text, Cash, Account) then	Exit;
          edtBranchSMSCash2.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
        finally
          Frm_SMS01.Free;
        end;
        /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
		  end else
		  begin
		  	CID_PUSH_SENT_STAT_List.DataController.SetRecordCount(0);
	      /////////////////////////지사 SMS 잔액/////////////////////////////////////////////////////
        if ( Not Assigned(Frm_SMS01) ) Or ( Frm_SMS01 = Nil ) then Frm_SMS01 := TFrm_SMS01.Create(Nil);
        try
  	  		if not Frm_SMS01.RequestBranchSMSInfo(cxBrNo6.text, Cash, Account) then	Exit;
          edtBranchSMSCash2.Text := FormatFloat('#,##0.#', StrToFloatDef(Cash, 0));
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

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListBands1HeaderClick(
  Sender: TObject);
var
	i: Integer;
	sTemp: string;
begin
	try
		for i := 0 to CID_PUSH_SENT_STAT_List.ColumnCount - 1 do
		begin
			if i <> 0 then
			begin
				CID_PUSH_SENT_STAT_List.Columns[i].SortIndex := -1;
				CID_PUSH_SENT_STAT_List.Columns[i].SortOrder := soNone;
      end;
    end;
		if (CID_PUSH_SENT_STAT_List.Columns[0].SortOrder = soNone) or
			(CID_PUSH_SENT_STAT_List.Columns[0].SortOrder =
      soDescending) then
			CID_PUSH_SENT_STAT_List.Columns[0].SortOrder := soAscending
    else
			if CID_PUSH_SENT_STAT_List.Columns[0].SortOrder = soAscending then
			CID_PUSH_SENT_STAT_List.Columns[0].SortOrder := soDescending;
		CID_PUSH_SENT_STAT_List.Columns[0].SortIndex := 0;
		CID_PUSH_SENT_STAT_List.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
			sTemp := 'Tfrm_APP.CID_PUSH_SENT_STAT_ListHeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_APPA7.btn8Click(Sender: TObject);
begin
  if CID_PUSH_SENT_STAT_List.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '스마트푸시발송일별통계.xls';
  Frm_Main.sgRpExcel := Format('고객어플>스마트푸시발송일별통계]%s건', [GetMoneyStr(CID_PUSH_SENT_STAT_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum1);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum2);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum3);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems9GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum4);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems12GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum5);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum6);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum11);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum7);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum12);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum8);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems8GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum13);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems10GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum9);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems11GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum14);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems13GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: String);
begin
	AText := IntToStr(iPUSHSum10);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems14GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
	AText := IntToStr(iPUSHSum15);
end;

procedure TFrm_APPA7.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
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
			end else
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

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems15GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: String);
begin
	AText := IntToStr(iPUSHCNTSum);
end;

procedure TFrm_APPA7.CID_PUSH_SENT_STAT_ListTcxGridDataControllerTcxDataSummaryFooterSummaryItems16GetText(
	Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
	var AText: String);
begin
	AText := IntToStr(IPUSHAMTSum);
end;

end.

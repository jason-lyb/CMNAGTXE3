unit xe_APPA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxCheckBox, cxCalendar, cxTimeEdit, cxTextEdit, cxContainer,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGroupBox, cxGridLevel,
  cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_APPA4 = class(TForm)
    cxGridA4: TcxGrid;
    cxViewNoticeList1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    CID_SMS_HISTORY_List: TcxGridBandedTableView;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxnGridOrderSTviewColumn: TcxGridBandedColumn;
    pm_Date: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    PnlMainA4: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label6: TLabel;
    cxLabel218: TcxLabel;
    cxLabel79: TcxLabel;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    cbKeynumberA4: TcxComboBox;
    cxBrNo3: TcxTextEdit;
    cxHdNo3: TcxTextEdit;
    cbbA4: TcxTextEdit;
    lblSosokNameA4: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    btnDateA4: TcxButton;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    Shape7: TShape;
    procedure FormCreate(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure cbbA4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
		{ Private declarations }
		ismsSum1, ismsSum2, ismsSum3, ismsSum4, ismsSum5, ismsSum6, ismsSum7, ismsSum8, ismsSum9 : integer;
		iPUSHSum1, iPUSHSum2, iPUSHSum3, iPUSHSum4, iPUSHSum5, iPUSHSum6, iPUSHSum7, iPUSHSum8, iPUSHSum9, iPUSHSum10 : integer;
		iPUSHSum11, iPUSHSum12, iPUSHSum13, iPUSHSum14, iPUSHSum15, iPUSHCNTSum, IPUSHAMTSum  : integer;
		IPUSHAMTTOTSum  : integer;
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init;
		procedure proc_CID_SMS_SENT_HISTORY;
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
	public
    { Public declarations }
    procedure proc_Branch_Change;
  end;

var
  Frm_APPA4: TFrm_APPA4;

implementation


{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm;

procedure TFrm_APPA4.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA4.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
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

procedure TFrm_APPA4.proc_BrNameSet;
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
			cbKeynumberA4.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA4.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;

	if cbKeynumberA4.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumberA4.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	if (cbKeynumberA4.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumberA4.ItemIndex := 0;
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumberA4.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumberA4.ItemIndex];

				iIdx := scb_BranchCode.IndexOf(sBrNo);
				if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
				else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
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
		lblSosokNameA4.Caption := sName;
//		cbKeynumber04.Width := 190;
		cbKeynumberA4.Tag := 0;
	end else
	begin
		lblSosokNameA4.Caption := sName;
		cbKeynumberA4.ItemIndex := 0;
//		cbKeynumber04.Width := 349;
		cbKeynumberA4.Tag := 1;
	end;
	CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
end;

procedure TFrm_APPA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA4.FormCreate(Sender: TObject);
Var i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat := 'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    := 'yyyy/mm/dd';
      end;
    end;
  except
  end;
	proc_init;
end;

procedure TFrm_APPA4.FormDestroy(Sender: TObject);
begin
  Frm_APPA4 := Nil;
end;

procedure TFrm_APPA4.proc_init;
var i : integer;
begin
	proc_BrNameSet;

	cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA4.Date := cxDtStartA4.Date + 7;

	CID_SMS_HISTORY_List.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CID_SMS_HISTORY_List.ColumnCount - 1 do
	begin
		CID_SMS_HISTORY_List.Columns[i].DataBinding.ValueType := 'String';
	end;
end;

procedure TFrm_APPA4.btnExcelA4Click(Sender: TObject);
begin
  if CID_SMS_HISTORY_List.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := 'SMS발송내역.xls';
  Frm_Main.sgRpExcel := Format('고객어플>SMS발송내역]%s건', [GetMoneyStr(CID_SMS_HISTORY_List.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA4;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APPA4.cbbA4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btnSearchA4Click(nil);
end;

procedure TFrm_APPA4.cbKeynumber01Click(Sender: TObject);
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

	lblSosokNameA4.Caption := sName;
	cxHdNo3.Text := sHdNo;
	cxBrNo3.Text := sBrNo;
	CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
	if (cbKeynumberA4.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA4Click(Sender);
end;

procedure TFrm_APPA4.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APPA4.proc_CID_SMS_SENT_HISTORY;
var
  XmlData, Param, ErrMsg, sBrNo, msg, sBrName : string;
	xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
	i, j, k, ErrCode, iCnt, iRow : Integer;
begin
	try
    sBrNo := cxBrNo3.Text;

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

    if fGetChk_Search_HdBrNo('콜마너SMS발송내역') then Exit;

		Param := cbKeynumberA4.Text + '│' + Trim(Param_Filtering(cbbA4.Text)) + '│'
					 + FormatDateTime('YYYYMMDD', cxDtStartA4.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA4.Date);

		if not RequestBase(GetSel05('CID_SMS_SENT_HISTORY', 'mng_custapp.CID_SMS_SENT_HISTORY', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
			GMessagebox(Format('CID콜마너 SMS 발송내역 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
		  	CID_SMS_HISTORY_List.BeginUpdate;
		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	try
		  		iRow := 0;
		  		for I := 0 to lst_Result.length - 1 do
          begin
		  			// 0 지사코드, 1 지사명, 2 출금계좌, 3 은행명, 4 은행코드, 5 예금주, 6 본사정산금액, 7 지사정산금액, 8 설정금액, 9 잔액, 10 정산구분(0:정산안함/1:일일정산/2:월요일정산)
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := CID_SMS_HISTORY_List.DataController.AppendRecord;
		  			// 1 Record 추가

		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 0] := iRow + 1;
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 5] := ls_Rcrd[4];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 6] := ls_Rcrd[5];
		  			CID_SMS_HISTORY_List.DataController.Values[iRow, 7] := ls_Rcrd[6];
		  		end;
		  	finally
		  		ls_Rcrd.Free;
		  		CID_SMS_HISTORY_List.EndUpdate;
		  	end;
		  end else
		  begin
		  	CID_SMS_HISTORY_List.DataController.SetRecordCount(0);
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

procedure TFrm_APPA4.btnSearchA4Click(Sender: TObject);
begin
	if Trim(cxBrNo3.Text) = '' then
	begin
		GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
		Exit;
	end;

	if (cbKeynumberA4.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then proc_CID_SMS_SENT_HISTORY
	else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APPA4.btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APPA4.MenuItem25Click(Sender: TObject);
begin
	cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA4.Date := cxDtStartA4.Date + 7;
end;

procedure TFrm_APPA4.MenuItem26Click(Sender: TObject);
begin
				cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 14;
				cxDtEndA4.Date := cxDtStartA4.Date + 14;
end;

procedure TFrm_APPA4.MenuItem27Click(Sender: TObject);
begin
				cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
				cxDtEndA4.Date := cxDtStartA4.Date + 31;
end;

procedure TFrm_APPA4.MenuItem28Click(Sender: TObject);
begin
				cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 62;
				cxDtEndA4.Date := cxDtStartA4.Date + 62;
end;

procedure TFrm_APPA4.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if key = vk_Return then
		btnSearchA4Click(nil);
end;

procedure TFrm_APPA4.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
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
{					GetTextSeperationEx('|', scb_CustAPPUseYn.Strings[i], sTmp);
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
					end;   }
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

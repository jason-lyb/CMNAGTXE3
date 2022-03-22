unit xe_APPA3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, ActiveX, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxCheckBox,
  cxCalendar, cxTimeEdit, cxTextEdit, cxButtonEdit, Vcl.OleCtrls, SHDocVw,
  cxGridLevel, cxGridBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_APPA3 = class(TForm)
    cxHdNo2: TcxTextEdit;
    cxBrNo2: TcxTextEdit;
    cxGridA3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxPushList: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxPushListColumn1: TcxGridBandedColumn;
    cxPushListColumn2: TcxGridBandedColumn;
    Pnl_WebA3: TPanel;
    wbA3: TWebBrowser;
    btnHelpCloseA3: TcxButton;
    cxPushListColumn3: TcxGridBandedColumn;
    cxPushListColumn4: TcxGridBandedColumn;
    cxPushListColumn5: TcxGridBandedColumn;
    Shape1: TShape;
    lbl_WebTitleA3: TcxLabel;
    Label4: TLabel;
    pm_Date: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    PnlMainA3: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label6: TLabel;
    cxLabel218: TcxLabel;
    cxLabel79: TcxLabel;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    cbKeynumberA3: TcxComboBox;
    lblSosokNameA3: TcxLabel;
    cxLabel83: TcxLabel;
    btnDateA3: TcxButton;
    cxDtEndA3: TcxDateEdit;
    cxDtStartA3: TcxDateEdit;
    Shape7: TShape;
    cxGroupBox2: TcxGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cbKeynumber03PropertiesChange(Sender: TObject);
    procedure cxPushListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHelpCloseA3Click(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure cxPushListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure btnExcelA3Click(Sender: TObject);
  private
		{ Private declarations }
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init;
    procedure WBloadHtml(WebBrowser: TWebBrowser; HtmlCode: string);
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
	public
    { Public declarations }
    procedure proc_Branch_Change;
    procedure proc_PushList( sGongNo : string);
  end;

var
  Frm_APPA3: TFrm_APPA3;

implementation


{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm;

procedure TFrm_APPA3.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA3.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
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

procedure TFrm_APPA3.proc_BrNameSet;
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
			cbKeynumberA3.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end	else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA3.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;

	if cbKeynumberA3.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumberA3.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

	if (cbKeynumberA3.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumberA3.ItemIndex := 0;
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumberA3.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumberA3.ItemIndex];

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
		lblSosokNameA3.Caption := sName;
//		cbKeynumber03.Width := 190;
		cbKeynumberA3.Tag := 0;
	end else
	begin
		lblSosokNameA3.Caption := sName;
		cbKeynumberA3.ItemIndex := 0;
//		cbKeynumber03.Width := 349;
		cbKeynumberA3.Tag := 1;
	end;
	cxPushList.DataController.SetRecordCount(0);
end;

procedure TFrm_APPA3.btnExcelA3Click(Sender: TObject);
begin
  if cxPushList.DataController.RecordCount = 0 then
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
  Frm_Main.sgRpExcel := Format('고객어플>앱푸시관리]%s건', [GetMoneyStr(cxPushList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APPA3.btnSearchA3Click(Sender: TObject);
var msg, sBrName : String;
begin
	if Trim(cxBrNo2.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

	if (cbKeynumberA3.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then
	begin
		if getKeyNumberCustUseYn(cxBrNo2.Text, cbKeynumberA3.Text) then
			proc_PushList('')
		{else
    begin
			msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
			sBrName := GetBrName(cxBrNo2.Text);
			GMessagebox(Format(msg, [cxBrNo2.Text, sBrName, cbKeynumber03.Text]), CDMSI);
		end;}
  end else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APPA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA3.FormCreate(Sender: TObject);
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

procedure TFrm_APPA3.FormDestroy(Sender: TObject);
begin
  Frm_APPA3 := Nil;
end;

procedure TFrm_APPA3.proc_init;
var i : integer;
begin
	proc_BrNameSet;

	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA3.Date := cxDtStartA3.Date + 31;

	cxPushList.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_APPA3.WBloadHtml(WebBrowser:TWebBrowser; HtmlCode: string);
var sl : TStringList;
    ms : TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.seek(0,0);
        (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

procedure TFrm_APPA3.proc_PushList( sGongNo : string);
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin
  if Trim(cxBrNo2.Text) = '' then
  begin
    GMessagebox('앱 푸시 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('앱푸시관리') then Exit;

  if sGongNo = '' then
		Param := cxBrNo2.Text + '│' + cbKeynumberA3.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + '│'
  else
    Param := cxBrNo2.Text + '│' + cbKeynumberA3.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + '│' + sGongNo;
    
  if not RequestBase(GetSel05('GET_APP_NOTICE_PUSH_LIST', 'mng_custapp.get_app_notice_push_list', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('푸시 리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

	cxPushList.DataController.SetRecordCount(0);

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      cxPushList.BeginUpdate;
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        iRow := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
	  			// 0 게시물번호, 1 푸시일련번호, 2 상태(0:발송대기, 1:발송중, 2:완료, 4:취소, R:예약), 3 제목(푸시알림 메세지), 4 전송시간, 5 발송건수, 6 성공건수, 7 실패건수, 8 등록자이름, 9 등록일시, 10 게시물Type, 11 게시물제목, 12 게시물내용
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

          iCnt := cxPushList.DataController.AppendRecord;
          cxPushList.DataController.Values[iCnt, 00] := iRow + 1;
	  			cxPushList.DataController.Values[iCnt, 01] := ls_Rcrd[0];
          cxPushList.DataController.Values[iCnt, 02] := ls_Rcrd[1];
          if ls_Rcrd[2] = '0' then cxPushList.DataController.Values[iCnt, 03] := '발송대기' else
          if ls_Rcrd[2] = '1' then cxPushList.DataController.Values[iCnt, 03] := '발송중'   else
	  			if ls_Rcrd[2] = '2' then cxPushList.DataController.Values[iCnt, 03] := '완료'     else
          if ls_Rcrd[2] = '4' then cxPushList.DataController.Values[iCnt, 03] := '취소'     else
          if ls_Rcrd[2] = 'R' then cxPushList.DataController.Values[iCnt, 03] := '예약';
          if ls_Rcrd[4] = 'null' then
            cxPushList.DataController.Values[iCnt, 04] := ''
          else
            cxPushList.DataController.Values[iCnt, 04] := ls_Rcrd[4];
          cxPushList.DataController.Values[iCnt, 05] := ls_Rcrd[3];
          cxPushList.DataController.Values[iCnt, 06] := ls_Rcrd[8];
          cxPushList.DataController.Values[iCnt, 07] := ls_Rcrd[9];
          cxPushList.DataController.Values[iCnt, 08] := ls_Rcrd[5];
          cxPushList.DataController.Values[iCnt, 09] := ls_Rcrd[6];
          cxPushList.DataController.Values[iCnt, 10] := ls_Rcrd[7];

          cxPushList.DataController.Values[iCnt, 12] := ls_Rcrd[11];
          cxPushList.DataController.Values[iCnt, 13] := ls_Rcrd[10];
          cxPushList.DataController.Values[iCnt, 14] := ls_Rcrd[12];
          Inc(iRow);
        end;
      finally
        ls_Rcrd.Free;
      end;
	  	cxPushList.EndUpdate;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_APPA3.cbKeynumber01Click(Sender: TObject);
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
			end	else
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

	lblSosokNameA3.Caption := sName;
	cxHdNo2.Text := sHdNo;
	cxBrNo2.Text := sBrNo;
	if (cbKeynumberA3.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA3Click(Sender);
end;

procedure TFrm_APPA3.cbKeynumber03PropertiesChange(Sender: TObject);
begin
	cxPushList.DataController.SetRecordCount(0);
end;

procedure TFrm_APPA3.cxPushListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sUrl : String;
  nRow, nCol : Integer;
  ms : TMemoryStream;
begin
  nCol   := ACellViewInfo.item.Index;
  nRow   := Sender.DataController.FocusedRecordIndex;

  if nRow < 0 then Exit;

  if nCol = 5 then
  begin
    lbl_WebTitleA3.Caption := Trim(cxPushList.DataController.Values[nRow, 12]);
    if ( Trim(cxPushList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxPushList.DataController.Values[nRow, 13]) = '2' ) then
    begin
      if Pos('http', Trim(cxPushList.DataController.Values[nRow, 14])) > 0 then
        sUrl := Trim(cxPushList.DataController.Values[nRow, 14])
      else
        sUrl := 'http://' + Trim(cxPushList.DataController.Values[nRow, 14]);

      wbA3.Navigate(sUrl);
      Pnl_WebA3.Visible := True;
    end else
    if ( Trim(cxPushList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxPushList.DataController.Values[nRow, 13]) = '1' ) then
    begin
      sUrl := Trim(cxPushList.DataController.Values[nRow, 14]);

      WBloadHtml(wbA3, sUrl);
      Pnl_WebA3.Visible := True;
    end else
    begin
      sUrl := Trim(cxPushList.DataController.Values[nRow, 14]);

      WBloadHtml(wbA3, sUrl);
      Pnl_WebA3.Visible := True;
    end;
  end;
end;

procedure TFrm_APPA3.cxPushListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;

    if AItem.Index = 5 then AStyle.Color := $00D6E9F8
                       else AStyle.Color := clWhite;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_APPA3.btnHelpCloseA3Click(Sender: TObject);
begin
  Pnl_WebA3.Visible := False;
end;

procedure TFrm_APPA3.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) in [8, 13, 48..57, 17, 22] then
  else
    Key := #0;
end;

procedure TFrm_APPA3.btn6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APPA3.MenuItem25Click(Sender: TObject);
begin
	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA3.Date := cxDtStartA3.Date + 7;
end;

procedure TFrm_APPA3.MenuItem26Click(Sender: TObject);
begin
	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 14;
	cxDtEndA3.Date := cxDtStartA3.Date + 14;
end;

procedure TFrm_APPA3.MenuItem27Click(Sender: TObject);
begin
	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA3.Date := cxDtStartA3.Date + 31;
end;

procedure TFrm_APPA3.MenuItem28Click(Sender: TObject);
begin
	cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 62;
	cxDtEndA3.Date := cxDtStartA3.Date + 62;
end;

procedure TFrm_APPA3.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
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

end.

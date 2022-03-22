unit xe_APPA2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, cxGraphics, cxControls, cxLookAndFeels, ActiveX,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxCheckBox, cxCalendar, cxTimeEdit, cxTextEdit, cxButtonEdit,
  Vcl.Menus, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxMaskEdit, Vcl.StdCtrls, cxGroupBox, Vcl.OleCtrls, SHDocVw, Vcl.ExtCtrls,
  cxButtons, cxGridLevel, cxGridBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_APPA2 = class(TForm)
    btnInsertA2: TcxButton;
    cxHdNo1: TcxTextEdit;
    cxBrNo1: TcxTextEdit;
    cxGridA2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGongList: TcxGridBandedTableView;
    cxGongListColumn1: TcxGridBandedColumn;
    cxGongListColumn2: TcxGridBandedColumn;
    cxGongListColumn3: TcxGridBandedColumn;
    cxGongListColumn4: TcxGridBandedColumn;
    cxGongListColumn5: TcxGridBandedColumn;
    cxGongListColumn6: TcxGridBandedColumn;
    cxGongListColumn7: TcxGridBandedColumn;
    cxGongListColumn8: TcxGridBandedColumn;
    cxGongListColumn9: TcxGridBandedColumn;
    cxGongListColumn19: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGongListColumn10: TcxGridBandedColumn;
    cxGongListColumn11: TcxGridBandedColumn;
    Pnl_WebA2: TPanel;
    wbA2: TWebBrowser;
    cxGongListColumn12: TcxGridBandedColumn;
    lbl_WebTitleA2: TcxLabel;
    Shape2: TShape;
    cxGongListColumn13: TcxGridBandedColumn;
    cxGongListColumn14: TcxGridBandedColumn;
    pm_Date: TPopupMenu;
    miOneWeek: TMenuItem;
    miTwoWeek: TMenuItem;
    miOneMonth: TMenuItem;
    miTwoMonth: TMenuItem;
    PnlMainA2: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label6: TLabel;
    Label7: TLabel;
    cxLabel218: TcxLabel;
    cxLabel79: TcxLabel;
    btnSearchA2: TcxButton;
    btnExcelA2: TcxButton;
    cbKeynumberA2: TcxComboBox;
    lblSosokNameA2: TcxLabel;
    cxLabel83: TcxLabel;
    btnDateA2: TcxButton;
    cxDtEndA2: TcxDateEdit;
    cxDtStartA2: TcxDateEdit;
    Shape7: TShape;
    cxGroupBox2: TcxGroupBox;
    btnHelpCloseA2: TcxButton;
    cxGongListColumn15: TcxGridBandedColumn;
    cxGongListColumn16: TcxGridBandedColumn;
    cxGongListColumn17: TcxGridBandedColumn;
    cxGongListColumn18: TcxGridBandedColumn;
    procedure btnInsertA2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGongListColumn8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListColumn9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListColumn19PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGongListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cbKeynumber02PropertiesChange(Sender: TObject);
    procedure cxPushListStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnHelpCloseA2Click(Sender: TObject);
    procedure btn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure miOneWeekClick(Sender: TObject);
    procedure miTwoWeekClick(Sender: TObject);
    procedure miOneMonthClick(Sender: TObject);
    procedure miTwoMonthClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure btnExcelA2Click(Sender: TObject);
    procedure cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGongListStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxGongListColumn15PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
		{ Private declarations }
		TBrno : string;
		UseAPPKeyNumberCHK : boolean;
		procedure proc_BrNameSet;
		procedure proc_init;
    procedure proc_GongjiList;
    function proc_PushReservChk ( sGongNo : String ) : String;
    procedure WBloadHtml(WebBrowser: TWebBrowser; HtmlCode: string);
		function getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
		procedure GetAPPBrTelList(ABrNo: string; var AList: TStringList);
	public
    { Public declarations }
    procedure proc_Branch_Change;
  end;

var
  Frm_APPA2: TFrm_APPA2;

implementation


{$R *.dfm}

uses Main, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_system, xe_Dm, xe_APP01, xe_APPA3;

procedure TFrm_APPA2.btnInsertA2Click(Sender: TObject);
var msg, sBrName : String;
begin
  if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('앱 게시물 등록은 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;
  
	if (cbKeynumberA2.ItemIndex = 0) and (not UseAPPKeyNumberCHK) then Exit;

  if getKeyNumberCustUseYn(cxBrNo1.Text, cbKeynumberA2.Text) then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
    Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
    Frm_APP01.pnlTitle.Hint := 'I';
    Frm_APP01.pnlTitle.Caption := '  앱 게시물 등록 및 푸시 발송';
    Frm_APP01.pnlTitle.Color := $00D9E6D2;
    Frm_APP01.Btn_SaveOff.Caption := '저장후닫기';
    Frm_APP01.Btn_SaveNext.Caption := '저장후푸시발송';
    Frm_APP01.Btn_Init.Visible := True;
    Frm_App01.WebBrowser1.Tag := 0;
    Frm_APP01.Edt_Init;
    Frm_APP01.pnl_Init(1);
    Frm_APP01.Pnl_Web.Visible := False;
    Frm_APP01.Show;
  end else
  begin
    msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
    sBrName := GetBrName(cxBrNo1.Text);
		GMessagebox(Format(msg, [cxBrNo1.Text, sBrName, cbKeynumberA2.Text]), CDMSI);
  end;
end;

procedure TFrm_APPA2.btnExcelA2Click(Sender: TObject);
begin
  if cxGongList.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '앱게시물관리.xls';
  Frm_Main.sgRpExcel := Format('고객어플>앱게시물관리]%s건', [GetMoneyStr(cxGongList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA2;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_APPA2.proc_Branch_Change;
begin
  proc_BrNameSet;
end;

function TFrm_APPA2.getKeyNumberCustUseYn( sBrNo, sKeyNum : string ) : Boolean;
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

procedure TFrm_APPA2.proc_BrNameSet;
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
			cbKeynumberA2.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := TBrno;
		end else
		begin
			GetAPPBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumberA2.Properties.Items.Assign(StrList);
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
	end;

	sName := GetSosokInfo;
	cxHdNo1.Text := sHdNo;
	cxBrNo1.Text := sBrNo;

	if cbKeynumberA2.Properties.Items.Count > 0 then
		UseAPPKeyNumberCHK := True
	else
	begin
		UseAPPKeyNumberCHK := False;
		cbKeynumberA2.Properties.Items.Insert(0, '고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.');
	end;

  if (cbKeynumberA2.Properties.Items.IndexOf('고객어플을 신청하셔야 해당 메뉴를 이용하실 수 있습니다.') < 0) then
	begin
		cbKeynumberA2.ItemIndex := 0;

		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(cbKeynumberA2.Text)]
				else
					sBrNo := scb_DsBranchCode.Strings[cbKeynumberA2.ItemIndex];

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
		lblSosokNameA2.Caption := sName;
//-		cbKeynumber02.Width := 190;
		cbKeynumberA2.Tag := 0;
	end	else
	begin
		lblSosokNameA2.Caption := sName;
		cbKeynumberA2.ItemIndex := 0;
//-		cbKeynumber02.Width := 349;
		cbKeynumberA2.Tag := 1;
	end;
	cxGongList.DataController.SetRecordCount(0);
end;

procedure TFrm_APPA2.btnSearchA2Click(Sender: TObject);
var msg, sBrName : String;
begin
	if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

	if (cbKeynumberA2.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then
	begin
		if getKeyNumberCustUseYn(cxBrNo1.Text, cbKeynumberA2.Text) then
			proc_GongjiList
		{else
    begin
      msg := '[%s(%s)] 지사 [%s] 대표번호는 고객 어플을 사용하지 않는 지사입니다. ';
      sBrName := GetBrName(cxBrNo1.Text);
			GMessagebox(Format(msg, [cxBrNo1.Text, sBrName, cbKeynumber02.Text]), CDMSI);
		end;}
	end else
	begin
		GMessagebox('대표번호를 선택하셔야 합니다.', CDMSI);
	end;
end;

procedure TFrm_APPA2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_APPA2.FormCreate(Sender: TObject);
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

procedure TFrm_APPA2.FormDestroy(Sender: TObject);
begin
  Frm_APPA2 := Nil;
end;

procedure TFrm_APPA2.proc_init;
var i : integer;
begin
	proc_BrNameSet;

	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA2.Date := cxDtStartA2.Date + 31;

	cxGongList.OptionsView.NoDataToDisplayInfoText := '';
end;

procedure TFrm_APPA2.proc_GongjiList;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin
  if Trim(cxBrNo1.Text) = '' then
  begin
    GMessagebox('앱 게시물 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('앱게시물관리') then Exit;

  Param := cxBrNo1.Text + '│' + cbKeynumberA2.Text + '│' + FormatDateTime('YYYYMMDD', cxDtStartA2.Date) + '│' + FormatDateTime('YYYYMMDD', cxDtEndA2.Date);

	if not RequestBase(GetSel05('GET_APP_NOTICE_LIST', 'mng_custapp.get_app_notice_list', '1000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('게시물 리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  cxGongList.DataController.SetRecordCount(0);

	xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      cxGongList.BeginUpdate;
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        iRow := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
          // 0 게시물번호, 1 구분 [0:일반공지, 1:고정공지, 2:이벤트 3:미팝업공지], 2 타입(0.텍스트, 1.이미지,  2.URL), 3 제목, 4 내용, 5 등록자이름, 6 등록일시, 7 관련푸시발송여부, 8 게시여부(yn), 9 게시종료일(YYYYMMDD), 10 팝업여부(yn) 11 이미지파일명, 12 Text , 13 URL
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

          iCnt := cxGongList.DataController.AppendRecord;
          cxGongList.DataController.Values[iCnt, 00] := iRow + 1;
          cxGongList.DataController.Values[iCnt, 01] := ls_Rcrd[0];
          if ls_Rcrd[1] = '0' then cxGongList.DataController.Values[iCnt, 02] := '일반공지' else
          if ls_Rcrd[1] = '1' then cxGongList.DataController.Values[iCnt, 02] := '고정공지' else
	  			if ls_Rcrd[1] = '2' then cxGongList.DataController.Values[iCnt, 02] := '이벤트'   ;//else
//          if ls_Rcrd[1] = '3' then cxGongList.DataController.Values[iCnt, 02] := '미팝업공지';
          cxGongList.DataController.Values[iCnt, 03] := ls_Rcrd[3];

          if ls_Rcrd[2] = '0' then
          begin
            cxGongList.DataController.Values[iCnt, 04] := '텍스트';
            cxGongList.DataController.Values[iCnt, 05] := En_Coding(ReplaceAll(ls_Rcrd[4], '<Br>', #10#13));
            cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
          end else
          if ls_Rcrd[2] = '1' then
          begin
            cxGongList.DataController.Values[iCnt, 04] := '이미지';
            cxGongList.DataController.Values[iCnt, 05] := '이미지보기';
            cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
          end else
          if ls_Rcrd[2] = '2' then
          begin
            cxGongList.DataController.Values[iCnt, 04] := 'URL';
            cxGongList.DataController.Values[iCnt, 05] := ls_Rcrd[4];
            cxGongList.DataController.Values[iCnt, 12] := ls_Rcrd[4];
          end;

          if ( Trim(ls_Rcrd[9]) = 'null' ) Or ( Trim(ls_Rcrd[9]) = '' ) then
            cxGongList.DataController.Values[iCnt, 06] := ''
          else
            cxGongList.DataController.Values[iCnt, 06] := Copy(ls_Rcrd[9], 1, 10);

          cxGongList.DataController.Values[iCnt, 07] := ls_Rcrd[5];
          cxGongList.DataController.Values[iCnt, 08] := ls_Rcrd[6];

          if ls_Rcrd[7] = 'y' then
          begin
            cxGongList.DataController.Values[iCnt,10] := '상세내역';
          end else
          begin
            cxGongList.DataController.Values[iCnt, 10] := '내역없음';
          end;

          if ls_Rcrd[8] = 'y' then
          begin
            cxGongList.DataController.Values[iCnt, 11] := '삭제';
          end else
          begin
            cxGongList.DataController.Values[iCnt, 11] := '게시';
          end;

	  			cxGongList.DataController.Values[iCnt, 13] := ls_Rcrd[10];
	  			if ls_Rcrd[8] = 'y' then cxGongList.DataController.Values[iCnt, 14] := '미팝업'
                    	  			else cxGongList.DataController.Values[iCnt, 14] := '팝업';

//          cxGongList.DataController.Values[iCnt, 15] := '수정';
          if ls_Rcrd.Count > 11 then
          begin
            cxGongList.DataController.Values[iCnt, 16] := ls_Rcrd[11];    // ImageFile
            cxGongList.DataController.Values[iCnt, 17] := ReplaceAll(ls_Rcrd[12], '¶', #13#10);    // Text
            cxGongList.DataController.Values[iCnt, 18] := ls_Rcrd[13];    // URL
          end;
	  			Inc(iRow);
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxGongList.EndUpdate;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_APPA2.cxGongListColumn8PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sufN1, sefN1, sGubun, sGongjiNo, sMsg, sUrl : String;     // 서버실제위치파일명
    ErrCode : Integer;
    bCheck : Boolean;
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    if getKeyNumberCustUseYn( cxBrNo1.Text, cbKeynumberA2.Text ) then
    begin
      Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
      Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
			Frm_APP01.Edt_Init;
      Frm_APP01.pnl_Init(2);
      Frm_APP01.pnlTitle.Hint := 'I';
      Frm_APP01.pnlTitle.Caption := '  앱 게시물 등록 및 푸시 발송';
      Frm_APP01.pnlTitle.Color := $00D9E6D2;
      Frm_APP01.Btn_SaveOff.Caption := '저장후닫기';
      Frm_APP01.Btn_SaveNext.Caption := '저장후푸시발송';
      Frm_APP01.Btn_Init.Visible := True;

      if Trim(cxGongList.DataController.Values[iRow, 2]) = '일반공지'   then Frm_APP01.RB_GongA.Checked := True else
      if Trim(cxGongList.DataController.Values[iRow, 2]) = '고정공지'   then Frm_APP01.RB_GongB.Checked := True else
			if Trim(cxGongList.DataController.Values[iRow, 2]) = '이벤트'     then Frm_APP01.RB_GongD.Checked := True;// else
//      if Trim(cxGongList.DataController.Values[iRow, 2]) = '미팝업공지' then Frm_APP01.RB_GongC.Checked := True;

      Frm_APP01.Edt_Title.Text := Trim(cxGongList.DataController.Values[iRow, 3]);

			Frm_APP01.cxGbStep2.Hint := sGongjiNo;

			Frm_APP01.Pnl_Web.Left   := 87;
      Frm_APP01.Pnl_Web.Top    := 201;
      Frm_APP01.Pnl_Web.Height := 269;
      Frm_APP01.Pnl_Web.Width  := 248;
      Frm_APP01.Pnl_Web.Visible := True;

      Frm_APP01.Pnl_Txt.Visible := False;
      Frm_APP01.Pnl_Img.Visible := False;

      if Trim(cxGongList.DataController.Values[iRow, 06]) = '' then
        Frm_APP01.de_EndDate.Date := Now
      else
        Frm_APP01.de_EndDate.Date := StrToDate(Trim(cxGongList.DataController.Values[iRow, 06]));

      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '텍스트' ) then
      begin
        Frm_APP01.Rb_Txt.Checked := True;
        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);

        WBloadHtml(frm_App01.WebBrowser1, sUrl);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = 'URL' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 5]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 5]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 5];

        Frm_APP01.WebBrowser1.Navigate(sUrl);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '이미지' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;

        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);
        Frm_App01.WebBrowser1.Tag := 0;
        WBloadHtml(frm_App01.WebBrowser1, sUrl);
      end;

      Frm_APP01.Show;
    end;
  end else
  begin
    sMsg := Format('[%s]번 게시물은 삭제된 게시물입니다.', [sGongjiNo]);
    ShowMessage(sMsg);
  end;
end;

procedure TFrm_APPA2.cxGongListColumn9PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sufN1, sefN1, sGubun, sGongjiNo, sMsg : String;     // 서버실제위치파일명
    ErrCode : Integer;
    bCheck : Boolean;
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  if TCK_USER_PER.APP_Push = '1' then
  begin
    if cxGongList.DataController.Values[iRow, 13] = 'y' then
    begin
      Frm_Main.procMenuCreateActive(813, '앱푸시관리');

      iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
      sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

      Frm_APPA3.cbKeynumber03.ItemIndex := cbKeynumberA2.ItemIndex;
      Frm_APPA3.de_T3stDate.Date := cxDtStartA2.Date;
      Frm_APPA3.de_T3edDate.Date := cxDtEndA2.Date;
      Frm_APPA3.proc_PushList(sGongjiNo);
    end;
  end else
  begin
    ShowMessage('앱 푸시관리 권한이 없습니다.');
  end;  
end;

procedure TFrm_APPA2.cxGongListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;

    if AItem.Index = 3 then AStyle.Color := $00D6E9F8
                       else AStyle.Color := clWhite;

  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_APPA2.cxGongListColumn15PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sufN1, sefN1, sGubun, sGongjiNo, sMsg, sUrl : String;     // 서버실제위치파일명
    ErrCode : Integer;
    bCheck : Boolean;
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if ( not Assigned(Frm_APP01) ) Or ( Frm_APP01 = Nil ) then Frm_APP01 := TFrm_APP01.Create(Self);

    if getKeyNumberCustUseYn( cxBrNo1.Text, cbKeynumberA2.Text ) then
    begin
      Frm_APP01.cxBrNo.Text   := cxBrNo1.Text;
      Frm_APP01.cxKeyNum.Text := cbKeynumberA2.Text;
      Frm_APP01.pnlTitle.Hint := 'U';
      Frm_APP01.pnlTitle.Caption := '  앱 게시물 수정 및 푸시 발송';
      Frm_APP01.pnlTitle.Color := $00CFBBFD;
      Frm_APP01.Btn_SaveOff.Caption := '수정후닫기';
      Frm_APP01.Btn_SaveNext.Caption := '수정후푸시발송';
      Frm_APP01.Btn_Init.Visible := False;
			Frm_APP01.Edt_Init;
      Frm_APP01.pnl_Init(1);

      if Trim(cxGongList.DataController.Values[iRow, 2]) = '일반공지'   then Frm_APP01.RB_GongA.Checked := True else
      if Trim(cxGongList.DataController.Values[iRow, 2]) = '고정공지'   then Frm_APP01.RB_GongB.Checked := True else
			if Trim(cxGongList.DataController.Values[iRow, 2]) = '이벤트'     then Frm_APP01.RB_GongD.Checked := True;// else
//      if Trim(cxGongList.DataController.Values[iRow, 2]) = '미팝업공지' then Frm_APP01.RB_GongC.Checked := True;

      Frm_APP01.Edt_Title.Text := Trim(cxGongList.DataController.Values[iRow, 3]);

			Frm_APP01.cxGbStep2.Hint := sGongjiNo;
      Frm_APP01.Pnl_Web.Visible := False;

      if Trim(cxGongList.DataController.Values[iRow, 06]) = '' then
        Frm_APP01.de_EndDate.Date := Now
      else
        Frm_APP01.de_EndDate.Date := StrToDate(Trim(cxGongList.DataController.Values[iRow, 06]));

      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '텍스트' ) then
      begin
        Frm_APP01.Rb_Txt.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := True;
        Frm_APP01.Pnl_Img.Visible := False;

        Frm_APP01.M_Memo.Text := Trim(cxGongList.DataController.Values[iRow, 17]);
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = 'URL' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := False;
        Frm_APP01.Pnl_Img.Visible := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 18]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 18]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 18];

        Frm_APP01.Edt_URL.Text := sUrl;
      end else
      if ( Trim(cxGongList.DataController.Values[iRow, 5]) <> '' ) and
         ( Trim(cxGongList.DataController.Values[iRow, 4]) = '이미지' ) then
      begin
        Frm_APP01.Rb_Img.Checked := True;
        Frm_APP01.Pnl_Txt.Visible := False;
        Frm_APP01.Pnl_Img.Visible := True;

        Frm_APP01.Pnl_Img.Hint := Trim(cxGongList.DataController.Values[iRow, 16]);  // 이미지명 201510201403039913

  			Frm_APP01.Pnl_Web.Left   := 87;
        Frm_APP01.Pnl_Web.Top    := 201;
        Frm_APP01.Pnl_Web.Height := 269;
        Frm_APP01.Pnl_Web.Width  := 248;
        Frm_APP01.Pnl_Web.Visible := True;

        if Pos('http', cxGongList.DataController.Values[iRow, 18]) > 0 then
          sUrl := cxGongList.DataController.Values[iRow, 18]
        else
          sUrl := 'http://' + cxGongList.DataController.Values[iRow, 18];

        Frm_APP01.Edt_URL.Text := sUrl;

        sUrl := Trim(cxGongList.DataController.Values[iRow, 12]);
        Frm_App01.WebBrowser1.Tag := 1;
        WBloadHtml(Frm_App01.WebBrowser1, sUrl);
      end;

      Frm_APP01.Show;
    end;
  end else
  begin
    sMsg := Format('[%s]번 게시물은 삭제된 게시물입니다.', [sGongjiNo]);
    ShowMessage(sMsg);
  end;
end;

procedure TFrm_APPA2.cxGongListColumn19PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
Var Param, XmlData, ErrMsg, sBankCd, sFileName, sDirName,
    sfN1, sufN1, sefN1, sGubun, sGongjiNo, sMsg : String;     // 서버실제위치파일명
    ErrCode : Integer;
    bCheck : Boolean;
    iRow, iGongjiNo : Integer;
begin
  iRow := cxGongList.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iGongjiNo := 1; //cxGongList. GetColumnByFieldName('게시물번호').Index;
  sGongjiNo := cxGongList.DataController.Values[iRow, iGongjiNo];

  if cxGongList.DataController.Values[iRow, 11] = '게시' then
  begin
    if proc_PushReservChk(sGongjiNo) = 'y' then
    begin
      sMsg := Format('[%s]번 게시물 푸시 예약 작업이 있습니다. 푸시 예약 내역도 같이 삭제 됩니다.#13#10삭제하시겠습니까?', [sGongjiNo]);
    end else
    begin
      sMsg := Format('[%s]번 게시물을 삭제하시겠습니까?', [sGongjiNo]);
    end;

    if MessageDlg(sMsg, mtConfirmation,[mbYes,mbNo],0)=idyes then
    begin
      try
				Param := 'D' + '│' +  cxBrNo1.Text + '│' + Trim(cbKeynumberA2.Text) + '│' + sGongjiNo + '│' + '│'+ '│' + '│' + '│' + '│' ;

				if not RequestBase(GetCallable05('SET_APP_NOTICE', 'mng_custapp.set_app_notice', Param), XmlData, ErrCode, ErrMsg) then
        begin
          GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;
        btnSearchA2.Click;
      except
        ShowMessage('삭제 중 오류 발생');
      end;
    end;
  end;  
end;

function TFrm_APPA2.proc_PushReservChk ( sGongNo : String ) : String;
var
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin

  Param := cxBrNo1.Text + '│' + cbKeynumberA2.Text + '│' + sGongNo;

  if not RequestBase(GetSel05('GET_APP_PUSH_REQ_YN', 'mng_custapp.get_app_push_req_yn', '100', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('게시물 푸시 예약 유무 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
          Result := ls_Rcrd[0];
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_APPA2.cxGongListCellClick(Sender: TcxCustomGridTableView;
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

  if nCol = 3 then
  begin
    lbl_WebTitleA2.Caption := Trim(cxGongList.DataController.Values[nRow, 3]);
    if ( Trim(cxGongList.DataController.Values[nRow, 12]) <> '' ) and
       ( Trim(cxGongList.DataController.Values[nRow, 4]) = 'URL' ) then
    begin
      if Pos('http', cxGongList.DataController.Values[nRow, 12]) > 0 then
        sUrl := cxGongList.DataController.Values[nRow, 12]
      else
        sUrl := 'http://' + cxGongList.DataController.Values[nRow, 12];

      wbA2.Navigate(sUrl);
      Pnl_WebA2.Visible := True;
    end else
    if ( Trim(cxGongList.DataController.Values[nRow, nCol]) <> '' ) and
       ( Trim(cxGongList.DataController.Values[nRow, 4]) = '이미지' ) then
    begin
      sUrl := Trim(cxGongList.DataController.Values[nRow, 12]);

      WBloadHtml(wbA2, sUrl);
      Pnl_WebA2.Visible := True;
    end else
    begin
      sUrl := Trim(cxGongList.DataController.Values[nRow, 12]);

      WBloadHtml(wbA2, sUrl);
      Pnl_WebA2.Visible := True;
    end;
  end;
end;

procedure TFrm_APPA2.WBloadHtml(WebBrowser:TWebBrowser; HtmlCode: string);
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

procedure TFrm_APPA2.cbKeynumber01Click(Sender: TObject);
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

	lblSosokNameA2.Caption := sName;
	cxHdNo1.Text := sHdNo;
	cxBrNo1.Text := sBrNo;
	if (cbKeynumberA2.ItemIndex >= 0) and (UseAPPKeyNumberCHK) then btnSearchA2Click(Sender);
end;

procedure TFrm_APPA2.cbKeynumber02PropertiesChange(Sender: TObject);
begin
	cxGongList.DataController.SetRecordCount(0);
end;

procedure TFrm_APPA2.cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(Pnl_WebA2.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_APPA2.cxPushListStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
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

procedure TFrm_APPA2.btnHelpCloseA2Click(Sender: TObject);
begin
  Pnl_WebA2.Visible := False;
end;

procedure TFrm_APPA2.btn6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_APPA2.miOneWeekClick(Sender: TObject);
begin
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
	cxDtEndA2.Date := cxDtStartA2.Date + 7;
end;

procedure TFrm_APPA2.miTwoWeekClick(Sender: TObject);
begin
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 14;
 	cxDtEndA2.Date := cxDtStartA2.Date + 14;
end;

procedure TFrm_APPA2.miOneMonthClick(Sender: TObject);
begin
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
	cxDtEndA2.Date := cxDtStartA2.Date + 31;
end;

procedure TFrm_APPA2.miTwoMonthClick(Sender: TObject);
begin
	cxDtStartA2.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 62;
	cxDtEndA2.Date := cxDtStartA2.Date + 62;
end;

procedure TFrm_APPA2.GetAPPBrTelList(ABrNo: string; var AList: TStringList);
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
		end else
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

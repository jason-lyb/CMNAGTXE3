unit xe_CUTA5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus, System.StrUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, xe_structure, ShellAPI, System.Math,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, OleCtrls, SHDocVw, Registry,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, IniFiles, MSXML2_TLB, cxTL, ComObj,
  cxClasses, Vcl.ExtCtrls, cxMemo, cxGridLevel, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxMaskEdit,
  cxCalendar, cxButtons, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTA5 = class(TForm)
    lbCustCompany01: TcxLabel;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    pmCustMgr: TPopupMenu;
    mniN8: TMenuItem;
    mniN9: TMenuItem;
    mniN10: TMenuItem;
    pnl_Excel_OPT: TPanel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    Shape3: TShape;
    cxLabel1: TcxLabel;
    Shape4: TShape;
    cxLabel2: TcxLabel;
    Shape5: TShape;
    cxLabel3: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    pmDetail: TPopupMenu;
    mniDetailCustLevel: TMenuItem;
    MenuItem19: TMenuItem;
    cbKeynumber11: TcxComboBox;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    cxButton63: TcxButton;
    cxButton64: TcxButton;
    cxButton69: TcxButton;
    cxButton65: TcxButton;
    pnl4: TPanel;
    cxGridBrOrder: TcxGrid;
    cxVirtureList: TcxGridDBTableView;
    CustView1ViewNoticeListVirtureColumn1: TcxGridDBColumn;
    CustView1ViewNoticeListVirtureColumn3: TcxGridDBColumn;
    CustView1VirtureListColumn1: TcxGridDBColumn;
    cxGrid19: TcxGridLevel;
    pnl2: TPanel;
    cxLabel242: TcxLabel;
    cxLabel243: TcxLabel;
    cxLabel244: TcxLabel;
    cxLabel245: TcxLabel;
    cxLabel246: TcxLabel;
    cxLabel247: TcxLabel;
    cxLabel248: TcxLabel;
    cxTextEdit20: TcxTextEdit;
    cxLabel249: TcxLabel;
    cxLabel250: TcxLabel;
    cxButton66: TcxButton;
    cxButton67: TcxButton;
    cxButton68: TcxButton;
    pnl5: TPanel;
    cxLabel252: TcxLabel;
    cxLabel253: TcxLabel;
    cxLabel254: TcxLabel;
    Shape2: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    cxGrid14: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    CustView1GridDBTableView1Column1: TcxGridDBColumn;
    CustView1GridDBTableView1Column2: TcxGridDBColumn;
    CustView1GridDBTableView1Column3: TcxGridDBColumn;
    CustView1GridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    cxLabel240: TcxLabel;
    cxLabel251: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAll2Click(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure CustView4ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxButton65Click(Sender: TObject);
    procedure cxButton69Click(Sender: TObject);
    procedure cxButton63Click(Sender: TObject);
    procedure cxButton64Click(Sender: TObject);
    procedure cxButton66Click(Sender: TObject);
    procedure cxButton68Click(Sender: TObject);
    procedure cxButton67Click(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbKeynumber11PropertiesChange(Sender: TObject);
    procedure cxGridDBTableView1DataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownSleep : string;

    nFocus : integer;

    AIndex : Integer;

    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure proc_VirtureNum;
    procedure proc_VirtureNum_init;
 		function func_ChkPhone: Boolean;
    procedure proc_Cust_PhoneSel(Aidx: integer);
  public
    { Public declarations }

    CutSeqList : TStringList;
    iAddCnt : integer;
		Click_chk : integer;
		iFlag : integer;
    // 좌측 메뉴 지사선택
    lb_st_customer, lbNoSms: TStringList;
    procedure proc_init;    
    procedure proc_KeyNumber_insert;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
	end;

var
  Frm_CUTA5: TFrm_CUTA5;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash;


procedure TFrm_CUTA5.proc_init;
begin
  proc_BrNameSet;
end;

procedure TFrm_CUTA5.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA5.proc_KeyNumber_insert;
var
  i: Integer;
  sCaption: string;
  slKeyNum: TStringList;
begin
  try
    slKeyNum := TStringList.Create;
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] 전체';
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
      end else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

    slKeyNum.Clear;
    slKeyNum.Add('전체');
    if cxBrNo.Text = '' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
        slKeyNum.Add(scb_KeyNumber.Strings[i]);
    end
    else if GT_SEL_BRNO.GUBUN = '1' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
      begin
        if scb_DsBranchCode.Strings[i] = cxBrNo.Text then
          slKeyNum.Add(scb_KeyNumber.Strings[i]);
      end;
    end;
    if slKeyNum.Count = 2 then
      slKeyNum.Delete(0);

    FreeAndNil(slKeyNum);
  except

  end;
end;


procedure TFrm_CUTA5.FormCreate(Sender: TObject);
var i : Integer;
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  lb_st_customer := TStringList.Create;
  lbNoSms := TStringList.Create;

	proc_init;

  UsrNameReg := TRegistry.Create;
  UsrNameReg.RootKey := HKEY_CURRENT_USER;
  UsrNameReg.OpenKey('Software\Microsoft\Internet Explorer\PageSetup', True);

  if UsrNameReg.KeyExists('footer') then
  begin
    sFooter := UsrNameReg.ReadString('footer');
    UsrNameReg.WriteString('footer', '');
  end else
  begin
    UsrNameReg.CreateKey('footer');
    UsrNameReg.WriteString('footer', '');
    sFooter := '&u&b&d';
  end;
  if UsrNameReg.KeyExists('header') then
  begin
    sHeader := UsrNameReg.ReadString('header');
    UsrNameReg.WriteString('header', '');
  end else
  begin
    UsrNameReg.CreateKey('header');
    UsrNameReg.WriteString('header', '');
    sHeader := '&w&bPage &p of &P';
  end;

  for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
  begin
    cxGridDBTableView1.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridDBTableView1.Columns[0].DataBinding.ValueType := 'Integer';
  cxGridDBTableView1.Columns[4].DataBinding.ValueType := 'Integer';

  cxGridDBTableView1.DataController.SetRecordCount(0);

  for i := 0 to cxVirtureList.ColumnCount - 1 do
  begin
    cxVirtureList.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxVirtureList.DataController.SetRecordCount(0);
end;

procedure TFrm_CUTA5.FormDestroy(Sender: TObject);
begin
  Frm_CUTA5 := Nil;
end;

procedure TFrm_CUTA5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  Action := caFree;
end;

procedure TFrm_CUTA5.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber11.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber11.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
      cbKeynumber11.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber11.Properties.Items.Count >= 1 then
    cbKeynumber11.Properties.Items.Insert(0, '전체');

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cbKeynumber11.ItemIndex := 0;
  cbKeynumber11.Tag := 0;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;
end;

procedure TFrm_CUTA5.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA5.CustView4ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA5.cxButton63Click(Sender: TObject);
begin
	proc_Cust_PhoneSel(0);
end;

procedure TFrm_CUTA5.proc_Cust_PhoneSel(Aidx: integer);
var SendData, XmlData, Param, ErrMsg: string;
  ErrCode: Integer;
	StrList, StrList1, StrList2: TStringList;
	I, j, iRow, iChk: Integer;
	tmpCnt: integer;
  tmpCntStr: string;
	k: Integer;
  tmpStr: string;
  ArrSt: array of string;
	sBrNo : string;
begin
	Screen.Cursor := crHourGlass;

	sBrNo := cxBrNo.Text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
		Exit;
	end;
	if (cbKeynumber11.ItemIndex < 0) or (cbKeynumber11.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		cbKeynumber11.SetFocus;
		Screen.Cursor := crDefault;
		Exit;
	end;
	if length(strtocall(cxTextEdit18.Text)) < 7 then
	begin
		ShowMessage('전화번호를 모두 입력하신 뒤 검색하여 주십시오.');
		cxTextEdit18.SetFocus;
		Screen.Cursor := crDefault;
		Exit;
	end;

	cxTextEdit20.Text := '';
	cxLabel243.Caption := '';
	cxLabel245.Caption := '';
	cxLabel247.Caption := '';
	cxLabel250.Caption := '';
	cxLabel240.Caption := '';
	cxLabel251.Caption := '';
	cxVirtureList.DataController.SetRecordCount(0);

	iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
	if Aidx = 0 then Param := sBrNo
	else Param := cxGridDBTableView1.DataController.Values[iRow, 10];
	Param := Param + '│' + CallToStr(cxTextEdit18.Text);

	if cbKeynumber11.ItemIndex > -1 then
		Param := Param + '│' + CallToStr(cbKeynumber11.Text)
	else
		Param := Param + '│' + '│';

	if not RequestBase(GetSel05('GET_CUSTOMER_INFO_VIRTUAL', 'MNG_CUST.GET_CUSTOMER_INFO_VIRTUAL', '10',Param), XmlData, ErrCode, ErrMsg) then
  begin
		GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

	StrList := TStringList.Create;
	StrList1 := TStringList.Create;
	StrList2 := TStringList.Create;
	try
		if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
		end;
		if tmpCnt<1 then
		begin
			if Aidx = 0 then
			begin
				pnl5.Visible := False;
				exit;
			end;
			iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
			if iRow > -1 then
			begin
				if cxBrNo.Text <> cxGridDBTableView1.DataController.Values[iRow, 10] then
				begin
					pnl5.Visible := True;
					cxLabel252.Caption := Format('소속 선택지사(%s, %s)', [cxBrNo.text, scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo.Text)]
																											+ ' - ' + cbKeynumber11.Text]);


					cxLabel253.Caption := Format('리스트 선택지사(%s, %s)', [cxGridDBTableView1.DataController.Values[iRow, 10]
																																, cxGridDBTableView1.DataController.Values[iRow, 6]]);
					cxTextEdit20.Enabled := false;
				end
				else pnl5.Visible := False;
				exit;
			END;
		end;
    if tmpCnt > 1 then
    begin
			ShowMessage('동일한 고객번호가 2개 이상 존재합니다.'  + #13#10 + '대표번호를 확인하세요');
      exit;
    end;

		SetLength(ArrSt,tmpCnt);
		tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);
    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);
		if tmpCnt>0 then
		begin
      cxVirtureList.DataController.SetRecordCount(0);
			cxVirtureList.BeginUpdate;
			iChk := 0;
      for k:=0 to tmpCnt-1 do
      begin
        ArrSt[k]:=tmpStr;
        if Pos('/>',tmpStr)>0 then
        begin
          ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
          if Pos('<Result Value=',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
          if Pos('/>',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
					ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

          tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
          StrList.Clear;
					StrList1.Clear;
					GetTextSeperationEx('│', ArrSt[k], StrList);

					cxLabel251.Caption := StrList.Strings[0];  //고객일련번호
					cxLabel243.Caption := StrList.Strings[1];  // 고객명
					cxLabel245.Caption := StrList.Strings[2];  // 이용횟수
					if length(StrList.Strings[3]) =  8 then
						cxLabel247.Caption := copy(StrList.Strings[3], 1,4) + '-' + copy(StrList.Strings[3], 5,2) + '-' + copy(StrList.Strings[3], 7,2)  // 최종이용일자
					else cxLabel247.Caption := StrList.Strings[3];
					cxTextEdit20.text := StrList.Strings[4];  // 메모

					GetTextSeperationEx(',', StrList.Strings[5], StrList1);
					for i := 0 to StrList1.Count - 1 do
					begin
						StrList2.Clear;
						iRow := cxVirtureList.DataController.AppendRecord;
						GetTextSeperationEx(';', StrList1[i], StrList2);

						cxVirtureList.DataController.Values[iRow, 0] := False;
						for j := 1 to StrList2.Count do
						begin
							cxVirtureList.DataController.Values[iRow, j] := strtocall(StrList2[j-1]);
							if StrList2[1] <> '' then
							begin
								cxLabel240.Caption := strtocall(StrList2[1]);
								cxLabel250.Caption := strtocall(StrList2[1]);
								cxVirtureList.DataController.Values[iRow, 0] := True;
								iChk := 1;
							end;
						end;
					end;
					if iChk = 1 then iFlag := 2
					else iFlag := 1;
        end;
			end;
			cxVirtureList.EndUpdate;
			if iChk = 0 then
			begin
				for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
				begin
					if calltostr(cxVirtureList.DataController.Values[iRow, 1]) = cxTextEdit18.text then
					begin
						cxVirtureList.DataController.Values[iRow, 0] := True;
					end;
				end;
			end;
			pnl5.Visible := False;
			cxTextEdit20.Enabled := True;
			if cxGridDBTableView1.DataController.RowCount = 0 then proc_VirtureNum;
		end;
	finally
    StrList.Free;
		StrList1.Free;
		StrList2.Free;
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_CUTA5.cxButton64Click(Sender: TObject);
var i, iRow, iPhone, iIndex, iIndex1  : Integer;
		Wksabun, Wkname, iDo, sabun,  pCash, sCash : string;
	sBrNo : string;
begin
	sBrNo := cxBrNo.Text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
		Exit;
	end;
	if (cbKeynumber11.ItemIndex < 0) or (cbKeynumber11.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if cxTextEdit19.Text = '' then
	begin
		ShowMessage('안심번호를 입력하신 뒤 검색하여 주십시오.');
		Screen.Cursor := crDefault;
		Exit;
	end else
	if (cxTextEdit19.Text  <> '') then
	begin
		iRow   := cxGridDBTableView1.GetColumnByFieldName('4num').Index;
		iPhone := cxGridDBTableView1.GetColumnByFieldName('4Phone').Index;

		iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(nFocus,iRow  ,cxTextEdit19.Text,True,False,True);
		iIndex1 := cxGridDBTableView1.DataController.FindRecordIndexByText(nFocus,iPhone,cxTextEdit19.Text,True,False,True);
		if (iIndex < 0) and (iIndex1 < 0) then
		begin
			ShowMessage('검색하신 4자리 번호가 없습니다.');
			Exit;
		end;

		if (iIndex > -1) or (iIndex1 > -1) then
		begin
			if (iIndex <= iIndex1) then
			begin
				if iIndex = -1 then cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex1
				else        				cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
				cxGrid14.SetFocus;
				nFocus := iIndex+1;
			end else
      if (iIndex > iIndex1) then
			begin
				if iIndex1 = -1 then cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex
				else        			 	 cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex1;
				cxGrid14.SetFocus;
				nFocus := iIndex1+1;
			end;
		end;
	end;
end;

procedure TFrm_CUTA5.cxButton65Click(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	pnl_Excel_OPT.Left := (Width - pnl_Excel_OPT.Width) div 2;
	pnl_Excel_OPT.top := (Height - pnl_Excel_OPT.Height) div 2;
	pnl_Excel_OPT.Visible := True;
	pnl_Excel_OPT.BringToFront;
end;

procedure TFrm_CUTA5.cxButton66Click(Sender: TObject);
var SendData, XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
  StrList, StrList1: TStringList;
	I, iRow, iIndex : Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
	ArrSt: array of string;
	sVnum : AnsiString;
  sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Exit;
	end;
	if (cbKeynumber11.ItemIndex < 0) or (cbKeynumber11.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = cxButton66 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end else
	if Sender = cxButton67 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end else
	if Sender = cxButton68 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			exit;
		end
		else if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				exit;
			end;
		end
		else if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);


	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end
	else if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber11.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end
	else if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
//	cxButton63Click(nil);
	cxTextEdit18.Text := '';

end;

procedure TFrm_CUTA5.cxButton67Click(Sender: TObject);
var SendData, XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
  StrList, StrList1: TStringList;
	I, iRow, iIndex : Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
	ArrSt: array of string;
	sVnum, sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');
		Exit;
	end;
	if (cbKeynumber11.ItemIndex < 0) or (cbKeynumber11.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = cxButton66 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end
	else
	if Sender = cxButton67 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end
	else
	if Sender = cxButton68 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			exit;
		end
		else if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				exit;
			end;
		end	else
    if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);

	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';

			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber11.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);

			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end else
  if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
	cxTextEdit18.Text := '';
end;

procedure TFrm_CUTA5.cxButton68Click(Sender: TObject);
var SendData, XmlData, Param, ErrMsg: string;
	ErrCode: Integer;
  StrList, StrList1: TStringList;
	I, iRow, iIndex : Integer;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
	ArrSt: array of string;
	sVnum, sType, sMsg, sBrNo  : string;
begin
	sBrNo := cxBrNo.text;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Exit;
	end;
	if (cbKeynumber11.ItemIndex < 0) or (cbKeynumber11.Text = '전체') then
	begin
		ShowMessage('대표번호를 선택하여 주십시오.');
		Exit;
	end;
	if Sender = cxButton66 then
	begin
		sType := 'y';
		sMsg := '등록 되었습니다.' ;

		Param := cxHdNo.Text  + '│' + cxTextEdit18.Text + '│';
		if not RequestBase(GetSel05('CHK_VIRTUAL_TEL', 'MNG_CUST.CHK_VIRTUAL_TEL', '10',Param), XmlData, ErrCode, ErrMsg) then
		begin
			ShowMessage(strtocall(cxTextEdit18.Text) + '번호는 동일 본사내 다른 지사에 안심번호가 등록되어 있습니다.');
			iRow   := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
			iIndex  := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow, strtocall(cxTextEdit18.Text),True,False,True);
			cxGridDBTableView1.DataController.FocusedRecordIndex := iIndex;
			Exit;
		end;
	end
	else
	if Sender = cxButton67 then
	begin
		sType := '';
		sMsg := '수정 되었습니다.'
	end
	else
	if Sender = cxButton68 then
	begin
		sType := 'n';
		sMsg := '해제 되었습니다.'
	end;

  iIndex := cxVirtureList.GetColumnByFieldName('').Index;
  i := 0;
	for iRow := 0 to cxVirtureList.DataController.RecordCount -1 do
	begin
		if cxVirtureList.DataController.Values[iRow, iIndex] = True then
		begin
			sVnum := cxVirtureList.DataController.Values[iRow, iIndex + 1] ;
			inc(i);
		end;
	end;
	if (sType = 'y') or (sType = 'n') then   //등록일때
	begin
		if i > 1 then
		begin
			ShowMessage('한개 이상의 고객번호를 선택 하셨습니다.');
			exit;
		end
		else if i = 0 then
		begin
			ShowMessage('고객번호가 선택되지 않았습니다.');
			exit;
		end;
		if (sType = 'y') then
		begin
			if cxLabel240.Caption <> '' then
			begin
				ShowMessage('할당된 안심번호가 있습니다.' + #13#10 + '할당된 번호를 해제해 주십시오.');
				exit;
			end;
			if (cxLabel250.Caption)= '' then
			begin
				ShowMessage('안심번호가 선택되지 않았습니다.' + #13#10 + '하단의 안심번호를 선택해 주십시오.');
				exit;
			end;
		end
		else if (sType = 'n') then
		begin
			if (cxLabel250.Caption = '') and (cxLabel240.Caption = '') then
			begin
				ShowMessage('할당된 안심번호가 없습니다.');
				exit;
			end;
			cxTextEdit20.Text := '';
		end;
	end;
	if cxLabel251.Caption = '' then
	begin
		ShowMessage('선택된 고객이 없습니다.' + #13#10 + '고객전화번호검색을 통하여 검색해 주십시오.');
		exit;
  end;

	Param := '';
	Param := Param + cxLabel251.Caption + '│';
	Param := Param + calltostr(sVnum) + '│';
	Param := Param + cxTextEdit20.Text + '│';
	Param := Param + calltostr(cxLabel250.Caption) + '│' + sType + '│';
	if not RequestBase(GetCallable05('SET_VIRTUAL_TEL', 'MNG_CUST.SET_VIRTUAL_TEL', Param), XmlData, ErrCode, ErrMsg) then
	begin
		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
		Exit;
	end;
	ShowMessage(sMsg);

	if sType = 'n' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := '';
			cxGridDBTableView1.DataController.Values[iIndex,3] := '';
			cxGridDBTableView1.DataController.Values[iIndex,4] := '';
			cxGridDBTableView1.DataController.Values[iIndex,5] := '';
			cxGridDBTableView1.DataController.Values[iIndex,6] := '';
			cxGridDBTableView1.DataController.Values[iIndex,7] := '';
			cxGridDBTableView1.DataController.Values[iIndex,8] := '';
			cxGridDBTableView1.DataController.Values[iIndex,10] := '';
			cxGridDBTableView1.DataController.Values[iIndex,11] := '';
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end
	else if sType = 'y' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('안심번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,strtocall(cxLabel250.caption),True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,2] := sVnum;
			cxGridDBTableView1.DataController.Values[iIndex,3] := cxLabel243.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,4] := cxLabel245.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,5] := cxLabel247.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,6] := cbKeynumber11.Text
																									+ ' - ' + scb_BranchName[ scb_BranchCode.IndexOf(cxBrNo.Text)];
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
			cxGridDBTableView1.DataController.Values[iIndex,8] := cxLabel251.Caption;
			cxGridDBTableView1.DataController.Values[iIndex,10] := cxBrNo.Text;
			cxGridDBTableView1.DataController.Values[iIndex,11] := RightStr(sVnum,4);
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end
	else if sType = '' then
	begin
		iRow := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;

		iIndex := cxGridDBTableView1.DataController.FindRecordIndexByText(0,iRow,sVnum,True,True,True);
		if iIndex > -1 then
		begin
			cxGridDBTableView1.DataController.Values[iIndex,7] := cxTextEdit20.Text;
//			cxTextEdit18.Text := '';
			cxTextEdit19.Text := '';
			cxTextEdit20.Text := '';
			cxLabel243.Caption := '';
			cxLabel245.Caption := '';
			cxLabel247.Caption := '';
			cxLabel250.Caption := '';
			cxLabel240.Caption := '';
			cxLabel251.Caption := '';
			cxVirtureList.DataController.SetRecordCount(0);
		end;
	end;
//	cxButton63Click(nil);
	cxTextEdit18.Text := '';

end;

procedure TFrm_CUTA5.cxButton69Click(Sender: TObject);
begin
	proc_VirtureNum;
end;

procedure TFrm_CUTA5.proc_VirtureNum;
var SendData, Param, XmlData, Key, ErrMsg: string;
  ErrCode, iCnt : Integer;
  slList, StrList: TStringList;
  I, j : Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
	k: Integer;
	tmpStr: string;
	ArrSt: array of string;
	iRow: integer;
	sBrNo : string;
begin
	sBrNo := cxBrNo.Text;
	Screen.Cursor := crHourGlass;
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Screen.Cursor := crDefault;
    cxGridDBTableView1.DataController.SetRecordCount(0);
		Exit;
	end;

	Param := '';

  slList := TStringList.Create;
  try
  	if not RequestBasePaging(GetSel05('GET_VIRTUAL_TEL_LIST', 'MNG_CUST.GET_VIRTUAL_TEL_LIST', '1000',Param), slList, ErrCode, ErrMsg) then
  	begin
  		ShowMessage(Format('[%d] %s', [ErrCode, ErrMsg]));
  		Screen.Cursor := crDefault;
  		Exit;
  	end;

  	cxGridDBTableView1.DataController.SetRecordCount(0);
    cxGridDBTableView1.BeginUpdate;
   	StrList := TStringList.Create;
    iCnt := 1;
    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

  		if Pos('<Data Count="', xmlData)>0 then
  		begin
  			tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
  			if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
  			tmpCnt:=StrToIntDef(tmpCntStr,0);
  		end;
  		if tmpCnt<1 then exit;

      SetLength(ArrSt,tmpCnt);
      tmpStr:=xmlData;

      if Pos('<Result Value=',XmlData)>0 then
        tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

  		for k:=0 to tmpCnt-1 do
  		begin
        ArrSt[k]:=tmpStr;
        if Pos('/>',tmpStr)>0 then
        begin
  				ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
  				if Pos('<Result Value=',ArrSt[k]) > 0 then
  					ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
  				if Pos('/>',ArrSt[k]) > 0 then
  					ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
  				ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

  				tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
  				StrList.Clear;
          GetTextSeperationEx('│', ArrSt[k], StrList);

  				iRow := cxGridDBTableView1.DataController.AppendRecord;
  				cxGridDBTableView1.DataController.Values[iRow, 0] := IntToStr(iCnt);
  				cxGridDBTableView1.DataController.Values[iRow, 1] := StrToCall(StrList.Strings[0]);

          if (IsPassedManagementWk(StrList.Strings[5])) Or ( StrList.Strings[5] = '' ) then
          begin
    				cxGridDBTableView1.DataController.Values[iRow, 2] := StrToCall(StrList.Strings[1]);
    				cxGridDBTableView1.DataController.Values[iRow, 3] := StrList.Strings[2];
    				cxGridDBTableView1.DataController.Values[iRow, 4] := StrToIntDef(StrList.Strings[3], 0);
    				if length(StrList.Strings[4]) = 8 then
    					cxGridDBTableView1.DataController.Values[iRow, 5] := copy(StrList.Strings[4], 1,4) + '-' + copy(StrList.Strings[4], 5,2) + '-' + copy(StrList.Strings[4], 7,2)  // 최종이용일자
    				else cxGridDBTableView1.DataController.Values[iRow, 5] := StrList.Strings[4];
    				if StrList.Strings[9] <> ''  then
    					cxGridDBTableView1.DataController.Values[iRow, 6] := StrList.Strings[9] + ' - ' + StrList.Strings[8]
    				else cxGridDBTableView1.DataController.Values[iRow, 6] := StrList.Strings[9];
    				cxGridDBTableView1.DataController.Values[iRow, 7] := StrList.Strings[6];
    				cxGridDBTableView1.DataController.Values[iRow, 8] := StrList.Strings[7];
    				cxGridDBTableView1.DataController.Values[iRow, 9] := copy(StrList.Strings[0],8,4);
    				cxGridDBTableView1.DataController.Values[iRow, 10] := StrList.Strings[5];
    				cxGridDBTableView1.DataController.Values[iRow, 11] := RightStr(StrList.Strings[1],4);
          end else
          begin
    				cxGridDBTableView1.DataController.Values[iRow, 2] := '***-****-****';
    				cxGridDBTableView1.DataController.Values[iRow, 3] := '***';
    				cxGridDBTableView1.DataController.Values[iRow, 4] := 0;
   					cxGridDBTableView1.DataController.Values[iRow, 5] := '****-**-**';
  					cxGridDBTableView1.DataController.Values[iRow, 6] := '*******';
    				cxGridDBTableView1.DataController.Values[iRow, 7] := '타업체에서 사용중입니다';
    				cxGridDBTableView1.DataController.Values[iRow, 8] := '*******';
    				cxGridDBTableView1.DataController.Values[iRow, 9] := '****';
    				cxGridDBTableView1.DataController.Values[iRow, 10] := '****';
    				cxGridDBTableView1.DataController.Values[iRow, 11] := '****';
          end;
          Inc(iCnt);
        end;
      end;
    end;
    cxGridDBTableView1.endupdate;
  finally
    StrList.Free;
    slList.Free;
		Screen.Cursor := crDefault;
    Frm_Flash.Hide;
	end;
end;

procedure TFrm_CUTA5.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J,
  Row: Integer;
  KeyData: string;
begin
  if AKeyIndex < 0 then Exit;

  if Trim(AKeyValue) = '' then Exit;

  for I := 0 to ASource.DataController.RecordCount - 1 do
  begin
    KeyData := ASource.DataController.GetValue(I, AKeyIndex);
    if Pos(AKeyValue, KeyData) > 0 then
    begin
      Row := ATarget.DataController.AppendRecord;

      ATarget.DataController.Values[Row, 0] := Row + 1;
      for J := 1 to ASource.ColumnCount - 1 do
        ATarget.DataController.Values[Row, J] := ASource.DataController.GetValue(I, J);
    end;
  end;
end;

procedure TFrm_CUTA5.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iIndex, i : integer;
begin
	iRow := cxGridDBTableView1.DataController.FocusedRecordIndex;
	iIndex := cxGridDBTableView1.GetColumnByFieldName('cuseq').Index;
	if cxGridDBTableView1.DataController.Values[iRow, iIndex] <> '' then
	begin
		cxLabel251.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('고객명').Index;
		cxLabel243.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('이용횟수').Index;
		cxLabel245.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('최종일자').Index;
		cxLabel247.Caption := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;
		if cxLabel247.Caption <> '' then
			cxLabel247.Caption := copy(cxLabel247.Caption, 1,4) + '-' + copy(cxLabel247.Caption, 5,2) + '-' + copy(cxLabel247.Caption, 7,2);  // 최종이용일자

		iIndex := cxGridDBTableView1.GetColumnByFieldName('메모').Index;
		cxTextEdit20.Text := cxGridDBTableView1.DataController.Values[iRow, iIndex] ;

		iIndex := cxGridDBTableView1.GetColumnByFieldName('고객번호').Index;
		cxTextEdit18.Text := strtocall(cxGridDBTableView1.DataController.Values[iRow, iIndex]) ;
		cxLabel250.Caption := cxGridDBTableView1.DataController.Values[iRow, 1] ;
		if cxTextEdit18.Text <> '' then
		begin
			proc_Cust_PhoneSel(1);
			cxTextEdit18.Text := '';
		end;
		iFlag := 2;
	end
	else if iFlag <> 1 then
	begin
		cxTextEdit18.Text := '';
		cxTextEdit19.Text := '';
		cxTextEdit20.Text := '';
		cxLabel243.Caption := '';
		cxLabel245.Caption := '';
		cxLabel247.Caption := '';
		cxLabel250.Caption := '';
		cxLabel240.Caption := '';
		cxLabel251.Caption := '';
		cxVirtureList.DataController.SetRecordCount(0);
		pnl5.Visible := False;
		cxTextEdit20.Enabled := True;
	end	else
	begin
		if func_ChkPhone then
			cxLabel250.Caption := strtocall(cxGridDBTableView1.DataController.Values[iRow, 1]) ;
	end
end;

procedure TFrm_CUTA5.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
	Exit;
end;

procedure TFrm_CUTA5.cxGridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA5.cxGridDBTableView1DataControllerSortingChanged(
  Sender: TObject);
begin
  gfSetIndexNo(cxGridDBTableView1, AIndex, GS_SortNoChange);
end;

function TFrm_CUTA5.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := False;

  AKeyNum   := StringReplace(AKeyNum, '-', '', [rfReplaceAll]);
  ACustNum  := StringReplace(ACustNum, '-', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'PROC_DELETE_CUSTOMER_NEW1(?,?,?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', AHdNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ABrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', AKeynum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACustNum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACuSeq, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DELETECUST', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(5), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        try
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);

          if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
          begin
            Result := True;
          end;
        except on E: Exception do
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

function TFrm_CUTA5.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
var
  I, Cnt: Integer;
  iColBrNo, iColKeyNum, iColCustNum, iColSeq : Integer;
  HdNo, BrNo, KeyNum, CustNum, CuSeq : string;
  FailedCount: Integer;
  Msg, FailedList: string;
  DelRows: TStringList;
begin
  Result := False;

  Cnt := AView.DataController.GetSelectedCount;

  if (Cnt = 0) then
  begin
    GMessagebox('고객을 선택해 주세요.', CDMSI);
    Exit;
  end;

  Msg := Format('[%d]명의 고객을 삭제하시겠습니까?'#13#10'삭제시 고객정보, 이용횟수, 마일리지가 삭제됩니다.', [Cnt]);

  if GMessagebox(Msg, CDMSQ) <> IDOK then
    Exit;

  iColBrNo    := AView.GetColumnByFieldName('지사코드').Index;
  iColKeyNum  := AView.GetColumnByFieldName('대표번호').Index;
  iColCustNum := AView.GetColumnByFieldName('고객번호').Index;
  iColSeq     := AView.GetColumnByFieldName('SEQ').Index;

  HdNo := GT_USERIF.HD;
  FailedCount := 0;

  try
    // 읽어서 바로 삭제 시 DataController와 ViewData 데이터 인덱스 Sync가 틀어져서 리스트에 추가후 제거
    DelRows := TStringList.Create;
    try
      for I := AView.DataController.RecordCount - 1 downto 0 do
      begin
        if AView.ViewData.Rows[I].Selected then
        begin
          BrNo    := AView.ViewData.Rows[I].Values[iColBrNo];
          KeyNum  := AView.ViewData.Rows[I].Values[iColKeyNum];
          CustNum := AView.ViewData.Rows[I].Values[iColCustNum];
          CuSeq   := AView.ViewData.Rows[I].Values[iColSeq];

          if not DeleteCustomerData(HdNo, BrNo, KeyNum, CustNum, CuSeq) then
          begin
            FailedList := Format('대표번호: %s, 고객번호: %s', [KeyNum, CustNum])  + #13#10 + FailedList;
            Inc(FailedCount);
          end
          else
          begin
            DelRows.Add(Format('%.10d', [AView.ViewData.Rows[I].RecordIndex]));
          end;
        end;
      end;

      AView.DataController.BeginUpdate;
      try
        DelRows.Sort;
        for I := DelRows.Count -1 downto 0 do
        begin
          AView.DataController.DeleteRecord(StrToInt(DelRows[I]));
        end;
      finally
        AView.DataController.EndUpdate;
      end;
    finally
      DelRows.Free;
    end;

    if FailedCount = 0 then
    begin
      Msg := Format('[%d]의 고객을 삭제했습니다.', [Cnt]);
    end
    else
    begin
      Msg := Format('[%d]의 고객 삭제 중 [%d]명 고객정보 삭제에 실패했습니다.'#13#10#13#10, [Cnt, FailedCount]);
      Msg := Msg + '[실패고객 정보]'#13#10 + FailedList;
		end;

		GMessagebox(Msg, CDMSI);

    Result := True;
  except on E: Exception do
    begin
      GMessagebox(Format('고객삭제 중 오류가 발생했습니다.[오류: %s]', [E.Message]), CDMSI);
      Assert(False, E.Message);
    end;
  end;
  ALabel.Caption := '총 ' + IntToStr(AView.DataController.RecordCount) + '명';
end;

procedure TFrm_CUTA5.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_안심번호.xls';
  Frm_Main.sgRpExcel := Format('고객>안심번호]%s건/%s', [GetMoneyStr(cxGridDBTableView1.DataController.RecordCount), FExcelDownSleep]);
  Frm_Main.cxGridExcel := cxGrid14;
  Frm_Main.cxGridDBViewExcel := cxGridDBTableView1;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    cxGridDBTableView1.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    cxGridDBTableView1.Columns[0].Properties := Frm_Main.gCalHCProperties;
    cxGridDBTableView1.Columns[4].PropertiesClassName := 'TcxCalcEditProperties';
    cxGridDBTableView1.Columns[4].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    cxGridDBTableView1.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    cxGridDBTableView1.Columns[0].Properties := Frm_Main.gLblProperties;
    cxGridDBTableView1.Columns[4].PropertiesClassName := 'TcxLabelProperties';
    cxGridDBTableView1.Columns[4].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA5.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA5.cbKeynumber11PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

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

        if (TcxComboBox(Sender).Properties.Items.Count > 1) and (TcxComboBox(Sender).ItemIndex > 0) then
        begin
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
          else
            sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex - 1]
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
	if ((sBrNo <> 'B811') and (sBrNo <> 'G640') and (sBrNo <> 'B100') and (sBrNo <> 'C468')) or (GS_PRJ_AREA = 'O') then
	begin
		ShowMessage('안심번호 설정은 신청한 지사를 선택하셔야 합니다.' + #13#10 + #13#10
							+ '문의사항은 콜마너 업무게시판에 등록해 주세요.');

		Exit;
	end;
	proc_VirtureNum_init;
end;

procedure TFrm_CUTA5.proc_VirtureNum_init;
begin
	cxTextEdit18.Text := '';
	cxTextEdit19.Text := '';
	cxTextEdit20.Text := '';
	cxLabel243.Caption := '';
	cxLabel245.Caption := '';
	cxLabel247.Caption := '';
	cxLabel250.Caption := '';
	cxVirtureList.DataController.SetRecordCount(0);
	pnl5.visible := False;
end;

procedure TFrm_CUTA5.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

function TFrm_CUTA5.func_ChkPhone: Boolean;
var iRow, iCnt : integer;
begin
	iCnt := 0;
	for iRow := 0 to cxVirtureList.DataController.RowCount - 1 do
	begin
		if cxVirtureList.DataController.Values[iRow, 2] <> '' then
			inc(iCnt);
	end;
	if iCnt > 0 then Result := False
	else Result := True;
end;

end.

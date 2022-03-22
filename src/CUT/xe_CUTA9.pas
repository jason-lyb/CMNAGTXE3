unit xe_CUTA9;

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
  TFrm_CUTA9 = class(TForm)
    lbCustCompany01: TcxLabel;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    pnl_Excel_OPT: TPanel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbGubun06: TcxComboBox;
    cbKeynumber06: TcxComboBox;
    Shape7: TShape;
    lbCount06: TcxLabel;
    cxButton16: TcxButton;
    edCustName03: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel178: TcxLabel;
    cxLabel180: TcxLabel;
    chkCust07Type02: TcxCheckBox;
    cxDate16: TcxDateEdit;
    cxDate17: TcxDateEdit;
    cxButton56: TcxButton;
    chkCust07Type01: TcxCheckBox;
    cxButton32: TcxButton;
    cxLabel181: TcxLabel;
    cxLabel182: TcxLabel;
    cxLabel183: TcxLabel;
    cxLabel184: TcxLabel;
    edMileage01: TcxCurrencyEdit;
    edSupplyEnd01: TcxCurrencyEdit;
    cxLabel257: TcxLabel;
    edCouponM01: TcxCurrencyEdit;
    cxLabel259: TcxLabel;
    Shape2: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    cxButton33: TcxButton;
    cxGrid6: TcxGrid;
    CustView6: TcxGridDBTableView;
    CustView6Column1: TcxGridDBColumn;
    CustView6Column15: TcxGridDBColumn;
    CustView6Column16: TcxGridDBColumn;
    CustView6Column2: TcxGridDBColumn;
    CustView6Column3: TcxGridDBColumn;
    CustView6Column4: TcxGridDBColumn;
    CustView6Column5: TcxGridDBColumn;
    CustView6Column6: TcxGridDBColumn;
    CustView6Column7: TcxGridDBColumn;
    CustView6Column8: TcxGridDBColumn;
    CustView6Column9: TcxGridDBColumn;
    CustView6Column10: TcxGridDBColumn;
    CustView6Column11: TcxGridDBColumn;
    CustView6Column12: TcxGridDBColumn;
    CustView6Column13: TcxGridDBColumn;
    CustView6Column17: TcxGridDBColumn;
    CustView6Column18: TcxGridDBColumn;
    CustView6Column14: TcxGridDBColumn;
    CustView6Column19: TcxGridDBColumn;
    cxGrid6Level1: TcxGridLevel;
    pop_date2: TPopupMenu;
    N3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    CustView6Column20: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    edEvent01: TcxCurrencyEdit;
    CustView6Column21: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAll2Click(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cbKeynumber06Click(Sender: TObject);
    procedure cxButton56MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem10Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure chkCust07Type02Click(Sender: TObject);
    procedure chkCust07Type01Click(Sender: TObject);
    procedure cxButton32Click(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure CustView6ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView6DataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    gbControlKeyDown: Boolean;
    dt_sysdate2: string;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownMile : string;
    AIndex : Integer;
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    procedure proc_MileageAcc;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
	end;

var
  Frm_CUTA9: TFrm_CUTA9;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash, xe_CUT07, xe_CUTA10;

procedure TFrm_CUTA9.proc_init;
Var i : Integer;
begin
  proc_BrNameSet;

  cxDate16.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate17.Date := cxDate16.Date + 1;

  chkCust07Type02.Checked := True;
  chkCust07Type02Click(chkCust07Type02);
  edEvent01.Value := 0;
  edMileage01.Value := 0;
  cbGubun06.ItemIndex := 0;
  edCustName03.Text := '';
  edSupplyEnd01.Value := 0;
  lbCount06.Caption := '총 00명';
  chkCust07Type01.Checked := False;

	CustView6.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to CustView6.ColumnCount - 1 do
		CustView6.Columns[i].DataBinding.ValueType := 'String';
	CustView6.Columns[8].DataBinding.ValueType := 'Currency';
	CustView6.Columns[9].DataBinding.ValueType := 'Currency';
	CustView6.Columns[10].DataBinding.ValueType := 'Integer';
	CustView6.Columns[18].DataBinding.ValueType := 'Currency';
	CustView6.Columns[19].DataBinding.ValueType := 'Integer';
	CustView6.Columns[20].DataBinding.ValueType := 'Integer';
end;

procedure TFrm_CUTA9.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA9.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp, sBrNo, sPerMMCode, sTmep, sRate, sSmsYn, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
  ARecords, AValues: TStringList;
  Node: TcxTreeListNode;
  bCheck: Boolean;
  ls_rxxml: WideString;
  ErrDesc: string;
begin
	try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        frm_Main.sbar_Message.Panels[4].Text := '';
				ls_ClientKey  := GetXmlClientKey(ls_rxxml);
        ClientKey     := ls_ClientKey;
				ls_ClientKey  := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

          case StrToIntDef(ls_ClientKey, 1) of
            11:
              begin
                CustView6.BeginUpdate;

                Frm_Flash.cxPBar1.Properties.Max := slList.Count;
                Frm_Flash.cxPBar1.Position := 0;

                for j := 0 to slList.Count - 1 do
                begin
//-                  frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                  Frm_Flash.cxPBar1.Position := j + 1;
                  Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                  Application.ProcessMessages;
                  ls_rxxml := slList.Strings[j];
                  if not xdom.loadXML(ls_rxxml) then
                  begin
                    continue;
                  end;
                  if (0 < GetXmlRecordCount(ls_rxxml)) then
                  begin
                    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                    ls_Rcrd := TStringList.Create;
                    try
                      for i := 0 to lst_Result.length - 1 do
                      begin
                        Application.ProcessMessages;
                        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                        iRow := CustView6.DataController.AppendRecord;
                        CustView6.DataController.Values[iRow, 0] := iRow + 1;
                        CustView6.DataController.Values[iRow, 1] := ls_rcrd[0];
                        CustView6.DataController.Values[iRow, 2] := ls_rcrd[1];
                        iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
                        if iIdx >= 0 then
                          CustView6.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
                        else
                          CustView6.DataController.Values[iRow, 3] := '';
                        CustView6.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
                        case StrToIntDef(ls_rcrd[3], 0) of
                          0: CustView6.DataController.Values[iRow, 5] := '일반';
                          1: CustView6.DataController.Values[iRow, 5] := '업소';
                          3: CustView6.DataController.Values[iRow, 5] := '법인';
                          4: CustView6.DataController.Values[iRow, 5] := '주말골프';
                        end;
                        CustView6.DataController.Values[iRow, 6] := ls_rcrd[4];
                        CustView6.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);
                        if StrToIntDef(ls_Rcrd[6], 0) = 0 then
                          ls_Rcrd[6] := '0';
                        if StrToIntDef(ls_Rcrd[7], 0) = 0 then
                          ls_Rcrd[7] := '0';
                        if StrToIntDef(ls_Rcrd[8], 0) = 0 then
                          ls_Rcrd[8] := '0';

                        CustView6.DataController.Values[iRow, 8] := ls_rcrd[6];
                        CustView6.DataController.Values[iRow, 9] := ls_rcrd[7];
                        CustView6.DataController.Values[iRow, 10] := ls_rcrd[8];
                        if ls_rcrd[9] = 'y' then
                          CustView6.DataController.Values[iRow, 11] := '인증'
                        else
                          CustView6.DataController.Values[iRow, 11] := '미인증';

                        CustView6.DataController.Values[iRow, 12] := ls_rcrd[10];
                        sEndDate := ls_rcrd[11];
                        if Trim(sEndDate) <> '' then
                          CustView6.DataController.Values[iRow, 13] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                        else
                          CustView6.DataController.Values[iRow, 13] := '';

                        sEndDate := ls_rcrd[12];
                        if Trim(sEndDate) <> '' then
                          CustView6.DataController.Values[iRow, 14] := copy(sEndDate, 1, 4) + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                        else
                          CustView6.DataController.Values[iRow, 14] := '';

                        CustView6.DataController.Values[iRow, 15] := ls_rcrd[13];
                        CustView6.DataController.Values[iRow, 16] := ls_rcrd[14];
                        CustView6.DataController.Values[iRow, 17] := ls_rcrd[15];
                        if StrToIntDef(ls_Rcrd[16], 0) = 0 then
                          ls_Rcrd[16] := '0';
                        CustView6.DataController.Values[iRow, 18] := ls_rcrd[16];
                        CustView6.DataController.Values[iRow, 19] := ls_rcrd[17];
                        if ls_rcrd.Count > 18 then
                         CustView6.DataController.Values[iRow, 20] := StrToFloatDef(ls_rcrd[18], 0);
                      end;
                    finally
                      ls_Rcrd.Free;
                    end;
                  end;
                end;
                CustView6.EndUpdate;
                lbCount06.Caption := '총 ' + IntToStr(CustView6.DataController.RecordCount) + '명';
                frm_Main.sbar_Message.Panels[4].Text := '';
                Screen.Cursor := crDefault;
              end;
          end;
      end  else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTA9.FormCreate(Sender: TObject);
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

procedure TFrm_CUTA9.FormDestroy(Sender: TObject);
begin
  Frm_CUTA9 := Nil;
end;

procedure TFrm_CUTA9.MenuItem10Click(Sender: TObject);
begin
  cxButton16.Click;
end;

procedure TFrm_CUTA9.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA9.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA9.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA9.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA9.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

function TFrm_CUTA9.GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDate16;
  AEdDt := cxDate17;
end;

procedure TFrm_CUTA9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTA9.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber06.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber06.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
      cbKeynumber06.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber06.Properties.Items.Count >= 1 then
    cbKeynumber06.Properties.Items.Insert(0, '전체');

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  cbKeynumber06.ItemIndex := 0;
  cbKeynumber06.Tag := 0;
end;

procedure TFrm_CUTA9.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA9.CustView6CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
  sBrNo, sSeq, sHdno, sType, sName, sBrName, sTel, sInfo, sTotalMlg, sCurMlg,
    sBrMlg, sCnt,
    sPrize: string;
begin
  iRow := CustView6.DataController.FocusedRecordIndex;
  if iRow = -1 then
    exit;
  sBrNo := CustView6.DataController.Values[iRow, 2];
  sBrName := CustView6.DataController.Values[iRow, 3];
  sSeq := CustView6.DataController.Values[iRow, 1];
  sHdno := frm_Main.func_search_hdNo(sBrNo);
  sType := CustView6.DataController.Values[iRow, 5];
  sName := CustView6.DataController.Values[iRow, 6];
  sTel := CustView6.DataController.Values[iRow, 7];
  sInfo := CustView6.DataController.Values[iRow, 12];
  sTotalMlg := CustView6.DataController.Values[iRow, 8];
  sCurMlg := CustView6.DataController.Values[iRow, 9];
  sCnt := CustView6.DataController.Values[iRow, 10];
  sBrMlg := CustView6.DataController.Values[iRow, 15];
  sPrize := CustView6.DataController.Values[iRow, 16];

  if ( Not Assigned(Frm_CUT07) ) Or ( Frm_CUT07 = NIl ) then Frm_CUT07 := TFrm_CUT07.Create(Nil);
  Frm_CUT07.cxlbBrNo.Caption := sBrNo;
  Frm_CUT07.cxlbCode.Caption := sSeq;
  Frm_CUT07.cxLabel14.Caption := sHdno;
  Frm_CUT07.cxTextEdit4.Text := sBrName;
  Frm_CUT07.cxedEdit1.Text := sType;
  Frm_CUT07.cxTextEdit1.Text := sName;
  Frm_CUT07.cxTextEdit2.Text := sTel;
  Frm_CUT07.cxmmMemo.Text := sInfo;
  Frm_CUT07.edMileage01.Text := sTotalMlg;
  Frm_CUT07.cxCurrencyEdit1.Text := sCurMlg;
  Frm_CUT07.cxCurrencyEdit2.Text := sBrMlg;
  Frm_CUT07.cxCurrencyEdit3.Text := sCnt;
  Frm_CUT07.cxCurrencyEdit4.Text := '0';
  Frm_CUT07.cxCurrencyEdit5.Text := sBrMlg;
  Frm_CUT07.cxTextEdit3.Text := sPrize;
  Frm_CUT07.Show;
end;

procedure TFrm_CUTA9.CustView6ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA9.CustView6DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView6, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA9.CustView6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView6.OptionsSelection.CellMultiSelect := False;
    CustView6.OptionsSelection.CellSelect := False;
    CustView6.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA9.CustView6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView6.OptionsSelection.CellMultiSelect := True;
    CustView6.OptionsSelection.CellSelect := True;
    CustView6.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA9.cxButton16Click(Sender: TObject);
begin
  if CustView6.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA9.cxButton32Click(Sender: TObject);
var
  iRow, iSeq: Integer;
  sSeq: string;
begin
  iRow := CustView6.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iSeq := CustView6.GetColumnByFieldName('고객코드').Index;
  sSeq := CustView6.DataController.Values[iRow, iSeq];

  Frm_Main.procMenuCreateActive(410, '마일리지상세(적립+지급)');

  Frm_CUTA10.cxedCuSEQ.Text := sSeq;
  Frm_CUTA10.CustView7.DataController.SetRecordCount(0);
  Frm_CUTA10.proc_MileageDetail;
end;

procedure TFrm_CUTA9.cxButton33Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	CustView6.DataController.SetRecordCount(0);
  proc_MileageAcc;
end;

procedure TFrm_CUTA9.proc_MileageAcc;
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, strTemp: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    Exit;
  end;

  if CustView6.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('마일리지현황') then Exit;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    //////////////////////////////////////////////////////////////////////////////
    // 고객>마일리지현황]20000건/콜센터(통합)/대표번호:전체/등록기간:20100101~20100131/마일리지11이상/지급완료24이상
    FExcelDownMile := Format('%s/대표번호:%s%s%s%s',
      [
          GetSelBrInfo
        , cbKeynumber06.Text
        , IfThen(chkCust07Type02.Checked, Format('/등록기간:%s~%s', [cxDate16.Text, cxDate17.Text]), '')
        , IfThen(StrToIntDef(edMileage01.Text, -1) = -1, '', Format('/마일리지%s이상', [edMileage01.Text]))
        , IfThen(StrToIntDef(edSupplyEnd01.Text, -1) = -1, '', Format('/지급완료%s이상', [edSupplyEnd01.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    sWhere := '';

    if cxBrNo.Text <> '' then
      sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo.Text + ''' ';

    if chkCust07Type02.Checked then
    begin
      if cxDate16.Enabled then
      begin
        if (cxDate16.Text <> '') and (cxDate17.Text <> '') then
          sWhere := sWhere +
            format(' AND C.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
            , [formatdatetime('yyyymmdd', cxDate16.Date), formatdatetime('yyyymmdd', cxDate17.Date)])
        else
          if (cxDate16.Text <> '') and (cxDate17.Text = '') then
          sWhere := sWhere +
            format(' AND C.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'')  '
            , [formatdatetime('yyyymmdd', cxDate16.Date)])
        else
          if (cxDate16.Text = '') and (cxDate17.Text <> '') then
          sWhere := sWhere +
            format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= C.CU_LAST_END  '
            , [formatdatetime('yyyymmdd', cxDate17.Date)]);
      end;
    end;

    if (cbKeynumber06.Text <> '전체') and (cbKeynumber06.Text <> '') then
      sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber06.Text, '-', '', [rfReplaceAll]) + ''' ';

    case cbGubun06.ItemIndex of
      1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
      2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
      3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
    end;

    if edCustName03.Text <> '' then
      sWhere := sWhere + ' AND C.CMP_NM LIKE ''%' + Param_Filtering(edCustName03.Text) + '%'' ';

    strTemp := RemoveComma(edMileage01.Text);
    if (StrToIntDef(strTemp, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_MILEAGE >= ''' + strTemp + ''' ';

    strTemp := RemoveComma(edSupplyEnd01.Text);
    if (StrToIntDef(strTemp, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_PRIZE_CNT >= ''' + strTemp + ''' ';

    strTemp := RemoveComma(edCouponM01.Text);
    if (StrToIntDef(strTemp, -1) > -1) then
      sWhere := sWhere + ' AND NVL(C.CU_COUPON_MILEAGE, 0) >= ''' + strTemp + ''' ';

    strTemp := RemoveComma(edEvent01.Text);
    if (StrToIntDef(strTemp, -1) > -1) then
      sWhere := sWhere + ' AND NVL(C.CU_EVENTCNT, 0) >= ''' + strTemp + ''' ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '11';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CUSTOMER04';
    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := cxHdNo.Text;
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;

    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
        proc_recieve(slReceive);
      end;
    finally
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA9.cxButton56MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA9.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
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

procedure TFrm_CUTA9.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_마일리지현황고객별.xls';
  Frm_Main.sgRpExcel := Format('고객>마일리지현황]%s건/%s', [GetMoneyStr(CustView6.DataController.RecordCount), FExcelDownMile]);
  Frm_Main.cxGridExcel := cxGrid6;
  Frm_Main.cxGridDBViewExcel := CustView6;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    CustView6.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    CustView6.Columns[0].Properties := Frm_Main.gCalHCProperties;
    CustView6.Columns[10].PropertiesClassName := 'TcxCalcEditProperties';
    CustView6.Columns[10].Properties := Frm_Main.gCalHCProperties;
    CustView6.Columns[19].PropertiesClassName := 'TcxCalcEditProperties';
    CustView6.Columns[19].Properties := Frm_Main.gCalHCProperties;
    CustView6.Columns[20].PropertiesClassName := 'TcxCalcEditProperties';
    CustView6.Columns[20].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    CustView6.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    CustView6.Columns[0].Properties := Frm_Main.gLblProperties;
    CustView6.Columns[10].PropertiesClassName := 'TcxLabelProperties';
    CustView6.Columns[10].Properties := Frm_Main.gLblProperties;
    CustView6.Columns[19].PropertiesClassName := 'TcxLabelProperties';
    CustView6.Columns[19].Properties := Frm_Main.gLblProperties;
    CustView6.Columns[20].PropertiesClassName := 'TcxLabelProperties';
    CustView6.Columns[20].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA9.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA9.cbKeynumber06Click(Sender: TObject);
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
end;

procedure TFrm_CUTA9.chkCust07Type01Click(Sender: TObject);
begin
  cxGridSelectAll(CustView6, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA9.chkCust07Type02Click(Sender: TObject);
begin
  if chkCust07Type02.Checked then
  begin
    cxDate16.Enabled := True;
    cxDate17.Enabled := True;
  end else
  begin
    cxDate16.Enabled := False;
    cxDate17.Enabled := False;
  end;
end;

procedure TFrm_CUTA9.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

end.

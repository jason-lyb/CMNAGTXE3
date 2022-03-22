unit xe_CUTA10;

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
  TFrm_CUTA10 = class(TForm)
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
    cxLabel178: TcxLabel;
    chkCust07Type02: TcxCheckBox;
    cxDate16: TcxDateEdit;
    cxDate17: TcxDateEdit;
    cxButton56: TcxButton;
    Shape2: TShape;
    cxButton33: TcxButton;
    pop_date2: TPopupMenu;
    N3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxedCuSEQ: TcxTextEdit;
    rbCust08Type01: TcxRadioButton;
    rbCust08Type02: TcxRadioButton;
    rbCust08Type03: TcxRadioButton;
    Shape8: TShape;
    cxGrid8: TcxGrid;
    CustView7: TcxGridDBTableView;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    CustView7Column1: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Shape9: TShape;
    cxLabel4: TcxLabel;
    edCustTel03: TcxTextEdit;
    cxLabel5: TcxLabel;
    Shape10: TShape;
    cxCbMileGubun: TcxComboBox;
    CustView7Column2: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
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
    procedure cxButton33Click(Sender: TObject);
    procedure CustView7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView7ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView7DataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    gbControlKeyDown: Boolean;
    dt_sysdate2: string;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownMileDetail : string;
    AIndex : Integer;
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    procedure proc_MileageDetail;
	end;

var
  Frm_CUTA10: TFrm_CUTA10;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash, xe_CUT07;

procedure TFrm_CUTA10.proc_init;
Var i : Integer;
begin
  proc_BrNameSet;

  cxDate16.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate17.Date := cxDate16.Date + 1;

  chkCust07Type02.Checked := True;
  chkCust07Type02Click(chkCust07Type02);
  cbGubun06.ItemIndex := 0;
  edCustName03.Text := '';
  edCustTel03.Text := '';
  lbCount06.Caption := '총 00명';
  cxedCuSEQ.Text := '';

  CustView7.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView7.ColumnCount - 1 do
    CustView7.Columns[i].DataBinding.ValueType := 'String';
  CustView7.Columns[10].DataBinding.ValueType := 'Currency';
  CustView7.Columns[11].DataBinding.ValueType := 'Currency';
end;

procedure TFrm_CUTA10.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA10.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp, sBrNo, sPerMMCode, sTmep, sRate, sSmsYn, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
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
            12:
              begin
                CustView7.BeginUpdate;

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
                        iRow := CustView7.DataController.AppendRecord;
                        CustView7.DataController.Values[iRow, 0] := iRow + 1;
                        CustView7.DataController.Values[iRow, 1] := ls_rcrd[0];
                        CustView7.DataController.Values[iRow, 2] := ls_rcrd[1];
                        iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
                        if iIdx >= 0 then
                          CustView7.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
                        else
                          CustView7.DataController.Values[iRow, 3] := '';
                        CustView7.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
                        case StrToIntDef(ls_rcrd[3], 0) of
                          0: CustView7.DataController.Values[iRow, 5] := '일반';
                          1: CustView7.DataController.Values[iRow, 5] := '업소';
                          3: CustView7.DataController.Values[iRow, 5] := '법인';
                          4: CustView7.DataController.Values[iRow, 5] := '주말골프';
                        end;
                        CustView7.DataController.Values[iRow, 6] := ls_rcrd[4];
                        CustView7.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);

                        if ls_rcrd[6] = 'y' then
                          CustView7.DataController.Values[iRow, 8] := '인증'
                        else
                          CustView7.DataController.Values[iRow, 8] := '미인증';

                        sEndDate := ls_rcrd[7];
                        if Trim(sEndDate) <> '' then
                          CustView7.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
                            '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                        else
                          CustView7.DataController.Values[iRow, 9] := '';

                        if StrToIntDef(ls_Rcrd[8], 0) = 0 then
                          ls_Rcrd[8] := '0';
                        if StrToIntDef(ls_Rcrd[9], 0) = 0 then
                          ls_Rcrd[9] := '0';

                        CustView7.DataController.Values[iRow, 10] := ls_rcrd[8];
                        CustView7.DataController.Values[iRow, 11] := ls_rcrd[9];
                        CustView7.DataController.Values[iRow, 12] := ls_rcrd[10];
                        CustView7.DataController.Values[iRow, 13] := ls_rcrd[11];
                        CustView7.DataController.Values[iRow, 14] := ls_rcrd[12];
                        CustView7.DataController.Values[iRow, 15] := ls_rcrd[13];
                      end;
                    finally
                      ls_Rcrd.Free;
                    end;
                  end;
                end;
                CustView7.EndUpdate;
                lbCount06.Caption := '총 ' + IntToStr(CustView7.DataController.RecordCount) + '명';
                frm_Main.sbar_Message.Panels[4].Text := '';
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

procedure TFrm_CUTA10.FormCreate(Sender: TObject);
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

procedure TFrm_CUTA10.FormDestroy(Sender: TObject);
begin
  Frm_CUTA10 := Nil;
end;

procedure TFrm_CUTA10.MenuItem10Click(Sender: TObject);
begin
  cxButton16.Click;
end;

procedure TFrm_CUTA10.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA10.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA10.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA10.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA10.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

function TFrm_CUTA10.GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDate16;
  AEdDt := cxDate17;
end;

procedure TFrm_CUTA10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTA10.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
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

  cbKeynumber06.Tag := 1;
  cbKeynumber06.ItemIndex := 0;
  cbKeynumber06.Tag := 0;
end;

procedure TFrm_CUTA10.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA10.CustView7ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA10.CustView7DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView7, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA10.CustView7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView7.OptionsSelection.CellMultiSelect := False;
    CustView7.OptionsSelection.CellSelect := False;
    CustView7.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA10.CustView7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView7.OptionsSelection.CellMultiSelect := True;
    CustView7.OptionsSelection.CellSelect := True;
    CustView7.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA10.cxButton16Click(Sender: TObject);
begin
  if CustView7.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA10.cxButton33Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxedCuSEQ.Text := '';
  CustView7.DataController.SetRecordCount(0);
  proc_MileageDetail;
end;

procedure TFrm_CUTA10.proc_MileageDetail;
var
  XmlData, Param, ErrMsg : string;

  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, sEndDate: string;
  i, iCnt, iRow, iIdx : Integer;

  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;

  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  ls_Rcrd : TStringList;
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

  if CustView7.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('마일리지상세') then Exit;

    //////////////////////////////////////////////////////////////////////////////
    // 고객>마일리지상세]2000건/콜센터(통합)/전체/기간:XXXX~XXXX
    FExcelDownMileDetail := Format('%s/종류:%s%s',
      [
          GetSelBrInfo
        , IfThen(rbCust08Type01.Checked, '전체', IfThen(rbCust08Type02.Checked, '적립', '지급'))
        , IfThen(chkCust07Type02.Checked, Format('/기간:%s~%s', [cxDate16.Text, cxDate17.Text]), '')
      ]);
    //////////////////////////////////////////////////////////////////////////////


    param := cxedCuSEQ.Text;
    Param := Param + '│' + cxBrNo.Text;
    if chkCust07Type02.Checked then Param := Param + '│' + '1'
                               else Param := Param + '│' + '0';
    Param := Param + '│' + FormatDateTime('yyyymmdd090000', cxDate16.Date);
    Param := Param + '│' + FormatDateTime('yyyymmdd090000', cxDate17.Date);

    Param := Param + '│' + IntToStr(0);

    if (cbKeynumber06.Text = '전체') Or (cbKeynumber06.ItemIndex = 0) then
      Param := Param + '│'
    else
      Param := Param + '│' + StringReplace(cbKeynumber06.Text, '-', '', [rfReplaceAll]);

    Param := Param + '│' + IntToStr(cbGubun06.ItemIndex);
    Param := Param + '│' + Param_Filtering(edCustName03.Text);

    sTel1 := Param_Filtering(edCustTel03.Text);
    sTel1 := StringReplace(sTel1, '-', '', [rfReplaceAll]);
    sTel1 := StringReplace(sTel1, ' ', '', [rfReplaceAll]);
    Param := Param + '│' + sTel1;

    if rbCust08Type01.Checked then Param := Param + '│' + '0' else
    if rbCust08Type02.Checked then Param := Param + '│' + '1' else
    if rbCust08Type03.Checked then Param := Param + '│' + '2';

    Param := Param + '│' + cxHdNo.Text;
    Param := Param + '│' + IntToStr(cxCbMileGubun.ItemIndex);

    if not RequestBase(GetSel05('LIST_MILEAGE_SEARCH', 'MNG_CUST.LIST_MILEAGE_SEARCH', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

  xdom := ComsDomDocument.Create;
  try
    xdom.loadXML(XmlData);
    lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

    if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
    begin
       CustView7.BeginUpdate;

       Frm_Flash.cxPBar1.Properties.Max := StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0);
       Frm_Flash.cxPBar1.Position := 0;

      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      ls_Rcrd := TStringList.Create;
      try
        iRow := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
          Frm_Flash.cxPBar1.Position := i + 1;
          Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + lst_Count.item[0].attributes.getNamedItem('Count').Text;
          Application.ProcessMessages;

          GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);

          iRow := CustView7.DataController.AppendRecord;
          CustView7.DataController.Values[iRow, 0] := iRow + 1;
          CustView7.DataController.Values[iRow, 1] := ls_rcrd[0];
          CustView7.DataController.Values[iRow, 2] := ls_rcrd[1];
          iIdx := scb_BranchCode.IndexOf(ls_rcrd[1]);
          if iIdx >= 0 then
            CustView7.DataController.Values[iRow, 3] := scb_BranchName[iIdx]
          else
            CustView7.DataController.Values[iRow, 3] := '';
          CustView7.DataController.Values[iRow, 4] := strtocall(ls_rcrd[2]);
          case StrToIntDef(ls_rcrd[3], 0) of
            0: CustView7.DataController.Values[iRow, 5] := '일반';
            1: CustView7.DataController.Values[iRow, 5] := '업소';
            3: CustView7.DataController.Values[iRow, 5] := '법인';
            4: CustView7.DataController.Values[iRow, 5] := '주말골프';
          end;
          CustView7.DataController.Values[iRow, 6] := ls_rcrd[4];
          CustView7.DataController.Values[iRow, 7] := strtocall(ls_rcrd[5]);

          if ls_rcrd[6] = 'y' then
            CustView7.DataController.Values[iRow, 8] := '인증'
          else
            CustView7.DataController.Values[iRow, 8] := '미인증';

          sEndDate := ls_rcrd[7];
          if Trim(sEndDate) <> '' then
            CustView7.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
              '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
          else
            CustView7.DataController.Values[iRow, 9] := '';

          if StrToIntDef(ls_Rcrd[8], 0) = 0 then
            ls_Rcrd[8] := '0';
          if StrToIntDef(ls_Rcrd[9], 0) = 0 then
            ls_Rcrd[9] := '0';

          CustView7.DataController.Values[iRow, 10] := ls_rcrd[8];
          CustView7.DataController.Values[iRow, 11] := ls_rcrd[9];
          CustView7.DataController.Values[iRow, 12] := ls_rcrd[10];
          CustView7.DataController.Values[iRow, 13] := ls_rcrd[11];
          CustView7.DataController.Values[iRow, 14] := ls_rcrd[12];
          CustView7.DataController.Values[iRow, 15] := ls_rcrd[13];
          if ls_rcrd.Count > 14 then
            CustView7.DataController.Values[iRow, 16] := ls_rcrd[14];
        end;
      finally
        ls_Rcrd.Free;
      end;
      CustView7.EndUpdate;
      lbCount06.Caption := '총 ' + IntToStr(CustView7.DataController.RecordCount) + '명';
      frm_Main.sbar_Message.Panels[4].Text := '';
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA10.cxButton56MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA10.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
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

procedure TFrm_CUTA10.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_마일리지상세.xls';
  Frm_Main.sgRpExcel := Format('고객>마일리지상세]%s건/%s', [GetMoneyStr(CustView7.DataController.RecordCount), FExcelDownMileDetail]);
  Frm_Main.cxGridExcel := cxGrid8;
  Frm_Main.cxGridDBViewExcel := CustView7;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA10.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA10.cbKeynumber06Click(Sender: TObject);
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

procedure TFrm_CUTA10.chkCust07Type02Click(Sender: TObject);
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

procedure TFrm_CUTA10.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;


end.

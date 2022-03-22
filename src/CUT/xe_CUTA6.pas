unit xe_CUTA6;

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
  TFrm_CUTA6 = class(TForm)
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
    cxGroupBox4: TcxGroupBox;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    pmDetail: TPopupMenu;
    mniDetailCustLevel: TMenuItem;
    MenuItem19: TMenuItem;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cbGubun05: TcxComboBox;
    cbKeynumber05: TcxComboBox;
    cbLevel04: TcxComboBox;
    cbSmsUse05: TcxComboBox;
    Shape7: TShape;
    chkCust05Type02: TcxCheckBox;
    chkNmlPhoneOut05: TcxCheckBox;
    lbCount05: TcxLabel;
    rbCust05Type01: TcxRadioButton;
    cxDate13: TcxDateEdit;
    cxLabel88: TcxLabel;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    chkCust05Type01: TcxCheckBox;
    rbCust05Type02: TcxRadioButton;
    cxDate14: TcxDateEdit;
    cxDate15: TcxDateEdit;
    cxLabel91: TcxLabel;
    cxLabel229: TcxLabel;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    btnHighCustDel: TcxButton;
    chkCust05Type03: TcxCheckBox;
    chkRestSubscribe: TcxCheckBox;
    chk1: TcxCheckBox;
    cxGrid5: TcxGrid;
    CustView5: TcxGridDBTableView;
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
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    CustView5Column1: TcxGridDBColumn;
    CustView5Column2: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
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
    procedure btnAll1Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure rbCust05Type02Click(Sender: TObject);
    procedure cbGubun05Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure btnHighCustDelClick(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure CustView5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rbCust05Type01Click(Sender: TObject);
    procedure CustView5ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView5DataControllerSortingChanged(Sender: TObject);
    procedure cbKeynumber05PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    gbControlKeyDown: Boolean;
    dt_sysdate2: string;

    SCboLevelSeq : TStringList;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownSleep : string;
    AIndex : Integer;
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure RequestData(AData: string);
    procedure proc_SleepSearch;
    procedure ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_KeyNumber_insert;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
	end;

var
  Frm_CUTA6: TFrm_CUTA6;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash, xe_SMSA1;

procedure TFrm_CUTA6.proc_init;
Var i : Integer;
begin
  SCboLevelSeq := TStringList.Create;

  proc_BrNameSet;

  cbGubun05.ItemIndex := 0;
  cbLevel04.ItemIndex := 0;
  chkCust05Type02.Checked := False;
  lbCount05.Caption := '총 00명';
  rbCust05Type01.Checked := True;
  rbCust05Type01Click(rbCust05Type01);
  chkCust05Type03.Checked := False;

  cxDate13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 30;

  CustView5.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView5.ColumnCount - 1 do
    CustView5.Columns[i].DataBinding.ValueType := 'String';
  CustView5.Columns[16].DataBinding.valuetype := 'Currency';
end;

procedure TFrm_CUTA6.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA6.proc_KeyNumber_insert;
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

procedure TFrm_CUTA6.proc_recieve(slList: TStringList);
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
            8:
              begin
                CustView5.BeginUpdate;

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

                        if chkNmlPhoneOut05.Checked then
                        begin
                          if not CheckHPType(ls_rcrd[4], ErrDesc) then
                            Continue;
                        end;

                        if ls_rcrd[4] = '' then
                          Continue;

                        sEndDate := ls_rcrd[11];
                        iRow := CustView5.DataController.AppendRecord;
                        CustView5.DataController.Values[iRow, 0] := iRow + 1;
                        CustView5.DataController.Values[iRow, 1] := ls_rcrd[0];
                        CustView5.DataController.Values[iRow, 2] := ls_rcrd[1];
                        CustView5.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
                        CustView5.DataController.Values[iRow, 4] := ls_rcrd[3];
                        CustView5.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
                        CustView5.DataController.Values[iRow, 6] := ls_rcrd[5];
                        CustView5.DataController.Values[iRow, 7] := ls_rcrd[6];
                        CustView5.DataController.Values[iRow, 8] := ls_rcrd[7];
                        CustView5.DataController.Values[iRow, 9] := ls_rcrd[8] + '%';
                        CustView5.DataController.Values[iRow, 10] := ls_rcrd[9];
                        CustView5.DataController.Values[iRow, 11] := ls_rcrd[10];
                        CustView5.DataController.Values[iRow, 13] := ls_rcrd[12];
                        CustView5.DataController.Values[iRow, 14] := ls_rcrd[13];
                        CustView5.DataController.Values[iRow, 15] := ls_rcrd[14];
                        CustView5.DataController.Values[iRow, 16] := ls_rcrd[15];
                        if Trim(sEndDate) <> '' then
                          CustView5.DataController.Values[iRow, 12] := copy(sEndDate, 1, 4) +
                            '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                        else
                          CustView5.DataController.Values[iRow, 12] := '';
                      end;
                    finally
                      ls_Rcrd.Free;
                    end;
                  end;
                end;
                CustView5.EndUpdate;
                lbCount05.Caption := '총 ' + IntToStr(CustView5.DataController.RecordCount) + '명';
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

procedure TFrm_CUTA6.rbCust05Type01Click(Sender: TObject);
begin
  if rbCust05Type01.Checked then
  begin
    cxDate13.Enabled := True;
    cxButton22.Enabled := True;
    cxButton23.Enabled := True;
    cxButton24.Enabled := True;
    cxButton25.Enabled := True;
    cxButton26.Enabled := True;
    chkCust05Type01.Enabled := True;
    cxDate14.Enabled := False;
    cxDate15.Enabled := False;
  end else
  begin
    cxDate13.Enabled := False;
    cxButton22.Enabled := False;
    cxButton23.Enabled := False;
    cxButton24.Enabled := False;
    cxButton25.Enabled := False;
    cxButton26.Enabled := False;
    chkCust05Type01.Enabled := False;
    cxDate14.Enabled := True;
    cxDate15.Enabled := True;
  end;
end;

procedure TFrm_CUTA6.rbCust05Type02Click(Sender: TObject);
begin
  if rbCust05Type01.Checked then
  begin
    cxDate13.Enabled := True;
    cxButton22.Enabled := True;
    cxButton23.Enabled := True;
    cxButton24.Enabled := True;
    cxButton25.Enabled := True;
    cxButton26.Enabled := True;
    chkCust05Type01.Enabled := True;
    cxDate14.Enabled := False;
    cxDate15.Enabled := False;
  end else
  begin
    cxDate13.Enabled := False;
    cxButton22.Enabled := False;
    cxButton23.Enabled := False;
    cxButton24.Enabled := False;
    cxButton25.Enabled := False;
    cxButton26.Enabled := False;
    chkCust05Type01.Enabled := False;
    cxDate14.Enabled := True;
    cxDate15.Enabled := True;
  end;
end;

procedure TFrm_CUTA6.FormCreate(Sender: TObject);
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

procedure TFrm_CUTA6.FormDestroy(Sender: TObject);
begin
  Frm_CUTA6 := Nil;
end;

procedure TFrm_CUTA6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUTA6.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber05.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber05.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
      cbKeynumber05.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  if cbKeynumber05.Properties.Items.Count >= 1 then
    cbKeynumber05.Properties.Items.Insert(0, '전체');

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  cbKeynumber05.ItemIndex := 0;
  cbKeynumber05.Tag := 0;
end;

procedure TFrm_CUTA6.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA6.CustView4ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA6.CustView5ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA6.CustView5DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView5, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA6.CustView5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C'))) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView5.OptionsSelection.CellMultiSelect := False;
    CustView5.OptionsSelection.CellSelect := False;
    CustView5.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA6.CustView5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView5.OptionsSelection.CellMultiSelect := True;
    CustView5.OptionsSelection.CellSelect := True;
    CustView5.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA6.cxButton15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if not chkCust05Type03.Checked then
    CustView5.DataController.SetRecordCount(0);
	proc_SleepSearch;
end;

procedure TFrm_CUTA6.proc_SleepSearch;
var
  ls_TxLoad, ls_TxSend, sWhere: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
  sms_use1, sms_use2: string;
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
    exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('휴먼고객') then Exit;

  if not chkCust05Type03.Checked then
  begin
    if CustView5.DataController.RecordCount > 0 then
      exit;
  end;
  //////////////////////////////////////////////////////////////////////////////
  // 고객>휴면고객]10000건/콜마너/대표번호:전체/최종이용:XXXXXXXX/SMS수신
  FExcelDownSleep := Format('%s/대표번호:%s/%s/%s',
    [
        GetSelBrInfo
      , cbKeynumber05.Text
      , IfThen(rbCust05Type01.Checked,
          Format('최종이용일:%s', [cxDate13.Text]),
          Format('기간내미사용:%s~%s', [cxDate14.Text, cxDate15.Text]))
      , cbSmsUse05.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := '';
  if cxBrNo.Text <> '' then
    sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo.Text + ''' ';

  if (cbKeynumber05.Text <> '전체') and (cbKeynumber05.Text <> '') then
    sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber05.Text, '-', '', [rfReplaceAll]) + ''' ';

  case cbGubun05.ItemIndex of
    1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
  end;

  // [hjf]
  case cbSmsUse05.ItemIndex of
  1:
    begin
      sms_use1 := 'y';
      sms_use2 := '0';
    end;
  2:
    begin
      sms_use1 := '0';
      sms_use2 := 'n';
    end;
  else
    begin
      sms_use1 := 'y';
      sms_use2 := 'n';
    end;
  end;

  if cbLevel04.ItemIndex > 0 then
    sWhere := sWhere + ' AND CU.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel04.itemindex] + ''' ';

  if chkCust05Type02.Checked then
    sWhere := sWhere + ' AND C.CU_TYPE != ''3'' ';

  if rbCust05Type01.Checked then
  begin
    if cxDate13.Enabled then
    begin
      if (cxDate13.Text <> '') then
      begin
        if chkCust05Type01.Checked then
          sWhere := sWhere + format(' AND (''%s'' >= C.CU_LAST_END or C.CU_LAST_END is null) ' , [formatdatetime('yyyymmdd', cxDate13.Date)])
        else
          sWhere := sWhere + format(' AND ''%s'' >= C.CU_LAST_END ' , [formatdatetime('yyyymmdd', cxDate13.Date)]);
      end;
    end;

    if chkCust05Type01.Checked then
    begin
      sWhere := sWhere + ' AND C.CU_ENDCNT = 0 ';
    end;
  end else
  if rbCust05Type02.Checked then
  begin
    if cxDate14.Enabled then
    begin
      if (cxDate14.Text <> '') and (cxDate15.Text <> '') then
        sWhere := sWhere + format(' AND C.CU_LAST_END NOT BETWEEN ''%s'' AND ''%s'' ' , [formatdatetime('yyyymmdd', cxDate14.Date),
          formatdatetime('yyyymmdd', cxDate15.Date)])
      else if (cxDate14.Text <> '') and (cxDate15.Text = '') then
        sWhere := sWhere + format(' AND ''%s'' >= C.CU_LAST_END ' , [formatdatetime('yyyymmdd', cxDate14.Date)])
      else if (cxDate14.Text = '') and (cxDate15.Text <> '') then
        sWhere := sWhere + format(' AND C.CU_LAST_END >= ''%s'' ' , [formatdatetime('yyyymmdd', cxDate15.Date)]);
    end;
  end;

  // 최근 6개월 이내 이용고객만 조회
  sWhere := sWhere + Format(' AND C.CU_LAST_END > ''%s'' ', [FormatDateTime('yyyymmdd', IncMonth(Now, -6))]);

  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
  sWhere := sWhere + ')';
  ls_TxLoad := GetSel04(self.Caption + '8', 'CUSTOMER23', '', sWhere, [sms_use1, sms_use2, cxHdNo.Text]);

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
end;

procedure TFrm_CUTA6.cxButton16Click(Sender: TObject);
begin
  if CustView5.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA6.cxButton17Click(Sender: TObject);
begin
  proc_SND_SMS(CustView5, chkRestSubscribe.Checked);
end;

procedure TFrm_CUTA6.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
var
  i, iBrNo, iCustTel, iCustName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt, iMile, iSmsYn: Integer;
  sCustTel, sSmsYn: string;
begin
  GS_CUTSMS := True;
  iBrNo     := sGrid.GetColumnByFieldName('지사코드').Index;
  iCustTel  := sGrid.GetColumnByFieldName('고객번호').Index;
  iCustName := sGrid.GetColumnByFieldName('고객명').Index;
  iKeyNum   := sGrid.GetColumnByFieldName('대표번호').Index;
  iMile     := sGrid.GetColumnByFieldName('마일리지').Index;
  iSmsYn    := sGrid.GetColumnByFieldName('SMS수신거부').Index;

  iCnt := 0;
  Frm_Main.procMenuCreateActive(1001, 'SMS발송');

  Frm_SMSA1.chkBalsin.Enabled := True;
  Frm_SMSA1.cxViewSms.DataController.SetRecordCount(0);
  Frm_SMSA1.cxViewKeyNum.DataController.SetRecordCount(0);
  Frm_SMSA1.cxViewSms.BeginUpdate;
  Frm_SMSA1.cxViewKeyNum.BeginUpdate;

  for I := 0 to sGrid.DataController.RecordCount - 1 do
  begin
    sCustTel := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
    if ASubscribe and (iSmsYn <> -1) then
      sSmsYn := sGrid.ViewData.Records[I].Values[iSmsYn]
    else
      sSmsYn := 'y';

    if (sGrid.ViewData.Records[i].Selected) and (Copy(sCustTel, 1, 2) = '01')
      and (Length(sCustTel) in [10, 11]) and ((sSmsYn = 'y') or (sSmsYn = '수신')) then
    begin
      // 전송내역 구성
      RowIdx := Frm_SMSA1.cxViewSms.DataController.AppendRecord;
      // 0, 지사코드
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 0] := sGrid.ViewData.Records[I].Values[iBrNo];
      // 1, 대표번호
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1] := StringReplace(sGrid.ViewData.Records[I].Values[iKeyNum], '-', '', [rfreplaceAll]);
      // 2, 고객번호
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 2] := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
      // 3, 고객명
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 3] := sGrid.ViewData.Records[I].Values[iCustName];
      // 4, 마일리지
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 6] := sGrid.ViewData.Records[I].Values[iMile];
      Inc(icnt);

      // 대표전화별 전송수 카운팅
      iRow := Frm_SMSA1.cxViewKeyNum.DataController.FindRecordIndexByText(0, 1,
        Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1], True, True, True);

      if iRow = -1 then
      begin
        KeyRow := Frm_SMSA1.cxViewKeyNum.DataController.AppendRecord;
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 0];
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1];
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
      end else
      begin
        ikey_cnt := Integer(Frm_SMSA1.cxViewKeyNum.DataController.Values[iRow, 2]);
        Inc(ikey_cnt);
        Frm_SMSA1.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
      end;
    end;
  end;

  Frm_SMSA1.cxViewSms.EndUpdate;
  Frm_SMSA1.cxViewKeyNum.EndUpdate;
  Frm_SMSA1.cxViewSms.Columns[1].SortOrder := soAscending;
  Frm_SMSA1.mmoAfter.Text := IntToStr(iCnt);
  // 외부에서 호출함수
  Frm_SMSA1.proc_branch_sms;
  Frm_SMSA1.Show;
  Frm_SMSA1.cxBtnHelp.Click;
end;

procedure TFrm_CUTA6.cxButton22Click(Sender: TObject);
begin
  cxDate13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - StrToIntDef(TcxButton(Sender).Caption, 1);
end;

procedure TFrm_CUTA6.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
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

procedure TFrm_CUTA6.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
	Exit;
end;

procedure TFrm_CUTA6.cxGridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

function TFrm_CUTA6.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
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

function TFrm_CUTA6.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
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
    end else
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

procedure TFrm_CUTA6.RequestData(AData: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        proc_recieve(StrList);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTA6.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_휴면고객.xls';
  Frm_Main.sgRpExcel := Format('고객>휴면고객]%s건/%s', [GetMoneyStr(CustView5.DataController.RecordCount), FExcelDownSleep]);
  Frm_Main.cxGridExcel := cxGrid5;
  Frm_Main.cxGridDBViewExcel := CustView5;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA6.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA6.btnHighCustDelClick(Sender: TObject);
begin
  DeleteCustomer(CustView5, lbCount05);
end;

procedure TFrm_CUTA6.cbGubun05Click(Sender: TObject);
begin
  if cbGubun05.ItemIndex = 0 then
  begin
    chkCust05Type02.Enabled := True;
  end else
  if cbGubun05.ItemIndex = 3 then
  begin
    chkCust05Type02.Enabled := False;
  end;
end;

procedure TFrm_CUTA6.ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
var
  I : Integer;
  CustGroup: TCustGroup;
begin
  ACombo.Properties.Items.Clear;
  SCboLevelSeq.Clear;

  ACombo.Properties.Items.Add('전체');
  SCboLevelSeq.Add('');

  if AKeyNumber = '전체' then
  begin
    for I := 0 to Length(scb_CustGroupInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [scb_CustGroupInfo[i].GroupName, scb_CustGroupInfo[i].LevelName]));
      SCboLevelSeq.Add(scb_CustGroupInfo[I].LevelSeq);
    end;
  end
  else
  begin
    GetCustGroup(AKeyNumber, CustGroup);

    for i := 0 to Length(CustGroup.LevelInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [CustGroup.GroupName, CustGroup.LevelInfo[i].LevelName]));
      SCboLevelSeq.Add(CustGroup.LevelInfo[i].LevelSeq);
    end;
  end;

  ACombo.ItemIndex := 0;
end;

procedure TFrm_CUTA6.cbKeynumber05PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then
  begin
    ChageCustLevel(TcxComboBox(Sender).Text, cbLevel04);
    Exit;
  end;

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

  ChageCustLevel(TcxComboBox(Sender).Text, cbLevel04);
end;

procedure TFrm_CUTA6.chk1Click(Sender: TObject);
begin
  cxGridSelectAll(CustView5, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA6.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;


end.

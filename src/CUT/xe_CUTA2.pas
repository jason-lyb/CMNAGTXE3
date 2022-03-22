unit xe_CUTA2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, GradientLabel, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI, System.StrUtils,
  ComObj,  cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTA2 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    PnlMain: TPanel;
    cbKeynumber02: TcxComboBox;
    cxDate05: TcxDateEdit;
    cxDate06: TcxDateEdit;
    cb_Sms_Gubun: TcxComboBox;
    edCustTel02: TcxTextEdit;
    edCustMemo01: TcxTextEdit;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    chk_All_Select: TcxCheckBox;
    chkCust02Type04: TcxCheckBox;
    lbCount02: TcxLabel;
    cxButton10: TcxButton;
    cxGrid2: TcxGrid;
    CustView2: TcxGridDBTableView;
    CustView2Column1: TcxGridDBColumn;
    CustView2Column22: TcxGridDBColumn;
    CustView2Column2: TcxGridDBColumn;
    CustView2Column3: TcxGridDBColumn;
    CustView2Column4: TcxGridDBColumn;
    CustView2Column5: TcxGridDBColumn;
    CustView2Column6: TcxGridDBColumn;
    CustView2Column7: TcxGridDBColumn;
    CustView2Column8: TcxGridDBColumn;
    CustView2Column9: TcxGridDBColumn;
    CustView2Column10: TcxGridDBColumn;
    CustView2Column11: TcxGridDBColumn;
    CustView2Column12: TcxGridDBColumn;
    CustView2Column13: TcxGridDBColumn;
    CustView2Column14: TcxGridDBColumn;
    CustView2Column15: TcxGridDBColumn;
    CustView2Column16: TcxGridDBColumn;
    CustView2Column17: TcxGridDBColumn;
    CustView2Column18: TcxGridDBColumn;
    CustView2Column19: TcxGridDBColumn;
    CustView2Column20: TcxGridDBColumn;
    CustView2Column21: TcxGridDBColumn;
    CustView2Column23: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxLabel39: TcxLabel;
    cxLabel210: TcxLabel;
    cxGrdCuList: TcxGrid;
    sg_notsms_list: TcxGridDBTableView;
    cxGrdCol1: TcxGridDBColumn;
    cxGrdCol2: TcxGridDBColumn;
    cxGrdCol3: TcxGridDBColumn;
    cxGrdCuListLevel1: TcxGridLevel;
    lb_Status: TListBox;
    cxButton52: TcxButton;
    btnNmlCustDel: TcxButton;
    chkNmlPhoneOut02: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    lbCustCompany02: TcxLabel;
    cxLabel271: TcxLabel;
    cxBrNo1: TcxTextEdit;
    cxHdNo1: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    rg_SType: TPanel;
    rbAll01: TcxRadioButton;
    rbNew01: TcxRadioButton;
    rbUseList01: TcxRadioButton;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    Shape3: TShape;
    cxLabel2: TcxLabel;
    Shape4: TShape;
    cxLabel3: TcxLabel;
    Shape5: TShape;
    edCustName02: TcxTextEdit;
    cb_s_CGubun: TcxComboBox;
    GroupBox4: TcxGroupBox;
    rrb_st_all: TcxRadioButton;
    rrb_st_comp: TcxRadioButton;
    rrb_st_cancel: TcxRadioButton;
    rrb_st_req: TcxRadioButton;
    Shape6: TShape;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Shape7: TShape;
    cxLabel6: TcxLabel;
    Shape8: TShape;
    cxLabel7: TcxLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    Shape12: TShape;
    cb_S_Cnt1: TcxTextEdit;
    cb_S_CCnt1: TcxTextEdit;
    cb_S_Grad: TcxComboBox;
    cxLabel54: TcxLabel;
    cxLabel53: TcxLabel;
    cb_S_Cnt2: TcxTextEdit;
    cb_S_CCnt2: TcxTextEdit;
    chk_Before: TcxCheckBox;
    RbCheckBox9: TcxCheckBox;
    chk_Before_New: TcxCheckBox;
    cxLabel11: TcxLabel;
    Shape13: TShape;
    cb_st_city: TcxComboBox;
    cxLabel12: TcxLabel;
    cb_st_ward: TcxComboBox;
    Shape14: TShape;
    cxGroupBox5: TcxGroupBox;
    pnl_Excel_OPT: TPanel;
    cxGroupBox7: TcxGroupBox;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    Shape15: TShape;
    CustView2Column24: TcxGridDBColumn;
    Shape16: TShape;
    cxLabel13: TcxLabel;
    cbOutBound: TcxComboBox;
		procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure btBubinSttDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbAll01Click(Sender: TObject);
    procedure chk_BeforeClick(Sender: TObject);
    procedure cb_S_GradClick(Sender: TObject);
    procedure cb_S_Cnt1PropertiesChange(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure chk_All_SelectClick(Sender: TObject);
    procedure CustView2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton12Click(Sender: TObject);
    procedure RbCheckBox9Click(Sender: TObject);
    procedure chk_Before_NewClick(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnNmlCustDelClick(Sender: TObject);
    procedure cbKeynumber02PropertiesChange(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure CustView2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_st_cityPropertiesChange(Sender: TObject);
    procedure CustView2DataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    dt_sysdate2: string;
    gbControlKeyDown: Boolean;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownNormal : string;
    AIndex : Integer;
    SCboLevelSeq : TStringList;

    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
    procedure RequestData(AData: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
  public
    { Public declarations }

    // 좌측 메뉴 지사선택
    lb_st_customer, lbNoSms: TStringList;
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_GeneralSearch;
    procedure proc_New_his(iType: Integer);
    procedure proc_NotSMS(Br_no: string);
    procedure proc_before_his;
    procedure proc_before_comp;
    procedure proc_before_new;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
		function func_recieve(slList: TStringList): Boolean;
	end;

var
  Frm_CUTA2: TFrm_CUTA2;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_xml, xe_Msg,
  xe_Query, xe_packet, xe_Flash, xe_SMSA1;

procedure TFrm_CUTA2.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTA2.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA2.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA2.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA2.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA2.btBubinSttDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA2.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;

  cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate06.Date := cxDate05.Date + 1;

  rbNew01.Checked := True;
  rbAll01Click(rbNew01);
  cb_s_CGubun.ItemIndex := 0;
  edCustName02.Text := '';
  edCustTel02.Text := '';
  cb_Sms_Gubun.ItemIndex := 1;
  edCustTel02.Text := '';
  edCustMemo01.Text := '';
  cb_S_Cnt1.Text := '';
  cb_S_Cnt2.Text := '';
  cb_S_CCnt1.Text := '';
  cb_S_CCnt2.Text := '';
  cb_S_Grad.ItemIndex := 0;

  cb_st_city.Properties.Items.Clear;
  cb_st_city.Properties.Items.Assign(slstLocalMapOrder);
  cb_st_city.Properties.Items.Insert(0, '전체');

  cb_st_city.Tag := 0;
  cb_st_city.ItemIndex := 0;
  cb_st_cityPropertiesChange(cb_st_city);

  cb_st_ward.ItemIndex := 0;

  lbCount02.Caption := '총 0명';
  chkCust02Type04.Checked := False;
  chk_All_Select.Checked := False;

  CustView2.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView2.ColumnCount - 1 do
    CustView2.Columns[i].DataBinding.ValueType := 'String';
  CustView2.Columns[22].DataBinding.ValueType := 'Currency';

  for i := 0 to sg_notsms_list.ColumnCount - 1 do
    sg_notsms_list.Columns[i].DataBinding.ValueType := 'String';
end;

procedure TFrm_CUTA2.proc_recieve(slList: TStringList);
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
      if not xdom.loadXML(ls_rxxml) then
      begin
  			Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        frm_Main.sbar_Message.Panels[4].Text := '';
				ls_ClientKey  := GetXmlClientKey(ls_rxxml);
        ClientKey     := ls_ClientKey;
				ls_ClientKey  := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

        case StrToIntDef(ls_ClientKey, 1) of
          3:
            begin
              sNoSms := '';
              for i := 0 to sg_notsms_list.DataController.RecordCount - 1 do
                sNoSms := sNoSms + ',' + sg_notsms_list.DataController.Values[i, 2];
              CustView2.BeginUpdate;

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
                if not xdom.loadXML(ls_rxxml) then
                begin
                  Screen.Cursor := crDefault;
                  Continue;
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
                      sEndDate := ls_rcrd[10];
                      //----------------------------------------------------------------------------------------------
                      //                  대표번호 길이가 8보다 큰경우만 생성
                      //----------------------------------------------------------------------------------------------
                      if (trim(ls_rcrd[1]) <> '') then
                      begin
                        iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1, ls_rcrd[1] + ls_rcrd[3], True, True, True);
                        //----------------------------------------------------------------------------------------------
                        //                  대표번호 + 고객번호가 같은게 없을때만 생성
                        //----------------------------------------------------------------------------------------------
                        if (irow < 0) then
                        begin
                          iRow := CustView2.DataController.FindRecordIndexByText(0, 14 + 1, ls_rcrd[0], True, True, True);
                          //----------------------------------------------------------------------------------------------
                          //                  고객순번이 중복이면 생략
                          //----------------------------------------------------------------------------------------------
                          if iRow > 0 then
                            continue;

                          if chkNmlPhoneOut02.Checked then
                          begin
                            if not CheckHPType(ls_rcrd[3], ErrDesc) then
                              Continue;
                          end;

                          iRow := CustView2.DataController.AppendRecord;
                          CustView2.DataController.Values[iRow, 18 + 1] := ls_rcrd[1] + ls_rcrd[3];
                          CustView2.DataController.Values[iRow, 17 + 1] := ls_rcrd[12];
                          CustView2.DataController.Values[iRow, 15 + 1] := ls_rcrd[11];
                          CustView2.DataController.Values[iRow, 9 + 1] := ls_rcrd[13];
                          CustView2.DataController.Values[iRow, 10 + 1] := ls_rcrd[14];
                          CustView2.DataController.Values[iRow, 1 + 1] := strtocall(ls_rcrd[1]);
                          CustView2.DataController.Values[iRow, 2 + 1] := ls_rcrd[2];
                          CustView2.DataController.Values[iRow, 3 + 1] := strtocall(ls_rcrd[3]);
                          CustView2.DataController.Values[iRow, 4 + 1] := ls_rcrd[4];
                          //----------------------------------------------------------------------------------------------
                          //                  고객등급 생성(지사별 설정값 반영)
                          //----------------------------------------------------------------------------------------------
                          iComCnt := StrToIntDef(ls_rcrd[5], 0);
                          iCanCnt := StrToIntDef(ls_rcrd[6], 0);
                          iTotal := iComcnt + iCanCnt;
                          if iTotal = 0 then
                            iCanRate := 0
                          else
                            iCanRate := Round((iCanCnt / iTotal * 100));
                          CustView2.DataController.Values[iRow, 5 + 1] := IntToStr(iComCnt) + '/' + IntToStr(iCanCnt);
                          CustView2.DataController.Values[iRow, 6 + 1] := intToStr(iCanRate) + '%';
                          CustView2.DataController.Values[iRow, 7 + 1] := ls_rcrd[7];
                          CustView2.DataController.Values[iRow, 8 + 1] := ls_rcrd[8];
                          CustView2.DataController.Values[iRow, 11 + 1] := ls_rcrd[15];
                          if Trim(sEndDate) <> '' then
                            CustView2.DataController.Values[iRow, 12 + 1] := copy(sEndDate, 1, 4) + '-'
                              + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                          else
                            CustView2.DataController.Values[iRow, 12 + 1] := '';
                          CustView2.DataController.Values[iRow, 13 + 1] := ls_rcrd[9];
                          CustView2.DataController.Values[iRow, 14 + 1] := ls_rcrd[0];
                          CustView2.DataController.Values[iRow, 15 + 1] := '';
                          if rg_SType.Tag in [0, 1] then
                            CustView2.DataController.Values[iRow, 19 + 1] := '0'
                          else
                            CustView2.DataController.Values[iRow, 19 + 1] := '1';
                          CustView2.DataController.Values[iRow, 20 + 1] := func_buninSearch(ls_rcrd[9], ls_rcrd[1], ls_rcrd[16]);
                          iIdx := scb_BranchCode.IndexOf(ls_rcrd[9]);
                          if iIdx >= 0 then
                            CustView2.DataController.Values[iRow, 1] := scb_BranchName[iIdx]
                          else
                            CustView2.DataController.Values[iRow, 1] := '';
                          CustView2.DataController.Values[iRow, 21 + 1] := ls_rcrd[17];
                          CustView2.DataController.Values[iRow, 22 + 1] := ls_rcrd[18];
                        end;
                      end;
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView2.EndUpdate;
              CustView2.BeginUpdate;
              for i := 0 to CustView2.DataController.RecordCount - 1 do
                CustView2.DataController.Values[i, 0] := i + 1;
              CustView2.EndUpdate;
              cxButton10.Enabled := True;
              lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
              Screen.Cursor := crDefault;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
          4:
            begin
              for i := 0 to sg_notsms_list.DataController.RecordCount - 1 do
                sNoSms := sNoSms + ',' + sg_notsms_list.DataController.Values[i, 2];
              CustView2.BeginUpdate;

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
                if not xdom.loadXML(ls_rxxml) then
                begin
                  Continue;
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
                      sEndDate := ''; // ls_rcrd[10];

                      if (trim(ls_rcrd[1]) <> '') and (length(ls_rcrd[1]) >= 8) then
                      begin
                        iRow :=
                          CustView2.DataController.FindRecordIndexByText(0, 18
                          + 1, ls_rcrd[1] + ls_rcrd[3], True, True, True);
                        if (irow < 0) then
                        begin
                          if cb_Sms_Gubun.ItemIndex in [1, 2] then
                          begin
                            iRow := pos(ls_rcrd[1] + ls_rcrd[3], sNoSms);
                            if (cb_Sms_Gubun.ItemIndex = 1) and (iRow > 0) then
                              continue;
                            if (cb_Sms_Gubun.ItemIndex = 2) and (iRow = 0) then
                              continue;
                          end;

                          if rrb_st_cancel.Checked then
                          begin
                            if lb_st_customer.IndexOf(ls_rcrd[1] + ls_rcrd[3]) > 0 then
                            begin
                              iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1,
                                ls_rcrd[1] + ls_rcrd[3], True, True, True);
                              if iRow >= 0 then
                                CustView2.DataController.DeleteRecord(iRow);
                              continue;
                            end else
                            begin
                              if ls_rcrd[12] <> '8' then
                              begin
                                lb_st_customer.Add(ls_rcrd[1] + ls_rcrd[3]);
                                continue;
                              end;
                            end;
                          end else
                          if rrb_st_req.Checked then
                          begin
                            if lb_st_customer.IndexOf(ls_rcrd[1] + ls_rcrd[3]) > 0 then
                            begin
                              iRow := CustView2.DataController.FindRecordIndexByText(0, 18 + 1,
                                ls_rcrd[1] + ls_rcrd[3], True, True, True);
                              if iRow >= 0 then
                                CustView2.DataController.DeleteRecord(iRow);
                              continue;
                            end else
                            begin
                              if ls_rcrd[12] <> '4' then
                              begin
                                lb_st_customer.Add(ls_rcrd[1] + ls_rcrd[3]);
                                continue;
                              end;
                            end;
                          end;

                          if chkNmlPhoneOut02.Checked then
                          begin
                            if not CheckHPType(ls_rcrd[3], ErrDesc) then
                              Continue;
                          end;

                          iRow := CustView2.DataController.AppendRecord;
                          CustView2.DataController.Values[iRow, 18 + 1] := ls_rcrd[1] + ls_rcrd[3];
                          CustView2.DataController.Values[iRow, 17 + 1] := ls_Rcrd[17]; // [hjf] SMS수신여부 추가
                          CustView2.DataController.Values[iRow, 16 + 1] := ls_Rcrd[11];
                          CustView2.DataController.Values[iRow, 9 + 1] := ls_Rcrd[13];
                          CustView2.DataController.Values[iRow, 10 + 1] := ls_Rcrd[14];
                          CustView2.DataController.Values[iRow, 1 + 1] := strtocall(ls_rcrd[1]);
                          CustView2.DataController.Values[iRow, 2 + 1] := ls_rcrd[2];
                          CustView2.DataController.Values[iRow, 3 + 1] := strtocall(ls_rcrd[3]);
                          CustView2.DataController.Values[iRow, 4 + 1] := ls_rcrd[4];

                          iComCnt := StrToIntDef(ls_rcrd[5], 0);
                          iCanCnt := StrToIntDef(ls_rcrd[6], 0);
                          iTotal := iComcnt + iCanCnt;
                          if iTotal = 0 then
                            iCanRate := 0
                          else
                            iCanRate := Round((iCanCnt / iTotal * 100));
                          CustView2.DataController.Values[iRow, 5 + 1] := IntToStr(iComCnt) + '/' +
                            IntToStr(iCanCnt);
                          CustView2.DataController.Values[iRow, 6 + 1] := intToStr(iCanRate) + '%';
                          CustView2.DataController.Values[iRow, 7 + 1] := ls_rcrd[7];
                          CustView2.DataController.Values[iRow, 8 + 1] := ls_rcrd[8];
                          CustView2.DataController.Values[iRow, 11 + 1] := ls_rcrd[10];
                          if Trim(sEndDate) <> '' then
                            CustView2.DataController.Values[iRow, 12 + 1] := copy(sEndDate, 1, 4)
                              + '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                          else
                            CustView2.DataController.Values[iRow, 12 + 1] := '';
                          CustView2.DataController.Values[iRow, 13 + 1] := ls_rcrd[9];
                          CustView2.DataController.Values[iRow, 14 + 1] := ls_rcrd[0];
                          if rg_SType.Tag in [0, 1] then
                            CustView2.DataController.Values[iRow, 19 + 1] := '0'
                          else
                            CustView2.DataController.Values[iRow, 19 + 1] := '1';

                          if ls_Rcrd[12] = 'A' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[10]
                          else
                            if ls_Rcrd[12] = 'D' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[14]
                          else
                            if ls_Rcrd[12] = 'B' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[1]
                          else
                            if ls_Rcrd[12] = 'R' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[11]
                          else
                            if ls_Rcrd[12] = 'L' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[12]
                          else
                            if ls_Rcrd[12] = 'U' then
                            CustView2.DataController.Values[iRow, 15 + 1] := lb_Status.Items.Strings[13]
                          else
                            CustView2.DataController.Values[iRow, 15 + 1] :=
                              lb_Status.Items.Strings[StrToIntDef(ls_Rcrd[12], 0)];
                          CustView2.DataController.Values[iRow, 20 + 1] := func_buninSearch(ls_rcrd[9],
                            ls_rcrd[1], ls_rcrd[16]);

                          iIdx := scb_BranchCode.IndexOf(ls_rcrd[9]);
                          if iIdx >= 0 then
                            CustView2.DataController.Values[iRow, 1] := scb_BranchName[iIdx]
                          else
                            CustView2.DataController.Values[iRow, 1] := '';
                        end;
                      end;
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView2.EndUpdate;
              CustView2.BeginUpdate;
              for i := 0 to CustView2.DataController.RecordCount - 1 do
                CustView2.DataController.Values[i, 0] := i + 1;
              CustView2.EndUpdate;
              lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
              cxButton10.Enabled := True;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
          5:
            begin
              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
                if not xdom.loadXML(ls_rxxml) then
                begin
                  Continue;
                end;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    Application.ProcessMessages;
                    lbNoSms.Add(GetTextSeperationFirst('│', lst_Result.item[i].attributes.getNamedItem('Value').Text));
                  end;
                end;
              end;
              if rg_SType.Tag = 2 then
                cb_Sms_Gubun.ItemIndex := 0;

              sList := TStringList.Create;
              sList.Sorted := True;
              sList.Duplicates := dupignore;
              if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
                sLIst.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
              Application.ProcessMessages;
              sList.AddStrings(lbNoSms);
              if sList.IndexOf('0100') = -1 then
              begin
                sList.Add('0100');
                sList.Add('0101');
                sList.Add('0102');
                sList.Add('0103');
                sList.Add('0104');
                sList.Add('0105');
                sList.Add('0106');
                sList.Add('0107');
                sList.Add('0108');
                sList.Add('0109');
                sList.Add('0110');
                sList.Add('0160');
                sList.Add('0170');
                sList.Add('0180');
                sList.Add('0190');
                sList.Add('0200');
              end;
              if sList.IndexOf('0100') > 0 then
              begin
                while sList.Strings[0] <> '0100' do
                begin
                  sList.Delete(0);
                end;
              end;
              sList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
              sList.Free;
              lbNoSms.Clear;
              frm_Main.sbar_Message.Panels[4].Text := '';
              Screen.Cursor := crDefault;
            end;
        end;
      end else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    Finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTA2.FormCreate(Sender: TObject);
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
  lb_st_customer := TStringList.Create;
  lbNoSms := TStringList.Create;
  SCboLevelSeq := TStringList.Create;

	proc_init;
end;

procedure TFrm_CUTA2.FormDestroy(Sender: TObject);
begin
  Frm_CUTA2 := Nil;
end;

procedure TFrm_CUTA2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUTA2.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber02.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber02.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber02.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
	lbCustCompany02.Caption := sName;

  cxHdNo1.Text := sHdNo;
  cxBrNo1.Text := sBrNo;

  if cbKeynumber02.Properties.Items.Count >= 1 then
    cbKeynumber02.Properties.Items.Insert(0, '전체');

  cbKeynumber02.ItemIndex := 0;
  cbKeynumber02.Tag := 0;
end;

procedure TFrm_CUTA2.proc_GeneralSearch;
var
  ls_TxQry, ls_TxLoad, rv_str, sQueryTemp: string;
  ls_rxxml: WideString;
  iBlackList, iGrad1, iGrad2, iWeek, iRow, i: Integer;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  sList, sListErr, slReceive: TStringList;
  ErrCode: integer;
begin

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('일반검색') then Exit;

  if not chkCust02Type04.Checked then
  begin
    if CustView2.DataController.RecordCount > 0 then
      exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>일반검색]2000건/콜센터(통합)/이용내역/대표번호:16886618/기간:20100101~20100131/완료:1~10/취소:1~10/SMS전체
  FExcelDownNormal := Format('%s/구분:%s/대표번호:%s/기간:%s~%s%s%s/%s',
    [
        GetSelBrInfo
      , IfThen(rbAll01.Checked, '전체', IfThen(rbNew01.Checked, '신규등록', '이용내역'))
      , cbKeynumber02.Text
      , cxDate05.Text, cxDate06.Text
      , IfThen(cb_S_Cnt1.Text + cb_S_Cnt2.Text = '', '', Format('/완료:%s~%s', [cb_S_Cnt1.Text, cb_S_Cnt2.Text]))
      , IfThen(cb_S_CCnt1.Text + cb_S_CCnt2.Text = '', '', Format('/취소:%s~%s', [cb_S_CCnt1.Text, cb_S_CCnt2.Text]))
      , cb_Sms_Gubun.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////
//------------------------------------------------------------------------------
//     전일이용고객
//------------------------------------------------------------------------------
  if chk_Before.Checked then
    proc_before_his
//------------------------------------------------------------------------------
//     전일완료고객
//------------------------------------------------------------------------------
  else if RbCheckBox9.Checked then
    proc_before_comp
//------------------------------------------------------------------------------
//     전일 신규고객
//------------------------------------------------------------------------------
  else if chk_Before_New.Checked then
    proc_before_new
  else
  begin
    dt_sysdate2 := frm_main.func_sysdate;

    if Trim(dt_sysdate2) = '' then
    begin
      GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
      exit;
    end;

    if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
      2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
    begin
      GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
      exit;
    end;

    lb_st_customer.Clear;

    sBrNo := cxBrNo1.Text;

    chk_All_Select.Checked := False;
    chk_All_Select.OnClick(chk_All_Select);
    lg_swhere := '';

    if rg_SType.Tag in [0, 1] then
    begin
      if sBrNo <> '' then
        lg_sWhere := Format(' AND A.HD_NO = ''%s'' AND A.BR_NO = ''%s'' ', [cxHdNo1.Text, sBrNo])
      else
        lg_sWhere := Format(' AND A.HD_NO = ''%s'' ', [cxHdNo1.Text]);
      sCGubun := 'A.CU_TYPE';
      sCName := 'A.CMP_NM';
      sCTel := 'B.CU_TEL';
      sCmemo := 'A.CU_INFO';
      sClientKey := Self.Caption + '3';

      fGet_BlowFish_Query(GSQ_CUSTOMER_LIST, sQueryTemp);
      sSql := sQueryTemp;

      if StrToIntDef(Trim(cb_S_Cnt1.Text), -1) > -1 then
        lg_sWhere := lg_sWhere + format(' AND (A.CU_ENDCNT >= %s) ', [Trim(cb_S_Cnt1.Text)]);

      if StrToIntDef(Trim(cb_S_Cnt2.Text), -1) > -1 then
        lg_sWhere := lg_sWhere + format(' AND (%s >= A.CU_ENDCNT) ', [Trim(cb_S_Cnt2.Text)]);

      if StrToIntDef(Trim(cb_S_CCnt1.Text), -1) > -1 then
        lg_sWhere := lg_sWhere + format(' AND (A.CU_CANCELCNT >= %s) ', [Trim(cb_S_CCnt1.Text)]);

      if StrToIntDef(Trim(cb_S_CCnt2.Text), -1) > -1 then
        lg_sWhere := lg_sWhere + format(' AND (%s >= A.CU_CANCELCNT) ', [Trim(cb_S_CCnt2.Text)]);

      if cb_S_Grad.ItemIndex > 0 then
        lg_sWhere := lg_sWhere + ' AND A.CU_LEVEL_CD = ''' + SCboLevelSeq[cb_S_Grad.itemindex] + ''' ';

      if cb_Sms_Gubun.ItemIndex = 1 then
        lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''y'') '
      else if cb_Sms_Gubun.ItemIndex = 2 then
        lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''n'') ';

    	if cbOutBound.ItemIndex > 0 then
  	  	lg_sWhere := lg_sWhere + ' AND A.CU_OUTBOUND = ''' + IntToStr(cbOutBound.ItemIndex) + ''' ';
    end else
    if rg_SType.Tag = 2 then
    begin
      if sBrNo <> '' then
        lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ', [cxHdNo1.Text, sBrNo])
      else
        lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' ', [cxHdNo1.Text]);
      sCGubun := 'A.CONF_BAR';
      sCName := 'A.CONF_USER';

      // 2011.03.16 쿼리오류
//      sCTel := 'B.CONF_CUST_TEL';
      sCTel := 'A.CONF_CUST_TEL';

      sCmemo := 'A.CONF_MEMO';
      sClientKey := Self.Caption + '4';
      fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
      sSql := sQueryTemp;
      if cb_Sms_Gubun.ItemIndex > 0 then
      begin
        if (sg_notsms_list.DataController.RecordCount > 0) and
          (sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
          proc_NotSMS(sBrNo);
      end;

      if rrb_st_comp.Checked then
        lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS = ''2'' '
      else
        lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS IN (''2'', ''4'', ''8'') ';

      if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
        lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
      else if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
        lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

      if cb_S_Grad.ItemIndex > 0 then
        lg_sWhere := lg_sWhere + ' AND CU.CU_LEVEL_CD = ''' + SCboLevelSeq[cb_S_Grad.itemindex] + ''' ';

    	if cbOutBound.ItemIndex > 0 then
	    	lg_sWhere := lg_sWhere + ' AND CU.CU_OUTBOUND = ''' + IntToStr(cbOutBound.ItemIndex) + ''' ';
    end;

    if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
      lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

    if cxDate05.Enabled then
    begin
      if (cxDate05.Text <> '') and (cxDate06.Text <> '') then
        lg_sWhere := lg_sWhere + format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
          , [formatdatetime('yyyymmdd', cxDate05.Date), formatdatetime('yyyymmdd', cxDate06.Date)])
      else
        if (cxDate05.Text <> '') and (cxDate06.Text = '') then
        lg_sWhere := lg_sWhere + format(' AND A.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'')  '
          , [formatdatetime('yyyymmdd', cxDate05.Date)])
      else
        if (cxDate05.Text = '') and (cxDate06.Text <> '') then
        lg_sWhere := lg_sWhere + format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= A.IN_DATE  '
          , [formatdatetime('yyyymmdd', cxDate06.Date)]);
    end;

    case cb_s_CGubun.ItemIndex of
      1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
      2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
      3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
    end;

    if Trim(edCustMemo01.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%',
        trim(Param_Filtering(edCustMemo01.Text)), '%']);

    if trim(edCustName02.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(Param_Filtering(edCustName02.Text)), '%']);

    if trim(edCustTel02.Text) <> '' then
      lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%',
        trim(StringReplace(Param_Filtering(edCustTel02.Text), '-', '', [rfReplaceAll])), '%']);

    ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

    ls_TxQry := Format(sSql, [lg_sWhere]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '5000', [rfReplaceAll]);

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
end;

function TFrm_CUTA2.func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if (GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
      Rpad(StringReplace(sKeyNum,
      '-', '', [rfReplaceAll]), 15, ' '))
      and (GT_BUBIN_INFO.cbcode[i] = sCode + ',' + sBrNo) then
    begin
      Result := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]),  1, 60)) + ' / ' +
                Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 61, 60));
      Break;
    end;
  end;
end;

procedure TFrm_CUTA2.rbAll01Click(Sender: TObject);
begin
  rg_SType.Tag := TcxRadioButton(Sender).Tag;
  if rg_SType.Tag = 0 then
  begin
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
  end else
  begin
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
  end;
  proc_New_his(rg_SType.Tag);
  cb_Sms_Gubun.ItemIndex := 1;
end;

procedure TFrm_CUTA2.proc_NotSMS(Br_no: string);
var
  ls_TxQry, ls_TxLoad, ls_TxSend, sQueryTemp : string;
  rv_str: string;
  ls_rxxml: WideString;
  iRow: Integer;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  sg_notsms_list.DataController.SetRecordCount(0);
  sg_notsms_list.DataController.AppendRecord;
  swhere := '';
  if Br_no <> '' then
  begin
    sg_notsms_list.DataController.Values[0, 0] := Br_no;
    sWhere := 'AND B.HD_NO = ''' + cxHdNo1.Text + ''' AND B.BR_NO = ''' + Br_no
      + ''' ';
  end else
  begin
    sg_notsms_list.DataController.Values[0, 0] := cxHdNo1.Text;
    sWhere := 'AND B.HD_NO = ''' + cxHdNo1.Text + ''' ';
  end;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'NOSM0002', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      func_recieve(slReceive);
    end;
  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTA2.proc_New_his(iType: Integer);
begin
  chk_Before.Checked := False;
  chk_Before_New.Checked := False;
  RbCheckBox9.Checked := False;
  cb_s_CGubun.ItemIndex := 0;
  case iType of
    2:
      begin
        cb_st_city.Enabled := True;
        cb_st_ward.Enabled := True;
        cb_S_Cnt1.Enabled := False;
        cb_S_Cnt2.Enabled := False;
        cb_S_CCnt1.Enabled := False;
        cb_S_CCnt2.Enabled := False;
        cb_S_Grad.Enabled := False;
        GroupBox4.Enabled := True;
        rrb_st_all.Checked := True;
      end;
    0, 1:
      begin
        cb_st_city.Enabled := False;
        cb_st_ward.Enabled := False;
        cbKeynumber02.ItemIndex := 0;
        cb_s_CGubun.ItemIndex := 0;
        cb_Sms_Gubun.ItemIndex := 0;
        cb_S_Grad.ItemIndex := 0;
        cb_Sms_Gubun.Enabled := True;
        cb_S_Cnt1.Enabled := True;
        cb_S_Cnt2.Enabled := True;
        cb_S_CCnt1.Enabled := True;
        cb_S_CCnt2.Enabled := True;
        cb_S_Grad.Enabled := True;
        GroupBox4.Enabled := False;
        rrb_st_all.Checked := True;
        rrb_st_comp.Checked := False;
        rrb_st_cancel.Checked := False;
        rrb_st_req.Checked := False;
      end;
  end;
end;

procedure TFrm_CUTA2.chk_BeforeClick(Sender: TObject);
begin
  if chk_Before.Checked then
  begin
    chk_Before.Checked := True;
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before_New.Checked := False;
    RbCheckBox9.Checked := False;
    GroupBox4.Enabled := False;
    cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
    cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
    chk_Before.Checked := False;
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before_New.Checked := False;
    RbCheckBox9.Checked := False;
    GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

    cb_s_CGubun.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
      cb_s_CGubun.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUTA2.cb_S_GradClick(Sender: TObject);
begin
  if cb_S_Grad.ItemIndex > 0 then
  begin
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
  end else
  begin
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
  end;
end;

procedure TFrm_CUTA2.cb_st_cityPropertiesChange(Sender: TObject);
var
  i, k: Integer;
  sl_City: TStringList;
begin
  try
    if cb_st_city.Tag = 1 then
      exit;
    cb_st_ward.Properties.Items.Clear;
    cb_st_ward.Properties.Items.Add('전체');
    sl_City := TStringList.Create;
    sl_city.Clear;
    sl_city.Assign(GT_MAPOrigi.slCity); // 20080616.
    if cb_st_city.ItemIndex > 1 then
    begin
      for k := 0 to 2 do
      begin
        i := sl_City.IndexOf(cb_st_City.Text);
        if i > 1 then
        begin
          if (cb_st_City.Text <> sl_city.Strings[i - 1]) and
            (cb_st_City.Text = sl_city.Strings[i])
            and (cb_st_City.Text <> sl_city.Strings[i + 1]) then
          begin
            sl_City.Delete(i);
            sl_City.Insert(i, ' ');
          end;
        end;
      end;
    end;
    if cb_st_city.ItemIndex = 0 then
      exit;
    // 20080616.
    for i := sl_city.IndexOf(cb_st_City.Text) to GT_MAPOrigi.slCity.Count - 1 do
    begin
      if i > 1 then
      begin
        if (cb_st_City.Text <> GT_MAPOrigi.slCity[i]) and (cb_st_City.Text <> GT_MAPOrigi.slCity[i + 1]) then
          break;
      end;
      if (cb_st_city.Text = sl_city.Strings[i]) and (cb_st_Ward.Properties.Items.IndexOf(GT_MAPOrigi.slWard[i]) < 0) and (GT_MAPOrigi.slWard[i] <> '' ) then
        cb_st_Ward.Properties.Items.Add(GT_MAPOrigi.slWard[i]);
    end;
    cb_st_Ward.ItemIndex := 0;
  finally
    freeandnil(sl_city);
  end;
end;

procedure TFrm_CUTA2.cb_S_Cnt1PropertiesChange(Sender: TObject);
begin
  if (Trim(cb_S_Cnt1.Text) <> '') or (Trim(cb_S_Cnt2.Text) <> '')
    or (Trim(cb_S_CCnt1.Text) <> '') or (Trim(cb_S_CCnt2.Text) <> '') then
  begin
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before.Checked := False;
    RbCheckBox9.Checked := False;
  end else
  begin
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
  end;
end;

procedure TFrm_CUTA2.cxButton10Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if not chkCust02Type04.Checked then
    CustView2.DataController.SetRecordCount(0);
  proc_GeneralSearch;
end;

procedure TFrm_CUTA2.cxButton11Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, ls_TxSend, sQueryTemp : string;
  rv_str, sBrNo: string;
  ls_rxxml: WideString;
  sList: TStringList;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    Exit;
  end;

  DoubleBuffered := True;
  sBrNo := cxBrNo1.Text;

  if sBrNo <> '' then
    sWhere := ' AND B.HD_NO = ''' + cxHdNo1.Text + ''' AND B.BR_NO = ''' +
      sBrNo + ''' '
  else
    sWhere := ' AND B.HD_NO = ''' + cxHdNo1.Text + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS2, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '5', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  lbNoSms.Clear;
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

procedure TFrm_CUTA2.proc_before_his;
var
  ls_TxQry, ls_TxLoad, ls_TxSend, rv_str, sQueryTemp: string;
  ls_rxxml: WideString;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if CustView2.DataController.RecordCount > 0 then
    exit;

  dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.',
      CDMSI);
    exit;
  end;

  lb_st_customer.Clear;

  sBrNo := cxBrNo1.Text;

  lg_swhere := '';

  if sBrNo <> '' then
    lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ',
      [cxHdNo1.Text, sBrNo])
  else
    lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' ',
      [cxHdNo1.Text]);
  sCGubun := 'A.CONF_BAR';
  sCName := 'A.CONF_USER';
  sCTel := 'B.CONF_CUST_TEL';
  sCmemo := 'A.CONF_MEMO';
  sClientKey := Self.Caption + '4';

  fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex > 0 then
  begin
    if (sg_notsms_list.DataController.RecordCount > 0) and
      (sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
      proc_NotSMS(sBrNo);
  end;

  lg_sWhere := lg_sWhere + ' AND A.CONF_STATUS IN (''2'', ''4'', ''8'') ';

  if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
  else if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
    , [formatdatetime('yyyymmdd', cxDate05.Date), formatdatetime('yyyymmdd', cxDate06.Date)]);

  case cb_s_CGubun.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%', trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%', trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);
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
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) +  '명';
end;

procedure TFrm_CUTA2.proc_before_comp;
var
  ls_TxQry, ls_TxLoad, ls_TxSend, rv_str, sQueryTemp : string;
  ls_rxxml: WideString;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

	if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  lb_st_customer.Clear;

  sBrNo := cxBrNo1.Text;

  lg_swhere := '';

  if sBrNo <> '' then
    lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' AND A.CONF_STATUS = ''2'' ', [cxHdNo1.Text, sBrNo])
  else
    lg_sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_STATUS = ''2'' ', [cxHdNo1.Text]);

  sCGubun := 'A.CONF_BAR';
  sCName := 'A.CONF_USER';
  sCTel := 'B.CONF_CUST_TEL';
  sCmemo := 'A.CONF_MEMO';
  sClientKey := self.Caption + '4';

  fGet_BlowFish_Query(GSQ_HISTORY_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex > 0 then
  begin
    if (sg_notsms_list.DataController.RecordCount > 0) and
      (sg_notsms_list.DataController.Values[0, 0] <> sBrno) then
      proc_NotSMS(sBrNo);
  end;

  if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex > 0) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' AND A.CONF_AREA2 = ''%s'' ', [cb_st_city.Text, cb_st_ward.Text])
  else
    if (cb_st_city.Text <> '지역전체') and (cb_st_ward.ItemIndex < 1) then
    lg_sWhere := lg_sWhere + Format(' AND A.CONF_AREA = ''%s'' ', [cb_st_city.Text]);

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ', [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
    , [formatdatetime('yyyymmdd', cxDate05.Date), formatdatetime('yyyymmdd', cxDate06.Date)]);

  case cb_s_CGubun.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%', trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'') ', [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere + Format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%', trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);
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
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) + '명';
end;

procedure TFrm_CUTA2.proc_before_new;
var
  ls_TxQry, ls_TxLoad, ls_TxSend, rv_str, sQueryTemp: string;
  lg_sWhere, sBrNo, sClientKey: string;
  sCGubun, sCName, sCTel, sCmemo, sSql: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;
  chk_All_Select.Checked := False;
  chk_All_Select.OnClick(chk_All_Select);

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.',
      CDMSI);
    exit;
  end;

  lb_st_customer.Clear;

  sBrNo := cxBrNo1.Text;

  lg_swhere := '';

  if sBrNo <> '' then
    lg_sWhere :=
      Format(' AND A.HD_NO = ''%s'' AND A.BR_NO = ''%s'' ', [cxHdNo1.Text, sBrNo])
  else
    lg_sWhere :=
      Format(' AND A.HD_NO = ''%s'' ', [cxHdNo1.Text]);

  sCGubun := 'A.CU_TYPE';
  sCName := 'A.CMP_NM';
  sCTel := 'B.CU_TEL';
  sCmemo := 'A.CU_INFO';
  sClientKey := Self.Caption + '4';

  fGet_BlowFish_Query(GSQ_CUSTOMER_LIST, sQueryTemp);
  sSql := sQueryTemp;

  if cb_Sms_Gubun.ItemIndex = 1 then
    lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''y'') '
  else
    if cb_Sms_Gubun.ItemIndex = 2 then
    lg_sWhere := lg_sWhere + ' AND (B.CU_SMSYN = ''n'') ';

  if (cbKeynumber02.Text <> '전체') and (cbKeynumber02.Text <> '') then
    lg_sWhere := lg_sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ',
      [StringReplace(cbKeynumber02.Text, '-', '', [rfReplaceAll])]);

  lg_sWhere := lg_sWhere +
    format(' AND A.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
    , [formatdatetime('yyyymmdd', cxDate05.Date),
    formatdatetime('yyyymmdd',
      cxDate06.Date)]);

  case cb_s_CGubun.ItemIndex of
    1: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''0'' ';
    2: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''1'' ';
    3: lg_sWhere := lg_sWhere + ' AND ' + sCGubun + ' = ''3'' ';
  end;

  if Trim(edCustMemo01.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCmemo, '%',
      trim(edCustMemo01.Text), '%']);

  if trim(edCustName02.Text) <> '' then
    lg_sWhere := lg_sWhere + format(' AND (%s LIKE ''%s'' || ''%s'') ',
      [sCName, trim(edCustName02.Text), '%']);

  if trim(edCustTel02.Text) <> '' then
    lg_sWhere := lg_sWhere +
      format(' AND (%s LIKE ''%s'' || ''%s'' || ''%s'') ', [sCTel, '%',
      trim(edCustTel02.Text), '%']);

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');

  ls_TxQry := Format(sSql, [lg_sWhere]);

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', sClientKey, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '3000', [rfReplaceAll]);
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
  lbCount02.Caption := '총 ' + IntToStr(CustView2.DataController.RecordCount) +  '명';
end;

function TFrm_CUTA2.func_recieve(slList: TStringList): Boolean;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  ls_MSG_Err, ls_ClientKey: string;
  ls_XML: Widestring;
  ls_RV_Cnt: Integer;
  i, j, icomCnt, iCanCnt, iTotal, iCanRate, iblacklist
    , igrade1, igrade2, iresting, iRow: Integer;
  sEndDate, sDate: string;
  sNoSms: WideString;
  ls_rxxml: string;
begin
  try
    Screen.Cursor := crHourGlass;
    ls_XML := slList[0];
    xdom := ComsDomDocument.Create;
    try
      result := True;
      if not xdom.loadXML(ls_XML) then
      begin
        Result := False;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_XML);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_RV_Cnt := GetXmlRecordCount(ls_XML);
        if (0 < ls_RV_Cnt) then
        begin
          ls_ClientKey := GetXmlClientKey(ls_XML);
          if ls_ClientKey = 'NOSM0002' then
          begin
            sg_notsms_list.BeginUpdate;
            for j := 0 to slList.Count - 1 do
            begin
              Application.ProcessMessages;
              ls_rxxml := slList.Strings[j];
              if not xdom.loadXML(ls_rxxml) then
              begin
                Exit;
              end;
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                    iRow := sg_notsms_list.DataController.AppendRecord;
                    sg_notsms_list.DataController.Values[iRow, 0] := ls_Rcrd[1];
                    sg_notsms_list.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    sg_notsms_list.DataController.Values[iRow, 2] := ls_Rcrd[1] + ls_Rcrd[0];
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end;
            sg_notsms_list.EndUpdate;
            result := False;
          end;
        end else
        begin
          Result := False;
        end;
      end else
      begin
        Result := False;
        GMessagebox(MSG012 + CRLF + ls_Msg_Err, CDMSE);
      end;
      Application.ProcessMessages;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    Result := False;
  end;
end;

procedure TFrm_CUTA2.chk_All_SelectClick(Sender: TObject);
begin
  cxGridSelectAll(CustView2, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA2.CustView2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView2.OptionsSelection.CellMultiSelect := True;
    CustView2.OptionsSelection.CellSelect := True;
    CustView2.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA2.CustView2DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView2, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA2.CustView2KeyDown(Sender: TObject; var Key: Word;
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
    CustView2.OptionsSelection.CellMultiSelect := False;
    CustView2.OptionsSelection.CellSelect := False;
    CustView2.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA2.CustView2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

{-------------------------------------------------------------------------------
  Arguments: sGrid: 대상그리드; ASubscribe: 수신허용(True: 수신허용)
-------------------------------------------------------------------------------}
procedure TFrm_CUTA2.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
var
  i, iBrNo, iCustTel, iCustName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt, iMile, iSmsYn: Integer;
  sCustTel, sSmsYn: string;
begin
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

procedure TFrm_CUTA2.cxButton12Click(Sender: TObject);
begin
  proc_SND_SMS(CustView2);
end;

procedure TFrm_CUTA2.RbCheckBox9Click(Sender: TObject);
begin
  if RbCheckBox9.Checked then
  begin
    RbCheckBox9.Checked := True;
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before.Checked := False;
    chk_Before_New.Checked := False;
    GroupBox4.Enabled := False;
    cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
    cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
    RbCheckBox9.Checked := False;
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before.Checked := False;
    chk_Before_New.Checked := False;
    GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

    cb_s_CGubun.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
      cb_s_CGubun.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUTA2.chk_Before_NewClick(Sender: TObject);
begin
  if chk_Before_New.Checked then
  begin
    chk_Before_New.Checked := True;
    cxDate05.Enabled := False;
    cxDate06.Enabled := False;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before.Checked := False;
    RbCheckBox9.Checked := False;
    GroupBox4.Enabled := False;
    cb_st_city.Enabled := False;
    cb_st_ward.Enabled := False;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := False;
    cb_S_Cnt2.Enabled := False;
    cb_S_CCnt1.Enabled := False;
    cb_S_CCnt2.Enabled := False;
    cb_S_Grad.Enabled := False;
    rg_SType.Enabled := False;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;
  end else
  begin
    chk_Before_New.Checked := False;
    cxDate05.Enabled := True;
    cxDate06.Enabled := True;
    cxDate05.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
      1, 8))) - 1;
    cxDate06.Date := cxDate05.Date + 1;
    chk_Before.Checked := False;
    RbCheckBox9.Checked := False;
    GroupBox4.Enabled := True;
    cb_st_city.Enabled := True;
    cb_st_ward.Enabled := True;
    cb_S_Cnt1.Text := '';
    cb_S_Cnt2.Text := '';
    cb_s_CCnt1.Text := '';
    cb_s_CCnt2.Text := '';
    cb_S_Cnt1.Enabled := True;
    cb_S_Cnt2.Enabled := True;
    cb_S_CCnt1.Enabled := True;
    cb_S_CCnt2.Enabled := True;
    cb_S_Grad.Enabled := True;
    rg_SType.Enabled := True;
    rrb_st_all.Checked := True;
    rrb_st_comp.Checked := False;
    rrb_st_cancel.Checked := False;
    rrb_st_req.Checked := False;

    cb_s_CGubun.ItemIndex := 0;
    if rbUseList01.Checked then
    begin
      cb_st_city.Enabled := True;
      cb_st_ward.Enabled := True;
      cb_S_Cnt1.Enabled := False;
      cb_S_Cnt2.Enabled := False;
      cb_S_CCnt1.Enabled := False;
      cb_S_CCnt2.Enabled := False;
      cb_S_Grad.Enabled := False;
      GroupBox4.Enabled := True;
      rrb_st_all.Checked := True;
    end
    else
    begin
      cb_st_city.Enabled := False;
      cb_st_ward.Enabled := False;
      cbKeynumber02.ItemIndex := 0;
      cb_s_CGubun.ItemIndex := 0;
      cb_Sms_Gubun.ItemIndex := 0;
      cb_S_Grad.ItemIndex := 0;
      cb_Sms_Gubun.Enabled := True;
      cb_S_Cnt1.Enabled := True;
      cb_S_Cnt2.Enabled := True;
      cb_S_CCnt1.Enabled := True;
      cb_S_CCnt2.Enabled := True;
      cb_S_Grad.Enabled := True;
      GroupBox4.Enabled := False;
      rrb_st_all.Checked := True;
      rrb_st_comp.Checked := False;
      rrb_st_cancel.Checked := False;
      rrb_st_req.Checked := False;
    end;
  end;
end;

procedure TFrm_CUTA2.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA2.CustView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

function TFrm_CUTA2.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
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

function TFrm_CUTA2.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
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

procedure TFrm_CUTA2.btnNmlCustDelClick(Sender: TObject);
begin
  DeleteCustomer(CustView2, lbCount02);
end;

procedure TFrm_CUTA2.ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
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

procedure TFrm_CUTA2.cbKeynumber02PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then
  begin
    ChageCustLevel(TcxComboBox(Sender).Text, cb_S_Grad);
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

  lbCustCompany02.Caption := sName;
  cxHdNo1.Text := sHdNo;
  cxBrNo1.Text := sBrNo;

  ChageCustLevel(TcxComboBox(Sender).Text, cb_S_Grad);
end;

procedure TFrm_CUTA2.RequestData(AData: string);
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

function TFrm_CUTA2.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDate05;
  AEdDt := cxDate06;
end;

procedure TFrm_CUTA2.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_일반검색.xls';
  Frm_Main.sgRpExcel := Format('고객>일반검색]%s건/%s', [GetMoneyStr(CustView2.DataController.RecordCount), FExcelDownNormal]);
  Frm_Main.cxGridExcel := cxGrid2;
  Frm_Main.cxGridDBViewExcel := CustView2;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    CustView2.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    CustView2.Columns[0].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    CustView2.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    CustView2.Columns[0].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA2.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA2.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
begin
  case AGubun of
   0:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      AEdDt.Date := AStDt.Date + 1;
    end;
   1:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
      AEdDt.Date := AStDt.Date + 31;
    end;
   3:
    begin
			AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
      AEdDt.Date := AStDt.Date + 91;
    end;
   6:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
      AEdDt.Date := AStDt.Date + 181;
    end;
   12:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
      AEdDt.Date := AStDt.Date + 365;
    end;
  end;
end;

procedure TFrm_CUTA2.cxButton13Click(Sender: TObject);
begin
  if CustView2.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA2.MenuItem10Click(Sender: TObject);
begin
	cxButton13.Click;
end;

end.

unit xe_CUTA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, xe_structure, ShellAPI,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, OleCtrls, SHDocVw, Registry,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, IniFiles, MSXML2_TLB, cxTL, ComObj,
  cxClasses, Vcl.ExtCtrls, cxMemo, cxGridLevel, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxMaskEdit,
  cxCalendar, cxButtons, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter, cxCalc;

type
  TFrm_CUTA1 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    lbCustCompany01: TcxLabel;
		cbKeynumber01: TcxComboBox;
    cbGubun01: TcxComboBox;
    cbLevel01: TcxComboBox;
    cxLabel24: TcxLabel;
    edCustName01: TcxTextEdit;
    edCustTel01: TcxTextEdit;
    cxButton5: TcxButton;
    cbSmsUse01: TcxComboBox;
    cbBCustList: TcxComboBox;
    chkBubinName: TcxCheckBox;
    chkBubinCust: TcxCheckBox;
    rbFirstUseDate01: TcxRadioButton;
    rbUseDate01: TcxRadioButton;
    rbUseCnt01: TcxRadioButton;
    cxDate01: TcxDateEdit;
    cxDate02: TcxDateEdit;
    cxLabel26: TcxLabel;
    cxDate03: TcxDateEdit;
    cxLabel27: TcxLabel;
    cxDate04: TcxDateEdit;
    edUseCnt01: TcxTextEdit;
    edUseCnt02: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    chkSearchAdd: TcxCheckBox;
    lbCount01: TcxLabel;
    cxGrid1: TcxGrid;
    CustView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cbBCustListCd: TcxComboBox;
    CustView1Column1: TcxGridDBColumn;
    CustView1Column2: TcxGridDBColumn;
    CustView1Column3: TcxGridDBColumn;
    CustView1Column4: TcxGridDBColumn;
    CustView1Column5: TcxGridDBColumn;
    CustView1Column6: TcxGridDBColumn;
    CustView1Column7: TcxGridDBColumn;
    CustView1Column8: TcxGridDBColumn;
    CustView1Column9: TcxGridDBColumn;
    CustView1Column10: TcxGridDBColumn;
    CustView1Column11: TcxGridDBColumn;
    CustView1Column12: TcxGridDBColumn;
    CustView1Column13: TcxGridDBColumn;
    CustView1Column14: TcxGridDBColumn;
    CustView1Column15: TcxGridDBColumn;
    CustView1Column16: TcxGridDBColumn;
    CustView1Column17: TcxGridDBColumn;
    CustView1Column18: TcxGridDBColumn;
    CustView1Column19: TcxGridDBColumn;
    cxCheckBox4: TcxCheckBox;
    CustView1Column20: TcxGridDBColumn;
    cxButton48: TcxButton;
    RbButton1: TcxButton;
    cxButton51: TcxButton;
    pm_Date22: TPopupMenu;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    btnMgrCustDel: TcxButton;
    chkNmlPhoneOut01: TcxCheckBox;
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
    CustView1Column21: TcxGridDBColumn;
    btnAll5: TcxButton;
    pnl_Chang_select: TPanel;
    btnAll6: TcxButton;
    cxRMileP: TcxRadioButton;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxlbl7: TcxLabel;
    cxRMileM: TcxRadioButton;
    cxRMileS: TcxRadioButton;
    mmoMilelistError: TcxMemo;
    cxTextEdit16: TcxTextEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    CustView1Column22: TcxGridDBColumn;
    CustView1Column23: TcxGridDBColumn;
    cxTextEdit17: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxLabel237: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxButton55: TcxButton;
    cxCheckBox9: TcxCheckBox;
    pm_Date: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    CustView1Column24: TcxGridDBColumn;
    CB_SetDate: TcxCheckBox;
    CB_UseDate: TcxCheckBox;
    Pnl_Chk1: TPanel;
    Label13: TLabel;
    de_1stDate: TcxDateEdit;
    de_1edDate: TcxDateEdit;
    cxButton70: TcxButton;
    Pnl_Chk2: TPanel;
    Label3: TLabel;
    de_2stDate: TcxDateEdit;
    de_2edDate: TcxDateEdit;
    cxButton71: TcxButton;
    Rb_SetupY: TcxRadioButton;
    Rb_SetupN: TcxRadioButton;
    Rb_SetupA: TcxRadioButton;
    Cb_DelDate: TcxCheckBox;
    Pnl_Chk3: TPanel;
    Label6: TLabel;
    de_3stDate: TcxDateEdit;
    de_3edDate: TcxDateEdit;
    cxButton74: TcxButton;
    Pop_Ymd: TPopupMenu;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    Pop_Ymd1: TPopupMenu;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    Pop_Ymd2: TPopupMenu;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    CustView1Column25: TcxGridDBColumn;
    CustView1Column26: TcxGridDBColumn;
    CustView1Column27: TcxGridDBColumn;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    Shape2: TShape;
    Shape3: TShape;
    cxLabel1: TcxLabel;
    Shape4: TShape;
    cxLabel2: TcxLabel;
    Shape5: TShape;
    cxLabel3: TcxLabel;
    Shape6: TShape;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    Shape7: TShape;
    cxLabel4: TcxLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    Shape16: TShape;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    Shape17: TShape;
    Shape18: TShape;
    cxLabel7: TcxLabel;
    btnAll7: TcxButton;
    cxGroupBox9: TcxGroupBox;
    chkNMCNG1: TcxRadioButton;
    chkNMCNG2: TcxRadioButton;
    cxGroupBox10: TcxGroupBox;
    CustView1Column28: TcxGridDBColumn;
    Shape14: TShape;
    cxLabel8: TcxLabel;
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
    procedure rbFirstUseDate01Click(Sender: TObject);
    procedure proc_bubin_init;
    procedure cbGubun01Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxCheckBox4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
		procedure cxButton8Click(Sender: TObject);
    procedure CustView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure N1201Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton48Click(Sender: TObject);
    procedure chkBubinNameClick(Sender: TObject);
    procedure cxButton50Click(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton51MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnMgrCustDelClick(Sender: TObject);
    procedure cbKeynumber01PropertiesChange(Sender: TObject);
    procedure cbLevel01MouseEnter(Sender: TObject);
    procedure mniN9Click(Sender: TObject);
    procedure _retenTel01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCustName01KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAll1Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure btnAll5Click(Sender: TObject);
    procedure btnAll6Click(Sender: TObject);
    procedure cxCheckBox9Click(Sender: TObject);
    procedure cxButton55MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure cxTextEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxButton70Click(Sender: TObject);
    procedure cxButton71Click(Sender: TObject);
    procedure cxButton74Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem38Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure CB_SetDateClick(Sender: TObject);
    procedure Cb_DelDateClick(Sender: TObject);
    procedure CB_UseDateClick(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CustView1DataControllerSortingChanged(Sender: TObject);
    procedure btnAll7Click(Sender: TObject);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownMng : string;
    AIndex : Integer;

    SCboLevelSeq : TStringList;

    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure ResponseBATCH_CUST_MLG(AXmlStr: WideString);
    procedure ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
    procedure RequestData(AData: string);
    procedure RequestDataCustLevel;
    procedure RequestDataLevelFromGroupSeq(AGroupSeq: string);
    procedure OnRefreshCustLevel(Sender: TObject);
    procedure DelCustLevel(ALevelSeq: string);
    procedure DelCustGroup(AGroupSeq: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
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
    procedure proc_CustSearch(iType: Integer);
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
		function GetDeptCustomerCount(AHdNo, ABrNo, ADeptCode: string): Integer;
	end;

var
  Frm_CUTA1: TFrm_CUTA1;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT012, xe_CUT011, xe_Flash, xe_SMSA1;


procedure TFrm_CUTA1.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTA1.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA1.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA1.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA1.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA1.btBubinSttDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;


  cxDate01.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate02.Date := cxDate01.Date + 1;
  cxDate03.Date := cxDate01.Date;
  cxDate04.Date := cxDate02.Date;

  cxDateEdit1.Date := cxDate01.Date;
  cxDateEdit2.Date := cxDate02.Date;
  cxDateEdit1.Enabled := False;
  cxDateEdit2.Enabled := False;
  cxCheckBox9.Checked := False;
  cxButton55.Enabled := False;

  rbFirstUseDate01Click(rbUseDate01);
  edCustName01.Text := '';
  edCustTel01.Text := '';
  cbSmsUse01.ItemIndex := 0;
  cbGubun01.ItemIndex := 0;
  cbLevel01.ItemIndex := 0;

  chkBubinName.Checked := False;
  chkBubinCust.Checked := False;

  lbCount01.Caption := '총 000명';
  chkSearchAdd.Checked := False;
  cxCheckBox4.Checked := False;

  for i := 1 to CustView1.ColumnCount - 1 do
		CustView1.Columns[i].DataBinding.ValueType := 'String';

	CustView1.Columns[0].DataBinding.ValueType := 'Integer';
	CustView1.Columns[10].DataBinding.ValueType := 'Integer';
	CustView1.Columns[11].DataBinding.ValueType := 'Integer';

	CustView1.Columns[22].DataBinding.ValueType := 'Currency';
  CustView1.Columns[22].Properties := Frm_Main.gCurProperties;
end;

procedure TFrm_CUTA1.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA1.proc_KeyNumber_insert;
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

procedure TFrm_CUTA1.proc_recieve(slList: TStringList);
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

        if ClientKey = 'GetCustGroup' then
//          ResponseCustLevel(ls_rxxml)
        else if ClientKey = 'GetGroupLevel' then
//          ResponseCustGroup(ls_rxxml)
        else if ClientKey = 'GetLevelFromGroupSeq' then
//          ResponseLevelFromGroupSeq(ls_rxxml)
				else if ClientKey = 'GET_VIRTUAL_TEL_LIST' then
//          ResponseLevelFromGroupSeq(ls_rxxml)
				else
          case StrToIntDef(ls_ClientKey, 1) of
            2:
              begin

								CustView1.BeginUpdate;

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
                    cxButton5.Enabled := True;
                    cxButton6.Enabled := True;
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
                        GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                        sTemp := ls_Rcrd[4];
                        sTel := Copy(sTemp, 1, pos('/', sTemp) - 1);

                        if chkNmlPhoneOut01.Checked then
                        begin
                          if not CheckHPType(sTel, ErrDesc) then Continue;
                        end;

                        sSmsYn := Copy(sTemp, Length(sTemp), 1);
                        if cbSmsUse01.ItemIndex = 1 then
                        begin
                          if sSmsYn <> 'y' then Continue;
                        end else
                        if cbSmsUse01.ItemIndex = 2 then
                        begin
                          if sSmsYn <> 'n' then Continue;
                        end;

                        ls_Rcrd[4] := sTel;
                        if sSmsYn = 'y' then ls_Rcrd.Insert(15, '수신')
                                        else ls_Rcrd.Insert(15, '거부');

                        iRow := CustView1.DataController.AppendRecord;
                        ls_Rcrd.Insert(0, IntToStr(iRow + 1));

                        //----------------------------------------------------------------------------------------------
                        //                  고객등급 생성(지사별 설정값 반영)
                        //----------------------------------------------------------------------------------------------
                        iTotal := StrToIntDef(ls_rcrd[8], 0);
                        iComCnt := StrToIntDef(ls_rcrd[9], 0);
                        iCanCnt := iTotal - icomCnt;
                        if iTotal = 0 then
                           iCanRate := 0
                        else
                           iCanRate := Round((iCanCnt / iTotal * 100));
                        sRate := IntToStr(iCanRate) + '%';
                        ls_Rcrd.Insert(10, sRate);
                        //-----------------------------------------------------------------------------------------------

                        CustView1.DataController.Values[iRow, 0] := ls_Rcrd[0];
                        CustView1.DataController.Values[iRow, 1] := ls_Rcrd[1];
                        CustView1.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        CustView1.DataController.Values[iRow, 3] := strtocall(ls_Rcrd[3]);
												CustView1.DataController.Values[iRow, 4] := ls_Rcrd[4];
												CustView1.DataController.Values[iRow, 5] := strtocall(ls_Rcrd[5]);//전화번호
												CustView1.DataController.Values[iRow, 6] := strtocall(ls_Rcrd[22]); //virtureTel
												CustView1.DataController.Values[iRow, 7] := ls_Rcrd[23];
												CustView1.DataController.Values[iRow, 8]  := ls_Rcrd[6];
												CustView1.DataController.Values[iRow, 9] := ls_Rcrd[7];
												CustView1.DataController.Values[iRow, 10]:= ls_Rcrd[8];
												CustView1.DataController.Values[iRow, 11] := ls_Rcrd[9];
												CustView1.DataController.Values[iRow, 12] := ls_Rcrd[10];
												CustView1.DataController.Values[iRow, 13] := ls_Rcrd[11];
												CustView1.DataController.Values[iRow, 14] := func_buninSearch(ls_Rcrd[19], ls_Rcrd[3], ls_Rcrd[12]);
												CustView1.DataController.Values[iRow, 15] := ls_Rcrd[13];
												CustView1.DataController.Values[iRow, 16] := ls_Rcrd[14];
												CustView1.DataController.Values[iRow, 17] := StringReplace(ls_Rcrd[15], '/', '', [rfReplaceAll]);
												CustView1.DataController.Values[iRow, 18] := StringReplace(ls_Rcrd[16], '/', '', [rfReplaceAll]);
												CustView1.DataController.Values[iRow, 19] := ls_Rcrd[17];
												CustView1.DataController.Values[iRow, 20] := ls_Rcrd[18];
												CustView1.DataController.Values[iRow, 21] := ls_Rcrd[19];
												CustView1.DataController.Values[iRow, 22] := ls_Rcrd[20];
												sEndDate := ls_rcrd[21];
												if Trim(sEndDate) <> '' then
													CustView1.DataController.Values[iRow, 23] := copy(sEndDate, 1, 4) +
														'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
												else
													CustView1.DataController.Values[iRow, 23] := '';

												sEndDate := ls_rcrd[24];
												if Trim(sEndDate) <> '' then
													CustView1.DataController.Values[iRow, 24] := copy(sEndDate, 1, 4) +
														'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
												else
													CustView1.DataController.Values[iRow, 24] := '';

												sEndDate := ls_rcrd[25];
												if Trim(sEndDate) <> '' then
													CustView1.DataController.Values[iRow, 25] := copy(sEndDate, 1, 4) +
														'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
												else
													CustView1.DataController.Values[iRow, 25] := '';

												sEndDate := ls_rcrd[26];
												if Trim(sEndDate) <> '' then
													CustView1.DataController.Values[iRow, 26] := copy(sEndDate, 1, 4) +
														'-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
												else
													CustView1.DataController.Values[iRow, 26] := '';

												CustView1.DataController.Values[iRow, 27] := ls_Rcrd[27];
                      end;
                    finally
                      ls_Rcrd.Free;
                    end;
                  end;
                end;
                CustView1.EndUpdate;
                lbCount01.Caption := '총 ' + IntToStr(CustView1.DataController.RecordCount) + '명';
                Screen.Cursor := crDefault;
                frm_Main.sbar_Message.Panels[4].Text := '';
              end;
            10:
              begin
                GMessagebox('마일리지를 설정하였습니다.', CDMSI);
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
    cxButton5.Enabled := True;
    cxButton6.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTA1.FormCreate(Sender: TObject);
var i : Integer;
	sTemp : string;
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
end;

procedure TFrm_CUTA1.FormDestroy(Sender: TObject);
begin
  Frm_CUTA1 := Nil;
end;

procedure TFrm_CUTA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUTA1.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber01.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber01.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber01.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  if cbKeynumber01.Properties.Items.Count >= 1 then
    cbKeynumber01.Properties.Items.Insert(0, '전체');

  cbKeynumber01.ItemIndex := 0;
  cbKeynumber01.Tag := 0;
end;

procedure TFrm_CUTA1.rbFirstUseDate01Click(Sender: TObject);
begin
  cxDate01.Enabled := False;
  cxDate02.Enabled := False;
  RbButton1.Enabled := False;

  cxDate03.Enabled := False;
  cxDate04.Enabled := False;
  cxButton51.Enabled := False;

  edUseCnt01.Enabled := False;
  edUseCnt02.Enabled := False;

  case TcxRadioButton(Sender).Tag of
    0:
      begin
        cxDate01.Enabled := True;
        cxDate02.Enabled := True;
        RbButton1.Enabled := True;
      end;
    1:
      begin
        cxDate03.Enabled := True;
        cxDate04.Enabled := True;
        cxButton51.Enabled := True;
      end;
    2:
      begin
        edUseCnt01.Enabled := True;
        edUseCnt02.Enabled := True;
      end;
  end;
end;

procedure TFrm_CUTA1.proc_CustSearch(iType: Integer);
var
	sWhere, sCbcode, sFBr_no: string;
  ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode, i: integer;
  sRangeType: string;
begin
{	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;  }
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('고객관리') then Exit;

  if not chkSearchAdd.Checked then
  begin
    if CustView1.DataController.RecordCount > 0 then
      Exit;
  end;

  ////////////////////////////////////////////////////////////////////////////////
  // 고객>고객관리]2000건/콜센터(통합)/대표번호:16886618/최초이용기간:20100110~2010100131/SMS전체
  if iType = 1 then
  begin
    if rbFirstUseDate01.Checked then
    begin
      sRangeType := rbFirstUseDate01.Caption + ':' + cxDate01.Text + '~' + cxDate02.Text;
    end else
    if rbUseDate01.Checked then
    begin
      sRangeType := rbUseDate01.Caption + ':' + cxDate03.Text + '~' + cxDate04.Text;
    end else
    if rbUseCnt01.Checked then
      sRangeType := rbUseCnt01.Caption + ':' + edUseCnt01.Text + '~' + edUseCnt02.Text;

    sRangeType := '/' + sRangeType;
  end;
	FExcelDownMng := Format('%s/대표번호:%s%s/%s',
    [
        GetSelBrInfo
      , cbKeynumber01.Text
      , sRangeType
      , cbSmsUse01.Text
    ]);
  ////////////////////////////////////////////////////////////////////////////////

  sWhere := '';
	if iType = 1 then
	begin
    if rbFirstUseDate01.Checked then
    begin

      if (cxDate01.Text <> '') and (cxDate02.Text <> '') then
        sWhere := ' AND CU.IN_DATE BETWEEN TO_DATE(''' + FormatDateTime('yyyymmdd', cxDate01.Date) + '0900' + ''',''YYYYMMDDHH24MISS'') '
          + ' AND TO_DATE(''' + FormatDateTime('yyyymmdd', cxDate02.Date)  + '0900' +  ''',''YYYYMMDDHH24MISS'') '
			else if (cxDate01.Text <> '') and (cxDate02.Text = '') then
				sWhere := ' AND CU.IN_DATE >= TO_DATE(''' + FormatDateTime('yyyymmdd', cxDate01.Date)  + '0900' +  ''',''YYYYMMDDHH24MISS'') '
      else if (cxDate01.Text = '') and (cxDate02.Text <> '') then
        sWhere := ' AND TO_DATE(''' + FormatDateTime('yyyymmdd', cxDate02.Date)   + '0900' +  ''',''YYYYMMDDHH24MISS'') >= CU.IN_DATE ';
    end else
    if rbUseDate01.Checked then
    begin
      if (cxDate03.Text <> '') and (cxDate04.Text <> '') then
        sWhere := ' AND CU.CU_LAST_END BETWEEN ''' + FormatDateTime('yyyymmdd', cxDate03.Date) + '0900' + ''' '
          + ' AND ''' + FormatDateTime('yyyymmdd', cxDate04.Date) + '0900' + ''' '
      else if (cxDate03.Text <> '') and (cxDate04.Text = '') then
				sWhere := ' AND CU.CU_LAST_END >= ''' + FormatDateTime('yyyymmdd', cxDate03.Date) + '0900' + ''' '
      else if (cxDate03.Text = '') and (cxDate04.Text <> '') then
        sWhere := ' AND ''' + FormatDateTime('yyyymmdd', cxDate04.Date) + '0900' + ''' >= CU.CU_LAST_END ';
    end
    else
      if rbUseCnt01.Checked then
    begin
			if (edUseCnt01.Text <> '') and (edUseCnt02.Text <> '') then
				sWhere := ' AND CU.CU_ENDCNT BETWEEN ' + IntToStr(StrToIntDef(edUseCnt01.Text, 0)) + ' '
          + ' AND ' + IntToStr(StrToIntDef(edUseCnt02.Text, 0)) + ' '
			else if (edUseCnt01.Text <> '') and (edUseCnt02.Text = '') then
				sWhere := ' AND CU.CU_ENDCNT >= ' + IntToStr(StrToIntDef(edUseCnt01.Text, 0)) + ' '
      else if (edUseCnt01.Text = '') and (edUseCnt02.Text <> '') then
        sWhere := ' AND ' + IntToStr(StrToIntDef(edUseCnt02.Text, 0)) + ' >= CU.CU_ENDCNT ';
    end;
  end;

	if cxBrNo.Text <> '' then
	begin
			sWhere := sWhere + ' AND CU.BR_NO = ''' + cxBrNo.Text + ''' ';
	end else
	begin
		if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
		begin
			for i := 0 to scb_FamilyBrCode.Count -1 do
			begin
				if i = 0 then sFBr_no := '''' + scb_FamilyBrCode[i] + '''';
				sFBr_no := sFBr_no + ', ' + '''' + scb_FamilyBrCode[i] + '''';
			end;
			sWhere := ' AND CU.BR_NO IN (' + sFBr_no + ')';
		end;
	end;

	if (cbKeynumber01.ItemIndex > 0) and (cbKeynumber01.Text <> '') then
		sWhere := sWhere + ' AND CU.KEY_NUMBER = ''' + StringReplace(cbKeynumber01.Text, '-', '', [rfReplaceAll]) + ''' ';

  case cbGubun01.ItemIndex of
		1: sWhere := sWhere + ' AND CU.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND CU.CU_TYPE = ''3'' ';
  end;

  if cbLevel01.ItemIndex > 0 then
    sWhere := sWhere + ' AND CU.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel01.itemindex] + ''' ';

	if chkBubinCust.Checked then
		sWhere := sWhere + ' AND CU.CU_TYPE != ''3'' ';

	if cbOutBound.ItemIndex > 0 then
		sWhere := sWhere + ' AND CU.CU_OUTBOUND = ''' + IntToStr(cbOutBound.ItemIndex) + ''' ';

  if (cbBCustList.Enabled) and (cbBCustList.ItemIndex > 0) then
	begin
    sCbcode := cbBCustListCd.Properties.Items[cbBCustList.ItemIndex];
		sCbcode := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
		sWhere := sWhere + ' AND CU.CB_CODE = ''' + sCbcode + ''' ';
  end;

  if edCustName01.Text <> '' then
    sWhere := sWhere + ' AND CU.CMP_NM LIKE ''%' + Param_Filtering(edCustName01.Text) + '%'' ';

  if edCustTel01.Text <> '' then
  begin
    if Length(edCustTel01.Text) = 4 then
      sWhere := sWhere +
        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE substr(CU_TEL,-4) = ''' + Param_Filtering(edCustTel01.Text) + ''') '
//        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE, ''%' + StringReplace(edCustTel01.Text, '-', '', [rfReplaceAll]) + ''') '
    else
      sWhere := sWhere +
        ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE ''' + StringReplace(Param_Filtering(edCustTel01.Text), '-', '', [rfReplaceAll]) + '%'') ';
  end;
	if cxTextEdit17.Text <> '' then
  begin
		if Length(cxTextEdit17.Text) = 4 then
			sWhere := sWhere
						 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  (SELECT v_phone, c_phone FROM virtual_number_0507 '
						 + 'WHERE yn_sync = ''y'' AND substr(v_phone,-4) = ''' + Param_Filtering(cxTextEdit17.Text) + ''' '
						 + '  AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) '
		else
			sWhere := sWhere
						 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  (SELECT v_phone, c_phone FROM virtual_number_0507 '
						 + 'WHERE yn_sync = ''y'' AND v_phone LIKE ''' + StringReplace(Param_Filtering(cxTextEdit17.Text), '-', '', [rfReplaceAll]) + '%''  '
						 + '  AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) '
	end;
	if cxCheckBox9.Checked then
	begin
		if (cxDateEdit1.Text <> '') and (cxDateEdit2.Text <> '') then
		sWhere := sWhere
					 + 'AND cu.cu_seq IN (SELECT cu_seq FROM cdms_customer_tel tel,  '
					 + '                 (SELECT v_phone, c_phone FROM virtual_number_0507 WHERE yn_sync = ''y'' '
					 + 'AND allot_time BETWEEN TO_DATE( ''' + CallToStr(cxDateEdit1.Text) + '090000' + ''', ''YYYYMMDDHH24MISS'' ) '
					 + '                                        AND TO_DATE( ''' + CallToStr(cxDateEdit2.Text) + '090000' + ''', ''YYYYMMDDHH24MISS'' ) '
					 + 'AND c_type = ''3'') vnum WHERE tel.cu_tel = vnum.c_phone) ';
	end;

  if Rb_SetupA.Checked then
  begin
		sWhere := sWhere + ' AND CU.CU_SEQ = APP.CU_SEQ(+)  ';
  end else
  if Rb_SetupY.Checked then
		sWhere := sWhere + ' AND CU.CU_SEQ = APP.CU_SEQ    ' +
                       ' AND CU.CU_SEQ = APP.CU_SEQ(+) ' +
 		                   ' AND APP.DEL_YN = ''n'' '
  else
  if Rb_SetupN.Checked then
		sWhere := sWhere + ' AND CU.CU_SEQ  NOT IN  (SELECT CU_SEQ FROM CDMS_APP_USER WHERE DEL_YN = ''n'') ' +  // 미사용
                       ' AND CU.CU_SEQ = APP.CU_SEQ(+) ';


  if CB_SetDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_REG_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_1stDate.Date), FormatDateTime('YYYYMMDD', de_1edDate.Date)] ); // 등록일자
  end;

  if CB_UseDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_FINISH_DATE BETWEEN %s ' +
                              '                              AND %s ', [FormatDateTime('YYYYMMDD', de_2stDate.Date), FormatDateTime('YYYYMMDD', de_2edDate.Date + 1)] ); // 등록일자
  end;

  if CB_DelDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.DEL_YN = ''y'' ' +
                              ' AND APP.LAST_DEL_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_3stDate.Date), FormatDateTime('YYYYMMDD', de_3edDate.Date)] ); // 등록일자
  end;
  cxButton5.Enabled := False;
  cxButton6.Enabled := False;
	ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_MANAGE_SEARCH, sQueryTemp);
	ls_TxQry := Format(sQueryTemp, [cxHdNo.Text, sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
	ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '2', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

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
    cxButton5.Enabled := True;
    cxButton6.Enabled := True;
  end;
end;

procedure TFrm_CUTA1.proc_bubin_init;
var
  i: Integer;
  sBrNo, sKeyNum: string;
begin
  if ( cbGubun01.ItemIndex = 3 ) Or ( chkBubinName.Checked ) then
  begin
    sBrNo := cxBrNo.Text;
    sKeyNum := cbKeynumber01.Text;
    cbBCustList.Properties.Items.Clear;
    cbBCustListCd.Properties.Items.Clear;
    cbBCustList.Properties.Items.Add('선택');
    cbBCustListCd.Properties.Items.Add('');
    if (sBrNo = '') or (sKeyNum = '전체') then
      Exit
    else
    begin
      for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
      begin
        if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
          Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
        begin
          cbBCustList.Properties.Items.Add(Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]),  1, 60)) + ' / ' +
                                           Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 61, 60)));
          cbBCustListCd.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
        end;
      end;
    end;
    cbBCustList.ItemIndex := 0;
  end;
end;

procedure TFrm_CUTA1.cbGubun01Click(Sender: TObject);
begin
  if cbGubun01.ItemIndex = 0 then
  begin
    chkBubinCust.Enabled := True;
    cbBCustList.Enabled := False;
    cxButton48.Enabled := False;
  end else
  if cbGubun01.ItemIndex = 3 then
  begin
    proc_bubin_init;
    chkBubinCust.Enabled := False;
    cbBCustList.Enabled := True;
    cxButton48.Enabled := True;
  end else
  begin
    chkBubinCust.Enabled := False;
    cbBCustList.Enabled := False;
    cbBCustList.ItemIndex := 0;
    cxButton48.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.cxButton5Click(Sender: TObject);
begin
	if not chkSearchAdd.Checked then
    CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(0);
	Click_chk := 0;
end;

procedure TFrm_CUTA1.cxButton6Click(Sender: TObject);
begin
	if not chkSearchAdd.Checked then
		CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(1);
  Click_chk := 1;
end;

function TFrm_CUTA1.func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
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

procedure TFrm_CUTA1.cxCheckBox4Click(Sender: TObject);
begin
  cxGridSelectAll(CustView1, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA1.cxButton7Click(Sender: TObject);
begin
  // 7 : 접수창에서 신규등록 4 : 수정창에서 신규등록
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 7;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := '';
  Frm_CUT011.FControlInitial(False);
	Frm_CUT011.proc_search_brKeyNum(cxBrNo.Text, StringReplace(cbKeynumber01.Text, '-', '', [rfReplaceAll]));

	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUTA1.cxButton8Click(Sender: TObject);
begin
  if CustView1.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA1.CustView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;

  iRow := CustView1.DataController.FocusedRecordIndex;
  if iRow = -1 then
    exit;

  iBrNo   := CustView1.GetColumnByFieldName('지사코드').Index;
  iKeyNum := CustView1.GetColumnByFieldName('대표번호').Index;
  iSeq    := CustView1.GetColumnByFieldName('SEQ').Index;
  sBrNo   := CustView1.DataController.Values[iRow, iBrNo];
  sKeyNum := CustView1.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq    := CustView1.DataController.Values[iRow, iSeq];

  // 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);

	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUTA1.CustView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C')) or (Key = VK_INSERT)) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView1.OptionsSelection.CellMultiSelect := False;
    CustView1.OptionsSelection.CellSelect := False;
    CustView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA1.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA1.CustView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView1.OptionsSelection.CellMultiSelect := True;
    CustView1.OptionsSelection.CellSelect := True;
    CustView1.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA1.MenuItem6Click(Sender: TObject);
begin
	cxButton8Click(nil);
end;

procedure TFrm_CUTA1.MenuItem8Click(Sender: TObject);
begin
  cxDate03.Date :=
    StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1,
    8)));
  cxDate04.Date := cxDate03.Date + 1;
end;

procedure TFrm_CUTA1.MenuItem9Click(Sender: TObject);
begin
  cxDate03.Date :=
    StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
    -
    1;
  cxDate04.Date := cxDate03.Date + 1;
end;

procedure TFrm_CUTA1.MenuItem11Click(Sender: TObject);
begin
  cxDate03.Date :=
    StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
    -
    7;
  cxDate04.Date := cxDate03.Date + 7;
end;

procedure TFrm_CUTA1.MenuItem12Click(Sender: TObject);
begin
  cxDate03.Date :=
    StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
    -
    31;
  cxDate04.Date := cxDate03.Date + 31;
end;

procedure TFrm_CUTA1.MenuItem13Click(Sender: TObject);
begin
  cxDate03.Date := StartOfTheMonth(now);
  cxDate04.Date := EndOfTheMonth(Now);
end;

procedure TFrm_CUTA1.N1201Click(Sender: TObject);
begin
end;

{-------------------------------------------------------------------------------
  Arguments: sGrid: 대상그리드; ASubscribe: 수신허용(True: 수신허용)
-------------------------------------------------------------------------------}
procedure TFrm_CUTA1.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
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

procedure TFrm_CUTA1.cxButton9Click(Sender: TObject);
begin
  proc_SND_SMS(CustView1);
end;

procedure TFrm_CUTA1.btnAll7Click(Sender: TObject);
begin
  cxGrid1.Enabled := True;
  pnl_Chang_select.Visible := False;
end;

procedure TFrm_CUTA1.cxButton48Click(Sender: TObject);
begin
  proc_bubin_init;
end;

procedure TFrm_CUTA1.chkBubinNameClick(Sender: TObject);
begin
  if chkBubinName.Checked then
  begin
    cbBCustList.Enabled := True;
    cxButton48.Enabled := True;
  end else
  begin
    cbBCustList.Enabled := False;
    cxButton48.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.cxButton50Click(Sender: TObject);
begin
  proc_bubin_init;
end;

procedure TFrm_CUTA1.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.cxButton51MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pm_Date22.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.CustView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA1.CustView1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView1, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA1.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J, 
  Row: Integer;
  KeyData: string;
begin
  if AKeyIndex < 0 then
    Exit;

  if Trim(AKeyValue) = '' then
    Exit;

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

function TFrm_CUTA1.GetDeptCustomerCount(AHdNo, ABrNo,
  ADeptCode: string): Integer;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_TxLoad, ls_TxQry, sQueryTemp,
  XmlStr, ErrorCode: string;
  StrList: TStringList;
  ErrCode: Integer;
begin
  Result := -1;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_BUBIN_COUNT_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [AHdNo, ABrNo, ADeptCode]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

  StrList := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;

      xdom := ComsDomDocument.Create;
      try
        XmlStr := StrList[0];
        if not xdom.loadXML(XmlStr) then
          Exit;

        ErrorCode := GetXmlErrorCode(XmlStr);
        if ('0000' = ErrorCode) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

          Result := StrToIntDef(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').Text), -1);
        end;
      finally
        xdom := Nil;
      end;
    end;
  finally
    Frm_Flash.Hide;
    FreeAndNil(StrList);
  end;
end;

function TFrm_CUTA1.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
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

function TFrm_CUTA1.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
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

procedure TFrm_CUTA1.btnMgrCustDelClick(Sender: TObject);
begin
  DeleteCustomer(CustView1, lbCount01);
end;

procedure TFrm_CUTA1.ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
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

procedure TFrm_CUTA1.cbKeynumber01PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then
  begin
    ChageCustLevel(TcxComboBox(Sender).Text, cbLevel01);
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
  proc_bubin_init;

  ChageCustLevel(TcxComboBox(Sender).Text, cbLevel01);
end;

procedure TFrm_CUTA1.cbLevel01MouseEnter(Sender: TObject);
begin
  TcxComboBox(Sender).Hint := TcxComboBox(Sender).Text;
end;

procedure TFrm_CUTA1.RequestDataCustLevel;
var
  Param: string;
  Row: Integer;
begin
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox(PChar('고객등급관리는 [좌측 상단 지사선택 메뉴에서] 지사를 선택하셔야 합니다.'), CDMSI);
    Exit;
  end;

  Param := GT_SEL_BRNO.BrNo;

  RequestData(GetSel05('GetCustGroup', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│1'));
  RequestData(GetSel05('GetGroupLevel', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│2'));
end;

procedure TFrm_CUTA1.RequestDataLevelFromGroupSeq(AGroupSeq: string);
var
  Param: string;
  Row: Integer;
begin
  Param := AGroupSeq;

  RequestData(GetSel05('GetLevelFromGroupSeq', 'cust_level.lv_select', '100', Param));
end;

procedure TFrm_CUTA1.RequestData(AData: string);
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

procedure TFrm_CUTA1.DelCustGroup(AGroupSeq: string);
var
  SendData, XmlData,
  Param, Key, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.group_delete', AGroupSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  RequestDataCustLevel;
end;

procedure TFrm_CUTA1.DelCustLevel(ALevelSeq: string);
var
  SendData, XmlData,
  Param, Key, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.lv_delete', ALevelSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  RequestDataCustLevel;
end;

procedure TFrm_CUTA1.OnRefreshCustLevel(Sender: TObject);
begin
  RequestDataCustLevel;
end;

function TFrm_CUTA1.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
  AStDt := cxDate01;
  AEdDt := cxDate02;
end;

procedure TFrm_CUTA1.mniN9Click(Sender: TObject);
var
  iBrNo, iKeyNum, iSeq, iCustTel, iRow: Integer;
  sBrNo, sKeyNum, sSeq, sCustTel: string;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;

  iRow := CustView1.DataController.FocusedRecordIndex;
  if iRow = -1 then Exit;

  iBrNo   := CustView1.GetColumnByFieldName('지사코드').Index;
  iKeyNum := CustView1.GetColumnByFieldName('대표번호').Index;
  iSeq    := CustView1.GetColumnByFieldName('SEQ').Index;
  iCustTel:= CustView1.GetColumnByFieldName('고객번호').Index;
  sBrNo   := CustView1.DataController.Values[iRow, iBrNo];
  sKeyNum := CustView1.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq    := CustView1.DataController.Values[iRow, iSeq];
  sCustTel:= CustView1.DataController.Values[iRow, iCustTel];

  if sCustTel = '' then
  begin
    GMessagebox('고객 전화번호가 없습니다.', CDMSI);
    Exit;
  end;

  if ( not Assigned(Frm_CUT012) ) Or ( Frm_CUT012 = Nil ) then Frm_CUT012 := TFrm_CUT012.Create(Self);
  Frm_CUT012.Show(sBrNo, sKeyNum, sSeq, sCustTel);
end;

procedure TFrm_CUTA1._retenTel01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    cxButton5Click(nil);
end;

procedure TFrm_CUTA1.edCustName01KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    cxButton5Click(nil);
end;

procedure TFrm_CUTA1.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_고객관리.xls';
  Frm_Main.sgRpExcel := Format('고객>고객관리]%s건/%s', [GetMoneyStr(CustView1.DataController.RecordCount), FExcelDownMng]);
  Frm_Main.cxGridExcel := cxGrid1;
  Frm_Main.cxGridDBViewExcel := CustView1;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    CustView1.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    CustView1.Columns[0].Properties := Frm_Main.gCalHCProperties;
    CustView1.Columns[10].PropertiesClassName := 'TcxCalcEditProperties';
    CustView1.Columns[10].Properties := Frm_Main.gCalHCProperties;
    CustView1.Columns[11].PropertiesClassName := 'TcxCalcEditProperties';
    CustView1.Columns[11].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    CustView1.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    CustView1.Columns[0].Properties := Frm_Main.gLblProperties;
    CustView1.Columns[10].PropertiesClassName := 'TcxLabelProperties';
    CustView1.Columns[10].Properties := Frm_Main.gLblProperties;
    CustView1.Columns[11].PropertiesClassName := 'TcxLabelProperties';
    CustView1.Columns[11].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA1.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA1.btnAll5Click(Sender: TObject);
var i, iSeq, iKeynumber, iCnt : Integer;
  CutSeq : string;
begin
  try
    cxGrid1.Enabled := False;
    CutSeqList := TStringList.Create;
    cxRMileP.Checked := False;
    cxRMileM.Checked := False;
    cxRMileS.Checked := False;
		chkNMCNG1.Checked := True;
    cxCurrencyEdit7.text := '0';
    cxTextEdit16.text := '';
    mmoMilelistError.Clear;
    CutSeq := '';
    iCnt := 0;
    iAddCnt := 0;
    iSeq  := CustView1.GetColumnByFieldName('SEQ').Index;
    iKeynumber  := CustView1.GetColumnByFieldName('대표번호').Index;
    for I := 0 to CustView1.DataController.RecordCount - 1 do
    begin
      if (CustView1.ViewData.Records[i].Selected) then
      begin
        if CutSeq = '' then
        begin
          CutSeq := StringReplace(CustView1.ViewData.Records[I].Values[iKeynumber], '-', '', [rfreplaceAll]) + '/' + CustView1.ViewData.Records[I].Values[iSeq];
        end else
        begin
          CutSeq := CutSeq + ',' + StringReplace(CustView1.ViewData.Records[I].Values[iKeynumber], '-', '', [rfreplaceAll]) + '/' + CustView1.ViewData.Records[I].Values[iSeq];
        end;
        Inc(iCnt);
        Inc(iAddCnt);
      end;
      if iAddCnt = 1000 then
      begin
        CutSeqList.Add(CutSeq);
        CutSeq := '';
        iAddCnt := 0;
      end;
    end;
    CutSeqList.Add(CutSeq);
    if icnt < 1 then
    begin
      cxGrid1.Enabled := True;
      GMessagebox('고객이 선택되지 않았습니다.', CDMSI);
      Exit;
    end;

    cxlbl7.Caption := inttostr(icnt) + ' 명';
    cxCurrencyEdit5.Text := inttostr(iAddCnt);

    pnl_Chang_select.Visible := True;
  except
  end;
end;

procedure TFrm_CUTA1.btnAll6Click(Sender: TObject);
var i, j, jj : Integer;
  xdom: msDomDocument;
  ErrCode: integer;
  XmlData, sTemp, ErrMsg: string;
  chkNum, ls_msg : string;
  sErrorList : Tstringlist;
  iCustTel, iNo, iCutNM, iSeq : Integer;
begin
  Try
    if (cxRMileP.Checked = False) and (cxRMileM.Checked = False) and (cxRMileS.Checked = False) then
    begin
      GMessagebox('마일리지 적용구분이 선택되지 않았습니다.', CDMSI);
      Exit;
    end;

    if ( Trim(cxTextEdit16.TEXT) = '' ) And ( chkNMCNG2.Checked ) then
    begin
      if GMessagebox('고객명이 없습니다.' + #13#10 + '그래도 진행 하시겠습니까?', CDMSQ) = IDOK then
      begin
        mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 시작');
        mmoMilelistError.Lines.Add('==============================');
        if cxRMileP.Checked then chkNum := '1'
        else if cxRMileM.Checked then chkNum := '2'
        else if cxRMileS.Checked then chkNum := '3';
        for i := 0 to CutSeqList.Count -1 do
        begin
          sTemp := '';
          if i = CutSeqList.Count -1 then
            sTemp := cxCurrencyEdit5.Text
          else
            sTemp := '1000';

					if chkNMCNG1.Checked then
						sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '0'
					else
						sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '1';

          if not RequestBase_ErrorResult(GetCallable05('BATCH_CUST_MLG', 'MNG_CUST.BATCH_CUST_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
          begin
            mmoMilelistError.Lines.Add(ErrMsg);
          end
          else
            ResponseBATCH_CUST_MLG(XmlData);
            mmoMilelistError.Lines.Add('[' + IntToStr(i) + ']' + ErrMsg);
        end;
      end
      else Exit;
    end else
    begin
			mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 시작');
      mmoMilelistError.Lines.Add('==============================');
			if cxRMileP.Checked then chkNum := '1'
      else if cxRMileM.Checked then chkNum := '2'
			else if cxRMileS.Checked then chkNum := '3';
      for i := 0 to CutSeqList.Count -1 do
			begin
				sTemp := '';
        if i = CutSeqList.Count -1 then
          sTemp := cxCurrencyEdit5.Text
				else
          sTemp := '1000';

				if chkNMCNG1.Checked then
					sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '0'
				else
					sTemp := sTemp + '│' + CutSeqList[i] +  '│' + cxTextEdit16.Text +  '│'  + chkNum +  '│' + StringReplace(cxCurrencyEdit7.Text, ',', '', [rfreplaceAll]) +  '│' + '1';

        if not RequestBase_ErrorResult(GetCallable05('BATCH_CUST_MLG', 'MNG_CUST.BATCH_CUST_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
        begin
          mmoMilelistError.Lines.Add(ErrMsg);
        end
        else
          ResponseBATCH_CUST_MLG(XmlData);
          mmoMilelistError.Lines.Add('[' + IntToStr(i+1) + ']' + ErrMsg);
          mmoMilelistError.Lines.Add('==============================');
      end;
    end;
  except
    cxGrid1.Enabled := True;
    CutSeqList.Free;
    mmoMilelistError.Lines.Add('고객명+마일리지 일괄변경 중 오류 발생');
  end;
  if not chkSearchAdd.Checked then
    CustView1.DataController.SetRecordCount(0);
	proc_CustSearch(Click_chk);

  cxCheckBox4.Checked := False;
  FreeAndNil(CutSeqList);
end;

procedure TFrm_CUTA1.ResponseBATCH_CUST_MLG(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, j, jj: Integer;
  ls_Rcrd: TStringList;
  sErrorList : TStringList;
  iCustTel, iNo, iCutNM, iSeq : Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    iSeq  := CustView1.GetColumnByFieldName('SEQ').Index;
    iNo  := CustView1.GetColumnByFieldName('NO').Index;
    iCustTel  := CustView1.GetColumnByFieldName('고객번호').Index;
    iCutNM  := CustView1.GetColumnByFieldName('고객명').Index;
    sErrorList := TStringList.Create;

    lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

    ls_Rcrd := TStringList.Create;

    for I := 0 to lst_Result.length - 1 do
    begin
      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

      sErrorList.Delimiter  := ',';
      sErrorList.DelimitedText := ls_Rcrd[0];
      mmoMilelistError.Lines.Add('[오류고객정보]');
      for j := 0 to sErrorList.Count -1 do
      begin

        for jj := 0 to CustView1.DataController.RecordCount - 1 do
        begin
          if (CustView1.ViewData.Records[jj].Selected) then
          begin
            if CustView1.ViewData.Records[jj].Values[iSeq] = sErrorList[j] then
            begin
              //오류 고객 정보 메모에 추가
               mmoMilelistError.Lines.Add('NO : '       + inttostr(CustView1.ViewData.Records[jj].Values[iNO]) + ', ' +
                                          '고객명 : '   + CustView1.ViewData.Records[jj].Values[iCutNM]   + ', ' +
                                          '고객번호 : ' + CustView1.ViewData.Records[jj].Values[iCustTel] + ', ');
            end;
          end;
        end;
      end;
    end;
  finally
    sErrorList.Free;
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA1.cxCheckBox9Click(Sender: TObject);
begin
  if cxCheckBox9.checked then
  begin
    cxDateEdit1.Enabled := True;
    cxDateEdit2.Enabled := True;
    cxButton55.Enabled := True;
  end else
  begin
    cxDateEdit1.Enabled := False;
    cxDateEdit2.Enabled := False;
    cxButton55.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.cxButton55MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pm_Date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.MenuItem25Click(Sender: TObject);
begin
        cxDateEdit1.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1,
          8)));
        cxDateEdit2.Date := cxDateEdit1.Date + 1;
end;

procedure TFrm_CUTA1.MenuItem26Click(Sender: TObject);
begin
        cxDateEdit1.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          1;
        cxDateEdit2.Date := cxDateEdit1.Date + 1;
end;

procedure TFrm_CUTA1.MenuItem27Click(Sender: TObject);
begin
        cxDateEdit1.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          7;
        cxDateEdit2.Date := cxDateEdit1.Date + 7;
end;

procedure TFrm_CUTA1.MenuItem28Click(Sender: TObject);
begin
        cxDateEdit1.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          31;
        cxDateEdit2.Date := cxDateEdit1.Date + 31;
end;

procedure TFrm_CUTA1.MenuItem29Click(Sender: TObject);
begin
        cxDateEdit1.Date := StartOfTheMonth(now);
        cxDateEdit2.Date := EndOfTheMonth(Now);
end;

procedure TFrm_CUTA1.cxTextEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
    cxButton5Click(nil);
end;

procedure TFrm_CUTA1.cxGridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
  I: Integer;
begin
  try
    for I := 0 to Sender.ColumnCount - 1 do
    begin
      if I <> AColumn.Index then
      begin
        Sender.Columns[I].SortIndex := -1;
        Sender.Columns[I].SortOrder := soNone;
      end;
    end;

    if (Sender.Columns[AColumn.Index].SortOrder = soNone) or
      (Sender.Columns[AColumn.Index].SortOrder = soDescending) then
      Sender.Columns[AColumn.Index].SortOrder := soAscending
    else
      Sender.Columns[AColumn.Index].SortOrder := soDescending
        ;

    Sender.Columns[AColumn.Index].SortIndex := 0;
    Sender.DataController.FocusedRowIndex := 0;
  except on E: Exception do
			GMessagebox(PChar('frmChild[cxGridDBTableView1ColumnHeaderClick]Error:' +
        E.Message), CDMSE);
  end;
end;

procedure TFrm_CUTA1.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA1.cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA1.cxButton70Click(Sender: TObject);
begin
  Pop_Ymd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.cxButton71Click(Sender: TObject);
begin
  Pop_Ymd1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.cxButton74Click(Sender: TObject);
begin
  Pop_Ymd2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA1.MenuItem33Click(Sender: TObject);
begin
  CustSetDateControl(0, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA1.MenuItem34Click(Sender: TObject);
begin
  CustSetDateControl(1, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA1.MenuItem35Click(Sender: TObject);
begin
  CustSetDateControl(3, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA1.MenuItem36Click(Sender: TObject);
begin
  CustSetDateControl(6, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA1.MenuItem37Click(Sender: TObject);
begin
  CustSetDateControl(12, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA1.MenuItem38Click(Sender: TObject);
begin
  CustSetDateControl(0, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA1.MenuItem39Click(Sender: TObject);
begin
  CustSetDateControl(1, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA1.MenuItem40Click(Sender: TObject);
begin
  CustSetDateControl(3, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA1.MenuItem41Click(Sender: TObject);
begin
  CustSetDateControl(6, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA1.MenuItem42Click(Sender: TObject);
begin
  CustSetDateControl(12, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA1.MenuItem43Click(Sender: TObject);
begin
  CustSetDateControl(0, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA1.MenuItem44Click(Sender: TObject);
begin
  CustSetDateControl(1, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA1.MenuItem45Click(Sender: TObject);
begin
  CustSetDateControl(3, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA1.MenuItem46Click(Sender: TObject);
begin
  CustSetDateControl(6, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA1.MenuItem47Click(Sender: TObject);
begin
  CustSetDateControl(12, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA1.CB_SetDateClick(Sender: TObject);
begin
  if CB_SetDate.Checked then
  begin
    Pnl_Chk1.Enabled := True;
    de_1stDate.Enabled := True;
    de_1edDate.Enabled := True;
  end else
  begin
    Pnl_Chk1.Enabled := False;
    de_1stDate.Enabled := False;
    de_1edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.Cb_DelDateClick(Sender: TObject);
begin
  if CB_DelDate.Checked then
  begin
    Pnl_Chk3.Enabled := True;
    de_3stDate.Enabled := True;
    de_3edDate.Enabled := True;
  end else
  begin
    Pnl_Chk3.Enabled := False;
    de_3stDate.Enabled := False;
    de_3edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.CB_UseDateClick(Sender: TObject);
begin
  if CB_UseDate.Checked then
  begin
    Pnl_Chk2.Enabled := True;
    de_2stDate.Enabled := True;
    de_2edDate.Enabled := True;
  end else
  begin
    Pnl_Chk2.Enabled := False;
    de_2stDate.Enabled := False;
    de_2edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA1.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
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

end.

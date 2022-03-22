unit xe_CUTB3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  System.StrUtils, System.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, AdvProgressBar, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_CUTB3 = class(TForm)
    cxLabel8: TcxLabel;
    btBubinSttSearch: TcxButton;
    lbBubinSttCaption: TcxLabel;
    btBubinSttPrint: TcxButton;
    btBubinSttExcel: TcxButton;
    btBubinSttSelStt: TcxButton;
    cxDtStBubinStt: TcxDateEdit;
    cxLabel41: TcxLabel;
    Panel5: TPanel;
    chkBubinSttOrdTotal: TcxRadioButton;
    chkBubinSttOrdFinish: TcxRadioButton;
    chkBubinSttOrdCancel: TcxRadioButton;
    chkBubinSttOrdReq: TcxRadioButton;
    cbBubinSttCondition: TcxComboBox;
    cxdBubinSttSearch: TcxTextEdit;
    cxLabel33: TcxLabel;
    Panel2: TPanel;
    chkBubinSttTotal: TcxRadioButton;
    chkBubinSttFinish: TcxRadioButton;
    chkBubinSttNotFinish: TcxRadioButton;
    cxLabel47: TcxLabel;
    Panel6: TPanel;
    chkBubinSttPayTotal: TcxRadioButton;
    chkBubinSttPayAfter: TcxRadioButton;
    chkBubinSttPayTick: TcxRadioButton;
    chkBubinSttPayCash: TcxRadioButton;
    cxDtEdBubinStt: TcxDateEdit;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxGrid7: TcxGrid;
    cxGridLevel3: TcxGridLevel;
    cxGBubinStt: TcxGridBandedTableView;
    cxGBubinSttColumn1: TcxGridBandedColumn;
    cxGBubinSttColumn2: TcxGridBandedColumn;
    cxGBubinSttColumn3: TcxGridBandedColumn;
    cxGBubinSttColumn4: TcxGridBandedColumn;
    cxGBubinSttColumn5: TcxGridBandedColumn;
    cxGBubinSttColumn6: TcxGridBandedColumn;
    cxGBubinSttColumn7: TcxGridBandedColumn;
    cxGBubinSttColumn8: TcxGridBandedColumn;
    cxGBubinSttColumn9: TcxGridBandedColumn;
    cxGBubinSttColumn10: TcxGridBandedColumn;
    cxGBubinSttColumn11: TcxGridBandedColumn;
    cxGBubinSttColumn12: TcxGridBandedColumn;
    cxGBubinSttColumn13: TcxGridBandedColumn;
    cxGBubinSttColumn14: TcxGridBandedColumn;
    cxGBubinSttColumn15: TcxGridBandedColumn;
    cxGBubinSttColumn16: TcxGridBandedColumn;
    cxGBubinSttColumn17: TcxGridBandedColumn;
    cxGBubinSttColumn18: TcxGridBandedColumn;
    cxGBubinSttColumn19: TcxGridBandedColumn;
    cxGBubinSttColumn20: TcxGridBandedColumn;
    cxGBubinSttColumn21: TcxGridBandedColumn;
    cxGBubinSttColumn22: TcxGridBandedColumn;
    cxGBubinSttColumn23: TcxGridBandedColumn;
    cxGBubinSttColumn24: TcxGridBandedColumn;
    cxGBubinSttColumn25: TcxGridBandedColumn;
    cxGBubinSttColumn26: TcxGridBandedColumn;
    cxGBubinSttColumn27: TcxGridBandedColumn;
    cxGBubinSttColumn28: TcxGridBandedColumn;
    cxGBubinSttColumn29: TcxGridBandedColumn;
    cxGBubinSttColumn30: TcxGridBandedColumn;
    cxGBubinSttColumn31: TcxGridBandedColumn;
    cxGBubinSttColumn32: TcxGridBandedColumn;
    cxGBubinSttColumn33: TcxGridBandedColumn;
    cxGBubinSttColumn34: TcxGridBandedColumn;
    cxGBubinSttColumn35: TcxGridBandedColumn;
    cxGBubinSttColumn36: TcxGridBandedColumn;
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    cbBubinSttKeyNumber: TcxComboBox;
    cxGBubinSttColumn38: TcxGridBandedColumn;
    cxGBubinSttColumn37: TcxGridBandedColumn;
    chkBubinStt: TCheckBox;
    cxGBubinSttColumn39: TcxGridBandedColumn;
    cxGBubinSttColumn40: TcxGridBandedColumn;
    cxButton1: TcxButton;
    pnlBubinAccPrt: TPanel;
    WebBrowser1: TWebBrowser;
    sb_Cancel_comm: TcxButton;
    sb_Cancel_Can: TcxButton;
    pnl_BubinAccStatus: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lbbubinAccPrintList: TListBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    N3: TMenuItem;
    cxButton3: TcxButton;
    cxBtnPriv: TcxButton;
    cxButton4: TcxButton;
    cxLabel11: TcxLabel;
    Panel1: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxLabel14: TcxLabel;
    Panel3: TPanel;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxLabel16: TcxLabel;
    cxChkTitle: TcxCheckComboBox;
    cxGBubinSttColumn41: TcxGridBandedColumn;
    cxGBubinSttColumn42: TcxGridBandedColumn;
    cxGBubinSttColumn43: TcxGridBandedColumn;
    cxGBubinSttColumn44: TcxGridBandedColumn;
    cxCheckBox1: TcxCheckBox;
    Panel7: TPanel;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton8: TcxRadioButton;
    cxRadioButton9: TcxRadioButton;
    cxLabel18: TcxLabel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxBrNo10: TcxTextEdit;
    cxHdNo10: TcxTextEdit;
    btBubinSttDate: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape5: TShape;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape17: TShape;
    Shape18: TShape;
    btnClose: TcxButton;
    cxGroupBox3: TcxGroupBox;
    Shape19: TShape;
    cxcbBubinAccPage: TcxComboBox;
    Panel4: TPanel;
    Gauge1: TAdvProgressBar;
    chkBubinSttNotBubin: TcxRadioButton;
    cxGBubinSttColumn45: TcxGridBandedColumn;
		procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure btBubinSttDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btBubinSttSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGBubinSttBands1HeaderClick(Sender: TObject);
    procedure btBubinSttPrintClick(Sender: TObject);
    procedure sb_Cancel_CanClick(Sender: TObject);
    procedure sb_Cancel_commClick(Sender: TObject);
    procedure btBubinSttSelSttClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btBubinSttExcelClick(Sender: TObject);
    procedure cxGBubinSttCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxcbBubinAccPageSelect(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxBtnPrivClick(Sender: TObject);
    procedure cxGBubinSttBands0HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands2HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands3HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands4HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands6HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands10HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands7HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands8HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands9HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands11HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands12HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands13HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands14HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands15HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands16HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands17HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands18HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands19HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands20HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands21HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands22HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands23HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands24HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands25HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands27HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands28HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands29HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands32HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands33HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands30HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands31HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands35HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands36HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands37HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands38HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands39HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands41HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands42HeaderClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGBubinSttBands45HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands46HeaderClick(Sender: TObject);
    procedure cxGBubinSttBands47HeaderClick(Sender: TObject);
    procedure cxChkTitlePropertiesChange(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxdBubinSttSearchKeyPress(Sender: TObject; var Key: Char);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnCloseClick(Sender: TObject);
    procedure cxGroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cbBubinSttKeyNumberPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
		FExcelDownBubinDaily : string;

    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
  public
    { Public declarations }

    procedure proc_init;
    procedure proc_bubinSttSearch;
    procedure proc_BubinStt_Select(iRow: Integer);
    procedure proc_BrNameSet;

    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    procedure proc_bubinStt;
		function GetDeptCustomerCount(AHdNo, ABrNo, ADeptCode: string): Integer;
	end;

var
  Frm_CUTB3: TFrm_CUTB3;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_xml, xe_Query, xe_CUT019, xe_Flash;


procedure TFrm_CUTB3.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTB3.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTB3.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTB3.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTB3.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTB3.btBubinSttDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTB3.proc_bubinStt;
begin
  proc_bubinSttSearch;
end;

procedure TFrm_CUTB3.proc_bubinSttSearch;
var
  sWhere, sTable, msg: string;
  ErrCode, iRow, i, j, iCnt: integer;
  Param, ErrMsg, XmlData: string;
  xdom: MSDomDocument;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  ls_rxxml,rv_str, sTemp: string;
  lst_Count, lst_Result: IXMLDomNodeList;
begin
  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인일일정산') then Exit;

  //////////////////////////////////////////////////////////////////////////////
	// 법인>법인일일정산]1000건/A100-B100/이용기간:20100101~20100131/오더상태:완료
  FExcelDownBubinDaily := Format('%s/대표번호:%s/이용기간:%s~%s/오더상태:%s',
    [
        GetSelBrInfo
      , cbBubinSttKeyNumber.Text
      , cxDtStBubinStt.Text, cxDtEdBubinStt.Text
      , IfThen(chkBubinSttOrdTotal.Checked, '전체', IfThen(chkBubinSttOrdFinish.Checked, '완료', IfThen(chkBubinSttOrdCancel.Checked, '취소', '문의')))
    ]);
  //////////////////////////////////////////////////////////////////////////////

	Param := '';
  if cxGBubinStt.DataController.RecordCount = 0 then
  begin
    Param := GT_USERIF.LV;
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + ''
      else if GT_USERIF.LV = '40' then
        Param := Param + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR
      else if GT_USERIF.LV = '10' then
        Param := Param + '│' + GT_USERIF.HD + '│' + GT_USERIF.BR
    end
    else if GT_SEL_BRNO.GUBUN = '1' then
    begin
      Param := Param + '│' + GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BrNo
    end;
    Param := Param + '│' + GT_SEL_BRNO.GUBUN ;

    if StartDateTime('yyyymmdd') = FormatDateTime('yyyymmdd', cxDtStBubinStt.Date) then
      Param := Param + '│' + 'CDMS_A01_TODAY'
    else
      Param := Param + '│' + 'CDMS_A01';
    Param := Param + '│' + FormatDateTime('yyyymmdd', cxDtStBubinStt.Date) + '090000';
    Param := Param + '│' + FormatDateTime('yyyymmdd', cxDtEdBubinStt.Date) + '090000';

    if chkBubinSttOrdTotal.Checked then
     Param := Param + '│' + '0'
    else if chkBubinSttOrdFinish.Checked then
     Param := Param + '│' + '1'
    else if chkBubinSttOrdCancel.Checked then
     Param := Param + '│' + '2'
    else if chkBubinSttOrdReq.Checked then
     Param := Param + '│' + '3';

    if cxRadioButton2.Checked then
      Param := Param + '│' + 'y'
    else if cxRadioButton3.Checked then
      Param := Param + '│' + 'n'
    else
      Param := Param + '│' + '';

    if cxRadioButton5.Checked then
      Param := Param + '│' + 'y'
    else if cxRadioButton6.Checked then
      Param := Param + '│' + 'n'
    else
      Param := Param + '│' + '';

    if cbBubinSttKeyNumber.Text <> '전체' then
      Param := Param + '│' + StringReplace(cbBubinSttKeyNumber.Text, '-', '', [rfReplaceAll])
    else
      Param := Param + '│' + '';

    Param := Param + '│' + StringReplace(cxdBubinSttSearch.Text, '-', '', [rfReplaceAll]);
    Param := Param + '│' + IntToStr(cbBubinSttCondition.ItemIndex);

    if chkBubinSttFinish.Checked then
      Param := Param + '│' + 'y'
    else if chkBubinSttNotFinish.Checked then
      Param := Param + '│' + 'n'
    else if chkBubinSttNotBubin.Checked then
      Param := Param + '│' + 'n'
    else
      Param := Param + '│' + '';

    if chkBubinSttPayAfter.Checked then
      Param := Param + '│' + '2'
    else if chkBubinSttPayTick.Checked then
      Param := Param + '│' + '4'
    else if chkBubinSttPayCash.Checked then
      Param := Param + '│' + '0'
    else
      Param := Param + '│' + '';

    if cxRadioButton8.Checked then
      Param := Param + '│' + 'y'
    else if cxRadioButton9.Checked then
      Param := Param + '│' + 'n'
    else
      Param := Param + '│' + '';

    if chkBubinSttFinish.Checked then
      Param := Param + '│' + 'y'
    else if chkBubinSttNotFinish.Checked then
      Param := Param + '│' + 'y'
    else if chkBubinSttNotBubin.Checked then
      Param := Param + '│' + 'n'
    else
      Param := Param + '│' + '';

    if not RequestBase(GetSel05('GET_BGROUP_ORDER_LIST', 'MNG_BGROUP.GET_BGROUP_ORDER_LIST', '10000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('법인정보 저장중 오류가 발생하였습니다.'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      btBubinSttSearch.Enabled := True;
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := XmlData;
      if not xdom.loadXML(ls_rxxml) then
      begin
        btBubinSttSearch.Enabled := True;
				Exit;
      end;
      cxGBubinStt.DataController.SetRecordCount(0);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
      begin

        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        iCnt := lst_Result.length;
        ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
        if ('0000' = ls_MSG_Err) then
        begin
          frm_Main.sbar_Message.Panels[4].Text := '';
          cxGBubinStt.BeginUpdate;
          chkBubinStt.Checked := False;

          Frm_Flash.cxPBar1.Properties.Max := iCnt;
          Frm_Flash.cxPBar1.Position := 0;

          ls_Rcrd := TStringList.Create;
          try
            for i := 0 to iCnt - 1 do
            begin
              Frm_Flash.cxPBar1.Position := i + 1;
              Frm_Flash.lblCnt.Caption := IntToStr(i + 1) + '/' + IntToStr(iCnt);
              Application.ProcessMessages;

              GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
              ls_Rcrd.Insert(0, 'n');
              iRow := cxGBubinStt.DataController.AppendRecord;
              // 1 Record 추가
              ls_Rcrd.Insert(0, IntToStr(iRow + 1));
              sTemp := ls_Rcrd[11];
              if sTemp <> '' then
                ls_Rcrd[11] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
              sTemp := ls_Rcrd[21];
              if sTemp <> '' then
                ls_Rcrd[21] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
              sTemp := ls_Rcrd[22];
              if StrToFloatDef(sTemp, -9) = -9 then
                ls_Rcrd[22] := '0.0';
              cxGBubinStt.DataController.Values[iRow, 0] := ls_Rcrd[0];
              cxGBubinStt.DataController.Values[iRow, 1] := ls_Rcrd[1];
              cxGBubinStt.DataController.Values[iRow, 2] := ls_Rcrd[2];
              cxGBubinStt.DataController.Values[iRow, 3] := ls_Rcrd[3];
              cxGBubinStt.DataController.Values[iRow, 4] := ls_Rcrd[4];
              if ls_Rcrd[44] = 'n' then
                cxGBubinStt.DataController.Values[iRow, 5] := '개인정산'
              else
                cxGBubinStt.DataController.Values[iRow, 5] := ls_Rcrd[5];
              cxGBubinStt.DataController.Values[iRow, 6] := ls_Rcrd[6];
              cxGBubinStt.DataController.Values[iRow, 7] := ls_Rcrd[7];
              cxGBubinStt.DataController.Values[iRow, 8] := ls_Rcrd[8];
              cxGBubinStt.DataController.Values[iRow, 9] := ls_Rcrd[9];
              cxGBubinStt.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[10]);
              cxGBubinStt.DataController.Values[iRow, 11] := ls_Rcrd[11];
              cxGBubinStt.DataController.Values[iRow, 12] := ls_Rcrd[12];
              cxGBubinStt.DataController.Values[iRow, 13] := ls_Rcrd[13];
              cxGBubinStt.DataController.Values[iRow, 14] := ls_Rcrd[14];
              cxGBubinStt.DataController.Values[iRow, 15] := ls_Rcrd[15];
              cxGBubinStt.DataController.Values[iRow, 16] := ls_Rcrd[16];
              cxGBubinStt.DataController.Values[iRow, 17] := ls_Rcrd[17];
              cxGBubinStt.DataController.Values[iRow, 18] := ls_Rcrd[18];
              cxGBubinStt.DataController.Values[iRow, 19] := ls_Rcrd[19];
              cxGBubinStt.DataController.Values[iRow, 20] := ls_Rcrd[20];
              cxGBubinStt.DataController.Values[iRow, 21] := ls_Rcrd[21];
              cxGBubinStt.DataController.Values[iRow, 22] := ls_Rcrd[22];
              cxGBubinStt.DataController.Values[iRow, 23] := ls_Rcrd[23];
              cxGBubinStt.DataController.Values[iRow, 24] := ls_Rcrd[24];
              cxGBubinStt.DataController.Values[iRow, 25] := inttostr(StrToIntDef(ls_Rcrd[25],0));
              cxGBubinStt.DataController.Values[iRow, 26] := inttostr(StrToIntDef(ls_Rcrd[26],0));
              cxGBubinStt.DataController.Values[iRow, 27] := ls_Rcrd[27];
              cxGBubinStt.DataController.Values[iRow, 28] := ls_Rcrd[28];
              cxGBubinStt.DataController.Values[iRow, 29] := ls_Rcrd[29];
              cxGBubinStt.DataController.Values[iRow, 30] := ls_Rcrd[30];
              cxGBubinStt.DataController.Values[iRow, 31] := ls_Rcrd[31];
              cxGBubinStt.DataController.Values[iRow, 32] := ls_Rcrd[32];
              cxGBubinStt.DataController.Values[iRow, 33] := ls_Rcrd[33];
              cxGBubinStt.DataController.Values[iRow, 34] := ls_Rcrd[34];
              cxGBubinStt.DataController.Values[iRow, 35] := ls_Rcrd[35];
              cxGBubinStt.DataController.Values[iRow, 36] := ls_Rcrd[36];
              cxGBubinStt.DataController.Values[iRow, 37] := ls_Rcrd[37];
              cxGBubinStt.DataController.Values[iRow, 38] := ls_Rcrd[38];
              cxGBubinStt.DataController.Values[iRow, 39] := ls_Rcrd[39];
              cxGBubinStt.DataController.Values[iRow, 40] := ls_Rcrd[40];
              cxGBubinStt.DataController.Values[iRow, 41] := ls_Rcrd[41];
              cxGBubinStt.DataController.Values[iRow, 42] := ls_Rcrd[42];
              cxGBubinStt.DataController.Values[iRow, 43] := ls_Rcrd[43];
              cxGBubinStt.DataController.Values[iRow, 44] := ls_Rcrd[45];
            end;
          Except
            ls_Rcrd.Free;
            Screen.Cursor := crDefault;
            btBubinSttSearch.Enabled := True;
            cxGBubinStt.EndUpdate;
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
          end;
          ls_Rcrd.Free;
          Screen.Cursor := crDefault;
          btBubinSttSearch.Enabled := True;
          cxGBubinStt.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';
        end;
      end else
      begin
        btBubinSttSearch.Enabled := True;
        Screen.Cursor := crDefault;
      end;
    finally
      btBubinSttSearch.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  end;
end;

procedure TFrm_CUTB3.proc_init;
var
  i: Integer;
  slHidn: TStringList;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;
  cxDtStBubinStt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEdBubinStt.Date := cxDtStBubinStt.Date + 1;

  chkBubinSttOrdFinish.Checked := True;
  cbBubinSttCondition.ItemIndex := 0;
  chkBubinSttTotal.Checked := True;
  chkBubinSttPayTotal.Checked := True;
  cxGBubinStt.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxGBubinStt.ColumnCount - 1 do
		cxGBubinStt.Columns[i].DataBinding.ValueType := 'String';

  try
    cxChkTitle.Tag := 1;
    slHidn := TStringList.Create;
    ln_Env := TIniFile.Create(ENVPATHFILE);
    ln_env.ReadSection('ACCBubinList', slHidn);
    cxGBubinStt.BeginUpdate;
    for i := 0 to 30 do
    begin
      sTemp := cxChkTitle.Properties.Items[i].Description;
      if slHidn.IndexOf(sTemp) = -1 then
      begin
        cxChkTitle.SetItemState(i, cbsChecked);
        cxGBubinStt.Bands[i].Visible := True;
      end else
      begin
        cxChkTitle.SetItemState(i, cbsUnchecked);
        cxGBubinStt.Bands[i].Visible := False;
      end;
    end;
    FreeAndNil(slHidn);
    FreeAndNil(ln_env);
    cxGBubinStt.EndUpdate;
    cxChkTitle.Tag := 0;
    cxCheckBox1.Tag := 1;
    cxCheckBox1.Checked := False;
    cxCheckBox1.Tag := 0;
    cxRadioButton8.Checked := True;
  except

  end;
end;

procedure TFrm_CUTB3.btBubinSttSearchClick(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	btBubinSttSearch.Enabled := False;
  cxGBubinStt.DataController.SetRecordCount(0);
  proc_bubinSttSearch;
end;

procedure TFrm_CUTB3.proc_recieve(slList: TStringList);
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
        btBubinSttSearch.Enabled := True;
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
          1:
            begin
              cxGBubinStt.BeginUpdate;
              chkBubinStt.Checked := False;
              cxGBubinStt.DataController.SetRecordCount(0);

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
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
											ls_Rcrd.Insert(0, 'n');
                      iRow := cxGBubinStt.DataController.AppendRecord;
                      // 1 Record 추가
                      ls_Rcrd.Insert(0, IntToStr(iRow + 1));
                      sTemp := ls_Rcrd[11];
                      if sTemp <> '' then
                        ls_Rcrd[11] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
                      sTemp := ls_Rcrd[21];
                      if sTemp <> '' then
                        ls_Rcrd[21] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
                      sTemp := ls_Rcrd[22];
                      if StrToFloatDef(sTemp, -9) = -9 then
                        ls_Rcrd[22] := '0.0';
                      cxGBubinStt.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      cxGBubinStt.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      cxGBubinStt.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      cxGBubinStt.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      cxGBubinStt.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      cxGBubinStt.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      cxGBubinStt.DataController.Values[iRow, 6] := ls_Rcrd[6];
                      cxGBubinStt.DataController.Values[iRow, 7] := ls_Rcrd[7];
                      cxGBubinStt.DataController.Values[iRow, 8] := ls_Rcrd[8];
                      cxGBubinStt.DataController.Values[iRow, 9] := ls_Rcrd[9];
                      cxGBubinStt.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[10]);
                      cxGBubinStt.DataController.Values[iRow, 11] := ls_Rcrd[11];
                      cxGBubinStt.DataController.Values[iRow, 12] := ls_Rcrd[12];
                      cxGBubinStt.DataController.Values[iRow, 13] := ls_Rcrd[13];
                      cxGBubinStt.DataController.Values[iRow, 14] := ls_Rcrd[14];
                      cxGBubinStt.DataController.Values[iRow, 15] := ls_Rcrd[15];
                      cxGBubinStt.DataController.Values[iRow, 16] := ls_Rcrd[16];
                      cxGBubinStt.DataController.Values[iRow, 17] := ls_Rcrd[17];
                      cxGBubinStt.DataController.Values[iRow, 18] := ls_Rcrd[18];
                      cxGBubinStt.DataController.Values[iRow, 19] := ls_Rcrd[19];
                      cxGBubinStt.DataController.Values[iRow, 20] := ls_Rcrd[20];
                      cxGBubinStt.DataController.Values[iRow, 21] := ls_Rcrd[21];
                      cxGBubinStt.DataController.Values[iRow, 22] := ls_Rcrd[22];
                      cxGBubinStt.DataController.Values[iRow, 23] := ls_Rcrd[23];
                      cxGBubinStt.DataController.Values[iRow, 24] := ls_Rcrd[24];
											cxGBubinStt.DataController.Values[iRow, 25] := inttostr(StrToIntDef(ls_Rcrd[25],0));
											cxGBubinStt.DataController.Values[iRow, 26] := inttostr(StrToIntDef(ls_Rcrd[26],0));
                      cxGBubinStt.DataController.Values[iRow, 27] := ls_Rcrd[27];
                      cxGBubinStt.DataController.Values[iRow, 28] := ls_Rcrd[28];
                      cxGBubinStt.DataController.Values[iRow, 29] := ls_Rcrd[29];
                      cxGBubinStt.DataController.Values[iRow, 30] := ls_Rcrd[30];
                      cxGBubinStt.DataController.Values[iRow, 31] := ls_Rcrd[31];
                      cxGBubinStt.DataController.Values[iRow, 32] := ls_Rcrd[32];
                      cxGBubinStt.DataController.Values[iRow, 33] := ls_Rcrd[33];
                      cxGBubinStt.DataController.Values[iRow, 34] := ls_Rcrd[34];
                      cxGBubinStt.DataController.Values[iRow, 35] := ls_Rcrd[35];
                      cxGBubinStt.DataController.Values[iRow, 36] := ls_Rcrd[36];
                      cxGBubinStt.DataController.Values[iRow, 37] := ls_Rcrd[37];
                      cxGBubinStt.DataController.Values[iRow, 38] := ls_Rcrd[38];
                      cxGBubinStt.DataController.Values[iRow, 39] := ls_Rcrd[39];
                      cxGBubinStt.DataController.Values[iRow, 40] := ls_Rcrd[40];
                      cxGBubinStt.DataController.Values[iRow, 41] := ls_Rcrd[41];
                      cxGBubinStt.DataController.Values[iRow, 42] := ls_Rcrd[42];
                      cxGBubinStt.DataController.Values[iRow, 43] := ls_Rcrd[43];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              Screen.Cursor := crDefault;
              btBubinSttSearch.Enabled := True;
              cxGBubinStt.EndUpdate;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
        end;
      end else
      begin
        btBubinSttSearch.Enabled := True;
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      btBubinSttSearch.Enabled := True;
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    btBubinSttSearch.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTB3.FormCreate(Sender: TObject);
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

  cxGBubinStt.Columns[0].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[1].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[2].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[3].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[4].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[5].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[6].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[7].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[8].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[9].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[10].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[11].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[12].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[13].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[14].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[15].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[16].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[17].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[18].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[19].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[20].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[21].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[22].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[23].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[24].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[25].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[26].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[27].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[28].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[29].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[30].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[31].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[32].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[33].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[34].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[35].DataBinding.ValueType := 'Currency';
  cxGBubinStt.Columns[36].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[37].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[38].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[39].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[40].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[41].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[42].DataBinding.ValueType := 'String';
  cxGBubinStt.Columns[43].DataBinding.ValueType := 'String';
  // 2010.12.20
  cxGBubinStt.DataController.SetRecordCount(0);
end;

procedure TFrm_CUTB3.FormDestroy(Sender: TObject);
begin
  Frm_CUTB3 := Nil;
end;

procedure TFrm_CUTB3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTB3.proc_BubinStt_Select(iRow: Integer);
begin
  if iRow >= 0 then
  begin
    if ( Not Assigned(Frm_CUT019) ) Or ( Frm_CUT019 = Nil ) then Frm_CUT019 := TFrm_CUT019.Create(Nil);
    Frm_CUT019.lbSosokCaption.Caption := cxGBubinStt.DataController.Values[iRow, 39];
    Frm_CUT019.cxlbConfSlip.Caption := cxGBubinStt.DataController.Values[iRow, 4];
    Frm_CUT019.cxlbFirstTime.Caption := cxGBubinStt.DataController.Values[iRow, 11];
    Frm_CUT019.cxlbFinish.Caption := cxGBubinStt.DataController.Values[iRow, 21];

    if cxGBubinStt.DataController.Values[iRow, 3] = '후불' then
      Frm_CUT019.chkBubinSttPayAfter.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 3] = '외상' then
      Frm_CUT019.chkBubinSttPayTick.Checked := True
    else Frm_CUT019.chkBubinSttPayCash.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 2] = '취소' then
      Frm_CUT019.chkBubinSttOrdCancel.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 2] = '문의' then
      Frm_CUT019.chkBubinSttOrdReq.Checked := True
    else
      Frm_CUT019.chkBubinSttOrdFinish.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 5] = '완료' then
      Frm_CUT019.chkBubinSttFinish.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 5] = '미정산' then
      Frm_CUT019.chkBubinSttNotFinish.Checked := True
    else if cxGBubinStt.DataController.Values[iRow, 5] = '개인정산' then
      Frm_CUT019.chkBubinSttNotBubin.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 6] = '가능' then
      Frm_CUT019.chkBubinSttWebView.Checked := True
    else
      Frm_CUT019.chkBubinSttWebViewNo.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 37] = 'YES' then
    begin
      Frm_CUT019.cxRadioButton1.Checked := True;
      Frm_CUT019.Panel8.Color := $00F3D9BE;
      Frm_CUT019.Panel8.Enabled := False;
    end
    else if cxGBubinStt.DataController.Values[iRow, 37] = '서명대체' then
    begin
      Frm_CUT019.Panel8.Enabled := True;
      Frm_CUT019.Panel8.Color := clWhite;
      Frm_CUT019.cxRadioButton3.checked := True;
    end
    else
    begin
      Frm_CUT019.cxRadioButton2.Checked := True;
      Frm_CUT019.Panel8.Color := clWhite;
      Frm_CUT019.Panel8.Enabled := True;
    end;

    if cxGBubinStt.DataController.Values[iRow, 38] = '승인' then
      Frm_CUT019.chkBubinSttAuth.Checked := True
    else
      Frm_CUT019.chkBubinSttNotAuth.Checked := True;

    if cxGBubinStt.DataController.Values[iRow, 43] = 'n' then
      Frm_CUT019.cxRadioButton5.Checked := True
    else
      Frm_CUT019.cxRadioButton4.Checked := True;

    if Frm_CUT019.cbBubinSttWether.Properties.Items.IndexOf(cxGBubinStt.DataController.Values[iRow, 44]) > -1 then
      Frm_CUT019.cbBubinSttWether.ItemIndex := Frm_CUT019.cbBubinSttWether.Properties.Items.IndexOf(cxGBubinStt.DataController.Values[iRow, 44]);

    Frm_CUT019.cxlbuser.Text := cxGBubinStt.DataController.Values[iRow, 9];
    Frm_CUT019.cxlbCuTel.Text := cxGBubinStt.DataController.Values[iRow, 10];
    Frm_CUT019.cxlbBubin.Caption := cxGBubinStt.DataController.Values[iRow, 7] + ' / ' + cxGBubinStt.DataController.Values[iRow, 8];
    Frm_CUT019.cxtStartAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 15];
    Frm_CUT019.lblStartAreaName1.Text := cxGBubinStt.DataController.Values[iRow, 12];
    Frm_CUT019.lblStartAreaName2.Text := cxGBubinStt.DataController.Values[iRow, 13];
    Frm_CUT019.lblStartAreaName3.Text := cxGBubinStt.DataController.Values[iRow, 14];

    Frm_CUT019.cxtEndAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 19];
    Frm_CUT019.lblEndAreaName1.Text := cxGBubinStt.DataController.Values[iRow, 16];
    Frm_CUT019.lblEndAreaName2.Text := cxGBubinStt.DataController.Values[iRow, 17];
    Frm_CUT019.lblEndAreaName3.Text := cxGBubinStt.DataController.Values[iRow, 18];
    Frm_CUT019.cxtViaAreaDetail.Text := cxGBubinStt.DataController.Values[iRow, 42];

    Frm_CUT019.cxlbWkName.Caption := cxGBubinStt.DataController.Values[iRow, 40];
    Frm_CUT019.cxlbWkSabun.Caption := cxGBubinStt.DataController.Values[iRow, 41];

    Frm_CUT019.cxlbCharge.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 25]);
    Frm_CUT019.cxtDis.Text := cxGBubinStt.DataController.Values[iRow, 22];
    Frm_CUT019.cxlbCommission.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 26]);
    Frm_CUT019.cxlbRealCharge.Caption := FormatFloat('#,##0', cxGBubinStt.DataController.Values[iRow, 27]);
    Frm_CUT019.cxtBaseCharge.Text := cxGBubinStt.DataController.Values[iRow, 29];
    Frm_CUT019.cxtWaitTime.Text := cxGBubinStt.DataController.Values[iRow, 20];
    Frm_CUT019.cxtWaitCharge.Text := cxGBubinStt.DataController.Values[iRow, 31];
    Frm_CUT019.cxtPassCharge.Text := cxGBubinStt.DataController.Values[iRow, 30];
    Frm_CUT019.cxtAddCharge.Text := cxGBubinStt.DataController.Values[iRow, 28];
    Frm_CUT019.meoInfo1.Text := cxGBubinStt.DataController.Values[iRow, 23];
    Frm_CUT019.meoInfo2.Text := cxGBubinStt.DataController.Values[iRow, 24];
    Frm_CUT019.cxtCharge1.Text := cxGBubinStt.DataController.Values[iRow, 32];
    Frm_CUT019.cxtTax.Text := cxGBubinStt.DataController.Values[iRow, 33];
    Frm_CUT019.cxtEtc.Text := cxGBubinStt.DataController.Values[iRow, 34];
    Frm_CUT019.cxtSum.Text := cxGBubinStt.DataController.Values[iRow, 35];
    Frm_CUT019.meoEtc.Text := cxGBubinStt.DataController.Values[iRow, 36];
    Frm_CUT019.Show;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands1HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  if chkBubinStt.Checked then
  begin
    chkBubinStt.Checked := False;
  end
  else
  begin
    chkBubinStt.Checked := True;
  end;
  cxGBubinStt.BeginUpdate;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if chkBubinStt.Checked then
      cxGBubinStt.DataController.Values[i, 1] := '1'
    else
      cxGBubinStt.DataController.Values[i, 1] := '0';
  end;
  cxGBubinStt.EndUpdate;
end;

procedure TFrm_CUTB3.btBubinSttPrintClick(Sender: TObject);
var
  slList: TStringList;
  sUrl, sSlip: string;
  iRow, i: Integer;
begin
  lbbubinAccPrintList.Items.Clear;
  slList := TStringList.Create;
  try
    slList.Clear;
    for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
    begin
      if (cxGBubinStt.DataController.Values[i, 1] = '1') then
      begin
        sSlip := cxGBubinStt.DataController.Values[i, 4];
        if slList.Count <= 2 then
          slList.Add(sSlip)
        else
        begin
          slList.CommaText := slList.CommaText + '/3';
          lbbubinAccPrintList.Items.Add(slList.CommaText);
          slList.Clear;
          slList.Add(sSlip);
        end;
      end;
    end;
    if slList.Count > 0 then
    begin
      slList.CommaText := slList.CommaText + '/' + IntToStr(slList.Count);
      lbbubinAccPrintList.Items.Add(slList.CommaText);
    end;
    if lbbubinAccPrintList.Items.Count > 0 then
    begin
      iRow := lbbubinAccPrintList.Items.count - 1;
      cxcbBubinAccPage.Properties.Items.Clear;
      for i := 0 to iRow do
        cxcbBubinAccPage.Properties.Items.Add(IntToStr(i + 1) + ' Page');
      cxcbBubinAccPage.ItemIndex := 0;

      if (GS_PRJ_AREA = 'S') then sUrl := Format(GS_BUBIN_URL_PRINT, [lbbubinAccPrintList.Items.Strings[0]]) else
      if (GS_PRJ_AREA = 'O') then sUrl := Format(GS_BUBIN_URL_PRINT_JI, [lbbubinAccPrintList.Items.Strings[0]]);

      WebBrowser1.Navigate(sUrl);
      cxLabel7.Caption := IntToStr(lbbubinAccPrintList.Items.count);
      pnlBubinAccPrt.Left := (Self.Width - pnlBubinAccPrt.Width) div 2;
      pnlBubinAccPrt.Left := ((Self.Height - pnlBubinAccPrt.Height) div 2) -
        30;
      pnlBubinAccPrt.Visible := True;
      pnlBubinAccPrt.BringToFront;
    end
    else
    begin
      GMessagebox('선택된 오더가 없습니다.', CDMSI);
    end;
  finally
    slList.Free;
  end;
end;

procedure TFrm_CUTB3.sb_Cancel_CanClick(Sender: TObject);
begin
  pnlBubinAccPrt.Visible := False;
end;

procedure TFrm_CUTB3.sb_Cancel_commClick(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER);
    GMessagebox('인쇄를 요청했습니다.', CDMSI);
  finally
  end;
end;

procedure TFrm_CUTB3.btBubinSttSelSttClick(Sender: TObject);
var
  i, iRow, iSupply, iCommission: Integer;
  sCharge, sAddCharge, sBaseCharge, sPassCharge, sWaitCharge, sCommission, sSum, sEtcCharge, sSupply, sTax,
  sSlip, ls_TxQry, ls_TxLoad, rv_str, bTax, sQueryTemp: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_rxxml: wideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  iRow := 0;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if (cxGBubinStt.DataController.Values[i, 1] = '1') and
      (cxGBubinStt.DataController.Values[i,
      5] = '미정산') then
    begin
      Inc(iRow);
    end;
  end;
  cxLabel4.Caption := IntToStr(iRow);
  cxLabel5.Caption := '0';
  Gauge1.Max := iRow;
  Gauge1.Position := 0;
  iRow := 0;
  if Gauge1.Max > 1 then
  begin
    pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
    pnl_BubinAccStatus.Top := 150;
    pnl_BubinAccStatus.Visible := True;
    pnl_BubinAccStatus.BringToFront;
  end;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i,5] = '미정산') then
    begin
      Application.ProcessMessages;
      sSlip := cxGBubinStt.DataController.Values[i, 4];
      sCharge := cxGBubinStt.DataController.Values[i, 25]; //접수요금
      sAddCharge := cxGBubinStt.DataController.Values[i, 28]; //보정요금
      sPassCharge := cxGBubinStt.DataController.Values[i, 30]; //경유요금
      sWaitCharge := cxGBubinStt.DataController.Values[i, 31]; //대기요금
      sBaseCharge := IntToStr(StrToIntDef(sCharge, 0) - StrToIntDef(sAddCharge, 0)
                     - StrToIntDef(sPassCharge, 0) - StrToIntDef(sWaitCharge, 0));
      sCommission := cxGBubinStt.DataController.Values[i, 26]; //기사수수료
      iSupply := StrToIntDef(sBaseCharge, 0) + StrToIntDef(sPassCharge, 0) + StrToIntDef(sWaitCharge, 0);
      if bTax <> 'n' then
        sTax := FloatToStr(iSupply * 0.1)
      else
        sTax := '0';
      sSupply := IntToStr(iSupply);
      sEtcCharge := cxGBubinStt.DataController.Values[i, 34];
      bTax := cxGBubinStt.DataController.Values[i, 43];
      sSum := IntToStr(iSupply + StrToIntDef(sTax, 0) + StrToIntDef(sEtcCharge, 0));
      //QUERY.XML 전문을 사용하여 업데이트 한다.
      ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
      fGet_BlowFish_Query(GSQ_CUST_BUBIN_ACCUPDATE, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [sSupply, sTax, sBaseCharge, sSlip]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BUBINACCUPDATE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  Inc(iRow);
                  cxLabel5.Caption := IntToStr(iRow);
                  Gauge1.Position := iRow;
                  cxGBubinStt.DataController.Values[i, 1] := '0';
                  cxGBubinStt.DataController.Values[i, 5] := '정산';
                  cxGBubinStt.DataController.Values[i, 29] := sBaseCharge;
                  cxGBubinStt.DataController.Values[i, 32] := sSupply;
                  cxGBubinStt.DataController.Values[i, 33] := sTax;
                  cxGBubinStt.DataController.Values[i, 35] := sSum;
                end;
              end;
            finally
              xdom := Nil;
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
        Frm_Flash.Hide;
      end;
    end;
    cxGBubinStt.DataController.Values[i, 1] := '0';
  end;
  if (cxLabel4.Caption <> cxLabel5.Caption) then
  begin
    GMessagebox('실패한 정산이 있습니다.' + #13#10 + '다시한번 일괄정산을 눌러주세요', CDMSE);
  end
  else
  begin
    GMessagebox('일괄 정산을 완료 하였습니다.', CDMSI);
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUTB3.cxButton1Click(Sender: TObject);
var
  i, iRow: Integer;
  sSlip, ls_TxQry, ls_TxLoad, rv_str, sQueryTemp : string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_rxxml: wideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  iRow := 0;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i,6] = '불가') and (cxGBubinStt.DataController.Values[i, 5] = '완료') then
    begin
      Inc(iRow);
    end;
  end;
  cxLabel4.Caption := IntToStr(iRow);
  cxLabel5.Caption := '0';
  Gauge1.Max := iRow;
  Gauge1.Position := 0;
  iRow := 0;
  if Gauge1.Max > 1 then
  begin
    pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
    pnl_BubinAccStatus.Top := 150;
    pnl_BubinAccStatus.Visible := True;
    pnl_BubinAccStatus.BringToFront;
  end;
  for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
  begin
    if (cxGBubinStt.DataController.Values[i, 1] = '1') and (cxGBubinStt.DataController.Values[i, 6] = '불가') and (cxGBubinStt.DataController.Values[i, 5] = '완료') then
    begin
      Application.ProcessMessages;
      sSlip := cxGBubinStt.DataController.Values[i, 4];
      //QUERY.XML 전문을 사용하여 업데이트 한다.
      ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
      fGet_BlowFish_Query(GSQ_CUST_BUBIN_ACCWEBVIEWUPDATE, sQueryTemp);
      ls_TxQry := Format(sQueryTemp, [sSlip]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'ACCWEBVIEWUPDATE', [rfReplaceAll]);
      ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

      slReceive := TStringList.Create;
      try
        if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
        begin
          rv_str := slReceive[0];
          if rv_str <> '' then
          begin
            ls_rxxml := rv_str;
            Application.ProcessMessages;
            xdom := ComsDomDocument.Create;
            try
              if xdom.loadXML(ls_rxxml) then
              begin
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  Inc(iRow);
                  cxLabel5.Caption := IntToStr(iRow);
                  Gauge1.Position := iRow;
                  cxGBubinStt.DataController.Values[i, 1] := '0';
                  cxGBubinStt.DataController.Values[i, 6] := '가능';
                end;
              end;
            finally
              xdom := Nil;
            end;
          end;
        end;
      finally
        FreeAndNil(slReceive);
        Frm_Flash.Hide;
      end;
    end;
    cxGBubinStt.DataController.Values[i, 1] := '0';
  end;
  if (cxLabel4.Caption <> cxLabel5.Caption) then
  begin
    GMessagebox('실패한 웹보기 권한이 있습니다.' + #13#10 +
      '다시한번 웹보기 권한주기 버튼을 눌러주세요', CDMSE);
  end
  else
  begin
    GMessagebox('완료 하였습니다.', CDMSI);
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUTB3.btBubinSttExcelClick(Sender: TObject);
begin
	if cxGBubinStt.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

  Frm_Main.sgExcel := '고객_법인일일정산.xls';
  Frm_Main.sgRpExcel := Format('법인>법인일일정산]%s건/%s', [GetMoneyStr(cxGBubinStt.DataController.RecordCount), FExcelDownBubinDaily]);
  Frm_Main.cxGridExcel := cxGrid7;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUTB3.cxGBubinSttCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iRow: Integer;
begin
  iRow := cxGBubinStt.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  proc_BubinStt_Select(iRow);
end;

procedure TFrm_CUTB3.cxcbBubinAccPageSelect(Sender: TObject);
var
  sUrl: string;
  iIdx: integer;
begin
  iIdx := cxcbBubinAccPage.ItemIndex;

  if (GS_PRJ_AREA = 'S') then sUrl := Format(GS_BUBIN_URL_PRINT, [lbbubinAccPrintList.Items.Strings[0]]) else
  if (GS_PRJ_AREA = 'O') then sUrl := Format(GS_BUBIN_URL_PRINT_JI, [lbbubinAccPrintList.Items.Strings[0]]);

  WebBrowser1.Navigate(sUrl);
end;

procedure TFrm_CUTB3.cxButton3Click(Sender: TObject);
var
  IE: variant;
  ls_URL, stmp, sUrl: string;
begin
  IE := CreateOleObject('InternetExplorer.Application');
  IE.left := 0;
  IE.top := 0;
  IE.Width := Screen.Width;
  IE.Height := Screen.Height;

  IE.Navigate(GS_BUBIN_URL);

  if (GS_PRJ_AREA = 'S') then	IE.Navigate(GS_BUBIN_URL) else
  if (GS_PRJ_AREA = 'O') then IE.Navigate(GS_BUBIN_URL_JI);

  IE.Visible := true;
end;

procedure TFrm_CUTB3.cxBtnPrivClick(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_PRINTPREVIEW, OLECMDEXECOPT_DONTPROMPTUSER);
  finally
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands0HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 0 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[0].SortOrder = soNone) or
      (cxGBubinStt.Columns[0].SortOrder =
			soDescending) then
      cxGBubinStt.Columns[0].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[0].SortOrder = soAscending then
      cxGBubinStt.Columns[0].SortOrder := soDescending;
    cxGBubinStt.Columns[0].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 2 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[2].SortOrder = soNone) or
      (cxGBubinStt.Columns[2].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[2].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[2].SortOrder = soAscending then
      cxGBubinStt.Columns[2].SortOrder := soDescending;
    cxGBubinStt.Columns[2].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands3HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 3 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[3].SortOrder = soNone) or
      (cxGBubinStt.Columns[3].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[3].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[3].SortOrder = soAscending then
      cxGBubinStt.Columns[3].SortOrder := soDescending;
    cxGBubinStt.Columns[3].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands4HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 4 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[4].SortOrder = soNone) or
      (cxGBubinStt.Columns[4].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[4].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[4].SortOrder = soAscending then
      cxGBubinStt.Columns[4].SortOrder := soDescending;
    cxGBubinStt.Columns[4].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands6HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 5 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[5].SortOrder = soNone) or
      (cxGBubinStt.Columns[5].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[5].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[5].SortOrder = soAscending then
      cxGBubinStt.Columns[5].SortOrder := soDescending;
    cxGBubinStt.Columns[5].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands10HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 6 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[6].SortOrder = soNone) or
      (cxGBubinStt.Columns[6].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[6].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[6].SortOrder = soAscending then
      cxGBubinStt.Columns[6].SortOrder := soDescending;
    cxGBubinStt.Columns[6].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands7HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
	try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 7 then
      begin
				cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[7].SortOrder = soNone) or
      (cxGBubinStt.Columns[7].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[7].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[7].SortOrder = soAscending then
			cxGBubinStt.Columns[7].SortOrder := soDescending;
		cxGBubinStt.Columns[7].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands8HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 8 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[8].SortOrder = soNone) or
      (cxGBubinStt.Columns[8].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[8].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[8].SortOrder = soAscending then
      cxGBubinStt.Columns[8].SortOrder := soDescending;
    cxGBubinStt.Columns[8].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands9HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 9 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[9].SortOrder = soNone) or
      (cxGBubinStt.Columns[9].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[9].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[9].SortOrder = soAscending then
      cxGBubinStt.Columns[9].SortOrder := soDescending;
    cxGBubinStt.Columns[9].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands11HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 10 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[10].SortOrder = soNone) or
      (cxGBubinStt.Columns[10].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[10].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[10].SortOrder = soAscending then
      cxGBubinStt.Columns[10].SortOrder := soDescending;
    cxGBubinStt.Columns[10].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands12HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 11 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[11].SortOrder = soNone) or
      (cxGBubinStt.Columns[11].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[11].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[11].SortOrder = soAscending then
      cxGBubinStt.Columns[11].SortOrder := soDescending;
    cxGBubinStt.Columns[11].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands13HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 12 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[12].SortOrder = soNone) or
      (cxGBubinStt.Columns[12].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[12].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[12].SortOrder = soAscending then
      cxGBubinStt.Columns[12].SortOrder := soDescending;
    cxGBubinStt.Columns[12].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands14HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 13 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[13].SortOrder = soNone) or
      (cxGBubinStt.Columns[13].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[13].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[13].SortOrder = soAscending then
      cxGBubinStt.Columns[13].SortOrder := soDescending;
    cxGBubinStt.Columns[13].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands15HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 14 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[14].SortOrder = soNone) or
      (cxGBubinStt.Columns[14].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[14].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[14].SortOrder = soAscending then
      cxGBubinStt.Columns[14].SortOrder := soDescending;
    cxGBubinStt.Columns[14].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands16HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 15 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[15].SortOrder = soNone) or
      (cxGBubinStt.Columns[15].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[15].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[15].SortOrder = soAscending then
      cxGBubinStt.Columns[15].SortOrder := soDescending;
    cxGBubinStt.Columns[15].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands17HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 16 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[16].SortOrder = soNone) or
      (cxGBubinStt.Columns[16].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[16].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[16].SortOrder = soAscending then
      cxGBubinStt.Columns[16].SortOrder := soDescending;
    cxGBubinStt.Columns[16].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands18HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 17 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[17].SortOrder = soNone) or
      (cxGBubinStt.Columns[17].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[17].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[17].SortOrder = soAscending then
      cxGBubinStt.Columns[17].SortOrder := soDescending;
    cxGBubinStt.Columns[17].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands19HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 18 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[18].SortOrder = soNone) or
      (cxGBubinStt.Columns[18].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[18].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[18].SortOrder = soAscending then
      cxGBubinStt.Columns[18].SortOrder := soDescending;
    cxGBubinStt.Columns[18].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands20HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 19 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[19].SortOrder = soNone) or
      (cxGBubinStt.Columns[19].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[19].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[19].SortOrder = soAscending then
      cxGBubinStt.Columns[19].SortOrder := soDescending;
    cxGBubinStt.Columns[19].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands21HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 20 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[20].SortOrder = soNone) or
      (cxGBubinStt.Columns[20].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[20].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[20].SortOrder = soAscending then
      cxGBubinStt.Columns[20].SortOrder := soDescending;
    cxGBubinStt.Columns[20].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands22HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 21 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[21].SortOrder = soNone) or
      (cxGBubinStt.Columns[21].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[21].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[21].SortOrder = soAscending then
      cxGBubinStt.Columns[21].SortOrder := soDescending;
    cxGBubinStt.Columns[21].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands23HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 22 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[22].SortOrder = soNone) or
      (cxGBubinStt.Columns[22].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[22].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[22].SortOrder = soAscending then
      cxGBubinStt.Columns[22].SortOrder := soDescending;
    cxGBubinStt.Columns[22].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands24HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 23 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[23].SortOrder = soNone) or
      (cxGBubinStt.Columns[23].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[23].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[23].SortOrder = soAscending then
      cxGBubinStt.Columns[23].SortOrder := soDescending;
    cxGBubinStt.Columns[23].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands25HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 24 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[24].SortOrder = soNone) or
      (cxGBubinStt.Columns[24].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[24].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[24].SortOrder = soAscending then
      cxGBubinStt.Columns[24].SortOrder := soDescending;
    cxGBubinStt.Columns[24].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands27HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 25 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[25].SortOrder = soNone) or
      (cxGBubinStt.Columns[25].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[25].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[25].SortOrder = soAscending then
      cxGBubinStt.Columns[25].SortOrder := soDescending;
    cxGBubinStt.Columns[25].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands28HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 26 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[26].SortOrder = soNone) or
      (cxGBubinStt.Columns[26].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[26].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[26].SortOrder = soAscending then
      cxGBubinStt.Columns[26].SortOrder := soDescending;
    cxGBubinStt.Columns[26].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands29HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 27 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[27].SortOrder = soNone) or
      (cxGBubinStt.Columns[27].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[27].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[27].SortOrder = soAscending then
      cxGBubinStt.Columns[27].SortOrder := soDescending;
    cxGBubinStt.Columns[27].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands32HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 28 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[28].SortOrder = soNone) or
      (cxGBubinStt.Columns[28].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[28].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[28].SortOrder = soAscending then
      cxGBubinStt.Columns[28].SortOrder := soDescending;
    cxGBubinStt.Columns[28].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands33HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 29 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[29].SortOrder = soNone) or
      (cxGBubinStt.Columns[29].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[29].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[29].SortOrder = soAscending then
      cxGBubinStt.Columns[29].SortOrder := soDescending;
    cxGBubinStt.Columns[29].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands30HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 30 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[30].SortOrder = soNone) or
      (cxGBubinStt.Columns[30].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[30].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[30].SortOrder = soAscending then
      cxGBubinStt.Columns[30].SortOrder := soDescending;
    cxGBubinStt.Columns[30].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands31HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 31 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[31].SortOrder = soNone) or
      (cxGBubinStt.Columns[31].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[31].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[31].SortOrder = soAscending then
      cxGBubinStt.Columns[31].SortOrder := soDescending;
    cxGBubinStt.Columns[31].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands35HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 32 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[32].SortOrder = soNone) or
      (cxGBubinStt.Columns[32].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[32].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[32].SortOrder = soAscending then
      cxGBubinStt.Columns[32].SortOrder := soDescending;
    cxGBubinStt.Columns[32].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands36HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 33 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[33].SortOrder = soNone) or
      (cxGBubinStt.Columns[33].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[33].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[33].SortOrder = soAscending then
      cxGBubinStt.Columns[33].SortOrder := soDescending;
    cxGBubinStt.Columns[33].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands37HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 34 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[34].SortOrder = soNone) or
      (cxGBubinStt.Columns[34].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[34].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[34].SortOrder = soAscending then
      cxGBubinStt.Columns[34].SortOrder := soDescending;
    cxGBubinStt.Columns[34].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands38HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 35 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[35].SortOrder = soNone) or
      (cxGBubinStt.Columns[35].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[35].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[35].SortOrder = soAscending then
      cxGBubinStt.Columns[35].SortOrder := soDescending;
    cxGBubinStt.Columns[35].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands39HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 36 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[36].SortOrder = soNone) or
      (cxGBubinStt.Columns[36].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[36].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[36].SortOrder = soAscending then
      cxGBubinStt.Columns[36].SortOrder := soDescending;
    cxGBubinStt.Columns[36].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands41HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 37 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[37].SortOrder = soNone) or
      (cxGBubinStt.Columns[37].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[37].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[37].SortOrder = soAscending then
      cxGBubinStt.Columns[37].SortOrder := soDescending;
    cxGBubinStt.Columns[37].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands42HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 38 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[38].SortOrder = soNone) or
      (cxGBubinStt.Columns[38].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[38].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[38].SortOrder = soAscending then
      cxGBubinStt.Columns[38].SortOrder := soDescending;
    cxGBubinStt.Columns[38].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbBubinSttKeyNumber.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbBubinSttKeyNumber.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbBubinSttKeyNumber.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
  lbBubinSttCaption.Caption := sName;

  cxHdNo10.Text := sHdNo;
  cxBrNo10.Text := sBrNo;

  if cbBubinSttKeyNumber.Properties.Items.Count > 1 then
    cbBubinSttKeyNumber.Properties.Items.Insert(0, '전체');

  cbBubinSttKeyNumber.ItemIndex := 0;
  cbBubinSttKeyNumber.Tag := 0;
end;

procedure TFrm_CUTB3.cxButton4Click(Sender: TObject);
begin
  try
    WebBrowser1.ExecWB(OLECMDID_SAVEAS, OLECMDEXECOPT_PROMPTUSER);
  finally
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands45HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 40 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[40].SortOrder = soNone) or
      (cxGBubinStt.Columns[40].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[40].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[40].SortOrder = soAscending then
      cxGBubinStt.Columns[40].SortOrder := soDescending;
    cxGBubinStt.Columns[40].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands46HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 41 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[41].SortOrder = soNone) or
      (cxGBubinStt.Columns[41].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[41].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[41].SortOrder = soAscending then
      cxGBubinStt.Columns[41].SortOrder := soDescending;
    cxGBubinStt.Columns[41].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxGBubinSttBands47HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxGBubinStt.ColumnCount - 1 do
    begin
      if i <> 42 then
      begin
        cxGBubinStt.Columns[i].SortIndex := -1;
        cxGBubinStt.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxGBubinStt.Columns[42].SortOrder = soNone) or
      (cxGBubinStt.Columns[42].SortOrder =
      soDescending) then
      cxGBubinStt.Columns[42].SortOrder := soAscending
    else
      if cxGBubinStt.Columns[42].SortOrder = soAscending then
      cxGBubinStt.Columns[42].SortOrder := soDescending;
    cxGBubinStt.Columns[42].SortIndex := 0;
    cxGBubinStt.DataController.FocusedRowIndex := 0;
  except
    on e: exception do
    begin
      sTemp := 'Tfrm_CUT.cxGBubinSttBands0HeaderClick:' + e.Message;

      ShowMessage(sTemp);

      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTB3.cxChkTitlePropertiesChange(Sender: TObject);
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  try
    if TcxCheckComboBox(Sender).Tag = 1 then
      exit;
    ln_Env := TIniFile.Create(ENVPATHFILE);
    ln_env.EraseSection('ACCBubinList');
    cxGBubinStt.BeginUpdate;
    for i := 0 to 30 do
    begin
      sTemp := cxChkTitle.Properties.Items[i].Description;
      if cxChkTitle.GetItemState(i) = cbsUnchecked then
      begin
        ln_env.WriteString('ACCBubinList', sTemp, '1');
        cxGBubinStt.Bands[i].Visible := False;
        cxCheckBox1.Tag := 1;
        cxCheckBox1.Checked := False;
        cxCheckBox1.Tag := 0;
      end
      else
      begin
        cxGBubinStt.Bands[i].Visible := True;
      end;
    end;
    FreeAndNil(ln_env);
    cxGBubinStt.EndUpdate;
  except

  end;
end;

procedure TFrm_CUTB3.cxCheckBox1Click(Sender: TObject);
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  try
    if cxCheckBox1.Tag = 1 then
      exit;
    if cxCheckBox1.Checked then
    begin
      cxChkTitle.Tag := 1;
      ln_Env := TIniFile.Create(ENVPATHFILE);
      ln_env.EraseSection('ACCBubinList');
      cxGBubinStt.BeginUpdate;
      for i := 0 to 30 do
      begin
        cxGBubinStt.Bands[i].Visible := True;
        cxChkTitle.SetItemState(i, cbsChecked);
      end;
      cxChkTitle.Tag := 0;
      FreeAndNil(ln_env);
      cxGBubinStt.EndUpdate;
    end;
  except

  end;
end;

procedure TFrm_CUTB3.cxdBubinSttSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btBubinSttSearchClick(btBubinSttSearch);
end;

procedure TFrm_CUTB3.cbBubinSttKeyNumberPropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('법인업체 조회는 지사를 선택하셔야 합니다.', CDMSI);
    TcxComboBox(Sender).Tag := 1;
    TcxComboBox(Sender).ItemIndex := 0;
    TcxComboBox(Sender).Tag := 0;
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

  lbBubinSttCaption.Caption := sName;
end;

procedure TFrm_CUTB3.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

function TFrm_CUTB3.GetDeptCustomerCount(AHdNo, ABrNo,
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
    FreeAndNil(StrList);
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTB3.btnCloseClick(Sender: TObject);
var
  i: Integer;
begin
  if Gauge1.Max <> Gauge1.Position then
  begin
    if GMessagebox('아직 작업진행 중입니다.' + #13#10 +
      '이후 작업을 종료하시겠습니까?', CDMSQ) =
      IDOK then
    begin
      cxGBubinStt.BeginUpdate;
      for i := 0 to cxGBubinStt.DataController.RecordCount - 1 do
      begin
        cxGBubinStt.DataController.Values[i, 1] := '0';
      end;
      cxGBubinStt.EndUpdate;
      pnl_BubinAccStatus.Visible := False;
    end;
  end
  else
  begin
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUTB3.Label2Click(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate('http://www.callmaner.com/download/콜마너_고객등급변경신청서.xls');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
    end;
  end;
begin
  RunDownload;
end;

function TFrm_CUTB3.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStBubinStt;
  AEdDt := cxDtEdBubinStt;
end;

procedure TFrm_CUTB3.cxGroupBox2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTB3.cxGroupBox3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTB3.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
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

procedure TFrm_CUTB3.MenuItem10Click(Sender: TObject);
begin
  btBubinSttExcel.Click;
end;

end.

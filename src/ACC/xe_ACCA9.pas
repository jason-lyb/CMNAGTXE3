unit xe_ACCA9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  system.StrUtils, system.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_Structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_ACCA9 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel18: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGBA9: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA9: TcxLabel;
    cxDtStartA9: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA9: TcxDateEdit;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    btnDateA9: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA9: TcxTimeEdit;
    cxTeEndA9: TcxTimeEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel82: TcxLabel;
    cxLblBrCashA9: TcxLabel;
    cxLabel84: TcxLabel;
    cxLblSMCashA9: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    EdtChargeCashA9: TcxCurrencyEdit;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    BtnChargeA9: TcxButton;
    cxLabel80: TcxLabel;
    cxLabel91: TcxLabel;
    cxLblSMCnt1A9: TcxLabel;
    cxLblSMCnt2A9: TcxLabel;
    cxLabel95: TcxLabel;
    lbl1: TcxLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    GridA9: TcxGrid;
    GridA9DBTableView: TcxGridDBTableView;
    GridA9DBTableViewColumn1: TcxGridDBColumn;
    GridA9DBTableViewColumn2: TcxGridDBColumn;
    GridA9DBTableViewColumn3: TcxGridDBColumn;
    GridA9DBTableViewColumn4: TcxGridDBColumn;
    GridA9DBTableViewColumn5: TcxGridDBColumn;
    GridA9DBTableViewColumn6: TcxGridDBColumn;
    GridA9DBTableViewColumn7: TcxGridDBColumn;
    GridA9DBTableViewColumn8: TcxGridDBColumn;
    GridA9DBTableViewColumn9: TcxGridDBColumn;
    GridA9Level: TcxGridLevel;
    BtnSearch1A9: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA9Click(Sender: TObject);
    procedure btnDateA9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure BtnChargeA9Click(Sender: TObject);
    procedure BtnSearch1A9Click(Sender: TObject);
    procedure GridA9DBTableViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA9DBTableViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_SMS_Search;
    procedure proc_SMS_charge;
    procedure proc_init_smscharge;
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
	end;

var
  Frm_ACCA9: TFrm_ACCA9;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC04, xe_ACC05, xe_ACC03, xe_Flash;


procedure TFrm_ACCA9.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA9.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA9.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA9.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA9.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA9.proc_init;
begin
  proc_BrNameSet;

  cxDtStartA9.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA9.Date := cxDtStartA9.Date + 1;

  GridA9DBTableView.Columns[0].DataBinding.ValueType := 'Integer';
  GridA9DBTableView.Columns[1].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[2].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[3].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[4].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[5].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[6].DataBinding.ValueType := 'Currency';
  GridA9DBTableView.Columns[7].DataBinding.ValueType := 'String';
  GridA9DBTableView.Columns[8].DataBinding.ValueType := 'String';
  GridA9DBTableView.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA9.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA9.FormDestroy(Sender: TObject);
begin
  Frm_ACCA9 := NIl;
end;

procedure TFrm_ACCA9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA9.proc_BrNameSet;
begin
  lblSosokNameA9.Caption := GetSosokInfo;
end;

procedure TFrm_ACCA9.btnDateA9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA9.BtnSearch1A9Click(Sender: TObject);
begin
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('SMS캐쉬 충전내역은 지사를 선택하셔야 합니다.', CDMSI);
    proc_init_smscharge;
  end else
  begin
    cxGBA9.Enabled := True;
    proc_SMS_charge;
  end;
end;

procedure TFrm_ACCA9.BtnChargeA9Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxQry, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam, msg: string;
  ls_rxxml: WideString;
  i, iCnt, iIdx, iCash, iSms: Integer;
  asParam: array[1..3] of string;
  xdom: msDomDocument;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  iCash := StrToIntDef(Stringreplace(cxLblBrCashA9.Caption, ',', '', [rfReplaceAll]), 0);
  iSms  := StrToIntDef(Stringreplace(EdtChargeCashA9.Text, ',', '', [rfReplaceAll]), 0);

  if iSms = 0 then
  begin
    GMessagebox('0원은 충전할수 없습니다.', CDMSI);
    Exit;
  end;

  if iSms > iCash then
  begin
    GMessagebox('지사캐쉬보다 SMS충전캐쉬가 크면 안됩니다.', CDMSI);
    Exit;
  end;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');

  asParam[1] := GT_SEL_BRNO.BrNo;
  asParam[2] := IntToStr(iSms);
  asParam[3] := GT_USERIF.ID;
  sTemp := 'SMS_RECHARGE(?';
  iCnt := 3;
  for i := 1 to iCnt do
  begin
    sTemp := sTemp + ',?';
    sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i],
      [rfReplaceAll]);
  end;
  sTemp := sTemp + ')';

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'SMSCHARGE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  Screen.Cursor := crHandPoint;

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
          if ('0000' = ls_Msg_Err) then
          begin
            GMessagebox(sMsg, CDMSI);
            proc_SMS_Search;
            EdtChargeCashA9.Value := 0;
          end
          else
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        except
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요',
            CDMSI);
        end;
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    freeAndNil(slReceive);
  end;
end;

procedure TFrm_ACCA9.proc_init_smscharge;
begin
  cxLblSMCashA9.Caption := '';
  cxLblBrCashA9.Caption := '';
  cxLblSMCnt1A9.Caption := '0 원 / 건당  (일반SMS만 보낼때 전송가능건수 : 건)';
  cxLblSMCnt2A9.Caption := '0 원 / 건당  (광고SMS만 보낼때 전송가능건수 : 건)';
  EdtChargeCashA9.Value := 0;
  cxDtStartA9.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA9.Date := cxDtStartA9.Date + 1;
  cxGBA9.Enabled := False;
  GridA9DBTableView.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA9.proc_SMS_charge;
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str, msg: string;
  iCash, iCnt1, iCnt2, iValue1, iValue2: Double;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
      proc_init_smscharge;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('SMS캐쉬충전내역조회') then Exit;

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_SMS_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [GT_SEL_BRNO.BrNo]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    Screen.Cursor := crHandPoint;

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
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iCash   := StrToFloatDef(ls_Rcrd[0], 0);
                iValue1 := StrToFloatDef(ls_Rcrd[2], 0);
                iValue2 := StrToFloatDef(ls_Rcrd[3], 0);
                iCnt1 := iCash / iValue1;
                iCnt2 := iCash / iValue2;
                cxLblSMCashA9.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[0]));
                cxLblBrCashA9.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[1]));
                cxLblSMCnt1A9.Caption := ls_Rcrd[2] + ' 원 / 건당 (일반SMS만 보낼때 전송가능건수 : ' + FormatFloat('#,##0', iCnt1) + ' 건)';
                cxLblSMCnt2A9.Caption := ls_Rcrd[3] + ' 원 / 건당 (광고SMS만 보낼때 전송가능건수 : ' + FormatFloat('#,##0', iCnt2) + ' 건)';
              finally
                ls_Rcrd.Free;
              end;
              GridA9DBTableView.DataController.SetRecordCount(0);
              proc_SMS_Search;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      freeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACCA9.btnSearchA9Click(Sender: TObject);
var
  msg: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if (GT_USERIF.LV = '10') and (not IsPassedManagementEtc(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 정산관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;
  GridA9DBTableView.DataController.SetRecordCount(0);
  proc_SMS_Search;
end;

procedure TFrm_ACCA9.proc_SMS_Search;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  sWhere: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA9DBTableView.DataController.RecordCount > 0 then
    exit;

  if fGetChk_Search_HdBrNo('SMS캐쉬충전내역검색') then Exit;

  sWhere := ' AND BR_NO = ''' + GT_SEL_BRNO.BrNo + ''' ';

  if (cxDtStartA9.Text <> '') and (cxDtEndA9.Text <> '') then
    sWhere := sWhere + ' AND IN_DATE BETWEEN TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtStartA9.Date) +
      FormatDateTime('HHNNSS', cxTeStartA9.Time) + ''',''YYYYMMDDHH24MISS'') ' + ' AND TO_DATE('''
      + FormatDateTime('YYYYMMDD', cxDtEndA9.Date) + FormatDateTime('HHNNSS', cxTeEndA9.Time) +
      ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA9.Text <> '') and (cxDtEndA9.Text = '') then
    sWhere := sWhere + ' AND IN_DATE >= TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtStartA9.Date) +
      FormatDateTime('HHNNSS', cxTeStartA9.Time) + ''',''YYYYMMDDHH24MISS'') '
  else
  if (cxDtStartA9.Text = '') and (cxDtEndA9.Text <> '') then
    sWhere := sWhere + ' AND TO_DATE(''' + FormatDateTime('YYYYMMDD', cxDtEndA9.Date)
      + FormatDateTime('HHNNSS', cxTeEndA9.Time) + ''',''YYYYMMDDHH24MISS'') >= IN_DATE ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_ACC_SMS_CHARGE, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRSMSCHARGE', [rfReplaceAll]);
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
  end;
end;

procedure TFrm_ACCA9.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, ls_Rcrd2, slBalju, slSuju, slOwner, slBalBrNo, slSuBrNo:
  TStringList;
  i, j, iRow, iBalju, iCharge, iCom, iComCash, iComCyCash, iCash, iBalju2,
    iCharge2, iCom2, iCnt: Integer;
  iRateBal, iRateCom: Double;
  ls_rxxml: WideString;
  ZeroCnt, ZeroCharge: Integer;
begin
  try
    xdom := ComsDomDocument.Create;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if ls_ClientKey = 'BRSMSCHARGE' then
        begin
          GridA9DBTableView.BeginUpdate;

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          for j := 0 to slList.Count - 1 do
          begin
//-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            Frm_Flash.cxPBar1.Position := j + 1;
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
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

                  iRow := GridA9DBTableView.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA9DBTableView.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  sTemp := ls_Rcrd[0];
                  if sTemp <> '' then
                  begin
                    sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                      + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                  end;
                  GridA9DBTableView.DataController.Values[iRow, 1] := sTemp;
                  GridA9DBTableView.DataController.Values[iRow, 2] := ls_Rcrd[1]; //충전지사명
                  GridA9DBTableView.DataController.Values[iRow, 3] := ls_Rcrd[2]; //충전지사코드
                  GridA9DBTableView.DataController.Values[iRow, 4] := ls_Rcrd[3]; //출금지사명
                  GridA9DBTableView.DataController.Values[iRow, 5] := ls_Rcrd[4]; //출금지사코드
                  if StrToFloatDef(ls_Rcrd[5], 0) = 0 then
                    ls_Rcrd[5] := '0';
                  GridA9DBTableView.DataController.Values[iRow, 6] := ls_Rcrd[5]; //충전금
                  GridA9DBTableView.DataController.Values[iRow, 7] := ls_Rcrd[6]; //타입
                  GridA9DBTableView.DataController.Values[iRow, 8] := ls_Rcrd[7]; //아이디
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA9DBTableView.EndUpdate;
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;
    finally
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFrm_ACCA9.btnExcelA9Click(Sender: TObject);
begin
	if GridA9DBTableView.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[정산메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
    Exit;
  end;

  Frm_Main.sgExcel := 'SMS충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>SMS충전내역]%s건', [GetMoneyStr(GridA9DBTableView.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA9;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA9.GridA9DBTableViewColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA9.GridA9DBTableViewDataControllerSortingChanged(
  Sender: TObject);
begin
  gfSetIndexNo(GridA9DBTableView, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA9.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA9;
	AEdDt := cxDtEndA9;
end;

procedure TFrm_ACCA9.MenuItem10Click(Sender: TObject);
begin
  btnExcelA9.Click;
end;

end.


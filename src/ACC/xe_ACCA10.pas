unit xe_ACCA10;

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
  TFrm_ACCA10 = class(TForm)
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
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA10: TcxLabel;
    cxDtStartA10: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA10: TcxDateEdit;
    btnSearchA10: TcxButton;
    btnExcelA10: TcxButton;
    btnDateA10: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA10: TcxTimeEdit;
    cxTeEndA10: TcxTimeEdit;
    GridA10: TcxGrid;
    cxGrid10View: TcxGridDBTableView;
    cxGrid10ViewColumn1: TcxGridDBColumn;
    cxGrid10ViewColumn2: TcxGridDBColumn;
    cxGrid10ViewColumn3: TcxGridDBColumn;
    cxGrid10ViewColumn4: TcxGridDBColumn;
    cxGrid10ViewColumn5: TcxGridDBColumn;
    cxGrid10ViewColumn6: TcxGridDBColumn;
    cxGrid10ViewColumn26: TcxGridDBColumn;
    cxGrid10ViewColumn27: TcxGridDBColumn;
    cxGrid10ViewColumn28: TcxGridDBColumn;
    cxGrid10ViewColumn7: TcxGridDBColumn;
    cxGrid10ViewColumn8: TcxGridDBColumn;
    cxGrid10ViewColumn9: TcxGridDBColumn;
    cxGrid10ViewColumn10: TcxGridDBColumn;
    cxGrid10ViewColumn11: TcxGridDBColumn;
    cxGrid10ViewColumn12: TcxGridDBColumn;
    cxGrid10ViewColumn13: TcxGridDBColumn;
    cxGrid10ViewColumn14: TcxGridDBColumn;
    cxGrid10ViewColumn15: TcxGridDBColumn;
    cxGrid10ViewColumn16: TcxGridDBColumn;
    cxGrid10ViewColumn17: TcxGridDBColumn;
    cxGrid10ViewColumn18: TcxGridDBColumn;
    cxGrid10ViewColumn19: TcxGridDBColumn;
    cxGrid10ViewColumn20: TcxGridDBColumn;
    cxGrid10ViewColumn21: TcxGridDBColumn;
    cxGrid10ViewColumn29: TcxGridDBColumn;
    cxGrid10ViewColumn30: TcxGridDBColumn;
    cxGrid10ViewColumn22: TcxGridDBColumn;
    cxGrid10ViewColumn23: TcxGridDBColumn;
    cxGrid10ViewColumn24: TcxGridDBColumn;
    cxGrid10ViewColumn25: TcxGridDBColumn;
    GridA10Level1: TcxGridLevel;
    cxLabel108: TcxLabel;
    cxLabel2: TcxLabel;
    cxSTR01: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA10Click(Sender: TObject);
    procedure btnDateA10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA10Click(Sender: TObject);
    procedure cxGrid10ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid10ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid10ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_CashList2;
    procedure proc_BankLog3(sBrNo: string);
    procedure proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
    procedure proc_BankLog5(sBrNo, Type1: string);
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA10: TFrm_ACCA10;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC04, xe_ACC05, xe_ACC03, xe_ACC01, xe_Flash;


procedure TFrm_ACCA10.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA10.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA10.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA10.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA10.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA10.proc_init;
begin
  lblSosokNameA10.Caption := GetSosokInfo;

  cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA10.Date := cxDtStartA10.Date + 1;

  cxGrid10View.Columns[0].DataBinding.ValueType := 'Integer';
  cxGrid10View.Columns[1].DataBinding.ValueType := 'String';
  cxGrid10View.Columns[2].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[3].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[4].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[5].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[6].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[7].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[8].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[9].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[10].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[11].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[12].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[13].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[14].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[15].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[16].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[17].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[18].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[19].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[20].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[21].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[22].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[23].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[24].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[25].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[26].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[27].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[28].DataBinding.ValueType := 'Currency';
  cxGrid10View.Columns[29].DataBinding.ValueType := 'String';
  cxGrid10View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA10.FormCreate(Sender: TObject);
Var i : Integer;
begin
  try
    // 날짜형식이 'yy/mm/dd'일경우 오류 발생 가능성으로 인해 자체 Display 포맷 변경
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TcxDateEdit then
      begin
        (Components[i] as TcxDateEdit).Properties.DisplayFormat :=  'yyyy/mm/dd';
        (Components[i] as TcxDateEdit).Properties.EditFormat    :=  'yyyy/mm/dd';
      end;
    end;
  except
  end;
  proc_init;
end;

procedure TFrm_ACCA10.FormDestroy(Sender: TObject);
begin
  Frm_ACCA10 := NIl;
end;

procedure TFrm_ACCA10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA10.btnDateA10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA10.btnSearchA10Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGrid10View.DataController.SetRecordCount(0);
  proc_CashList2;
end;

procedure TFrm_ACCA10.proc_CashList2;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo,
    sHdNo, NowDtm: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  NowDtm := frm_main.func_sysdate;

  if Trim(NowDtm) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(NowDtm) <> 14) or ((StrToIntDef(copy(NowDtm, 9, 4), 0) > 2100)
    or (StrToIntDef(copy(NowDtm, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    Exit;
  end;

  if cxGrid10View.DataController.RecordCount > 0 then
    exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('수익금리스트') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then                               //지사
      sBrNo := GT_SEL_BRNO.BrNo
    else
      sBrNo := GT_USERIF.BR;
    sHdNo := '';
    iType := 0;
  end;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'CASHACC02';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := IfThen(iType = 1, 'BRCASHS08', 'BRCASHS09'); //본사
    lst_Node.item[0].attributes.getNamedItem('Paging').Text := '100';

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA10.Date) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA10.Date) + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := IfThen(iType = 0, sBrNo, sHdNo);
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := endDate;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 60000) then
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

procedure TFrm_ACCA10.proc_BankLog3(sBrNo: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC02';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS03'; //지사

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '',
      [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll])
      + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACCA10.proc_BankLog4(sBrNo, Type1, Type2, Type3, Type4: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC03';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := Type4;

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //노드를 복사해서 param을 생성한다....
    //Param 2
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 3
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    IF Type4 <> 'BRCASHS39' then
    begin
      //Param 4
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      //Param 5
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);

      //Param 6
      sNode := '/cdms/Service/Data/Query/Param';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_clon := lst_node.item[0].cloneNode(True);
      sNode := '/cdms/Service/Data/Query';
      lst_Node := xdom.documentElement.selectNodes(sNode);
      lst_Node.item[0].appendChild(lst_clon);
    end;

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;

    if Type4 <> 'BRCASHS39' then
    begin
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := Type1;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := Type2;
      lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
      lst_Node.item[5].attributes.getNamedItem('Value').Text := Type3;
    end;

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

procedure TFrm_ACCA10.proc_BankLog5(sBrNo, Type1: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BANKACC03';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS09_DETAIL';

    if (cxDtStartA10.Text = '') or (cxDtEndA10.Text = '') then
    begin
      cxDtStartA10.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA10.Date := cxDtStartA10.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA10.Time);
    endDate := StringReplace(DateToStr(cxDtEndA10.Date), '-', '', [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeEndA10.Time);

    //노드를 복사해서 param을 생성한다....
    //Param 2
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 3
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    //Param 4
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := Type1;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
    lst_Node.item[3].attributes.getNamedItem('Value').Text := endDate;

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

procedure TFrm_ACCA10.proc_recieve(slList: TStringList);
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
        if ls_ClientKey = 'BANKACC02' then //지사캐쉬내역
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;

                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                  sTemp := ls_Rcrd[2];
                  if sTemp <> '' then
                  begin
                    sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                    sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                      + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                  end;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTemp;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 7] := StringReplace(ls_Rcrd[7], #$A, '/', [rfReplaceAll]);;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 8] := ls_Rcrd[8];
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show
          else
          begin
            GMessagebox('데이터가 없습니다.', CDMSI);
          end;
        end else
        if ls_ClientKey = 'CASHACC02' then //수익금리스트
        begin
          //2009-05-26  작성자 : 임창기 (수익금리스트 메뉴 추가)
          cxGrid10View.BeginUpdate;
          cxGrid10View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          for j := 0 to slList.Count - 1 do
          begin
            Frm_Flash.cxPBar1.Position := j + 1;
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            ls_rxxml := slList[j];
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
                  if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                  begin
                    iRow := cxGrid10View.DataController.AppendRecord;

                    // 1 Record 추가
                    cxGrid10View.DataController.Values[iRow, 0] := iRow + 1;                      //No.
                    cxGrid10View.DataController.Values[iRow, 1] := ls_Rcrd[1];                    //지사명
                    cxGrid10View.DataController.Values[iRow, 2] := StrToIntDef(ls_Rcrd[2], 0);    //기사공용캐쉬
                    cxGrid10View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[3], 0);    //발주수익(공용)
                    cxGrid10View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[21], 0);   //발주수익(자체)
                    cxGrid10View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0);    //수주지급
                    //[100322] 지사완료콜수, 기사일비금액
                    if ls_Rcrd.Count > 24 then
                    begin
                      cxGrid10View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[24], 0);    //지사완료콜수
                      cxGrid10View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[25], 0);    //기사일비금액(공용)
                      cxGrid10View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[26], 0);    //기사일비금액(자체)
                    end;

                    cxGrid10View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[5], 0);    //솔루션사용료
                    cxGrid10View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[6], 0);    //보험료
                    cxGrid10View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[7], 0);    //취소벌금(공용)
                    cxGrid10View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[20], 0);   //취소벌금(자체)
                    cxGrid10View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[8], 0);   //콜대행
                    cxGrid10View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[9], 0);   //지사입금
                    cxGrid10View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[10], 0);  //콜마너정산
                    cxGrid10View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[11], 0);  //지사캐쉬이동
                    cxGrid10View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[12], 0);  //SMS캐쉬출금
                    cxGrid10View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[13], 0);  //후불입금
                    cxGrid10View.DataController.Values[iRow, 19] := StrToIntDef(ls_Rcrd[14], 0);  //보정입력
                    cxGrid10View.DataController.Values[iRow, 20] := StrToIntDef(ls_Rcrd[15], 0);  //기사에송금
                    cxGrid10View.DataController.Values[iRow, 21] := StrToIntDef(ls_Rcrd[16], 0);  //퇴직환불
                    cxGrid10View.DataController.Values[iRow, 22] := StrToIntDef(ls_Rcrd[17], 0);  //기타
  									cxGrid10View.DataController.Values[iRow, 23] := StrToIntDef(ls_Rcrd[18], 0);  //합계
                    cxGrid10View.DataController.Values[iRow, 24] := StrToIntDef(ls_Rcrd[27], 0);  //시작캐쉬
                    cxGrid10View.DataController.Values[iRow, 25] := StrToIntDef(ls_Rcrd[28], 0);  //종료캐쉬
                    cxGrid10View.DataController.Values[iRow, 26] := StrToIntDef(ls_Rcrd[19], 0);  //잔액
                    cxGrid10View.DataController.Values[iRow, 27] := StrToIntDef(ls_Rcrd[23], 0);  //수익금(공용+자체)
                    cxGrid10View.DataController.Values[iRow, 28] := StrToIntDef(ls_Rcrd[22], 0);  //수익금(자체)
                    cxGrid10View.DataController.Values[iRow, 29] := ls_Rcrd[0];                   //지사코드
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          cxGrid10View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';

          //2009-07-13  작성자 : 임창기 (수익금리스트 상세리스트 조회)
        end else
        if ls_ClientKey = 'BANKACC03' then //수익금리스트 (각 컬럼별 상세리스트 조회)
        begin
          if ( Not Assigned(Frm_ACC01) ) Or ( Frm_ACC01 = NIl ) then Frm_ACC01 := TFrm_ACC01.Create(Nil);
          Frm_ACC01.Grid3View.BeginUpdate;
          Frm_ACC01.Grid3View.DataController.SetRecordCount(0);

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
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;
                  // 1 Record 추가
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 1] := ls_Rcrd[1];
                  sTemp := ls_Rcrd[2];
                  if sTemp <> '' then
                  begin
                    sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                    sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                      + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                  end;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 2] := sTemp;
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 4] := ls_Rcrd[4];
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[5], 0);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[6], 0);
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 7] := ls_Rcrd[7];
                  Frm_ACC01.Grid3View.DataController.Values[iRow, 8] := ls_Rcrd[8];
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          Frm_ACC01.Grid3View.EndUpdate;
          if Frm_ACC01.Grid3View.DataController.RecordCount > 0 then
            Frm_ACC01.Show
          else
          begin
            GMessagebox('데이터가 없습니다.', CDMSI);
          end;
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;
    finally
      xdom := nil;
    end;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFrm_ACCA10.btnExcelA10Click(Sender: TObject);
begin
	if cxGrid10View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '수익금리스트.xls';
  Frm_Main.sgRpExcel := Format('정산>수익금리스트]%s건', [GetMoneyStr(cxGrid10View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA10;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA10.cxGrid10ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo, sColumnName: string;
begin
  iBrNo := cxGrid10View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGrid10View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGrid10View.DataController.Values[iRow, iBrNo];

  sColumnName := ACellViewInfo.Item.GetAlternateCaption;
  if sColumnName = '지사명' then
    proc_BankLog3(sBrNo)
  else
  if sColumnName = '기사공용캐쉬' then
  begin
    sExcelFileName := '기사공용캐쉬';
    proc_BankLog4(sBrNo,'10','20','30','BRCASHS29');
  end else
  if sColumnName = '발주수익(공용)' then
  begin
    sExcelFileName := '발주수익(공용)';
    proc_BankLog4(sBrNo,'11','21','31','BRCASHS29');
  end else
  if sColumnName = '발주수익(자체)' then
  begin
    sExcelFileName := '발주수익(자체)';
    proc_BankLog4(sBrNo,'10','20','30','BRCASHS49');
  end else
  if sColumnName = '수주지급' then
  begin
    sExcelFileName := '수주지급';
    proc_BankLog4(sBrNo,'12','22','32','BRCASHS29');
  end else
  if sColumnName = '솔루션사용료' then
  begin
    sExcelFileName := '솔루션사용료';
    proc_BankLog4(sBrNo,'40','--','--','BRCASHS29');
  end else
  if sColumnName = '보험료' then
    proc_BankLog4(sBrNo,'50','--','--','BRCASHS29')
  else if sColumnName = '취소벌금(공용)' then
  begin
    sExcelFileName := '취소벌금(공용)';
    proc_BankLog5(sBrNo, 'CANCEL');
  end else
  if sColumnName = '취소벌금(자체)' then
  begin
    sExcelFileName := '취소벌금(자체)';
    proc_BankLog5(sBrNo, 'CANCEL_WK');
  end else
  if sColumnName = '콜대행' then
  begin
    sExcelFileName := '콜대행';
    proc_BankLog4(sBrNo,'13','--','--','BRCASHS29');
  end else
  if sColumnName = '지사입금' then
  begin
    sExcelFileName := '지사입금';
    proc_BankLog5(sBrNo, 'PAY_IN');
  end else
  if sColumnName = '콜마너정산' then
  begin
    sExcelFileName := '콜마너정산';
    proc_BankLog4(sBrNo,'01','--','--','BRCASHS29');
  end else
  if sColumnName = '지사캐쉬이동' then
  begin
    sExcelFileName := '지사캐쉬이동';
    proc_BankLog4(sBrNo,'60','--','--','BRCASHS29');
  end else
  if sColumnName = 'SMS캐쉬출금' then
  begin
    sExcelFileName := 'SMS캐쉬출금';
    proc_BankLog4(sBrNo,'07','--','--','BRCASHS29');
  end else
  if sColumnName = '후불입금' then
  begin
    sExcelFileName := '후불입금';
    proc_BankLog4(sBrNo,'04','--','--','BRCASHS29');
  end else
  if sColumnName = '보정입력' then
  begin
    sExcelFileName := '보정입력';
    proc_BankLog4(sBrNo,'02','--','--','BRCASHS29');
  end else
  if sColumnName = '기사에송금' then
  begin
    sExcelFileName := '기사에송금';
    proc_BankLog4(sBrNo,'24','--','--','BRCASHS29');
  end else
  if sColumnName = '기사일비(공용)' then
  begin
    sExcelFileName := '기사일비(공용)';
    proc_BankLog5(sBrNo, 'PAY_IN_DAYFEE');
  end else
  if sColumnName = '기사일비(자체)' then
  begin
    sExcelFileName := '기사일비(자체)';
    proc_BankLog5(sBrNo, 'DAYFEE_WK');
  end else
  if sColumnName = '퇴직환불' then
  begin
    sExcelFileName := '퇴직환불';
    proc_BankLog4(sBrNo,'99','--','--','BRCASHS29');
  end else
  if sColumnName = '기타' then
  begin
    sExcelFileName := '기타';
    proc_BankLog5(sBrNo, 'ETC');
  end;
end;

procedure TFrm_ACCA10.cxGrid10ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA10.cxGrid10ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGrid10View, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA10.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA10;
	AEdDt := cxDtEndA10;
end;

procedure TFrm_ACCA10.MenuItem10Click(Sender: TObject);
begin
  btnExcelA10.Click;
end;

end.

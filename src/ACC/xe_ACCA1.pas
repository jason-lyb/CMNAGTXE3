unit xe_ACCA1;

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
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, GradientLabel, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_ACCA1 = class(TForm)
    pop_dateA1: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel18: TPanel;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA1: TcxLabel;
    cxDtStartA1: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA1: TcxDateEdit;
    btnDateA1: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA1: TcxTimeEdit;
    cxTeEndA1: TcxTimeEdit;
    GridA1: TcxGrid;
    GridA1View: TcxGridDBTableView;
    GridA1ViewColumn16: TcxGridDBColumn;
    GridA1ViewColumn18: TcxGridDBColumn;
    GridA1ViewColumn1: TcxGridDBColumn;
    GridA1ViewColumn2: TcxGridDBColumn;
    GridA1ViewColumn3: TcxGridDBColumn;
    GridA1ViewColumn4: TcxGridDBColumn;
    GridA1ViewColumn5: TcxGridDBColumn;
    GridA1ViewColumn6: TcxGridDBColumn;
    GridA1ViewColumn7: TcxGridDBColumn;
    GridA1ViewColumn8: TcxGridDBColumn;
    GridA1ViewColumn9: TcxGridDBColumn;
    GridA1ViewColumn10: TcxGridDBColumn;
    GridA1ViewColumn11: TcxGridDBColumn;
    GridA1ViewColumn12: TcxGridDBColumn;
    GridA1ViewColumn13: TcxGridDBColumn;
    GridA1ViewColumn14: TcxGridDBColumn;
    GridA1ViewColumn17: TcxGridDBColumn;
    GridA1ViewColumn19: TcxGridDBColumn;
    GridA1ViewColumn15: TcxGridDBColumn;
    GridA1Level: TcxGridLevel;
    cxLabel37: TcxLabel;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    btnHelpA1: TcxButton;
    pnlHelpA1: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnCloseA1: TcxButton;
    PopupMenuA1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SMS1: TMenuItem;
    N10: TMenuItem;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnHelpA1Click(Sender: TObject);
    procedure BtnCloseA1Click(Sender: TObject);
    procedure GridA1ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridA1ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnExcelA1Click(Sender: TObject);
    procedure PopupMenuA1Popup(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnSearchA1Click(Sender: TObject);
    procedure Grid1ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_recieve(slList: TStringList);
    procedure proc_BankLog2(sBrNo: string);
    procedure proc_CashList;
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA1: TFrm_ACCA1;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC01, xe_Flash;


procedure TFrm_ACCA1.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA1.PopupMenuA1Popup(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  N11.Visible := False;
  N6.Visible := False;
	N5.Visible := False;
	N12.Visible := False;

  N2.Visible := True;
end;

procedure TFrm_ACCA1.N1Click(Sender: TObject);
begin
  btnExcelA1.Click;
end;

procedure TFrm_ACCA1.N2Click(Sender: TObject);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := GridA1View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA1View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := GridA1View.DataController.Values[iRow, iBrNo];
  proc_BankLog2(sBrNo);
end;

procedure TFrm_ACCA1.proc_init;
Var i : Integer;
begin
  lblSosokNameA1.Caption := GetSosokInfo;

  cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA1.Date := cxDtStartA1.Date + 1;

  GridA1View.Columns[0].DataBinding.ValueType := 'Integer'; //No
  GridA1View.Columns[1].DataBinding.ValueType := 'String'; //지사명
  GridA1View.Columns[2].DataBinding.ValueType := 'String'; //지사명
	GridA1View.Columns[3].DataBinding.ValueType := 'Currency'; //기사공용캐쉬
  GridA1View.Columns[4].DataBinding.ValueType := 'Currency'; //발주수익
  GridA1View.Columns[5].DataBinding.ValueType := 'Currency'; //수주지급
  GridA1View.Columns[6].DataBinding.ValueType := 'Currency'; //솔루션사용료
  GridA1View.Columns[7].DataBinding.ValueType := 'Currency'; //보험료
  GridA1View.Columns[8].DataBinding.ValueType := 'Currency'; //취소벌금(공용)
  GridA1View.Columns[9].DataBinding.ValueType := 'Currency'; //콜대행
  GridA1View.Columns[10].DataBinding.ValueType := 'Currency'; //지사입금
  GridA1View.Columns[11].DataBinding.ValueType := 'Currency'; //콜마너정산
  GridA1View.Columns[12].DataBinding.ValueType := 'Currency'; //지사캐쉬이동
  GridA1View.Columns[13].DataBinding.ValueType := 'Currency'; //SMS캐쉬출금
  GridA1View.Columns[14].DataBinding.ValueType := 'Currency'; //기타
  GridA1View.Columns[15].DataBinding.ValueType := 'Currency'; //합계
  GridA1View.Columns[16].DataBinding.ValueType := 'Currency'; //시작캐쉬
	GridA1View.Columns[17].DataBinding.ValueType := 'Currency'; //종료캐쉬
  GridA1View.Columns[18].DataBinding.ValueType := 'Currency'; //잔액

	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = '8282king') or (GT_USERIF.ID = '8282si')) then
	begin
		GridA1View.Columns[4].Visible := False;
		GridA1View.Columns[5].Visible := False;
		GridA1View.Columns[12].Visible := False;
		GridA1View.Columns[15].Visible := False;
		GridA1View.Columns[17].Visible := False;
		GridA1View.OptionsView.Footer := False;
		cxLabel37.Visible := False;
	end;

  GridA1View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA1.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA1.FormDestroy(Sender: TObject);
begin
  Frm_ACCA1 := NIl;
end;

procedure TFrm_ACCA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA1.BtnCloseA1Click(Sender: TObject);
begin
  pnlHelpA1.Visible := False;
end;

procedure TFrm_ACCA1.btnHelpA1Click(Sender: TObject);
begin
  pnlHelpA1.Left := (Width - pnlHelpA1.Width) div 2;
  pnlHelpA1.top := (Height - pnlHelpA1.Height) div 2;
  pnlHelpA1.Visible := True;
  pnlHelpA1.BringToFront;
end;

procedure TFrm_ACCA1.btnSearchA1Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	GridA1View.DataController.SetRecordCount(0);
  proc_CashList;
end;

procedure TFrm_ACCA1.btnExcelA1Click(Sender: TObject);
begin
	if GridA1View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '지사캐쉬내역.xls';
  Frm_Main.sgRpExcel := Format('정산>지사캐쉬내역]%s건', [GetMoneyStr(GridA1View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA1;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_ACCA1.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA1;
	AEdDt := cxDtEndA1;
end;

procedure TFrm_ACCA1.GridA1ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  //2014.02.13 팀장님 지시사항
	if (GS_PRJ_AREA = 'O') and ((GT_USERIF.ID = '8282king') or (GT_USERIF.ID = '8282si')) then Exit;

  iBrNo := GridA1View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA1View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;
  sBrNo := GridA1View.DataController.Values[iRow, iBrNo];

  if Trim(sBrNo) = '' then Exit;

  proc_BankLog2(sBrNo);
end;

procedure TFrm_ACCA1.proc_BankLog2(sBrNo: string);
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

    if (cxDtStartA1.Text = '') or (cxDtEndA1.Text = '') then
    begin
      cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA1.Date := cxDtStartA1.Date + 1;
    end;
    startDate := StringReplace(DateToStr(cxDtStartA1.Date), '-', '',
      [rfReplaceAll]) + FormatDateTime('HHNNSS', cxTeStartA1.Time);
    endDate := StringReplace(DateToStr(cxDtEndA1.Date), '-', '', [rfReplaceAll])
      + FormatDateTime('HHNNSS', cxTeEndA1.Time);

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

procedure TFrm_ACCA1.proc_CashList;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA1View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('지사캐쉬내역') then Exit;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sHdNo := GT_SEL_BRNO.HDNO
    else
      sHdNo := GT_USERIF.HD;
    sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'CASHACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS02' //본사
    else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS01'; //지사

    if (cxDtStartA1.Text = '') or (cxDtEndA1.Text = '') then
    begin
      cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA1.Date := cxDtStartA1.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA1.Date) + FormatDateTime('HHNNSS', cxTeStartA1.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA1.Date) + FormatDateTime('HHNNSS', cxTeEndA1.Time);

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
    if iType = 0 then
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo
    else
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;

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

procedure TFrm_ACCA1.proc_recieve(slList: TStringList);
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
        if ls_ClientKey = 'CASHACC01' then //지사캐쉬내역
        begin
          GridA1View.BeginUpdate;
          GridA1View.DataController.SetRecordCount(0);

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
                    iRow := GridA1View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA1View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    GridA1View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    GridA1View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    //지사명
                    GridA1View.DataController.Values[iRow, 3] := StrToIntDef(ls_Rcrd[2], 0); //기사공용캐쉬
                    GridA1View.DataController.Values[iRow, 4] := StrToIntDef(ls_Rcrd[3], 0); //발주수익
                    GridA1View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0); //수주지급
                    GridA1View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //솔루션사용료
                    GridA1View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6], 0); //보험료
                    GridA1View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[7], 0); //취소벌금(공용)
                    GridA1View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[8], 0); //콜대행
                    GridA1View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0); //지사입금
                    GridA1View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[10], 0); //콜마너정산
                    GridA1View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[11], 0); //지사캐쉬이동
                    GridA1View.DataController.Values[iRow, 13] := StrToIntDef(ls_Rcrd[12], 0); //SMS캐쉬출금
                    GridA1View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[13], 0); //기타
                    GridA1View.DataController.Values[iRow, 15] := StrToIntDef(ls_Rcrd[14], 0); //합계
                    GridA1View.DataController.Values[iRow, 16] := StrToIntDef(ls_Rcrd[16], 0); //시작캐쉬
                    GridA1View.DataController.Values[iRow, 17] := StrToIntDef(ls_Rcrd[17], 0); //종료캐쉬
                    GridA1View.DataController.Values[iRow, 18] := StrToIntDef(ls_Rcrd[15], 0); //잔액
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          GridA1View.EndUpdate;
          frm_Main.sbar_Message.Panels[4].Text := '';
        end else
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
                  iRow := Frm_ACC01.Grid3View.DataController.AppendRecord;  // 1 Record 추가
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

procedure TFrm_ACCA1.GridA1ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA1.Grid1ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA1View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA1.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA1.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA1.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA1.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

end.

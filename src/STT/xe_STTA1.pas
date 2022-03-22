unit xe_STTA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, DateUtils,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxGridChartView,
  cxDropDownEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, system.Math, AdvSplitter, cxCheckBox, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_STTA1 = class(TForm)
    lblKeySosokA1: TcxLabel;
    cxGridA1: TcxGrid;
    cxViewKey: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxLevelKey: TcxGridLevel;
    pop_dateA1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    cxColViewKeyColumn3: TcxGridDBColumn;
    cxColViewKeyColumn4: TcxGridDBColumn;
    cxColViewKeyColumn5: TcxGridDBColumn;
    cxColViewKeyColumn6: TcxGridDBColumn;
    cxColViewKeyColumn7: TcxGridDBColumn;
    cxColViewKeyColumn8: TcxGridDBColumn;
    cxColViewKeyColumn9: TcxGridDBColumn;
    cxColViewKeyColumn10: TcxGridDBColumn;
    cxColViewKeyColumn11: TcxGridDBColumn;
    cxColViewKeyColumn12: TcxGridDBColumn;
    dlgSave: TSaveDialog;
    pmExcelA1: TPopupMenu;
    mniN1: TMenuItem;
    cxDtStartA1: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxDtEndA1: TcxDateEdit;
    cxLabel10: TcxLabel;
    btnDateA1: TcxButton;
    btnSearchA1: TcxButton;
    btnExcelA1: TcxButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    cxLabel218: TcxLabel;
    Shape1: TShape;
    cxLabel31: TcxLabel;
    Shape5: TShape;
    cxLabel33: TcxLabel;
    Shape6: TShape;
    cbKeynumber01: TcxComboBox;
    cxComboBox1: TcxComboBox;
    cxGridA1ChartView1: TcxGridChartView;
    cxGridA1ChartView1Series1: TcxGridChartSeries;
    cxGridA1ChartView1Series2: TcxGridChartSeries;
    cxGridA1ChartView1Series3: TcxGridChartSeries;
    cxGridA1ChartView1Series4: TcxGridChartSeries;
    pnlChart: TPanel;
    AdvSplitter1: TAdvSplitter;
    cxGridA1C1Level1: TcxGridLevel;
    cxGridA1C1: TcxGrid;
    cxGridA1C1ChartView1: TcxGridChartView;
    cxGridA1C1ChartView1Series1: TcxGridChartSeries;
    cbChartKindA1: TcxComboBox;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Shape3: TShape;
    btnChartA1: TcxButton;
    cbKindA1: TcxComboBox;
    cxGridA1C2: TcxGrid;
    cxGridChartALL: TcxGridChartView;
    cxGridChartSeries1: TcxGridChartSeries;
    cxGridChartSeries2: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    cxGridChartSeries3: TcxGridChartSeries;
    cxGridChartSeries4: TcxGridChartSeries;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchA1Click(Sender: TObject);
    procedure MenuItemClick(Sender: TObject);
    procedure btnDateA1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA1Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxViewKeyColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewKeyDataControllerSortingChanged(Sender: TObject);
    procedure cxViewKeyTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnChartA1Click(Sender: TObject);
    procedure chkFinishCntPropertiesChange(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    iCaCnt, iToCnt : Integer;

    AView: TcxGridChartView;
    procedure proc_init_key;
    procedure RequestDataKey; // 대표번호별 통계
    procedure ResponseDataBase(ADataStr: WideString);
    // 처음 데이터를 수신하는 함수
    procedure ResponseDataKey(AXmlStr: WideString); // 대표번호별 통계
    procedure SetSearchDate(AStart, AEnd: TDate);
	public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
  end;

var
  Frm_STTA1: TFrm_STTA1;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;

procedure TFrm_STTA1.FormCreate(Sender: TObject);
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

procedure TFrm_STTA1.FormDestroy(Sender: TObject);
begin
  Frm_STTA1 := Nil;
end;

procedure TFrm_STTA1.FormShow(Sender: TObject);
begin
  pnlMain.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA1.proc_init;
begin
  proc_init_key;
  proc_BrNameSet;
end;

procedure TFrm_STTA1.proc_init_key;
var
  I: Integer;
begin
  try
    cxDtStartA1.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
    cxDtEndA1.Date := cxDtStartA1.Date + 1;

    for I := 0 to cxViewKey.ColumnCount - 1 do
    begin
      case I of
        0:
          cxViewKey.Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType;
        4..11:
          begin
            cxViewKey.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
            cxViewKey.Columns[I].Properties := frm_Main.gCurProperties;
          end;
      else
        cxViewKey.Columns[I].DataBinding.ValueTypeClass :=
          TcxStringValueType;
      end;
    end;
  except

  end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_STTA1.RequestDataKey;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    sWhere2 := '';
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        sWhere := Format(' a.conf_head = ''%s'' ', [GT_SEL_BRNO.HDNO])
      else if GT_USERIF.LV = '40' then
        sWhere := Format(' a.conf_brch = ''%s'' ', [GT_USERIF.BR])
      else if GT_USERIF.LV = '10' then
      begin
        sWhere := Format(' a.callcenter = ''%s''', [GT_USERIF.BR]);
        sWhere2 :=  Format(' AND (br.hd_no = ''%s'' OR br.route_mgr_etc = ''y'')', [GT_USERIF.HD]);
      end;
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' a.conf_brch = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

    if ( cbKeynumber01.ItemIndex > 0 ) And ( cbKeynumber01.Text <> '' ) then
      sWhere := sWhere + ' and key_number = ''' + cbKeynumber01.Text + '''';

    sDate1 := formatdatetime('yyyymmdd', cxDtStartA1.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA1.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_MAIN_PHONE_STAT_LIST, sQueryTemp);
    ls_TxQry := En_Coding(Format(sQueryTemp, [sDate1, sDate2, sWhere, sWhere2]));
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'STKP0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False) then
    begin
      rv_str := StrList[0];

      if trim(rv_str) <> '' then
      begin
        Application.ProcessMessages;
        ResponseDataBase(rv_str);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_STTA1.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  xdom := ComsDomDocument.Create;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then
        Exit;

      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);
        if ClientKey = 'STKP0001' then
          ResponseDataKey(XmlData);
      end else
      begin
        GMessagebox(MSG012 + CRLF + ErrorCode, CDMSE);
      end;
    except

    end;
  finally
    Frm_Flash.JobProcess(False);
    xdom := Nil;
  end;
end;

procedure TFrm_STTA1.ResponseDataKey(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, iNum: Integer;
  iTot : Integer;
  PerCancel: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result :=
        xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewKey.DataController.SetRecordCount(0);
      cxViewKey.BeginUpdate;
      ls_Rcrd := TStringList.Create;
      try
        iNum := 0;
        iCaCnt := 0;
        iToCnt := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
          PerCancel := 0;
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
          begin
            ls_Rcrd.Insert(0, IntToStr(iNum + 1));

            cxViewKey.DataController.AppendRecord;
            cxViewKey.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
            cxViewKey.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
            cxViewKey.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
            cxViewKey.DataController.SetValue(iNum, 3, ls_Rcrd[4]);
            cxViewKey.DataController.SetValue(iNum, 4, ls_Rcrd[5]);
            cxViewKey.DataController.SetValue(iNum, 5, ls_Rcrd[6]);
            cxViewKey.DataController.SetValue(iNum, 6, ls_Rcrd[7]);
            cxViewKey.DataController.SetValue(iNum, 7, ls_Rcrd[8]);
            cxViewKey.DataController.SetValue(iNum, 8, ls_Rcrd[9]);
            cxViewKey.DataController.SetValue(iNum, 9, ls_Rcrd[10]);
            cxViewKey.DataController.SetValue(iNum, 10, ls_Rcrd[11]);
            iTot := StrToIntDef(ls_Rcrd[5], 0) + StrToIntDef(ls_Rcrd[6], 0);
            if iTot > 0 then
              PerCancel := 100 * StrToIntDef(ls_Rcrd[6], 0) div ( iTot );
            iCaCnt := iCaCnt + StrToIntDef(ls_Rcrd[6], 0);
            iToCnt := iToCnt + iTot;
            cxViewKey.DataController.SetValue(iNum, 11, PerCancel);
            iNum := iNum + 1;
          end;
        end;
      finally
        ls_Rcrd.Free;
        cxViewKey.EndUpdate;

        btnChartA1.Click;
      end;
    end else
    begin
      cxViewKey.DataController.SetRecordCount(0);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_STTA1.btnSearchA1Click(Sender: TObject);
var
  dt_sysdate2: string;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;

  if fGetChk_Search_HdBrNo('대표번호별통계') then Exit;

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
    Exit;
  end;
  RequestDataKey;
end;

procedure TFrm_STTA1.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA1C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA1C1ChartView1.DiagramBar.Active := True;
  2:cxGridA1C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA1C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA1C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA1C1ChartView1.DiagramLine.Active := True;
  6:cxGridA1C1ChartView1.DiagramArea.Active := True;
  7:cxGridA1C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA1.Click;
end;

procedure TFrm_STTA1.chkFinishCntPropertiesChange(Sender: TObject);
begin
  btnChartA1.Click;
end;

procedure TFrm_STTA1.btnChartA1Click(Sender: TObject);
var
  I : Integer;
begin
  case cbKindA1.ItemIndex of
    0,1,2,3:
    begin
      cxGridA1C1.Visible := True;
      cxGridA1C2.Visible := False;
      cxGridA1C1ChartView1.BeginUpdate();
      try
        cxGridA1C1ChartView1.DataController.RecordCount := cxViewKey.DataController.RecordCount;
        for I := 0 to cxViewKey.DataController.RecordCount-1 do
        begin
         cxGridA1C1ChartView1.Categories.Values[I] := cxViewKey.DataController.Values[i, 3];
         case cbKindA1.ItemIndex of
         0: cxGridA1C1ChartView1Series1.Values[I] := cxViewKey.DataController.Values[i, 4];
         1: cxGridA1C1ChartView1Series1.Values[I] := cxViewKey.DataController.Values[i, 5];
         2: cxGridA1C1ChartView1Series1.Values[I] := cxViewKey.DataController.Values[i, 6];
         3: cxGridA1C1ChartView1Series1.Values[I] := cxViewKey.DataController.Values[i, 7];
         end;
        end;
      finally
        cxGridA1C1ChartView1.EndUpdate();
      end;
    end;
    4:
    begin
      cxGridA1C1.Visible := False;
      cxGridA1C2.Visible := True;
      cxGridChartALL.BeginUpdate();
      try
        cxGridChartALL.DataController.RecordCount := cxViewKey.DataController.RecordCount;
         for I := 0 to cxViewKey.DataController.RecordCount-1 do
         begin
           cxGridChartALL.Categories.Values[I] := cxViewKey.DataController.Values[i, 3];
           cxGridChartSeries1.Values[I] := cxViewKey.DataController.Values[i, 4];
           cxGridChartSeries2.Values[I] := cxViewKey.DataController.Values[i, 5];
           cxGridChartSeries3.Values[I] := cxViewKey.DataController.Values[i, 6];
           cxGridChartSeries4.Values[I] := cxViewKey.DataController.Values[i, 7];
         end;
      finally
        cxGridChartALL.EndUpdate();
      end;
    end;
  end;
end;

procedure TFrm_STTA1.cxComboBox2PropertiesChange(Sender: TObject);
begin
  if cbKindA1.ItemIndex = 4 then
  begin
    cxGridA1C1.Visible := False;
    cxGridA1C2.Visible := True;
  end else
  begin
    cxGridA1C1.Visible := True;
    cxGridA1C2.Visible := False;
  end;

  btnChartA1.Click;
end;

procedure TFrm_STTA1.cxViewKeyColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STTA1.cxViewKeyDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewKey, AIndex, GS_SortNoChange);
end;

procedure TFrm_STTA1.cxViewKeyTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if iToCnt <> 0 then
    AText := FloatToStr(roundto((iCaCnt / iToCnt * 100), -1)) + '%';
end;

procedure TFrm_STTA1.MenuItemClick(Sender: TObject);
var
  StartDt, EndDt: TDate;
begin
  StartDt := -1;
  EndDt := -1;

  case TMenuItem(Sender).Tag of
    0:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8)));
        EndDt := StartDt + 1;
      end;
    1:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8))) - 1;
        EndDt := StartDt + 1;
      end;
    2:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8))) - 7;
        EndDt := StartDt + 7;
      end;
    3:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'),
          1, 8))) - 31;
        EndDt := StartDt + 31;
      end;
    4:
      begin
        StartDt := StartOfTheMonth(Now);
        EndDt := EndOfTheMonth(Now);
      end;
  end;

  if StartDt > -1 then
  begin
    SetSearchDate(StartDt, EndDt);
  end;
end;

procedure TFrm_STTA1.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA1.Date := AStart;
  cxDtEndA1.Date := AEnd;
end;

procedure TFrm_STTA1.btnDateA1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_dateA1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA1.btnExcelA1Click(Sender: TObject);
begin
  if cxViewKey.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-대표번호별통계.xls';
  Frm_Main.sgRpExcel := Format('통계>대표번호별통계]%s건', [GetMoneyStr(cxViewKey.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA1;
  Frm_Main.cxGridDBViewExcel := cxViewKey;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA1.mniN1Click(Sender: TObject);
begin
	btnExcelA1.Click;
end;

procedure TFrm_STTA1.proc_BrNameSet;
var
	sBrNo, sHdNo : string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
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

  lblKeySosokA1.Caption := GetSosokInfo;

  if cbKeynumber01.Properties.Items.Count > 1 then
    cbKeynumber01.Properties.Items.Insert(0, '전체');

  cbKeynumber01.ItemIndex := 0;
end;

end.

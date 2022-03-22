unit xe_STTA2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, cxGridChartView, AdvSplitter, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_STTA2 = class(TForm)
    pop_dateA2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    dlgSave: TSaveDialog;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cxGridA2: TcxGrid;
    cxViewWorker: TcxGridDBTableView;
    cxCol1: TcxGridDBColumn;
    cxCol3: TcxGridDBColumn;
    cxCol4: TcxGridDBColumn;
    cxCol5: TcxGridDBColumn;
    cxCol6: TcxGridDBColumn;
    cxCol7: TcxGridDBColumn;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxLevelWorker: TcxGridLevel;
    cbbWorkerSearchType: TcxComboBox;
    cxCol2: TcxGridDBColumn;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape1: TShape;
    Shape5: TShape;
    cxLabel218: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    btnDateA2: TcxButton;
    btnExcelA2: TcxButton;
    btnSearchA2: TcxButton;
    cxLabel32: TcxLabel;
    cxLabel34: TcxLabel;
    cxDtEndA2: TcxDateEdit;
    cxDtStartA2: TcxDateEdit;
    edtWorkerSearchValue: TcxTextEdit;
    lblSosokNameA2: TcxLabel;
    Shape6: TShape;
    cxCol10: TcxGridDBColumn;
    AdvSplitter1: TAdvSplitter;
    pnlChart: TPanel;
    cxGridA2C1: TcxGrid;
    cxGridA2C1ChartView1: TcxGridChartView;
    cxGridA2C1ChartView1Series1: TcxGridChartSeries;
    cxGridA2C1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape3: TShape;
    cbChartKindA2: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA2: TcxButton;
    cbKindA2: TcxComboBox;
    cxGridA2C2: TcxGrid;
    cxGridChartALL: TcxGridChartView;
    cxGridChartSeries1: TcxGridChartSeries;
    cxGridChartSeries2: TcxGridChartSeries;
    cxGridChartSeries3: TcxGridChartSeries;
    cxGridChartSeries4: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    cbKindA21: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnKeyExcelClick(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure edtWorkerSearchValueEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA2Click(Sender: TObject);
    procedure cxViewWorkerColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewWorkerDataControllerSortingChanged(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure btnChartA2Click(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
		AIndex : integer;
    AOrderBy : string;
    procedure proc_init_worker;
    procedure RequestDataWorker; // 기사별 통계
    procedure ResponseDataBase(ADataStr: WideString);
    // 처음 데이터를 수신하는 함수
    procedure ResponseDataWorker(AXmlStr: WideString); // 기사별 통계
    procedure SetSearchDate(AStart, AEnd: TDate);
	public
    { Public declarations }
    procedure proc_init;
  end;

var
  Frm_STTA2: TFrm_STTA2;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;


procedure TFrm_STTA2.FormCreate(Sender: TObject);
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

procedure TFrm_STTA2.FormDestroy(Sender: TObject);
begin
  Frm_STTA2 := Nil;
end;

procedure TFrm_STTA2.FormShow(Sender: TObject);
begin
  pnlMain.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA2.proc_init;
begin
  AOrderBy := 'sum1';
  proc_init_worker;
  lblSosokNameA2.Caption := GetSosokInfo;
end;

procedure TFrm_STTA2.proc_init_worker;
var
  I: Integer;
  prop: TcxCustomEditProperties;
begin
  try
    cxDtStartA2.Date := now;
    cxDtEndA2.Date := now + 1;

    prop := cxViewWorker.Columns[1].Properties;
    prop.Alignment.Horz := taCenter;

    // 금액관련 설정
    for I := 0 to cxViewWorker.ColumnCount - 1 do
    begin
      case I of
        0:
          cxViewWorker.Columns[I].DataBinding.ValueTypeClass :=
            TcxIntegerValueType;
        5..8:
          begin
            cxViewWorker.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
            cxViewWorker.Columns[1].Properties := Frm_Main.gCurProperties;
          end;
      else
        cxViewWorker.Columns[I].DataBinding.ValueTypeClass :=
          TcxStringValueType;
      end;
    end;
  except
  end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}

procedure TFrm_STTA2.RequestDataWorker;
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, msg, sWhere, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  prop: TcxCustomEditProperties;
  dt_sysdate2: string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('기사별통계') then Exit;

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

  // 희한하게 1번째 column이 우측정렬되네...-_-;(미해결되어 임시로 센터처리)
  prop := cxViewWorker.Columns[1].Properties;
  prop.Alignment.Horz := taCenter;

  cxViewWorker.Columns[1].Properties := prop;

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if GT_USERIF.LV = '60' then
        sWhere := Format(' a.WK_head = ''%s'' ', [GT_SEL_BRNO.HDNO])
      else if GT_USERIF.LV = '40' then
        sWhere := Format(' a.WK_BRCH = ''%s'' ', [GT_USERIF.BR])
      else if GT_USERIF.LV = '10' then
      begin
        sWhere := Format(' a.callcenter = ''%s'' AND (br.hd_no = ''%s'' OR br.route_mgr_etc = ''y'')', [GT_USERIF.BR, GT_USERIF.HD]);
      end;
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      sWhere := Format(' a.conf_brch = ''%s'' ', [GT_SEL_BRNO.BrNo]);
    end;

		if (cbbWorkerSearchType.ItemIndex = 0) and (edtWorkerSearchValue.Text <> '') then
			sWhere := sWhere + ' and a.CONF_WK_SABUN = ''' + Param_Filtering(edtWorkerSearchValue.Text) + '''';

		if (cbbWorkerSearchType.ItemIndex = 1) and (edtWorkerSearchValue.Text <> '') then
			sWhere := sWhere + ' and c.wk_shot_memo like ''' + Param_Filtering(edtWorkerSearchValue.Text) + '%''';
      
    sDate1 := formatdatetime('yyyymmdd', cxDtStartA2.Date);
    sDate2 := formatdatetime('yyyymmdd', cxDtEndA2.Date);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_WORKER_STAT_LIST, sQueryTemp);
    AOrderBy := '(sum1 + sum2)';
    sQueryTemp := sQueryTemp + Format(' Order by %s desc', [AOrderBy]);
    ls_TxQry := En_Coding(Format(sQueryTemp, [sDate1, sDate2, sWhere]));
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'STWK0001', [rfReplaceAll]);
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
procedure TFrm_STTA2.ResponseDataBase(ADataStr: WideString);
var
  xdom: msDomDocument;
  XmlData: WideString;
  ErrorCode, ClientKey: string;
begin
  xdom := ComsDomDocument.Create;
  try
    try
      XmlData := ADataStr;
      if not xdom.loadXML(XmlData) then Exit;

      ErrorCode := GetXmlErrorCode(XmlData);
      if ('0000' = ErrorCode) then
      begin
        ClientKey := GetXmlClientKey(XmlData);

        if ClientKey = 'STWK0001' then
          ResponseDataWorker(XmlData);
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

procedure TFrm_STTA2.ResponseDataWorker(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, iNum: Integer;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then Exit;

    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      cxViewWorker.DataController.SetRecordCount(0);
      cxViewWorker.BeginUpdate;
      ls_Rcrd := TStringlist.Create;
      try
        iNum := 0;
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
          if not Check_ID(GT_USERIF.ID, ls_Rcrd[2]) then
          begin
            ls_Rcrd.Insert(0, IntToStr(iNum + 1));

            cxViewWorker.DataController.AppendRecord;
            cxViewWorker.DataController.SetValue(iNum, 0, ls_Rcrd[0]);
            cxViewWorker.DataController.SetValue(iNum, 1, ls_Rcrd[1]);
            cxViewWorker.DataController.SetValue(iNum, 2, Format('%s(%s)', [ls_Rcrd[2], ls_Rcrd[3]]));
            cxViewWorker.DataController.SetValue(iNum, 3, ls_Rcrd[4]);
            cxViewWorker.DataController.SetValue(iNum, 4, ls_Rcrd[5]);
            cxViewWorker.DataController.SetValue(iNum, 5, ls_Rcrd[6]);
            cxViewWorker.DataController.SetValue(iNum, 6, ls_Rcrd[7]);
            cxViewWorker.DataController.SetValue(iNum, 7, ls_Rcrd[8]);
            cxViewWorker.DataController.SetValue(iNum, 8, ls_Rcrd[9]);
	  				cxViewWorker.DataController.SetValue(iNum, 9, ls_Rcrd[10]);
            iNum := iNum + 1;
          end;
        end;
      finally
        ls_Rcrd.Free;
        cxViewWorker.EndUpdate;
        btnChartA2.Click;
      end;
    end else
    begin
      cxViewWorker.DataController.SetRecordCount(0);
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_STTA2.MenuItemClick(Sender: TObject);
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

procedure TFrm_STTA2.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA2.Date := AStart;
  cxDtEndA2.Date := AEnd;
end;

procedure TFrm_STTA2.btnChartA2Click(Sender: TObject);
var
  I, J: Integer;
  iMCnt : integer;
begin
  case cbKindA2.ItemIndex of
    0:
    begin
      if cxViewWorker.DataController.RecordCount-1 >= 10 then
        iMCnt := 20
      else iMCnt := cxViewWorker.DataController.RecordCount-1;
    end;
    1:
    begin
      if cxViewWorker.DataController.RecordCount-1 >= 20 then
        iMCnt := 40
      else iMCnt := cxViewWorker.DataController.RecordCount-1;
    end;
    2:
    begin
      if cxViewWorker.DataController.RecordCount-1 >= 30 then
        iMCnt := 60
      else iMCnt := cxViewWorker.DataController.RecordCount-1;
    end;
  end;

  case cbKindA21.ItemIndex of
    0,1,2,3:
    begin
      cxGridA2C1.Visible := True;
      cxGridA2C2.Visible := False;
      cxGridA2C1ChartView1.BeginUpdate();
      try
        cxGridA2C1ChartView1.DataController.RecordCount := iMCnt;
        for I := 0 to iMCnt-1 do
        begin
         cxGridA2C1ChartView1.Categories.Values[I] := cxViewWorker.DataController.Values[i, 4];
         case cbKindA21.ItemIndex of
         0: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.DataController.Values[i, 5];
         1: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.DataController.Values[i, 6];
         2: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.DataController.Values[i, 7];
         3: cxGridA2C1ChartView1Series1.Values[I] := cxViewWorker.DataController.Values[i, 8];
         end;
        end;
      finally
        cxGridA2C1ChartView1.EndUpdate();
      end;
    end;
    4:
    begin
      cxGridA2C1.Visible := False;
      cxGridA2C2.Visible := True;
      cxGridChartALL.BeginUpdate();
      try
        cxGridChartALL.DataController.RecordCount := iMCnt;
         for I := 0 to iMCnt-1 do
         begin
           cxGridChartALL.Categories.Values[I] := cxViewWorker.DataController.Values[i, 4];
           cxGridChartSeries1.Values[I] := cxViewWorker.DataController.Values[i, 5];
           cxGridChartSeries2.Values[I] := cxViewWorker.DataController.Values[i, 6];
           cxGridChartSeries3.Values[I] := cxViewWorker.DataController.Values[i, 7];
           cxGridChartSeries4.Values[I] := cxViewWorker.DataController.Values[i, 8];
         end;
      finally
        cxGridChartALL.EndUpdate();
      end;
    end;
  end;
end;

procedure TFrm_STTA2.btnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_dateA2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA2.btnKeyExcelClick(Sender: TObject);
begin
  if cxViewWorker.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-기사별통계.xls';
  Frm_Main.sgRpExcel := Format('통계>기사별통계]%s건', [GetMoneyStr(cxViewWorker.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA2;
  Frm_Main.cxGridDBViewExcel := cxViewWorker;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA2.btnSearchA2Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataWorker;
end;

procedure TFrm_STTA2.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA2C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA2C1ChartView1.DiagramBar.Active := True;
  2:cxGridA2C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA2C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA2C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA2C1ChartView1.DiagramLine.Active := True;
  6:cxGridA2C1ChartView1.DiagramArea.Active := True;
  7:cxGridA2C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA2.Click;
end;

procedure TFrm_STTA2.cxComboBox2PropertiesChange(Sender: TObject);
begin
  case cbKindA2.ItemIndex of
    0, 4 :
    begin
      AOrderBy := 'sum1';
      cxViewWorker.Columns[5].SortOrder := soNone;
      cxViewWorker.Columns[6].SortOrder := soNone;
      cxViewWorker.Columns[7].SortOrder := soNone;
      cxViewWorker.Columns[8].SortOrder := soNone;

      cxViewWorker.Columns[5].SortOrder := soDescending;
    end;
    1 :
    begin
      AOrderBy := 'sum2';
      cxViewWorker.Columns[5].SortOrder := soNone;
      cxViewWorker.Columns[6].SortOrder := soNone;
      cxViewWorker.Columns[7].SortOrder := soNone;
      cxViewWorker.Columns[8].SortOrder := soNone;

      cxViewWorker.Columns[6].SortOrder := soDescending;
    end;
    2 :
    begin
      AOrderBy := '(sum1 + sum2)';
      cxViewWorker.Columns[5].SortOrder := soNone;
      cxViewWorker.Columns[6].SortOrder := soNone;
      cxViewWorker.Columns[7].SortOrder := soNone;
      cxViewWorker.Columns[8].SortOrder := soNone;

      cxViewWorker.Columns[7].SortOrder := soDescending;
    end;
    3 :
    begin
      AOrderBy := 'sum3';
      cxViewWorker.Columns[5].SortOrder := soNone;
      cxViewWorker.Columns[6].SortOrder := soNone;
      cxViewWorker.Columns[7].SortOrder := soNone;
      cxViewWorker.Columns[8].SortOrder := soNone;

      cxViewWorker.Columns[8].SortOrder := soDescending;
    end;
  end;
  if cbKindA2.ItemIndex = 4 then
  begin
    cxGridA2C1.Visible := False;
    cxGridA2C2.Visible := True;
  end else
  begin
    cxGridA2C1.Visible := True;
    cxGridA2C2.Visible := False;
  end;
  btnChartA2.Click;
end;

procedure TFrm_STTA2.cxViewWorkerColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STTA2.cxViewWorkerDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewWorker, AIndex, GS_SortNoChange);
end;

procedure TFrm_STTA2.mniN1Click(Sender: TObject);
begin
  btnExcelA2.Click;
end;

procedure TFrm_STTA2.edtWorkerSearchValueEnter(Sender: TObject);
begin
  TcxTextEdit(Sender).Clear;
end;

end.

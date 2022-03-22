unit xe_STTA7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, cxCurrencyEdit, DateUtils, MSXML2_TLB, system.Math,
  cxGridChartView, AdvSplitter, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_STTA7 = class(TForm)
    PnlMainA7: TPanel;
    Shape6: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape5: TShape;
    cxLabel218: TcxLabel;
    btn12: TcxButton;
    cxDtStartA7: TcxDateEdit;
    cxDtEndA7: TcxDateEdit;
    lblSosokNameA7: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    cxGridA7: TcxGrid;
    cxGrid_NewCust: TcxGridDBTableView;
    cxLevel4: TcxGridLevel;
    cxGrid_NewCustColumn1: TcxGridDBColumn;
    cxGrid_NewCustColumn2: TcxGridDBColumn;
    cxGrid_NewCustColumn3: TcxGridDBColumn;
    cxGrid_NewCustColumn4: TcxGridDBColumn;
    cxLabel33: TcxLabel;
    Shape1: TShape;
    cbbA7: TcxComboBox;
    cxLabel16: TcxLabel;
    pop_date: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    dlgSave: TSaveDialog;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    AdvSplitter1: TAdvSplitter;
    pnlChart: TPanel;
    cxGridA7C1: TcxGrid;
    cxGridA7C1ChartView1: TcxGridChartView;
    cxGridA7C1ChartView1Series1: TcxGridChartSeries;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape7: TShape;
    cbChartKindA7: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA7: TcxButton;
    cxGridA7C1ChartView1Series2: TcxGridChartSeries;
    procedure btnSearchA7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure btnExcelA7Click(Sender: TObject);
    procedure btn12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure btnChartA7Click(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    iCust, iNewCust  : integer;
    procedure proc_init_worker;
    procedure RequestDataNewCust; // 지역콜통계
    procedure SetSearchDate(AStart, AEnd: TDate);
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA7: TFrm_STTA7;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;

procedure TFrm_STTA7.btnSearchA7Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataNewCust;
end;

procedure TFrm_STTA7.btnExcelA7Click(Sender: TObject);
begin
  if cxGrid_NewCust.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-신규고객통계.xls';
  Frm_Main.sgRpExcel := Format('통계>신규고객통계]%s건', [GetMoneyStr(cxGrid_NewCust.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA7;
  Frm_Main.cxGridDBViewExcel := cxGrid_NewCust;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA7.btn12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA7.btnChartA7Click(Sender: TObject);
var
  I : Integer;
begin
  cxGridA7C1ChartView1.BeginUpdate();
  try
    cxGridA7C1ChartView1.DataController.RecordCount := cxGrid_NewCust.DataController.RecordCount;

    for I := 0 to cxGrid_NewCust.DataController.RecordCount-1 do
    begin
      cxGridA7C1ChartView1.Categories.Values[I] := cxGrid_NewCust.DataController.Values[i, 0];

      cxGridA7C1ChartView1Series1.Values[I] := cxGrid_NewCust.DataController.Values[i, 1];
      cxGridA7C1ChartView1Series2.Values[I] := cxGrid_NewCust.DataController.Values[i, 2];
    end;

  finally
    cxGridA7C1ChartView1.EndUpdate();
  end;
end;

procedure TFrm_STTA7.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA7C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA7C1ChartView1.DiagramBar.Active := True;
  2:cxGridA7C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA7C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA7C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA7C1ChartView1.DiagramLine.Active := True;
  6:cxGridA7C1ChartView1.DiagramArea.Active := True;
  7:cxGridA7C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA7.Click;
end;

procedure TFrm_STTA7.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCust <> 0 then
		AText := FormatFloat('#,##0', iCust);
end;

procedure TFrm_STTA7.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iNewCust <> 0 then
		AText := FormatFloat('#,##0', iNewCust);
end;

procedure TFrm_STTA7.cxGrid_NewCustTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCust <> 0 then
		AText := FloatToStr(roundto((iNewCust / iCust * 100),-1)) + '%';
end;

procedure TFrm_STTA7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA7.FormCreate(Sender: TObject);
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

procedure TFrm_STTA7.FormDestroy(Sender: TObject);
begin
  Frm_STTA7 := Nil;
end;

procedure TFrm_STTA7.FormShow(Sender: TObject);
begin
  pnlMainA7.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA7.MenuItem1Click(Sender: TObject);
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

procedure TFrm_STTA7.mniN1Click(Sender: TObject);
begin
  btnExcelA7.Click;
end;

procedure TFrm_STTA7.proc_init;
begin
  lblSosokNameA7.Caption := GetSosokInfo;
  proc_init_worker;

  proc_Init_BRS;
end;

procedure TFrm_STTA7.proc_Init_BRS;
var
  i, k, iRow : integer;
  ls_TxLoad, rv_str : string;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  tmpCnt: integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
  try
    cbbA7.Properties.Items.Clear;
    cbbA7.Properties.Items.Add('지사전체');

    // 통계화면
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := GT_SEL_BRNO.HDNO
    else
      Param := GT_USERIF.HD;

    if not RequestBase(GetSel05('GETBRLIST', 'STT.GET_BRLIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('지사리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);


    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
      for k:=0 to tmpCnt-1 do
      begin
        ArrSt[k]:=tmpStr;
        if Pos('/>',tmpStr)>0 then
        begin
          ArrSt[k]:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
          if Pos('<Result Value=',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],Pos('<Result Value=',ArrSt[k])+14,Length(ArrSt[k])-Pos('<Result Value=',ArrSt[k])+14+1);
          if Pos('/>',ArrSt[k]) > 0 then
            ArrSt[k] := Copy(ArrSt[k],1,Pos('/>',ArrSt[k])-1);
          ArrSt[k]:=StringReplace(ArrSt[k],'"','',[rfReplaceAll]);

          tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
          if not Check_ID(GT_USERIF.ID, copy(ArrSt[k],1,4)) then
          begin
            cbbA7.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA7.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA7.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA7.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR,cbbA7.Properties.Items[k]) = 1 then i:=k;

      end;
      if i<>-1 then
      begin
        cbbA7.ItemIndex:=i;
        cbbA7.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA7.proc_init_worker;
Var i : Integer;
begin
  try
    cxDtStartA7.Date := Now;
    cxDtEndA7.Date := Now + 1;
    for i := 0 to cxGrid_NewCust.ColumnCount - 1 do
    begin
      if i In [0, 3] then
        cxGrid_NewCust.Columns[i].DataBinding.ValueType := 'String'
      else
        cxGrid_NewCust.Columns[i].DataBinding.ValueType := 'Integer';
    end;
  except
  end;
end;

procedure TFrm_STTA7.RequestDataNewCust;
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  strHdNo, strBrNo : string;
  irNewCust, irCust : integer;
begin
  if fGetChk_Search_HdBrNo('신규고객통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_NewCust.DataController.SetRecordCount(0);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
      strHdNo := GT_USERIF.HD;

    if (GT_USERIF.lv='60') and (cbbA7.itemindex=0) then
      strBrNo := ''
    else
      strBrNo := Trim(Copy(cbbA7.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT01.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT01');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA7.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA7.Date));

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox(ls_Msg_Err, CDMSI);
              exit;
            end;
            Try
              iCust := 0;   iNewCust := 0;
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
              cxGrid_NewCust.BeginUpdate;
              ls_Rcrd := TStringList.Create;
              for i := 0 to lst_Result.length -1 do
              begin
                irCust := 0;
                irNewCust := 0;

                iRow := cxGrid_NewCust.DataController.AppendRecord;
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
                cxGrid_NewCust.DataController.Values[iRow, 0] := ls_Rcrd[0];
                irCust := StrTointDef(ls_Rcrd[1], 0);
                cxGrid_NewCust.DataController.Values[iRow, 1] := FormatFloat('#,##0', strtoint(ls_Rcrd[1]));
                irNewCust := StrTointDef(ls_Rcrd[2], 0);
                cxGrid_NewCust.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
                if irNewCust = 0 then
                  cxGrid_NewCust.DataController.Values[iRow, 3] := '0'
                else
                  cxGrid_NewCust.DataController.Values[iRow, 3] := FloatToStr(roundto((irNewCust / irCust * 100),-1)) + '%';

                iCust := iCust + irCust;
                iNewCust := iNewCust + irNewCust;
              end;
            Finally
              ls_Rcrd.Free;
              cxGrid_NewCust.EndUpdate;

            End;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      btnChartA7.Click;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Screen.Cursor := crDefault;
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STTA7.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA7.Date := AStart;
  cxDtEndA7.Date := AEnd;
end;

end.

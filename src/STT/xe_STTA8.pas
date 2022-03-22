unit xe_STTA8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
   Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, DateUtils, MSXML2_TLB, system.Math,
  cxGridChartView, AdvSplitter, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_STTA8 = class(TForm)
    PnlMainA8: TPanel;
    Shape6: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape5: TShape;
    Shape1: TShape;
    cxLabel218: TcxLabel;
    btn12: TcxButton;
    cxDtStartA8: TcxDateEdit;
    cxDtEndA8: TcxDateEdit;
    lblSosokNameA8: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    btnSearchA8: TcxButton;
    btnExcelA8: TcxButton;
    cxLabel33: TcxLabel;
    cbbA8: TcxComboBox;
    cxLabel16: TcxLabel;
    cxGridA8: TcxGrid;
    cxGrid_OrderTimeList: TcxGridDBTableView;
    cxLevel4: TcxGridLevel;
    cxGrid_OrderTimeListColumn1: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn2: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn3: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn4: TcxGridDBColumn;
    cxGrid_OrderTimeListColumn5: TcxGridDBColumn;
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
    cxGridA8C1: TcxGrid;
    cxGridA8C1ChartView1: TcxGridChartView;
    cxGridA8C1ChartView1Series1: TcxGridChartSeries;
    cxGridA8C1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape7: TShape;
    cbChartKindA8: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA8: TcxButton;
    cbKindA8: TcxComboBox;
    cxGridA8C2: TcxGrid;
    cxGridA8C2ChartALL: TcxGridChartView;
    cxGridA8C2ChartSeries1: TcxGridChartSeries;
    cxGridA8C2ChartSeries2: TcxGridChartSeries;
    cxGridA8C2ChartSeries3: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    procedure btn12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnExcelA8Click(Sender: TObject);
    procedure btnSearchA8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure btnChartA8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
  private
    { Private declarations }
    iTCall, iFCall, iCCall  : integer;
    procedure proc_init_worker;
    procedure SetSearchDate(AStart, AEnd: TDate);
    procedure RequestDataOrderTimeList;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA8: TFrm_STTA8;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;

{ TFrm_STTA8 }

procedure TFrm_STTA8.btnSearchA8Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataOrderTimeList;
end;

procedure TFrm_STTA8.btnExcelA8Click(Sender: TObject);
begin
  if cxGrid_OrderTimeList.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-시간대별콜수통계.xls';
  Frm_Main.sgRpExcel := Format('통계>시간대별콜수통계]%s건', [GetMoneyStr(cxGrid_OrderTimeList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA8;
  Frm_Main.cxGridDBViewExcel := cxGrid_OrderTimeList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA8.btn12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA8.btnChartA8Click(Sender: TObject);
var
  I : Integer;
begin
  case cbKindA8.ItemIndex of
    0,1,2:
    begin
      cxGridA8C1.Visible := True;
      cxGridA8C2.Visible := False;
      cxGridA8C1ChartView1.BeginUpdate();
      try
        cxGridA8C1ChartView1.DataController.RecordCount := cxGrid_OrderTimeList.DataController.RecordCount;

        for I := 0 to cxGrid_OrderTimeList.DataController.RecordCount-1 do
        begin
          cxGridA8C1ChartView1.Categories.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 0];

          case cbKindA8.ItemIndex of
            0: cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 1];
            1: cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 2];
            2: cxGridA8C1ChartView1Series1.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 3];
          end;
        end;
      finally
        cxGridA8C1ChartView1.EndUpdate();
      end;
    end;
    3:
    begin
      cxGridA8C1.Visible := False;
      cxGridA8C2.Visible := True;
      cxGridA8C2ChartALL.BeginUpdate();
      try
        cxGridA8C2ChartALL.DataController.RecordCount := cxGrid_OrderTimeList.DataController.RecordCount;;
         for I := 0 to cxGrid_OrderTimeList.DataController.RecordCount-1 do
         begin
           cxGridA8C2ChartALL.Categories.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 0];
           cxGridA8C2ChartSeries1.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 1];
           cxGridA8C2ChartSeries2.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 2];
           cxGridA8C2ChartSeries3.Values[I] := cxGrid_OrderTimeList.DataController.Values[i, 3];
         end;
      finally
        cxGridA8C2ChartALL.EndUpdate();
      end;
    end;
  end;

end;

procedure TFrm_STTA8.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA8C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA8C1ChartView1.DiagramBar.Active := True;
  2:cxGridA8C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA8C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA8C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA8C1ChartView1.DiagramLine.Active := True;
  6:cxGridA8C1ChartView1.DiagramArea.Active := True;
  7:cxGridA8C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA8.Click;
end;

procedure TFrm_STTA8.cxComboBox2PropertiesChange(Sender: TObject);
begin
  if cbKindA8.ItemIndex = 3 then
  begin
    cxGridA8C1.Visible := False;
    cxGridA8C2.Visible := True;
  end
  else
  begin
    cxGridA8C1.Visible := True;
    cxGridA8C2.Visible := False;
  end;
  btnChartA8.Click;
end;

procedure TFrm_STTA8.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTCall <> 0 then
		AText := FormatFloat('#,##0', iTCall);
end;

procedure TFrm_STTA8.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iFCall <> 0 then
		AText := FormatFloat('#,##0', iFCall);
end;

procedure TFrm_STTA8.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall <> 0 then
		AText := FormatFloat('#,##0', iCCall);
end;

procedure TFrm_STTA8.cxGrid_OrderTimeListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall <> 0 then
		AText := FloatToStr(roundto((iCCall / iTCall * 100),-1)) + '%';
end;

procedure TFrm_STTA8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA8.FormCreate(Sender: TObject);
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

procedure TFrm_STTA8.FormDestroy(Sender: TObject);
begin
  Frm_STTA8 := Nil;
end;

procedure TFrm_STTA8.FormShow(Sender: TObject);
begin
  pnlMainA8.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA8.MenuItem1Click(Sender: TObject);
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

procedure TFrm_STTA8.mniN1Click(Sender: TObject);
begin
  btnExcelA8.Click;
end;

procedure TFrm_STTA8.proc_init;
begin
  lblSosokNameA8.Caption := GetSosokInfo;
  proc_init_worker;

  proc_Init_BRS;
end;

procedure TFrm_STTA8.proc_Init_BRS;
var
  i : integer;
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  try
    cbbA8.Properties.Items.Clear;
    cbbA8.Properties.Items.Add('지사전체');

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
            cbbA8.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA8.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA8.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA8.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR,cbbA8.Properties.Items[k]) = 1 then i:=k;

      end;
      if i<>-1 then
      begin
        cbbA8.ItemIndex:=i;
        cbbA8.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA8.proc_init_worker;
Var i : Integer;
begin
  try
    cxDtStartA8.Date := Now;
    cxDtEndA8.Date := Now + 1;

    for i := 0 to cxGrid_OrderTimeList.ColumnCount - 1 do
    begin
      if i In [0, 4] then
        cxGrid_OrderTimeList.Columns[i].DataBinding.ValueType := 'String'
      else
        cxGrid_OrderTimeList.Columns[i].DataBinding.ValueType := 'Integer';
    end;

  except

  end;
end;

procedure TFrm_STTA8.RequestDataOrderTimeList;
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
  irTCall, irCCall : integer;
begin
  if fGetChk_Search_HdBrNo('시간대별콜수통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_OrderTimeList.DataController.SetRecordCount(0);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
      strHdNo := GT_USERIF.HD;

    if (GT_USERIF.lv='60') and (cbbA8.itemindex=0) then
      strBrNo := ''
    else
      strBrNo := Trim(Copy(cbbA8.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT02.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT02');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA8.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA8.Date));

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
              iTCall := 0; iFCall := 0; iCCall := 0;
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Stat');
              cxGrid_OrderTimeList.BeginUpdate;
              ls_Rcrd := TStringList.Create;
              for i := 0 to lst_Result.length -1 do
              begin
                irTCall := 0;
                irCCall := 0;

                iRow := cxGrid_OrderTimeList.DataController.AppendRecord;
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
                cxGrid_OrderTimeList.DataController.Values[iRow, 0] := ls_Rcrd[0];
                irTCall := irTCall + StrToIntDef(ls_Rcrd[1],0);
                cxGrid_OrderTimeList.DataController.Values[iRow, 1] := FormatFloat('#,##0', strtoint(ls_Rcrd[1]));
                iFCall := iFCall + StrToIntDef(ls_Rcrd[2],0);
                cxGrid_OrderTimeList.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
                irCCall := irCCall + StrToIntDef(ls_Rcrd[3],0);
                cxGrid_OrderTimeList.DataController.Values[iRow, 3] := FormatFloat('#,##0', strtoint(ls_Rcrd[3]));
                if irCCall = 0 then
                  cxGrid_OrderTimeList.DataController.Values[iRow, 4] := '0'
                else
                  cxGrid_OrderTimeList.DataController.Values[iRow, 4] := FloatToStr(roundto((irCCall / irTCall * 100),-1)) + '%';

                iCCall := iCCall + irCCall;
                iTCall := iTCall + irTCall;
              end;
            Finally
              ls_Rcrd.Free;
              cxGrid_OrderTimeList.EndUpdate;
            End;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      btnChartA8.Click;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STTA8.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA8.Date := AStart;
  cxDtEndA8.Date := AEnd;
end;

end.

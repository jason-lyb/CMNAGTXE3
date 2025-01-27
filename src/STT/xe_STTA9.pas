unit xe_STTA9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, DateUtils, MSXML2_TLB, system.Math,
  cxGridChartView, AdvSplitter, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_STTA9 = class(TForm)
    PnlMainA9: TPanel;
    Shape6: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape5: TShape;
    Shape1: TShape;
    cxLabel218: TcxLabel;
    btn12: TcxButton;
    cxDtStartA9: TcxDateEdit;
    cxDtEndA9: TcxDateEdit;
    lblSosokNameA9: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    btnSearchA9: TcxButton;
    btnExcelA9: TcxButton;
    cxLabel33: TcxLabel;
    cbbA9: TcxComboBox;
    cxLabel16: TcxLabel;
    cxGridA9: TcxGrid;
    cxGrid_OrderDayList: TcxGridDBTableView;
    cxGrid_OrderDayListColumn1: TcxGridDBColumn;
    cxGrid_OrderDayListColumn3: TcxGridDBColumn;
    cxGrid_OrderDayListColumn4: TcxGridDBColumn;
    cxGrid_OrderDayListColumn5: TcxGridDBColumn;
    cxGrid_OrderDayListColumn6: TcxGridDBColumn;
    cxLevel4: TcxGridLevel;
    cxGrid_OrderDayListColumn2: TcxGridDBColumn;
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
    cxGridA9C1: TcxGrid;
    cxGridA9C1ChartView1: TcxGridChartView;
    cxGridA9C1ChartView1Series1: TcxGridChartSeries;
    cxGridA9C1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape7: TShape;
    cbChartKindA9: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA9: TcxButton;
    cbKindA9: TcxComboBox;
    cxGridA9C2: TcxGrid;
    cxGridA9C2ChartALL: TcxGridChartView;
    cxGridA9C2ChartSeries1: TcxGridChartSeries;
    cxGridA9C2ChartSeries2: TcxGridChartSeries;
    cxGridA9C2ChartSeries3: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    procedure btn12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure mniN1Click(Sender: TObject);
    procedure btnExcelA9Click(Sender: TObject);
    procedure btnSearchA9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure btnChartA9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    iTcall, iFcall, ICcall : integer;
    procedure proc_init_worker;
    procedure SetSearchDate(AStart, AEnd: TDate);
    procedure RequestDataOrderDayList; // 지역콜통계
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA9: TFrm_STTA9;

implementation

{$R *.dfm}
uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;

{ TFrm_STTA9 }

procedure TFrm_STTA9.btnSearchA9Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataOrderDayList;
end;

procedure TFrm_STTA9.btnExcelA9Click(Sender: TObject);
begin
  if cxGrid_OrderDayList.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-일별콜수통계.xls';
  Frm_Main.sgRpExcel := Format('통계>일별콜수통계]%s건', [GetMoneyStr(cxGrid_OrderDayList.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA9;
  Frm_Main.cxGridDBViewExcel := cxGrid_OrderDayList;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA9.btn12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA9.btnChartA9Click(Sender: TObject);
var
  I : Integer;
begin
  case cbKindA9.ItemIndex of
    0,1,2:
    begin
      cxGridA9C1.Visible := True;
      cxGridA9C2.Visible := False;
      cxGridA9C1ChartView1.BeginUpdate();
      try
        cxGridA9C1ChartView1.DataController.RecordCount := cxGrid_OrderDayList.DataController.RecordCount;

        for I := 0 to cxGrid_OrderDayList.DataController.RecordCount-1 do
        begin
          cxGridA9C1ChartView1.Categories.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 0];

          case cbKindA9.ItemIndex of
            0: cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 2];
            1: cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 3];
            2: cxGridA9C1ChartView1Series1.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 4];
          end;
        end;
      finally
        cxGridA9C1ChartView1.EndUpdate();
      end;
    end;
    3:
    begin
      cxGridA9C1.Visible := False;
      cxGridA9C2.Visible := True;
      cxGridA9C2ChartALL.BeginUpdate();
      try
        cxGridA9C2ChartALL.DataController.RecordCount := cxGrid_OrderDayList.DataController.RecordCount;;
         for I := 0 to cxGrid_OrderDayList.DataController.RecordCount-1 do
         begin
           cxGridA9C2ChartALL.Categories.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 0];
           cxGridA9C2ChartSeries1.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 2];
           cxGridA9C2ChartSeries2.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 3];
           cxGridA9C2ChartSeries3.Values[I] := cxGrid_OrderDayList.DataController.Values[i, 4];
         end;
      finally
        cxGridA9C2ChartALL.EndUpdate();
      end;
    end;
  end;
end;

procedure TFrm_STTA9.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA9C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA9C1ChartView1.DiagramBar.Active := True;
  2:cxGridA9C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA9C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA9C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA9C1ChartView1.DiagramLine.Active := True;
  6:cxGridA9C1ChartView1.DiagramArea.Active := True;
  7:cxGridA9C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA9.Click;
end;

procedure TFrm_STTA9.cxComboBox2PropertiesChange(Sender: TObject);
begin
  if cbKindA9.ItemIndex = 3 then
  begin
    cxGridA9C1.Visible := False;
    cxGridA9C2.Visible := True;
  end else
  begin
    cxGridA9C1.Visible := True;
    cxGridA9C2.Visible := False;
  end;
  btnChartA9.Click;
end;

procedure TFrm_STTA9.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iTCall <> 0 then
		AText := FormatFloat('#,##0', iTCall);
end;

procedure TFrm_STTA9.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iFCall <> 0 then
		AText := FormatFloat('#,##0', iFCall);
end;

procedure TFrm_STTA9.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall <> 0 then
		AText := FormatFloat('#,##0', iCCall);
end;

procedure TFrm_STTA9.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
	if iCCall <> 0 then
		AText := FloatToStr(roundto((iCCall / iTCall * 100),-1)) + '%';
end;

procedure TFrm_STTA9.cxGrid_OrderDayListTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := '합      계';
end;

procedure TFrm_STTA9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA9.FormCreate(Sender: TObject);
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

procedure TFrm_STTA9.FormDestroy(Sender: TObject);
begin
  Frm_STTA9 := Nil;
end;

procedure TFrm_STTA9.FormShow(Sender: TObject);
begin
  pnlMainA9.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA9.MenuItem1Click(Sender: TObject);
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

procedure TFrm_STTA9.mniN1Click(Sender: TObject);
begin
  btnExcelA9.Click;
end;

procedure TFrm_STTA9.proc_init;
begin
  lblSosokNameA9.Caption := GetSosokInfo;
  proc_init_worker;

  proc_Init_BRS;
end;

procedure TFrm_STTA9.proc_Init_BRS;
var
  i, k, iRow : integer;
  ls_TxLoad : string;
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
    cbbA9.Properties.Items.Clear;
    cbbA9.Properties.Items.Add('지사전체');

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
            cbbA9.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA9.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA9.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA9.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR,cbbA9.Properties.Items[k]) = 1 then i:=k;
      end;
      if i<>-1 then
      begin
        cbbA9.ItemIndex:=i;
        cbbA9.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA9.proc_init_worker;
Var i : Integer;
begin
  try
    cxDtStartA9.Date := Now;
    cxDtEndA9.Date := Now + 1;

    for I := 0 to cxGrid_OrderDayList.ColumnCount - 1 do
    begin
      if i In [0, 1, 5] then
        cxGrid_OrderDayList.Columns[i].DataBinding.ValueType := 'String'
      else
        cxGrid_OrderDayList.Columns[i].DataBinding.ValueType := 'Integer';
    end;
  except
  end;
end;

procedure TFrm_STTA9.RequestDataOrderDayList;
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
  if fGetChk_Search_HdBrNo('일별콜수통계') then Exit;

	try
    //////////////////////////////////////////////////////////////////////////////////
    //  접수 전문
    //////////////////////////////////////////////////////////////////////////////////
    cxGrid_OrderDayList.DataController.SetRecordCount(0);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      strHdNo := GT_SEL_BRNO.HDNO
    else
      strHdNo := GT_USERIF.HD;

    if (GT_USERIF.lv='60') and (cbbA9.itemindex=0) then
      strBrNo := ''
    else
      strBrNo := Trim(Copy(cbbA9.Text,1,5));

    ls_TxLoad := GTx_UnitXmlLoad('STAT03.XML');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString', GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientKeyString', 'STAT03');
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo', strHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo', strBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFromDate', FormatDateTime('YYYYMMDD', cxDtStartA9.Date));
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strToDate', FormatDateTime('YYYYMMDD', cxDtEndA9.Date));

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
              cxGrid_OrderDayList.BeginUpdate;
              ls_Rcrd := TStringList.Create;
              for i := 0 to lst_Result.length -1 do
              begin
                irTCall := 0;
                irCCall := 0;
                iRow := cxGrid_OrderDayList.DataController.AppendRecord;
                GetTextSeperationEx2('│', lst_Result.item[i].attributes.getNamedItem('Data').Text, ls_Rcrd);
                cxGrid_OrderDayList.DataController.Values[iRow, 0] := ls_Rcrd[0];
                cxGrid_OrderDayList.DataController.Values[iRow, 1] := ls_Rcrd[1];
                irTCall := StrToIntDef(ls_Rcrd[2],0);
                cxGrid_OrderDayList.DataController.Values[iRow, 2] := FormatFloat('#,##0', strtoint(ls_Rcrd[2]));
                iFCall := iFCall + StrToIntDef(ls_Rcrd[3],0);
                cxGrid_OrderDayList.DataController.Values[iRow, 3] := FormatFloat('#,##0', strtoint(ls_Rcrd[3]));
                irCCall := StrToIntDef(ls_Rcrd[4],0);
                cxGrid_OrderDayList.DataController.Values[iRow, 4] := FormatFloat('#,##0', strtoint(ls_Rcrd[4]));

                if irCCall = 0 then
                  cxGrid_OrderDayList.DataController.Values[iRow, 5] := '0'
                else
                  cxGrid_OrderDayList.DataController.Values[iRow, 5] := FloatToStr(roundto((irCCall / irTCall * 100),-1)) + '%';

                iCCall := iCCall + irCCall;
                iTCall := iTCall + irTCall;
              end;
            Finally
              ls_Rcrd.Free;
              cxGrid_OrderDayList.EndUpdate;
            End;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      btnChartA9.Click;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_STTA9.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA9.Date := AStart;
  cxDtEndA9.Date := AEnd;
end;

end.

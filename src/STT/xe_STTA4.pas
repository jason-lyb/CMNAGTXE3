unit xe_STTA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, cxCheckBox, cxGridChartView, AdvSplitter, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_STTA4 = class(TForm)
    pop_date: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    dlgSave: TSaveDialog;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape1: TShape;
    Shape5: TShape;
    cxLabel218: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    lblSosokNameA4: TcxLabel;
    btn4: TcxButton;
    btnSearchA3: TcxButton;
    btnExcelA4: TcxButton;
    cbbA4: TcxComboBox;
    cbb3: TcxComboBox;
    cxDtEndA4: TcxDateEdit;
    cxDtStartA4: TcxDateEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    edtA4: TcxTextEdit;
    PnlMainA4: TPanel;
    Shape6: TShape;
    cxGridA4: TcxGrid;
    cxGridA4View1: TcxGridDBTableView;
    asg10: TcxGridDBColumn;
    asg11: TcxGridDBColumn;
    asg12: TcxGridDBColumn;
    asg13: TcxGridDBColumn;
    asg14: TcxGridDBColumn;
    asgView2Column1: TcxGridDBColumn;
    asgView2Column2: TcxGridDBColumn;
    cxLevel2: TcxGridLevel;
    AdvSplitter1: TAdvSplitter;
    pnlChart: TPanel;
    cxGridA4C1: TcxGrid;
    cxGridA4C1ChartView1: TcxGridChartView;
    cxGridA4C1ChartView1Series1: TcxGridChartSeries;
    cxGridA4C1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape3: TShape;
    cbChartKindA4: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA4: TcxButton;
    cbKindA4: TcxComboBox;
    cxGridA4C1ChartView1Series2: TcxGridChartSeries;
    cxGridA4C1ChartView1Series3: TcxGridChartSeries;
    cxGridA4View1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniN1Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxView2DataControllerSortingChanged(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure btnChartA4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    procedure proc_init_worker;
    procedure RequestDataBr; // 자사통계
    procedure SetSearchDate(AStart, AEnd: TDate);
	public
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA4: TFrm_STTA4;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;


procedure TFrm_STTA4.FormCreate(Sender: TObject);
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

procedure TFrm_STTA4.FormDestroy(Sender: TObject);
begin
  Frm_STTA4 := Nil;
end;

procedure TFrm_STTA4.FormShow(Sender: TObject);
begin
  pnlMainA4.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA4.proc_Init_BRS;
var
  i, k, iRow : integer;
  ls_TxLoad, rv_str, msg: string;
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
    cbbA4.Properties.Items.Clear;
    cbbA4.Properties.Items.Add('지사전체');

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
            cbbA4.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA4.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA4.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA4.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR, cbbA4.Properties.Items[k]) = 1 then i:=k;
      end;
      if i<>-1 then
      begin
        cbbA4.ItemIndex:=i;
        cbbA4.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA4.proc_init;
begin
  lblSosokNameA4.Caption := GetSosokInfo;
  proc_Init_BRS;
  proc_init_worker;
end;

procedure TFrm_STTA4.proc_init_worker;
begin
  try
    cxDtStartA4.Date := Now;
    cxDtEndA4.Date := Now + 1;
  except
  end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}

procedure TFrm_STTA4.RequestDataBr; // 자사통계
var
  ls_TxLoad, rv_str, msg: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  ls_Rcrd: TStringList;
  I, j, k, iRow : Integer;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  tmpStr: string;
  ArrSt: array of string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('자사통계') then Exit;

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

  if (cbb3.itemindex<>0) and (Length(edtA4.Text)<3) then
  begin
    GMessagebox('검색을 수행하려면 3자이상 입력해야 합니다.', CDMSI);
    exit;
  end;

  if (cbb3.itemindex = 0) or (cbb3.ItemIndex = 1) then
    Param := '1'
  else
    Param := '2';

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;

  if (GT_USERIF.lv='60') and (cbbA4.itemindex=0) then
    Param := Param + '│' + '%'
  else
    Param := Param + '│' + Trim(Copy(cbbA4.Text,1,5));
    // GT_USERIF.BR;

  Param := Param + '│';
  Param := Param + '│' + Param_Filtering(edtA4.text) +'%';

  Param := Param + '│' + StringReplace(cxDtStartA4.text,'-','',[rfReplaceAll]) + '090000';
  Param := Param + '│' + StringReplace(cxDtEndA4.text,'-','',[rfReplaceAll]) + '090000';

  slList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
    begin
      if not RequestBasePaging(GetSel05('GETBRSTT', 'STT.GET_BR_STT', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('자사통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        Exit;
      end;
    end else
    begin
      if not RequestBasePaging(GetSel05('GETBRSTT', 'STT_8282SN.GET_BR_STT', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('자사통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        Exit;
      end;
    end;

    cxGridA4View1.DataController.SetRecordCount(0);
    cxGridA4C1ChartView1.DataController.SetRecordCount(0);

    StrList := TStringList.Create;
    iCnt := 1;
    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData)>0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;
      if tmpCnt<1 then exit;

      cxGridA4View1.BeginUpdate;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

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
            StrList.Clear;
            GetTextSeperationEx('│', ArrSt[k], StrList);
            iRow := cxGridA4View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA4View1, iRow, 0, '')
            else
              SetGridData(cxGridA4View1, iRow, 0, IntToStr(iCnt));
            SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA4View1, iRow, 3, '발주');
            SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[4]);
            SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[5]);
            SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[6]);
            SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);


            iRow := cxGridA4View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA4View1, iRow, 0, '')
            else
              SetGridData(cxGridA4View1, iRow, 0, IntToStr(k+1));
            SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA4View1, iRow, 3, '수주');
            SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[7]);
            SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[8]);
            SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[9]);
            SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);


            iRow := cxGridA4View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA4View1, iRow, 0, '')
            else
              SetGridData(cxGridA4View1, iRow, 0, IntToStr(k+1));
            SetGridData(cxGridA4View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA4View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA4View1, iRow, 3, '발주비율(%)');
            SetGridData(cxGridA4View1, iRow, 4, StrList.Strings[10]);
            SetGridData(cxGridA4View1, iRow, 5, StrList.Strings[11]);
            SetGridData(cxGridA4View1, iRow, 6, StrList.Strings[12]);
            SetGridData(cxGridA4View1, iRow, 7, StrList.Strings[2]);
            Inc(iCnt);
          end;
        end;
      finally
        cxGridA4View1.endupdate;
        btnChartA4.Click;
      end;
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_STTA4.MenuItemClick(Sender: TObject);
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

procedure TFrm_STTA4.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA4.Date := AStart;
  cxDtEndA4.Date := AEnd;
end;

procedure TFrm_STTA4.btnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA4.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA4C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA4C1ChartView1.DiagramBar.Active := True;
  2:cxGridA4C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA4C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA4C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA4C1ChartView1.DiagramLine.Active := True;
  6:cxGridA4C1ChartView1.DiagramArea.Active := True;
  7:cxGridA4C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA4.Click;
end;

procedure TFrm_STTA4.btnChartA4Click(Sender: TObject);
var
  I, J: Integer;
begin
  cxGridA4C1ChartView1.BeginUpdate();
  try
    cxGridA4C1ChartView1.DataController.RecordCount := cxGridA4View1.DataController.RecordCount DIV 3;

    i := cbKindA4.ItemIndex;
    j := 0;
    while i <= cxGridA4View1.DataController.RecordCount-1 do
    begin
      cxGridA4C1ChartView1.Categories.Values[J] := cxGridA4View1.DataController.Values[i, 2];
      cxGridA4C1ChartView1Series1.Values[J] := cxGridA4View1.DataController.Values[i, 4];
      cxGridA4C1ChartView1Series2.Values[J] := cxGridA4View1.DataController.Values[i, 5];
      cxGridA4C1ChartView1Series3.Values[J] := cxGridA4View1.DataController.Values[i, 6];
      i := i + 3;
      inc(J);
    end;

  finally
    cxGridA4C1ChartView1.EndUpdate();
  end;
end;

procedure TFrm_STTA4.cxComboBox2PropertiesChange(Sender: TObject);
begin
  btnChartA4.Click;
end;

procedure TFrm_STTA4.cxGridA4View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STTA4.cxView2DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA4View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STTA4.mniN1Click(Sender: TObject);
begin
	btnExcelA4.Click;
end;

procedure TFrm_STTA4.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataBr;
end;

procedure TFrm_STTA4.btnExcelA4Click(Sender: TObject);
begin
  if cxGridA4View1.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-자사통계.xls';
  Frm_Main.sgRpExcel := Format('통계>자사통계]%s건', [GetMoneyStr(cxGridA4View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA4;
  Frm_Main.cxGridDBViewExcel := cxGridA4View1;
  Frm_Main.proc_excel(0);
end;

end.

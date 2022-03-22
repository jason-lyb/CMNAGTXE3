unit xe_STTA6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, cxGridChartView, AdvSplitter, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TAdrLst = record
    City: string;
    Ward: string;
  end;

type
  TFrm_STTA6 = class(TForm)
    pop_date: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    dlgSave: TSaveDialog;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cxGridA6: TcxGrid;
    cxcxGridA6View1: TcxGridDBTableView;
    asg30: TcxGridDBColumn;
    asg31: TcxGridDBColumn;
    asg32: TcxGridDBColumn;
    asg33: TcxGridDBColumn;
    asg34: TcxGridDBColumn;
    asg35: TcxGridDBColumn;
    asg36: TcxGridDBColumn;
    asg37: TcxGridDBColumn;
    cxLevel4: TcxGridLevel;
    cbb1A6: TcxComboBox;
    cbb2A6: TcxComboBox;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    lblSosokNameA6: TcxLabel;
    cxDtStartA6: TcxDateEdit;
    cxLabel28: TcxLabel;
    cxDtEndA6: TcxDateEdit;
    cxLabel29: TcxLabel;
    btn12: TcxButton;
    cbbA6: TcxComboBox;
    PnlMainA6: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    cxLabel218: TcxLabel;
    Shape1: TShape;
    cxLabel16: TcxLabel;
    Shape3: TShape;
    cxLabel31: TcxLabel;
    Shape4: TShape;
    cxLabel32: TcxLabel;
    Shape5: TShape;
    cxLabel33: TcxLabel;
    Shape6: TShape;
    AdvSplitter1: TAdvSplitter;
    pnlChart: TPanel;
    cxGridA6C1: TcxGrid;
    cxGridA6C1ChartView1: TcxGridChartView;
    cxGridA6C1ChartView1Series1: TcxGridChartSeries;
    cxGridA6C1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape7: TShape;
    cbChartKindA6: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA6: TcxButton;
    cbKindA6: TcxComboBox;
    cxGridA6C2: TcxGrid;
    cxGridA6C2ChartALL: TcxGridChartView;
    cxGridA6C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries3: TcxGridChartSeries;
    cxGridA6C2ChartALLSeries4: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    cxGridA6C2ChartALLSeries5: TcxGridChartSeries;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniN1Click(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure cbb6PropertiesChange(Sender: TObject);
    procedure asg37GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
		procedure btnExcelA6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxView4DataControllerSortingChanged(Sender: TObject);
    procedure cxcxGridA6View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnChartA6Click(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    procedure proc_init_worker;
    procedure proc_init_Adr;
    procedure RequestDataLocalCall; // 지역콜통계
    procedure SetSearchDate(AStart, AEnd: TDate);
	public
    AdrLst: array of TAdrLst;
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA6: TFrm_STTA6;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;


procedure TFrm_STTA6.FormCreate(Sender: TObject);
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

procedure TFrm_STTA6.FormDestroy(Sender: TObject);
begin
  Frm_STTA6 := Nil;
end;

procedure TFrm_STTA6.FormShow(Sender: TObject);
begin
  pnlMainA6.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA6.proc_init_Adr;
var
  i, j : integer;
  ls_TxLoad, rv_str, msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  tmpCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
  tmp2: string;
begin
  setlength(AdrLst,0);

  StrList := TStringList.Create;
  slList := TStringList.Create;
  try
    // 통계화면
    Param := '';
    if not RequestBasePaging(GetSel05('GETADLIST', 'STT.GET_ADLIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('시도, 시군구 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

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

      SetLength(AdrLst,tmpCnt);

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
          tmp2:=tmpStr;
          if Pos('/>',tmpStr)>0 then
          begin
            tmp2:=Copy(tmpStr,1,Pos('/>',tmpStr)-1);
            StrList.Clear;

            if Pos('<Result Value=',tmp2) > 0 then
              tmp2 := Copy(tmp2,Pos('<Result Value=',tmp2)+14,Length(tmp2)-Pos('<Result Value=',tmp2)+14+1);
            if Pos('/>',tmp2) > 0 then
              tmp2 := Copy(tmp2,1,Pos('/>',tmp2)-1);
            tmp2:=StringReplace(tmp2,'"','',[rfReplaceAll]);
            tmp2:=stringreplace(tmp2,#13,'',[rfReplaceAll]);
            tmp2:=stringreplace(tmp2,#10,'',[rfReplaceAll]);

            tmpStr:=Copy(tmpStr,Pos('/>',tmpStr)+2,Length(tmpStr)-Pos('/>',tmpStr)+2+1);
            GetTextSeperationEx('│', tmp2, StrList);
            AdrLst[k].City:=StrList.Strings[0];
            AdrLst[k].Ward:=StrList.Strings[1];
          end;
        end;
      end;
    end;
  finally
    cbb1A6.Properties.Items.Add('전체');
    if Length(AdrLst)>0 then
    begin
      for i:=0 to Length(AdrLst)-1 do
      begin
        if cbb1A6.Properties.Items.IndexOf(AdrLst[i].city)<0 then
          cbb1A6.Properties.Items.Add(AdrLst[i].city);
      end;
    end;
    cbb1A6.ItemIndex:=0;
    cbb1A6.Properties.OnChange(Self);
    StrList.Free;
    slList.Free;
  end;
end;

procedure TFrm_STTA6.proc_Init_BRS;
var
  i : integer;
  ls_TxLoad, rv_str, msg : string;
  StrList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  try
    cbbA6.Properties.Items.Clear;
    cbbA6.Properties.Items.Add('지사전체');

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
            cbbA6.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA6.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA6.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA6.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR,cbbA6.Properties.Items[k]) = 1 then i:=k;
      end;
      if i<>-1 then
      begin
        cbbA6.ItemIndex:=i;
        cbbA6.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA6.proc_init;
begin
  lblSosokNameA6.Caption := GetSosokInfo;
  proc_init_worker;

  proc_Init_BRS;
  proc_init_Adr;
end;

procedure TFrm_STTA6.proc_init_worker;
Var i : Integer;
begin
  try
    cxDtStartA6.Date := Now;
    cxDtEndA6.Date := Now + 1;

    for i := 0 to cxcxGridA6View1.ColumnCount - 1 do
    begin
      if i In [1, 2] then
        cxcxGridA6View1.Columns[i].DataBinding.ValueType := 'String'
      else
        cxcxGridA6View1.Columns[i].DataBinding.ValueType := 'Integer';
    end;
  except
  end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_STTA6.RequestDataLocalCall; // 지역콜통계
var
  ls_TxLoad, rv_str, msg: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  ls_Rcrd: TStringList;
  I, j : Integer;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('지역콜통계') then Exit;

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

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := GT_SEL_BRNO.HDNO
  else
    Param := GT_USERIF.HD;

  if (GT_USERIF.lv='60') and (cbbA6.itemindex=0) then
    Param := Param + '│' + '%'
  else
    Param := Param + '│' + Trim(Copy(cbbA6.Text,1,5));

  if cbb1A6.text = '전체' then
    Param := Param + '│' + '%'
  else
    Param := Param + '│' + cbb1A6.text;

  if cbb2A6.text = '전체' then
    Param := Param + '│' + '%'
  else
    Param := Param + '│' + cbb2A6.text;

  Param := Param + '│' + StringReplace(cxDtStartA6.text,'-','',[rfReplaceAll]) + '090000';
  Param := Param + '│' + StringReplace(cxDtEndA6.text,'-','',[rfReplaceAll]) + '090000';

  slList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
    begin
      if not RequestBasePaging(GetSel05('GETLOCSTT', 'STT.GET_LOC_STT', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('지역콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        Exit;
      end;
    end else
    begin
      if not RequestBasePaging(GetSel05('GETLOCSTT', 'STT_8282SN.GET_LOC_STT', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('지역콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Screen.Cursor := crDefault;
        Exit;
      end;
    end;

    cxcxGridA6View1.DataController.SetRecordCount(0);

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

      cxcxGridA6View1.BeginUpdate;
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

            iRow := cxcxGridA6View1.DataController.AppendRecord;

            SetGridData(cxcxGridA6View1, iRow, 0, IntToStr(iCnt));
            SetGridData(cxcxGridA6View1, iRow, 1, StrList.Strings[0]);
            SetGridData(cxcxGridA6View1, iRow, 2, StrList.Strings[1]);
            SetGridData(cxcxGridA6View1, iRow, 3, StrList.Strings[2]);
            SetGridData(cxcxGridA6View1, iRow, 4, StrList.Strings[3]);
            SetGridData(cxcxGridA6View1, iRow, 5, StrList.Strings[4]);
            SetGridData(cxcxGridA6View1, iRow, 6, StrList.Strings[5]);
            SetGridData(cxcxGridA6View1, iRow, 7, StrList.Strings[6]);
            Inc(iCnt);
          end;
        end;
      finally
        cxcxGridA6View1.endupdate;
        btnChartA6.Click;
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
procedure TFrm_STTA6.MenuItemClick(Sender: TObject);
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

procedure TFrm_STTA6.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA6.Date := AStart;
  cxDtEndA6.Date := AEnd;
end;

procedure TFrm_STTA6.btnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA6.mniN1Click(Sender: TObject);
begin
 btnExcelA6.Click;
end;

procedure TFrm_STTA6.btnSearchA6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataLocalCall;
end;

procedure TFrm_STTA6.cbb6PropertiesChange(Sender: TObject);
var
  i: integer;
begin
  cbb2A6.Properties.Items.Clear;
  cbb2A6.Properties.Items.Add('전체');
  if Length(AdrLst)>0 then
  begin
    for i:=0 to Length(AdrLst)-1 do
    begin
      if (cbb1A6.text=adrlst[i].City) then
        cbb2A6.Properties.Items.Add(adrlst[i].ward);
    end;
  end;
  cbb2A6.ItemIndex:=0;
end;

procedure TFrm_STTA6.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA6C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA6C1ChartView1.DiagramBar.Active := True;
  2:cxGridA6C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA6C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA6C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA6C1ChartView1.DiagramLine.Active := True;
  6:cxGridA6C1ChartView1.DiagramArea.Active := True;
  7:cxGridA6C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA6.Click;
end;

procedure TFrm_STTA6.btnChartA6Click(Sender: TObject);
var
  I, J: Integer;
begin
  case cbKindA6.ItemIndex of
    0,1,2,3,4:
    begin
      cxGridA6C1.Visible := True;
      cxGridA6C2.Visible := False;
      cxGridA6C1ChartView1.BeginUpdate();
      try
        cxGridA6C1ChartView1.DataController.RecordCount := cxcxGridA6View1.DataController.RecordCount;

        for I := 0 to cxcxGridA6View1.DataController.RecordCount-1 do
        begin
          cxGridA6C1ChartView1.Categories.Values[I] := cxcxGridA6View1.DataController.Values[i, 2];
          case cbKindA6.ItemIndex of
          0: cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.DataController.Values[i, 3];
          1: cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.DataController.Values[i, 4];
          2: cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.DataController.Values[i, 5];
          3: cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.DataController.Values[i, 6];
          4: cxGridA6C1ChartView1Series1.Values[I] := cxcxGridA6View1.DataController.Values[i, 7];
          end;
        end;
      finally
        cxGridA6C1ChartView1.EndUpdate();
      end;
    end;
    5:
    begin
      cxGridA6C1.Visible := False;
      cxGridA6C2.Visible := True;
      cxGridA6C2ChartALL.BeginUpdate();
      try
        cxGridA6C2ChartALL.DataController.RecordCount := cxcxGridA6View1.DataController.RecordCount;;
         for I := 0 to cxcxGridA6View1.DataController.RecordCount-1 do
         begin
           cxGridA6C2ChartALL.Categories.Values[I] := cxcxGridA6View1.DataController.Values[i, 2];
           cxGridA6C2ChartALLSeries1.Values[I] := cxcxGridA6View1.DataController.Values[i, 3];
           cxGridA6C2ChartALLSeries2.Values[I] := cxcxGridA6View1.DataController.Values[i, 4];
           cxGridA6C2ChartALLSeries3.Values[I] := cxcxGridA6View1.DataController.Values[i, 5];
           cxGridA6C2ChartALLSeries4.Values[I] := cxcxGridA6View1.DataController.Values[i, 6];
           cxGridA6C2ChartALLSeries5.Values[I] := cxcxGridA6View1.DataController.Values[i, 7];
         end;
      finally
        cxGridA6C2ChartALL.EndUpdate();
      end;
    end;
  end;
end;

procedure TFrm_STTA6.cxComboBox2PropertiesChange(Sender: TObject);
begin
  if cbKindA6.ItemIndex = 5 then
  begin
    cxGridA6C1.Visible := False;
    cxGridA6C2.Visible := True;
  end else
  begin
    cxGridA6C1.Visible := True;
    cxGridA6C2.Visible := False;
  end;
  btnChartA6.Click;
end;

procedure TFrm_STTA6.cxcxGridA6View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STTA6.cxView4DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxcxGridA6View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STTA6.asg37GetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
begin
  AText:=FormatFloat('#,##0',StrToFloatDef(atext,0));
end;

procedure TFrm_STTA6.btnExcelA6Click(Sender: TObject);
begin
  if cxcxGridA6View1.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-지역콜통계.xls';
  Frm_Main.sgRpExcel := Format('통계>지역콜통계]%s건', [GetMoneyStr(cxcxGridA6View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA6;
  Frm_Main.cxGridDBViewExcel := cxcxGridA6View1;
  Frm_Main.proc_excel(0);
end;

end.

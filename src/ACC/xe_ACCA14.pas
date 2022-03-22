unit xe_ACCA14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  system.StrUtils, system.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, cxGridExportLink, ShellAPI, cxTLExportLink,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_Structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, cxTimeEdit, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TFrm_ACCA14 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    PnlMain: TPanel;
    Panel18: TPanel;
    Shape6: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape2: TShape;
    Shape1: TShape;
    cxLabel218: TcxLabel;
    lblSosokNameA14: TcxLabel;
    cxDtStartA14: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA14: TcxDateEdit;
    btnSearchA14: TcxButton;
    btnExcelA14: TcxButton;
    btnDateA14: TcxButton;
    cxLabel1: TcxLabel;
    cxTeStartA14: TcxTimeEdit;
    cxTeEndA14: TcxTimeEdit;
    cxGridA14: TcxGrid;
    cxGridA14View: TcxGridDBTableView;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridA14Level: TcxGridLevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape3: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape4: TShape;
    Shape5: TShape;
    cxLabel2: TcxLabel;
    lblSosokNameA141: TcxLabel;
    btnSearchA141: TcxButton;
    btnExcelA141: TcxButton;
    cxLabel5: TcxLabel;
    cxGridA141: TcxGrid;
    cxGridA141View: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridA141Level: TcxGridLevel;
    cxSEMonth: TcxSpinEdit;
    cxSEYear: TcxSpinEdit;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxLabel108: TcxLabel;
    cxLabel3: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA14Click(Sender: TObject);
    procedure btnDateA14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA14Click(Sender: TObject);
    procedure cxGridA14ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA14ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA14ViewDataControllerSortingChanged(Sender: TObject);
    procedure btnSearchA141Click(Sender: TObject);
    procedure cxGridA141ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExcelA141Click(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_ORDER_CALC_CC_SUMMARY;
    procedure proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
    procedure proc_ORDER_CALC_MM_SUMMARY;
    procedure proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo: string);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA14: TFrm_ACCA14;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC06, xe_ACC07;


procedure TFrm_ACCA14.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA14.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA14.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA14.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA14.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA14.proc_init;
Var i : Integer;
begin
  lblSosokNameA14.Caption := GetSosokInfo;
  lblSosokNameA141.Caption := GetSosokInfo;

  cxPageControl1.ActivePageIndex := 0;

  cxDtStartA14.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA14.Date := cxDtStartA14.Date + 1;

  for i := 0 to cxGridA14View.ColumnCount - 1 do
  begin
    if i = 5 then
      cxGridA14View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA14View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA14View.DataController.SetRecordCount(0);

  cxSEYear.Value := StrToIntDef(FormatDateTime('YYYY', Now), 1);
  cxSEMonth.Value := StrToIntDef(FormatDateTime('MM'  , Now), 1);

  for i := 0 to cxGridA141View.ColumnCount - 1 do
  begin
    if i in [3, 5, 6, 7] then
      cxGridA141View.Columns[i].DataBinding.ValueType := 'Currency'
    else
      cxGridA141View.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridA141View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA14.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA14.FormDestroy(Sender: TObject);
begin
  Frm_ACCA14 := nil;
end;

procedure TFrm_ACCA14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA14.btnDateA14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA14.btnSearchA141Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA141View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_MM_SUMMARY;
end;

procedure TFrm_ACCA14.proc_ORDER_CALC_MM_SUMMARY;
var
  msg : string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I: Integer;
  tmpCnt: integer;
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

  if fGetChk_Search_HdBrNo('콜대행수수료(월별검색)') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := GT_SEL_BRNO.HDNO
    else
      Param := GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := GT_SEL_BRNO.HDNO
      else
        Param := GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;

  if cxSEMonth.Value < 10 then Param := Param + '│' + IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) // 검색년월
                          else Param := Param + '│' + IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // 검색년월
  Param := Param + '│' ;

  Screen.Cursor := crHourGlass;
  if not RequestBase(GetSel05('GET_CALLCENTER_CHARGE_STT', 'STT.GET_CALLCENTER_CHARGE_STT', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('콜대행수수료 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Screen.Cursor := crDefault;
    Exit;
  end;

  StrList := TStringList.Create;
  try
    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then Exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
      cxGridA141View.DataController.SetRecordCount(0);
      cxGridA141View.BeginUpdate;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[2]) then
          begin
            iRow := cxGridA141View.DataController.AppendRecord;
            SetGridData(cxGridA141View, iRow,  0, StrToInt(IntToStr(k+1)));
            SetGridData(cxGridA141View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA141View, iRow,  2, StrList.Strings[1]);
            SetGridData(cxGridA141View, iRow,  3, StrToIntDef(StrList.Strings[2], 0));
            SetGridData(cxGridA141View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA141View, iRow,  5, StrToIntDef(StrList.Strings[4], 0));
            SetGridData(cxGridA141View, iRow,  6, StrToIntDef(StrList.Strings[5], 0));
            SetGridData(cxGridA141View, iRow,  7, StrToIntDef(StrList.Strings[6], 0));
          end;
        end;
      end;
      cxGridA141View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA14.proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo : string);
var  ls_TxLoad, rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode, I, j, k, tmpCnt, iCnt, iRow : integer;
  dt_sysdate2, XmlData, Param, ErrMsg: string;
  sData, sType, tmpCntStr, tmpStr: string;
  ArrSt: array of string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param := sHdNo + '│' +  sBrNo + '│' +  sIBrNo;

  if cxSEMonth.Value < 10 then Param := Param + '│' + IntToStr(cxSEYear.Value) + '0' + IntToStr(cxSEMonth.Value) // 검색년월
                          else Param := Param + '│' + IntToStr(cxSEYear.Value) + IntToStr(cxSEMonth.Value);      // 검색년월
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_CALLCENTER_CHARGE_DT_STT', 'STT.GET_CALLCENTER_CHARGE_DT_STT', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('콜대행수수료-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC07) ) Or ( Frm_ACC07 = NIl ) then Frm_ACC07 := TFrm_ACC07.Create(Nil);
    Frm_ACC07.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC07.Grid3View.BeginUpdate;

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

          iRow := Frm_ACC07.Grid3View.DataController.AppendRecord;
          SetGridData(Frm_ACC07.Grid3View, iRow,  0, iCnt);
          SetGridData(Frm_ACC07.Grid3View, iRow,  1, sBrNm);
          SetGridData(Frm_ACC07.Grid3View, iRow,  2, StrList.Strings[0]) ;
          SetGridData(Frm_ACC07.Grid3View, iRow,  3, StrToIntDef(StrList.Strings[2], 0)) ;
          SetGridData(Frm_ACC07.Grid3View, iRow,  4, StrToIntDef(StrList.Strings[1], 0)) ;
          SetGridData(Frm_ACC07.Grid3View, iRow,  5, StrToIntDef(StrList.Strings[3], 0)) ;
          Inc(iCnt);
        end;
      end;
    end;
    Frm_ACC07.Grid3View.EndUpdate;
    if Frm_ACC07.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC07.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA14.btnSearchA14Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA14View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_CC_SUMMARY;
end;

procedure TFrm_ACCA14.proc_ORDER_CALC_CC_SUMMARY;
var msg : string;
  StrList: TStringList;
  ErrCode, I, k, tmpCnt, iRow : integer;
  dt_sysdate2, XmlData, Param, ErrMsg: string;
  tmpCntStr, tmpStr: string;
  ArrSt: array of string;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('콜대행수수료(기간검색)') then Exit;

	dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA14.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA14.Date) ;//+ '090000';       //검색종료일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    Param := Param + '│' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  Screen.Cursor := crHourGlass;
  if not RequestBase(GetSel05('GET_ORDER_CALC_CC_SUMMARY', 'MNG_CALC.ORDER_CALC_CC_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('콜대행수수료 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Screen.Cursor := crDefault;
    Exit;
  end;

  StrList := TStringList.Create;
  try
    if Pos('<Data Count="',xmlData)>0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then Exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
      cxGridA14View.DataController.SetRecordCount(0);
      cxGridA14View.BeginUpdate;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[2]) then
          begin
            iRow := cxGridA14View.DataController.AppendRecord;
            SetGridData(cxGridA14View, iRow,  0, StrToInt(IntToStr(k+1)));
            SetGridData(cxGridA14View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA14View, iRow,  2, StrList.Strings[1]);
            SetGridData(cxGridA14View, iRow,  3, StrList.Strings[2]);
            SetGridData(cxGridA14View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA14View, iRow,  5, StrList.Strings[4]);
          end;
        end;
      end;
      cxGridA14View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA14.proc_ORDER_CALC_CC_DETAIL(sBrNo: string);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I, j : Integer;
  sData, sType: string;
  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow : integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA14.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  if (GT_USERIF.LV <> '60') then
  begin
    Param := Param + '│' + 'BRANCH';
    Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' + GT_USERIF.BR;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_ORDER_CALC_CC_DETAIL', 'MNG_CALC.ORDER_CALC_CC_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('콜대행수수료-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

  	StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
    if ( Not Assigned(Frm_ACC06) ) Or ( Frm_ACC06 = NIl ) then Frm_ACC06 := TFrm_ACC06.Create(Nil);
    Frm_ACC06.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC06.Grid3View.BeginUpdate;

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

          iRow := Frm_ACC06.Grid3View.DataController.AppendRecord;
          SetGridData(Frm_ACC06.Grid3View, iRow,  0, iCnt);
          SetGridData(Frm_ACC06.Grid3View, iRow,  1, Copy(StrList.Strings[ 0],1,10) + ' ' + Copy(StrList.Strings[ 0], 11,8)) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
          SetGridData(Frm_ACC06.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
          Inc(iCnt);
        end;
      end;
    end;
    Frm_ACC06.Grid3View.EndUpdate;
    if Frm_ACC06.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC06.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA14.btnExcelA141Click(Sender: TObject);
begin
	if cxGridA141View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '콜대행수수료.xls';
  Frm_Main.sgRpExcel := Format('정산>콜대행수수료>월별검색]%s건', [GetMoneyStr(cxGridA141View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA141;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA14.btnExcelA14Click(Sender: TObject);
begin
	if cxGridA14View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '콜대행수수료.xls';
  Frm_Main.sgRpExcel := Format('정산>콜대행수수료>기간검색]%s건', [GetMoneyStr(cxGridA14View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA14;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA14.cxGridA141ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iHdNo, iBrNo, iIBrNo, iCol, iRow, iPos : Integer;
  sHdNo, sBrNo, sIBrNo, sBrNm : String;
begin
  iRow  := cxGridA141View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

	iHdNo  := cxGridA141View.GetColumnByFieldName('본사정보').Index;
	iBrNo  := cxGridA141View.GetColumnByFieldName('지사정보').Index;
	iIBrNo := cxGridA141View.GetColumnByFieldName('입금지사').Index;

  sHdNo := cxGridA141View.DataController.Values[iRow, iHdNo];
  iPos := Pos('/', sHdNo);
  sHdNo := Copy(sHdNo, 1, iPos-1);

  sBrNm := cxGridA141View.DataController.Values[iRow, iBrNo];
  iPos := Pos('/', sBrNm);
  sBrNo := Copy(sBrNm, 1, iPos-1);

  sIBrNo := cxGridA141View.DataController.Values[iRow, iIBrNo];
  iPos := Pos('/', sIBrNo);
  sIBrNo := Copy(sIBrNo, 1, iPos-1);

  proc_ORDER_CALC_MM_DETAIL(sHdNo, sBrNo, sBrNm, sIBrNo);
end;

procedure TFrm_ACCA14.cxGridA14ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iCol, iRow : Integer;
  sBrNo: string;
begin
	iBrNo := cxGridA14View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGridA14View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA14View.DataController.Values[iRow, iBrNo];
  proc_ORDER_CALC_CC_DETAIL(sBrNo);
end;

procedure TFrm_ACCA14.cxGridA14ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA14.cxGridA14ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA14View, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA14.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA14;
	AEdDt := cxDtEndA14;
end;

procedure TFrm_ACCA14.MenuItem10Click(Sender: TObject);
begin
  btnExcelA14.Click;
end;

end.

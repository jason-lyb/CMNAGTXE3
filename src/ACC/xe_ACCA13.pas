unit xe_ACCA13;

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
  TFrm_ACCA13 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pnlMainA13: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA13: TcxLabel;
    cxDtStartA13: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA13: TcxDateEdit;
    btnSearchA13: TcxButton;
    btnExcelA13: TcxButton;
    btnDateA13: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA13: TcxTimeEdit;
    cxTeEndA13: TcxTimeEdit;
    cxGridA13: TcxGrid;
    cxGridA13View: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridA13Level: TcxGridLevel;
    btnHelpA13: TcxButton;
    pnlHelpA13: TPanel;
    cxMemo6: TcxMemo;
    cxGropuBox12: TcxGroupBox;
    BtnCloseA13: TcxButton;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA13Click(Sender: TObject);
    procedure btnDateA13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA13Click(Sender: TObject);
    procedure btnHelpA13Click(Sender: TObject);
    procedure BtnCloseA13Click(Sender: TObject);
    procedure cxGridA13ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA13ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA13ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_DRIVER_FEE_SUMMARY;
    procedure proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol : Integer);    //기사수수료현황- 상세(지사)
    procedure proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol : Integer);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA13: TFrm_ACCA13;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC04, xe_ACC05;


procedure TFrm_ACCA13.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA13.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA13.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA13.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA13.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA13.proc_init;
begin
  lblSosokNameA13.Caption := GetSosokInfo;

  cxDtStartA13.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA13.Date := cxDtStartA13.Date + 1;

  cxGridA13View.Columns[0].DataBinding.ValueType := 'String';
	cxGridA13View.Columns[1].DataBinding.ValueType := 'String';
  cxGridA13View.Columns[2].DataBinding.ValueType := 'String';
  cxGridA13View.Columns[3].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[4].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[5].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[6].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[7].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[8].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[9].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[10].DataBinding.ValueType := 'Currency';
  cxGridA13View.Columns[11].DataBinding.ValueType := 'Currency';
  cxGridA13View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA13.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA13.FormDestroy(Sender: TObject);
begin
  Frm_ACCA13 := NIl;
end;

procedure TFrm_ACCA13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA13.btnDateA13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA13.BtnCloseA13Click(Sender: TObject);
begin
  pnlHelpA13.Visible := False;
end;

procedure TFrm_ACCA13.btnHelpA13Click(Sender: TObject);
begin
  if  pnlHelpA13.Visible = True then pnlHelpA13.Visible := False
  else
  begin
    pnlHelpA13.Left := (Width - pnlHelpA13.Width) div 2;
    pnlHelpA13.top := (Height - pnlHelpA13.Height) div 2;
    pnlHelpA13.Visible := True;
    pnlHelpA13.BringToFront;
  end;
end;

procedure TFrm_ACCA13.btnSearchA13Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA13View.DataController.SetRecordCount(0);
  proc_DRIVER_FEE_SUMMARY;
end;

procedure TFrm_ACCA13.proc_DRIVER_FEE_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, j : Integer;
  sData, sType: string;
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

  if fGetChk_Search_HdBrNo('기사수수료현황') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA13.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA13.Date) ;//+ '090000';       //검색종료일자

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
//    Param := Param + '│' + 'TITLE';
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
                                   //지사
//    Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '│' + 'TITLE';
      Param := Param + '│' + 'BRANCH';
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_SUMMARY', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxGridA13View.DataController.SetRecordCount(0);
    cxGridA13View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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

          if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
          begin
            iRow := cxGridA13View.DataController.AppendRecord;
            SetGridData(cxGridA13View, iRow,  0, iCnt);
            SetGridData(cxGridA13View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA13View, iRow,  2, strList.Strings[1] + ' (' + StrList.Strings[0] + ')');
            SetGridData(cxGridA13View, iRow,  3, StrList.Strings[2]);
            SetGridData(cxGridA13View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA13View, iRow,  5, StrList.Strings[4]);
            SetGridData(cxGridA13View, iRow,  6, StrList.Strings[5]);
            SetGridData(cxGridA13View, iRow,  7, StrList.Strings[6]);
            SetGridData(cxGridA13View, iRow,  8, StrList.Strings[7]);
            SetGridData(cxGridA13View, iRow,  9, StrList.Strings[8]);
            SetGridData(cxGridA13View, iRow, 10, StrList.Strings[9]);
            SetGridData(cxGridA13View, iRow, 11, StrList.Strings[10]);
            Inc(iCnt);
          end;
        end;
      end;
    end;
    cxGridA13View.endupdate;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA13.proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo: string; iCol : Integer);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, j : Integer;
  sData, sType: string;
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

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'WORKER';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_SUMMARY_DETAIL', 'MNG_CALC.DRIVER_FEE_SUMMARY', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC04) ) Or ( Frm_ACC04 = NIl ) then Frm_ACC04 := TFrm_ACC04.Create(Nil);
    Frm_ACC04.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC04.Grid3View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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

          iRow := Frm_ACC04.Grid3View.DataController.AppendRecord;
          SetGridData(Frm_ACC04.Grid3View, iRow,  0, iCnt);
          SetGridData(Frm_ACC04.Grid3View, iRow,  1, StrList.Strings[ 0]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  8, StrList.Strings[ 7]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow,  9, StrList.Strings[ 8]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow, 10, StrList.Strings[ 9]) ;
          SetGridData(Frm_ACC04.Grid3View, iRow, 11, StrList.Strings[ 10]) ;
          Inc(iCnt);
        end;
      end;
    end;
    Frm_ACC04.Grid3View.endupdate;
    if Frm_ACC04.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC04.Show
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

procedure TFrm_ACCA13.proc_DRIVER_FEE_DETAIL(sBrNo: string; iCol : Integer);
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

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA13.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자
  Param := Param + '│' + IntToStr(iCol-2);
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo + '│' ;

  slList := TStringList.Create;
  try
  	if not RequestBasePaging(GetSel05('GET_DRIVER_FEE_DETAIL', 'MNG_CALC.DRIVER_FEE_DETAIL', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('기사수수료현황-상세1  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if ( Not Assigned(Frm_ACC05) ) Or ( Frm_ACC05 = NIl ) then Frm_ACC05 := TFrm_ACC05.Create(Nil);
    Frm_ACC05.Grid3View.DataController.SetRecordCount(0);
    Frm_ACC05.Grid3View.BeginUpdate;
    StrList := TStringList.Create;
    Screen.Cursor := crHourGlass;
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

          iRow := Frm_ACC05.Grid3View.DataController.AppendRecord;
          SetGridData(Frm_ACC05.Grid3View, iRow,  0, iCnt);
          SetGridData(Frm_ACC05.Grid3View, iRow,  1, Copy(StrList.Strings[ 0],1,10) + ' ' + Copy(StrList.Strings[ 0], 11,8)) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
          SetGridData(Frm_ACC05.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
          Inc(iCnt);
        end;
      end;
    end;
    Frm_ACC05.Grid3View.endupdate;
    if Frm_ACC05.Grid3View.DataController.RecordCount > 0 then
      Frm_ACC05.Show
    else
    begin
      GMessagebox('데이터가 없습니다.', CDMSI);
    end;
  finally
    StrList.Free;
    SlList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA13.btnExcelA13Click(Sender: TObject);
begin
	if cxGridA13View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '기사수수료현황.xls';
  Frm_Main.sgRpExcel := Format('정산>기사수수료현황]%s건', [GetMoneyStr(cxGridA13View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA13;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA13.cxGridA13ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iCol, iRow : Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA13View.GetColumnByFieldName('지사코드').Index;
  iCol := ACellViewInfo.item.Index ;
  iRow := cxGridA13View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA13View.DataController.Values[iRow, iBrNo];
  if iCol = 2 then proc_DRIVER_FEE_SUMMARY_DETAIL(sBrNo, iCol)
              else proc_DRIVER_FEE_DETAIL(sBrNo, iCol);
end;

procedure TFrm_ACCA13.cxGridA13ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA13.cxGridA13ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA13View, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA13.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA13;
	AEdDt := cxDtEndA13;
end;

procedure TFrm_ACCA13.MenuItem10Click(Sender: TObject);
begin
  btnExcelA13.Click;
end;

end.

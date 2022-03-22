unit xe_ACCA11;

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
  TFrm_ACCA11 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pnlMainA11: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA11: TcxLabel;
    cxDtStartA11: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA11: TcxDateEdit;
    btnSearchA11: TcxButton;
    btnExcelA11: TcxButton;
    btnDateA11: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA11: TcxTimeEdit;
    cxTeEndA10: TcxTimeEdit;
    btnHelpA11: TcxButton;
    pnlHelpA11: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnClose: TcxButton;
    cxGridA11: TcxGrid;
    cxGridA11View: TcxGridDBTableView;
    Grid3ViewColumnGridView2cxGridViewColumn1: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn13: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn2: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn3: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn4: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn5: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn6: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn7: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn8: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn9: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn10: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn11: TcxGridDBColumn;
    Grid3ViewColumnGridView2cxGridViewColumn12: TcxGridDBColumn;
    cxGridA11Level: TcxGridLevel;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA11Click(Sender: TObject);
    procedure btnDateA11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA11Click(Sender: TObject);
    procedure btnHelpA11Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxGridA11ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA11ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridView2DataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_PROFIT_FEE_SUMMARY;
    procedure proc_PROFIT_FEE_DETAIL(sBrNo: string);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA11: TFrm_ACCA11;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC04, xe_ACC05, xe_ACC03;


procedure TFrm_ACCA11.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA11.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA11.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA11.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA11.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA11.proc_init;
begin
  lblSosokNameA11.Caption := GetSosokInfo;

  cxDtStartA11.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA11.Date := cxDtStartA11.Date + 1;

  cxGridA11View.Columns[0].DataBinding.ValueType := 'String';
  cxGridA11View.Columns[1].DataBinding.ValueType := 'String';
  cxGridA11View.Columns[2].DataBinding.ValueType := 'String';
  cxGridA11View.Columns[3].DataBinding.ValueType := 'String';
  cxGridA11View.Columns[4].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[5].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[6].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[7].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[8].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[9].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[10].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[11].DataBinding.ValueType := 'Currency';
  cxGridA11View.Columns[12].DataBinding.ValueType := 'Currency';
  cxGridA11View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA11.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA11.FormDestroy(Sender: TObject);
begin
  Frm_ACCA11 := NIl;
end;

procedure TFrm_ACCA11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA11.btnDateA11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA11.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA11.Visible := False;
end;

procedure TFrm_ACCA11.btnHelpA11Click(Sender: TObject);
begin
  if  pnlHelpA11.Visible = True then pnlHelpA11.Visible := False
  else
  begin
    pnlHelpA11.Left := (Width - pnlHelpA11.Width) div 2;
    pnlHelpA11.top  := (Height - pnlHelpA11.Height) div 2;
    pnlHelpA11.Visible := True;
    pnlHelpA11.BringToFront;
  end;
end;

procedure TFrm_ACCA11.btnSearchA11Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA11View.DataController.SetRecordCount(0);
  proc_PROFIT_FEE_SUMMARY;
end;

procedure TFrm_ACCA11.proc_PROFIT_FEE_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
  tCOMM_R_CNT, tCOMM_C_CNT, tORDC_CNT, tCOMM_CNT, tCProxy_CNT, tCANC_C_CNT, tCANC_R_CNT, tETC_CNT : Integer;
  tCOMM_R_AMT, tCOMM_C_AMT, tORDC_AMT, tCOMM_AMT, tCProxy_AMT, tCANC_C_AMT, tCANC_R_AMT, tETC_AMT : Integer;
begin

  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('수익금계산') then Exit;

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

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA11.Date) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA11.Date) ;//+ '090000';       //검색종료일자


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


	if not RequestBase(GetSel05('GET_PROFIT_FEE_SUMMARY', 'MNG_CALC.PROFIT_FEE_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
	begin
		GMessagebox(Format('수입금계산  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
		Exit;
	end;

  cxGridA11View.DataController.SetRecordCount(0);
  StrList := TStringList.Create;
	Screen.Cursor := crHourGlass;
  try
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
      cxGridA11View.BeginUpdate;
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
            iRow := cxGridA11View.DataController.AppendRecord;
            SetGridData(cxGridA11View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
            SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
            SetGridData(cxGridA11View, iRow,  3, '건수');
            SetGridData(cxGridA11View, iRow,  4, StrList.Strings[2]);
            tCOMM_R_CNT := tCOMM_R_CNT + StrToIntDef(StrList.Strings[2], 0);     //수수료-건수R

            SetGridData(cxGridA11View, iRow,  5, StrList.Strings[4]);
            tCOMM_C_CNT := tCOMM_C_CNT + StrToIntDef(StrList.Strings[4], 0);     //수수료-건수C

            SetGridData(cxGridA11View, iRow,  6, StrList.Strings[6]);
            tORDC_CNT := tORDC_CNT + StrToIntDef(StrList.Strings[6], 0);         //발주비-건수

            SetGridData(cxGridA11View, iRow,  7, StrList.Strings[8]);
            tCOMM_CNT := tCOMM_CNT + StrToIntDef(StrList.Strings[8], 0);         //수주비-건수

            SetGridData(cxGridA11View, iRow,  8, StrList.Strings[10]);
            tCProxy_CNT := tCProxy_CNT + StrToIntDef(StrList.Strings[10], 0);    //콜센타대행-건수

            SetGridData(cxGridA11View, iRow,  9, StrList.Strings[12]);
            tCANC_R_CNT := tCANC_R_CNT + StrToIntDef(StrList.Strings[12], 0);    //취소벌금-건수R

            SetGridData(cxGridA11View, iRow, 10, StrList.Strings[14]);
            tCANC_C_CNT := tCANC_C_CNT + StrToIntDef(StrList.Strings[14], 0);    //취소벌금-건수C

            SetGridData(cxGridA11View, iRow, 11, StrList.Strings[16]);
            tETC_CNT := tETC_CNT + StrToIntDef(StrList.Strings[16], 0);          //기타-건수

            SetGridData(cxGridA11View, iRow, 12, StrList.Strings[18]);

            iRow := cxGridA11View.DataController.AppendRecord;
            SetGridData(cxGridA11View, iRow,  0,  StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA11View, iRow,  1, StrList.Strings[0]) ;
            SetGridData(cxGridA11View, iRow,  2, StrList.Strings[1]) ;
            SetGridData(cxGridA11View, iRow,  3, '금액');
            SetGridData(cxGridA11View, iRow,  4, StrList.Strings[3]);
            tCOMM_R_AMT := tCOMM_R_AMT + StrToIntDef(StrList.Strings[3], 0);     //수수료-금액R

            SetGridData(cxGridA11View, iRow,  5, StrList.Strings[5]);
            tCOMM_C_AMT := tCOMM_C_AMT + StrToIntDef(StrList.Strings[5], 0);     //수수료-금액C

            SetGridData(cxGridA11View, iRow,  6, StrList.Strings[7]);
            tORDC_AMT := tORDC_AMT + StrToIntDef(StrList.Strings[7], 0);         //발주비-금액

            SetGridData(cxGridA11View, iRow,  7, StrList.Strings[9]);
            tCOMM_AMT := tCOMM_AMT + StrToIntDef(StrList.Strings[9], 0);         //수주비-금액

            SetGridData(cxGridA11View, iRow,  8, StrList.Strings[11]);
            tCProxy_AMT := tCProxy_AMT + StrToIntDef(StrList.Strings[11], 0);    //콜센타대행-금액

            SetGridData(cxGridA11View, iRow,  9, StrList.Strings[13]);
            tCANC_R_AMT := tCANC_R_AMT + StrToIntDef(StrList.Strings[13], 0);    //취소벌금-금액R

            SetGridData(cxGridA11View, iRow, 10, StrList.Strings[15]);
            tCANC_C_AMT := tCANC_C_AMT + StrToIntDef(StrList.Strings[15], 0);    //취소벌금-금액C

            SetGridData(cxGridA11View, iRow, 11, StrList.Strings[17]);
            tETC_AMT := tETC_AMT + StrToIntDef(StrList.Strings[17], 0);          //기타-금액

            SetGridData(cxGridA11View, iRow, 12, StrList.Strings[19]);
  //          SetGridData(cxGridView2, iRow, 12, StrList.Strings[11]);
          end;
        end;

      end;
      ///////////합계추가///////////////////////////
      iRow := cxGridA11View.DataController.AppendRecord;
//      SetGridData(cxGridView2, iRow,  0, IntToStr(k+1));
      SetGridData(cxGridA11View, iRow,  0, '');
      SetGridData(cxGridA11View, iRow,  1, '');
      SetGridData(cxGridA11View, iRow,  2, '[합계]');
      SetGridData(cxGridA11View, iRow,  3, '건수');
      SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_CNT));
      SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_CNT));
      SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_CNT));
      SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_CNT));
      SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_CNT));
      SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_CNT));
      SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_CNT));
      SetGridData(cxGridA11View, iRow, 11, FormatCash(tETC_CNT));
      SetGridData(cxGridA11View, iRow, 12, FormatCash(tCOMM_R_CNT + tCOMM_C_CNT + tORDC_CNT + tCOMM_CNT + tCProxy_CNT + tCANC_C_CNT + tCANC_R_CNT + tETC_CNT));

      iRow := cxGridA11View.DataController.AppendRecord;
      SetGridData(cxGridA11View, iRow,  0, '');
      SetGridData(cxGridA11View, iRow,  1, '');
      SetGridData(cxGridA11View, iRow,  2, '[합계]');
      SetGridData(cxGridA11View, iRow,  3, '금액');
      SetGridData(cxGridA11View, iRow,  4, FormatCash(tCOMM_R_AMT));
      SetGridData(cxGridA11View, iRow,  5, FormatCash(tCOMM_C_AMT));
      SetGridData(cxGridA11View, iRow,  6, FormatCash(tORDC_AMT));
      SetGridData(cxGridA11View, iRow,  7, FormatCash(tCOMM_AMT));
      SetGridData(cxGridA11View, iRow,  8, FormatCash(tCProxy_AMT));
      SetGridData(cxGridA11View, iRow,  9, FormatCash(tCANC_C_AMT));
      SetGridData(cxGridA11View, iRow, 10, FormatCash(tCANC_R_AMT));
      SetGridData(cxGridA11View, iRow, 11, FormatCash(tETC_AMT));
      SetGridData(cxGridA11View, iRow, 12, FormatCash(tCOMM_R_AMT + tCOMM_C_AMT + tORDC_AMT + tCOMM_AMT + tCProxy_AMT + tCANC_C_AMT + tCANC_R_AMT + tETC_AMT));

      cxGridA11View.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA11.btnExcelA11Click(Sender: TObject);
begin
	if cxGridA11View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '수익금계산.xls';
  Frm_Main.sgRpExcel := Format('정산>수익금계산]%s건', [GetMoneyStr(cxGridA11View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA11;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA11.cxGridA11ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := cxGridA11View.GetColumnByFieldName('지사코드').Index;
  iRow := cxGridA11View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := cxGridA11View.DataController.Values[iRow, iBrNo];
  proc_PROFIT_FEE_DETAIL(sBrNo);
end;

procedure TFrm_ACCA11.cxGridA11ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA11.cxGridView2DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA11View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA11.proc_PROFIT_FEE_DETAIL(sBrNo: string);
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
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

  dt_sysdate2 := frm_main.func_sysdate;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  Param :=                StringReplace(cxDtStartA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색시작일자
  Param := Param + '│' + StringReplace(cxDtEndA11.text,'-','',[rfReplaceAll]) ;//+ '090000';       //검색종료일자

  Param := Param + '│' + 'BRANCH';
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;
  Param := Param + '│' + sBrNo;
  Param := Param + '│' ;

  if not RequestBase(GetSel05('GET_PROFIT_FEE_DETAIL', 'MNG_CALC.PROFIT_FEE_DETAIL', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('수입금계산-상세  조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;
  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
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
      if ( Not Assigned(Frm_ACC03) ) Or ( Frm_ACC03 = NIl ) then Frm_ACC03 := TFrm_ACC03.Create(Nil);
      Frm_ACC03.Grid3View.BeginUpdate;
      Frm_ACC03.Grid3View.DataController.SetRecordCount(0);
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

          iRow := Frm_ACC03.Grid3View.DataController.AppendRecord;
          SetGridData(Frm_ACC03.Grid3View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
          SetGridData(Frm_ACC03.Grid3View, iRow,  1, StrList.Strings[ 0]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  2, StrList.Strings[ 1]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  3, StrList.Strings[ 2]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  4, StrList.Strings[ 3]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  5, StrList.Strings[ 4]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  6, StrList.Strings[ 5]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  7, StrList.Strings[ 6]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  8, StrList.Strings[ 7]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow,  9, StrList.Strings[ 8]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 10, StrList.Strings[ 9]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 11, StrList.Strings[10]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 12, StrList.Strings[11]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 13, StrList.Strings[12]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 14, StrList.Strings[13]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 15, StrList.Strings[14]) ;
          SetGridData(Frm_ACC03.Grid3View, iRow, 16, StrList.Strings[15]) ;
        end;
      end;
      Frm_ACC03.Grid3View.endupdate;
      if Frm_ACC03.Grid3View.DataController.RecordCount > 0 then
        Frm_ACC03.Show
      else
      begin
        GMessagebox('데이터가 없습니다.', CDMSI);
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

function TFrm_ACCA11.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA11;
	AEdDt := cxDtEndA11;
end;

procedure TFrm_ACCA11.MenuItem10Click(Sender: TObject);
begin
  btnExcelA11.Click;
end;

end.

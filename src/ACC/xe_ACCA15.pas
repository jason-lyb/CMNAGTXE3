unit xe_ACCA15;

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
  TFrm_ACCA15 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pnlMainA15: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA15: TcxLabel;
    cxDtStartA15: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA15: TcxDateEdit;
    btnSearchA15: TcxButton;
    btnExcelA15: TcxButton;
    btnDateA15: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA15: TcxTimeEdit;
    cxTeEndA15: TcxTimeEdit;
    cxGridA15: TcxGrid;
    cxGridA15View: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxgrdbclmnGridView7Column1: TcxGridDBColumn;
    cxGridA15Level: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA15Click(Sender: TObject);
    procedure btnDateA15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA15Click(Sender: TObject);
    procedure cxGridA15ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA15ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_COUPON_APPR;
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA15: TFrm_ACCA15;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml;


procedure TFrm_ACCA15.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA15.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA15.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA15.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA15.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA15.proc_init;
begin
  lblSosokNameA15.Caption := GetSosokInfo;

  cxDtStartA15.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA15.Date := cxDtStartA15.Date + 1;

  //쿠폰승인현황
	cxGridA15View.Columns[0].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[1].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[2].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[3].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[4].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[5].DataBinding.ValueType := 'Currency';
	cxGridA15View.Columns[6].DataBinding.ValueType := 'Currency';
	cxGridA15View.Columns[7].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[8].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[9].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[10].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[11].DataBinding.ValueType := 'String';
	cxGridA15View.Columns[12].DataBinding.ValueType := 'String';
	cxGridA15View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA15.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA15.FormDestroy(Sender: TObject);
begin
  Frm_ACCA15 := NIl;
end;

procedure TFrm_ACCA15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA15.btnDateA15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA15.btnSearchA15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	cxGridA15View.DataController.SetRecordCount(0);
  proc_COUPON_APPR;
end;

procedure TFrm_ACCA15.proc_COUPON_APPR;
var
  msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;

  XmlData, Param, ErrMsg: string;

  tmpCnt, iCnt : integer;
  tmpCntStr: string;
  k, j : Integer;
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

  if fGetChk_Search_HdBrNo('쿠폰승인현황') then Exit;

  Param :=               FormatDateTime('YYYYMMDD', cxDtStartA15.Date) + FormatDateTime('HHNNSS', cxTeStartA15.Time);
  Param := Param + '│' + FormatDateTime('YYYYMMDD', cxDtEndA15.Date) + FormatDateTime('HHNNSS', cxTeEndA15.Time);

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //본사
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '│' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '│' + GT_USERIF.HD;
    Param := Param + '│' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '│' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_SEL_BRNO.BrNo;
    end else
    begin
      Param := Param + '│' + GT_USERIF.HD;
      Param := Param + '│' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '│' ;

  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GET_COUPON_APPR', 'PAY_COUPON.COUPON_APPR_LIST', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('쿠폰승인현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

		cxGridA15View.DataController.SetRecordCount(0);
		cxGridA15View.BeginUpdate;
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
  				GetTextSeperationEx2('│', ArrSt[k], StrList);

  				iRow := cxGridA15View.DataController.AppendRecord;
  				SetGridData(cxGridA15View, iRow,  0, iCnt);
  				SetGridData(cxGridA15View, iRow,  1, StrList.Strings[0]);
  				SetGridData(cxGridA15View, iRow,  2, StrList.Strings[1]);
  				SetGridData(cxGridA15View, iRow,  3, StrList.Strings[2]);
  				SetGridData(cxGridA15View, iRow,  4, StrList.Strings[3]);
  				SetGridData(cxGridA15View, iRow,  5, StrList.Strings[4]);
  				SetGridData(cxGridA15View, iRow,  6, StrList.Strings[5]);
  				SetGridData(cxGridA15View, iRow,  7, StrList.Strings[6]);
  				SetGridData(cxGridA15View, iRow,  8, strtocall(Trim(StrList.Strings[7])));
  				SetGridData(cxGridA15View, iRow,  9, StrList.Strings[8]);
  				SetGridData(cxGridA15View, iRow, 10, StrList.Strings[9]);
  				SetGridData(cxGridA15View, iRow, 11, StrList.Strings[10]);
  				SetGridData(cxGridA15View, iRow, 12, StrList.Strings[11]);
          Inc(iCnt);
  			end;
  		end;
    end;
  	cxGridA15View.endupdate;
	finally
		StrList.Free;
    slList.Free;
		Screen.Cursor := crDefault;
	end;
end;

procedure TFrm_ACCA15.btnExcelA15Click(Sender: TObject);
begin
	if cxGridA15View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '쿠폰승인현황.xls';
  Frm_Main.sgRpExcel := Format('정산>쿠폰승인현황]%s건', [GetMoneyStr(cxGridA15View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA15;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA15.cxGridA15ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA15.cxGridA15ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA15View, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA15.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA15;
	AEdDt := cxDtEndA15;
end;

procedure TFrm_ACCA15.MenuItem10Click(Sender: TObject);
begin
  btnExcelA15.Click;
end;

end.

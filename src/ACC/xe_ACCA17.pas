unit xe_ACCA17;

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
  TFrm_ACCA17 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pnlMainA17: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA17: TcxLabel;
    cxDtStartA17: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA17: TcxDateEdit;
    btnSearchA17: TcxButton;
    btnExcelA17: TcxButton;
    btnDateA17: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA17: TcxTimeEdit;
    cxTeEndA17: TcxTimeEdit;
    cxGridA17: TcxGrid;
    cxGridA17View: TcxGridDBTableView;
    cxgrdbclmn_counselColumn1: TcxGridDBColumn;
    cxgrdbclmn_counselColumn2: TcxGridDBColumn;
    cxgrdbclmn_counselColumn3: TcxGridDBColumn;
    cxgrdbclmn_counselColumn4: TcxGridDBColumn;
    cxgrdbclmn_counselColumn5: TcxGridDBColumn;
    cxgrdbclmn_counselColumn6: TcxGridDBColumn;
    cxgrdbclmn_counselColumn8: TcxGridDBColumn;
    cxgrdbclmn_counselColumn7: TcxGridDBColumn;
    cxgrdbclmn_counselColumn9: TcxGridDBColumn;
    cxgrdbclmn_counselColumn10: TcxGridDBColumn;
    cxgrdbclmn_counselColumn11: TcxGridDBColumn;
    cxgrdbclmn_counselColumn12: TcxGridDBColumn;
    cxgrdbclmn_counselColumn14: TcxGridDBColumn;
    cxgrdbclmn_counselColumn15: TcxGridDBColumn;
    cxgrdbclmn_counselColumn16: TcxGridDBColumn;
    cxgrdbclmn_counselColumn17: TcxGridDBColumn;
    cxgrdbclmn_counselColumn18: TcxGridDBColumn;
    cxgrdbclmn_counselColumn19: TcxGridDBColumn;
    cxgrdbclmn_counselColumn20: TcxGridDBColumn;
    cxgrdbclmn_counselColumn21: TcxGridDBColumn;
    cxgrdbclmn_counselColumn22: TcxGridDBColumn;
    cxgrdbclmn_counselColumn23: TcxGridDBColumn;
    cxGridA17Level: TcxGridLevel;
    cxLabel2: TcxLabel;
    Shape3: TShape;
    cxLabel3: TcxLabel;
    Shape4: TShape;
    cxCbA17: TcxComboBox;
    cxCb1A17: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA17Click(Sender: TObject);
    procedure btnDateA17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA17Click(Sender: TObject);
    procedure cxGridA17ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridA17ViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridA17ViewDataControllerSortingChanged(Sender: TObject);
    procedure cxGridA17ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA17: TFrm_ACCA17;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_Flash;


procedure TFrm_ACCA17.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA17.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA17.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA17.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA17.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA17.proc_init;
var
  i: Integer;
begin
  lblSosokNameA17.Caption := GetSosokInfo;

	cxCbA17.ItemIndex := 0;
	cxCb1A17.ItemIndex := 0;

	cxDtStartA17.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
	cxDtEndA17.Date := cxDtStartA17.Date + 1;

	for i := 0 to cxGridA17View.ColumnCount - 1 do
	begin
		cxGridA17View.Columns[i].DataBinding.ValueType := 'String';
	end;
	cxGridA17View.Columns[7].DataBinding.ValueType := 'Currency';
	cxGridA17View.Columns[11].DataBinding.ValueType := 'Currency';
  cxGridA17View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA17.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA17.FormDestroy(Sender: TObject);
begin
  Frm_ACCA17 := NIl;
end;

procedure TFrm_ACCA17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA17.btnDateA17MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA17.btnSearchA17Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, sHdNo, sBrNo, msg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, j, k, ErrCode, iIdx, iRow : Integer;
begin
  if fGetChk_Search_HdBrNo('카드결제현황') then Exit;

	try
		Param := '';
		if cxCbA17.ItemIndex = 0 then
			Param := Param + '' +  '│'
		else
		if cxCbA17.ItemIndex = 1 then
			Param := Param + '2' +  '│'
		else
		if cxCbA17.ItemIndex = 2 then
			Param := Param + '8' +  '│';

		if cxCb1A17.ItemIndex = 0 then
			Param := Param + '' +  '│'
		else
		if cxCb1A17.ItemIndex = 1 then
			Param := Param + '1' +  '│'
		else
		if cxCb1A17.ItemIndex = 2 then
			Param := Param + '2' +  '│';
		Param := Param + FormatDateTime('yyyymmdd', cxDtStartA17.Date) + FormatDateTime('HHNNSS', cxTeStartA17.Time) + '│';
		Param := Param + FormatDateTime('yyyymmdd', cxDtEndA17.Date) + FormatDateTime('HHNNSS', cxTeEndA17.Time) + '│';
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end
			else if GT_SEL_BRNO.GUBUN = '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
			end;
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_USERIF.BR;
		end;
  	Param := Param + sHdNo +  '│';
		Param := Param + sBrNo;


		if not RequestBase(GetSel05('LIST_CARD_PAY_STAT', 'MNG_CALC.LIST_CARD_PAY_STAT', '10000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('카드결제현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
  		xdom.loadXML(XmlData);

  		lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

  		cxGridA17View.DataController.SetRecordCount(0);
  		if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
  		begin
  			Screen.Cursor := crHourGlass;
  			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
  			ls_Rcrd := TStringList.Create;
  			cxGridA17View.BeginUpdate;
  			try
  				for I := 0 to lst_Result.length - 1 do
  				begin
  					GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
  					iRow := cxGridA17View.DataController.AppendRecord;

  					cxGridA17View.DataController.Values[iRow, 0] := ls_Rcrd[0];       //지사명
  					cxGridA17View.DataController.Values[iRow, 1] := strtocall(ls_Rcrd[1]);       //대표번호
  					cxGridA17View.DataController.Values[iRow, 2] := strtocall(ls_Rcrd[2]);;
  					cxGridA17View.DataController.Values[iRow, 3] := ls_Rcrd[3];
  					cxGridA17View.DataController.Values[iRow, 4] := ls_Rcrd[4];
  					cxGridA17View.DataController.Values[iRow, 5] := ls_Rcrd[5];
  					cxGridA17View.DataController.Values[iRow, 6] := ls_Rcrd[6];
  					cxGridA17View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[7], 0);
  					cxGridA17View.DataController.Values[iRow, 8] := ls_Rcrd[8];
  					cxGridA17View.DataController.Values[iRow, 9] := ls_Rcrd[9];
  					cxGridA17View.DataController.Values[iRow,10] := ls_Rcrd[10];
  					cxGridA17View.DataController.Values[iRow,11] := StrToIntDef(ls_Rcrd[11], 0);
  					if ls_Rcrd[12] = 'null' then
  						cxGridA17View.DataController.Values[iRow,12] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,12] := ls_Rcrd[12];
  					cxGridA17View.DataController.Values[iRow,13] := ls_Rcrd[13];
  					if ls_Rcrd[14] = 'null' then
  						cxGridA17View.DataController.Values[iRow,14] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,14] := ls_Rcrd[14];
  					if ls_Rcrd[15] = 'null' then
  						cxGridA17View.DataController.Values[iRow,15] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,15] := ls_Rcrd[15];
  					if ls_Rcrd[16] = 'null' then
  						cxGridA17View.DataController.Values[iRow,16] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,16] := ls_Rcrd[16];
  					if ls_Rcrd[17] = '()' then
  						cxGridA17View.DataController.Values[iRow,17] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,17] := ls_Rcrd[17];
  					if ls_Rcrd[18] = '()' then
  						cxGridA17View.DataController.Values[iRow,18] := ''
  					else
  						cxGridA17View.DataController.Values[iRow,18] := ls_Rcrd[18];
  					cxGridA17View.DataController.Values[iRow,19] := ls_Rcrd[19];
  					cxGridA17View.DataController.Values[iRow,20] := ls_Rcrd[20];
  					cxGridA17View.DataController.Values[iRow,21] := ls_Rcrd[21];
  				end;
  //				cbbCustCNTmonth.ItemIndex := cbbCustCNTmonth.Properties.Items.IndexOf(ls_Rcrd[2]);
  			finally
  				cxGridA17View.EndUpdate;
  				ls_Rcrd.Free;
          Frm_Flash.Hide;
  				Screen.Cursor := crDefault;
  			end;
  		end;
    finally
      xdom := nil;
    end;
	except
		on e: exception do
		begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_ACCA17.btnExcelA17Click(Sender: TObject);
begin
	if cxGridA17View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '카드결제현황.xls';
  Frm_Main.sgRpExcel := Format('정산>카드결제현황]%s건', [GetMoneyStr(cxGridA17View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA17;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA17.cxGridA17ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var iRow, iSlip : integer;
	  sSlip : string;
    i : Integer;
    iCheck : Boolean;
begin
  iCheck := False;
  for I := 0 to 4 do
  begin
    if Frm_Main.JON03MNG[i].Use then
    begin
       iCheck := True;
    end;
  end;

  if Not iCheck then Frm_Main.procMainMenuCreateActive(200);

	iRow := cxGridA17View.DataController.FocusedRowIndex;
	iSlip    := cxGridA17View.GetColumnByFieldName('접수번호').Index;
	sSlip := cxGridA17View.DataController.Values[iRow,iSlip];
	if sSlip = '' then exit;
	Frm_Main.AcceptFromCreate(sSlip, cxGridA17View.DataController.Values[iRow,1], '조회', GI_JON03_LastFromIdx);
end;

procedure TFrm_ACCA17.cxGridA17ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA17.cxGridA17ViewDataControllerSortingChanged(
  Sender: TObject);
begin
  gfSetIndexNo(cxGridA17View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA17.cxGridA17ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var iRow : integer;
begin
	iRow := cxGridA17View.DataController.GetRowInfo(ARecord.Index).RecordIndex;
	AStyle  := frm_Main.cxStyle19;
	if (cxGridA17View.DataController.Values[iRow, 19] = '') or
		 (cxGridA17View.DataController.Values[iRow, 8] = '취소') or
		 (cxGridA17View.DataController.Values[iRow, 8] = '실패') or
		 (cxGridA17View.DataController.Values[iRow, 10] = '결제취소')then
		AStyle.TextColor := clRed
	else
		AStyle.TextColor := clDefault;
end;

function TFrm_ACCA17.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA17;
	AEdDt := cxDtEndA17;
end;

procedure TFrm_ACCA17.MenuItem10Click(Sender: TObject);
begin
  btnExcelA17.Click;
end;

end.

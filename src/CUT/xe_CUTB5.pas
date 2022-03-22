unit xe_CUTB5;

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
  cxTLdxBarBuiltInMenu, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTB5 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel18: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lbCustCompany15: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel263: TcxLabel;
    cxLabel264: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel265: TcxLabel;
    cxButton76: TcxButton;
    cxButton77: TcxButton;
    btn1: TcxButton;
    cxLabel269: TcxLabel;
    cxComboBox5: TcxComboBox;
    rbo_WKTOT: TcxRadioButton;
    rbo_WKDayByDay: TcxRadioButton;
    edtWithHoldingHD: TcxTextEdit;
    edtWithHoldingBR: TcxTextEdit;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    Shape4: TShape;
    Shape5: TShape;
    cxGrid15: TcxGrid;
    cxViewWithholdingTax: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel262: TcxLabel;
    Shape3: TShape;
    cxComboBox4: TcxComboBox;
    cxComboBox6: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton76Click(Sender: TObject);
    procedure btn1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure cxButton77Click(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
	end;

var
  Frm_CUTB5: TFrm_CUTB5;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_Flash;


procedure TFrm_CUTB5.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTB5.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTB5.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTB5.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTB5.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTB5.proc_init;
var
  i: Integer;
begin
  proc_BrNameSet;

  cxDateEdit3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
  cxDateEdit4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) + 1;

	cxViewWithholdingTax.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cxViewWithholdingTax.ColumnCount - 1 do
	begin
		case I of
		9..13:
			begin
				cxViewWithholdingTax.Columns[i].DataBinding.ValueType := 'Currency';
			end;
		else
			cxViewWithholdingTax.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;
end;

procedure TFrm_CUTB5.FormCreate(Sender: TObject);
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

procedure TFrm_CUTB5.FormDestroy(Sender: TObject);
begin
  Frm_CUTB5 := NIl;
end;

procedure TFrm_CUTB5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTB5.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
begin
  if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := '';
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
  end;
  edtWithHoldingHD.Text := sHdNo;
  edtWithHoldingBR.Text := sBrNo;

  sName := GetSosokInfo;
  lbCustCompany15.Caption := sName;
end;

procedure TFrm_CUTB5.btn1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTB5.cxButton76Click(Sender: TObject);
var
	XmlData, Param, ErrMsg, sHdNo, sBrNo, msg : string;
	xdom: msDomDocument;
	lst_Count, lst_Result: IXMLDomNodeList;
	ls_Rcrd : TStringList;
	i, j, k, ErrCode, iIdx, iRow, iCnt : Integer;
begin
  if fGetChk_Search_HdBrNo('기사원천징수현황') then Exit;

	try
		Param := '';
		Param := Param + FormatDateTime('yyyymmdd', cxDateEdit3.Date) +  '│';
		Param := Param + FormatDateTime('yyyymmdd', cxDateEdit4.Date) +  '│';
		Param := Param + IntToStr(cxComboBox4.ItemIndex) +  '│';
		if GT_USERIF.LV = '60' then
		begin
			if GT_SEL_BRNO.GUBUN <> '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
			end else
      if GT_SEL_BRNO.GUBUN = '1' then
			begin
				sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := GT_SEL_BRNO.BrNo;
			end;
		end else
		begin
			sHdNo := GT_USERIF.HD;
			sBrNo := GT_USERIF.BR;
		end;
		Param := Param + sHdNo +  '│' + sBrNo +  '│';
		Param := Param + IntToStr(cxComboBox5.ItemIndex) +  '│';
		if rbo_WKTOT.Checked then
			Param := Param + '0' +  '│'
		else
		if rbo_WKDayByDay.Checked then
			Param := Param + '1' +  '│';

		Param := Param + IntToStr(cxComboBox6.ItemIndex);

		Screen.Cursor := crHourGlass;
		if not RequestBase(GetSel05('MNG_CALC', 'MNG_CALC.LIST_TAX_STATS_KEYNUM', '10000', Param), XmlData, ErrCode, ErrMsg) then
		begin
			GMessagebox(Format('기사원천징수현황 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
			Exit;
		end;

		xdom := ComsDomDocument.Create;
    try
		  xdom.loadXML(XmlData);
		  if not xdom.loadXML(XmlData) then
		  begin
        Exit;
		  end;
		  lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');

		  if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
		  begin
		  	if rbo_WKTOT.Checked then
		  	begin
		  		cxViewWithholdingTax.Columns[7].Visible := False;
		  		cxViewWithholdingTax.Columns[8].Visible := False;
		  	end
		  	else if rbo_WKDayByDay.Checked then
		  	begin
		  		cxViewWithholdingTax.Columns[7].Visible := True;
		  		cxViewWithholdingTax.Columns[8].Visible := True;
		  	end;

		  	cxViewWithholdingTax.DataController.SetRecordCount(0);

		  	lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
		  	ls_Rcrd := TStringList.Create;
		  	cxViewWithholdingTax.BeginUpdate;
		  	try
		  		cxViewWithholdingTax.Columns[0].SortOrder := soAscending;
		  		cxViewWithholdingTax.Columns[0].SortIndex := 0;
		  		for I := 0 to lst_Result.length - 1 do
		  		begin
		  			GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
		  			iRow := cxViewWithholdingTax.DataController.AppendRecord;
		  			cxViewWithholdingTax.DataController.Values[iRow, 0] := inttostr(iRow + 1);
		  			cxViewWithholdingTax.DataController.Values[iRow, 1] := ls_Rcrd[0];
		  			cxViewWithholdingTax.DataController.Values[iRow, 2] := ls_Rcrd[1];
		  			cxViewWithholdingTax.DataController.Values[iRow, 3] := ls_Rcrd[2];
		  			if Length(ls_Rcrd[3]) > 7 then
		  				cxViewWithholdingTax.DataController.Values[iRow, 4] := Copy(ls_Rcrd[3], 1, 6) + '-' + Copy(ls_Rcrd[3], 7, 7)
		  			else
		  				cxViewWithholdingTax.DataController.Values[iRow, 4] := ls_Rcrd[3];
		  			cxViewWithholdingTax.DataController.Values[iRow, 5] := ls_Rcrd[4];
		  			if rbo_WKTOT.Checked then
		  			begin
		  				cxViewWithholdingTax.DataController.Values[iRow, 6] := ls_Rcrd[10];
		  				cxViewWithholdingTax.DataController.Values[iRow, 7] := '';
		  				cxViewWithholdingTax.DataController.Values[iRow, 8] := '';
		  				cxViewWithholdingTax.DataController.Values[iRow, 9] := ls_Rcrd[5];
		  				cxViewWithholdingTax.DataController.Values[iRow,10] := StrToIntDef(ls_rcrd[6], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,11] := StrToIntDef(ls_rcrd[7], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,12] := StrToIntDef(ls_rcrd[8], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,13] := StrToIntDef(ls_rcrd[9], 0);
		  			end else
		  			if rbo_WKDayByDay.Checked then
		  			begin
		  				cxViewWithholdingTax.DataController.Values[iRow, 6] := ls_Rcrd[12];
		  				cxViewWithholdingTax.DataController.Values[iRow, 7] := ls_Rcrd[10];
		  				cxViewWithholdingTax.DataController.Values[iRow, 8] := ls_Rcrd[11];
		  				cxViewWithholdingTax.DataController.Values[iRow, 9] := ls_Rcrd[5];
		  				cxViewWithholdingTax.DataController.Values[iRow,10] := StrToIntDef(ls_rcrd[6], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,11] := StrToIntDef(ls_rcrd[7], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,12] := StrToIntDef(ls_rcrd[8], 0);
		  				cxViewWithholdingTax.DataController.Values[iRow,13] := StrToIntDef(ls_rcrd[9], 0);
		  			end;
		  		end;
		  	finally
		  		cxViewWithholdingTax.EndUpdate;
		  		ls_Rcrd.Free;
		  		Screen.Cursor := crDefault;
		  		Frm_Flash.Hide;
		  	end;
		  end else
		  	cxViewWithholdingTax.DataController.SetRecordCount(0);
    finally
  		Screen.Cursor := crDefault;
      xdom := Nil;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUTB5.cxButton77Click(Sender: TObject);
begin
	if cxViewWithholdingTax.DataController.RecordCount = 0 then
  begin
		GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
	end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if TCK_USER_PER.COM_CustExcelDown <> '1' then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

  Frm_Main.sgExcel := '법인_기사원천징수.xls';
  Frm_Main.sgRpExcel := Format('법인>기사원천징수]%s건/%s', [GetMoneyStr(cxViewWithholdingTax.DataController.RecordCount), FExcelDownWithHolding]);
  Frm_Main.cxGridExcel := cxGrid15;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_CUTB5.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDateEdit3;
	AEdDt := cxDateEdit4;
end;

procedure TFrm_CUTB5.MenuItem10Click(Sender: TObject);
begin
  cxButton77.Click;
end;

end.

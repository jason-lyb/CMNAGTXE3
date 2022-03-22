unit xe_ACCA5;

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
  TFrm_ACCA5 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel18: TPanel;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA5: TcxLabel;
    cxDtStartA5: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA5: TcxDateEdit;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    btnDateA5: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA5: TcxTimeEdit;
    cxTeEndA5: TcxTimeEdit;
    PopupMenu3: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    SMS1: TMenuItem;
    N10: TMenuItem;
    cxSEdtA5: TcxTextEdit;
    cxLabel2: TcxLabel;
    Shape3: TShape;
    GridA5: TcxGrid;
    GridA5View: TcxGridDBTableView;
    GridA5ViewColumn1: TcxGridDBColumn;
    GridA5ViewColumn10: TcxGridDBColumn;
    GridA5ViewColumn11: TcxGridDBColumn;
    GridA5ViewColumn2: TcxGridDBColumn;
    GridA5ViewColumn3: TcxGridDBColumn;
    GridA5ViewColumn4: TcxGridDBColumn;
    GridA5ViewColumn5: TcxGridDBColumn;
    GridA5ViewColumn6: TcxGridDBColumn;
    GridA5ViewColumn7: TcxGridDBColumn;
    GridA5ViewColumn8: TcxGridDBColumn;
    GridA5ViewColumn9: TcxGridDBColumn;
    GridA5Level: TcxGridLevel;
    cxCb1A5: TcxComboBox;
    cxLabel3: TcxLabel;
    Shape4: TShape;
    cxCbA5: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnDateA5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA5Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure GridA5ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA5ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }

    AIndex : Integer;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_WkCharge;
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA5: TFrm_ACCA5;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_JON09, xe_JON07, xe_Flash;


procedure TFrm_ACCA5.PopupMenu3Popup(Sender: TObject);
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;

	N5.Visible := False;
  N6.Visible := False;
end;

procedure TFrm_ACCA5.proc_init;
begin
  lblSosokNameA5.Caption := GetSosokInfo;

  cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA5.Date := cxDtStartA5.Date + 1;

  GridA5View.Columns[0].DataBinding.ValueType := 'Integer';
  GridA5View.Columns[1].DataBinding.ValueType := 'String';
  GridA5View.Columns[2].DataBinding.ValueType := 'String';
  GridA5View.Columns[3].DataBinding.ValueType := 'String';
  GridA5View.Columns[4].DataBinding.ValueType := 'String';
  GridA5View.Columns[5].DataBinding.ValueType := 'String';
  GridA5View.Columns[6].DataBinding.ValueType := 'Currency';
  GridA5View.Columns[7].DataBinding.ValueType := 'Currency';
  GridA5View.Columns[8].DataBinding.ValueType := 'String';
  GridA5View.Columns[9].DataBinding.ValueType := 'String';
  GridA5View.Columns[10].DataBinding.ValueType := 'String';
  GridA5View.DataController.SetRecordCount(0);

	cxCb1A5.ItemIndex := 0;
	cxCbA5.ItemIndex := 0;
end;

procedure TFrm_ACCA5.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA5.FormDestroy(Sender: TObject);
begin
  Frm_ACCA5 := NIl;
end;

procedure TFrm_ACCA5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA5.btnDateA5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA5.btnSearchA5Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA5View.DataController.SetRecordCount(0);
	proc_WkCharge;
end;

procedure TFrm_ACCA5.proc_WkCharge;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate,
	sBrNo, sHdNo, sWhere: string;
	ABrNo, AHdNo, Param, AName : string;
	iType, i, j: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
	XmlData, ErrMsg: string;
	lst_Result: IXMLDomNodeList;
	ls_Rcrd: TStringList;
begin
	if GridA5View.DataController.RecordCount > 0 then
		Exit;

	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
	begin
		GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
		Exit;
	end;

  if fGetChk_Search_HdBrNo('기사충전내역') then Exit;

	if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then
	begin
		if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
			sHdNo := GT_SEL_BRNO.HDNO
		else
			sHdNo := GT_USERIF.HD;
		sBrNo := '';
    iType := 1;
  end else
  begin
    if (GT_USERIF.LV = '60') then
			sBrNo := GT_SEL_BRNO.BrNo
    else
			sBrNo := GT_USERIF.BR;
		sHdNo := '';
    iType := 0;
  end;

	if cxSEdtA5.Text <> '' then
	begin
		if cxCbA5.ItemIndex = 0 then
			sWhere := ' AND C.IN_ID = ''' + Param_Filtering(cxSEdtA5.Text) + ''' '
		else
    if cxCbA5.ItemIndex = 1 then
		begin
			if GT_USERIF.LV = '60' then
			begin
				if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
					AHdNo := GT_SEL_BRNO.HDNO
				else
					AHdNo := GT_USERIF.HD;
				ABrNo := IfThen(GT_SEL_BRNO.GUBUN = '0', '', GT_SEL_BRNO.BrNo);
			end
			else if GT_USERIF.LV = '40' then
			begin
				AHdNo := GT_USERIF.HD;
				ABrNo := GT_USERIF.BR;
			end
			else
			begin
				AHdNo := GT_USERIF.HD;
				ABrNo := GT_USERIF.BR;
			end;
			Param := '';
			Param := AHdNo + '│' + ABrNo + '│' + 'A' + '│' + Param_Filtering(cxSEdtA5.Text);
			if not RequestBase(GetSel05('GET_ID_FROM_NAME', 'COM_UTIL.GET_ID_FROM_NAME', '100', Param), XmlData, ErrCode, ErrMsg) then
			begin
				GMessagebox(Format('입금자 로드 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
				Exit;
			end;

			xdom := ComsDomDocument.Create;
			xdom.loadXML(XmlData);
			lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
      sWhere := '';
			ls_Rcrd := TStringList.Create;
			try
				if lst_Result.length = 1 then
				begin
					GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
          if ls_Rcrd.Count >= 4 then
  					sWhere := ' AND C.IN_ID = ''' + ls_Rcrd[3] + '''  '
          else
  					sWhere := ' AND C.IN_ID = ''''  ';
				end else
        if lst_Result.length > 1 then
				begin
					sWhere := ' AND (';
					for I := 0 to lst_Result.length - 1 do
					begin
						if lst_Result.item[i].attributes.getNamedItem('Value').Text = '' then
							Continue;
						GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
            if ls_Rcrd.Count >= 4 then
            begin
              if i = 0 then
                sWhere := sWhere + ' (C.IN_ID = ''' + ls_Rcrd[3] + '''  )'
              else
							sWhere := sWhere + ' or (C.IN_ID = ''' + ls_Rcrd[3] + '''  )  ';
            end else
            begin
              if i = 0 then
                sWhere := sWhere + ' (C.IN_ID = ''''  )'
              else
							sWhere := sWhere + ' or (C.IN_ID = ''''  )  ';
            end;
					end;
					sWhere := sWhere + ')' ;
				end
				else if lst_Result.length < 1 then sWhere := '';
			finally
        xdom := Nil;
				ls_Rcrd.Free;
			end;
		end;
	end;
	if cxCb1A5.ItemIndex = 1 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''00'''
  else if cxCb1A5.ItemIndex = 2 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''02'''
	else if cxCb1A5.ItemIndex = 3 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''05'''
	else if cxCb1A5.ItemIndex = 4 then
		sWhere := sWhere + ' AND c.WK_CHARGE_TYPE = ''09''';

	ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
	xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

	  sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text :=
	  	En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WKACC01';
	  sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
	  if iType = 1 then
    begin
      if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
	  		lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS03' //본사
	  	else
	  		lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS03_8282SN'; //본사
    end else
	  	lst_Node.item[0].attributes.getNamedItem('Key').Text := 'WKCASHS02'; //지사

    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    if (cxDtStartA5.Text = '') or (cxDtEndA5.Text = '') then
    begin
      cxDtStartA5.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA5.Date := cxDtStartA5.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA5.Date) + FormatDateTime('HHNNSS', cxTeStartA5.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA5.Date) + FormatDateTime('HHNNSS', cxTeEndA5.Time);

    //노드를 복사해서 param을 생성한다....
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
    lst_Node.item[0].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
	  if iType = 0 then
	  	lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo
	  else
	  	lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        Application.ProcessMessages;
        proc_recieve(slReceive);
      end;
    finally
      frm_Main.proc_SocketWork(True);
      FreeAndNil(slReceive);
      Screen.Cursor := crDefault;
      Frm_Flash.Hide;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_ACCA5.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, ls_Rcrd2, slBalju, slSuju, slOwner, slBalBrNo, slSuBrNo:
  TStringList;
  i, j, iRow, iBalju, iCharge, iCom, iComCash, iComCyCash, iCash, iBalju2,
    iCharge2, iCom2, iCnt: Integer;
  iRateBal, iRateCom: Double;
  ls_rxxml: WideString;
  ZeroCnt, ZeroCharge: Integer;
begin
  try
    xdom := ComsDomDocument.Create;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then
      begin
        Screen.Cursor := crDefault;
        Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        ls_ClientKey := GetXmlClientKey(ls_rxxml);
        if ls_ClientKey = 'WKACC01' then
        begin
          GridA5View.BeginUpdate;
          GridA5View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          for j := 0 to slList.Count - 1 do
          begin
//-            frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            Frm_Flash.cxPBar1.Position := j + 1;
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
            Application.ProcessMessages;
            ls_rxxml := slList.Strings[j];
            if not xdom.loadXML(ls_rxxml) then
            begin
              Exit;
            end;
            if (0 < GetXmlRecordCount(ls_rxxml)) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                for i := 0 to lst_Result.length - 1 do
                begin
                  GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                  if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                  begin
                    iRow := GridA5View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA5View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    GridA5View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    sTemp := ls_Rcrd[1];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) +
                        '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':'
                        + Copy(sTemp, 13, 2);
                    end;
                    GridA5View.DataController.Values[iRow, 2] := sTemp; //지사명
                    GridA5View.DataController.Values[iRow, 3] := ls_Rcrd[2];
                    //수주지급
                    GridA5View.DataController.Values[iRow, 4] := ls_Rcrd[3];
                    //솔루션사용료
                    GridA5View.DataController.Values[iRow, 5] := ls_Rcrd[4];
                    //보험료
                    GridA5View.DataController.Values[iRow, 6] :=
                      StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                    GridA5View.DataController.Values[iRow, 7] :=
                      StrToIntDef(ls_Rcrd[6], 0); //콜대행
                    GridA5View.DataController.Values[iRow, 8] := ls_Rcrd[7];
                    //지사입금
                    GridA5View.DataController.Values[iRow, 9] := ls_Rcrd[8];
                    GridA5View.DataController.Values[iRow, 10] := ls_Rcrd[9];
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA5View.EndUpdate;
        end;
      end else
      begin
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        Screen.Cursor := crDefault;
        Exit;
      end;
    finally
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
    Exit;
  end;
end;

procedure TFrm_ACCA5.btnExcelA5Click(Sender: TObject);
begin
	if GridA5View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '기사충전내역.xls';
  Frm_Main.sgRpExcel := Format('정산>기사충전내역]%s건', [GetMoneyStr(GridA5View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA5;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_ACCA5.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA5;
	AEdDt := cxDtEndA5;
end;

procedure TFrm_ACCA5.GridA5ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA5.GridA5ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA5View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA5.MenuItem10Click(Sender: TObject);
begin
  btnExcelA5.Click;
end;

procedure TFrm_ACCA5.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA5.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA5.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA5.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA5.N1Click(Sender: TObject);
begin
  btnExcelA5.Click;
end;

procedure TFrm_ACCA5.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

end.

unit xe_CUTA11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus, System.StrUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, xe_structure, ShellAPI, System.Math,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, OleCtrls, SHDocVw, Registry,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, IniFiles, MSXML2_TLB, cxTL, ComObj,
  cxClasses, Vcl.ExtCtrls, cxMemo, cxGridLevel, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxMaskEdit,
  cxCalendar, cxButtons, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTA11 = class(TForm)
    lbCustCompany01: TcxLabel;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    pnl_Excel_OPT: TPanel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxButton16: TcxButton;
    cxLabel178: TcxLabel;
    dtOKCStDate: TcxDateEdit;
    dtOKCEdDate: TcxDateEdit;
    cxButton56: TcxButton;
    Shape2: TShape;
    cxButton33: TcxButton;
    pop_date2: TPopupMenu;
    N3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxGridOKC: TcxGrid;
    cxViewOKC: TcxGridDBTableView;
    cxColViewKeyColumn1: TcxGridDBColumn;
    cxColViewKeyColumn2: TcxGridDBColumn;
    cxColViewOKCColumn1: TcxGridDBColumn;
    cxColViewKeyColumn3: TcxGridDBColumn;
    cxColViewKeyColumn4: TcxGridDBColumn;
    cxColViewKeyColumn5: TcxGridDBColumn;
    cxColViewKeyColumn6: TcxGridDBColumn;
    cxColViewKeyColumn7: TcxGridDBColumn;
    cxColViewKeyColumn8: TcxGridDBColumn;
    cxColViewKeyColumn9: TcxGridDBColumn;
    cxColViewKeyColumn10: TcxGridDBColumn;
    cxColViewKeyColumn11: TcxGridDBColumn;
    cxColViewKeyColumn12: TcxGridDBColumn;
    cxLevelOKC: TcxGridLevel;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAll2Click(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cbKeynumber06Click(Sender: TObject);
    procedure cxButton56MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem10Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure cxButton33Click(Sender: TObject);
    procedure cxViewOKCDataControllerSortingChanged(Sender: TObject);
    procedure cxViewOKCMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxViewOKCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxViewOKCColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    gbControlKeyDown: Boolean;
    dt_sysdate2: string;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownMileDetail : string;
    AIndex : Integer;
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    procedure proc_OKCashBack;
	end;

var
  Frm_CUTA11: TFrm_CUTA11;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash, xe_CUT07;

procedure TFrm_CUTA11.proc_init;
Var i : Integer;
begin
  proc_BrNameSet;

  dtOKCStDate.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  dtOKCEdDate.Date := dtOKCStDate.Date + 1;

	for I := 0 to cxViewOKC.ColumnCount - 1 do
	begin
		case I of
		6, 9, 10:
			begin
				cxViewOKC.Columns[I].DataBinding.ValueTypeClass := TcxCurrencyValueType;
			end;
		else
			cxViewOKC.Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
		end;
	end;
end;

procedure TFrm_CUTA11.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA11.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp, sBrNo, sPerMMCode, sTmep, sRate, sSmsYn, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
  Node: TcxTreeListNode;
  bCheck: Boolean;
  ls_rxxml: WideString;
  ErrDesc: string;
begin
	try
    xdom := ComsDomDocument.Create;
    Screen.Cursor := crHourGlass;
    try
      ls_rxxml := slList[0];
      if not xdom.loadXML(ls_rxxml) then Exit;

      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        frm_Main.sbar_Message.Panels[4].Text := '';

				ls_ClientKey  := GetXmlClientKey(ls_rxxml);
        ClientKey     := ls_ClientKey;
				ls_ClientKey  := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

        case StrToIntDef(ls_ClientKey, 1) of
          80:
            begin
							cxViewOKC.BeginUpdate;

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

              for j := 0 to slList.Count - 1 do
              begin
//-                frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + IntToStr(slList.Count);
                Application.ProcessMessages;
                ls_rxxml := slList.Strings[j];
                if not xdom.loadXML(ls_rxxml) then
                begin
                  continue;
                end;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  cxViewOKC.DataController.SetRecordCount(0);

                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      Application.ProcessMessages;
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      iRow := cxViewOKC.DataController.AppendRecord;

                      cxViewOKC.DataController.Values[iRow, 0] := iRow + 1;
                      cxViewOKC.DataController.Values[iRow, 1] := GetStrToLongDateTimeStr(ls_rcrd[0]);
                      cxViewOKC.DataController.Values[iRow, 2] := ls_rcrd[1];
                      cxViewOKC.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
                      cxViewOKC.DataController.Values[iRow, 4] := GetOKCashBackStr(ls_rcrd[3]);
                      cxViewOKC.DataController.Values[iRow, 5] := ls_rcrd[4];
                      cxViewOKC.DataController.Values[iRow, 6] := StrToIntDef(ls_rcrd[5], 0);
                      cxViewOKC.DataController.Values[iRow, 7] := ls_rcrd[6];
                      cxViewOKC.DataController.Values[iRow, 8] := ls_rcrd[7];
                      cxViewOKC.DataController.Values[iRow, 9] := StrToIntDef(ls_rcrd[8], 0);
                      cxViewOKC.DataController.Values[iRow, 10] := StrToIntDef(ls_rcrd[9], 0);
                      cxViewOKC.DataController.Values[iRow, 11] := GetStrToLongDateTimeStr(ls_rcrd[10]);
                      cxViewOKC.DataController.Values[iRow, 12] := ls_rcrd[11];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              cxViewOKC.EndUpdate;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
        end;
      end  else
      begin
        Screen.Cursor := crDefault;
        GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
      end;
    finally
      Screen.Cursor := crDefault;
      xdom := Nil;
    end;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTA11.FormCreate(Sender: TObject);
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

procedure TFrm_CUTA11.FormDestroy(Sender: TObject);
begin
  Frm_CUTA11 := Nil;
end;

procedure TFrm_CUTA11.MenuItem10Click(Sender: TObject);
begin
  cxButton16.Click;
end;

procedure TFrm_CUTA11.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA11.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA11.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA11.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA11.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

function TFrm_CUTA11.GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := dtOKCStDate;
  AEdDt := dtOKCEdDate;
end;

procedure TFrm_CUTA11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTA11.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;
end;

procedure TFrm_CUTA11.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA11.cxButton16Click(Sender: TObject);
begin
  if cxViewOKC.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	pnl_Excel_OPT.Left := (Width - pnl_Excel_OPT.Width) div 2;
	pnl_Excel_OPT.top := (Height - pnl_Excel_OPT.Height) div 2;
	pnl_Excel_OPT.Visible := True;
	pnl_Excel_OPT.BringToFront;
end;

procedure TFrm_CUTA11.cxButton33Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	proc_OKCashBack;
end;

procedure TFrm_CUTA11.proc_OKCashBack;
var
  ls_TxLoad, sNode, sWhere, sBrNo, sBrName, msg: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  sBrNo := cxBrNo.Text;

  if sBrNo = '' then
  begin
    GMessagebox('OK 캐쉬백 현황 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    sBrName := GetBrName(sBrNo);
    GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
    Exit;
  end;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    sWhere := '';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '80';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'OKCBLOG01';
    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := cxBrNo.Text;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := RemoveDatetimeSeparator(dtOKCStDate.Text) + '090000';
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := RemoveDatetimeSeparator(dtOKCEdDate.Text) + '085959';
    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 +
      xDom.documentElement.xml;

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

procedure TFrm_CUTA11.cxButton56MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA11.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J, 
  Row: Integer;
  KeyData: string;
begin
  if AKeyIndex < 0 then Exit;

  if Trim(AKeyValue) = '' then Exit;

  for I := 0 to ASource.DataController.RecordCount - 1 do
  begin
    KeyData := ASource.DataController.GetValue(I, AKeyIndex);
    if Pos(AKeyValue, KeyData) > 0 then
    begin
      Row := ATarget.DataController.AppendRecord;

      ATarget.DataController.Values[Row, 0] := Row + 1;
      for J := 1 to ASource.ColumnCount - 1 do
        ATarget.DataController.Values[Row, J] := ASource.DataController.GetValue(I, J);
    end;
  end;
end;

procedure TFrm_CUTA11.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_OK캐쉬백적립현황.xls';
  Frm_Main.sgRpExcel := Format('고객_OK캐쉬백적립현황]%s건/%s', [GetMoneyStr(cxViewOKC.DataController.RecordCount), FExcelDownMileDetail]);
  Frm_Main.cxGridExcel := cxGridOKC;
  Frm_Main.cxGridDBViewExcel := cxViewOKC;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;
  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA11.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA11.cbKeynumber06Click(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      if TcxComboBox(Sender).Text = '전체' then
      begin
				sName := '[' + GT_SEL_BRNO.HDNO + '] 전체';
        sHdNo := GT_SEL_BRNO.HDNO;
				sBrNo := '';
      end else
      begin
        sHdNo := GT_SEL_BRNO.HDNO;

        if (TcxComboBox(Sender).Properties.Items.Count > 1) and (TcxComboBox(Sender).ItemIndex > 0) then
        begin
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
          else
            sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex - 1]
        end else
        begin
          if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
						sBrNo := scb_DsBranchCode.Strings[scb_KeyNumber.IndexOf(TcxComboBox(Sender).Text)]
					else
            sBrNo := scb_DsBranchCode.Strings[TcxComboBox(Sender).ItemIndex];
        end;

				iIdx := scb_BranchCode.IndexOf(sBrNo);
        if iIdx >= 0 then
					sBrName := scb_BranchName[iIdx]
        else
					sBrName := '';
				sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
			end;
    end else
    begin
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
      iIdx := scb_BranchCode.IndexOf(sBrNo);
      if iIdx >= 0 then
        sBrName := scb_BranchName[iIdx]
      else
        sBrName := '';
      sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
    end;
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
		iIdx := scb_BranchCode.IndexOf(sBrNo);
		if iIdx >= 0 then
			sBrName := scb_BranchName[iIdx]
		else
      sBrName := '';
    sName := '[' + sHdNo + '] - [' + sBrNo + ']' + sBrName;
  end;

  lbCustCompany01.Caption := sName;
  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;
end;

procedure TFrm_CUTA11.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;


procedure TFrm_CUTA11.cxViewOKCColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA11.cxViewOKCDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewOKC, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA11.cxViewOKCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    cxViewOKC.OptionsSelection.CellMultiSelect := False;
    cxViewOKC.OptionsSelection.CellSelect := False;
    cxViewOKC.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA11.cxViewOKCMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    cxViewOKC.OptionsSelection.CellMultiSelect := True;
    cxViewOKC.OptionsSelection.CellSelect := True;
    cxViewOKC.OptionsSelection.MultiSelect := True;
  end;
end;

end.

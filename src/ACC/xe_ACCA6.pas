unit xe_ACCA6;

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
  TFrm_ACCA6 = class(TForm)
    Panel18: TPanel;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA6: TcxLabel;
    btnSearchA6: TcxButton;
    btnExcelA6: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
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
    cxSEYYA6: TcxSpinEdit;
    cxSEMMA6: TcxSpinEdit;
    Shape3: TShape;
    cxCBA6: TcxComboBox;
    cxSEdtA6: TcxTextEdit;
    cxLabel38: TcxLabel;
    GridA6: TcxGrid;
    GridA6View: TcxGridDBTableView;
    GridA6ViewColumn12: TcxGridDBColumn;
    GridA6ViewColumn1: TcxGridDBColumn;
    GridA6ViewColumn2: TcxGridDBColumn;
    GridA6ViewColumn3: TcxGridDBColumn;
    GridA6ViewColumn4: TcxGridDBColumn;
    GridA6ViewColumn5: TcxGridDBColumn;
    GridA6ViewColumn6: TcxGridDBColumn;
    GridA6ViewColumn7: TcxGridDBColumn;
    GridA6ViewColumn8: TcxGridDBColumn;
    GridA6ViewColumn9: TcxGridDBColumn;
    GridA6ViewColumn10: TcxGridDBColumn;
    GridA6Level: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA6Click(Sender: TObject);
    procedure btnExcelA6Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure GridA6ViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N11Click(Sender: TObject);
    procedure GridA6ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA6ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    procedure proc_WKSolution;
    procedure proc_WKSolution2(sBrNo: string);
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA6: TFrm_ACCA6;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_JON09, xe_JON07, xe_ACC02, xe_Flash;


procedure TFrm_ACCA6.PopupMenu3Popup(Sender: TObject);
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;

	N5.Visible := False;
  N6.Visible := False;

  N11.Visible := True;
end;

procedure TFrm_ACCA6.proc_init;
begin
  lblSosokNameA6.Caption := GetSosokInfo;

	cxCBA6.ItemIndex := 0;
	cxSEYYA6.Value := StrToIntDef(FormatDateTime('yyyy', Now), 1);
  cxSEYYA6.Properties.MaxValue := cxSEYYA6.Value;
  cxSEYYA6.Properties.MinValue := cxSEYYA6.Value - 1;
  cxSEMMA6.Value := StrToIntDef(FormatDateTime('mm', Now), 1);

  GridA6View.Columns[0].DataBinding.ValueType := 'Integer';
  GridA6View.Columns[1].DataBinding.ValueType := 'String';
  GridA6View.Columns[2].DataBinding.ValueType := 'String';
  GridA6View.Columns[3].DataBinding.ValueType := 'String';
  GridA6View.Columns[4].DataBinding.ValueType := 'String';
  GridA6View.Columns[5].DataBinding.ValueType := 'Currency';
  GridA6View.Columns[6].DataBinding.ValueType := 'Currency';
  GridA6View.Columns[7].DataBinding.ValueType := 'Currency';
  GridA6View.Columns[8].DataBinding.ValueType := 'Currency';
  GridA6View.Columns[9].DataBinding.ValueType := 'Currency';
  GridA6View.Columns[10].DataBinding.ValueType := 'Currency';
  GridA6View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA6.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_ACCA6.FormDestroy(Sender: TObject);
begin
  Frm_ACCA6 := NIl;
end;

procedure TFrm_ACCA6.GridA6ViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := GridA6View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA6View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := GridA6View.DataController.Values[iRow, iBrNo];
  proc_WKSolution2(sBrNo);
end;

procedure TFrm_ACCA6.GridA6ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA6.GridA6ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA6View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA6.btnSearchA6Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
	GridA6View.DataController.SetRecordCount(0);
	proc_WKSolution;
end;

procedure TFrm_ACCA6.proc_WKSolution;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA6View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('기사사용료') then Exit;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'WKSOLACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS02' //본사
    else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS01';
    //지사

    if cxSEYYA6.Text = '' then
      cxSEYYA6.Text := FormatDateTime('yyyy', Now);
    if cxSEMMA6.Text = '' then
      cxSEMMA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);
    startDate := cxSEYYA6.Text + LPAD(cxSEMMA6.Text, '0', 2);
    //노드를 복사해서 param을 생성한다....
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
    if iType = 0 then
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo
    else
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sHdNo;

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
    xdom := nil;
  end;
end;

procedure TFrm_ACCA6.proc_WKSolution2(sBrNo: string);
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sHdNo:
  string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'ACC021';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'PROGRAMS03'; //지사

    if cxSEYYA6.Text = '' then
      cxSEYYA6.Text := FormatDateTime('yyyy', Now);
    if cxSEMMA6.Text = '' then
      cxSEMMA6.Text := Copy(FormatDateTime('yyyymm', Now), 5, 2);

    startDate := cxSEYYA6.Text + LPAD(cxSEMMA6.Text, '0', 2);
    //노드를 복사해서 param을 생성한다....
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
    lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACCA6.proc_recieve(slList: TStringList);
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
        if ls_ClientKey = 'WKSOLACC01' then
        begin
          GridA6View.BeginUpdate;
          GridA6View.DataController.SetRecordCount(0);

          Frm_Flash.cxPBar1.Properties.Max := slList.Count;
          Frm_Flash.cxPBar1.Position := 0;

          for j := 0 to slList.Count - 1 do
          begin
//-            Frm_Main.sbar_Message.Panels[4].Text := IntToStr(j + 1) + '/' +
            Frm_Flash.cxPBar1.Position := j + 1;
            IntToStr(slList.Count);
            Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' +
            IntToStr(slList.Count);
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
                  if not Check_ID(GT_USERIF.ID, ls_Rcrd[3]) then
                  begin
                    iRow := GridA6View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA6View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    GridA6View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                    GridA6View.DataController.Values[iRow, 2] := ls_Rcrd[1]; //지사명
                    GridA6View.DataController.Values[iRow, 3] := ls_Rcrd[2]; //수주지급
                    GridA6View.DataController.Values[iRow, 4] := ls_Rcrd[3]; //솔루션사용료
                    GridA6View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[4], 0); //보험료
                    GridA6View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //취소벌금(공용)
                    GridA6View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[6], 0); //콜대행
                    GridA6View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[7], 0); //지사입금
                    GridA6View.DataController.Values[iRow, 9] := StrToIntDef(ls_Rcrd[8], 0);
                    GridA6View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0);
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA6View.EndUpdate;
        end else
        if ls_ClientKey = 'ACC021' then
        begin
          if ( Not Assigned(Frm_ACC02) ) Or ( Frm_ACC02 = Nil ) then Frm_ACC02 := TFrm_ACC02.Create(Nil);
          Frm_ACC02.proc_recieve(slList);
          Frm_ACC02.Show;
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

procedure TFrm_ACCA6.btnExcelA6Click(Sender: TObject);
begin
	if GridA6View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '기사사용료.xls';
  Frm_Main.sgRpExcel := Format('정산>기사사용료]%s건', [GetMoneyStr(GridA6View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA6;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA6.MenuItem10Click(Sender: TObject);
begin
  btnExcelA6.Click;
end;

procedure TFrm_ACCA6.N11Click(Sender: TObject);
var
  iBrNo, iRow: Integer;
  sBrNo: string;
begin
  iBrNo := GridA6View.GetColumnByFieldName('지사코드').Index;
  iRow := GridA6View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sBrNo := GridA6View.DataController.Values[iRow, iBrNo];
  proc_WKSolution2(sBrNo);
end;

end.


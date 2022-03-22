unit xe_ACCA7;

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
  TFrm_ACCA7 = class(TForm)
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
    lblSosokNameA7: TcxLabel;
    cxDtStartA7: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA7: TcxDateEdit;
    btnSearchA7: TcxButton;
    btnExcelA7: TcxButton;
    btnDateA7: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA7: TcxTimeEdit;
    cxTimeEdit12: TcxTimeEdit;
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
    cxLabel2: TcxLabel;
    Shape3: TShape;
    cxCBChk1A7: TcxCheckBox;
    cxCBChk2A7: TcxCheckBox;
    cxCBChk3A7: TcxCheckBox;
    cxCBChk4A7: TcxCheckBox;
    cxCBChk5A7: TcxCheckBox;
    cxCBChk6A7: TcxCheckBox;
    cxCBChk7A7: TcxCheckBox;
    cxCBChk8A7: TcxCheckBox;
    cxCBChk9A7: TcxCheckBox;
    cxCBChk0A7: TcxCheckBox;
    cxCBChkA7: TcxCheckBox;
    btnHelpA7: TcxButton;
    pnlHelpA7: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnClose: TcxButton;
    GridA7: TcxGrid;
    GridA7View: TcxGridDBTableView;
    GridA7ViewColumn1: TcxGridDBColumn;
    GridA7ViewColumn8: TcxGridDBColumn;
    GridA7ViewColumn11: TcxGridDBColumn;
    GridA7ViewColumn2: TcxGridDBColumn;
    GridA7ViewColumn3: TcxGridDBColumn;
    GridA7ViewColumn4: TcxGridDBColumn;
    GridA7ViewColumn5: TcxGridDBColumn;
    GridA7ViewColumn6: TcxGridDBColumn;
    GridA7ViewColumn7: TcxGridDBColumn;
    GridA7ViewColumn9: TcxGridDBColumn;
    GridA7ViewColumn10: TcxGridDBColumn;
    GridA7ViewColumn12: TcxGridDBColumn;
    GridA7Level: TcxGridLevel;
    cxLabel41: TcxLabel;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA7Click(Sender: TObject);
    procedure btnDateA7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA7Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btnHelpA7Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure GridA7ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure GridA7ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA7ViewDataControllerSortingChanged(Sender: TObject);
    procedure cxCBChkA7Click(Sender: TObject);
    procedure cxCBChk0A7Click(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_ShareCallAcc;
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA7: TFrm_ACCA7;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_JON09, xe_JON07, xe_Flash;


procedure TFrm_ACCA7.PopupMenu3Popup(Sender: TObject);
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;

	N5.Visible := False;
  N6.Visible := False;
end;

procedure TFrm_ACCA7.proc_init;
begin
  lblSosokNameA7.Caption := GetSosokInfo;

  cxDtStartA7.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA7.Date := cxDtStartA7.Date + 1;

  GridA7View.Columns[0].DataBinding.ValueType := 'String';
  GridA7View.Columns[1].DataBinding.ValueType := 'Integer';
  GridA7View.Columns[2].DataBinding.ValueType := 'String';
  GridA7View.Columns[3].DataBinding.ValueType := 'String';
  GridA7View.Columns[4].DataBinding.ValueType := 'String';
  GridA7View.Columns[5].DataBinding.ValueType := 'Currency';
  GridA7View.Columns[6].DataBinding.ValueType := 'Currency';
  GridA7View.Columns[7].DataBinding.ValueType := 'Currency';
  GridA7View.Columns[8].DataBinding.ValueType := 'Currency';
  GridA7View.Columns[9].DataBinding.ValueType := 'String';
  GridA7View.Columns[10].DataBinding.ValueType := 'Currency';
  GridA7View.Columns[11].DataBinding.ValueType := 'Currency';
  GridA7View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA7.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA7.FormDestroy(Sender: TObject);
begin
  Frm_ACCA7 := NIl;
end;

procedure TFrm_ACCA7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA7.btnDateA7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA7.BtnCloseClick(Sender: TObject);
begin
  pnlHelpA7.Visible := False;
end;

procedure TFrm_ACCA7.btnHelpA7Click(Sender: TObject);
begin
  pnlHelpA7.Left := (Width - pnlHelpA7.Width) div 2;
  pnlHelpA7.top := (Height - pnlHelpA7.Height) div 2;
  pnlHelpA7.Visible := True;
  pnlHelpA7.BringToFront;
end;

procedure TFrm_ACCA7.btnSearchA7Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
  GridA7View.DataController.SetRecordCount(0);
  proc_ShareCallAcc;
end;

procedure TFrm_ACCA7.proc_ShareCallAcc;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo, sHdNo, sShare: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA7View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('공유콜정산') then Exit;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'SHAREACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
    begin
      if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
        lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE1' //본사
      else
        lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE1_8282SN'; //본사
    end else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CALLSHARE2'; //지사

    if (cxDtStartA7.Text = '') or (cxDtEndA7.Text = '') then
    begin
      cxDtStartA7.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA7.Date := cxDtStartA7.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA7.Date);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA7.Date);
    sShare := '';
    if cxCBChk0A7.Checked then
      sShare := sShare + '0';
    if cxCBChk1A7.Checked then
      sShare := sShare + '1';
    if cxCBChk2A7.Checked then
      sShare := sShare + '2';
    if cxCBChk3A7.Checked then
      sShare := sShare + '3';
    if cxCBChk4A7.Checked then
      sShare := sShare + '4';
    if cxCBChk5A7.Checked then
      sShare := sShare + '5';
    if cxCBChk6A7.Checked then
      sShare := sShare + '6';
    if cxCBChk7A7.Checked then
      sShare := sShare + '7';
    if cxCBChk8A7.Checked then
      sShare := sShare + '8';
    if cxCBChk9A7.Checked then
      sShare := sShare + '9';

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
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);

    if iType = 0 then
    begin
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := sBrNo;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := sBrNo;
    end else
    begin
      lst_Node.item[0].attributes.getNamedItem('Seq').Text := '1';
      lst_Node.item[0].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
      lst_Node.item[1].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
      lst_Node.item[2].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[3].attributes.getNamedItem('Seq').Text := '4';
      lst_Node.item[3].attributes.getNamedItem('Value').Text := sHdNo;
      lst_Node.item[4].attributes.getNamedItem('Seq').Text := '5';
      lst_Node.item[4].attributes.getNamedItem('Value').Text := sHdNo;
    end;
    lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
    lst_Node.item[5].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[6].attributes.getNamedItem('Seq').Text := '7';
    lst_Node.item[6].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[7].attributes.getNamedItem('Seq').Text := '8';
    lst_Node.item[7].attributes.getNamedItem('Value').Text := sShare;

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

procedure TFrm_ACCA7.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_MSG_Err, ls_ClientKey, sTemp: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, ls_Rcrd2, slBalju, slSuju, slOwner, slBalBrNo, slSuBrNo: TStringList;
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
        if ls_ClientKey = 'SHAREACC01' then
        begin
          GridA7View.BeginUpdate;
          GridA7View.DataController.SetRecordCount(0);
          slBalju := TStringList.Create;
          slSuju := TStringList.Create;
          slOwner := TStringList.Create;
          slBalBrNo := TStringList.Create;
          slSuBrNo := TStringList.Create;

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
                  if ls_Rcrd[11] = '발주' then
                  begin
                    if ls_Rcrd[4] <> '' then
                      slBalBrNo.Add(ls_Rcrd[4])
                    else
                      slBalBrNo.Add(ls_Rcrd[2]);
                    slBalju.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                  end else
                  if ls_Rcrd[11] = '수주' then
                  begin
                    if ls_Rcrd[4] <> '' then
                      slSuBrNo.Add(ls_Rcrd[4])
                    else
                      slSuBrNo.Add(ls_Rcrd[2]);
                    slSuju.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                  end else
                  if ls_Rcrd[11] = '자체' then
                  begin
                    slOwner.Add(lst_Result.item[i].attributes.getNamedItem('Value').Text);
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          iBalju2 := 0;
          iCharge2 := 0;
          iCom2 := 0;
          iCnt := 0;
          ZeroCnt := 0;
          ZeroCharge := 0;
          if slBalju.Count > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to slBalju.Count - 1 do
              begin
                GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
                GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];
                GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);
                GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);
                GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);
                GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0);
                GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);
                GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);
                // 정산비율 계산
                iCharge := StrToIntDef(ls_Rcrd[7], 0);
                iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                iCom := StrToIntDef(ls_Rcrd[8], 0);
                if iCharge = 0 then
                begin
                  iRateBal := 0;
                  iRateCom := 0;
                end else
                begin
                  iRateBal := (iBalju * 100 div iCharge);
                  iRateCom := (iCom * 100 div iCharge) - iRateBal;
                  if iRateCom < 0 then
                    iRateCom := 0;
                end;
                if iBalju = 0 then
                  GridA7View.DataController.Values[iRow, 9] := ''
                else
                  GridA7View.DataController.Values[iRow, 9] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
                ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[10], 0);
                ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[11], 0);
              end;
            finally
              ls_Rcrd.Free;
            end;
            iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
            GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
            GridA7View.DataController.Values[iRow, 0] := '발주';
            GridA7View.DataController.Values[iRow, 2] := '발주합계';
            GridA7View.DataController.Values[iRow, 3] := '';
            GridA7View.DataController.Values[iRow, 4] := '';
            GridA7View.DataController.Values[iRow, 5] := IntToStr(iCnt);
            GridA7View.DataController.Values[iRow, 6] := IntToStr(iCharge2);
            GridA7View.DataController.Values[iRow, 7] := IntToStr(iCom2);
            GridA7View.DataController.Values[iRow, 8] := IntToStr(iBalju2);
            GridA7View.DataController.Values[iRow, 10] := ZeroCnt;
            GridA7View.DataController.Values[iRow, 11] := ZeroCharge;
          end;

          iBalju2 := 0;
          iCharge2 := 0;
          iCom2 := 0;
          iCnt := 0;
          ZeroCnt := 0;
          ZeroCharge := 0;
          if slSuju.Count > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to slSuju.Count - 1 do
              begin
                GetTextSeperationEx('│', slSuju[i], ls_Rcrd);
                iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
                GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow +
                  1);
                GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];
                GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);
                GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);
                GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);
                GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0); // 정산비율 계산
                GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);
                GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);
                iCharge := StrToIntDef(ls_Rcrd[7], 0);
                iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                iCom := StrToIntDef(ls_Rcrd[8], 0);
                if iCharge = 0 then
                begin
                  iRateBal := 0;
                  iRateCom := 0;
                end else
                begin
                  iRateBal := (iBalju * 100 div iCharge);
                  iRateCom := (iCom * 100 div iCharge) - iRateBal;
                  if iRateCom < 0 then
                    iRateCom := 0;
                end;
                if iBalju = 0 then
                  GridA7View.DataController.Values[iRow, 9] := ''
                else
                  GridA7View.DataController.Values[iRow, 9] :=
                    FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
                ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[10], 0);
                ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[11], 0);
              end;
            finally
              ls_Rcrd.Free;
            end;
            iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
            GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
            GridA7View.DataController.Values[iRow, 0] := '수주';
            GridA7View.DataController.Values[iRow, 2] := '수주합계';
            GridA7View.DataController.Values[iRow, 3] := '';
            GridA7View.DataController.Values[iRow, 4] := '';
            GridA7View.DataController.Values[iRow, 5] := IntToStr(iCnt);
            GridA7View.DataController.Values[iRow, 6] := IntToStr(iCharge2);
            GridA7View.DataController.Values[iRow, 7] := IntToStr(iCom2);
            GridA7View.DataController.Values[iRow, 8] := IntToStr(iBalju2);
            GridA7View.DataController.Values[iRow, 10] := ZeroCnt;
            GridA7View.DataController.Values[iRow, 11] := ZeroCharge;
          end;

          iBalju2 := 0;
          iCharge2 := 0;
          iCom2 := 0;
          iCnt := 0;
          ZeroCnt := 0;
          ZeroCharge := 0;
          if slBalBrNo.Count > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            ls_Rcrd2 := TStringList.Create;
            try
              for i := 0 to slBalBrNo.Count - 1 do
              begin
                j := slSuBrNo.IndexOf(slBalBrNo.Strings[i]);
                if j = -1 then
                begin
                  GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                  iRow := GridA7View.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                  GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                  GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                  GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                  GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);
                  GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);
                  GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);
                  GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0);
                  GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);
                  GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);
                  // 정산비율 계산
                  iCharge := StrToIntDef(ls_Rcrd[7], 0);
                  iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                  iCom := StrToIntDef(ls_Rcrd[8], 0);
                  if iCharge = 0 then
                  begin
                    iRateBal := 0;
                    iRateCom := 0;
                  end else
                  begin
                    iRateBal := (iBalju * 100 div iCharge);
                    iRateCom := (iCom * 100 div iCharge) - iRateBal;
                    if iRateCom < 0 then
                      iRateCom := 0;
                  end;
                  if iBalju = 0 then
                    GridA7View.DataController.Values[iRow, 9] := ''
                  else
                    GridA7View.DataController.Values[iRow, 9] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                  iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                  iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                  iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                  iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
                end else
                begin
                  GetTextSeperationEx('│', slBalju[i], ls_Rcrd);
                  GetTextSeperationex('│', slSuju[j], ls_Rcrd2);
                  slSuju[j] := '';
                  iRow := GridA7View.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                  GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                  GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                  GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                  GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0) - StrToIntDef(ls_Rcrd2[6], 0);
                  GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0) - StrToIntDef(ls_Rcrd2[7], 0);
                  GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0) - StrToIntDef(ls_Rcrd2[8], 0);
                  GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0) - StrToIntDef(ls_Rcrd2[9], 0); // 정산비율 계산
                  GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0) - StrToIntDef(ls_Rcrd2[12], 0);
                  GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0) - StrToIntDef(ls_Rcrd2[12], 0);
                  iCharge := StrToIntDef(ls_Rcrd[7], 0);
                  iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                  iCom := StrToIntDef(ls_Rcrd[8], 0);
                  if iCharge = 0 then
                  begin
                    iRateBal := 0;
                    iRateCom := 0;
                  end else
                  begin
                    iRateBal := (iBalju * 100 div iCharge);
                    iRateCom := (iCom * 100 div iCharge) - iRateBal;
                    if iRateCom < 0 then
                      iRateCom := 0;
                  end;
                  if iBalju = 0 then
                    GridA7View.DataController.Values[iRow, 9] := ''
                  else
                    GridA7View.DataController.Values[iRow, 9] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                  iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0) - StrToIntDef(ls_Rcrd2[6], 0);
                  iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0) - StrToIntDef(ls_Rcrd2[7], 0);
                  iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0) - StrToIntDef(ls_Rcrd2[8], 0);
                  iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0) - StrToIntDef(ls_Rcrd2[9], 0);
                  ZeroCnt := ZeroCnt + StrToIntDef(ls_Rcrd[10], 0);
                  ZeroCharge := ZeroCharge + StrToIntDef(ls_Rcrd[11], 0);
                end;
              end;
            finally
              ls_Rcrd.Free;
              ls_Rcrd2.Free;
            end;
          end;

          if slSuju.Count > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to slSuju.Count - 1 do
              begin
                if slSuju.Strings[i] <> '' then
                begin
                  GetTextSeperationEx('│', slSuju[i], ls_Rcrd);
                  iRow := GridA7View.DataController.AppendRecord;
                  // 1 Record 추가
                  GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                  GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
                  GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                  GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                  GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                  GridA7View.DataController.Values[iRow, 5] := -StrToIntDef(ls_Rcrd[6], 0);
                  GridA7View.DataController.Values[iRow, 6] := -StrToIntDef(ls_Rcrd[7], 0);
                  GridA7View.DataController.Values[iRow, 7] := -StrToIntDef(ls_Rcrd[8], 0);
                  GridA7View.DataController.Values[iRow, 8] := -StrToIntDef(ls_Rcrd[9], 0);
                  GridA7View.DataController.Values[iRow, 10] := -StrToIntDef(ls_Rcrd[12], 0);
                  GridA7View.DataController.Values[iRow, 11] := -StrToIntDef(ls_Rcrd[13], 0);
                  // 정산비율 계산
                  iCharge := StrToIntDef(ls_Rcrd[7], 0);
                  iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                  iCom := StrToIntDef(ls_Rcrd[8], 0);
                  if iCharge = 0 then
                  begin
                    iRateBal := 0;
                    iRateCom := 0;
                  end else
                  begin
                    iRateBal := (iBalju * 100 div iCharge);
                    iRateCom := (iCom * 100 div iCharge) - iRateBal;
                    if iRateCom < 0 then
                      iRateCom := 0;
                  end;
                  if iBalju = 0 then
                    GridA7View.DataController.Values[iRow, 9] := ''
                  else
                    GridA7View.DataController.Values[iRow, 9] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                  iCnt := iCnt - StrToIntDef(ls_Rcrd[6], 0);
                  iCharge2 := iCharge2 - StrToIntDef(ls_Rcrd[7], 0);
                  iCom2 := iCom2 - StrToIntDef(ls_Rcrd[8], 0);
                  iBalju2 := iBalju2 - StrToIntDef(ls_Rcrd[9], 0);
                  ZeroCnt := ZeroCnt - StrToIntDef(ls_Rcrd[10], 0);
                  ZeroCharge := ZeroCharge - StrToIntDef(ls_Rcrd[11], 0);
                end;
              end;
            finally
              ls_Rcrd.Free;
            end;
          end;
          if (slBalju.Count > 0) or (slSuju.Count > 0) then
          begin
            iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
            GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
            GridA7View.DataController.Values[iRow, 0] := '발주 - 수주';
            GridA7View.DataController.Values[iRow, 2] := ' 합계';
            GridA7View.DataController.Values[iRow, 3] := '';
            GridA7View.DataController.Values[iRow, 4] := '';
            GridA7View.DataController.Values[iRow, 5] := IntToStr(iCnt);
            GridA7View.DataController.Values[iRow, 6] := IntToStr(iCharge2);
            GridA7View.DataController.Values[iRow, 7] := IntToStr(iCom2);
            GridA7View.DataController.Values[iRow, 8] := IntToStr(iBalju2);
            GridA7View.DataController.Values[iRow, 10] := ZeroCnt;
            GridA7View.DataController.Values[iRow, 11] := ZeroCharge;
          end;

          iBalju2 := 0;
          iCharge2 := 0;
          iCom2 := 0;
          iCnt := 0;
          if slOwner.Count > 0 then
          begin
            ls_Rcrd := TStringList.Create;
            try
              for i := 0 to slOwner.Count - 1 do
              begin
                GetTextSeperationEx('│', slOwner[i], ls_Rcrd);
                iRow := GridA7View.DataController.AppendRecord; // 1 Record 추가
                GridA7View.DataController.Values[iRow, 1] := IntToStr(iRow + 1);
                GridA7View.DataController.Values[iRow, 0] := ls_Rcrd[11];
                GridA7View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                GridA7View.DataController.Values[iRow, 3] := ls_Rcrd[3];
                GridA7View.DataController.Values[iRow, 4] := ls_Rcrd[5];
                GridA7View.DataController.Values[iRow, 5] := StrToIntDef(ls_Rcrd[6], 0);
                GridA7View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[7], 0);
                GridA7View.DataController.Values[iRow, 7] := StrToIntDef(ls_Rcrd[8], 0);
                GridA7View.DataController.Values[iRow, 8] := StrToIntDef(ls_Rcrd[9], 0);
                GridA7View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[12], 0);
                GridA7View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[13], 0);
                // 정산비율 계산
                iCharge := StrToIntDef(ls_Rcrd[7], 0);
                iBalju := Abs(StrToIntDef(ls_Rcrd[9], 0));
                iCom := StrToIntDef(ls_Rcrd[8], 0);
                if iCharge = 0 then
                begin
                  iRateBal := 0;
                  iRateCom := 0;
                end else
                begin
                  iRateBal := (iBalju * 100 div iCharge);
                  iRateCom := (iCom * 100 div iCharge) - iRateBal;
                  if iRateCom < 0 then
                    iRateCom := 0;
                end;
                if iBalju = 0 then
                  GridA7View.DataController.Values[iRow, 9] := ''
                else
                  GridA7View.DataController.Values[iRow, 9] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                iCnt := iCnt + StrToIntDef(ls_Rcrd[6], 0);
                iCharge2 := iCharge2 + StrToIntDef(ls_Rcrd[7], 0);
                iCom2 := iCom2 + StrToIntDef(ls_Rcrd[8], 0);
                iBalju2 := iBalju2 + StrToIntDef(ls_Rcrd[9], 0);
              end;
            finally
              ls_Rcrd.Free;
            end;
          end;
          GridA7View.EndUpdate;
          FreeAndNil(slBalju);
          FreeAndNil(slSuju);
          FreeAndNil(slOwner);
          FreeAndNil(slBalBrNo);
          FreeAndNil(slSuBrNo);
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

procedure TFrm_ACCA7.btnExcelA7Click(Sender: TObject);
begin
	if GridA7View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '공유콜정산.xls';
  Frm_Main.sgRpExcel := Format('정산>공유콜정산]%s건', [GetMoneyStr(GridA7View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA7;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA7.cxCBChk0A7Click(Sender: TObject);
begin
  if not TcxCheckBox(Sender).Checked then
  begin
    cxCBChkA7.Tag := 1;
    cxCBChkA7.Checked := False;
    cxCBChkA7.Tag := 0;
  end;
end;

procedure TFrm_ACCA7.cxCBChkA7Click(Sender: TObject);
begin
  if cxCBChkA7.Tag = 1 then  Exit;

  if cxCBChkA7.Checked then
  begin
    cxCBChk0A7.Checked := True;
    cxCBChk1A7.Checked := True;
    cxCBChk2A7.Checked := True;
    cxCBChk3A7.Checked := True;
    cxCBChk4A7.Checked := True;
    cxCBChk5A7.Checked := True;
    cxCBChk6A7.Checked := True;
    cxCBChk7A7.Checked := True;
    cxCBChk8A7.Checked := True;
    cxCBChk9A7.Checked := True;
  end else
  begin
    cxCBChk0A7.Checked := False;
    cxCBChk1A7.Checked := False;
    cxCBChk2A7.Checked := False;
    cxCBChk3A7.Checked := False;
    cxCBChk4A7.Checked := False;
    cxCBChk5A7.Checked := False;
    cxCBChk6A7.Checked := False;
    cxCBChk7A7.Checked := False;
    cxCBChk8A7.Checked := False;
    cxCBChk9A7.Checked := False;
  end;
end;

function TFrm_ACCA7.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA7;
	AEdDt := cxDtEndA7;
end;

procedure TFrm_ACCA7.GridA7ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA7.GridA7ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA7View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA7.GridA7ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  iRow: Integer;
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then
    exit;
  try
    AStyle := frm_Main.cxStyle17;
    iRow := GridA7View.DataController.GetRowInfo(ARecord.Index).RecordIndex;
    if GridA7View.DataController.Values[iRow, 0] = null then
      exit;
    if GridA7View.DataController.Values[iRow, 0] = '발주' then
      AStyle.Color := $00B9FFFA
    else
    if GridA7View.DataController.Values[iRow, 0] = '수주' then
      AStyle.Color := $00FFF4E3
    else
    if GridA7View.DataController.Values[iRow, 0] = '발주 - 수주' then
      AStyle.Color := $00FFC4C4
    else
      AStyle.Color := $00CEFFCE;
  except
  end;
end;

procedure TFrm_ACCA7.MenuItem10Click(Sender: TObject);
begin
  btnExcelA7.Click;
end;

procedure TFrm_ACCA7.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA7.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA7.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA7.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA7.N1Click(Sender: TObject);
begin
  btnExcelA7.Click;
end;

procedure TFrm_ACCA7.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

end.


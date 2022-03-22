unit xe_CUTA7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  xe_structure, MSXML2_TLB, IniFiles, cxGridDBTableView, cxCalendar, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, ComObj, System.Math,
  cxData, cxDataStorage, cxNavigator, cxLabel, cxDropDownEdit, Vcl.ExtCtrls, System.StrUtils,
  cxGroupBox, cxClasses, Vcl.StdCtrls, cxRadioGroup, GradientLabel, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridCustomView,
  cxGridBandedTableView, cxGrid, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTA7 = class(TForm)
    lblCustLvlSosok: TcxLabel;
    Label26: TLabel;
    cxGridCustGroup: TcxGrid;
    cxGridBandedTableView3: TcxGridBandedTableView;
    cxViewCustGroup: TcxGridTableView;
    cxColCGGroupName: TcxGridColumn;
    cxColCGSortNo: TcxGridColumn;
    cxColCGLevelName: TcxGridColumn;
    cxColCGMileage: TcxGridColumn;
    cxColCGColor: TcxGridColumn;
    cxColCGLevelUpDesc: TcxGridColumn;
    cxColCGGroupSeq: TcxGridColumn;
    cxColCGLevelSeq: TcxGridColumn;
    cxColCGDefaultYN: TcxGridColumn;
    cxLevelCustGroup: TcxGridLevel;
    btnCustGroupAdd: TcxButton;
    btnCustGroupDel: TcxButton;
    btnCustLevelAdd: TcxButton;
    btnCustLevelDel: TcxButton;
    cxGridCustLevel: TcxGrid;
    cxGridBandedTableView2: TcxGridBandedTableView;
    cxViewCustLevel: TcxGridTableView;
    cxColCLBranchTel: TcxGridColumn;
    cxColCLGroup: TcxGridColumn;
    cxColCLAutoUp: TcxGridColumn;
    cxColCLGroupSeq: TcxGridColumn;
    cxLevelCustLevel: TcxGridLevel;
    cxGridGroupLevel: TcxGrid;
    cxGridBandedTableView1: TcxGridBandedTableView;
    cxViewGroupLevel: TcxGridTableView;
    cxLevelGroupLevel: TcxGridLevel;
    Label1: TLabel;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    cxColGLSortNo: TcxGridColumn;
    cxColGLLevelName: TcxGridColumn;
    cxColGLMileage: TcxGridColumn;
    cxColGLColor: TcxGridColumn;
    cxColGLLevelUpDesc: TcxGridColumn;
    cxColGLDefaultYN: TcxGridColumn;
    Label2: TLabel;
    PnlMain: TPanel;
    Panel22: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel54: TcxLabel;
    Shape1: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape15: TShape;
    Shape2: TShape;
    BtnSearch: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCustLevelAddClick(Sender: TObject);
    procedure cxViewCustGroupCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCustGroupDelClick(Sender: TObject);
    procedure btnCustLevelDelClick(Sender: TObject);
    procedure btnCustGroupAddClick(Sender: TObject);
    procedure cxViewCustLevelCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewCustLevelCanSelectRecord(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      var AAllow: Boolean);
    procedure cxViewCustLevelFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Label2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxColCGColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxColCGLevelNameStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxColGLColorStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxColGLLevelNameStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure BtnSearchClick(Sender: TObject);
  private
    { Private declarations }
    procedure RequestData(AData: string);
    procedure RequestDataCustLevel;
    procedure RequestDataLevelFromGroupSeq(AGroupSeq: string);
    procedure ResponseCustLevel(AXmlStr: WideString);
    procedure ResponseCustGroup(AXmlStr: WideString);
    procedure ResponseLevelFromGroupSeq(AXmlStr: WideString);
    procedure OnRefreshCustLevel(Sender: TObject);
    procedure ShowCustLevelWindow(AGroupName, AGroupSeq:string; AOneYear : Boolean; ALevelSeq: string = '');
    procedure DelCustLevel(ALevelSeq: string);
    procedure DelCustGroup(AGroupSeq: string);
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_Branch_Change;
    procedure proc_recieve(slList: TStringList);  // 전문 응답 처리
	end;

var
  Frm_CUTA7: TFrm_CUTA7;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_CUT02, xe_Flash;


procedure TFrm_CUTA7.proc_init;
begin
//  proc_Branch_Change;
end;

procedure TFrm_CUTA7.proc_Branch_Change;
begin
	lblCustLvlSosok.Caption := GetSosokInfo;
end;

procedure TFrm_CUTA7.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp, sBrNo, sPerMMCode, sTmep, sRate, sSmsYn, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
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

        if ClientKey = 'GetCustGroup' then
          ResponseCustLevel(ls_rxxml)
        else if ClientKey = 'GetGroupLevel' then
          ResponseCustGroup(ls_rxxml)
        else if ClientKey = 'GetLevelFromGroupSeq' then
          ResponseLevelFromGroupSeq(ls_rxxml)
      end else
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

procedure TFrm_CUTA7.FormCreate(Sender: TObject);
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

	proc_init;
end;

procedure TFrm_CUTA7.FormDestroy(Sender: TObject);
begin
  Frm_CUTA7 := Nil;
end;

procedure TFrm_CUTA7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTA7.RequestDataCustLevel;
var
  Param: string;
  Row: Integer;
begin
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox(PChar('고객등급관리는 [좌측 상단 지사선택 메뉴에서] 지사를 선택하셔야 합니다.'), CDMSI);
    cxViewCustGroup.DataController.SetRecordCount(0);
    cxViewCustLevel.DataController.SetRecordCount(0);
    cxViewGroupLevel.DataController.SetRecordCount(0);
    Exit;
  end;

  Param := GT_SEL_BRNO.BrNo;

  RequestData(GetSel05('GetCustGroup', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│1'));
  RequestData(GetSel05('GetGroupLevel', 'cust_level.lv_select_ext', '100', GT_SEL_BRNO.BrNo+'│2'));
end;

procedure TFrm_CUTA7.RequestDataLevelFromGroupSeq(AGroupSeq: string);
var
  Param: string;
  Row: Integer;
begin
  Param := AGroupSeq;

  RequestData(GetSel05('GetLevelFromGroupSeq', 'cust_level.lv_select', '100', Param));
end;

procedure TFrm_CUTA7.ResponseCustGroup(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row, Idx: Integer;
  ls_Rcrd: TStringList;
  sOneYear : String;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    Idx := cxViewCustGroup.DataController.FocusedRecordIndex;

    cxViewCustGroup.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          if ls_Rcrd[11] = 'y' then sOneYear := ' [최근 1년 유지]'
                               else sOneYear := '';

          Row := cxViewCustGroup.DataController.AppendRecord;
          cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index]  := '[' + Lpad(ls_Rcrd[9], '0', 4) + ']' + ls_Rcrd[0] + sOneYear;  // 그룹명
          cxViewCustGroup.DataController.Values[Row, cxColCGSortNo.Index]     := ls_Rcrd[1];  // 정렬
          cxViewCustGroup.DataController.Values[Row, cxColCGLevelName.Index]  := ls_Rcrd[2];  // 등급명
          cxViewCustGroup.DataController.Values[Row, cxColCGMileage.Index]    := IfThen(ls_Rcrd[3] = '0', '', IfThen(StrToIntDef(ls_Rcrd[3], 0) > 100, StrToMoney(ls_Rcrd[3]) + ' 원', ls_Rcrd[3] + '%'));  // 마일리지
          cxViewCustGroup.DataController.Values[Row, cxColCGColor.Index]      := ls_Rcrd[4];  // 색상
          if (UpperCase(ls_Rcrd[7]) = 'Y') Or (UpperCase(ls_Rcrd[11]) = 'Y') then
            cxViewCustGroup.DataController.Values[Row, cxColCGLevelUpDesc.Index] := Format('%s건이상/%s%%이하', [ls_Rcrd[5], ls_Rcrd[6]])
          else
            cxViewCustGroup.DataController.Values[Row, cxColCGLevelUpDesc.Index] := '';
          cxViewCustGroup.DataController.Values[Row, cxColCGDefaultYN.Index]   := ls_Rcrd[8];
          cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index]   := ls_Rcrd[9];
          cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index]   := ls_Rcrd[10];
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxGridCustGroup.FocusedView.DataController.Groups.FullExpand;
      if cxViewCustGroup.DataController.RecordCount > Idx then
        cxViewCustGroup.DataController.FocusedRecordIndex := Idx;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA7.ResponseLevelFromGroupSeq(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row, Idx: Integer;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    Idx := cxViewGroupLevel.DataController.FocusedRecordIndex;

    cxViewGroupLevel.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          Row := cxViewGroupLevel.DataController.AppendRecord;
          cxViewGroupLevel.DataController.Values[Row, cxColGLSortNo.Index]     := ls_Rcrd[1];  // 정렬
          cxViewGroupLevel.DataController.Values[Row, cxColGLLevelName.Index]  := ls_Rcrd[2];  // 등급명
          cxViewGroupLevel.DataController.Values[Row, cxColGLMileage.Index]    := IfThen(ls_Rcrd[3] = '0', '', IfThen(StrToIntDef(ls_Rcrd[3], 0) > 100, StrToMoney(ls_Rcrd[3]) + ' 원', ls_Rcrd[3] + '%'));  // 마일리지
          cxViewGroupLevel.DataController.Values[Row, cxColGLColor.Index]      := ls_Rcrd[4];  // 색상
          if (UpperCase(ls_Rcrd[7]) = 'Y') then
            cxViewGroupLevel.DataController.Values[Row, cxColGLLevelUpDesc.Index] := Format('%s건이상/%s%%이하', [ls_Rcrd[5], ls_Rcrd[6]])
          else
            cxViewGroupLevel.DataController.Values[Row, cxColGLLevelUpDesc.Index] := '';
          cxViewGroupLevel.DataController.Values[Row, cxColGLDefaultYN.Index]   := ls_Rcrd[8];
        end;
      finally
        ls_Rcrd.Free;
      end;
      cxGridGroupLevel.FocusedView.DataController.Groups.FullExpand;
      if cxViewGroupLevel.DataController.RecordCount > Idx then
        cxViewGroupLevel.DataController.FocusedRecordIndex := Idx;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA7.ResponseCustLevel(AXmlStr: WideString);
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  I, Row: Integer;
  ls_Rcrd: TStringList;
begin
  xdom := ComsDomDocument.Create;
  try
    if not xdom.loadXML(AXmlStr) then
      Exit;

    cxViewCustLevel.DataController.SetRecordCount(0);
    if (0 < GetXmlRecordCount(AXmlStr)) then
    begin
      lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');

      ls_Rcrd := TStringList.Create;
      try
        for I := 0 to lst_Result.length - 1 do
        begin
          GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

          Row := cxViewCustLevel.DataController.AppendRecord;
          cxViewCustLevel.DataController.Values[Row, 0] := ls_Rcrd[0];
          cxViewCustLevel.DataController.Values[Row, 1] := ls_Rcrd[1];
          cxViewCustLevel.DataController.Values[Row, 2] := IfThen(UpperCase(ls_Rcrd[2]) = 'Y', '사용', '미사용');
          cxViewCustLevel.DataController.Values[Row, 3] := ls_Rcrd[3];
        end;
      finally
        ls_Rcrd.Free;
      end;
    end;
  finally
    xdom := Nil;
  end;
end;

procedure TFrm_CUTA7.RequestData(AData: string);
var
  ReceiveStr: string;
  StrList: TStringList;
  ErrCode: integer;
begin
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
  try
    if dm.SendSock(AData, StrList, ErrCode, False) then
    begin
      ReceiveStr := StrList[0];

      if trim(ReceiveStr) <> '' then
      begin
        Application.ProcessMessages;
        proc_recieve(StrList);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
    StrList.Free;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTA7.cxColCGColorStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  AStyle := stlCustLevelColor;
  AStyle.Color := Hex6ToColor(Sender.DataController.Values[Idx, AItem.Index]);
end;

procedure TFrm_CUTA7.cxColCGLevelNameStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if UpperCase(Sender.DataController.Values[Idx, cxColCGDefaultYN.Index]) <> 'Y' then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := clWhite;
  AStyle.Font.Style := [fsBold];
end;

procedure TFrm_CUTA7.DelCustGroup(AGroupSeq: string);
var
  SendData, XmlData,
  Param, Key, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.group_delete', AGroupSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  RequestDataCustLevel;
end;

procedure TFrm_CUTA7.DelCustLevel(ALevelSeq: string);
var
  SendData, XmlData,
  Param, Key, ErrMsg: string;
  ErrCode: Integer;
begin
  if not RequestBase(GetCallable05('DelCustLevelItem', 'cust_level.lv_delete', ALevelSeq), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  RequestDataCustLevel;
end;

procedure TFrm_CUTA7.OnRefreshCustLevel(Sender: TObject);
begin
  RequestDataCustLevel;
end;

procedure TFrm_CUTA7.ShowCustLevelWindow(AGroupName, AGroupSeq:string; AOneYear : Boolean; ALevelSeq:String);
begin
  if ( not Assigned(Frm_CUT02) ) Or ( Frm_CUT02 = Nil ) then Frm_CUT02 := TFrm_CUT02.Create(Self);
  Frm_CUT02.SetData(GT_SEL_BRNO.BrNo, AGroupName, AGroupSeq, AOneYear, ALevelSeq);
  Frm_CUT02.OnRefreshEvent := OnRefreshCustLevel;
  Frm_CUT02.Left := (Screen.Width  - Frm_CUT02.Width ) div 2;
  Frm_CUT02.Top  := (Screen.Height - Frm_CUT02.Height) div 2;
  if Frm_CUT02.top <= 10 then Frm_CUT02.top := 10;
  Frm_CUT02.Show;
end;

procedure TFrm_CUTA7.btnCustLevelAddClick(Sender: TObject);
var
  Row: Integer;
  GroupName,
  GroupSeq: string;
  bOneYear : Boolean;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('등급 추가할 그룹을 선택해 주세요.', CDMSI);
    Exit;
  end;

  bOneYear := False;
  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
  if Pos('[최근 1년 유지]', GroupName) > 0 then
  begin
    GroupName := StringReplace(GroupName, ' [최근 1년 유지]', '', [rfReplaceAll]);
    bOneYear := True;
  end;
  GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];

  ShowCustLevelWindow(GroupName, GroupSeq, bOneYear);
end;

procedure TFrm_CUTA7.cxViewCustGroupCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Row: Integer;
  GroupName,
  GroupSeq, LevelSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
  GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];
  LevelSeq := cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index];

  ShowCustLevelWindow(GroupName, GroupSeq, False, LevelSeq);
end;

procedure TFrm_CUTA7.btnCustGroupDelClick(Sender: TObject);
var
  Row: Integer;
  GroupName, GroupSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('그룹을 선택해 주세요.', CDMSI);
    Exit;
  end;

  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  GroupName := Copy(GroupName, Pos(']', GroupName) + 1, Length(GroupName));
  GroupSeq := cxViewCustGroup.DataController.Values[Row, cxColCGGroupSeq.Index];

  if Application.MessageBox(PChar(Format('[%s]그룹을 삭제할까요?', [GroupName])), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    DelCustGroup(GroupSeq);
  end;
end;

procedure TFrm_CUTA7.btnCustLevelDelClick(Sender: TObject);
var
  Row: Integer;
  GroupName, LevelName, LevelSeq: string;
begin
  Row := cxViewCustGroup.DataController.FocusedRecordIndex;

  if Row < 0 then
  begin
    GMessageBox('삭제하실 등급을 선택해 주세요.', CDMSI);
    Exit;
  end;

  GroupName := cxViewCustGroup.DataController.Values[Row, cxColCGGroupName.Index];
  LevelName := cxViewCustGroup.DataController.Values[Row, cxColCGLevelName.Index];
  LevelSeq := cxViewCustGroup.DataController.Values[Row, cxColCGLevelSeq.Index];

  if Application.MessageBox(PChar(Format('[%s>%s]등급을 삭제할까요?', [GroupName, LevelName])), CDMSI, MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    DelCustLevel(LevelSeq);
  end;
end;

procedure TFrm_CUTA7.BtnSearchClick(Sender: TObject);
begin
  RequestDataCustLevel;
end;

procedure TFrm_CUTA7.btnCustGroupAddClick(Sender: TObject);
begin
  ShowCustLevelWindow('', '', False);
end;

procedure TFrm_CUTA7.cxViewCustLevelCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Row: Integer;
  GroupSeq: string;
begin
  exit;
  Row := cxViewCustLevel.DataController.FocusedRecordIndex;

  GroupSeq := cxViewCustLevel.DataController.Values[Row, cxColCLGroupSeq.Index];

  RequestDataLevelFromGroupSeq(GroupSeq);
end;

procedure TFrm_CUTA7.cxColGLColorStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if Sender.DataController.Values[Idx, AItem.Index] = Null then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := Hex6ToColor(Sender.DataController.Values[Idx, AItem.Index]);
end;

procedure TFrm_CUTA7.cxColGLLevelNameStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Idx: Integer;
begin
  Idx := Sender.DataController.GetRowInfo(ARecord.Index).RecordIndex;

  if Sender.DataController.Values[Idx, cxColGLDefaultYN.Index] = Null then
    Exit;

  if UpperCase(Sender.DataController.Values[Idx, cxColGLDefaultYN.Index]) <> 'Y' then
    Exit;

  AStyle := stlCustLevelColor;
  AStyle.Color := clWhite;
  AStyle.Font.Style := [fsBold];
end;

procedure TFrm_CUTA7.cxViewCustLevelCanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
var
  GroupSeq: string;
begin
  GroupSeq := cxViewCustLevel.DataController.Values[ARecord.Index, cxColCLGroupSeq.Index];
  RequestDataLevelFromGroupSeq(GroupSeq);
end;

procedure TFrm_CUTA7.cxViewCustLevelFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  Row: Integer;
  GroupSeq: string;
begin
  if not Assigned(AFocusedRecord) then
    Exit;

  GroupSeq := cxViewCustLevel.DataController.Values[AFocusedRecord.Index, cxColCLGroupSeq.Index];

  RequestDataLevelFromGroupSeq(GroupSeq);
end;

procedure TFrm_CUTA7.Label2Click(Sender: TObject);
  procedure RunDownload;
  var
    IE: Variant;
    EHWND: THandle;
  begin
    try
      IE := CreateOleObject('InternetExplorer.Application');

      IE.height := 100;
      IE.width := 100;
      IE.left := 0;
      IE.top := 0;

      IE.MenuBar := False;
      IE.AddressBar := True;
      IE.Resizable := False;
      IE.StatusBar := False;
      IE.ToolBar := False;
      IE.Silent := false;

      sleep(1);

      IE.Navigate('http://www.callmaner.com/download/콜마너_고객등급변경신청서.xls');
      IE.Visible := True;

      Application.ProcessMessages;
      sleep(1);
    except on E: Exception do
      GMessagebox(Format('신청서 다운로드 시 오류(Err: %s)가 발생하였습니다.'#13#10
                        + '(다시시도 바랍니다.)' , [E.Message]), CDMSI);
    end;
  end;
begin
  RunDownload;
end;

end.


unit xe_STTA5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_STTA5 = class(TForm)
    pop_date: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cbbA5: TcxComboBox;
    cbb1A5: TcxComboBox;
    edtA5: TcxTextEdit;
    btnSearchA5: TcxButton;
    btnExcelA5: TcxButton;
    cxDtStartA5: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxDtEndA5: TcxDateEdit;
    cxLabel24: TcxLabel;
    btn9: TcxButton;
    cxGridA5: TcxGrid;
    cxGridA5View1: TcxGridDBTableView;
    cxGridA5View1Column1: TcxGridDBColumn;
    cxGridA5View1Column2: TcxGridDBColumn;
    cxGridA5View1Column3: TcxGridDBColumn;
    cxGridA5View1Column4: TcxGridDBColumn;
    cxGridA5View1Column5: TcxGridDBColumn;
    cxGridA5View1Column6: TcxGridDBColumn;
    cxGridA5View1Column7: TcxGridDBColumn;
    cxLevel3: TcxGridLevel;
    cxGridA5View1Column8: TcxGridDBColumn;
    cxGridA5View1Column9: TcxGridDBColumn;
    cxGridA5View1Column11: TcxGridDBColumn;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    Shape1: TShape;
    Shape5: TShape;
    cxLabel218: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    lblSosokNameA5: TcxLabel;
    Shape6: TShape;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGridA5View1Column10: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItemClick(Sender: TObject);
    procedure btnDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniN1Click(Sender: TObject);
    procedure btnSearchA5Click(Sender: TObject);
    procedure btnExcelA5Click(Sender: TObject);
    procedure asg37GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure FormDestroy(Sender: TObject);
    procedure cxView3StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxView3DataControllerSortingChanged(Sender: TObject);
    procedure cxGridA5View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbb4PropertiesChange(Sender: TObject);
    procedure cbb5PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    procedure proc_init_worker;
    procedure RequestDataCommCall; // 공유콜통계
    procedure SetSearchDate(AStart, AEnd: TDate);
	public
    { Public declarations }
    procedure proc_init;
    procedure proc_Init_BRS;
  end;

var
  Frm_STTA5: TFrm_STTA5;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;

procedure TFrm_STTA5.FormCreate(Sender: TObject);
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

procedure TFrm_STTA5.FormDestroy(Sender: TObject);
begin
  Frm_STTA5 := Nil;
end;

procedure TFrm_STTA5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA5.proc_Init_BRS;
var
  i: integer;
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  try
    cbbA5.Properties.Items.Clear;
    cbbA5.Properties.Items.Add('지사전체');

    // 통계화면
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := GT_SEL_BRNO.HDNO
    else
      Param := GT_USERIF.HD;

    if not RequestBase(GetSel05('GETBRLIST', 'STT.GET_BRLIST', '1000', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('지사리스트 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    if Pos('<Data Count="',xmlData) > 0 then
    begin
      tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
      if Pos('"',tmpCntStr)>0 then tmpCntStr:=Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
      tmpCnt:=StrToIntDef(tmpCntStr,0);
    end;
    if tmpCnt<1 then Exit;

    SetLength(ArrSt,tmpCnt);
    tmpStr:=xmlData;
    tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
    tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

    if Pos('<Result Value=',XmlData)>0 then
      tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

    if tmpCnt>0 then
    begin
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
          if not Check_ID(GT_USERIF.ID, copy(ArrSt[k],1,4)) then
          begin
            cbbA5.Properties.Items.Add(ArrSt[k]);
          end;
        end;
      end;
    end;
  finally
    cbbA5.ItemIndex:=0;
    if (GT_USERIF.lv<>'60') and (cbbA5.Properties.Items.count>1) then
    begin
      i:=-1;
      for k:=1 to cbbA5.Properties.Items.Count-1 do
      begin
        if Pos(GT_USERIF.BR, cbbA5.Properties.Items[k]) = 1 then i:=k;
      end;
      if i<>-1 then
      begin
        cbbA5.ItemIndex:=i;
        cbbA5.Enabled:=false;
      end;
    end;
  end;
end;

procedure TFrm_STTA5.proc_init;
var i : integer;
begin
  lblSosokNameA5.Caption := GetSosokInfo;

  for i := 0 to cxGridA5View1.ColumnCount - 1 do
    cxGridA5View1.Columns[i].DataBinding.ValueType := 'String';

  proc_init_worker;
  proc_Init_BRS;
end;

procedure TFrm_STTA5.proc_init_worker;
begin
  try
    cxDtStartA5.Date := Now;
    cxDtEndA5.Date := Now + 1;
  except
  end;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_STTA5.RequestDataCommCall; // 공유콜통계
var
  ls_TxLoad, msg : string;
  StrList, slList : TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  I, j : Integer;
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

  if fGetChk_Search_HdBrNo('공유콜통계') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    Exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    Exit;
  end;

  if (cbb1A5.itemindex<>0) and (Length(edtA5.Text)<3) then
  begin
    GMessagebox('검색을 수행하려면 3자이상 입력해야 합니다.', CDMSI);
    Exit;
  end;

  if (cbb1A5.itemindex = 0) or (cbb1A5.ItemIndex = 2) then
    Param := '1'
  else
    Param := '2';

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;

  if (GT_USERIF.lv='60') and (cbbA5.itemindex=0) then
    Param := Param + '│' + '%'
  else
    Param := Param + '│' + Trim(Copy(cbbA5.Text,1,5));

  Param := Param + '│';

  if cbbA5.ItemIndex > 0 then
    Param := Param + '│' + Trim(Copy(cbbA5.Text,1,5)) +'%'
  else
    Param := Param + '│' + Param_Filtering(edtA5.text) +'%';

  Param := Param + '│' + StringReplace(cxDtStartA5.text,'-','',[rfReplaceAll]) + '090000';
  Param := Param + '│' + StringReplace(cxDtEndA5.text,'-','',[rfReplaceAll]) + '090000';

  slList := TStringList.Create;
  StrList := TStringList.Create;
  try
    if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
    begin
      if not RequestBasePaging(GetSel05('GETCOMSTT', 'STT.GET_COM_STT_NEW', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('공유콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Exit;
      end;
    end else
    begin
      if not RequestBasePaging(GetSel05('GETCOMSTT', 'STT_8282SN.GET_COM_STT_NEW', '1000', Param), slList, ErrCode, ErrMsg) then
      begin
        GMessagebox(Format('공유콜통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
        Exit;
      end;
    end;

    cxGridA5View1.DataController.SetRecordCount(0);
    Screen.Cursor := crHourGlass;
    iCnt := 1;
    for j := 0 to slList.Count - 1 do
    begin
      Application.ProcessMessages;
      xmlData := slList.Strings[j];

      if Pos('<Data Count="',xmlData) > 0 then
      begin
        tmpCntStr:=Copy(XmlData,Pos('<Data Count="',xmlData)+13,100);
        if Pos('"',tmpCntStr) > 0 then tmpCntStr := Copy(tmpCntStr,1,Pos('"',tmpCntStr)-1);
        tmpCnt:=StrToIntDef(tmpCntStr,0);
      end;
      if tmpCnt < 1 then Exit;

      cxGridA5View1.BeginUpdate;
      try
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

            iRow := cxGridA5View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA5View1, iRow, 0, '')
            else
              SetGridData(cxGridA5View1, iRow, 0, IntToStr(iCnt));
            SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA5View1, iRow, 3, '발주/자사발주');
            SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[4]);
            SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[5]);
            SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[6]);
            SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[7]);
            SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[8]);
            SetGridData(cxGridA5View1, iRow, 9, '');
            SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[9]);

            iRow := cxGridA5View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA5View1, iRow, 0, '')
            else
              SetGridData(cxGridA5View1, iRow, 0, IntToStr(k+1));
            SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA5View1, iRow, 3, '수주/자사수주');
            SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[10]);
            SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[11]);
            SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[12]);
            SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[13]);
            SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[14]);
            SetGridData(cxGridA5View1, iRow, 9, '');
            SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[15]);

            iRow := cxGridA5View1.DataController.AppendRecord;
            if k=tmpCnt-1 then
              SetGridData(cxGridA5View1, iRow, 0, '')
            else
              SetGridData(cxGridA5View1, iRow, 0, IntToStr(k+1));
            SetGridData(cxGridA5View1, iRow, 1, StrList.Strings[1]);
            if trim(StrList.Strings[3]) <>'' then
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2] + ' (' + StrList.Strings[3]+')')
            else
              SetGridData(cxGridA5View1, iRow, 2, StrList.Strings[2]);
            SetGridData(cxGridA5View1, iRow, 3, '발주비율(%)');
            SetGridData(cxGridA5View1, iRow, 4, StrList.Strings[16]);
            SetGridData(cxGridA5View1, iRow, 5, StrList.Strings[17]);
            SetGridData(cxGridA5View1, iRow, 6, StrList.Strings[18]);
            SetGridData(cxGridA5View1, iRow, 7, StrList.Strings[19]);
            SetGridData(cxGridA5View1, iRow, 8, StrList.Strings[20]);
            SetGridData(cxGridA5View1, iRow, 9, '');
            SetGridData(cxGridA5View1, iRow, 10, StrList.Strings[21]);
            Inc(iCnt);
		    	end;
		    end;
      finally
        cxGridA5View1.endupdate;
      end;
    end;
  finally
    StrList.Free;
    slList.Free;
    Screen.Cursor := crDefault;
  end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_STTA5.MenuItemClick(Sender: TObject);
var
  StartDt, EndDt : TDate;
begin
  StartDt := -1;
  EndDt   := -1;
  case TMenuItem(Sender).Tag of
    0:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
        EndDt := StartDt + 1;
      end;
    1:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
        EndDt := StartDt + 1;
      end;
    2:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 7;
        EndDt := StartDt + 7;
      end;
    3:
      begin
        StartDt := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
        EndDt := StartDt + 31;
      end;
    4:
      begin
        StartDt := StartOfTheMonth(Now);
        EndDt := EndOfTheMonth(Now);
      end;
  end;

  if StartDt > -1 then
  begin
    SetSearchDate(StartDt, EndDt);
  end;
end;

procedure TFrm_STTA5.SetSearchDate(AStart, AEnd: TDate);
begin
  cxDtStartA5.Date := AStart;
  cxDtEndA5.Date := AEnd;
end;

procedure TFrm_STTA5.btnDateMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_STTA5.mniN1Click(Sender: TObject);
begin
	btnExcelA5.Click;
end;

procedure TFrm_STTA5.cbb4PropertiesChange(Sender: TObject);
begin
  if cbbA5.ItemIndex > 0 then
  begin
    cbb1A5.ItemIndex := 0;
    cbb1A5.Enabled := False;

    edtA5.Clear;
    edtA5.Enabled := False;
  end else
  begin
    cbb1A5.Enabled := True;
    edtA5.Enabled := True;
  end;
end;

procedure TFrm_STTA5.cbb5PropertiesChange(Sender: TObject);
begin
  if cbb1A5.ItemIndex > 0 then
  begin
    cbbA5.ItemIndex := 0;
    cbbA5.Enabled := False;
  end else
  begin
    cbbA5.Enabled := True;
  end;
end;

procedure TFrm_STTA5.cxGridA5View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_STTA5.cxView3DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA5View1, AIndex, GS_SortNoChange);
end;

procedure TFrm_STTA5.cxView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.Selected) or (Sender.DataController.RecordCount = 0) then  Exit;

  try
    AStyle := frm_Main.cxStyle15;
    if ARecord.RecordIndex mod 3 = 2 then AStyle.Color := $00D5FBEF
                                     else AStyle.Color := clWhite;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_STTA5.btnSearchA5Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		Exit;
	end;
	RequestDataCommCall;
end;

procedure TFrm_STTA5.btnExcelA5Click(Sender: TObject);
begin
  if cxGridA5View1.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.STT_ExcelDown <> '1') then
	begin
    ShowMessage('[엑셀다운로드[통계메뉴]] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

  Frm_Main.sgExcel := '통계-공유콜통계.xls';
  Frm_Main.sgRpExcel := Format('통계>공유콜통계]%s건', [GetMoneyStr(cxGridA5View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA5;
  Frm_Main.cxGridDBViewExcel := cxGridA5View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA5.asg37GetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
begin
  AText:=FormatFloat('#,##0',StrToFloatDef(atext,0));
end;

end.

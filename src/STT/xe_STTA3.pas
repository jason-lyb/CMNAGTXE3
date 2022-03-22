unit xe_STTA3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, MSXML2_TLB, DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, cxGridChartView,
  AdvSplitter, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_STTA3 = class(TForm)
    dlgSave: TSaveDialog;
    pm3: TPopupMenu;
    mniN1: TMenuItem;
    cbb1: TcxComboBox;
    edt1: TcxTextEdit;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    cxGridA3: TcxGrid;
    cxGridA3View1: TcxGridDBTableView;
    asg1: TcxGridDBColumn;
    asg2: TcxGridDBColumn;
    asg3: TcxGridDBColumn;
    asg4: TcxGridDBColumn;
    asg5: TcxGridDBColumn;
    asg6: TcxGridDBColumn;
    asg7: TcxGridDBColumn;
    asg8: TcxGridDBColumn;
    asg9: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    asgView1Column1: TcxGridDBColumn;
    PnlMain: TPanel;
    cxLabel31: TcxLabel;
    Shape1: TShape;
    Shape2: TShape;
    cxLabel218: TcxLabel;
    lblSosokNameA3: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    Shape6: TShape;
    AdvSplitter1: TAdvSplitter;
    pnlChart: TPanel;
    cxGridA3C2: TcxGrid;
    cxGridA3C2ChartALL: TcxGridChartView;
    cxGridA3C2ChartALLSeries1: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries2: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries3: TcxGridChartSeries;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Shape3: TShape;
    cbChartKindA3: TcxComboBox;
    cxLabel1: TcxLabel;
    btnChartA3: TcxButton;
    cxGridA3C2ChartALLSeries4: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries5: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries6: TcxGridChartSeries;
    cxGridA3C2ChartALLSeries7: TcxGridChartSeries;
    cxGridA3C1: TcxGrid;
    cxGridA3C1ChartView1: TcxGridChartView;
    cxGridA3C1ChartView1Series1: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    cbKindA3: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mniN1Click(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnExcelA3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxView1DataControllerSortingChanged(Sender: TObject);
    procedure cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cbChartKindPropertiesChange(Sender: TObject);
    procedure btnChartA3Click(Sender: TObject);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    procedure RequestDataCus; // 고객별통계
	public
    { Public declarations }
    procedure proc_init;
    function getSttBrCode: string;
  end;

var
  Frm_STTA3: TFrm_STTA3;

implementation

{$R *.dfm}

uses Main, xe_Flash, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Dm, xe_Lib, xe_Msg,
  xe_packet, xe_xml, xe_Query, xe_system;


procedure TFrm_STTA3.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_STTA3.FormDestroy(Sender: TObject);
begin
  Frm_STTA3 := Nil;
end;

procedure TFrm_STTA3.FormShow(Sender: TObject);
begin
  pnlMain.Height := (Screen.Height div 2) - 200;
end;

procedure TFrm_STTA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFrm_STTA3.proc_init;
begin
  lblSosokNameA3.Caption := GetSosokInfo;
end;

{*==============================================================================
 데이터 요청부
==============================================================================*}
procedure TFrm_STTA3.RequestDataCus; // 고객별통계
var
  ls_TxLoad, rv_str, msg: string;
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
  iRow, iNum: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 통계관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('고객별통계') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) >
    2100) or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    exit;
  end;

  if (cbb1.itemindex = 0) then
    Param := '1'
  else
    Param := '2';

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    Param := Param + '│' + GT_SEL_BRNO.HDNO
  else
    Param := Param + '│' + GT_USERIF.HD;

  Param := Param + '│' + Param_Filtering(edt1.text);
  Param := Param + '│' + getSttBrCode;

  Screen.Cursor := crHourGlass;
  slList := TStringList.Create;
  try
    if not RequestBasePaging(GetSel05('GETCUSSTT', 'STT.GET_CUS_STT', '1000', Param), slList, ErrCode, ErrMsg) then
    begin
      Screen.Cursor := crDefault;
      GMessagebox(Format('고객별통계 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    cxGridA3View1.DataController.SetRecordCount(0);
    StrList := TStringList.Create;
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

      cxGridA3View1.BeginUpdate;
      try
        SetLength(ArrSt,tmpCnt);
        tmpStr:=xmlData;
        tmpStr:=stringreplace(tmpStr,'"','',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#13,'',[rfReplaceAll]);
        tmpStr:=stringreplace(tmpStr,#10,'',[rfReplaceAll]);

        if Pos('<Result Value=',XmlData)>0 then
          tmpStr:=Copy(XmlData,Pos('<Result Value=',XmlData),Length(XmlData)-Pos('<Result Value=',XmlData)+1);

        iNum := 0;
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
            if not Check_ID(GT_USERIF.ID, StrList.Strings[1]) then
            begin
              iRow := cxGridA3View1.DataController.AppendRecord;
              SetGridData(cxGridA3View1, iRow, 0, iCnt);
              SetGridData(cxGridA3View1, iRow, 1, StrList.Strings[2]);
              SetGridData(cxGridA3View1, iRow, 2, StrList.Strings[3]);
              SetGridData(cxGridA3View1, iRow, 3, StrList.Strings[4]);
              SetGridData(cxGridA3View1, iRow, 4, StrList.Strings[5]);
              SetGridData(cxGridA3View1, iRow, 5, StrList.Strings[6]);
              SetGridData(cxGridA3View1, iRow, 6, StrList.Strings[7]);
              SetGridData(cxGridA3View1, iRow, 7, StrList.Strings[8]);
              SetGridData(cxGridA3View1, iRow, 8, StrList.Strings[9]);
              SetGridData(cxGridA3View1, iRow, 9, StrList.Strings[10]);
              Inc(iCnt);
            end;
          end;
        end;
      finally
        cxGridA3View1.endupdate;
        btnChartA3.Click;
      end;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

{*==============================================================================
 데이터 수신부
==============================================================================*}
procedure TFrm_STTA3.mniN1Click(Sender: TObject);
begin
  btnExcelA3.Click;
end;

procedure TFrm_STTA3.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	RequestDataCus;
end;

procedure TFrm_STTA3.btnExcelA3Click(Sender: TObject);
begin
  if cxGridA3View1.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '통계-고객별통계.xls';
  Frm_Main.sgRpExcel := Format('통계>고객별통계]%s건', [GetMoneyStr(cxGridA3View1.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA3;
  Frm_Main.cxGridDBViewExcel := cxGridA3View1;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_STTA3.btnChartA3Click(Sender: TObject);
var
  I, J: Integer;
begin
  case cbKindA3.ItemIndex of
    0,1,2,3,4,5,6:
    begin
      cxGridA3C1.Visible := True;
      cxGridA3C2.Visible := False;
      cxGridA3C1ChartView1.BeginUpdate();
      try
        cxGridA3C1ChartView1.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;

        for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
        begin
          cxGridA3C1ChartView1.Categories.Values[I] := cxGridA3View1.DataController.Values[i, 2];

          case cbKindA3.ItemIndex of
          0: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 3];
          1: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 4];
          2: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 5];
          3: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 6];
          4: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 7];
          5: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 8];
          6: cxGridA3C1ChartView1Series1.Values[I] := cxGridA3View1.DataController.Values[i, 9];
          end;
        end;
      finally
        cxGridA3C1ChartView1.EndUpdate();
      end;
    end;
    7:
    begin
      cxGridA3C1.Visible := False;
      cxGridA3C2.Visible := True;
      cxGridA3C2ChartALL.BeginUpdate();
      try
        cxGridA3C2ChartALL.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;;
         for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
         begin
           cxGridA3C2ChartALL.Categories.Values[I] := cxGridA3View1.DataController.Values[i, 2];
          cxGridA3C2ChartALLSeries1.Values[I] := cxGridA3View1.DataController.Values[i, 3];
          cxGridA3C2ChartALLSeries2.Values[I] := cxGridA3View1.DataController.Values[i, 4];
          cxGridA3C2ChartALLSeries3.Values[I] := cxGridA3View1.DataController.Values[i, 5];
          cxGridA3C2ChartALLSeries4.Values[I] := cxGridA3View1.DataController.Values[i, 6];
          cxGridA3C2ChartALLSeries5.Values[I] := cxGridA3View1.DataController.Values[i, 7];
          cxGridA3C2ChartALLSeries6.Values[I] := cxGridA3View1.DataController.Values[i, 8];
          cxGridA3C2ChartALLSeries7.Values[I] := cxGridA3View1.DataController.Values[i, 9];
         end;
      finally
        cxGridA3C2ChartALL.EndUpdate();
      end;
    end;
  end;

  cxGridA3C1ChartView1.BeginUpdate();
  try
    cxGridA3C1ChartView1.DataController.RecordCount := cxGridA3View1.DataController.RecordCount;
    for I := 0 to cxGridA3View1.DataController.RecordCount-1 do
    begin
      cxGridA3C1ChartView1.Categories.Values[I] := cxGridA3View1.DataController.Values[i, 2];
    end;
  finally
    cxGridA3C1ChartView1.EndUpdate();
  end;
end;

procedure TFrm_STTA3.cbChartKindPropertiesChange(Sender: TObject);
begin
  case TcxComboBox(sender).ItemIndex of
  0:cxGridA3C1ChartView1.DiagramColumn.Active := True;
  1:cxGridA3C1ChartView1.DiagramBar.Active := True;
  2:cxGridA3C1ChartView1.DiagramStackedArea.Active := True;
  3:cxGridA3C1ChartView1.DiagramStackedBar.Active := True;
  4:cxGridA3C1ChartView1.DiagramStackedColumn.Active := True;
  5:cxGridA3C1ChartView1.DiagramLine.Active := True;
  6:cxGridA3C1ChartView1.DiagramArea.Active := True;
  7:cxGridA3C1ChartView1.DiagramPie.Active := True;
  end;
  btnChartA3.Click;
end;

procedure TFrm_STTA3.cxComboBox2PropertiesChange(Sender: TObject);
begin
  if cbKindA3.ItemIndex = 5 then
  begin
    cxGridA3C1.Visible := False;
    cxGridA3C2.Visible := True;
  end else
  begin
    cxGridA3C1.Visible := True;
    cxGridA3C2.Visible := False;
  end;
  btnChartA3.Click;
end;

procedure TFrm_STTA3.cxGridA3View1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
	AIndex := AColumn.Index;
end;

procedure TFrm_STTA3.cxView1DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA3View1, AIndex, GS_SortNoChange);
end;

function TFrm_STTA3.getSttBrCode: string;
begin
  if GT_USERIF.LV = '60' then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
      Result := '%'
    else
      Result := GT_SEL_BRNO.BrNo;
  end else
  begin
    Result := GT_USERIF.BR;
  end;
end;

end.

unit xe_ACCA12;

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
  TFrm_ACCA12 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    pnlMainA12: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    cxLabel218: TcxLabel;
    Shape2: TShape;
    lblSosokNameA12: TcxLabel;
    cxDtStartA12: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA12: TcxDateEdit;
    btnSearchA12: TcxButton;
    btnExcelA12: TcxButton;
    btnDateA12: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA12: TcxTimeEdit;
    cxTeEndA12: TcxTimeEdit;
    btnHelpA12: TcxButton;
    pnlHelpA12: TPanel;
    cxGroupBox1: TcxGroupBox;
    BtnCloseA12: TcxButton;
    cxGridA12: TcxGrid;
    cxGridA12View: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridA12Level: TcxGridLevel;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA12Click(Sender: TObject);
    procedure btnDateA12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btnExcelA12Click(Sender: TObject);
    procedure btnHelpA12Click(Sender: TObject);
    procedure BtnCloseA12Click(Sender: TObject);
    procedure cxGridA12ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGridA12ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    // �����ٿ� ����(��ȸ�� ��ȸ���� ���)
    FExcelDownWithHolding : string;
    AIndex : Integer;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_ORDER_CALC_SUMMARY;
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA12: TFrm_ACCA12;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_ACC04, xe_ACC05;


procedure TFrm_ACCA12.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA12.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA12.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA12.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA12.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA12.proc_init;
begin
  lblSosokNameA12.Caption := GetSosokInfo;

  cxDtStartA12.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA12.Date := cxDtStartA12.Date + 1;

  //�ݿ�������
  cxGridA12View.Columns[0].DataBinding.ValueType := 'String';
  cxGridA12View.Columns[1].DataBinding.ValueType := 'String';
  cxGridA12View.Columns[2].DataBinding.ValueType := 'String';
  cxGridA12View.Columns[3].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[4].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[5].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[6].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[7].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[8].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[9].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[10].DataBinding.ValueType := 'Currency';
  cxGridA12View.Columns[11].DataBinding.ValueType := 'Currency';
  cxGridA12View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA12.FormCreate(Sender: TObject);
Var i : Integer;
begin
  try
    // ��¥������ 'yy/mm/dd'�ϰ�� ���� �߻� ���ɼ����� ���� ��ü Display ���� ����
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

procedure TFrm_ACCA12.FormDestroy(Sender: TObject);
begin
  Frm_ACCA12 := NIl;
end;

procedure TFrm_ACCA12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA12.btnDateA12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA12.BtnCloseA12Click(Sender: TObject);
begin
  pnlHelpA12.Visible := False;
end;

procedure TFrm_ACCA12.btnHelpA12Click(Sender: TObject);
begin
  if  pnlHelpA12.Visible = True then pnlHelpA12.Visible := False
  else
  begin
    pnlHelpA12.Left := (Width - pnlHelpA12.Width) div 2;
    pnlHelpA12.top  := (Height - pnlHelpA12.Height) div 2;
    pnlHelpA12.Visible := True;
    pnlHelpA12.BringToFront;
  end;
end;

procedure TFrm_ACCA12.btnSearchA12Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	cxGridA12View.DataController.SetRecordCount(0);
  proc_ORDER_CALC_SUMMARY;
end;

procedure TFrm_ACCA12.proc_ORDER_CALC_SUMMARY;
var
  ls_TxLoad: string;
  rv_str, msg, sWhere, sWhere2, sDate1, sDate2: string;
  StrList: TStringList;
  ErrCode: integer;
  dt_sysdate2: string;

  XmlData, Param, ErrMsg: string;
  lst_Result: IXMLDomNodeList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
  tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
  if (GT_USERIF.LV = '10') and (GT_SEL_BRNO.GUBUN = '1') and (not IsPassedManagementETC(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  ���翡�� ������ �������� �̰�(�ݼ��� ����)�� ���� ���� �ʾҽ��ϴ�.'
        + #13#10'(�ش� ��������ڿ��� �������� �̰�[ȸ��>�������>�󼼼���]�� ��û�ٶ��ϴ�.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('�ݿ�������') then Exit;

  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('��ȸ���Դϴ�. ��ø� ��ٷ��ּ���', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToIntDef(copy(dt_sysdate2, 9, 4), 0) >
    2100) or (StrToIntDef(copy(dt_sysdate2, 9, 4), 0) < 100)) then
  begin
    GMessagebox('���� 9�ú��� ���� 1�� ���̿��� ���� �˻��� �� �����ϴ�.', CDMSI);
    exit;
  end;

  Param :=                FormatDateTime('YYYYMMDD', cxDtStartA12.Date) ;//+ '090000';       //�˻���������
  Param := Param + '��' + FormatDateTime('YYYYMMDD', cxDtEndA12.Date) ;//+ '090000';       //�˻���������

  if (GT_USERIF.LV = '60') and (GT_SEL_BRNO.GUBUN <> '1') then  //����
  begin
//    Param := Param + '��' + 'TITLE';
    Param := Param + '��' + 'HEAD';
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      Param := Param + '��' + GT_SEL_BRNO.HDNO
    else
      Param := Param + '��' + GT_USERIF.HD;
    Param := Param + '��' ;
  end else
  begin
    if (GT_USERIF.LV = '60') then
    begin
                                   //����
//    Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
        Param := Param + '��' + GT_SEL_BRNO.HDNO
      else
        Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_SEL_BRNO.BrNo;
    end else
    begin
//      Param := Param + '��' + 'TITLE';
      Param := Param + '��' + 'BRANCH';
      Param := Param + '��' + GT_USERIF.HD;
      Param := Param + '��' + GT_USERIF.BR;
    end;
  end;
  Param := Param + '��' ;

  if not RequestBase(GetSel05('GET_ORDER_CALC_SUMMARY', 'MNG_CALC.ORDER_CALC_SUMMARY', '10000', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessagebox(Format('�ݿ������� ��ȸ �� �����߻�'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

  StrList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
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

    if tmpCnt>0 then
    begin
      cxGridA12View.DataController.SetRecordCount(0);
      cxGridA12View.BeginUpdate;
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
          GetTextSeperationEx('��', ArrSt[k], StrList);

          if not Check_ID(GT_USERIF.ID, StrList.Strings[0]) then
          begin
            iRow := cxGridA12View.DataController.AppendRecord;
            SetGridData(cxGridA12View, iRow,  0, StrToIntDef(IntToStr(k+1), 0));
            SetGridData(cxGridA12View, iRow,  1, StrList.Strings[0]);
            SetGridData(cxGridA12View, iRow,  2, StrList.Strings[1] + ' (' + StrList.Strings[0] + ')');
            SetGridData(cxGridA12View, iRow,  3, StrList.Strings[2]);
            SetGridData(cxGridA12View, iRow,  4, StrList.Strings[3]);
            SetGridData(cxGridA12View, iRow,  5, StrList.Strings[4]);
            SetGridData(cxGridA12View, iRow,  6, StrList.Strings[5]);
            SetGridData(cxGridA12View, iRow,  7, StrList.Strings[6]);
            SetGridData(cxGridA12View, iRow,  8, StrList.Strings[7]);
            SetGridData(cxGridA12View, iRow,  9, StrList.Strings[8]);
            SetGridData(cxGridA12View, iRow, 10, StrList.Strings[9]);
            SetGridData(cxGridA12View, iRow, 11, StrList.Strings[10]);
          end;
        end;
      end;
    end;
    cxGridA12View.endupdate;
	finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ACCA12.btnExcelA12Click(Sender: TObject);
begin
	if cxGridA12View.DataController.RecordCount = 0 then
  begin
		GMessagebox('�ڷᰡ �����ϴ�.', CDMSI);
    Exit;
	end;

  if GT_USERIF.Excel_Use = 'n' then
  begin
    GMessagebox('[�����ٿ�ε����] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.', CDMSI);
    Exit;
  end;

	if (TCK_USER_PER.ACC_ExcelDown <> '1') then
	begin
    ShowMessage('[�����ٿ�ε�[����޴�]] ������ �����ϴ�. �����ڿ��� ����(���ѿ�û) �ٶ��ϴ�.');
    Exit;
  end;

  Frm_Main.sgExcel := '�ݿ�������.xls';
  Frm_Main.sgRpExcel := Format('����>�ݿ�������]%s��', [GetMoneyStr(cxGridA12View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := cxGridA12;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_ACCA12.cxGridA12ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA12.cxGridA12ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxGridA12View, AIndex, GS_SortNoChange);
end;

function TFrm_ACCA12.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA12;
	AEdDt := cxDtEndA12;
end;

procedure TFrm_ACCA12.MenuItem10Click(Sender: TObject);
begin
  btnExcelA12.Click;
end;

end.

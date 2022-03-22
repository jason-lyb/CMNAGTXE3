unit xe_ACCA4;

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
  TFrm_ACCA4 = class(TForm)
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
    lblSosokNameA4: TcxLabel;
    cxDtStartA4: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA4: TcxDateEdit;
    btnSearchA4: TcxButton;
    btnExcelA4: TcxButton;
    btnDateA4: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA4: TcxTimeEdit;
    cxTeEndA4: TcxTimeEdit;
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
    GridA4: TcxGrid;
    GridA4View: TcxGridDBTableView;
    GridA4ViewColumn1: TcxGridDBColumn;
    GridA4ViewColumn8: TcxGridDBColumn;
    GridA4ViewColumn2: TcxGridDBColumn;
    GridA4ViewColumn3: TcxGridDBColumn;
    GridA4ViewColumn4: TcxGridDBColumn;
    GridA4ViewColumn5: TcxGridDBColumn;
    GridA4ViewColumn6: TcxGridDBColumn;
    GridA4ViewColumn7: TcxGridDBColumn;
    GridA4Level: TcxGridLevel;
    cxSEdtA4: TcxTextEdit;
    cxLabel2: TcxLabel;
    Shape3: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA4Click(Sender: TObject);
    procedure btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA4Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure GridA4ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA4ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    // �����ٿ� ����(��ȸ�� ��ȸ���� ���)
    FExcelDownWithHolding : string;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_BrNoCharge;
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA4: TFrm_ACCA4;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_JON09, xe_JON07, xe_Flash;


procedure TFrm_ACCA4.PopupMenu3Popup(Sender: TObject);
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;

	N5.Visible := False;
  N6.Visible := False;
end;

procedure TFrm_ACCA4.proc_init;
begin
  lblSosokNameA4.Caption := GetSosokInfo;

  cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDtEndA4.Date := cxDtStartA4.Date + 1;

  GridA4View.Columns[0].DataBinding.ValueType := 'Integer';
  GridA4View.Columns[1].DataBinding.ValueType := 'String';
  GridA4View.Columns[2].DataBinding.ValueType := 'String';
  GridA4View.Columns[3].DataBinding.ValueType := 'String';
  GridA4View.Columns[4].DataBinding.ValueType := 'String';
  GridA4View.Columns[5].DataBinding.ValueType := 'String';
  GridA4View.Columns[6].DataBinding.ValueType := 'Currency';
  GridA4View.Columns[7].DataBinding.ValueType := 'String';
  GridA4View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA4.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA4.FormDestroy(Sender: TObject);
begin
  Frm_ACCA4 := NIl;
end;

procedure TFrm_ACCA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA4.btnDateA4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA4.btnSearchA4Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('�ش纻�翡 ���� ��ü ������ �����ϴ�.' + #13#10 + '���縦 �����Ͽ� �ֽʽÿ�.', CDMSI);
		exit;
	end;
	//�˻���ư Ŭ���� ...
  GridA4View.DataController.SetRecordCount(0);
  proc_BrNoCharge;
end;

procedure TFrm_ACCA4.proc_BrNoCharge;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate,
    sBrNo, sHdNo, sWhere: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA4View.DataController.RecordCount > 0 then
    Exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('���� ������ �Ҽ� ���縸 ��ȸ�Ҽ� �ֽ��ϴ�.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('������������') then Exit;

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
      ShowMessage('���� Error�Դϴ�. �ٽ���ȸ�Ͽ��ֽʽÿ�.');
      Exit;
    end;

    sWhere := '';
    if cxSEdtA4.Text <> '' then
      sWhere := ' AND IN_ID = ''' + Param_Filtering(cxSEdtA4.Text) + ''' ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'BRNOACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    if iType = 1 then
    begin
      if not Check_ID(GT_USERIF.ID, GT_SEL_BRNO.BrNo) then
        lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS06' //����
      else
        lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS06_8282SN'; //����
    end else
      lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS05'; //����

    lst_Node.item[0].attributes.getNamedItem('Backward').Text := sWhere;

    if (cxDtStartA4.Text = '') or (cxDtEndA4.Text = '') then
    begin
      cxDtStartA4.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA4.Date := cxDtStartA4.Date + 1;
    end;
    startDate := FormatDateTime('YYYYMMDD', cxDtStartA4.Date ) + FormatDateTime('HHNNSS', cxTeStartA4.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA4.Date) + FormatDateTime('HHNNSS', cxTeEndA4.Time);

    //��带 �����ؼ� param�� �����Ѵ�....
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

procedure TFrm_ACCA4.proc_recieve(slList: TStringList);
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
        if ls_ClientKey = 'BRNOACC01' then
        begin
          GridA4View.BeginUpdate;
          GridA4View.DataController.SetRecordCount(0);

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
                  GetTextSeperationEx('��', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
//                  ls_Rcrd := GetTextSeperation('��', lst_Result.item[i].attributes.getNamedItem('Value').Text);
                  iRow := GridA4View.DataController.AppendRecord;
                  // 1 Record �߰�
                  GridA4View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                  GridA4View.DataController.Values[iRow, 1] := ls_Rcrd[0];
                  sTemp := ls_Rcrd[1];
                  if sTemp <> '' then
                  begin
                    sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                    sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                    sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                      + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                  end;
                  GridA4View.DataController.Values[iRow, 2] := sTemp; //�����
                  GridA4View.DataController.Values[iRow, 3] := ls_Rcrd[2]; //��������
                  GridA4View.DataController.Values[iRow, 4] := ls_Rcrd[3]; //�ַ�ǻ���
                  GridA4View.DataController.Values[iRow, 5] := ls_Rcrd[4]; //�����
                  GridA4View.DataController.Values[iRow, 6] := StrToIntDef(ls_Rcrd[5], 0); //��ҹ���(����)
                  GridA4View.DataController.Values[iRow, 7] := ls_Rcrd[6]; //�ݴ���
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA4View.EndUpdate;
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

procedure TFrm_ACCA4.btnExcelA4Click(Sender: TObject);
begin
	if GridA4View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '������������.xls';
  Frm_Main.sgRpExcel := Format('����>������������]%s��', [GetMoneyStr(GridA4View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA4;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_ACCA4.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA4;
	AEdDt := cxDtEndA4;
end;

procedure TFrm_ACCA4.GridA4ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA4.GridA4ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA4View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA4.MenuItem10Click(Sender: TObject);
begin
  btnExcelA4.Click;
end;

procedure TFrm_ACCA4.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA4.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA4.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA4.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA4.N1Click(Sender: TObject);
begin
  btnExcelA4.Click;
end;

procedure TFrm_ACCA4.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

end.

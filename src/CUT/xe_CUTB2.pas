unit xe_CUTB2;

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
  TFrm_CUTB2 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel17: TPanel;
    lbCustCompany10: TcxLabel;
    cbCustKeynumber09: TcxComboBox;
    cxTextEdit13: TcxTextEdit;
    cxButton49: TcxButton;
    Panel18: TPanel;
    cxTextEdit14: TcxTextEdit;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    cxDate20: TcxDateEdit;
    cxDate21: TcxDateEdit;
    cxCheckBox3: TcxCheckBox;
    cxButton47: TcxButton;
    custview11: TcxTreeList;
    cxTreeListColumn1: TcxTreeListColumn;
    cxTreeListColumn2: TcxTreeListColumn;
    cxTreeListColumn3: TcxTreeListColumn;
    cxTreeListColumn4: TcxTreeListColumn;
    cxTreeListColumn5: TcxTreeListColumn;
    cxTreeListColumn7: TcxTreeListColumn;
    cxGrid9: TcxGrid;
    custview12: TcxGridBandedTableView;
    cxGridBandedColumn1: TcxGridBandedColumn;
    cxGridBandedColumn2: TcxGridBandedColumn;
    cxGridBandedColumn3: TcxGridBandedColumn;
    cxGridBandedColumn4: TcxGridBandedColumn;
    cxGridBandedColumn5: TcxGridBandedColumn;
    cxGridBandedColumn6: TcxGridBandedColumn;
    cxGridBandedColumn7: TcxGridBandedColumn;
    cxGridBandedColumn8: TcxGridBandedColumn;
    cxGridBandedColumn9: TcxGridBandedColumn;
    cxGridBandedColumn10: TcxGridBandedColumn;
    cxGridBandedColumn11: TcxGridBandedColumn;
    cxGridBandedColumn12: TcxGridBandedColumn;
    cxGridBandedColumn13: TcxGridBandedColumn;
    cxGridBandedColumn14: TcxGridBandedColumn;
    cxGridBandedColumn15: TcxGridBandedColumn;
    cxGridBandedColumn16: TcxGridBandedColumn;
    cxGridBandedColumn17: TcxGridBandedColumn;
    cxGridBandedColumn18: TcxGridBandedColumn;
    cxGridBandedColumn19: TcxGridBandedColumn;
    cxGridBandedColumn20: TcxGridBandedColumn;
    cxGridBandedColumn21: TcxGridBandedColumn;
    cxGridBandedColumn22: TcxGridBandedColumn;
    cxGridBandedColumn23: TcxGridBandedColumn;
    cxGridBandedColumn24: TcxGridBandedColumn;
    cxGridBandedColumn25: TcxGridBandedColumn;
    cxGridBandedColumn26: TcxGridBandedColumn;
    cxGridBandedColumn27: TcxGridBandedColumn;
    cxGridBandedColumn28: TcxGridBandedColumn;
    cxGridBandedColumn29: TcxGridBandedColumn;
    cxGridBandedColumn30: TcxGridBandedColumn;
    cxGridBandedColumn31: TcxGridBandedColumn;
    cxGridBandedColumn32: TcxGridBandedColumn;
    cxGridBandedColumn33: TcxGridBandedColumn;
    cxGridBandedColumn34: TcxGridBandedColumn;
    cxGridBandedColumn35: TcxGridBandedColumn;
    cxGridBandedColumn36: TcxGridBandedColumn;
    cxGridBandedColumn37: TcxGridBandedColumn;
    cxGridBandedColumn38: TcxGridBandedColumn;
    cxGridBandedColumn39: TcxGridBandedColumn;
    cxGridBandedColumn40: TcxGridBandedColumn;
    cxGridBandedColumn41: TcxGridBandedColumn;
    cxGridBandedColumn42: TcxGridBandedColumn;
    cxGridBandedColumn43: TcxGridBandedColumn;
    cxGridBandedColumn44: TcxGridBandedColumn;
    cxGridLevel2: TcxGridLevel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxBrNo9: TcxTextEdit;
    cxHdNo9: TcxTextEdit;
    cxButton58: TcxButton;
    custview11cxTreeListColumn1: TcxTreeListColumn;
    PnlMain: TPanel;
    cxSplitter3: TcxSplitter;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    Shape1: TShape;
    cxLabel1: TcxLabel;
    Shape2: TShape;
    cxLabel2: TcxLabel;
    Shape3: TShape;
    cxLabel199: TcxLabel;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape4: TShape;
    Shape6: TShape;
		procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure btBubinSttDateMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxButton47Click(Sender: TObject);
    procedure RbButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem10Click(Sender: TObject);
    procedure cxButton49Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbCustKeynumber09PropertiesChange(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownBubinUsed : string;

    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
  public
    { Public declarations }
    // 좌측 메뉴 지사선택
    procedure proc_init;
    procedure proc_KeyNumber_insert;
    procedure proc_BrNameSet;
    procedure proc_BubinCust_HIS;
    procedure proc_BubinManage2;
    procedure proc_bubinHis;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
	end;

var
  Frm_CUTB2: TFrm_CUTB2;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_Flash;

procedure TFrm_CUTB2.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTB2.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTB2.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTB2.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTB2.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTB2.btBubinSttDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTB2.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;
  cxDate20.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate21.Date := cxDate20.Date + 1;

  cxTextEdit13.Text := '';
  cxComboBox2.ItemIndex := 0;
  cxTextEdit14.Text := '';
  cxComboBox3.ItemIndex := 0;
  cxCheckBox2.Checked := True;
  cxCheckBox2Click(cxCheckBox2);
  cxCheckBox3.Checked := False;

  for i := 0 to custview11.ColumnCount - 1 do
    custview11.Columns[i].DataBinding.ValueType := 'String';
  custview11.Columns[1].DataBinding.ValueType := 'Integer';

  CustView12.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView12.ColumnCount - 1 do
    CustView12.Columns[i].DataBinding.ValueType := 'String';
end;

procedure TFrm_CUTB2.proc_KeyNumber_insert;
var
  i: Integer;
  sCaption: string;
  slKeyNum: TStringList;
begin
  try
    slKeyNum := TStringList.Create;
    if GT_USERIF.LV = '60' then
    begin
      if GT_SEL_BRNO.GUBUN <> '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] 전체';
        cxHdNo9.Text := GT_SEL_BRNO.HDNO;
        cxBrNo9.Text := '';
      end
      else
        if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
        cxHdNo9.Text := GT_SEL_BRNO.HDNO;
        cxBrNo9.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
    begin
      sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
      cxHdNo9.Text := GT_SEL_BRNO.HDNO;
      cxBrNo9.Text := GT_SEL_BRNO.BrNo;
    end;

    slKeyNum.Clear;
    slKeyNum.Add('전체');
    if cxBrNo9.Text = '' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
        slKeyNum.Add(scb_KeyNumber.Strings[i]);
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
      begin
        if scb_DsBranchCode.Strings[i] = cxBrNo9.Text then
          slKeyNum.Add(scb_KeyNumber.Strings[i]);
      end;
    end;
    if slKeyNum.Count = 2 then
      slKeyNum.Delete(0);
    FreeAndNil(slKeyNum);
  except
  end;
end;

procedure TFrm_CUTB2.proc_recieve(slList: TStringList);
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
      if not xdom.loadXML(ls_rxxml) then
      begin
				Exit;
      end;
      ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
      if ('0000' = ls_MSG_Err) then
      begin
        frm_Main.sbar_Message.Panels[4].Text := '';
				ls_ClientKey  := GetXmlClientKey(ls_rxxml);
        ClientKey     := ls_ClientKey;
				ls_ClientKey  := Copy(ls_ClientKey, 6, Length(ls_ClientKey) - 5);

        case StrToIntDef(ls_ClientKey, 1) of
          16:
            begin
              CustView11.BeginUpdate;
              iCnt := 0;

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;

              for j := 0 to slList.Count - 1 do
              begin
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
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      Application.ProcessMessages;
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      case length(ls_Rcrd[5]) of
                        5:
                          begin
                            Node := CustView11.Root.AddChild;
                          end;
                        8:
                          begin
                            bCheck := False;
                            for iIdx := 0 to CustView11.Root.Count - 1 do
                            begin
                              if CustView11.Root.Items[iIdx].Values[6] = copy(ls_Rcrd[5], 1, 5) then
                              begin
                                Node := CustView11.Root.Items[iIdx].AddChild;
                                bCheck := True;
                                break;
                              end;
                            end;
                            if not bCheck then
                              Node := CustView11.Root.AddChild;
                          end;
                        11:
                          begin
                            bCheck := False;
                            for k := 0 to CustView11.Root.Count - 1 do
                            begin
                              if CustView11.Root.Items[k].HasChildren then
                              begin
                                for iIdx := 0 to CustView11.Root.Items[k].Count - 1 do
                                begin
                                  if CustView11.Root.Items[k].Items[iIdx].Values[6] = copy(ls_Rcrd[5], 1, 8) then
                                  begin
                                    Node := CustView11.Root.Items[k].Items[iIdx].AddChild;
                                    bCheck := True;
                                    break;
                                  end;
                                end;
                              end;
                            end;
                            if not bCheck then
                              Node := CustView11.Root.AddChild;
                          end;
                      end;
                      iCnt := iCnt + 1;
                      Node.Values[0] := '';
                      Node.Values[1] := IntToStr(iCnt);
                      Node.Values[2] := ls_Rcrd[0];
                      Node.Values[3] := ls_Rcrd[1];
                      Node.Values[4] := ls_Rcrd[2];
                      Node.Values[5] := ls_Rcrd[3];
                      Node.Values[6] := ls_Rcrd[5];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView11.EndUpdate;
              CustView11.FullExpand;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
          17:
            begin
              custview12.BeginUpdate;
              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;
              for j := 0 to slList.Count - 1 do
              begin
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
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  ls_Rcrd := TStringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      ls_Rcrd.Insert(0, 'n');
                      iRow := custview12.DataController.AppendRecord;
                      // 1 Record 추가
                      ls_Rcrd.Insert(0, IntToStr(iRow + 1));
                      sTemp := ls_Rcrd[11];
                      if sTemp <> '' then
                        ls_Rcrd[11] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
                      sTemp := ls_Rcrd[21];
                      if sTemp <> '' then
                        ls_Rcrd[21] := Copy(sTemp, 1, 10) + ' ' + Copy(sTemp, 11, 8);
                      sTemp := ls_Rcrd[22];
                      if StrToFloatDef(sTemp, -9) = -9 then
                        ls_Rcrd[22] := '0.0';
                      custview12.DataController.Values[iRow, 0] := ls_Rcrd[0];
                      custview12.DataController.Values[iRow, 1] := ls_Rcrd[1];
                      custview12.DataController.Values[iRow, 2] := ls_Rcrd[2];
                      custview12.DataController.Values[iRow, 3] := ls_Rcrd[3];
                      custview12.DataController.Values[iRow, 4] := ls_Rcrd[4];
                      custview12.DataController.Values[iRow, 5] := ls_Rcrd[5];
                      custview12.DataController.Values[iRow, 6] := ls_Rcrd[6];
                      custview12.DataController.Values[iRow, 7] := ls_Rcrd[7];
                      custview12.DataController.Values[iRow, 8] := ls_Rcrd[8];
                      custview12.DataController.Values[iRow, 9] := ls_Rcrd[9];
                      custview12.DataController.Values[iRow, 10] := strtocall(ls_Rcrd[10]);
                      custview12.DataController.Values[iRow, 11] := ls_Rcrd[11];
                      custview12.DataController.Values[iRow, 12] := ls_Rcrd[12];
                      custview12.DataController.Values[iRow, 13] := ls_Rcrd[13];
                      custview12.DataController.Values[iRow, 14] := ls_Rcrd[14];
                      custview12.DataController.Values[iRow, 15] := ls_Rcrd[15];
                      custview12.DataController.Values[iRow, 16] := ls_Rcrd[16];
                      custview12.DataController.Values[iRow, 17] := ls_Rcrd[17];
                      custview12.DataController.Values[iRow, 18] := ls_Rcrd[18];
                      custview12.DataController.Values[iRow, 19] := ls_Rcrd[19];
                      custview12.DataController.Values[iRow, 20] := ls_Rcrd[20];
                      custview12.DataController.Values[iRow, 21] := ls_Rcrd[21];
                      custview12.DataController.Values[iRow, 22] := ls_Rcrd[22];
                      custview12.DataController.Values[iRow, 23] := ls_Rcrd[23];
                      custview12.DataController.Values[iRow, 24] := ls_Rcrd[24];
                      custview12.DataController.Values[iRow, 25] := ls_Rcrd[25];
                      custview12.DataController.Values[iRow, 26] := ls_Rcrd[26];
                      custview12.DataController.Values[iRow, 27] := ls_Rcrd[27];
                      custview12.DataController.Values[iRow, 28] := ls_Rcrd[28];
                      custview12.DataController.Values[iRow, 29] := ls_Rcrd[29];
                      custview12.DataController.Values[iRow, 30] := ls_Rcrd[30];
                      custview12.DataController.Values[iRow, 31] := ls_Rcrd[31];
                      custview12.DataController.Values[iRow, 32] := ls_Rcrd[32];
                      custview12.DataController.Values[iRow, 33] := ls_Rcrd[33];
                      custview12.DataController.Values[iRow, 34] := ls_Rcrd[34];
                      custview12.DataController.Values[iRow, 35] := ls_Rcrd[35];
                      custview12.DataController.Values[iRow, 36] := ls_Rcrd[36];
                      custview12.DataController.Values[iRow, 37] := ls_Rcrd[37];
                      custview12.DataController.Values[iRow, 38] := ls_Rcrd[38];
                      custview12.DataController.Values[iRow, 39] := ls_Rcrd[39];
                      custview12.DataController.Values[iRow, 40] := ls_Rcrd[40];
                      custview12.DataController.Values[iRow, 41] := ls_Rcrd[41];
                      custview12.DataController.Values[iRow, 42] := ls_Rcrd[42];
                      custview12.DataController.Values[iRow, 43] := ls_Rcrd[43];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              cxButton47.Enabled := True;
              custview12.EndUpdate;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
        end;
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

procedure TFrm_CUTB2.FormCreate(Sender: TObject);
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

procedure TFrm_CUTB2.FormDestroy(Sender: TObject);
begin
  Frm_CUTB2 := NIl;
end;

procedure TFrm_CUTB2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTB2.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbCustKeynumber09.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbCustKeynumber09.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbCustKeynumber09.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
  lbCustCompany10.Caption := sName;

  cxHdNo9.Text := sHdNo;
  cxBrNo9.Text := sBrNo;

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    cbCustKeynumber09.Properties.Items.Clear;
  end;

{  if cbCustKeynumber09.Properties.Items.Count > 1 then
    cbCustKeynumber09.Properties.Items.Insert(0, '전체');}

  cbCustKeynumber09.ItemIndex := 0;
  cbCustKeynumber09.Tag := 0;
end;

procedure TFrm_CUTB2.proc_bubinHis;
begin
	CustView11.Root.TreeList.Clear;
	proc_BubinManage2;
end;

procedure TFrm_CUTB2.cbCustKeynumber09PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('법인업체 조회는 지사를 선택하셔야 합니다.', CDMSI);
    TcxComboBox(Sender).Tag := 1;
    TcxComboBox(Sender).ItemIndex := 0;
    TcxComboBox(Sender).Tag := 0;
    Exit;
  end;

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

  lbCustCompany10.Caption := sName;
  cxHdNo9.Text := sHdNo;
  cxBrNo9.Text := sBrNo;
end;

procedure TFrm_CUTB2.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.Checked then
  begin
    cxDate20.Enabled := True;
    cxDate21.Enabled := True;
    cxButton58.Enabled := True;
  end else
  begin
    cxDate20.Enabled := False;
    cxDate21.Enabled := False;
    cxButton58.Enabled := False;
  end;
end;

procedure TFrm_CUTB2.proc_BubinManage2;
var
  ls_TxLoad, ls_TxSend, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, msg: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('법인업체 조회는 지사를 선택하셔야 합니다.', CDMSI);
//-    Panel17.Enabled := False;
    exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
//-    Panel17.Enabled := False;
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인이용내역(법인업체)') then Exit;

//-  Panel17.Enabled := True;
  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    if cxTextEdit13.Text <> '' then
      sWhere := ' AND ((CB_CORP_NAME LIKE ''%' + En_Coding(Param_Filtering(cxTextEdit13.Text)) +
        '%'') OR (CB_DEPT_NAME LIKE ''%' + En_Coding(Param_Filtering(cxTextEdit13.Text)) +
        '%'')) ';
    sWhere := sWhere + ' ORDER BY CB_CODE ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text :=
      En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '16';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'CUSTGROUP1';
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := cxHdNo9.Text;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := GT_SEL_BRNO.BrNo;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := StringReplace(cbCustKeynumber09.Text, '-', '', [rfReplaceAll]);

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

procedure TFrm_CUTB2.proc_BubinCust_HIS;
var
  sWhere, sTable, sCbCode: string;
  ls_TxSend, ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인이용내역(법인고객)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // 법인>법인이용내역]1000건/A100-B100/대표번호:12345/부서:셀런SN|모바일개발팀/이용기간:20100101~20100131
  FExcelDownBubinUsed := Format('%s/대표번호:%s/부서:%s%s',
    [
        GetSelBrInfo
      , cbCustKeynumber09.Text
      , IfThen(cxCheckBox3.Checked, '법인전체', custview11.Selections[0].Values[2] + ',' + custview11.Selections[0].Values[3])
      , IfThen(cxCheckBox2.Checked, Format('/이용기간:%s~%s', [cxDate20.Text, cxDate21.Text]), '')
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := '';
  if custview11.Count > 0 then
  begin
    sCbCode := custview11.Selections[0].Values[6];
    if (cxCheckBox2.Checked) and (cxDate20.Text <> '') then
    begin
      if (StartDateTime('yyyymmdd') = FormatDateTime('yyyymmdd', cxDate20.Date)) then
        sTable := 'CDMS_A01_TODAY'
      else
      begin
        sTable := 'CDMS_A01';
        sWhere := sWhere +
          Format(' AND A.IN_DATE BETWEEN TO_DATE (''%s'', ''YYYYMMDDHH24MISS'') '
          + ' AND TO_DATE (''%s'', ''YYYYMMDDHH24MISS'') '
          , [FormatDateTime('yyyymmdd', cxDate20.Date) + '090000'
          , FormatDateTime('yyyymmdd', cxDate21.Date) + '090000']);
      end;
    end
    else
      sTable := 'CDMS_A01';

    sWhere := sWhere + ' AND A.CONF_HEAD = ''' + cxHdNo9.Text + ''' AND A.CONF_BRCH = ''' +
      cxBrNo9.Text + ''' ';

    case cxComboBox3.ItemIndex of
      0: sWhere := sWhere + ' AND A.CONF_STATUS IN (''2'',''8'',''4'') ';
      1: sWhere := sWhere + ' AND A.CONF_STATUS = ''2'' ';
      2: sWhere := sWhere + ' AND A.CONF_STATUS = ''8'' ';
      3: sWhere := sWhere + ' AND A.CONF_STATUS = ''4'' ';
    end;

    if cxCheckBox3.Checked then
    begin
      sWhere := sWhere + ' AND A.CB_CODE IS NOT NULL ';
    end else
    begin
      sWhere := sWhere + ' AND A.CB_CODE = ''' + sCbCode + ''' ';
    end;

    if cxTextEdit14.Text <> '' then
    begin
      if cxComboBox2.ItemIndex = 0 then
        sWhere := sWhere + ' AND A.CONF_USER LIKE ''%' + Param_Filtering(cxTextEdit14.Text) + '%'' '
      else
      if cxComboBox2.ItemIndex = 1 then
        sWhere := sWhere + ' AND A.CONF_CUST_TEL LIKE ''%' + StringReplace(Param_Filtering(cxTextEdit14.Text), '-', '', [rfReplaceAll]) + '%'' ';
    end;

    ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
    fGet_BlowFish_Query(GSQ_CUST_BUBIN_STT_SEARCH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '17', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

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
  end;
end;

procedure TFrm_CUTB2.cxButton47Click(Sender: TObject);
begin
  if custview11.SelectionCount = 0 then
  begin
		GMessagebox('일단 법인 업체먼저 선택을 하셔야 합니다.', CDMSI);
    exit;
  end;
  custview12.DataController.SetRecordCount(0);
  proc_BubinCust_HIS;
end;

procedure TFrm_CUTB2.cxButton49Click(Sender: TObject);
begin
  proc_BubinManage2;
end;

procedure TFrm_CUTB2.RbButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

function TFrm_CUTB2.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDate20;
  AEdDt := cxDate21;
end;

procedure TFrm_CUTB2.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
begin
  case AGubun of
   0:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      AEdDt.Date := AStDt.Date + 1;
    end;
   1:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 31;
      AEdDt.Date := AStDt.Date + 31;
    end;
   3:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 91;
      AEdDt.Date := AStDt.Date + 91;
    end;
   6:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 181;
      AEdDt.Date := AStDt.Date + 181;
    end;
   12:
    begin
      AStDt.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 365;
      AEdDt.Date := AStDt.Date + 365;
    end;
  end;
end;

procedure TFrm_CUTB2.MenuItem10Click(Sender: TObject);
begin
	if custview12.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '고객_법인관리_일반고객.xls';
  Frm_Main.sgRpExcel := Format('법인>법인이용내역]%s건/%s', [GetMoneyStr(CustView12.DataController.RecordCount), FExcelDownBubinUsed]);
  Frm_Main.cxGridExcel := cxGrid9;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

end.

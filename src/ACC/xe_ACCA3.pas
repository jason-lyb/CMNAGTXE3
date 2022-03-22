unit xe_ACCA3;

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
  TFrm_ACCA3 = class(TForm)
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
    lblSosokNameA3: TcxLabel;
    cxDtStartA3: TcxDateEdit;
    cxLabel264: TcxLabel;
    cxDtEndA3: TcxDateEdit;
    btnSearchA3: TcxButton;
    btnExcelA3: TcxButton;
    btnDateA3: TcxButton;
    cxLabel1: TcxLabel;
    Shape1: TShape;
    cxTeStartA3: TcxTimeEdit;
    cxTeEndA3: TcxTimeEdit;
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
    GridA3: TcxGrid;
    GridA3View: TcxGridDBTableView;
    GridA3ViewColumn18: TcxGridDBColumn;
    GridA3ViewColumn1: TcxGridDBColumn;
    GridA3ViewColumn2: TcxGridDBColumn;
    GridA3ViewColumn3: TcxGridDBColumn;
    GridA3ViewColumn4: TcxGridDBColumn;
    GridA3ViewColumn5: TcxGridDBColumn;
    GridA3ViewColumn6: TcxGridDBColumn;
    GridA3ViewColumn7: TcxGridDBColumn;
    GridA3ViewColumn8: TcxGridDBColumn;
    GridA3ViewColumn9: TcxGridDBColumn;
    GridA3ViewColumn10: TcxGridDBColumn;
    GridA3ViewColumn11: TcxGridDBColumn;
    GridA3ViewColumn12: TcxGridDBColumn;
    GridA3ViewColumn20: TcxGridDBColumn;
    GridA3ViewColumn13: TcxGridDBColumn;
    GridA3ViewColumn21: TcxGridDBColumn;
    GridA3ViewColumn19: TcxGridDBColumn;
    GridA3ViewColumn14: TcxGridDBColumn;
    GridA3ViewColumn15: TcxGridDBColumn;
    GridA3ViewColumn16: TcxGridDBColumn;
    GridA3ViewColumn17: TcxGridDBColumn;
    cxColGrid4ViewColumn22: TcxGridDBColumn;
    GridA3Level: TcxGridLevel;
    cxLabel42: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSearchA3Click(Sender: TObject);
    procedure btnDateA3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcelA3Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure GridA3ViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure GridA3ViewDataControllerSortingChanged(Sender: TObject);
  private
    { Private declarations }
    AIndex : Integer;
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownWithHolding : string;
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure proc_OrderAcc;
    procedure proc_recieve(slList: TStringList);
  public
    { Public declarations }
    procedure proc_init;
	end;

var
  Frm_ACCA3: TFrm_ACCA3;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_JON09, xe_JON07, xe_Flash;


procedure TFrm_ACCA3.PopupMenu3Popup(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
	N2.Visible := False;
  N11.Visible := False;
	N12.Visible := False;

	N5.Visible := False;
  N6.Visible := False;

  iRow := GridA3View.DataController.FocusedRecordIndex;
  if iRow < 0 then
    exit;
  sSlip := GridA3View.DataController.Values[iRow, 19];
  if sSlip = '' then
  begin
    N5.Visible := False;
    N6.Visible := False;
  end else
  begin
    N5.Visible := True;
    N6.Visible := True;
  end;
  N5.Visible := False;
  N6.Visible := False;
end;

procedure TFrm_ACCA3.proc_init;
begin
  lblSosokNameA3.Caption := GetSosokInfo;

  cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8))) - 1;
  cxDtEndA3.Date := cxDtStartA3.Date + 1;

  GridA3View.Columns[0].DataBinding.ValueType := 'Integer';
  GridA3View.Columns[1].DataBinding.ValueType := 'String';
  GridA3View.Columns[2].DataBinding.ValueType := 'String';
  GridA3View.Columns[3].DataBinding.ValueType := 'String';
  GridA3View.Columns[4].DataBinding.ValueType := 'String';
  GridA3View.Columns[5].DataBinding.ValueType := 'String';
  GridA3View.Columns[6].DataBinding.ValueType := 'String';
  GridA3View.Columns[7].DataBinding.ValueType := 'String';
  GridA3View.Columns[8].DataBinding.ValueType := 'String';
  GridA3View.Columns[9].DataBinding.ValueType := 'String';
	GridA3View.Columns[10].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[11].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[12].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[13].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[14].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[15].DataBinding.ValueType := 'Currency';
  GridA3View.Columns[16].DataBinding.ValueType := 'String';
  GridA3View.Columns[17].DataBinding.ValueType := 'String';
  GridA3View.Columns[18].DataBinding.ValueType := 'String';
  GridA3View.Columns[19].DataBinding.ValueType := 'String';
  GridA3View.Columns[20].DataBinding.ValueType := 'String';
  // 2010.12.20
  GridA3View.Columns[21].DataBinding.ValueType := 'String';
  GridA3View.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA3.FormCreate(Sender: TObject);
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

procedure TFrm_ACCA3.FormDestroy(Sender: TObject);
begin
  Frm_ACCA3 := NIl;
end;

procedure TFrm_ACCA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA3.btnDateA3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_date2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_ACCA3.btnSearchA3Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	//검색버튼 클릭시 ...
  if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) then
  begin
    if GT_SEL_BRNO.GUBUN <> '1' then
    begin
      GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    end else
    if GT_SEL_BRNO.GUBUN = '1' then
    begin
      GridA3View.DataController.SetRecordCount(0);
      proc_OrderAcc;
    end;
  end else
  begin
    GridA3View.DataController.SetRecordCount(0);
    proc_OrderAcc;
  end;
end;

procedure TFrm_ACCA3.proc_OrderAcc;
var
  sNode, ls_TxLoad, rv_str, ls_MSG_Err, startDate, endDate, sBrNo,
    sHdNo: string;
  iType: Integer;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if GridA3View.DataController.RecordCount > 0 then
    exit;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('오더정산') then Exit;

  if (GT_USERIF.LV = '60') then
    sBrNo := GT_SEL_BRNO.BrNo
  else
    sBrNo := GT_USERIF.BR;

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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := 'ORDERACC01';
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Key').Text := 'BRCASHS04';

    if (cxDtStartA3.Text = '') or (cxDtEndA3.Text = '') then
    begin
      cxDtStartA3.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
      cxDtEndA3.Date := cxDtStartA3.Date + 1;
    end;

    startDate := FormatDateTime('YYYYMMDD', cxDtStartA3.Date) + FormatDateTime('HHNNSS', cxTeStartA3.Time);
    endDate   := FormatDateTime('YYYYMMDD', cxDtEndA3.Date) + FormatDateTime('HHNNSS', cxTeEndA3.Time);

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
    lst_clon := lst_node.item[0].cloneNode(True);
    sNode := '/cdms/Service/Data/Query';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].appendChild(lst_clon);

    {
    지사코드 1
    지사코드 2
    지사코드 3
    지사코드 4
    지사코드 5
    시작날짜(YYYYMMDDHH24MISD 6
    마지막날짜(YYYYMMDDHH24MISS) 7
    지사코드 8
    지사코드 9
    }
    sNode := '/cdms/Service/Data/Query/Param';
    lst_Node := xdom.documentElement.selectNodes(sNode);
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
    lst_Node.item[5].attributes.getNamedItem('Seq').Text := '6';
    lst_Node.item[5].attributes.getNamedItem('Value').Text := startDate;
    lst_Node.item[6].attributes.getNamedItem('Seq').Text := '7';
    lst_Node.item[6].attributes.getNamedItem('Value').Text := endDate;
    lst_Node.item[7].attributes.getNamedItem('Seq').Text := '8';
    lst_Node.item[7].attributes.getNamedItem('Value').Text := sBrNo;
    lst_Node.item[8].attributes.getNamedItem('Seq').Text := '9';
    lst_Node.item[8].attributes.getNamedItem('Value').Text := sBrNo;

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

procedure TFrm_ACCA3.proc_recieve(slList: TStringList);
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
              if ls_ClientKey = 'ORDERACC01' then
        begin
          GridA3View.BeginUpdate;
          GridA3View.DataController.SetRecordCount(0);

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
                  ls_Rcrd.Insert(13, '');
                  if not Check_ID(GT_USERIF.ID, ls_Rcrd[0]) then
                  begin
                    iRow := GridA3View.DataController.AppendRecord;
                    // 1 Record 추가
                    GridA3View.DataController.Values[iRow, 0] := IntToStr(iRow + 1);
                    sTemp := ls_Rcrd[0];
                    if sTemp <> '' then
                    begin
                      sTemp := StringReplace(sTemp, '-', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ':', '', [rfReplaceAll]);
                      sTemp := StringReplace(sTemp, ' ', '', [rfReplaceAll]);
                      sTemp := Copy(sTemp, 1, 4) + '-' + Copy(sTemp, 5, 2) + '-' + Copy(sTemp, 7, 2) + ' '
                        + Copy(sTemp, 9, 2) + ':' + Copy(sTemp, 11, 2) + ':' + Copy(sTemp, 13, 2);
                    end;
                    GridA3View.DataController.Values[iRow, 1] := sTemp;
                    GridA3View.DataController.Values[iRow, 2] := ls_Rcrd[1];
                    //지사명
                    GridA3View.DataController.Values[iRow, 3] := ls_Rcrd[2];
                    //수주지급
                    GridA3View.DataController.Values[iRow, 4] := ls_Rcrd[3];
                    //솔루션사용료
                    GridA3View.DataController.Values[iRow, 5] := ls_Rcrd[4];
                    //보험료
                    GridA3View.DataController.Values[iRow, 6] := ls_Rcrd[5];
                    //취소벌금(공용)
                    GridA3View.DataController.Values[iRow, 7] := ls_Rcrd[6];
                    //콜대행
                    GridA3View.DataController.Values[iRow, 8] := ls_Rcrd[7];
                    //지사입금
                    GridA3View.DataController.Values[iRow, 9] := ls_Rcrd[8];
                    GridA3View.DataController.Values[iRow, 10] := StrToIntDef(ls_Rcrd[9], 0);
                    GridA3View.DataController.Values[iRow, 11] := StrToIntDef(ls_Rcrd[10], 0);
                    GridA3View.DataController.Values[iRow, 12] := StrToIntDef(ls_Rcrd[11], 0); //지사명
                    GridA3View.DataController.Values[iRow, 14] := StrToIntDef(ls_Rcrd[12], 0); //수주지급
                    // 정산비율 계산
                    iCharge := StrToIntDef(ls_Rcrd[9], 0);
                    iBalju := Abs(StrToIntDef(ls_Rcrd[12], 0));
                    iCom := StrToIntDef(ls_Rcrd[10], 0);
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
                      GridA3View.DataController.Values[iRow, 16] := ''
                    else
                      GridA3View.DataController.Values[iRow, 16] := FloatToStr(iRateBal) + ':' + FloatToStr(iRateCom); //
                    iComCash := StrToIntDef(ls_Rcrd[11], 0);
                    iComCyCash := iCom - iComCash;
                    iCash := iCom + StrToIntDef(ls_Rcrd[12], 0);
                    GridA3View.DataController.Values[iRow, 13] := IntToStr(iComCyCash);
                    GridA3View.DataController.Values[iRow, 15] := IntToStr(iCash);
                    GridA3View.DataController.Values[iRow, 17] := ls_Rcrd[14]; //보험료
                    GridA3View.DataController.Values[iRow, 18] := ls_Rcrd[15]; //취소벌금(공용)
                    GridA3View.DataController.Values[iRow, 19] := ls_Rcrd[16]; //콜대행
                    GridA3View.DataController.Values[iRow, 20] := ls_Rcrd[17]; //콜대행

                    GridA3View.DataController.Values[iRow, 21] := ls_Rcrd[18]; //콜대행
                  end;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end;
          end;
          frm_Main.sbar_Message.Panels[4].Text := '';
          GridA3View.EndUpdate;
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

procedure TFrm_ACCA3.btnExcelA3Click(Sender: TObject);
begin
	if GridA3View.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '오더정산내역.xls';
  Frm_Main.sgRpExcel := Format('정산>오더정산내역]%s건', [GetMoneyStr(GridA3View.DataController.RecordCount)]);
  Frm_Main.cxGridExcel := GridA3;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

function TFrm_ACCA3.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;

  AStDt := cxDtStartA3;
	AEdDt := cxDtEndA3;
end;

procedure TFrm_ACCA3.GridA3ViewColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_ACCA3.GridA3ViewDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(GridA3View, AIndex, GS_SortNoChange);
end;

procedure TFrm_ACCA3.MenuItem10Click(Sender: TObject);
begin
  btnExcelA3.Click;
end;

procedure TFrm_ACCA3.MenuItem2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_ACCA3.MenuItem3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_ACCA3.MenuItem4Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_ACCA3.MenuItem5Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_ACCA3.N1Click(Sender: TObject);
begin
  btnExcelA3.Click;
end;

procedure TFrm_ACCA3.N3Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_ACCA3.N5Click(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  iRow := GridA3View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sSlip := GridA3View.DataController.Values[iRow, 19];
  if sSlip = '' then Exit;

  if ( Not Assigned(Frm_JON09) ) Or ( Frm_JON09 = NIl ) then Frm_JON09 := TFrm_JON09.Create(Nil);
  Frm_JON09.Tag := 0;
  Frm_JON09.proc_orderinfo(sSlip);
end;

procedure TFrm_ACCA3.N6Click(Sender: TObject);
var
  iRow: Integer;
  sSlip: string;
begin
  iRow := GridA3View.DataController.FocusedRecordIndex;
  if iRow < 0 then Exit;

  sSlip := GridA3View.DataController.Values[iRow, 19];
  if sSlip = '' then Exit;

  if Frm_Main.Frm_JON03[GI_JON03_LastFromIdx].Visible then
    frm_Main.proc_SlipHis(sSlip, FormatDateTime('yyyy-mm-dd', now - 2) + '090000', GI_JON03_LastFromIdx)
  else
  begin
    ShowMessage('접수창 실행 중에만 [오더상세내역보기]를 할수 있습니다');
  end;
end;

end.

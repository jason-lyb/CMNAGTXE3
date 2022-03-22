unit xe_CUTB4;

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
  TFrm_CUTB4 = class(TForm)
    pop_date2: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N3: TMenuItem;
    Panel18: TPanel;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    PnlMain: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape4: TShape;
    Shape6: TShape;
    cxGrid12: TcxGrid;
    cxGBubinAuth: TcxGridDBTableView;
    cxGBubinAuthColumn1: TcxGridDBColumn;
    cxGBubinAuthColumn2: TcxGridDBColumn;
    cxGBubinAuthColumn3: TcxGridDBColumn;
    cxGBubinAuthColumn4: TcxGridDBColumn;
    cxGBubinAuthColumn5: TcxGridDBColumn;
    cxGBubinAuthColumn6: TcxGridDBColumn;
    cxGBubinAuthColumn7: TcxGridDBColumn;
    cxGBubinAuthColumn8: TcxGridDBColumn;
    cxGBubinAuthColumn9: TcxGridDBColumn;
    cxGBubinAuthColumn10: TcxGridDBColumn;
    cxGBubinAuthColumn11: TcxGridDBColumn;
    cxGBubinAuthColumn12: TcxGridDBColumn;
    cxGBubinAuthColumn13: TcxGridDBColumn;
    cxGBubinAuthColumn14: TcxGridDBColumn;
    cxGBubinAuthColumn15: TcxGridDBColumn;
    cxGBubinAuthColumn16: TcxGridDBColumn;
    cxGBubinAuthColumn17: TcxGridDBColumn;
    cxGrid12Level1: TcxGridLevel;
    rbBubinAuth01: TcxRadioButton;
    rbBubinAuth02: TcxRadioButton;
    cxLabel218: TcxLabel;
    lbBubinAuth: TcxLabel;
    cxLabel219: TcxLabel;
    cbCustKeynumber10: TcxComboBox;
    cxLabel220: TcxLabel;
    cxLabel221: TcxLabel;
    cxDate22: TcxDateEdit;
    cxLabel222: TcxLabel;
    cxLabel223: TcxLabel;
    cxDate23: TcxDateEdit;
    cxLabel224: TcxLabel;
    cbBubinWk: TcxComboBox;
    edBubinSearch: TcxTextEdit;
    Panel20: TPanel;
    rbBubinAuthchkDate01: TcxRadioButton;
    rbBubinAuthchkDate02: TcxRadioButton;
    cbBubinArea: TcxComboBox;
    edBubinArea: TcxTextEdit;
    cxButton60: TcxButton;
    cxButton61: TcxButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape7: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton60Click(Sender: TObject);
    procedure cxButton61Click(Sender: TObject);
    procedure rbBubinAuthchkDate01Click(Sender: TObject);
  private
    { Private declarations }
    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownBubinAuth : string;

    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
  public
    { Public declarations }
    // 좌측 메뉴 지사선택
    procedure proc_init;
    procedure proc_KeyNumber_insert;
    procedure proc_BrNameSet;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
	end;

var
  Frm_CUTB4: TFrm_CUTB4;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_Query, xe_xml, xe_Flash;



procedure TFrm_CUTB4.proc_init;
var
  i: Integer;
begin
  proc_BrNameSet;

  cxDate22.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate23.Date := cxDate22.Date + 1;

	for i := 0 to cxGBubinAuth.ColumnCount - 1 do
		cxGBubinAuth.columns[i].databinding.valuetype := 'String';
end;

procedure TFrm_CUTB4.proc_KeyNumber_insert;
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
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := '';
      end
      else
        if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end
    else
    begin
      sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
      cxHdNo.Text := GT_SEL_BRNO.HDNO;
      cxBrNo.Text := GT_SEL_BRNO.BrNo;
    end;

    slKeyNum.Clear;
    slKeyNum.Add('전체');
    if cxBrNo.Text = '' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
        slKeyNum.Add(scb_KeyNumber.Strings[i]);
    end
    else if GT_SEL_BRNO.GUBUN = '1' then
    begin
      for i := 0 to scb_KeyNumber.Count - 1 do
      begin
        if scb_DsBranchCode.Strings[i] = cxBrNo.Text then
          slKeyNum.Add(scb_KeyNumber.Strings[i]);
      end;
    end;
    if slKeyNum.Count = 2 then
      slKeyNum.Delete(0);
    FreeAndNil(slKeyNum);
  except
  end;
end;

procedure TFrm_CUTB4.proc_recieve(slList: TStringList);
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
          20:
            begin
              //법인인증 요청
              cxGBubinAuth.BeginUpdate;
              cxGBubinAuth.DataController.SetRecordCount(0);

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;
              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + '/' + IntToStr(slList.Count);
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
                      iRow := cxGBubinAuth.DataController.AppendRecord;

                      cxGBubinAuth.DataController.Values[iRow,0] := ls_Rcrd[0];   //지사명
                      cxGBubinAuth.DataController.Values[iRow,1] := ls_Rcrd[1];   //대표번호
                      cxGBubinAuth.DataController.Values[iRow,2] := ls_Rcrd[2];   //고객명
                      cxGBubinAuth.DataController.Values[iRow,3] := ls_Rcrd[3];   //고객번호
                      cxGBubinAuth.DataController.Values[iRow,4] := ls_Rcrd[20];  //인증여부

                      //인증시간
                      if ls_Rcrd[21] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 5] := copy(ls_Rcrd[21],1,10) + ' ' + copy(ls_Rcrd[21],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,5] := ls_Rcrd[21];

                      //접수시간
                      if ls_Rcrd[4] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 6] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,6] := ls_Rcrd[21];

                      //배차시간
                      if ls_Rcrd[5] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 7] := copy(ls_Rcrd[5],1,10) + ' ' + copy(ls_Rcrd[5],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,7] := ls_Rcrd[5];

                      //완료시간
                      if ls_Rcrd[6] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 8] := copy(ls_Rcrd[6],1,10) + ' ' + copy(ls_Rcrd[6],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,8] := ls_Rcrd[6];

                      cxGBubinAuth.DataController.Values[iRow,9] := ls_Rcrd[7] + ' ' + ls_Rcrd[8] + ' ' + ls_Rcrd[9] + ' ' + ls_Rcrd[10];    //출발지
                      cxGBubinAuth.DataController.Values[iRow,10] := ls_Rcrd[11] + ' ' + ls_Rcrd[12] + ' ' + ls_Rcrd[13] + ' ' + ls_Rcrd[14]; //도착지
                      cxGBubinAuth.DataController.Values[iRow,11] := ls_Rcrd[15]; //적요
                      cxGBubinAuth.DataController.Values[iRow,12] := ls_Rcrd[16]; //요금
                      cxGBubinAuth.DataController.Values[iRow,13] := ls_Rcrd[17]; //운행기사소속
                      cxGBubinAuth.DataController.Values[iRow,14] := ls_Rcrd[18]; //기사명
                      cxGBubinAuth.DataController.Values[iRow,15] := ls_Rcrd[19]; //기사사번
                      cxGBubinAuth.DataController.Values[iRow,16] := ls_Rcrd[22]; //접수번호
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              cxGBubinAuth.EndUpdate;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;

          21:
            begin
              //법인인증 승인
              cxGBubinAuth.BeginUpdate;
              cxGBubinAuth.DataController.SetRecordCount(0);

              Frm_Flash.cxPBar1.Properties.Max := slList.Count;
              Frm_Flash.cxPBar1.Position := 0;
              for j := 0 to slList.Count - 1 do
              begin
                Frm_Flash.cxPBar1.Position := j + 1;
                Frm_Flash.lblCnt.Caption := IntToStr(j + 1) + '/' + '/' + IntToStr(slList.Count);
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
                      iRow := cxGBubinAuth.DataController.AppendRecord;

                      cxGBubinAuth.DataController.Values[iRow,0] := ls_Rcrd[0];     //지사명
                      cxGBubinAuth.DataController.Values[iRow,1] := ls_Rcrd[1];     //대표번호
                      cxGBubinAuth.DataController.Values[iRow,2] := ls_Rcrd[2];     //고객명
                      cxGBubinAuth.DataController.Values[iRow,3] := ls_Rcrd[3];     //고객번호
                      cxGBubinAuth.DataController.Values[iRow,4] := ls_Rcrd[14];    //인증여부

                      //인증시간
                      if ls_Rcrd[15] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 5] := copy(ls_Rcrd[15],1,10) + ' ' + copy(ls_Rcrd[15],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,5] := ls_Rcrd[15];

                      //접수시간
                      if ls_Rcrd[4] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 6] := copy(ls_Rcrd[4],1,10) + ' ' + copy(ls_Rcrd[4],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,6] := ls_Rcrd[4];

                      //배차시간
                      if ls_Rcrd[5] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 7] := copy(ls_Rcrd[5],1,10) + ' ' + copy(ls_Rcrd[5],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,7] := ls_Rcrd[5];

                      //완료시간
                      if ls_Rcrd[6] <> '' then
                        cxGBubinAuth.DataController.Values[iRow, 8] := copy(ls_Rcrd[6],1,10) + ' ' + copy(ls_Rcrd[6],11,18)
                      else
                        cxGBubinAuth.DataController.Values[iRow,8] := ls_Rcrd[6];

                      cxGBubinAuth.DataController.Values[iRow,9] := ls_Rcrd[7];     //출발지
                      cxGBubinAuth.DataController.Values[iRow,10] := ls_Rcrd[8];    //도착지
                      cxGBubinAuth.DataController.Values[iRow,11] := ls_Rcrd[9];    //적요
                      cxGBubinAuth.DataController.Values[iRow,12] := ls_Rcrd[10];   //요금
                      cxGBubinAuth.DataController.Values[iRow,13] := ls_Rcrd[11];   //운행기사소속
                      cxGBubinAuth.DataController.Values[iRow,14] := ls_Rcrd[12];   //기사명
                      cxGBubinAuth.DataController.Values[iRow,15] := ls_Rcrd[13];   //기사사번
                      cxGBubinAuth.DataController.Values[iRow,16] := ls_Rcrd[16];   //접수번호
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              cxGBubinAuth.EndUpdate;
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

procedure TFrm_CUTB4.rbBubinAuthchkDate01Click(Sender: TObject);
begin
  if rbBubinAuthchkDate01.Checked then
  begin
    cxDate22.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
		cxDate23.Date := cxDate22.Date + 1;

    cxDate22.Enabled := False;
    cxDate23.Enabled := False;
  end else if rbBubinAuthchkDate02.Checked then
  begin
    cxDate22.Date := now - 1;
		cxDate23.Date := now;

    cxDate22.Enabled := True;
    cxDate23.Enabled := True;
  end;
end;

procedure TFrm_CUTB4.FormCreate(Sender: TObject);
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

procedure TFrm_CUTB4.FormDestroy(Sender: TObject);
begin
  Frm_CUTB4 := NIl;
end;

procedure TFrm_CUTB4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTB4.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbCustKeynumber10.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbCustKeynumber10.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbCustKeynumber10.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
  lbBubinAuth.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    cbCustKeynumber10.Properties.Items.Clear;
  end;

  if cbCustKeynumber10.Properties.Items.Count > 1 then
    cbCustKeynumber10.Properties.Items.Insert(0, '전체');

  cbCustKeynumber10.ItemIndex := 0;
  cbCustKeynumber10.Tag := 0;
end;

procedure TFrm_CUTB4.cbKeynumber01Click(Sender: TObject);
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
      end
      else
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
    end
    else
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
  end
  else
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

  lbBubinAuth.Caption := sName;
  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;
end;

procedure TFrm_CUTB4.cxButton60Click(Sender: TObject);
var
  sHdNo, sBrNo, sWhere, sQry, sTable, ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive : TStringList;
  ErrCode: integer;
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인인증') then Exit;

	if GT_USERIF.LV = '60' then
	begin
		if GT_SEL_BRNO.GUBUN <> '1' then
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := '';
		end
		else if GT_SEL_BRNO.GUBUN = '1' then
		begin
			sHdNo := GT_SEL_BRNO.HDNO;
			sBrNo := GT_SEL_BRNO.BrNo;
		end;
	end else
	begin
		sHdNo := GT_USERIF.HD;
    sBrNo := GT_USERIF.BR;
  end;

  //////////////////////////////////////////////////////////////////////////////
	// 법인>법인인증]1000건/A100-B100/요청리스트/대표번호:전체/이용기간:20100101~20100131
  FExcelDownBubinAuth := Format('%s/%s/대표번호:%s/이용기간:%s~%s',
    [
        GetSelBrInfo
      , IfThen(rbBubinAuth01.Checked, rbBubinAuth01.Caption, rbBubinAuth02.Caption)
      , cbCustKeynumber10.Text
      , cxDate22.Text, cxDate23.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := '';

  if sBrNo <> '' then
    sWhere := Format(' AND A.CONF_HEAD = ''%s'' AND A.CONF_BRCH = ''%s'' ',[sHdNo, sBrNo])
  else
    sWhere := Format(' AND A.CONF_HEAD = ''%s'' ',[sHdNo]);

  if (cbCustKeynumber10.Text <> '전체') and (cbCustKeynumber10.Text <> '') then
    sWhere := sWhere + format(' AND (A.KEY_NUMBER = ''%s'') ',[StringReplace(cbCustKeynumber10.Text,'-','',[rfReplaceAll])]);

  if rbBubinAuthchkDate02.Checked then
    sWhere := sWhere + format(' AND TO_CHAR(A.IN_DATE,''YYYYMMDDHH24MISS'') BETWEEN ''%s090000'' AND ''%s090000'' ', [formatdatetime('yyyymmdd',cxDate22.Date),formatdatetime('yyyymmdd',cxDate23.Date)]);

  if edBubinSearch.Text <> '' then
  begin
    case cbBubinWk.ItemIndex of
      0 : sQry := ' AND A.CONF_WK_SABUN || A.CONF_WORKER ';
      1 : sQry := ' AND A.CONF_USER ';
      2 : sQry := ' AND A.CONF_CUST_TEL ';
      3 : sQry := ' AND A.CONF_SLIP ';
      4 :
      begin
        if rbBubinAuth01.Checked then
          sQry := ' AND A.CONF_INFO '
        else if rbBubinAuth02.Checked then
          sQry := ' AND B.CONF_INFO ';
      end;
    end;
    sWhere := sWhere + sQry + Format('LIKE ''%s%s%s'' ', ['%', Param_Filtering(edBubinSearch.Text), '%']);
  end;

  if rbBubinAuth01.Checked then
  begin
    if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 0) then
      sWhere := sWhere + format(' AND A.CONF_AREA || A.CONF_AREA2 || A.CONF_AREA3 || A.CONF_AREA5 LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text), '%'])
    else if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 1) then
      sWhere := sWhere + format(' AND A.CONF_EDAREA || A.CONF_EDAREA2 || A.CONF_EDAREA3 || A.CONF_EDAREA5 LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%']);
  end else if rbBubinAuth02.Checked then
  begin
    if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 0) then
      sWhere := sWhere + format(' AND B.DEPART LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%'])
    else if (edBubinArea.Text <> '') and (cbBubinArea.ItemIndex = 1) then
      sWhere := sWhere + format(' AND B.DEST LIKE ''%s%s%s'' ',['%', Param_Filtering(edBubinArea.Text),'%']);
  end;

  if rbBubinAuthchkDate01.Checked then
    sTable := 'CDMS_A01_TODAY '
  else if rbBubinAuthchkDate02.Checked then
    sTable := 'CDMS_A01 ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  if rbBubinAuth01.Checked then
  begin
    fGet_BlowFish_Query(GSQ_BUBIN_REQ, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BREQL00020', [rfReplaceAll]);
  end else
  if rbBubinAuth02.Checked then
  begin
    fGet_BlowFish_Query(GSQ_BUBIN_ACC, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sTable, sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BACCL00021', [rfReplaceAll]);
  end;
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', '', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '5000', [rfReplaceAll]);

  Screen.Cursor := crHourGlass;
  slReceive := TStringList.Create;
  try
    frm_Main.proc_SocketWork(False);
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;
      proc_recieve(slReceive);
      Screen.Cursor := crDefault;
    end;

  finally
    frm_Main.proc_SocketWork(True);
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;

end;

procedure TFrm_CUTB4.cxButton61Click(Sender: TObject);
begin
	if cxGBubinAuth.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '고객_법인인증.xls';
  Frm_Main.sgRpExcel := Format('법인>법인인증]%s건/%s', [GetMoneyStr(cxGBubinAuth.DataController.RecordCount), FExcelDownBubinAuth]);
  Frm_Main.cxGridExcel := cxGrid12;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUTB4.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
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

procedure TFrm_CUTB4.MenuItem10Click(Sender: TObject);
begin
  cxButton61.Click;
end;

end.

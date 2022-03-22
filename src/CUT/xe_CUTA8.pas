unit xe_CUTA8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus, System.StrUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, xe_structure, ShellAPI, System.Math,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, OleCtrls, SHDocVw, Registry,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, IniFiles, MSXML2_TLB, cxTL, ComObj,
  cxClasses, Vcl.ExtCtrls, cxMemo, cxGridLevel, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxMaskEdit,
  cxCalendar, cxButtons, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle;

type
  TFrm_CUTA8 = class(TForm)
    lbCustCompany01: TcxLabel;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    Panel8: TPanel;
    cxButton30: TcxButton;
    cxLabel93: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxLabel102: TcxLabel;
    chkCust06Type01: TcxCheckBox;
    Panel10: TPanel;
    cxRadioButton10: TcxRadioButton;
    cxRadioButton11: TcxRadioButton;
    cxRadioButton12: TcxRadioButton;
    cxLabel109: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel110: TcxLabel;
    cxLabel111: TcxLabel;
    cxLabel112: TcxLabel;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    cxLabel116: TcxLabel;
    cxLabel117: TcxLabel;
    cxLabel118: TcxLabel;
    Panel11: TPanel;
    cxRadioButton13: TcxRadioButton;
    cxRadioButton14: TcxRadioButton;
    cxRadioButton15: TcxRadioButton;
    cxLabel129: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel130: TcxLabel;
    cxLabel131: TcxLabel;
    cxLabel132: TcxLabel;
    cxLabel133: TcxLabel;
    cxLabel134: TcxLabel;
    cxLabel135: TcxLabel;
    cxLabel136: TcxLabel;
    cxLabel137: TcxLabel;
    cxLabel138: TcxLabel;
    Panel12: TPanel;
    cxRadioButton16: TcxRadioButton;
    cxRadioButton17: TcxRadioButton;
    cxRadioButton18: TcxRadioButton;
    cxLabel149: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel150: TcxLabel;
    cxLabel151: TcxLabel;
    cxLabel152: TcxLabel;
    cxLabel153: TcxLabel;
    cxLabel154: TcxLabel;
    cxLabel155: TcxLabel;
    cxLabel156: TcxLabel;
    cxLabel157: TcxLabel;
    cxLabel158: TcxLabel;
    Panel13: TPanel;
    cxRadioButton19: TcxRadioButton;
    cxRadioButton20: TcxRadioButton;
    cxRadioButton21: TcxRadioButton;
    cxLabel169: TcxLabel;
    cxTextEdit12: TcxTextEdit;
    cxLabel170: TcxLabel;
    cxLabel171: TcxLabel;
    cxLabel172: TcxLabel;
    cxLabel173: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel128: TcxLabel;
    cxLabel148: TcxLabel;
    cxLabel168: TcxLabel;
    cxTextEdit1: TcxCurrencyEdit;
    cxTextEdit2: TcxCurrencyEdit;
    cxTextEdit4: TcxCurrencyEdit;
    cxTextEdit5: TcxCurrencyEdit;
    cxTextEdit7: TcxCurrencyEdit;
    cxTextEdit8: TcxCurrencyEdit;
    cxTextEdit10: TcxCurrencyEdit;
    cxTextEdit11: TcxCurrencyEdit;
    chkBRNoMile: TcxCheckBox;
    chkCDNoMile: TcxCheckBox;
    chkLTNoMile: TcxCheckBox;
    cxLabel234: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxlbl4: TcxLabel;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxlbl3: TcxLabel;
    cxCheckBox7: TcxCheckBox;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxlbl5: TcxLabel;
    cxCheckBox8: TcxCheckBox;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxlbl6: TcxLabel;
    btnAll8: TcxButton;
    chkReceipNoMile: TcxCheckBox;
    cxLabel260: TcxLabel;
    CEMiOver1: TcxCurrencyEdit;
    cxLabel266: TcxLabel;
    CEMiOver2: TcxCurrencyEdit;
    cxLabel267: TcxLabel;
    CEMiOver3: TcxCurrencyEdit;
    cxLabel268: TcxLabel;
    CEMiOver4: TcxCurrencyEdit;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Panel1: TPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Panel2: TPanel;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Panel3: TPanel;
    Shape25: TShape;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Panel4: TPanel;
    Shape33: TShape;
    cxLabel10: TcxLabel;
    Shape34: TShape;
    Panel5: TPanel;
    rbPEventY: TcxRadioButton;
    rbPEventN: TcxRadioButton;
    Shape35: TShape;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    Shape36: TShape;
    Panel6: TPanel;
    rbUEventY: TcxRadioButton;
    rbUEventN: TcxRadioButton;
    Shape37: TShape;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    Shape38: TShape;
    Panel7: TPanel;
    rbBEventY: TcxRadioButton;
    rbBEventN: TcxRadioButton;
    Shape39: TShape;
    cxLabel15: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnAll8Click(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure cxRadioButton10Click(Sender: TObject);
    procedure cxRadioButton13Click(Sender: TObject);
    procedure cxRadioButton16Click(Sender: TObject);
    procedure cxRadioButton19Click(Sender: TObject);
    procedure chkBRNoMileClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownSleep : string;

    nFocus : integer;

    AIndex : Integer;

    procedure proc_init_mileage;
  public
    { Public declarations }
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    procedure proc_MileageSet;
    procedure proc_EventCnt_Init( iGuBun : Integer );
	end;

var
  Frm_CUTA8: TFrm_CUTA8;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash;


procedure TFrm_CUTA8.proc_init;
begin
  proc_BrNameSet;

  cxRadioButton10.Checked := True;
  cxRadioButton10Click(cxRadioButton10);
  rbPEventN.Checked := True;

  cxRadioButton13.Checked := True;
  cxRadioButton13Click(cxRadioButton13);
  rbUEventN.Checked := True;

  cxRadioButton16.Checked := True;
  cxRadioButton16Click(cxRadioButton16);
  rbBEventN.Checked := True;

  cxRadioButton19.Checked := True;
  cxRadioButton19Click(cxRadioButton19);
  Panel8.Enabled := False;
end;

procedure TFrm_CUTA8.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA8.FormCreate(Sender: TObject);
begin
	proc_init;
end;

procedure TFrm_CUTA8.FormDestroy(Sender: TObject);
begin
  Frm_CUTA8 := Nil;
end;

procedure TFrm_CUTA8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_CUTA8.proc_BrNameSet;
var
	sBrNo, sHdNo : string;
begin
  if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := '';
  end else
  begin
    sHdNo := GT_SEL_BRNO.HDNO;
    sBrNo := GT_SEL_BRNO.BrNo;
  end;

	lbCustCompany01.Caption := GetSosokInfo;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;
end;

procedure TFrm_CUTA8.btnAll8Click(Sender: TObject);
begin
  proc_MileageSet;
end;

procedure TFrm_CUTA8.proc_init_mileage;
begin
  cxRadioButton10.Checked := True;
  cxRadioButton10Click(cxRadioButton10);
  rbPEventN.Checked := True;

  cxRadioButton13.Checked := True;
  cxRadioButton13Click(cxRadioButton13);
  rbUEventN.Checked := True;

  cxRadioButton16.Checked := True;
  cxRadioButton16Click(cxRadioButton16);
  rbBEventN.Checked := True;

  cxRadioButton19.Checked := True;
  cxRadioButton19Click(cxRadioButton19);
  Panel8.Enabled := False;
end;

procedure TFrm_CUTA8.proc_MileageSet;
var
  msg, sBrNo, sBrName, Param : string;

  XmlData, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin
	try
    sBrNo := cxBrNo.Text;

    if sBrNo = '' then
    begin
			GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSI);
			proc_init_mileage;
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
      proc_init_mileage;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('마일리지설정') then Exit;

    Panel8.Enabled := True;

    Param := sBrNo;
    if not RequestBase(GetSel05('GET_BRANCH_MLG', 'MNG_CUST.GET_BRANCH_MLG', '100', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 설정 조회  중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    xdom := ComsDomDocument.Create;
    try
      xdom.loadXML(XmlData);
      lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
      if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text,0) > 0 then
      begin
        lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
        ls_Rcrd := TStringList.Create;

        try
          for I := 0 to lst_Result.length - 1 do
          begin
            GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

            if ls_Rcrd[0] = '0' then cxRadioButton10.Checked := True else
            if ls_Rcrd[0] = '1' then cxRadioButton11.Checked := True else
            if ls_Rcrd[0] = '2' then cxRadioButton12.Checked := True;

            cxTextEdit1.Value := StrToIntDef(ls_Rcrd[1], 0);
            cxTextEdit2.Value := StrToIntDef(ls_Rcrd[2], 0);
            cxTextEdit3.Text := ls_Rcrd[3];
            if ls_Rcrd[4] = '0' then cxRadioButton13.Checked := True else
	  				if ls_Rcrd[4] = '1' then cxRadioButton14.Checked := True else
	  				if ls_Rcrd[4] = '2' then cxRadioButton15.Checked := True;
		  			cxTextEdit4.Value := StrToIntDef(ls_Rcrd[5], 0);
            cxTextEdit5.Value := StrToIntDef(ls_Rcrd[6], 0);
            cxTextEdit6.Text := ls_Rcrd[7];
		  			if ls_Rcrd[8] = '0' then cxRadioButton16.Checked := True else
            if ls_Rcrd[8] = '1' then cxRadioButton17.Checked := True else
            if ls_Rcrd[8] = '2' then cxRadioButton18.Checked := True;
            cxTextEdit7.Value := StrToIntDef(ls_Rcrd[9], 0);
            cxTextEdit8.Value := StrToIntDef(ls_Rcrd[10], 0);
            cxTextEdit9.Text := ls_Rcrd[11];
            if ls_Rcrd[12] = '0' then cxRadioButton19.Checked := True else
            if ls_Rcrd[12] = '1' then cxRadioButton20.Checked := True else
            if ls_Rcrd[12] = '2' then	cxRadioButton21.Checked := True;
		  			cxTextEdit10.Value := StrToIntDef(ls_Rcrd[13], 0);
		  			cxTextEdit11.Value := StrToIntDef(ls_Rcrd[14], 0);
		  			cxTextEdit12.Text := ls_Rcrd[15];
		  			if ls_Rcrd[16] = 'y' then chkCDNoMile.Checked := False     //후불(카드)고객 마일리지 적립안함
                      		       else chkCDNoMile.Checked := True;
		  			if ls_Rcrd[17] = 'y' then chkLTNoMile.Checked := False     //후불고객 마일리지 적립안함
		  			                     else chkLTNoMile.Checked := True;
		  			if ls_Rcrd[18] = 'y' then chkReceipNoMile.Checked := False     //현금영수증고객 마일리지 적립안함
                             		 else chkReceipNoMile.Checked := True;

		  			if ls_Rcrd[19] = 'y' then cxCheckBox5.Checked := True
                                 else cxCheckBox5.Checked := False;
		  			cxCurrencyEdit1.Text := ls_Rcrd[20];

		  			if ls_Rcrd[21] = 'y' then cxCheckBox6.Checked := True
                                 else cxCheckBox6.Checked := False;
		  			cxCurrencyEdit2.Text := ls_Rcrd[22];

		  			if ls_Rcrd[23] = 'y' then cxCheckBox7.Checked := True
                                 else cxCheckBox7.Checked := False;
		  			cxCurrencyEdit3.Text := ls_Rcrd[24];

		  			if ls_Rcrd[25] = 'y' then cxCheckBox8.Checked := True
                                 else cxCheckBox8.Checked := False;
		  			cxCurrencyEdit4.Text := ls_Rcrd[26];

		  			CEMiOver1.Value := StrToIntDef(ls_Rcrd[27], 0);
		  			CEMiOver2.Value := StrToIntDef(ls_Rcrd[28], 0);
		  			CEMiOver3.Value := StrToIntDef(ls_Rcrd[29], 0);
		  			CEMiOver4.Value := StrToIntDef(ls_Rcrd[30], 0);

            if ls_Rcrd.Count > 31 then
            begin
  		  			if ls_Rcrd[31] = 'y' then rbPEventY.Checked := True
                                   else rbPEventY.Checked := False;
  		  			if ls_Rcrd[32] = 'y' then rbUEventY.Checked := True
                                   else rbUEventY.Checked := False;
  		  			if ls_Rcrd[33] = 'y' then rbBEventY.Checked := True
                                   else rbBEventY.Checked := False;
  		  			//   ls_Rcrd[34] = 'y'   불량고객 사용 않함
            end;
          end;
        finally
          ls_Rcrd.Free;
          Screen.Cursor := crDefault;
  	  		Frm_Flash.Hide;
        end;
      end;
    finally
      xdom := Nil;
    end;
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTA8.proc_EventCnt_Init( iGuBun : Integer );
var
  msg, sBrNo, sBrName, Param, sHdNo : string;

  XmlData, ErrMsg: string;
  xdom: msDomDocument;
  lst_Count, lst_Result: IXMLDomNodeList;
  ls_Rcrd: TStringList;
  I, ErrCode, iCnt, iRow : Integer;
begin
	try
    sHdNo := cxHdNo.Text;
    sBrNo := cxBrNo.Text;

    if ((Formatdatetime('hhmm', Now) >= '2100') or (Formatdatetime('hhmm', Now) <= '0200')) then
    begin
      GMessagebox('오후 9시부터 오전 2시에는 이벤트 초기화를 할수 없습니다.', CDMSI);
      Exit;
    end;

    if sBrNo = '' then
    begin
			GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSI);
			proc_init_mileage;
      Exit;
    end;

    if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(sBrNo)) then
    begin
      msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
          + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
      sBrName := GetBrName(sBrNo);
      GMessagebox(Format(msg, [sBrNo, sBrName]), CDMSI);
      proc_init_mileage;
      Exit;
    end;

    if fGetChk_Search_HdBrNo('마일리지설정') then Exit;

    if GMessagebox('이벤트 횟수가 전체 초기화 됩니다.' + #13#10 +
                   '초기화 하시겠습니까?', CDMSQ) <> idok then Exit;

    Param := sHdNo + '│' + sBrNo + '│' + IntToStr(iGubun);
    if not RequestBase(GetCallable05('SET_BRANCH_EVENT_INIT', 'MNG_CUST.SET_BRANCH_EVENT_INIT', Param), XmlData, ErrCode, ErrMsg) then
    begin
      GMessagebox(Format('마일리지 설정 이벤트 횟수 초기화 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
      Exit;
    end;

    GMessagebox('이벤트 횟수 초기화 완료 되었습니다.', CDMSI);
  except
    on e: exception do
    begin
      Assert(False, E.Message);
    end;
  end;
end;

procedure TFrm_CUTA8.chkBRNoMileClick(Sender: TObject);
begin
  if chkBRNoMile.Checked then
  begin
    chkBRNoMile.Tag := 1;

    cxTextEdit7.Value := 0;
    cxTextEdit8.Value := 0;
    cxTextEdit9.Text := '';
    cxLabel148.Caption := '원';
    cxRadioButton16.Checked := True;
  end;
end;

procedure TFrm_CUTA8.cxButton1Click(Sender: TObject);
begin
  proc_EventCnt_Init(TcxButton(Sender).Tag);
end;

procedure TFrm_CUTA8.cxButton30Click(Sender: TObject);
var
  sTemp, XmlData, Param, ErrMsg: string;
  i, ErrCode: integer;
	asParam: array[1..36] of string;
begin
  asParam[1] := cxBrNo.Text;

  if asParam[1] = '' then
  begin
    GMessagebox('마일리지 설정은 지사를 선택하셔야 합니다.', CDMSI);
    Exit; // [hjf]
  end;

  if cxRadioButton10.Checked then asParam[2] := '0' else
  if cxRadioButton11.Checked then asParam[2] := '1' else
  if cxRadioButton12.Checked then asParam[2] := '2';

  asParam[3] := StringReplace(cxTextEdit1.Text, ',', '', [rfReplaceAll]);
  asParam[4] := StringReplace(cxTextEdit2.Text, ',', '', [rfReplaceAll]);
  asParam[5] := cxTextEdit3.Text;

  if cxRadioButton13.Checked then asParam[6] := '0' else
  if cxRadioButton14.Checked then asParam[6] := '1' else
  if cxRadioButton15.Checked then asParam[6] := '2';

  asParam[7] := StringReplace(cxTextEdit4.Text, ',', '', [rfReplaceAll]);
  asParam[8] := StringReplace(cxTextEdit5.Text, ',', '', [rfReplaceAll]);
  asParam[9] := cxTextEdit6.Text;

  if cxRadioButton16.Checked then asParam[10] := '0' else
  if cxRadioButton17.Checked then asParam[10] := '1' else
  if cxRadioButton18.Checked then asParam[10] := '2';

  asParam[11] := StringReplace(cxTextEdit7.Text, ',', '', [rfReplaceAll]);
  asParam[12] := StringReplace(cxTextEdit8.Text, ',', '', [rfReplaceAll]);
  asParam[13] := cxTextEdit9.Text;

  if cxRadioButton19.Checked then asParam[14] := '0' else
  if cxRadioButton20.Checked then asParam[14] := '1' else
  if cxRadioButton21.Checked then asParam[14] := '2';

  asParam[15] := StringReplace(cxTextEdit10.Text, ',', '', [rfReplaceAll]);
  asParam[16] := StringReplace(cxTextEdit11.Text, ',', '', [rfReplaceAll]);
  asParam[17] := cxTextEdit12.Text;
  if chkCDNoMile.checked = True then asParam[18] := 'n'
                                else asParam[18] := 'y';

  if chkLTNoMile.checked = True then asParam[19] := 'n'
                                else asParam[19] := 'y';

  if cxCheckBox5.checked = True then asParam[20] := 'y'
                                else asParam[20] := 'n';
  asParam[21] := StringReplace(cxCurrencyEdit1.text, ',', '', [rfReplaceAll]);

  if cxCheckBox6.checked = True then asParam[22] := 'y'
                                else asParam[22] := 'n';
  asParam[23] := StringReplace(cxCurrencyEdit2.text, ',', '', [rfReplaceAll]);

  if cxCheckBox7.checked = True then asParam[24] := 'y'
                                else asParam[24] := 'n';
  asParam[25] := StringReplace(cxCurrencyEdit3.text, ',', '', [rfReplaceAll]);

	if cxCheckBox8.checked = True then asParam[26] := 'y'
                                else asParam[26] := 'n';
  asParam[27] := StringReplace(cxCurrencyEdit4.text, ',', '', [rfReplaceAll]);

	if chkReceipNoMile.checked = True then asParam[28] := 'n'
                                    else asParam[28] := 'y';

  asParam[29] := StringReplace(CEMiOver1.Text, ',', '', [rfReplaceAll]);
  asParam[30] := StringReplace(CEMiOver2.Text, ',', '', [rfReplaceAll]);
  asParam[31] := StringReplace(CEMiOver3.Text, ',', '', [rfReplaceAll]);
  asParam[32] := StringReplace(CEMiOver4.Text, ',', '', [rfReplaceAll]);

	if rbPEventY.checked then asParam[33] := 'y'
                       else asParam[33] := 'n';
	if rbUEventY.checked then asParam[34] := 'y'
                       else asParam[34] := 'n';
	if rbBEventY.checked then asParam[35] := 'y'
                       else asParam[35] := 'n';
  asParam[36] := 'n'; // 불량고객 사용 않함

	sTemp := '';
	for i := 1 to 36 do
  begin
    if i = 1 then sTemp := asParam[1]
    else
    begin
      sTemp := sTemp + '│' + asParam[i];
    end;
  end;

  if not RequestBase(GetCallable05('SET_BRANCH_MLG', 'MNG_CUST.SET_BRANCH_MLG', sTemp), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;
  GMessagebox('마일리지 설정이 완료 되었습니다.', CDMSI);
end;

procedure TFrm_CUTA8.cxRadioButton10Click(Sender: TObject);
begin
  cxTextEdit1.Value := 0;
  cxTextEdit2.Value := 0;
  cxTextEdit3.Text := '';
  if cxRadioButton12.Checked then
    cxLabel92.Caption := '%'
  else
    cxLabel92.Caption := '원';
end;

procedure TFrm_CUTA8.cxRadioButton13Click(Sender: TObject);
begin
  cxTextEdit4.Value := 0;
  cxTextEdit5.Value := 0;
  cxTextEdit6.Text := '';
  if cxRadioButton15.Checked then
    cxLabel128.Caption := '%'
  else
    cxLabel128.Caption := '원';
end;

procedure TFrm_CUTA8.cxRadioButton16Click(Sender: TObject);
begin
  cxTextEdit7.Value := 0;
  cxTextEdit8.Value := 0;
  cxTextEdit9.Text := '';
  if cxRadioButton18.Checked then
  begin
    cxLabel148.Caption := '%';
    chkBRNoMile.Checked := False;
  end else
  if cxRadioButton17.Checked then
  begin
    cxLabel148.Caption := '원';
    chkBRNoMile.Checked := False;
  end else
  if cxRadioButton16.Checked then
  begin
    cxLabel148.Caption := '원';
  end;
end;

procedure TFrm_CUTA8.cxRadioButton19Click(Sender: TObject);
begin
  cxTextEdit10.Value := 0;
  cxTextEdit11.Value := 0;
  cxTextEdit12.Text := '';
  if cxRadioButton21.Checked then
    cxLabel168.Caption := '%'
  else
    cxLabel168.Caption := '원';
end;

end.

unit xe_CUTA4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus, System.StrUtils,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, xe_structure, ShellAPI, System.Math,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, OleCtrls, SHDocVw, Registry,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, IniFiles, MSXML2_TLB, cxTL, ComObj,
  cxClasses, Vcl.ExtCtrls, cxMemo, cxGridLevel, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxMaskEdit,
  cxCalendar, cxButtons, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTA4 = class(TForm)
    lbCustCompany01: TcxLabel;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    pmCustMgr: TPopupMenu;
    mniN8: TMenuItem;
    mniN9: TMenuItem;
    mniN10: TMenuItem;
    pnl_Excel_OPT: TPanel;
    btnAll1: TcxButton;
    btnAll2: TcxButton;
    RdExcel1: TcxRadioButton;
    RdExcel2: TcxRadioButton;
    Pop_Ymd: TPopupMenu;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    Pop_Ymd1: TPopupMenu;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    Pop_Ymd2: TPopupMenu;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    cxLabel54: TcxLabel;
    Shape3: TShape;
    cxLabel1: TcxLabel;
    Shape4: TShape;
    cxLabel2: TcxLabel;
    Shape5: TShape;
    cxLabel3: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape7: TShape;
    Shape15: TShape;
    cxBrNo: TcxTextEdit;
    cxHdNo: TcxTextEdit;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Shape2: TShape;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    btnHighCustDel: TcxButton;
    chkCust04Type08: TcxCheckBox;
    chkDetailSubscribe: TcxCheckBox;
    chk2: TcxCheckBox;
    cxLabel4: TcxLabel;
    Shape9: TShape;
    cbSmsUse04: TcxComboBox;
    cbGubun04: TcxComboBox;
    cbLevel03: TcxComboBox;
    cbKeynumber04: TcxComboBox;
    edtCuEmail: TcxTextEdit;
    rbCust04Type01: TcxRadioButton;
    rbCust04Type02: TcxRadioButton;
    chkCust04Type06: TcxCheckBox;
    chkNmlPhoneOut04: TcxCheckBox;
    lbCount04: TcxLabel;
    Shape6: TShape;
    Shape8: TShape;
    chkCust04Type01: TcxCheckBox;
    cxDate09: TcxDateEdit;
    cxLabel82: TcxLabel;
    cxDate10: TcxDateEdit;
    chkCust04Type03: TcxCheckBox;
    cbArea03: TcxComboBox;
    cbArea04: TcxComboBox;
    cbBCustList2: TcxComboBox;
    chkCust04Type07: TcxCheckBox;
    cxButton50: TcxButton;
    cxButton54: TcxButton;
    chkCust04Type02: TcxCheckBox;
    cxDate11: TcxDateEdit;
    cxDate12: TcxDateEdit;
    btnAll3: TcxButton;
    cxlbl1: TcxLabel;
    chkCust04Type09: TcxCheckBox;
    cxDate24: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxDate25: TcxDateEdit;
    btnAll4: TcxButton;
    Shape10: TShape;
    chkCust04Type04: TcxCheckBox;
    chkCust04Type05: TcxCheckBox;
    edCust04Type01: TcxTextEdit;
    cxLabel85: TcxLabel;
    edCust04Type02: TcxTextEdit;
    edCust04Type03: TcxTextEdit;
    cxLabel86: TcxLabel;
    edCust04Type04: TcxTextEdit;
    cxLabel84: TcxLabel;
    cbCustLastNumber2: TcxComboBox;
    cxButton62: TcxButton;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    cxGrid4: TcxGrid;
    CustView4: TcxGridDBTableView;
    CustView4Column1: TcxGridDBColumn;
    CustView4Column2: TcxGridDBColumn;
    CustView4Column3: TcxGridDBColumn;
    CustView4Column4: TcxGridDBColumn;
    CustView4Column5: TcxGridDBColumn;
    CustView4Column6: TcxGridDBColumn;
    CustView4Column7: TcxGridDBColumn;
    CustView4Column8: TcxGridDBColumn;
    CustView4Column9: TcxGridDBColumn;
    CustView4Column10: TcxGridDBColumn;
    CustView4Column11: TcxGridDBColumn;
    CustView4Column12: TcxGridDBColumn;
    CustView4Column13: TcxGridDBColumn;
    CustView4Column14: TcxGridDBColumn;
    CustView4Column15: TcxGridDBColumn;
    CustView4Column16: TcxGridDBColumn;
    CustView4Column17: TcxGridDBColumn;
    CustView4Column18: TcxGridDBColumn;
    CustView4Column19: TcxGridDBColumn;
    CustView4Column20: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cbBCustList2Cd: TcxComboBox;
    pmDetail: TPopupMenu;
    mniDetailCustLevel: TMenuItem;
    MenuItem19: TMenuItem;
    CustView4Column21: TcxGridDBColumn;
    Shape11: TShape;
    cxLabel5: TcxLabel;
    cbOutBound: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuItem6Click(Sender: TObject);
    procedure cbLevel01MouseEnter(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure cxButton70Click(Sender: TObject);
    procedure cxButton71Click(Sender: TObject);
    procedure cxButton74Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure MenuItem35Click(Sender: TObject);
    procedure MenuItem36Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem38Click(Sender: TObject);
    procedure MenuItem39Click(Sender: TObject);
    procedure MenuItem40Click(Sender: TObject);
    procedure MenuItem41Click(Sender: TObject);
    procedure MenuItem42Click(Sender: TObject);
    procedure MenuItem43Click(Sender: TObject);
    procedure MenuItem44Click(Sender: TObject);
    procedure MenuItem45Click(Sender: TObject);
    procedure MenuItem46Click(Sender: TObject);
    procedure MenuItem47Click(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cbKeynumber03PropertiesChange(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure btnHighCustDelClick(Sender: TObject);
    procedure cbGubun04Click(Sender: TObject);
    procedure chkCust04Type07Click(Sender: TObject);
    procedure chkCust04Type03Click(Sender: TObject);
    procedure chkCust04Type09Click(Sender: TObject);
    procedure chkCust04Type02Click(Sender: TObject);
    procedure chkCust04Type01Click(Sender: TObject);
    procedure chkCust04Type04Click(Sender: TObject);
    procedure chkCust04Type05Click(Sender: TObject);
    procedure cxButton50Click(Sender: TObject);
    procedure cbArea03PropertiesChange(Sender: TObject);
    procedure CustView4DataControllerSortingChanged(Sender: TObject);
    procedure CustView4ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton54MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAll3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAll4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mniDetailCustLevelClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton62Click(Sender: TObject);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    SCboLevelSeq : TStringList;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownDetail : string;
    FDetailKeyNum: string;

    AIndex : Integer;

    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure RequestData(AData: string);
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
    procedure proc_DetailSearch;
    procedure proc_bubin_init;
    procedure OnRefreshDetailCust(Sender: TObject);
    procedure ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
  public
    { Public declarations }

    CutSeqList : TStringList;
    iAddCnt : integer;
		Click_chk : integer;
		iFlag : integer;
    // 좌측 메뉴 지사선택
    lb_st_customer, lbNoSms: TStringList;
    procedure proc_init;    
    procedure proc_KeyNumber_insert;
    procedure proc_BrNameSet;
    procedure proc_Branch_Change;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
	end;

var
  Frm_CUTA4: TFrm_CUTA4;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT03, xe_Flash, xe_SMSA1;


procedure TFrm_CUTA4.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;

  cxDate09.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate10.Date := cxDate09.Date + 1;

  cxDate11.Date := cxDate09.Date;
  cxDate12.Date := cxDate10.Date;

	cxDate24.Date := cxDate09.Date;
  cxDate25.Date := cxDate10.Date;

  cbGubun04.ItemIndex := 0;
  cbLevel03.ItemIndex := 0;
  chkCust04Type06.Checked := False;
  lbCount04.Caption := '총 00명';
  chkCust04Type01.Checked := False;
  chkCust04Type01Click(chkCust04Type01);
  chkCust04Type02.Checked := False;
  chkCust04Type02Click(chkCust04Type02);
  chkCust04Type03.Checked := False;
  chkCust04Type03Click(chkCust04Type03);
  chkCust04Type07.Checked := False;
  chkCust04Type07Click(chkCust04Type07);

  chkCust04Type04.Checked := False;
  chkCust04Type04Click(chkCust04Type04);
  chkCust04Type05.Checked := False;
  chkCust04Type05Click(chkCust04Type05);

  cbCustLastNumber2.ItemIndex := 0;
  edCust04Type01.Text := '';
  edCust04Type02.Text := '';
  edCust04Type03.Text := '';
  edCust04Type04.Text := '';
  chkCust04Type08.Checked := False;

  cbArea03.Properties.Items.Clear;
  cbArea03.Properties.Items.Assign(slstLocalMapOrder);
  cbArea03.Properties.Items.Insert(0, '전체');
  cbArea03.ItemIndex := 0;

  CustView4.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView4.ColumnCount - 1 do
    CustView4.Columns[i].DataBinding.ValueType := 'String';
  CustView4.Columns[18].DataBinding.valuetype := 'Currency';
end;

procedure TFrm_CUTA4.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA4.proc_KeyNumber_insert;
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
      end else
      if GT_SEL_BRNO.GUBUN = '1' then
      begin
        sCaption := '[' + GT_SEL_BRNO.HDNO + '] - [' + GT_SEL_BRNO.BrNo + ']' + GT_SEL_BRNO.BrName;
        cxHdNo.Text := GT_SEL_BRNO.HDNO;
        cxBrNo.Text := GT_SEL_BRNO.BrNo;
      end;
    end else
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

procedure TFrm_CUTA4.proc_recieve(slList: TStringList);
var
  xdom: msDomDocument;
  ls_ClientKey, ClientKey, ls_Msg_Err, sMsg, sEndDate, sTemp, sBrNo, sPerMMCode, sTmep, sRate, sSmsYn, sTel, sNoSms: string;
  lst_Result: IXMLDomNodeList;
  ls_Rcrd, sList: TStringList;
  icomCnt, iCanCnt, iTotal, iCanRate, i, j, k, iHp, iRegDate, iSNum, iTel, iRow, iIndate, iBrNo, iId, iIdx, iCnt : Integer;
  ARecords, AValues: TStringList;
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
          7:
            begin
              CustView4.BeginUpdate;

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

                      if chkNmlPhoneOut04.Checked then
                      begin
                        if not CheckHPType(ls_rcrd[4], ErrDesc) then Continue;
                      end;

                      sEndDate := ls_rcrd[13];

                      if ls_rcrd[4] = '' then Continue;

                      iRow := CustView4.DataController.AppendRecord;
                      CustView4.DataController.Values[iRow, 0] := iRow + 1;
                      CustView4.DataController.Values[iRow, 1] := ls_rcrd[0];
                      CustView4.DataController.Values[iRow, 2] := ls_rcrd[1];
                      CustView4.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
                      CustView4.DataController.Values[iRow, 4] := ls_rcrd[3];
                      CustView4.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
                      CustView4.DataController.Values[iRow, 6] := ls_rcrd[5];
                      CustView4.DataController.Values[iRow, 7] := ls_rcrd[6];
                      CustView4.DataController.Values[iRow, 8] := ls_rcrd[7];
                      CustView4.DataController.Values[iRow, 9] := ls_rcrd[8] + '%';
                      CustView4.DataController.Values[iRow, 10] := ls_rcrd[9];
                      CustView4.DataController.Values[iRow, 11] := ls_rcrd[10];
                      CustView4.DataController.Values[iRow, 12] := ls_rcrd[11];
                      CustView4.DataController.Values[iRow, 13] := ls_rcrd[12];
											if Trim(sEndDate) <> '' then
                        CustView4.DataController.Values[iRow, 14] := Copy(sEndDate, 1, 4) + '-' +
                                                                     Copy(sEndDate, 5, 2) + '-' +
                                                                     Copy(sEndDate, 7, 2)
                      else
                        CustView4.DataController.Values[iRow, 14] := '';
                      CustView4.DataController.Values[iRow, 15] := ls_rcrd[14];
                      CustView4.DataController.Values[iRow, 16] := ls_rcrd[15];
                      CustView4.DataController.Values[iRow, 17] := ls_rcrd[16];
                      CustView4.DataController.Values[iRow, 18] := ls_rcrd[17];
											CustView4.DataController.Values[iRow, 19] := ls_rcrd[18];
                      if ls_rcrd.Count > 19 then
                        CustView4.DataController.Values[iRow, 20] := ls_rcrd[19];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView4.EndUpdate;
              lbCount04.Caption := '총 ' + IntToStr(CustView4.DataController.RecordCount) + '명';
              frm_Main.sbar_Message.Panels[4].Text := '';
              Screen.Cursor := crDefault;
            end;
        end;
      end  else
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
  Screen.Cursor := crDefault;
end;

procedure TFrm_CUTA4.FormCreate(Sender: TObject);
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
  lb_st_customer := TStringList.Create;
  lbNoSms := TStringList.Create;
  SCboLevelSeq := TStringList.Create;

	proc_init;

  UsrNameReg := TRegistry.Create;
  UsrNameReg.RootKey := HKEY_CURRENT_USER;
  UsrNameReg.OpenKey('Software\Microsoft\Internet Explorer\PageSetup', True);

  if UsrNameReg.KeyExists('footer') then
  begin
    sFooter := UsrNameReg.ReadString('footer');
    UsrNameReg.WriteString('footer', '');
  end else
  begin
    UsrNameReg.CreateKey('footer');
    UsrNameReg.WriteString('footer', '');
    sFooter := '&u&b&d';
  end;
  if UsrNameReg.KeyExists('header') then
  begin
    sHeader := UsrNameReg.ReadString('header');
    UsrNameReg.WriteString('header', '');
  end else
  begin
    UsrNameReg.CreateKey('header');
    UsrNameReg.WriteString('header', '');
    sHeader := '&w&bPage &p of &P';
  end;
end;

procedure TFrm_CUTA4.FormDestroy(Sender: TObject);
begin
  Frm_CUTA4 := Nil;
end;

procedure TFrm_CUTA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  FreeAndNil(SCboLevelSeq);
  Action := caFree;
end;

procedure TFrm_CUTA4.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber04.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber04.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber04.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
	lbCustCompany01.Caption := sName;

  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  if cbKeynumber04.Properties.Items.Count >= 1 then
    cbKeynumber04.Properties.Items.Insert(0, '전체');

  cbKeynumber04.ItemIndex := 0;
  cbKeynumber04.Tag := 0;
end;

procedure TFrm_CUTA4.ChageCustLevel(AKeyNumber: string; ACombo: TcxComboBox);
var
  I : Integer;
  CustGroup: TCustGroup;
begin
  ACombo.Properties.Items.Clear;
  SCboLevelSeq.Clear;

  ACombo.Properties.Items.Add('전체');
  SCboLevelSeq.Add('');

  if AKeyNumber = '전체' then
  begin
    for I := 0 to Length(scb_CustGroupInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [scb_CustGroupInfo[i].GroupName, scb_CustGroupInfo[i].LevelName]));
      SCboLevelSeq.Add(scb_CustGroupInfo[I].LevelSeq);
    end;
  end
  else
  begin
    GetCustGroup(AKeyNumber, CustGroup);

    for i := 0 to Length(CustGroup.LevelInfo) - 1 do
    begin
      ACombo.Properties.Items.Add(Format('%s - %s', [CustGroup.GroupName, CustGroup.LevelInfo[i].LevelName]));
      SCboLevelSeq.Add(CustGroup.LevelInfo[i].LevelSeq);
    end;
  end;

  ACombo.ItemIndex := 0;
end;

procedure TFrm_CUTA4.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA4.CustView4ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA4.CustView4DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView4, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA4.CustView4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and ((Key = Ord('c')) or (Key = Ord('C'))) then
  begin
    ShowMessage('고객 정보를 복사 할 수 없습니다.');
    Key := 0;
  end;

  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView4.OptionsSelection.CellMultiSelect := False;
    CustView4.OptionsSelection.CellSelect := False;
    CustView4.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA4.CustView4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView4.OptionsSelection.CellMultiSelect := True;
    CustView4.OptionsSelection.CellSelect := True;
    CustView4.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA4.MenuItem6Click(Sender: TObject);
begin
	cxButton16Click(nil);
end;

procedure TFrm_CUTA4.mniDetailCustLevelClick(Sender: TObject);
var
  I: Integer;
  iSeq: Integer;
begin
  if FDetailKeyNum = '' then
  begin
    GMessageBox('고객등급 변경은 대표번호 선택하여 검색된 내역으로 시도바랍니다.', CDMSI);
		cbKeynumber04.SetFocus;
    Exit;
	end;

  if CustView4.DataController.GetSelectedCount = 0 then
  begin
    GMessageBox('고객을 선택해 주세요.', CDMSI);
    Exit;
  end;

  if ( not Assigned(Frm_CUT03) ) Or ( Frm_CUT03 = Nil ) then Frm_CUT03 := TFrm_CUT03.Create(Self);

  Frm_CUT03.OnRefreshEvent := OnRefreshDetailCust;
  Frm_CUT03.SetData(GetBrNoFromKeyNum(FDetailKeyNum), FDetailKeyNum);

  iSeq := CustView4.GetColumnByFieldName('SEQ').Index;
  for I := 0 to CustView4.DataController.RecordCount - 1 do
  begin
    if not CustView4.ViewData.Rows[I].Selected then Continue;

    Frm_CUT03.AddCustSeq(CustView4.ViewData.Rows[I].Values[iSeq]);
  end;

  Frm_CUT03.DispData;
  Frm_CUT03.Show;
end;

procedure TFrm_CUTA4.OnRefreshDetailCust(Sender: TObject);
begin
  cxButton15.Click;
end;

{-------------------------------------------------------------------------------
  Arguments: sGrid: 대상그리드; ASubscribe: 수신허용(True: 수신허용)
-------------------------------------------------------------------------------}
procedure TFrm_CUTA4.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
var
  i, iBrNo, iCustTel, iCustName, iKeyNum, iCnt, RowIdx, iRow, KeyRow, ikey_cnt, iMile, iSmsYn: Integer;
  sCustTel, sSmsYn: string;
begin
  GS_CUTSMS := True;
  iBrNo     := sGrid.GetColumnByFieldName('지사코드').Index;
  iCustTel  := sGrid.GetColumnByFieldName('고객번호').Index;
  iCustName := sGrid.GetColumnByFieldName('고객명').Index;
  iKeyNum   := sGrid.GetColumnByFieldName('대표번호').Index;
  iMile     := sGrid.GetColumnByFieldName('마일리지').Index;
  iSmsYn    := sGrid.GetColumnByFieldName('SMS수신거부').Index;

  iCnt := 0;
  Frm_Main.procMenuCreateActive(1001, 'SMS발송');

  Frm_SMSA1.chkBalsin.Enabled := True;
  Frm_SMSA1.cxViewSms.DataController.SetRecordCount(0);
  Frm_SMSA1.cxViewKeyNum.DataController.SetRecordCount(0);
  Frm_SMSA1.cxViewSms.BeginUpdate;
  Frm_SMSA1.cxViewKeyNum.BeginUpdate;

  for I := 0 to sGrid.DataController.RecordCount - 1 do
  begin
    sCustTel := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
    if ASubscribe and (iSmsYn <> -1) then
      sSmsYn := sGrid.ViewData.Records[I].Values[iSmsYn]
    else
      sSmsYn := 'y';

    if (sGrid.ViewData.Records[i].Selected) and (Copy(sCustTel, 1, 2) = '01')
      and (Length(sCustTel) in [10, 11]) and ((sSmsYn = 'y') or (sSmsYn = '수신')) then
    begin
      // 전송내역 구성
      RowIdx := Frm_SMSA1.cxViewSms.DataController.AppendRecord;
      // 0, 지사코드
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 0] := sGrid.ViewData.Records[I].Values[iBrNo];
      // 1, 대표번호
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1] := StringReplace(sGrid.ViewData.Records[I].Values[iKeyNum], '-', '', [rfreplaceAll]);
      // 2, 고객번호
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 2] := StringReplace(sGrid.ViewData.Records[I].Values[iCustTel], '-', '', [rfreplaceAll]);
      // 3, 고객명
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 3] := sGrid.ViewData.Records[I].Values[iCustName];
      // 4, 마일리지
      Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 6] := sGrid.ViewData.Records[I].Values[iMile];
      Inc(icnt);

      // 대표전화별 전송수 카운팅
      iRow := Frm_SMSA1.cxViewKeyNum.DataController.FindRecordIndexByText(0, 1,
        Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1], True, True, True);

      if iRow = -1 then
      begin
        KeyRow := Frm_SMSA1.cxViewKeyNum.DataController.AppendRecord;
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 0] := Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 0];
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 1] := Frm_SMSA1.cxViewSms.DataController.Values[RowIdx, 1];
        Frm_SMSA1.cxViewKeyNum.DataController.Values[KeyRow, 2] := 1;
      end else
      begin
        ikey_cnt := Integer(Frm_SMSA1.cxViewKeyNum.DataController.Values[iRow, 2]);
        Inc(ikey_cnt);
        Frm_SMSA1.cxViewKeyNum.DataController.SetValue(iRow, 2, ikey_cnt);
      end;
    end;
  end;

  Frm_SMSA1.cxViewSms.EndUpdate;
  Frm_SMSA1.cxViewKeyNum.EndUpdate;
  Frm_SMSA1.cxViewSms.Columns[1].SortOrder := soAscending;
  Frm_SMSA1.mmoAfter.Text := IntToStr(iCnt);
  // 외부에서 호출함수
  Frm_SMSA1.proc_branch_sms;
  Frm_SMSA1.Show;
  Frm_SMSA1.cxBtnHelp.Click;
end;

procedure TFrm_CUTA4.cxButton15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if not chkCust04Type08.Checked then
    CustView4.DataController.SetRecordCount(0);
  proc_DetailSearch;
end;

procedure TFrm_CUTA4.cxButton16Click(Sender: TObject);
begin
  if CustView4.DataController.RecordCount = 0 then
  begin
    GMessagebox('자료가 없습니다.', CDMSI);
    Exit;
  end;

	if GT_USERIF.Excel_Use = 'n' then
	begin
		ShowMessage('[엑셀다운로드허용] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
	end;

	if (TCK_USER_PER.COM_CustExcelDown <> '1') then
	begin
    ShowMessage('[조회고객엑셀다운] 권한이 없습니다. 관리자에게 문의(권한요청) 바랍니다.');
		Exit;
  end;

	pnl_Excel_OPT.Left := (Width - pnl_Excel_OPT.Width) div 2;
	pnl_Excel_OPT.top := (Height - pnl_Excel_OPT.Height) div 2;
	pnl_Excel_OPT.Visible := True;
	pnl_Excel_OPT.BringToFront;
end;

procedure TFrm_CUTA4.cxButton17Click(Sender: TObject);
begin
  proc_SND_SMS(CustView4, chkDetailSubscribe.Checked);
end;

procedure TFrm_CUTA4.proc_DetailSearch;
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode: string;
  ls_rxxml: WideString;
  xdom: msDomDocument;
  lst_Node: IXMLDOMNodeList;
  lst_clon: IXMLDOMNode;
  slReceive: TStringList;
  ErrCode: integer;
  sms_use1, sms_use2: string;
  sExcelAdd: string;
begin
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

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('상세검색') then Exit;

  if not chkCust04Type08.Checked then
  begin
    if CustView4.DataController.RecordCount > 0 then
      exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>상세검색]2000건/콜센터(통합)/대표번호:16886618/최종이용기간:XX~XX/신규등록기간:XX~XX/완료:0~10/취소:0~20/SMS수신
  sExcelAdd := '';
  if chkCust04Type01.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type01.Caption + ':' + cxDate09.Text + '~' + cxDate10.Text + '/';
  if chkCust04Type02.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type02.Caption + ':' + cxDate11.Text + '~' + cxDate12.Text + '/';

  if chkCust04Type09.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type09.Caption + ':' + cxDate24.Text + '~' + cxDate25.Text + '/';

  if chkCust04Type04.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type04.Caption + ':' + edCust04Type01.Text + '~' + edCust04Type02.Text + '/';
  if chkCust04Type05.Checked then
    sExcelAdd := sExcelAdd + chkCust04Type05.Caption + ':' + edCust04Type03.Text + '~' + edCust04Type04.Text + '/';
  FExcelDownDetail := Format('%s/대표번호:%s/%s%s',
    [
        GetSelBrInfo
      , cbKeynumber04.Text
      , sExcelAdd
      , cbSmsUse04.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;
    sWhere := '';

    if cbCustLastNumber2.ItemIndex = 0 then
    begin
      sTel1 := '0000';
      sTel2 := '9999';
    end
    else if (cbCustLastNumber2.ItemIndex > 0) then
    begin
      sTemp := cbCustLastNumber2.Text;
      sTel1 := Copy(sTemp, 1, 4);
      sTel2 := Copy(sTemp, 6, 4);
      sWhere := sWhere + ' AND EXISTS (SELECT * FROM CDMS_CUSTOMER_TEL WHERE CU_SEQ = C.CU_SEQ AND SUBSTR(CU_TEL, LENGTH(CU_TEL)-3) BETWEEN '''
       + sTel1 + ''' AND ''' + sTel2 + ''') '
    end;

    if cxBrNo.Text <> '' then
      sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo.Text + ''' ';

    FDetailKeyNum := '';
    if (cbKeynumber04.Text <> '전체') and (cbKeynumber04.Text <> '') then
    begin
      sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber04.Text, '-', '', [rfReplaceAll]) + ''' ';
      FDetailKeyNum := StringReplace(cbKeynumber04.Text, '-', '', [rfReplaceAll]);
    end;

    case cbGubun04.ItemIndex of
      1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
      2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
      3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
    end;
    // [hjf]
    case cbSmsUse04.ItemIndex of
    1:
      begin
        sms_use1 := 'y';
        sms_use2 := '0';
      end;
    2:
      begin
        sms_use1 := '0';
        sms_use2 := 'n';
      end;
    else
      begin
        sms_use1 := 'y';
        sms_use2 := 'n';
      end;
    end;

    if cbLevel03.ItemIndex > 0 then
      sWhere := sWhere + ' AND C.CU_LEVEL_CD = ''' + SCboLevelSeq[cbLevel03.itemindex] + ''' ';

 	  if cbOutBound.ItemIndex > 0 then
   	  sWhere := sWhere + ' AND C.CU_OUTBOUND = ''' + IntToStr(cbOutBound.ItemIndex) + ''' ';


    if chkCust04Type06.Checked then
      sWhere := sWhere + ' AND C.CU_TYPE != ''3'' ';
    if (chkCust04Type07.Checked) and (cbBCustList2.Enabled) and (cbBCustList2.ItemIndex > 0) then
    begin
      sCbcode := cbBCustList2Cd.Properties.Items[cbBCustList2.ItemIndex];
      sCbcode := Copy(sCbcode, 1, Pos(',', sCbcode) - 1);
      sWhere := sWhere + ' AND C.CB_CODE = ''' + sCbcode + ''' ';
    end;

    if chkCust04Type01.Checked then
    begin
      if cxDate09.Enabled then
      begin
        if (cxDate09.Text <> '') and (cxDate10.Text <> '') then
          sWhere := sWhere + Format(' AND C.CU_LAST_END BETWEEN ''%s'' AND ''%s'' ' , [formatdatetime('yyyymmdd', cxDate09.Date),
            Formatdatetime('yyyymmdd', cxDate10.Date)])
        else
          if (cxDate09.Text <> '') and (cxDate10.Text = '') then
          sWhere := sWhere + Format(' AND C.CU_LAST_END >= ''%s'' ', [formatdatetime('yyyymmdd', cxDate09.Date)])
        else
          if (cxDate09.Text = '') and (cxDate10.Text <> '') then
          sWhere := sWhere + Format(' AND ''%s'' >= C.CU_LAST_END ', [formatdatetime('yyyymmdd', cxDate10.Date)]);
      end;
    end;

    if chkCust04Type02.Checked then
    begin
      if cxDate11.Enabled then
      begin
        if (cxDate11.Text <> '') and (cxDate12.Text <> '') then
          sWhere := sWhere + Format(' AND C.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
            , [Formatdatetime('yyyymmdd', cxDate11.Date), Formatdatetime('yyyymmdd', cxDate12.Date)])
        else
          if (cxDate11.Text <> '') and (cxDate12.Text = '') then
          sWhere := sWhere +
            format(' AND C.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') ', [formatdatetime('yyyymmdd', cxDate11.Date)])
        else
          if (cxDate11.Text = '') and (cxDate12.Text <> '') then
          sWhere := sWhere +
            format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= C.IN_DATE ', [formatdatetime('yyyymmdd', cxDate12.Date)]);
      end;
    end;

    if chkCust04Type03.Checked then
    begin
      if rbCust04Type01.Checked then
      begin
        if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex > 0) then
          sWhere := sWhere + Format(' AND C.CU_AREA = ''%s'' AND C.CU_AREA2 = ''%s'' ', [cbArea03.Text, cbArea04.Text])
        else
          if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex < 1) then
          sWhere := sWhere + Format(' AND C.CU_AREA = ''%s'' ', [cbArea03.Text]);
      end
      else if rbCust04Type02.Checked then
      begin
        if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex > 0) then
          sWhere := sWhere + Format(' AND C.CU_EDAREA = ''%s'' AND C.CU_EDAREA2 = ''%s'' ', [cbArea03.Text, cbArea04.Text])
        else if (cbArea03.Text <> '지역전체') and (cbArea04.ItemIndex < 1) then
          sWhere := sWhere + Format(' AND C.CU_EDAREA = ''%s'' ', [cbArea03.Text]);
      end;
    end;

    if chkCust04Type09.Checked then
    begin
      if chkCust04Type04.Checked then
      begin
        if (StrToIntDef(edCust04Type01.Text, -1) > -1) and (StrToIntDef(edCust04Type02.Text, -1) > -1) then
          sWhere := sWhere + ' AND A01.CU_ENDCNT BETWEEN ''' + edCust04Type01.Text + ''' AND ''' + edCust04Type02.Text + ''' '
        else if (StrToIntDef(edCust04Type01.Text, -1) > -1) and (StrToIntDef(edCust04Type02.Text, -1) = -1) then
          sWhere := sWhere + ' AND A01.CU_ENDCNT >= ''' + edCust04Type01.Text + ''' '
        else if (StrToIntDef(edCust04Type01.Text, -1) = -1) and (StrToIntDef(edCust04Type02.Text, -1) > -1) then
          sWhere := sWhere + ' AND ''' + edCust04Type02.Text + ''' >= A01.CU_ENDCNT ';
      end;
      if chkCust04Type05.Checked then
      begin
        if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
          sWhere := sWhere + ' AND A01.CU_CANCELCNT BETWEEN ''' + edCust04Type03.Text + ''' AND ''' + edCust04Type04.Text + ''' '
        else if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) = -1) then
          sWhere := sWhere + ' AND A01.CU_CANCELCNT >= ''' + edCust04Type03.Text + ''' '
        else if (StrToIntDef(edCust04Type03.Text, -1) = -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
          sWhere := sWhere + ' AND ''' + edCust04Type04.Text + ''' >= A01.CU_CANCELCNT ';
      end;
    end;

    if (chkCust04Type04.Checked) and (not chkCust04Type09.Checked) then
    begin
      if (StrToIntDef(edCust04Type01.Text, -1) > -1) and
        (StrToIntDef(edCust04Type02.Text, -1) > -1) then
        sWhere := sWhere + ' AND C.CU_ENDCNT BETWEEN ''' + edCust04Type01.Text + ''' AND ''' + edCust04Type02.Text + ''' '
      else if (StrToIntDef(edCust04Type01.Text, -1) > -1) and
        (StrToIntDef(edCust04Type02.Text, -1) = -1) then
        sWhere := sWhere + ' AND C.CU_ENDCNT >= ''' + edCust04Type01.Text + ''' '
      else if (StrToIntDef(edCust04Type01.Text, -1) = -1) and
        (StrToIntDef(edCust04Type02.Text, -1) > -1) then
        sWhere := sWhere + ' AND ''' + edCust04Type02.Text + ''' >= C.CU_ENDCNT ';
    end;

    if (chkCust04Type05.Checked) and (not chkCust04Type09.Checked) then
    begin
      if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
        sWhere := sWhere + ' AND C.CU_CANCELCNT BETWEEN ''' + edCust04Type03.Text + ''' AND ''' + edCust04Type04.Text + ''' '
      else if (StrToIntDef(edCust04Type03.Text, -1) > -1) and (StrToIntDef(edCust04Type04.Text, -1) = -1) then
        sWhere := sWhere + ' AND C.CU_CANCELCNT >= ''' + edCust04Type03.Text + ''' '
      else if (StrToIntDef(edCust04Type03.Text, -1) = -1) and (StrToIntDef(edCust04Type04.Text, -1) > -1) then
        sWhere := sWhere + ' AND ''' + edCust04Type04.Text + ''' >= C.CU_CANCELCNT ';
    end;

	  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
	  if edtCuEmail.Text <> '' then sWhere := sWhere + 'AND C.CU_EMAIL Like ''%' + Param_Filtering(edtCuEmail.Text) + '%'' ';
	  sWhere := sWhere + ')';
    if chkCust04Type09.Checked then
      ls_TxLoad := GetSel04(self.Caption + '7', 'CUSTOMER25', '', sWhere, [sTel1, sTel2, sms_use1, sms_use2, cxHdNo.Text, formatdatetime('yyyymmdd', cxDate24.Date), formatdatetime('yyyymmdd', cxDate25.Date), cxHdNo.Text])
    else
      ls_TxLoad := GetSel04(self.Caption + '7', 'CUSTOMER21', '', sWhere, [sTel1, sTel2, sms_use1, sms_use2, cxHdNo.Text]);
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

procedure TFrm_CUTA4.cxButton50Click(Sender: TObject);
begin
  proc_bubin_init;
end;

procedure TFrm_CUTA4.cxButton54MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.cxButton62Click(Sender: TObject);
begin
  mniDetailCustLevel.Click;
end;

procedure TFrm_CUTA4.proc_bubin_init;
var
  i: Integer;
  sBrNo, sKeyNum: string;
begin
    if ( cbGubun04.ItemIndex = 3 ) Or ( chkCust04Type07.Checked ) then
    begin
      sBrNo := cxBrNo.Text;
      sKeyNum := cbKeynumber04.Text;
      cbBCustList2.Properties.Items.Clear;
      cbBCustList2Cd.Properties.Items.Clear;
      cbBCustList2.Properties.Items.Add('선택');
      cbBCustList2Cd.Properties.Items.Add('');
      if (sBrNo = '') or (sKeyNum = '전체') then
        Exit
      else
      begin
        for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
        begin
          if GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
            Rpad(StringReplace(sKeyNum, '-', '', [rfReplaceAll]), 15, ' ') then
          begin
            cbBCustList2.Properties.Items.Add(Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]),  1, 60)) + ' / ' +
                                              Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 61, 60)));
            cbBCustList2Cd.Properties.Items.Add(GT_BUBIN_INFO.cbcode.Strings[i]);
          end;
        end;
      end;
      cbBCustList2.ItemIndex := 0;
    end;
end;

procedure TFrm_CUTA4.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
  AKeyIndex: Integer; AKeyValue: string);
var
  I, J, 
  Row: Integer;
  KeyData: string;
begin
  if AKeyIndex < 0 then
    Exit;

  if Trim(AKeyValue) = '' then
    Exit;

  for I := 0 to ASource.DataController.RecordCount - 1 do
  begin
    KeyData := ASource.DataController.GetValue(I, AKeyIndex);
    if Pos(AKeyValue, KeyData) > 0 then
    begin
      Row := ATarget.DataController.AppendRecord;

      ATarget.DataController.Values[Row, 0] := Row + 1;
      for J := 1 to ASource.ColumnCount - 1 do
        ATarget.DataController.Values[Row, J] := ASource.DataController.GetValue(I, J);
    end;
  end;
end;

function TFrm_CUTA4.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  slReceive: TStringList;
  ErrCode: integer;
begin
  Result := False;

  AKeyNum   := StringReplace(AKeyNum, '-', '', [rfReplaceAll]);
  ACustNum  := StringReplace(ACustNum, '-', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'PROC_DELETE_CUSTOMER_NEW1(?,?,?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', AHdNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ABrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', AKeynum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACustNum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', ACuSeq, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DELETECUST', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(5), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  slReceive := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
    begin
      rv_str := slReceive[0];
      if rv_str <> '' then
      begin
        ls_rxxml := rv_str;
        try
          ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
          sMsg := GetXmlErrorMsg(ls_rxxml);

          if ('0000' = ls_Msg_Err) and ('1' = sMsg) then
          begin
            Result := True;
          end;
        except on E: Exception do
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

function TFrm_CUTA4.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
var
  I, Cnt: Integer;
  iColBrNo, iColKeyNum, iColCustNum, iColSeq : Integer;
  HdNo, BrNo, KeyNum, CustNum, CuSeq : string;
  FailedCount: Integer;
  Msg, FailedList: string;
  DelRows: TStringList;
begin
  Result := False;

  Cnt := AView.DataController.GetSelectedCount;

  if (Cnt = 0) then
  begin
    GMessagebox('고객을 선택해 주세요.', CDMSI);
    Exit;
  end;

  Msg := Format('[%d]명의 고객을 삭제하시겠습니까?'#13#10'삭제시 고객정보, 이용횟수, 마일리지가 삭제됩니다.', [Cnt]);

  if GMessagebox(Msg, CDMSQ) <> IDOK then
    Exit;

  iColBrNo    := AView.GetColumnByFieldName('지사코드').Index;
  iColKeyNum  := AView.GetColumnByFieldName('대표번호').Index;
  iColCustNum := AView.GetColumnByFieldName('고객번호').Index;
  iColSeq     := AView.GetColumnByFieldName('SEQ').Index;

  HdNo := GT_USERIF.HD;
  FailedCount := 0;

  try
    // 읽어서 바로 삭제 시 DataController와 ViewData 데이터 인덱스 Sync가 틀어져서 리스트에 추가후 제거
    DelRows := TStringList.Create;
    try
      for I := AView.DataController.RecordCount - 1 downto 0 do
      begin
        if AView.ViewData.Rows[I].Selected then
        begin
          BrNo    := AView.ViewData.Rows[I].Values[iColBrNo];
          KeyNum  := AView.ViewData.Rows[I].Values[iColKeyNum];
          CustNum := AView.ViewData.Rows[I].Values[iColCustNum];
          CuSeq   := AView.ViewData.Rows[I].Values[iColSeq];

          if not DeleteCustomerData(HdNo, BrNo, KeyNum, CustNum, CuSeq) then
          begin
            FailedList := Format('대표번호: %s, 고객번호: %s', [KeyNum, CustNum])  + #13#10 + FailedList;
            Inc(FailedCount);
          end
          else
          begin
            DelRows.Add(Format('%.10d', [AView.ViewData.Rows[I].RecordIndex]));
          end;
        end;
      end;

      AView.DataController.BeginUpdate;
      try
        DelRows.Sort;
        for I := DelRows.Count -1 downto 0 do
        begin
          AView.DataController.DeleteRecord(StrToInt(DelRows[I]));
        end;
      finally
        AView.DataController.EndUpdate;
      end;
    finally
      DelRows.Free;
    end;

    if FailedCount = 0 then
    begin
      Msg := Format('[%d]의 고객을 삭제했습니다.', [Cnt]);
    end
    else
    begin
      Msg := Format('[%d]의 고객 삭제 중 [%d]명 고객정보 삭제에 실패했습니다.'#13#10#13#10, [Cnt, FailedCount]);
      Msg := Msg + '[실패고객 정보]'#13#10 + FailedList;
		end;

		GMessagebox(Msg, CDMSI);

    Result := True;
  except on E: Exception do
    begin
      GMessagebox(Format('고객삭제 중 오류가 발생했습니다.[오류: %s]', [E.Message]), CDMSI);
      Assert(False, E.Message);
    end;
  end;
  ALabel.Caption := '총 ' + IntToStr(AView.DataController.RecordCount) + '명';
end;

procedure TFrm_CUTA4.chk2Click(Sender: TObject);
begin
  cxGridSelectAll(CustView4, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA4.chkCust04Type01Click(Sender: TObject);
begin
  if chkCust04Type01.Checked then
  begin
    cxDate09.Enabled := True;
    cxDate10.Enabled := True;
  end
  else
  begin
    cxDate09.Enabled := False;
    cxDate10.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type02Click(Sender: TObject);
begin
  if chkCust04Type02.Checked then
  begin
    cxDate11.Enabled := True;
    cxDate12.Enabled := True;
  end
  else
  begin
    cxDate11.Enabled := False;
    cxDate12.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type03Click(Sender: TObject);
begin
  if chkCust04Type03.Checked then
  begin
    cbArea03.Enabled := True;
    cbArea04.Enabled := True;
    rbCust04Type01.Enabled := True;
    rbCust04Type02.Enabled := True;
    cbArea03.Tag := 1;
    cbArea03.ItemIndex := 0;
    cbArea03.Tag := 0;
  end
  else
  begin
    cbArea03.Enabled := False;
    cbArea04.Enabled := False;
    rbCust04Type01.Enabled := False;
    rbCust04Type02.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type04Click(Sender: TObject);
begin
  if chkCust04Type04.Checked then
  begin
    edCust04Type01.Enabled := True;
    edCust04Type02.Enabled := True;
  end
  else
  begin
    edCust04Type01.Enabled := False;
    edCust04Type02.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type05Click(Sender: TObject);
begin
  if chkCust04Type05.Checked then
  begin
    edCust04Type03.Enabled := True;
    edCust04Type04.Enabled := True;
  end
  else
  begin
    edCust04Type03.Enabled := False;
    edCust04Type04.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type07Click(Sender: TObject);
begin
  if chkCust04Type07.Checked then
  begin
    cbBCustList2.Enabled := True;
    cxButton50.Enabled := True;
  end
  else
  begin
    cbBCustList2.Enabled := False;
    cxButton50.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.chkCust04Type09Click(Sender: TObject);
begin
  if chkCust04Type09.Checked then
  begin
    cxDate24.Enabled := True;
    cxDate25.Enabled := True;
  end else
  begin
    cxDate24.Enabled := False;
    cxDate25.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.cbArea03PropertiesChange(Sender: TObject);
var
  i, k: Integer;
  sl_City: TStringList;
begin
  try
    try
      cbArea04.Properties.Items.Clear;
      cbArea04.Properties.Items.Add('전체');
      sl_City := TStringList.Create;
      sl_city.Clear;
      sl_city.Assign(GT_MAPOrigi.slCity);
      if cbArea03.ItemIndex > 1 then
      begin
        for k := 0 to 2 do
        begin
          i := sl_City.IndexOf(cbArea03.Text);
          if i > 1 then
          begin
            if (cbArea03.Text <> sl_city.Strings[i - 1]) and
               (cbArea03.Text = sl_city.Strings[i]) and
               (cbArea03.Text <> sl_city.Strings[i + 1]) then
            begin
              sl_City.Delete(i);
              sl_City.Insert(i, ' ');
            end;
          end;
        end;
      end;
      if cbArea03.ItemIndex = 0 then
        exit;
      for i := sl_city.IndexOf(cbArea03.Text) to GT_MAPOrigi.slCity.Count - 1 do
      begin
        if i > 1 then
        begin
          if (cbArea03.Text <> GT_MAPOrigi.slCity[i]) and (cbArea03.Text <> GT_MAPOrigi.slCity[i + 1]) then
            break;
        end;
        if (cbArea03.Text = sl_city.Strings[i]) and (cbArea04.Properties.Items.IndexOf(GT_MAPOrigi.slWard[i]) < 0) and (GT_MAPOrigi.slWard[i] <> '' ) then
          cbArea04.Properties.Items.Add(GT_MAPOrigi.slWard[i]);
      end;
      cbArea04.ItemIndex := 0;
    finally
      freeandnil(sl_city);
    end;
  except on E: Exception do
    Assert(False, E.Message);
  end;
end;

procedure TFrm_CUTA4.cbGubun04Click(Sender: TObject);
begin
  if cbGubun04.ItemIndex = 0 then
  begin
    chkCust04Type06.Enabled := True;
    chkCust04Type07.Enabled := False;
    chkCust04Type07Click(chkCust04Type07);
    cxButton50.Enabled := False;
  end
  else
    if cbGubun04.ItemIndex = 3 then
  begin
    proc_bubin_init;
    chkCust04Type06.Enabled := False;
    chkCust04Type07.Enabled := True;
    cxButton50.Enabled := True;
    chkCust04Type07Click(chkCust04Type07);
  end
  else
  begin
    chkCust04Type06.Enabled := False;
    chkCust04Type07.Enabled := False;
    chkCust04Type07Click(chkCust04Type07);
    cxButton50.Enabled := False;
  end;
end;

procedure TFrm_CUTA4.cbKeynumber03PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then
  begin
    ChageCustLevel(TcxComboBox(Sender).Text, cbLevel03);
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

  lbCustCompany01.Caption := sName;
  cxHdNo.Text := sHdNo;
  cxBrNo.Text := sBrNo;

  proc_bubin_init;
  ChageCustLevel(TcxComboBox(Sender).Text, cbLevel03);
end;

procedure TFrm_CUTA4.cbLevel01MouseEnter(Sender: TObject);
begin
  TcxComboBox(Sender).Hint := TcxComboBox(Sender).Text;
end;

procedure TFrm_CUTA4.RequestData(AData: string);
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

procedure TFrm_CUTA4.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_상세검색.xls';
  Frm_Main.sgRpExcel := Format('고객>상세검색]%s건/%s', [GetMoneyStr(CustView4.DataController.RecordCount), FExcelDownDetail]);
  Frm_Main.cxGridExcel := cxGrid4;
  Frm_Main.cxGridDBViewExcel := CustView4;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    CustView4.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    CustView4.Columns[0].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    CustView4.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    CustView4.Columns[0].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA4.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA4.btnAll3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.btnAll4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pop_Ymd1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.btnHighCustDelClick(Sender: TObject);
begin
  DeleteCustomer(CustView4, lbCount04);
end;

procedure TFrm_CUTA4.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA4.cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA4.cxButton70Click(Sender: TObject);
begin
  Pop_Ymd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.cxButton71Click(Sender: TObject);
begin
  Pop_Ymd1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.cxButton74Click(Sender: TObject);
begin
  Pop_Ymd2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA4.MenuItem33Click(Sender: TObject);
begin
  CustSetDateControl(0, cxDate09, cxDate10);
end;

procedure TFrm_CUTA4.MenuItem34Click(Sender: TObject);
begin
  CustSetDateControl(1, cxDate09, cxDate10);
end;

procedure TFrm_CUTA4.MenuItem35Click(Sender: TObject);
begin
  CustSetDateControl(3, cxDate09, cxDate10);
end;

procedure TFrm_CUTA4.MenuItem36Click(Sender: TObject);
begin
  CustSetDateControl(6, cxDate09, cxDate10);
end;

procedure TFrm_CUTA4.MenuItem37Click(Sender: TObject);
begin
  CustSetDateControl(12, cxDate09, cxDate10);
end;

procedure TFrm_CUTA4.MenuItem38Click(Sender: TObject);
begin
  CustSetDateControl(0, cxDate24, cxDate25);
end;

procedure TFrm_CUTA4.MenuItem39Click(Sender: TObject);
begin
  CustSetDateControl(1, cxDate24, cxDate25);
end;

procedure TFrm_CUTA4.MenuItem40Click(Sender: TObject);
begin
  CustSetDateControl(3, cxDate24, cxDate25);
end;

procedure TFrm_CUTA4.MenuItem41Click(Sender: TObject);
begin
  CustSetDateControl(6, cxDate24, cxDate25);
end;

procedure TFrm_CUTA4.MenuItem42Click(Sender: TObject);
begin
  CustSetDateControl(12, cxDate24, cxDate25);
end;

procedure TFrm_CUTA4.MenuItem43Click(Sender: TObject);
begin
  CustSetDateControl(0, cxDate11, cxDate12);
end;

procedure TFrm_CUTA4.MenuItem44Click(Sender: TObject);
begin
  CustSetDateControl(1, cxDate11, cxDate12);
end;

procedure TFrm_CUTA4.MenuItem45Click(Sender: TObject);
begin
  CustSetDateControl(3, cxDate11, cxDate12);
end;

procedure TFrm_CUTA4.MenuItem46Click(Sender: TObject);
begin
  CustSetDateControl(6, cxDate11, cxDate12);
end;

procedure TFrm_CUTA4.MenuItem47Click(Sender: TObject);
begin
  CustSetDateControl(12, cxDate11, cxDate12);
end;

procedure TFrm_CUTA4.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
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

end.

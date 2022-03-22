unit xe_CUTA3;

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
  TFrm_CUTA3 = class(TForm)
    lbCustCompany01: TcxLabel;
    lbCount01: TcxLabel;
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
    CB_SetDate: TcxCheckBox;
    CB_UseDate: TcxCheckBox;
    Pnl_Chk1: TPanel;
    Label13: TLabel;
    de_1stDate: TcxDateEdit;
    de_1edDate: TcxDateEdit;
    cxButton70: TcxButton;
    Pnl_Chk2: TPanel;
    Label3: TLabel;
    de_2stDate: TcxDateEdit;
    de_2edDate: TcxDateEdit;
    cxButton71: TcxButton;
    Rb_SetupY: TcxRadioButton;
    Rb_SetupN: TcxRadioButton;
    Rb_SetupA: TcxRadioButton;
    Cb_DelDate: TcxCheckBox;
    Pnl_Chk3: TPanel;
    Label6: TLabel;
    de_3stDate: TcxDateEdit;
    de_3edDate: TcxDateEdit;
    cxButton74: TcxButton;
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
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
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
    cxGrid3: TcxGrid;
    CustView3: TcxGridDBTableView;
    CustView3Column1: TcxGridDBColumn;
    CustView3Column2: TcxGridDBColumn;
    CustView3Column3: TcxGridDBColumn;
    CustView3Column4: TcxGridDBColumn;
    CustView3Column5: TcxGridDBColumn;
    CustView3Column6: TcxGridDBColumn;
    CustView3Column7: TcxGridDBColumn;
    CustView3Column8: TcxGridDBColumn;
    CustView3Column9: TcxGridDBColumn;
    CustView3Column10: TcxGridDBColumn;
    CustView3Column11: TcxGridDBColumn;
    CustView3Column12: TcxGridDBColumn;
    CustView3Column13: TcxGridDBColumn;
    CustView3Column14: TcxGridDBColumn;
    CustView3Column15: TcxGridDBColumn;
    CustView3Column16: TcxGridDBColumn;
    CustView3Column17: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cbKeynumber03: TcxComboBox;
    cbGubun03: TcxComboBox;
    cbSmsUse03: TcxComboBox;
    cxButton18: TcxButton;
    rbCust03Type01: TcxRadioButton;
    rbCust03Type02: TcxRadioButton;
    cxDate07: TcxDateEdit;
    cxLabel70: TcxLabel;
    cxDate08: TcxDateEdit;
    cxLabel72: TcxLabel;
    rbCust03Type03: TcxRadioButton;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    rbCust03Type04: TcxRadioButton;
    edMlgScore01: TcxTextEdit;
    cxLabel76: TcxLabel;
    edMlgScore02: TcxTextEdit;
    edMlgCount01: TcxTextEdit;
    cxLabel77: TcxLabel;
    edMlgCount02: TcxTextEdit;
    cbCustLastNumber: TcxComboBox;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxButton53: TcxButton;
    cxGroupBox5: TcxGroupBox;
    Shape2: TShape;
    Shape6: TShape;
    Shape8: TShape;
    cxGroupBox6: TcxGroupBox;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    btnHighCustDel: TcxButton;
    chkCust03Type01: TcxCheckBox;
    chkHighSubscribe: TcxCheckBox;
    chkNmlPhoneOut03: TcxCheckBox;
    chkCust03Type02: TcxCheckBox;
    pm_Date: TPopupMenu;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    CustView3Column18: TcxGridDBColumn;
    Shape9: TShape;
    cxLabel4: TcxLabel;
    cbOutBound: TcxComboBox;
		procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbLevel01MouseEnter(Sender: TObject);
    procedure btnAll1Click(Sender: TObject);
    procedure btnAll2Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
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
    procedure CB_SetDateClick(Sender: TObject);
    procedure Cb_DelDateClick(Sender: TObject);
    procedure CB_UseDateClick(Sender: TObject);
    procedure cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxButton53MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbKeynumber03PropertiesChange(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure rbCust03Type01Click(Sender: TObject);
    procedure rbCust03Type02Click(Sender: TObject);
    procedure rbCust03Type03Click(Sender: TObject);
    procedure rbCust03Type04Click(Sender: TObject);
    procedure CustView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton15Click(Sender: TObject);
    procedure chkCust03Type02Click(Sender: TObject);
    procedure CustView3ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CustView3DataControllerSortingChanged(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure btnHighCustDelClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownHigh : string;
    AIndex : Integer;

    procedure proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean = True);
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);
    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure RequestData(AData: string);
    function GetActiveDateControl(var AStDt, AEdDt: TcxDateEdit): Boolean;
    procedure CustSetDateControl(AGubun: Integer; AStDt,
      AEdDt: TcxDateEdit);
    procedure proc_HighSearch;
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
  Frm_CUTA3: TFrm_CUTA3;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_Query,
  xe_packet, xe_xml, xe_CUT012, xe_CUT011, xe_Flash, xe_SMSA1;


procedure TFrm_CUTA3.N1Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdToday);
end;

procedure TFrm_CUTA3.N2Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdYesterday);
end;

procedure TFrm_CUTA3.N6Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
	if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneWeek);
end;

procedure TFrm_CUTA3.N7Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdOneMonth);
end;

procedure TFrm_CUTA3.N11Click(Sender: TObject);
var
  StDt, EdDt: TcxDateEdit;
begin
  if GetActiveDateControl(StDt, EdDt) then
    SetDateControl(StDt, EdDt, tdStartMonth);
end;

procedure TFrm_CUTA3.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;

  cxDate07.Date := StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)));
  cxDate08.Date := cxDate07.Date + 1;

  lbCount01.Caption := '총 000명';

  cbGubun03.ItemIndex := 0;
  rbCust03Type01.Checked := True;
  rbCust03Type01Click(rbCust03Type01);
  rbCust03Type03.Checked := true;
  rbCust03Type03Click(rbCust03Type03);
  chkCust03Type01.Checked := False;
  chkCust03Type02.Checked := false;

  CustView3.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView3.ColumnCount - 1 do
    CustView3.Columns[i].DataBinding.ValueType := 'String';
  CustView3.Columns[11].DataBinding.valuetype := 'Currency';
  CustView3.Columns[12].DataBinding.valuetype := 'Integer';
end;

procedure TFrm_CUTA3.proc_Branch_Change;
begin
	proc_BrNameSet;
end;

procedure TFrm_CUTA3.proc_KeyNumber_insert;
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

procedure TFrm_CUTA3.proc_recieve(slList: TStringList);
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
          5:
            begin
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
                  Continue;
                end;
                if (0 < GetXmlRecordCount(ls_rxxml)) then
                begin
                  lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    Application.ProcessMessages;
                    lbNoSms.Add(GetTextSeperationFirst('│', lst_Result.item[i].attributes.getNamedItem('Value').Text));
                  end;
                end;
              end;

              sList := TStringList.Create;
              sList.Sorted := True;
              sList.Duplicates := dupignore;
              if FileExists(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT') then
                sLIst.LoadFromFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
              Application.ProcessMessages;
              sList.AddStrings(lbNoSms);
              if sList.IndexOf('0100') = -1 then
              begin
                sList.Add('0100');
                sList.Add('0101');
                sList.Add('0102');
                sList.Add('0103');
                sList.Add('0104');
                sList.Add('0105');
                sList.Add('0106');
                sList.Add('0107');
                sList.Add('0108');
                sList.Add('0109');
                sList.Add('0110');
                sList.Add('0160');
                sList.Add('0170');
                sList.Add('0180');
                sList.Add('0190');
                sList.Add('0200');
              end;
              if sList.IndexOf('0100') > 0 then
              begin
                while sList.Strings[0] <> '0100' do
                begin
                  sList.Delete(0);
                end;
              end;
              sList.SaveToFile(DBDIRECTORY + 'SMS_NOT_ARGEE.TXT');
              sList.Free;
              lbNoSms.Clear;
              frm_Main.sbar_Message.Panels[4].Text := '';
              Screen.Cursor := crDefault;
            end;
          6:
            begin
              CustView3.BeginUpdate;
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
                      sEndDate := ls_rcrd[12];

                      if chkNmlPhoneOut03.Checked then
                      begin
                        if not CheckHPType(ls_rcrd[4], ErrDesc) then
                          Continue;
                      end;

                      if ls_rcrd[4] = '' then
                        Continue;

                      iRow := CustView3.DataController.AppendRecord;
                      CustView3.DataController.Values[iRow, 0] := iRow + 1;
                      CustView3.DataController.Values[iRow, 1] := ls_rcrd[0];
                      CustView3.DataController.Values[iRow, 2] := ls_rcrd[1];
                      CustView3.DataController.Values[iRow, 3] := strtocall(ls_rcrd[2]);
                      CustView3.DataController.Values[iRow, 4] := ls_rcrd[3];
                      CustView3.DataController.Values[iRow, 5] := strtocall(ls_rcrd[4]);
                      CustView3.DataController.Values[iRow, 6] := ls_rcrd[5];
                      CustView3.DataController.Values[iRow, 7] := ls_rcrd[6];
                      CustView3.DataController.Values[iRow, 8] := ls_rcrd[7] + '%';
                      CustView3.DataController.Values[iRow, 9] := ls_rcrd[8];
                      CustView3.DataController.Values[iRow, 10] := ls_rcrd[9];
                      CustView3.DataController.Values[iRow, 11] := ls_rcrd[10];
                      CustView3.DataController.Values[iRow, 12] := ls_rcrd[11];
                      if Trim(sEndDate) <> '' then
                        CustView3.DataController.Values[iRow, 13] := Copy(sEndDate, 1, 4) + '-' +
                                                                     Copy(sEndDate, 5, 2) + '-' +
                                                                     Copy(sEndDate, 7, 2)
                      else
                        CustView3.DataController.Values[iRow, 13] := '';
                      CustView3.DataController.Values[iRow, 14] := ls_rcrd[13];
                      CustView3.DataController.Values[iRow, 15] := ls_rcrd[14];
                      CustView3.DataController.Values[iRow, 16] := ls_rcrd[15];
                      if ls_rcrd.Count > 16 then
                        CustView3.DataController.Values[iRow, 17] := ls_rcrd[16];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView3.EndUpdate;
              lbCount01.Caption := '총 ' + IntToStr(CustView3.DataController.RecordCount) + '명';
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

procedure TFrm_CUTA3.FormCreate(Sender: TObject);
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

procedure TFrm_CUTA3.FormDestroy(Sender: TObject);
begin
  Frm_CUTA3 := Nil;
end;

procedure TFrm_CUTA3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  Action := caFree;
end;

procedure TFrm_CUTA3.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbKeynumber03.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbKeynumber03.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbKeynumber03.Properties.Items.Assign(StrList);
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

  if cbKeynumber03.Properties.Items.Count >= 1 then
    cbKeynumber03.Properties.Items.Insert(0, '전체');

  cbKeynumber03.ItemIndex := 0;
  cbKeynumber03.Tag := 0;
end;

procedure TFrm_CUTA3.rbCust03Type01Click(Sender: TObject);
begin
  if rbCust03Type01.Checked then
  begin
    cxDate07.Enabled := False;
    cxDate08.Enabled := False;
    cxButton53.Enabled := False;
  end;
end;

procedure TFrm_CUTA3.rbCust03Type02Click(Sender: TObject);
begin
  if rbCust03Type02.Checked then
  begin
    cxDate07.Enabled := True;
    cxDate08.Enabled := True;
    cxButton53.Enabled := True;
  end;
end;

procedure TFrm_CUTA3.rbCust03Type03Click(Sender: TObject);
begin
  if rbCust03Type03.Checked then
  begin
    rbCust03Type01.Checked := True;
    rbCust03Type01Click(rbCust03Type01);
  end;
  edMlgScore01.Enabled := True;
  edMlgScore02.Enabled := True;
  edMlgCount01.Enabled := True;
  edMlgCount02.Enabled := True;
  cbCustLastNumber.Enabled := False;
end;

procedure TFrm_CUTA3.rbCust03Type04Click(Sender: TObject);
begin
  edMlgScore01.Enabled := False;
  edMlgScore02.Enabled := False;
  edMlgCount01.Enabled := False;
  edMlgCount02.Enabled := False;
  cbCustLastNumber.Enabled := True;
end;

procedure TFrm_CUTA3.CustView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := False;
  end;
end;

procedure TFrm_CUTA3.CustView3ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTA3.CustView3DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView3, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTA3.CustView3KeyDown(Sender: TObject; var Key: Word;
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
    CustView3.OptionsSelection.CellMultiSelect := False;
    CustView3.OptionsSelection.CellSelect := False;
    CustView3.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTA3.CustView3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView3.OptionsSelection.CellMultiSelect := True;
    CustView3.OptionsSelection.CellSelect := True;
    CustView3.OptionsSelection.MultiSelect := True;
  end;
end;

{-------------------------------------------------------------------------------
  Arguments: sGrid: 대상그리드; ASubscribe: 수신허용(True: 수신허용)
-------------------------------------------------------------------------------}
procedure TFrm_CUTA3.proc_SND_SMS(sGrid: TcxGridDBTableView; ASubscribe: Boolean);
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

procedure TFrm_CUTA3.cxButton15Click(Sender: TObject);
begin
	if (GT_SEL_BRNO.GUBUN = '0') and (not Check_ALLHD(GT_SEL_BRNO.HDNO)) then
	begin
		GMessagebox('해당본사에 대한 전체 권한이 없습니다.' + #13#10 + '지사를 선택하여 주십시오.', CDMSI);
		exit;
	end;
	if not chkCust03Type01.Checked then
    CustView3.DataController.SetRecordCount(0);
  proc_HighSearch;
end;

procedure TFrm_CUTA3.cxButton16Click(Sender: TObject);
begin
  if CustView3.DataController.RecordCount = 0 then
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

procedure TFrm_CUTA3.cxButton17Click(Sender: TObject);
begin
  proc_SND_SMS(CustView3, chkHighSubscribe.Checked);
end;

procedure TFrm_CUTA3.proc_HighSearch;
var
  I: Integer;
  ls_TxLoad, sWhere, sTemp, sSms1, sSms2, sTel1, sTel2: string;
  slReceive: TStringList;
  ErrCode: integer;
  MileType: string;
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
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.',
      CDMSI);
    exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('고급검색') then Exit;

  if not chkCust03Type01.Checked then
  begin
    if CustView3.DataController.RecordCount > 0 then
      exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>고급검색]2000건/콜센터(통합)/대표번호:16886618/전체기간/마일리지:10~100점,1~3회지급/SMS수신
  if rbCust03Type03.Checked then
  begin
    if edMlgScore01.Text + edMlgScore02.Text + edMlgCount01.Text + edMlgCount02.Text = '' then
      MileType := ''
    else
      MileType := '/마일리지:'
        + IfThen(edMlgScore01.Text + edMlgScore02.Text = '', '', Format('%s~%s점', [edMlgScore01.Text, edMlgScore02.Text]))
        + IfThen(edMlgCount01.Text + edMlgCount02.Text = '', '', Format('%s~%s회지급', [edMlgCount01.Text, edMlgCount02.Text]))
      ;
  end;
  FExcelDownHigh := Format('%s/대표번호:%s/%s%s/%s',
    [
        GetSelBrInfo
      , cbKeynumber03.Text
      , IfThen(rbCust03Type01.Checked, '전체기간', Format('최초등록시간:%s~%s', [cxDate07.Text, cxDate08.Text]))
      , IfThen(rbCust03Type04.Checked,
          Format('전화뒷자리:%s', [cbCustLastNumber.Text]),
          MileType)
      , cbSmsUse03.Text
    ]);
  //////////////////////////////////////////////////////////////////////////////

  if cbSmsUse03.ItemIndex = 0 then
  begin
    sSms1 := 'y';
    sSms2 := 'n';
  end else
  if cbSmsUse03.ItemIndex = 1 then
  begin
    sSms1 := 'y';
    sSms2 := '0';
  end else
  begin
    sSms1 := 'n';
    sSms2 := '0';
  end;

  sWhere := '';

  if cbCustLastNumber.ItemIndex = 0 then
  begin
    sTel1 := '0000';
    sTel2 := '9999';
  end else
  if (rbCust03Type04.Checked) and (cbCustLastNumber.ItemIndex > 0) then
  begin
    sTemp := cbCustLastNumber.Text;
    sTel1 := Copy(sTemp, 1, 4);
    sTel2 := Copy(sTemp, 6, 4);
    sWhere := sWhere +
      ' AND EXISTS (SELECT * FROM CDMS_CUSTOMER_TEL WHERE CU_SEQ = C.CU_SEQ AND SUBSTR(CU_TEL, LENGTH(CU_TEL)-3) BETWEEN ''' + sTel1
      + ''' AND ''' + sTel2 + ''') '
  end;

  if cxBrNo.Text <> '' then
    sWhere := sWhere + ' AND C.BR_NO = ''' + cxBrNo.Text + ''' ';

  if (cbKeynumber03.Text <> '전체') and (cbKeynumber03.Text <> '') then
    sWhere := sWhere + ' AND C.KEY_NUMBER = ''' + StringReplace(cbKeynumber03.Text, '-', '', [rfReplaceAll]) + ''' ';

  case cbGubun03.ItemIndex of
    1: sWhere := sWhere + ' AND C.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND C.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND C.CU_TYPE = ''3'' ';
  end;

  if rbCust03Type02.Checked then
  begin
    if cxDate07.Enabled then
    begin
      if (cxDate07.Text <> '') and (cxDate08.Text <> '') then
        sWhere := sWhere +
          format(' AND C.IN_DATE BETWEEN TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') '
          , [formatdatetime('yyyymmdd', cxDate07.Date),
          formatdatetime('yyyymmdd',
            cxDate08.Date)])
      else
        if (cxDate07.Text <> '') and (cxDate08.Text = '') then
        sWhere := sWhere + format(' AND C.IN_DATE >= TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'')  '
          , [formatdatetime('yyyymmdd', cxDate07.Date)])
      else
        if (cxDate07.Text = '') and (cxDate08.Text <> '') then
        sWhere := sWhere + format(' AND TO_DATE(''%s090000'', ''YYYYMMDDHH24MISS'') >= C.IN_DATE  '
          , [formatdatetime('yyyymmdd', cxDate08.Date)]);
    end;
  end else
  if rbCust03Type03.Checked then
  begin
    if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_MILEAGE BETWEEN ''' + Param_Filtering(edMlgScore01.Text) + ''' AND ''' + Param_Filtering(edMlgScore02.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_MILEAGE >= ''' + Param_Filtering(edMlgScore01.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) = -1) and
      (StrToIntDef(edMlgScore02.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + Param_Filtering(edMlgScore02.Text) + ''' >= C.CU_MILEAGE ';

    if (StrToIntDef(edMlgCount01.Text, -1) > -1) and
      (StrToIntDef(edMlgCount02.Text, -1) > -1) then
      sWhere := sWhere + ' AND C.CU_PRIZE_CNT BETWEEN ''' + Param_Filtering(edMlgCount01.Text) + ''' AND ''' + Param_Filtering(edMlgCount02.Text) + ''' '
    else if (StrToIntDef(edMlgScore01.Text, -1) > -1) and
      (StrToIntDef(edMlgScore02.Text, -1) = -1) then
      sWhere := sWhere + ' AND C.CU_PRIZE_CNT >= ''' + Param_Filtering(edMlgCount01.Text) + ''' '
    else if (StrToIntDef(edMlgCount01.Text, -1) = -1) and (StrToIntDef(edMlgCount02.Text, -1) > -1) then
      sWhere := sWhere + ' AND ''' + Param_Filtering(edMlgCount02.Text) + ''' >= C.CU_PRIZE_CNT ';
  end;

  if Rb_SetupA.Checked then
  begin
		sWhere := sWhere + ' AND C.CU_SEQ = APP.CU_SEQ(+)  ';
  end else
  if Rb_SetupY.Checked then
		sWhere := sWhere + ' AND C.CU_SEQ = APP.CU_SEQ    ' +
                       ' AND C.CU_SEQ = APP.CU_SEQ(+) ' +
 		                   ' AND APP.DEL_YN = ''n'' '
  else
  if Rb_SetupN.Checked then
		sWhere := sWhere + ' AND C.CU_SEQ  NOT IN  (SELECT CU_SEQ FROM CDMS_APP_USER WHERE DEL_YN = ''n'') ' +  // 미사용
                       ' AND C.CU_SEQ = APP.CU_SEQ(+) ';

 	if cbOutBound.ItemIndex > 0 then
   	sWhere := sWhere + ' AND C.CU_OUTBOUND = ''' + IntToStr(cbOutBound.ItemIndex) + ''' ';


  if CB_SetDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_REG_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_1stDate.Date), FormatDateTime('YYYYMMDD', de_1edDate.Date)] ); // 등록일자
  end;

  if CB_UseDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.LAST_FINISH_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                              AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_2stDate.Date), FormatDateTime('YYYYMMDD', de_2edDate.Date)] ); // 등록일자
  end;

  if CB_DelDate.Checked then
  begin
		sWhere := sWhere + Format(' AND APP.DEL_YN = ''y'' ' +
                              ' AND APP.LAST_DEL_DATE BETWEEN TRUNC( TO_DATE( %s, ''yyyymmdd'' ) )     ' +
                              '                           AND TRUNC( TO_DATE( %s, ''yyyymmdd'' ) + 1 ) ', [FormatDateTime('YYYYMMDD', de_3stDate.Date), FormatDateTime('YYYYMMDD', de_3edDate.Date)] ); // 등록일자
  end;

  // 저장된 쿼리가 select ~~ from (select ~ from where [condition] 형식으로 저장되어 있음(우괄호 반드시 필요)
  sWhere := sWhere + ')';
  ls_TxLoad := GetSel04(self.Caption + '6', 'CUSTOMER12', '', sWhere, [sSms1, sSms2, sTel1, sTel2, cxHdNo.Text]);

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

procedure TFrm_CUTA3.cxButton18Click(Sender: TObject);
var
  ls_TxQry, ls_TxLoad, ls_TxSend, sQueryTemp: string;
  rv_str, sBrNo: string;
  ls_rxxml: WideString;
  sList: TStringList;
  sWhere: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  dt_sysdate2 := frm_main.func_sysdate;

  if Trim(dt_sysdate2) = '' then
  begin
    GMessagebox('조회중입니다. 잠시만 기다려주세요', CDMSI);
    exit;
  end;

  if (length(dt_sysdate2) <> 14) or ((StrToInt(copy(dt_sysdate2, 9, 4)) > 2100)
    or (StrToInt(copy(dt_sysdate2, 9, 4)) < 100)) then
  begin
    GMessagebox('오후 9시부터 오전 1시 사이에는 고객을 검색할 수 없습니다.', CDMSI);
    Exit;
  end;

  //////////////////////////////////////////////////////////////////////////////
  // 고객>고급검색]2000건/콜센터(통합)/지사별수신거부고객전체검색
  FExcelDownHigh := Format('%s/지사별 수신거부고객 전체검색', [GetSelBrInfo]);
  //////////////////////////////////////////////////////////////////////////////

  DoubleBuffered := True;
  sBrNo := cxBrNo.Text;

  if sBrNo <> '' then
    sWhere := ' AND B.HD_NO = ''' + cxHdNo.Text + ''' AND B.BR_NO = ''' +
      sBrNo + ''' '
  else
    sWhere := ' AND B.HD_NO = ''' + cxHdNo.Text + ''' ';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_BRANCH_SMS2, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '5', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '20000', [rfReplaceAll]);

  lbNoSms.Clear;
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

procedure TFrm_CUTA3.cxButton53MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pm_date.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA3.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
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

function TFrm_CUTA3.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
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

function TFrm_CUTA3.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
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

procedure TFrm_CUTA3.chkCust03Type02Click(Sender: TObject);
begin
  cxGridSelectAll(CustView3, TcxCheckBox(Sender).Checked);
end;

procedure TFrm_CUTA3.cbKeynumber03PropertiesChange(Sender: TObject);
var
	sName, sBrName, sHdNo, sBrNo: string;
  iIdx: Integer;
begin
	if TcxComboBox(Sender).Tag = 1 then Exit;

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
end;

procedure TFrm_CUTA3.cbLevel01MouseEnter(Sender: TObject);
begin
  TcxComboBox(Sender).Hint := TcxComboBox(Sender).Text;
end;

procedure TFrm_CUTA3.RequestData(AData: string);
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

function TFrm_CUTA3.GetActiveDateControl(var AStDt,
  AEdDt: TcxDateEdit): Boolean;
begin
	Result := True;
  AStDt := cxDate07;
  AEdDt := cxDate08;
end;

procedure TFrm_CUTA3.btnAll1Click(Sender: TObject);
begin
  Frm_Main.sgExcel := '고객_고급검색.xls';
  Frm_Main.sgRpExcel := Format('고객>고급검색]%s건/%s', [GetMoneyStr(CustView3.DataController.RecordCount), FExcelDownHigh]);
  Frm_Main.cxGridExcel := cxGrid3;
  Frm_Main.cxGridDBViewExcel := CustView3;
  if RdExcel1.Checked then Frm_Main.bgExcelOPT := False else
  if RdExcel2.Checked then Frm_Main.bgExcelOPT := True;

  if GS_XLS_DTypeUse then
  begin
    CustView3.Columns[0].PropertiesClassName := 'TcxCalcEditProperties';
    CustView3.Columns[0].Properties := Frm_Main.gCalHCProperties;
    CustView3.Columns[12].PropertiesClassName := 'TcxCalcEditProperties';
    CustView3.Columns[12].Properties := Frm_Main.gCalHCProperties;
  end else
  begin
    CustView3.Columns[0].PropertiesClassName := 'TcxLabelProperties';
    CustView3.Columns[0].Properties := Frm_Main.gLblProperties;
    CustView3.Columns[12].PropertiesClassName := 'TcxLabelProperties';
    CustView3.Columns[12].Properties := Frm_Main.gLblProperties;
  end;

  Frm_Main.proc_excel(0);
  pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA3.btnAll2Click(Sender: TObject);
begin
	pnl_Excel_OPT.Visible := False;
end;

procedure TFrm_CUTA3.btnHighCustDelClick(Sender: TObject);
begin
  DeleteCustomer(CustView3, lbCount01);
end;

procedure TFrm_CUTA3.MenuItem25Click(Sender: TObject);
begin
        cxDate07.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1,
          8)));
        cxDate08.Date := cxDate07.Date + 1;
end;

procedure TFrm_CUTA3.MenuItem26Click(Sender: TObject);
begin
        cxDate07.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          1;
        cxDate08.Date := cxDate07.Date + 1;
end;

procedure TFrm_CUTA3.MenuItem27Click(Sender: TObject);
begin
        cxDate07.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          7;
        cxDate08.Date := cxDate07.Date + 7;
end;

procedure TFrm_CUTA3.MenuItem28Click(Sender: TObject);
begin
        cxDate07.Date :=
          StrToDate(Date8to10(copy(StartDateTime('yyyymmddhhmmss'), 1, 8)))
          -
          31;
        cxDate08.Date := cxDate07.Date + 31;
end;

procedure TFrm_CUTA3.MenuItem29Click(Sender: TObject);
begin
        cxDate07.Date := StartOfTheMonth(now);
        cxDate08.Date := EndOfTheMonth(Now);
end;

procedure TFrm_CUTA3.cxGroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA3.cxGroupBox8MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ReleaseCapture;
  PostMessage(TcxGroupBox(Sender).Parent.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTA3.cxButton70Click(Sender: TObject);
begin
  Pop_Ymd.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA3.cxButton71Click(Sender: TObject);
begin
  Pop_Ymd1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA3.cxButton74Click(Sender: TObject);
begin
  Pop_Ymd2.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TFrm_CUTA3.MenuItem33Click(Sender: TObject);
begin
  CustSetDateControl(0, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA3.MenuItem34Click(Sender: TObject);
begin
  CustSetDateControl(1, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA3.MenuItem35Click(Sender: TObject);
begin
  CustSetDateControl(3, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA3.MenuItem36Click(Sender: TObject);
begin
  CustSetDateControl(6, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA3.MenuItem37Click(Sender: TObject);
begin
  CustSetDateControl(12, de_1stDate, de_1edDate);
end;

procedure TFrm_CUTA3.MenuItem38Click(Sender: TObject);
begin
  CustSetDateControl(0, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA3.MenuItem39Click(Sender: TObject);
begin
  CustSetDateControl(1, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA3.MenuItem40Click(Sender: TObject);
begin
  CustSetDateControl(3, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA3.MenuItem41Click(Sender: TObject);
begin
  CustSetDateControl(6, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA3.MenuItem42Click(Sender: TObject);
begin
  CustSetDateControl(12, de_2stDate, de_2edDate);
end;

procedure TFrm_CUTA3.MenuItem43Click(Sender: TObject);
begin
  CustSetDateControl(0, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA3.MenuItem44Click(Sender: TObject);
begin
  CustSetDateControl(1, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA3.MenuItem45Click(Sender: TObject);
begin
  CustSetDateControl(3, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA3.MenuItem46Click(Sender: TObject);
begin
  CustSetDateControl(6, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA3.MenuItem47Click(Sender: TObject);
begin
  CustSetDateControl(12, de_3stDate, de_3edDate);
end;

procedure TFrm_CUTA3.CB_SetDateClick(Sender: TObject);
begin
  if CB_SetDate.Checked then
  begin
    Pnl_Chk1.Enabled := True;
    de_1stDate.Enabled := True;
    de_1edDate.Enabled := True;
  end else
  begin
    Pnl_Chk1.Enabled := False;
    de_1stDate.Enabled := False;
    de_1edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA3.Cb_DelDateClick(Sender: TObject);
begin
  if CB_DelDate.Checked then
  begin
    Pnl_Chk3.Enabled := True;
    de_3stDate.Enabled := True;
    de_3edDate.Enabled := True;
  end else
  begin
    Pnl_Chk3.Enabled := False;
    de_3stDate.Enabled := False;
    de_3edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA3.CB_UseDateClick(Sender: TObject);
begin
  if CB_UseDate.Checked then
  begin
    Pnl_Chk2.Enabled := True;
    de_2stDate.Enabled := True;
    de_2edDate.Enabled := True;
  end else
  begin
    Pnl_Chk2.Enabled := False;
    de_2stDate.Enabled := False;
    de_2edDate.Enabled := False;
  end;
end;

procedure TFrm_CUTA3.CustSetDateControl(AGubun : Integer; AStDt, AEdDt: TcxDateEdit);
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

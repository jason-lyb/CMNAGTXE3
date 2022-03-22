unit xe_CUTB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, Menus,
  System.StrUtils, System.Math,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
	cxLabel, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridBandedTableView, cxGridLevel, cxGridCustomTableView,
	cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxRadioGroup,
  ExtCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxContainer, cxPC, DateUtils, MSXML2_TLB, cxCurrencyEdit,
	cxSpinEdit, GradientLabel, OleCtrls, SHDocVw, Registry, cxImageComboBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, Gauges, ShellAPI,
  ComObj, cxCheckComboBox, IniFiles, cxSplitter, cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, xe_structure, cxMemo, cxPCdxBarPopupMenu,
  cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  cxTLdxBarBuiltInMenu, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_CUTB1 = class(TForm)
    Panel14: TPanel;
    lbCustCompany09: TcxLabel;
    cbCustKeynumber08: TcxComboBox;
    cxLabel199: TcxLabel;
    cxButton37: TcxButton;
    cxButton38: TcxButton;
    edBubinName01: TcxTextEdit;
    cxButton39: TcxButton;
    cxSplitter1: TcxSplitter;
    Panel15: TPanel;
    edBubinName02: TcxTextEdit;
    cxButton40: TcxButton;
    cxButton41: TcxButton;
    cxButton43: TcxButton;
    cxSplitter2: TcxSplitter;
    Panel16: TPanel;
    cbGubun08: TcxComboBox;
    edCustName05: TcxTextEdit;
    edCustTel04: TcxTextEdit;
    cxButton44: TcxButton;
    cxLabel207: TcxLabel;
    cxButton45: TcxButton;
    cxButton46: TcxButton;
    cxGrid10: TcxGrid;
    CustView9: TcxGridDBTableView;
    cxGridLevel8: TcxGridLevel;
    CustView9Column1: TcxGridDBColumn;
    CustView9Column2: TcxGridDBColumn;
    CustView9Column3: TcxGridDBColumn;
    CustView9Column4: TcxGridDBColumn;
    CustView9Column5: TcxGridDBColumn;
    CustView9Column6: TcxGridDBColumn;
    CustView9Column7: TcxGridDBColumn;
    CustView9Column8: TcxGridDBColumn;
    CustView9Column9: TcxGridDBColumn;
    CustView9Column10: TcxGridDBColumn;
    CustView9Column11: TcxGridDBColumn;
    CustView9Column12: TcxGridDBColumn;
    CustView9Column13: TcxGridDBColumn;
    CustView9Column14: TcxGridDBColumn;
    cxGrid11: TcxGrid;
    CustView10: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    CustView10Column1: TcxGridDBColumn;
    CustView10Column2: TcxGridDBColumn;
    CustView10Column3: TcxGridDBColumn;
    CustView10Column4: TcxGridDBColumn;
    CustView10Column5: TcxGridDBColumn;
    CustView10Column6: TcxGridDBColumn;
    CustView10Column7: TcxGridDBColumn;
    CustView10Column8: TcxGridDBColumn;
    CustView10Column9: TcxGridDBColumn;
    CustView10Column10: TcxGridDBColumn;
    CustView10Column11: TcxGridDBColumn;
    CustView10Column12: TcxGridDBColumn;
    pm_excel8_1: TPopupMenu;
    MenuItem10: TMenuItem;
    pm_excel8_2: TPopupMenu;
    MenuItem7: TMenuItem;
    cxBrNo8: TcxTextEdit;
    cxHdNo8: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxButton59: TcxButton;
    cxLabel216: TcxLabel;
    lbl2: TcxLabel;
    edtResultSearch: TcxTextEdit;
    btnResultSearch: TcxButton;
    cbbResultSearch: TcxComboBox;
    cxGridCustom: TcxGrid;
    cxViewCustom: TcxGridDBTableView;
    cxCol1: TcxGridDBColumn;
    cxCol2: TcxGridDBColumn;
    cxCol3: TcxGridDBColumn;
    cxCol4: TcxGridDBColumn;
    cxCol5: TcxGridDBColumn;
    cxCol6: TcxGridDBColumn;
    cxCol7: TcxGridDBColumn;
    cxCol8: TcxGridDBColumn;
    cxCol9: TcxGridDBColumn;
    cxCol10: TcxGridDBColumn;
    cxCol11: TcxGridDBColumn;
    cxCol12: TcxGridDBColumn;
    cxCol13: TcxGridDBColumn;
    cxCol14: TcxGridDBColumn;
    cxLevelCustom: TcxGridLevel;
    btnDeptModify: TcxButton;
    cxButton42: TcxButton;
    cxStyleCustLevel: TcxStyleRepository;
    stlCustLevelColor: TcxStyle;
    btnAll: TcxButton;
    cxGrid13: TcxGrid;
    cxGridBebinList: TcxGridDBTableView;
    cxGridDBColumnB0: TcxGridDBColumn;
    cxGridDBColumnB1: TcxGridDBColumn;
    cxGridDBColumnB2: TcxGridDBColumn;
    cxGridDBColumnB3: TcxGridDBColumn;
    cxGridDBColumnB4: TcxGridDBColumn;
    cxGridDBColumnB5: TcxGridDBColumn;
    cxGridDBColumnB6: TcxGridDBColumn;
    cxGridDBColumnB7: TcxGridDBColumn;
    cxGridDBColumnB8: TcxGridDBColumn;
    cxGridDBColumnB9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridDBColumnB12: TcxGridDBColumn;
    cxGridDBColumnB13: TcxGridDBColumn;
    cxGridDBColumnB14: TcxGridDBColumn;
    cxGridDBColumnB15: TcxGridDBColumn;
    cxGridDBColumnB16: TcxGridDBColumn;
    cxGridDBColumnB17: TcxGridDBColumn;
    cxGridDBColumnB18: TcxGridDBColumn;
    cxGridDBColumnB19: TcxGridDBColumn;
    cxGridDBColumnB20: TcxGridDBColumn;
    cxGridDBColumnB21: TcxGridDBColumn;
    cxGridDBColumnB22: TcxGridDBColumn;
    cxGridDBColumnB23: TcxGridDBColumn;
    cxGridDBColumnB24: TcxGridDBColumn;
    cxGridDBColumnB25: TcxGridDBColumn;
    cxGridDBColumnB26: TcxGridDBColumn;
    cxGridDBColumnB27: TcxGridDBColumn;
    cxGridDBColumnB28: TcxGridDBColumn;
    cxGridDBColumnB29: TcxGridDBColumn;
    CustView8: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    CustView8cxTreeListColumn1: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn2: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn3: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn6: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn4: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn5: TcxTreeListColumn;
    cxtrlstclmnTreeList1cxTreeListColumn7: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn2: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn3: TcxTreeListColumn;
    cxtrlstclmnCustView8cxTreeListColumn4: TcxTreeListColumn;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel54: TcxLabel;
    Shape1: TShape;
    cxLabel1: TcxLabel;
    Shape2: TShape;
    cxLabel2: TcxLabel;
    Shape3: TShape;
    Shape5: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape6: TShape;
    Shape7: TShape;
    cxGroupBox3: TcxGroupBox;
    cxLabel3: TcxLabel;
    Shape8: TShape;
    cxLabel4: TcxLabel;
    Shape9: TShape;
    cxLabel5: TcxLabel;
    Shape10: TShape;
    Shape11: TShape;
    pop_imtrgrd1: TPopupMenu;
    N5: TMenuItem;
    MenuItem1: TMenuItem;
    N4: TMenuItem;
    MenuItem6: TMenuItem;
    N8: TMenuItem;
    Shape4: TShape;
    cxLabel6: TcxLabel;
    cb_Contract: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbKeynumber01Click(Sender: TObject);
    procedure cxButton39Click(Sender: TObject);
    procedure cxButton38Click(Sender: TObject);
    procedure cxButton37Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxButton40Click(Sender: TObject);
    procedure cxButton42Click(Sender: TObject);
    procedure cxButton43Click(Sender: TObject);
    procedure cxButton44Click(Sender: TObject);
    procedure edCustName05KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton45Click(Sender: TObject);
    procedure cxButton46Click(Sender: TObject);
    procedure CustView9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CustView10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustView10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem7Click(Sender: TObject);
    procedure cxButton41Click(Sender: TObject);
    procedure CustView9CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CustView10CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton59Click(Sender: TObject);
    procedure cbbBubInMngCustomResultSearchPropertiesChange(
      Sender: TObject);
    procedure btnResultSearchClick(Sender: TObject);
    procedure btnDeptModifyClick(Sender: TObject);
    procedure MenuItem06Click(Sender: TObject);
    procedure CustView8SelectionChanged(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid11Resize(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure cb_ContractClick(Sender: TObject);
    procedure CustView9DataControllerSortingChanged(Sender: TObject);
    procedure CustView9ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewCustomColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxViewCustomDataControllerSortingChanged(Sender: TObject);
    procedure CustView10DataControllerSortingChanged(Sender: TObject);
    procedure CustView10ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
    //GReceiveMainText: string;
    UsrNameReg: TRegistry;
    sFooter, sHeader, dt_sysdate2: string;
    gbControlKeyDown: Boolean;
    nFocus : integer;
    FDetailKeyNum: string;

    // 엑셀다운 내용(조회시 조회조건 기록)
    FExcelDownBubin,
    FExcelDownBubinCust,
    FExcelDownBubinNormal,
    FExcelDownBubinUsed,
		FExcelDownBubinDaily,
		FExcelDownBubinAuth,
		FExcelDownWithHolding: string;

    AIndex : Integer;
    procedure cxGridCopy(ASource, ATarget: TcxGridDBTableView; AKeyIndex: Integer; AKeyValue: string);

    function DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
    function DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
    procedure RequestData(AData: string);
  public
    { Public declarations }

    CutSeqList : TStringList;
    iAddCnt : integer;
		Click_chk : integer;
		iFlag : integer;
    // 좌측 메뉴 지사선택
    lb_st_customer, lbNoSms: TStringList;
    procedure proc_init;
    procedure proc_BrNameSet;
    procedure proc_delete_gbroup(sCode: string);
    procedure proc_BubinCust_Search(iType: Integer);
    procedure proc_NotBubinCust_Search;
    procedure proc_cust_bubin_Modify(iType: Integer; advGrid:
      TcxGridDBTableView);
    procedure proc_BubinManage;
    // 전문 응답 처리
    procedure proc_recieve(slList: TStringList);
    function func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
		function GetDeptCustomerCount(AHdNo, ABrNo, ADeptCode: string): Integer;
		procedure proc_BubinList;
	end;

var
  Frm_CUTB1: TFrm_CUTB1;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_xml,
  xe_Query, xe_packet, xe_CUT09, xe_CUT011, xe_CUT013, xe_Flash;

procedure TFrm_CUTB1.proc_init;
var
  i: Integer;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;

  edBubinName01.Text := '';
  cbGubun08.ItemIndex := 0;
  edCustName05.Text := '';
  edCustTel04.Text := '';

  edBubinName02.Text := '';
  cxTextEdit15.Text := '';

  for i := 0 to CustView8.ColumnCount - 1 do
    CustView8.Columns[i].DataBinding.ValueType := 'String';
  CustView8.Columns[1].DataBinding.ValueType := 'Integer';

  CustView9.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView9.ColumnCount - 1 do
    CustView9.Columns[i].DataBinding.ValueType := 'String';
  CustView9.Columns[9].DataBinding.ValueType := 'Currency';

  cxViewCustom.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to cxViewCustom.ColumnCount - 1 do
    cxViewCustom.Columns[i].DataBinding.ValueType := 'String';
  cxViewCustom.Columns[9].DataBinding.ValueType := 'Currency';

  CustView10.Columns[0].DataBinding.ValueType := 'Integer';
  for i := 1 to CustView10.ColumnCount - 1 do
    CustView10.Columns[i].DataBinding.ValueType := 'String';
  CustView10.Columns[8].DataBinding.ValueType := 'Currency';
end;


procedure TFrm_CUTB1.proc_recieve(slList: TStringList);
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
          13:
            begin
              CustView8.BeginUpdate;
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
                  ls_Rcrd := TSTringList.Create;
                  try
                    for i := 0 to lst_Result.length - 1 do
                    begin
                      Application.ProcessMessages;
                      GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);
                      case length(ls_Rcrd[5]) of
                        5:
                          begin
                            Node := CustView8.Root.AddChild;
                          end;
                        8:
                          begin
                            bCheck := False;
                            for iIdx := 0 to
                              CustView8.Root.Count - 1 do
                            begin
                              if
                                CustView8.Root.Items[iIdx].Values[7] =
                                copy(ls_Rcrd[5], 1, 5) then
                              begin
                                Node := CustView8.Root.Items[iIdx].AddChild;
                                bCheck := True;
                                break;
                              end;
                            end;
                            if not bCheck then
                              Node := CustView8.Root.AddChild;
                          end;
                        11:
                          begin
                            bCheck := False;
                            for k := 0 to CustView8.Root.Count - 1 do
                            begin
                              if
                                CustView8.Root.Items[k].HasChildren then
                              begin
                                for iIdx := 0 to CustView8.Root.Items[k].Count - 1 do
                                begin
                                  if CustView8.Root.Items[k].Items[iIdx].Values[7] = copy(ls_Rcrd[5], 1, 8) then
                                  begin
                                    Node := CustView8.Root.Items[k].Items[iIdx].AddChild;
                                    bCheck := True;
                                    break;
                                  end;
                                end;
                              end;
                            end;
                            if not bCheck then
                              Node := CustView8.Root.AddChild;
                          end;
                      end;
                      iCnt := iCnt + 1;
                      //  법인명, 부서명, 담당자명, 연락처, 법인코드, 요금타입,
                      // Node := Node.AddChild;
                      Node.Values[0] := ''; // IntToStr(i+1);
                      Node.Values[1] := IntToStr(iCnt);
                      Node.Values[2] := ls_Rcrd[0]; // 법인명
                      Node.Values[3] := ls_Rcrd[1]; // 부서명
                      Node.Values[4] := ls_Rcrd[4]; // 요금타입
                      Node.Values[5] := ls_Rcrd[2]; // 담당자
                      Node.Values[6] := ls_Rcrd[3]; // 연락처
                      Node.Values[7] := ls_Rcrd[5]; // 법인코드
                      Node.Values[8] := ls_Rcrd[6]; // 정산일
                      Node.Values[9] := ls_Rcrd[7]; // 계약일
                      Node.Values[10] := ls_Rcrd[8]; // 종료일
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView8.EndUpdate;
              CustView8.FullExpand;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
          14:
            begin
              CustView9.BeginUpdate;

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
                      iRow := CustView9.DataController.AppendRecord;
                      CustView9.DataController.Values[iRow, 0] := iRow + 1;
                      CustView9.DataController.Values[iRow, 1] := ls_rcrd[0];
                      CustView9.DataController.Values[iRow, 2] := strtocall(ls_rcrd[1]);
                      CustView9.DataController.Values[iRow, 3] := ls_rcrd[2];
                      CustView9.DataController.Values[iRow, 4] := ls_rcrd[3];
                      CustView9.DataController.Values[iRow, 5] := ls_rcrd[4];
                      CustView9.DataController.Values[iRow, 6] := strtocall(ls_rcrd[5]);
                      CustView9.DataController.Values[iRow, 7] := ls_rcrd[6];
                      CustView9.DataController.Values[iRow, 8] := ls_rcrd[7];
                      if StrToIntDef(ls_Rcrd[8], 0) = 0 then
                        ls_Rcrd[8] := '0';
                      CustView9.DataController.Values[iRow, 9] := ls_rcrd[8];
                      sEndDate := ls_rcrd[9];
                      if Trim(sEndDate) <> '' then
                        CustView9.DataController.Values[iRow, 10] := copy(sEndDate, 1, 4) +
                          '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                      else
                        CustView9.DataController.Values[iRow, 10] := '';
                      CustView9.DataController.Values[iRow, 11] := ls_rcrd[10];
                      CustView9.DataController.Values[iRow, 12] := ls_rcrd[11];
                      CustView9.DataController.Values[iRow, 13] := ls_rcrd[12];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView9.EndUpdate;
              frm_Main.sbar_Message.Panels[4].Text := '';
            end;
          15:
            begin
              CustView10.BeginUpdate;
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
                      iRow := CustView10.DataController.AppendRecord;
                      CustView10.DataController.Values[iRow, 0] := iRow + 1;
											CustView10.DataController.Values[iRow, 1] := ls_rcrd[0];
											CustView10.DataController.Values[iRow, 2] := strtocall(ls_rcrd[1]);
                      CustView10.DataController.Values[iRow, 3] := ls_rcrd[2];
                      CustView10.DataController.Values[iRow, 4] := strtocall(ls_rcrd[3]);
                      CustView10.DataController.Values[iRow, 5] := ls_rcrd[4];
                      CustView10.DataController.Values[iRow, 6] := ls_rcrd[5];
                      CustView10.DataController.Values[iRow, 7] := ls_rcrd[6];
                      if StrToIntDef(ls_Rcrd[7], 0) = 0 then
                        ls_Rcrd[7] := '0';
                      CustView10.DataController.Values[iRow, 8] := ls_rcrd[7];
                      sEndDate := ls_rcrd[8];
                      if Trim(sEndDate) <> '' then
                        CustView10.DataController.Values[iRow, 9] := copy(sEndDate, 1, 4) +
                          '-' + copy(sEndDate, 5, 2) + '-' + copy(sEndDate, 7, 2)
                      else
                        CustView10.DataController.Values[iRow, 9] := '';
                      CustView10.DataController.Values[iRow, 10] := ls_rcrd[9];
                      CustView10.DataController.Values[iRow, 11] := ls_rcrd[10];
                    end;
                  finally
                    ls_Rcrd.Free;
                  end;
                end;
              end;
              CustView10.EndUpdate;
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

procedure TFrm_CUTB1.FormCreate(Sender: TObject);
var i : Integer;
begin
  SetWindowPos(Self.handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0);

  if TCK_USER_PER.CUR_BubinMngModify = '1' then
	begin
		cxButton37.Enabled := True;
    cxButton38.Enabled := True;
    cxButton45.Enabled := True;
    cxButton46.Enabled := True;
  end else
  begin
    cxButton37.Enabled := False;
    cxButton38.Enabled := False;
    cxButton45.Enabled := False;
    cxButton46.Enabled := False;
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

  for i := 0 to cxGridBebinList.ColumnCount - 1 do
  begin
    cxGridBebinList.Columns[i].DataBinding.ValueType := 'String';
  end;
  cxGridBebinList.DataController.SetRecordCount(0);
end;

procedure TFrm_CUTB1.FormDestroy(Sender: TObject);
begin
  Frm_CUTB1 := Nil;
end;

procedure TFrm_CUTB1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsrNameReg.WriteString('footer', sFooter);
  UsrNameReg.WriteString('header', sHeader);
  UsrNameReg.CloseKey;
  FreeAndNil(UsrNameReg);
  FreeAndNil(lb_st_customer);
  FreeAndNil(lbNoSms);
  Action := caFree;
end;

procedure TFrm_CUTB1.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbCustKeynumber08.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbCustKeynumber08.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbCustKeynumber08.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
  lbCustCompany09.Caption := sName;

  cxHdNo8.Text := sHdNo;
  cxBrNo8.Text := sBrNo;

{  if cbCustKeynumber08.Properties.Items.Count > 1 then
    cbCustKeynumber08.Properties.Items.Insert(0, '전체');}

  cbCustKeynumber08.ItemIndex := 0;
  cbCustKeynumber08.Tag := 0;
end;

procedure TFrm_CUTB1.proc_BubinManage;
var
  ls_TxLoad, sNode, sWhere, sTemp, sTel1, sTel2, sCbcode, msg: string;
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
//-    Panel14.Enabled := False;
    Panel15.Enabled := False;
    Panel16.Enabled := False;
    Exit;
  end;

  if (GT_USERIF.LV = '10') and (not IsPassedManagementCu(GT_SEL_BRNO.BrNo)) then
  begin
    msg := '[%s(%s)]  지사에서 고객관련 관리권한 이관(콜센터 상담원)을 설정 하지 않았습니다.'
        + #13#10'(해당 지사관리자에게 관리권한 이관[회사>지사관리>상세설정]을 요청바랍니다.)';
    GMessagebox(Format(msg, [GT_SEL_BRNO.BrNo, GT_SEL_BRNO.BrName]), CDMSI);
//-    Panel14.Enabled := False;
    Panel15.Enabled := False;
    Panel16.Enabled := False;
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인관리(법인업체)') then Exit;

//-  Panel14.Enabled := True;
  Panel15.Enabled := True;
  Panel16.Enabled := True;

  if (cbCustKeynumber08.Text = '') then
  begin
    CustView8.Root.TreeList.Clear;

    edBubinName02.Clear;
    cxTextEdit15.Clear;
    CustView9.DataController.SetRecordCount(0);
    cxViewCustom.DataController.SetRecordCount(0);
    Exit;
  end;

  ls_rxxml := GTx_UnitXmlLoad('SEL04.XML');
  xdom := ComsDomDocument.Create;
  try
    if (not xdom.loadXML(ls_rxxml)) then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
      Exit;
    end;

    //////////////////////////////////////////////////////////////////////////////
    // 법인>법인관리>법인업체]10건/A100-B100/대표번호:16886618/법인,부서명:테크노
    FExcelDownBubin := Format('%s/대표번호:%s%s',
      [
          GetSelBrInfo
        , cbCustKeynumber08.Text
        , IfThen(edBubinName01.Text = '', '', Format('/법인,부서명:%s', [edBubinName01.Text]))
      ]);
    //////////////////////////////////////////////////////////////////////////////

    if edBubinName01.Text <> '' then
      sWhere := ' AND ((CB_CORP_NAME LIKE ''%' + En_Coding(Param_Filtering(edBubinName01.Text)) +
        '%'') OR (CB_DEPT_NAME LIKE ''%' + En_Coding(Param_Filtering(edBubinName01.Text)) +
        '%'')) ';

    case cb_Contract.ItemIndex of
     1: sWhere := sWhere + ' AND TAX_TYPE = ''0'' ';
     2: sWhere := sWhere + ' AND TAX_TYPE = ''1'' ';
     3: sWhere := sWhere + ' AND TAX_TYPE = ''2'' ';
    end;

    sWhere := sWhere + ' ORDER BY CB_CODE ';

    sNode := '/cdms/header/UserID';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := En_Coding(GT_USERIF.ID);
    sNode := '/cdms/header/ClientVer';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := VERSIONINFO;
    sNode := '/cdms/header/ClientKey';
    lst_Node := xdom.documentElement.selectNodes(sNode);
    lst_Node.item[0].attributes.getNamedItem('Value').Text := self.Caption + '13';
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
    lst_Node.item[0].attributes.getNamedItem('Value').Text := cxHdNo8.Text;
    lst_Node.item[1].attributes.getNamedItem('Seq').Text := '2';
    lst_Node.item[1].attributes.getNamedItem('Value').Text := cxBrNo8.Text;
    lst_Node.item[2].attributes.getNamedItem('Seq').Text := '3';
    lst_Node.item[2].attributes.getNamedItem('Value').Text := StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]);

    ls_TxLoad := '<?xml version="1.0" encoding="euc-kr"?>' + #13#10 + xDom.documentElement.xml;
    Screen.Cursor := crHourGlass;
    slReceive := TStringList.Create;
    try
      frm_Main.proc_SocketWork(False);
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False, 30000) then
      begin
        CustView8.Root.TreeList.Clear;

        Application.ProcessMessages;
        proc_recieve(slReceive);

        edBubinName02.Clear;
        cxTextEdit15.Clear;
        CustView9.DataController.SetRecordCount(0);
        cxViewCustom.DataController.SetRecordCount(0);
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

procedure TFrm_CUTB1.cbKeynumber01Click(Sender: TObject);
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
        begin
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

  lbCustCompany09.Caption := sName;
  cxHdNo8.Text := sHdNo;
  cxBrNo8.Text := sBrNo;
  CustView8.Root.TreeList.Clear;
  proc_BubinManage;
  Custview10.DataController.SetRecordCount(0);
  cxGridBebinList.DataController.SetRecordCount(0);
end;

procedure TFrm_CUTB1.cb_ContractClick(Sender: TObject);
begin
  proc_BubinManage;
end;

function TFrm_CUTB1.func_buninSearch(sBrNo, sKeyNum, sCode: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to GT_BUBIN_INFO.brNo_KeyNum.Count - 1 do
  begin
    if (GT_BUBIN_INFO.brNo_KeyNum.Strings[i] = Rpad(sbrNo, 5, ' ') +
      Rpad(StringReplace(sKeyNum,
      '-', '', [rfReplaceAll]), 15, ' '))
      and (GT_BUBIN_INFO.cbcode[i] = sCode + ',' + sBrNo) then
    begin
      Result := Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]),  1, 60)) + ' / ' +
                Trim(Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[i]), 61, 60));
      Break;
    end;
  end;
end;

procedure TFrm_CUTB1.cxButton39Click(Sender: TObject);
begin
  proc_BubinManage;
end;

procedure TFrm_CUTB1.proc_delete_gbroup(sCode: string);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxQry, ls_TxLoad, ls_TxSend, ls_Msg_Err, sMsg, sBrNo: string;
  sParam, sTemp: string;
  ls_rxxml: WideString;
  iIdx: Integer;
  xdom: msDomDocument;
  slReceive: TStringList;
  ErrCode: integer;
  CustomerCount: Integer;
begin
  if CustView8.Selections[0].HasChildren then
  begin
    GMessagebox('서브 법인(업체)가 있으면 삭제할 수 업습니다.', cdmsi);
    exit;
  end;

  sBrNo := cxBrNo8.Text;
  sTemp := CustView8.Selections[0].Values[7];

  CustomerCount := GetDeptCustomerCount(cxHdNo8.Text, cxBrNo8.Text, sTemp);

  case CustomerCount of
  -1:
    begin
      GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
      Exit;
    end;
  0:
    ;
  else
    begin
      GMessagebox(Format('법인 부서에 소속된 고객수가 [%d]명 존재합니다.', [CustomerCount]) + #13#10
        + '해당 고객을 부서변경/삭제 후 부서 삭제를 시도 바랍니다.', CDMSI);
      Exit;
    end;
  end;

  if GMessagebox('삭제하시겠습니까?', CDMSQ) = IDCANCEL then Exit;

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');
  sTemp := 'DELETE_CUST_BGROUP(?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', sCode, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sBrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', cxHdNo8.Text, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', Self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(3), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ParamString', sParam, [rfReplaceAll]);

  Screen.Cursor := crHandPoint;
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
            GMessagebox('성공하였습니다.', CDMSI);
            CustView8.Root.TreeList.Clear;
            proc_BubinManage;
            CustView9.DataController.SetRecordCount(0);
          end
          else
            if ('0000' = ls_Msg_Err) and ('2' = sMsg) then
          begin
            GMessagebox('서브 법인(업체)이 있으면 삭제할 수 없습니다.' + #13#10 +
              '먼저 서브 법인(업체)을 삭제하세요!', CDMSI);
          end
          else
          begin
            GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
          end;
        except
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
        end;
      end;
    end;
  finally
    Frm_Main.proc_bubinlist_insert;
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTB1.proc_BubinCust_Search(iType: Integer);
  function _GetRootBubinName: string;
  var
    Node: TcxTreeListNode;
  begin
    Node := CustView8.Selections[0];

    Result := Node.Values[2] + ',' + Node.Values[3];
    OutputDebugString(PChar(Result));
    while Node.Level > 0 do
    begin
      Node := Node.Parent;
      Result := Node.Values[2] + ',' + Node.Values[3];
    OutputDebugString(PChar(Result));
    end;
  end;
var
  sWhere, sCbcode: string;
  ls_TxSend, ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
  if CustView9.DataController.RecordCount > 0 then
    exit;

  if CustView8.SelectionCount = 0 then
  begin
    GMessagebox('법인업체를 선택하셔야 합니다.', CDMSI);
    exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인관리(소속고객)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // 법인>법인관리>소속고객]10건/A100-B100/대표번호:16886618/부서:테크노-모바일사업팀
  FExcelDownBubinCust := Format('%s/대표번호:%s/법인부서:%s',
    [
        GetSelBrInfo
      , cbCustKeynumber08.Text
      , IfThen(iType = 1, _GetRootBubinName + ' 전체', CustView8.Selections[0].Values[2] + '-' + CustView8.Selections[0].Values[3])
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sCbcode := CustView8.Selections[0].Values[7];

  edBubinName02.Text := CustView8.Selections[0].Values[2] + '/' + CustView8.Selections[0].Values[3];
  cxTextEdit15.Text := sCbcode;

  if iType = 1 then
  begin
    sCbcode := Copy(sCbcode, 1, 5);
		sWhere := Format(' AND CU.BR_NO = ''%s'' AND CU.CB_CODE LIKE ''%s%%''', [cxBrNo8.Text, sCbcode]);
//    sWhere := ' AND CU.BR_NO = ''' + cxBrNo8.Text + ''' AND CU.CB_CODE LIKE ''' + sCbcode + '%'' ';
  end
  else if iType = 0 then
  begin
    sWhere := Format('AND CU.BR_NO = ''%s'' AND CU.CB_CODE = ''%s''', [cxBrNo8.Text, sCbcode]);
//    sWhere := ' AND CU.BR_NO = ''' + cxBrNo8.Text + ''' AND CU.CB_CODE = ''' + sCbcode + ''' ';
  end;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_BUBIN_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [cxHdNo8.Text, sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '14', [rfReplaceAll]);
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

procedure TFrm_CUTB1.cxButton38Click(Sender: TObject);
begin
  if CustView8.SelectionCount > 0 then
  begin
    proc_delete_gbroup(CustView8.Selections[0].Values[7]);
  end;
end;

procedure TFrm_CUTB1.cxButton37Click(Sender: TObject);
var
  sBrNo: string;
begin
  sBrNo := cxBrNo8.Text;
  if sBrNo= '' then
  begin
    GMessagebox('지사를 먼저 선택하세요.', CDMSI);
    Exit;
  end;

  if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
  Frm_CUT09.PnlTitle.Caption := '  법인(업체) 세부 등록하기';
  Frm_CUT09.Tag := 0;
  Frm_CUT09.proc_init;
  Frm_CUT09.edKeyNum.Text := StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]);
  Frm_CUT09.edHdNo.Text := cxHdNo8.Text;
  Frm_CUT09.edBrNo.Text := cxBrNo8.Text;
  Frm_CUT09.Show;
end;

procedure TFrm_CUTB1.N5Click(Sender: TObject);
begin
  if CustView8.SelectionCount > 0 then
  begin
    if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
    Frm_CUT09.PnlTitle.Caption := '  법인(업체) 세부 수정하기';
    Frm_CUT09.Tag := 1;
    Frm_CUT09.edCbCode.Text := CustView8.Selections[0].Values[7];
    Frm_CUT09.edBrNo.Text := cxBrNo8.Text;
    Frm_CUT09.proc_init;
    Frm_CUT09.Show;
  end;
end;

procedure TFrm_CUTB1.MenuItem1Click(Sender: TObject);
begin
  cxButton37Click(cxButton37);
end;

procedure TFrm_CUTB1.N4Click(Sender: TObject);
begin
  if Length(CustView8.Selections[0].Values[7]) >= 9 then
  begin
    GMessagebox('서브는 2단계까지만 등록됩니다.', CDMSI);
    Exit;
  end;

  if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
  Frm_CUT09.PnlTitle.Caption := '  법인(업체) 세부 등록하기';
  Frm_CUT09.Tag := 2;
  Frm_CUT09.edCbCode.Text := CustView8.Selections[0].Values[7];
  Frm_CUT09.edBrNo.Text := cxBrNo8.Text;
  Frm_CUT09.edHdNo.Text := cxHdNo8.Text;
  Frm_CUT09.edKeyNum.Text := StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]);
  Frm_CUT09.proc_init;
  Frm_CUT09.Show;
end;

procedure TFrm_CUTB1.cxButton40Click(Sender: TObject);
var
  iBrNo, iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 5;
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.cboBranch.Tag := 5;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := '';
  Frm_CUT011.proc_search_brKeyNum(cxBrNo8.Text, StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]));
	Frm_CUT011.Left := (Screen.Width - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;

  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
  Frm_CUT011.rdoCuGb3.Checked := True;
  if cxTextEdit15.Text <> '' then
  begin
    sSeq := cxTextEdit15.Text;
    // 권한 적용 (지호 2008-08-19)
    iSeq := Frm_CUT011.cboBubinCode.Properties.Items.IndexOf(sSeq + ',' + cxBrNo8.Text);
    if iSeq >= 0 then
    begin
      Frm_CUT011.cboCuBubin.Enabled := False;
      Frm_CUT011.cboCuBubin.ItemIndex := iSeq;
    end;
  end else
  begin
    Frm_CUT011.cboCuBubin.Enabled := True;
    Frm_CUT011.cboCuBubin.ItemIndex := 0;
  end;
end;

procedure TFrm_CUTB1.cxButton42Click(Sender: TObject);
begin
  if CustView8.SelectionCount = 0 then
  begin
    GMessagebox('일단 법인 업체먼저 선택을 하셔야 합니다.', CDMSI);
    exit;
  end;
  CustView9.DataController.SetRecordCount(0);

  cxGrid10.Visible      := True;
  cxGridCustom.Visible  := False;

  proc_BubinCust_Search(0);
end;

procedure TFrm_CUTB1.cxButton43Click(Sender: TObject);
begin
  CustView9.DataController.SetRecordCount(0);
  
  cxGrid10.Visible      := True;
  cxGridCustom.Visible  := False;

  proc_BubinCust_Search(1);
end;

procedure TFrm_CUTB1.cxButton44Click(Sender: TObject);
begin
  CustView10.DataController.SetRecordCount(0);
  proc_NotBubinCust_Search;
end;

procedure TFrm_CUTB1.proc_NotBubinCust_Search;
var
  sWhere, sCbcode: string;
  ls_TxSend, ls_TxQry, ls_TxLoad, sQueryTemp: string; // XML File Load
  slReceive: TStringList;
  ErrCode: integer;
begin
  if CustView10.DataController.RecordCount > 0 then
    Exit;

  if cbCustKeynumber08.Text = '' then
  begin
    GMessagebox('대표번호를 선택해 주세요.', CDMSI);
    Exit;
  end;

  if (GT_USERIF.LV = '10') and ((GT_SEL_BRNO.GUBUN <> '1') or (GT_SEL_BRNO.BrNo <> GT_USERIF.BR)) then
  begin
    GMessagebox('상담원 권한은 소속 지사만 조회할수 있습니다.', CDMSI);
    Exit;
  end;

  if fGetChk_Search_HdBrNo('법인관리(일반고객)') then Exit;

  //////////////////////////////////////////////////////////////////////////////
  // 법인>법인관리>일반고객]10건/A100-B100/대표번호:16886618/고객구분:전체/고객명:홍길동/전화:011
  FExcelDownBubinNormal := Format('%s/대표번호:%s/고객구분:%s%s%s',
    [
        GetSelBrInfo
      , cbCustKeynumber08.Text
      , cbGubun08.Text
      , IfThen(edCustName05.Text = '', '', '/고객명:' + edCustName05.Text)
      , IfThen(edCustTel04.Text = '', '', '/전화:' + edCustTel04.Text)
    ]);
  //////////////////////////////////////////////////////////////////////////////

  sWhere := ' AND CU.BR_NO = ''' + cxBrNo8.Text + ''' AND CU.CB_CODE IS NULL ';

  case cbGubun08.ItemIndex of
    1: sWhere := sWhere + ' AND CU.CU_TYPE = ''0'' ';
    2: sWhere := sWhere + ' AND CU.CU_TYPE = ''1'' ';
    3: sWhere := sWhere + ' AND CU.CU_TYPE = ''3'' ';
  end;

  if edCustName05.Text <> '' then
    sWhere := sWhere + ' AND CU.CMP_NM LIKE ''%' + Param_Filtering(edCustName05.Text) + '%'' ';

  if edCustTel04.Text <> '' then
    sWhere := sWhere +
      ' AND CU.CU_SEQ IN (SELECT CU_SEQ FROM CDMS_CUSTOMER_TEL WHERE CU_TEL LIKE ''' +
      StringReplace(Param_Filtering(edCustTel04.Text), '-', '', [rfReplaceAll]) + '%'') ';

  sWhere := sWhere + ' AND KEY_NUMBER = ''' + cbCustKeynumber08.Text + '''';

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_NOT_BUBIN_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [cxHdNo8.Text, sWhere]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '15', [rfReplaceAll]);
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

procedure TFrm_CUTB1.edCustName05KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Ord(Key) = VK_RETURN) then
    cxButton44Click(cxButton44);
end;

procedure TFrm_CUTB1.cxButton45Click(Sender: TObject);
var
  i, j, iSeq: Integer;
  sList: TStringList;
  sSeq: string;
  iRow: Integer;
  sCustYn, sUseYn, sBrNo: string;
begin

  iRow := GT_BUBIN_INFO.cbcode.IndexOf(cxTextEdit15.Text + ',' + cxBrNo8.Text);

  if iRow = -1 then
  begin
    GMessagebox('일단 법인업체를 먼저 선택하셔야 합니다.', CDMSI);
    exit;
  end;

  sCustYn := Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 55, 1);
  sUseYn  := Copy(AnsiString(GT_BUBIN_INFO.cbEtc.Strings[iRow]), 54, 1);

  if sCustYn = 'n' then
  begin
    GMessagebox('선택 법인업체는 고객을 추가할수 없습니다.', CDMSI);
    Exit;
  end;

  if sUseYn = 'n' then
  begin
    GMessagebox('선택 법인업체는 사용업체가 아닙니다.', CDMSI);
    Exit;
  end;

  proc_cust_bubin_Modify(0, CustView10);
end;

procedure TFrm_CUTB1.proc_cust_bubin_Modify(iType: Integer;
  advGrid: TcxGridDBTableView);
var
  ls_rxxml: WideString;
  ls_TxLoad, ls_TxSend, rv_str, ls_TxQry, sQueryTemp: string;
  sSet, sCbCode, sWhere, sMsg, ls_Msg_Err: string;
  sList, sRow: TStringList;
  i, j, k, iSeq, iCnt, sCnt, fCnt, iCuseq: Integer;
  sSeq, sBrNo: string;
  slReceive: TStringList;
  ErrCode: integer;
begin
  sCbCode := cxTextEdit15.Text;

  if iType = 0 then
  begin
    sSet := 'CU_TYPE = ''3'', CB_CODE = ''' + sCbCode + ''' ';
    sMsg := '[%s]법인에 %s명을 등록 하시겠습니까?';
  end else
  begin
    sSet := 'CU_TYPE = ''0'', CB_CODE = '''' ';
    sMsg := '[%s]법인에서 %s명을 삭제 하시겠습니까?';
  end;
  iCnt := advGrid.DataController.GetSelectedCount;
  iCuseq := advGrid.GetColumnByFieldName('고객코드').Index;
  sWhere := '';
  if iCnt < 1 then
  begin
    GMessagebox('선택된 고객이 없습니다.' + #13#10 +
      '먼저 고객을 선택하세요!', CDMSI);
    Exit;
  end;

  sMsg := Format(sMsg, [sCbCode, IntToStr(iCnt)]);
  if GMessagebox(sMsg, CDMSQ) <> IDOK then
    Exit;
    
  Screen.Cursor := crHandPoint;

  sCnt := 0;
  fCnt := 0;
  try
    for I := 0 to advGrid.DataController.RecordCount - 1 do
    begin
      if advGrid.ViewData.Records[I].Selected then
      begin
        sWhere := advGrid.ViewData.Records[I].Values[iCuseq];
        advGrid.ViewData.Records[I].Selected := False;
        ls_TxLoad := GTx_UnitXmlLoad('QUERY.XML');
        fGet_BlowFish_Query(GSQ_CUSTOMER_BUBIN_MODIFY, sQueryTemp);
        ls_TxQry := Format(sQueryTemp, [sSet, sWhere]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'CUSTBUBINMOD', [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

        slReceive := TStringList.Create;
        try
          if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
          begin
            rv_str := slReceive[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
              if ('0000' = ls_Msg_Err) then
              begin
                sCnt := sCnt + 1; //성공건수
              end else
              begin
                fCnt := fCnt + 1; //실패건수
              end;
            end;
          end;
        finally
          FreeAndNil(slReceive);
          Screen.Cursor := crDefault;
          Frm_Flash.Hide;
        end;
      end;
    end;
  except

  end;
  cxButton42Click(cxButton42);
  Sleep(1000);
  GMessagebox('성공건수 : ' + IntToStr(sCnt) + #13#10 + '실패건수 : ' +
    IntToStr(fCnt), CDMSI);
  Screen.Cursor := crDefault;
end;

procedure TFrm_CUTB1.cxButton46Click(Sender: TObject);
var
  iRow: Integer;
begin
  iRow := GT_BUBIN_INFO.cbcode.IndexOf(cxTextEdit15.Text + ',' + cxBrNo8.Text);

  if iRow = -1 then
  begin
    GMessagebox('일단 법인업체를 먼저 선택하셔야 합니다.', CDMSI);
    exit;
  end;

  if cxGridCustom.Visible then
    proc_cust_bubin_Modify(1, cxViewCustom)
  else
    proc_cust_bubin_Modify(1, CustView9);
end;

procedure TFrm_CUTB1.CustView9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView9.OptionsSelection.CellMultiSelect := False;
    CustView9.OptionsSelection.CellSelect := False;
    CustView9.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTB1.CustView9MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView9.OptionsSelection.CellMultiSelect := True;
    CustView9.OptionsSelection.CellSelect := True;
    CustView9.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTB1.CustView10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_CONTROL then
  begin
    gbControlKeyDown := True;
    CustView10.OptionsSelection.CellMultiSelect := False;
    CustView10.OptionsSelection.CellSelect := False;
    CustView10.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTB1.CustView10MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (gbControlKeyDown = False) and (Button = mbLeft) then
  begin
    CustView10.OptionsSelection.CellMultiSelect := True;
    CustView10.OptionsSelection.CellSelect := True;
    CustView10.OptionsSelection.MultiSelect := True;
  end;
end;

procedure TFrm_CUTB1.MenuItem06Click(Sender: TObject);
begin
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

  Frm_Main.sgExcel := '고객_법인관리.xls';
  Frm_Main.sgRpExcel := Format('법인>법인관리>법인업체]%s건/%s', [GetMoneyStr(CustView8.Count), FExcelDownBubin]);
  Frm_Main.cxTreeView := CustView8;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(2);
end;

procedure TFrm_CUTB1.MenuItem7Click(Sender: TObject);
begin
	if custview9.DataController.RecordCount = 0 then
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
  Frm_Main.sgRpExcel := Format('법인>법인관리>일반고객]%s건/%s', [GetMoneyStr(CustView10.DataController.RecordCount), FExcelDownBubinNormal]);
  Frm_Main.cxGridExcel := cxGrid11;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUTB1.cxButton41Click(Sender: TObject);
var
  iBrNo, iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
  AView: TcxGridDBTableView;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;

  if cxGridCustom.Visible then
    AView := cxViewCustom
  else
    AView := CustView9;

  iRow := AView.DataController.FocusedRecordIndex;
  if iRow = -1 then
    Exit;
    
  iKeyNum   := AView.GetColumnByFieldName('대표번호').Index;
  iSeq      := AView.GetColumnByFieldName('고객코드').Index;
  sBrNo     := cxBrNo8.Text;
  sKeyNum   := AView.DataController.Values[iRow, iKeyNum];
  sKeyNum   := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq      := AView.DataController.Values[iRow, iSeq];

  // 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.FControlInitial(False);
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);
	Frm_CUT011.Left := (Screen.Width  - Frm_CUT011.Width) div 2;
	Frm_CUT011.top  := (Screen.Height - Frm_CUT011.Height) div 2;
  if Frm_CUT011.top <= 10 then Frm_CUT011.top := 10;
  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUTB1.CustView9CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  cxButton41Click(cxButton41);
end;

procedure TFrm_CUTB1.CustView9ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTB1.CustView9DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView9, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTB1.CustView10CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iBrNo, iKeyNum, iSeq, iRow: Integer;
  sBrNo, sKeyNum, sSeq: string;
begin
  // 권한 적용 (지호 2008-08-19)
  if TCK_USER_PER.COM_CustModify <> '1' then
  begin
    GMessagebox('고객 수정권한이 없습니다.', CDMSI);
    exit;
  end;
  iRow := CustView10.DataController.FocusedRecordIndex;
  if iRow = -1 then
    exit;
  iKeyNum := CustView10.GetColumnByFieldName('대표번호').Index;
  iSeq := CustView10.GetColumnByFieldName('고객코드').Index;
  sBrNo := cxBrNo8.Text;
  sKeyNum := CustView10.DataController.Values[iRow, iKeyNum];
  sKeyNum := StringReplace(sKeyNum, '-', '', [rfReplaceAll]);
  sSeq := CustView10.DataController.Values[iRow, iSeq];
  // 6 : 수정창에서 고객수정 4 : 접수창에서 고객수정
  if ( Not Assigned(Frm_CUT011) ) Or ( Frm_CUT011 = Nil ) then Frm_CUT011 := TFrm_CUT011.Create(Nil);
  Frm_CUT011.Tag := 6;
  Frm_CUT011.Hint := IntToStr(Self.Tag);
  Frm_CUT011.clbCuSeq.Caption := sSeq;
  Frm_CUT011.proc_search_brKeyNum(sBrNo, sKeyNum);
  Frm_CUT011.Show;
  Frm_CUT011.proc_cust_Intit;
end;

procedure TFrm_CUTB1.CustView10ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTB1.CustView10DataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(CustView10, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTB1.cxButton59Click(Sender: TObject);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxQry, ls_TxLoad, ls_TxSend, ls_Msg_Err, sMsg, sBrNo: string;
  sParam, sTemp, sKeynum, sCustTel: string;
  ls_rxxml: WideString;
  iIdx: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  if (CustView10.DataController.RecordCount = 0) or
    (CustView10.DataController.GetSelectedCount =
    0) then
  begin
    GMessagebox('조회후 고객을 삭제하세요!', CDMSI);
    Exit;
  end;
  iIdx := CustView10.DataController.FocusedRecordIndex;
  sBrNo := cxBrNo8.Text;
  sKeynum := StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]);
  sCustTel := CustView10.DataController.Values[iIdx, 4];
  //GMessagebox('본사코드 : ' + GT_USERIF.HD + #13#10 + '지사코드 : '+sBrNo+#13#10+'전화번호 : ' + sCustTel + #13#10 + '대표번호 : ' + sKeynum, CDMSI);

  if GMessagebox('삭제고객번호 : ' + sCustTel + #13#10 +
    '삭제시 고객정보와 이용횟수, 마일리지가 삭제됩니다.' + #13#10 +
    '삭제하시겠습니까?', CDMSQ) <> idok then
    exit;

  sKeynum := StringReplace(sKeynum, '-', '', [rfReplaceAll]);
  sCustTel := StringReplace(sCustTel, '-', '', [rfReplaceAll]);

  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE.xml');

  sTemp := 'PROC_DELETE_CUSTOMER(?,?,?,?,?)';
  sParam := StringReplace(ls_Param, 'ParamString', cxHdNo8.Text, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sBrNo, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sKeynum, [rfReplaceAll]);
  sParam := sParam + StringReplace(ls_Param, 'ParamString', sCustTel, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'DELETECUST', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(4), [rfReplaceAll]);
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
            GMessagebox('성공하였습니다.', CDMSI);
            //proc_search_bubin;
            cxButton44Click(cxButton44);
          end else
          if ('0000' = ls_Msg_Err) and ('0' = sMsg) then
          begin
            GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
          end else
          begin
            GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
          end;

        except
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요',
            CDMSI);
        end;
      end;
    end;
  finally
    FreeAndNil(slReceive);
    Screen.Cursor := crDefault;
    Frm_Flash.Hide;
  end;
end;

procedure TFrm_CUTB1.cbbBubInMngCustomResultSearchPropertiesChange(
  Sender: TObject);
begin
  edtResultSearch.Enabled := (TcxComboBox(Sender).Text <> '전체');

  if edtResultSearch.Enabled then
    edtResultSearch.SetFocus;
end;

procedure TFrm_CUTB1.btnResultSearchClick(Sender: TObject);
var
  KeyIndex: Integer;
  KeyValue: string;
begin
  if CustView9.DataController.RecordCount = 0 then
  begin
    GMessagebox('검색 대상 고객정보가 없습니다.', CDMSI);
    Exit;
  end;

  // 전체 : -1
  KeyIndex := -1;
  if Assigned(CustView9.GetColumnByFieldName(cbbResultSearch.Text)) then
    KeyIndex := CustView9.GetColumnByFieldName(cbbResultSearch.Text).Index;
  KeyValue := edtResultSearch.Text;

  cxViewCustom.DataController.RecordCount := 0;
  cxGridCopy(CustView9, cxViewCustom, KeyIndex, KeyValue);
  if cxViewCustom.DataController.RecordCount = 0 then
  begin
    if KeyIndex >= 0 then
      GMessagebox('검색 결과가 없습니다.', CDMSI);
    cxGridCustom.Visible  := False;
    cxGrid10.Visible      := True;
  end else
  begin
    cxGridCustom.Visible  := True;
    cxGrid10.Visible      := False;
  end;
end;

procedure TFrm_CUTB1.cxGrid11Resize(Sender: TObject);
var iReSize, iOrgSize, imeoCuCCMemo, imeoCuWorMemo, iTop : integer;
begin
	iReSize := (cxGrid11.Height - 4) div 2;
  cxButton45.Top    := 143;
	cxButton45.Height := iReSize;

  cxButton46.Height := cxButton45.Height;
	cxButton46.Top := 145 + iReSize;
end;

procedure TFrm_CUTB1.cxGridCopy(ASource, ATarget: TcxGridDBTableView;
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

procedure TFrm_CUTB1.cxViewCustomColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  AIndex := AColumn.Index;
end;

procedure TFrm_CUTB1.cxViewCustomDataControllerSortingChanged(Sender: TObject);
begin
  gfSetIndexNo(cxViewCustom, AIndex, GS_SortNoChange);
end;

procedure TFrm_CUTB1.btnAllClick(Sender: TObject);
begin
  if ( Not Assigned(Frm_CUT013) ) Or ( Frm_CUT013 = Nil ) then Frm_CUT013 := TFrm_CUT013.Create(Nil);

  Frm_CUT013.FControlInitial(False);
  Frm_CUT013.cboBranch.Tag := 5;
  Frm_CUT013.proc_search_brKeyNum(cxBrNo8.Text, StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]));
  Frm_CUT013.Show;
  Frm_CUT013.proc_bubin_init;
end;

procedure TFrm_CUTB1.btnDeptModifyClick(Sender: TObject);
begin
  if CustView8.SelectionCount > 0 then
  begin
    if ( Not Assigned(Frm_CUT09) ) Or ( Frm_CUT09 = Nil ) then Frm_CUT09 := TFrm_CUT09.Create(Nil);
    Frm_CUT09.PnlTitle.Caption := '법인(업체) 세부 수정하기';
    Frm_CUT09.Tag := 1;
    Frm_CUT09.edCbCode.Text := CustView8.Selections[0].Values[7];
    Frm_CUT09.edBrNo.Text := cxBrNo8.Text;
    Frm_CUT09.proc_init;
    Frm_CUT09.Show;
  end else
  begin
    GMessagebox('부서를 선택하시고 수정 바랍니다.', CDMSI);
  end;
end;

function TFrm_CUTB1.GetDeptCustomerCount(AHdNo, ABrNo,
  ADeptCode: string): Integer;
var
  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_TxLoad, ls_TxQry, sQueryTemp,
  XmlStr, ErrorCode: string;
  StrList: TStringList;
  ErrCode: Integer;
begin
  Result := -1;

  ls_TxLoad := GTx_UnitXmlLoad('SEL02.XML');
  fGet_BlowFish_Query(GSQ_CUST_BUBIN_COUNT_SEARCH, sQueryTemp);
  ls_TxQry := Format(sQueryTemp, [AHdNo, ABrNo, ADeptCode]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', self.Caption + '14', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'PagingString', '500', [rfReplaceAll]);

  StrList := TStringList.Create;
  try
    if dm.SendSock(ls_TxLoad, StrList, ErrCode, False, 30000) then
    begin
      Application.ProcessMessages;

      xdom := ComsDomDocument.Create;
      try
        XmlStr := StrList[0];
        if not xdom.loadXML(XmlStr) then
          Exit;

        ErrorCode := GetXmlErrorCode(XmlStr);
        if ('0000' = ErrorCode) then
        begin
          lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
          Result := StrToIntDef(GetTextSeperationFirst('│', lst_Result.item[0].attributes.getNamedItem('Value').Text), -1);
        end;
      finally
        xdom := Nil;
      end;
    end;
  finally
    FreeAndNil(StrList);
    Frm_Flash.Hide;
  end;
end;

function TFrm_CUTB1.DeleteCustomerData(AHdNo, ABrNo, AKeyNum, ACustNum, ACuSeq : string): Boolean;
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

function TFrm_CUTB1.DeleteCustomer(AView: TcxGridDBTableView; ALabel: TcxLabel): Boolean;
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
          end else
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
    end else
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

procedure TFrm_CUTB1.CustView8SelectionChanged(Sender: TObject);
begin
  if CustView8.SelectionCount > 0 then
    cxButton42.Click
  else
    CustView9.DataController.SetRecordCount(0);
end;

procedure TFrm_CUTB1.RequestData(AData: string);
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
    StrList.Free
  end;
end;

procedure TFrm_CUTB1.proc_BubinList;
var SendData, XmlData, Param, Key, ErrMsg: string;
  ErrCode: Integer;

  lst_Result: IXMLDomNodeList;
  StrList: TStringList;
  I: Integer;
  sData, sType: string;
  tmpCnt: integer;
  tmpCntStr: string;
  k: Integer;
	tmpStr: string;
  ArrSt: array of string;
  iRow: integer;
begin
	Param := GT_SEL_BRNO.HDNO + '│' + GT_SEL_BRNO.BrNo + '│' + StringReplace(cbCustKeynumber08.Text, '-', '', [rfReplaceAll]);
	if not RequestBase(GetSel05('GET_CUST_LIST', 'MNG_BGROUP.GET_CUST_LIST', '100',Param), XmlData, ErrCode, ErrMsg) then
//  if not RequestBase(GetCallable05('GET_CUST_LIST', 'MNG_BGROUP.GET_CUST_LIST', Param), XmlData, ErrCode, ErrMsg) then
  begin
    GMessageBox(Format('[%d] %s', [ErrCode, ErrMsg]), CDMSI);
    Exit;
  end;

	cxGridBebinList.DataController.SetRecordCount(0);
  StrList := TStringList.Create;
  Screen.Cursor := crHandPoint;
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
      cxGridBebinList.BeginUpdate;
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

          iRow := cxGridBebinList.DataController.AppendRecord;

          SetGridData(cxGridBebinList, iRow, 0, IntToStr(k+1));
          SetGridData(cxGridBebinList, iRow, 1, StrList.Strings[0]);
          SetGridData(cxGridBebinList, iRow, 2, StrList.Strings[1]);
          SetGridData(cxGridBebinList, iRow, 3, StrList.Strings[2]);
          SetGridData(cxGridBebinList, iRow, 4, StrList.Strings[3]);
          SetGridData(cxGridBebinList, iRow, 5, StrList.Strings[4]);
          SetGridData(cxGridBebinList, iRow, 6, StrList.Strings[5]);
          SetGridData(cxGridBebinList, iRow, 7, StrList.Strings[6]);
          SetGridData(cxGridBebinList, iRow, 8, StrList.Strings[7]);
          SetGridData(cxGridBebinList, iRow, 9, StrList.Strings[8]);
          SetGridData(cxGridBebinList, iRow,10, StrList.Strings[9]);
          SetGridData(cxGridBebinList, iRow,11, StrList.Strings[10]);
          SetGridData(cxGridBebinList, iRow,12, StrList.Strings[11]);
          SetGridData(cxGridBebinList, iRow,13, StrList.Strings[12]);
          SetGridData(cxGridBebinList, iRow,14, StrList.Strings[13]);
          SetGridData(cxGridBebinList, iRow,15, StrList.Strings[14]);
          SetGridData(cxGridBebinList, iRow,16, StrList.Strings[15]);
          SetGridData(cxGridBebinList, iRow,17, StrList.Strings[16]);
          SetGridData(cxGridBebinList, iRow,18, StrList.Strings[17]);
          SetGridData(cxGridBebinList, iRow,19, StrList.Strings[18]);
          SetGridData(cxGridBebinList, iRow,20, StrList.Strings[19]);
          SetGridData(cxGridBebinList, iRow,21, StrList.Strings[20]);
          SetGridData(cxGridBebinList, iRow,22, StrList.Strings[21]);
          SetGridData(cxGridBebinList, iRow,23, StrList.Strings[22]);
          SetGridData(cxGridBebinList, iRow,24, StrList.Strings[23]);
          SetGridData(cxGridBebinList, iRow,25, StrList.Strings[24]);
          SetGridData(cxGridBebinList, iRow,26, StrList.Strings[25]);
          SetGridData(cxGridBebinList, iRow,27, StrList.Strings[26]);
        end;
      end;
      cxGridBebinList.endupdate;
    end;
  finally
    StrList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CUTB1.N8Click(Sender: TObject);
begin
	proc_BubinList;

	if cxGridBebinList.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '고객_법인관리.xls';
  Frm_Main.sgRpExcel := Format('법인>법인관리>법인업체]%s건/%s', [GetMoneyStr(CustView8.Count), FExcelDownBubin]);
  Frm_Main.cxGridExcel := cxGrid13;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUTB1.MenuItem10Click(Sender: TObject);
begin
	if custview9.DataController.RecordCount = 0 then
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

  Frm_Main.sgExcel := '고객_법인관리_법인고객.xls';
  Frm_Main.sgRpExcel := Format('법인>법인관리>소속고객]%s건/%s', [GetMoneyStr(IfThen(CustView9.Visible, CustView9.DataController.RecordCount, cxViewCustom.DataController.RecordCount)), FExcelDownBubinCust]);
  Frm_Main.cxGridExcel := cxGrid10;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

end.

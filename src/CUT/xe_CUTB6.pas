unit xe_CUTB6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxProgressBar,
  Vcl.StdCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, IniFiles, MSXML2_TLB, cxCurrencyEdit, cxCheckGroup, System.StrUtils,
  AdvProgressBar, dxSkinsCore, dxSkinDevExpressStyle, dxSkinscxPCPainter;

type
  TFrm_CUTB6 = class(TForm)
    PnlMain: TPanel;
    Shape5: TShape;
    cxGroupBox1: TcxGroupBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape8: TShape;
    Shape10: TShape;
    btBubinSttExcel: TcxButton;
    btn_AllProc2: TcxButton;
    btBubinSttSearch: TcxButton;
    btn_AllProc1: TcxButton;
    cbBubinSttCondition: TcxComboBox;
    cbBubinSttKeyNumber: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxdBubinSttSearch: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel8: TcxLabel;
    lbBubinSttCaption: TcxLabel;
    Panel2: TPanel;
    Shape16: TShape;
    chkCalAll: TcxRadioButton;
    chkCalY: TcxRadioButton;
    chkCalN: TcxRadioButton;
    Panel3: TPanel;
    Shape14: TShape;
    chkBillAll: TcxRadioButton;
    chkBillY: TcxRadioButton;
    chkBillN: TcxRadioButton;
    chkBubinStt: TCheckBox;
    cxLabel54: TcxLabel;
    pnl_BubinAccStatus: TPanel;
    cxGroupBox2: TcxGroupBox;
    Shape17: TShape;
    Shape18: TShape;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    btnClose: TcxButton;
    cxBrNo10: TcxTextEdit;
    cxHdNo10: TcxTextEdit;
    cb_CalMonth: TcxComboBox;
    cxLabel216: TcxLabel;
    cxLabel1: TcxLabel;
    lb_Year: TcxLabel;
    pnl_CalCampInfo: TPanel;
    pnl_Title: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxLabel6: TcxLabel;
    Shape4: TShape;
    Shape23: TShape;
    lb_CamInfo1: TcxLabel;
    cxLabel7: TcxLabel;
    Shape24: TShape;
    Shape25: TShape;
    lb_CamInfo2: TcxLabel;
    cxLabel21: TcxLabel;
    Shape26: TShape;
    Shape27: TShape;
    lb_CamInfo3: TcxLabel;
    cxLabel24: TcxLabel;
    Shape28: TShape;
    Shape29: TShape;
    lb_CamInfo4: TcxLabel;
    cxLabel28: TcxLabel;
    Shape32: TShape;
    cxLabel30: TcxLabel;
    Shape34: TShape;
    Shape35: TShape;
    lb_CamInfo6: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Shape3: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape9: TShape;
    Shape19: TShape;
    Shape20: TShape;
    cxLabel10: TcxLabel;
    lb_CalInfo1: TcxLabel;
    cxLabel12: TcxLabel;
    lb_CalInfo2: TcxLabel;
    cxLabel20: TcxLabel;
    lb_CalInfo3: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    Shape11: TShape;
    Shape12: TShape;
    Shape21: TShape;
    Shape22: TShape;
    cxLabel15: TcxLabel;
    cxLabel26: TcxLabel;
    btn_InfoSave: TcxButton;
    btn_Close: TcxButton;
    cxButton1: TcxButton;
    edtBubinCode: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    pnl_UseList: TPanel;
    pnl_UseListTitle: TPanel;
    cxButton2: TcxButton;
    cxGrid2: TcxGrid;
    cgrid_UseList: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBColumn18: TcxGridDBColumn;
    cgrid_UseListColumn1: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cgrid_CalMonth: TcxGridDBTableView;
    cgrid_CalMonthColumn2: TcxGridDBColumn;
    cgrid_CalMonthColumn3: TcxGridDBColumn;
    cgrid_CalMonthColumn4: TcxGridDBColumn;
    cgrid_CalMonthColumn5: TcxGridDBColumn;
    cgrid_CalMonthColumn6: TcxGridDBColumn;
    cxGrid11Level: TcxGridLevel;
    cgrid_CalMonthColumn1: TcxGridDBColumn;
    cgrid_CalMonthColumn7: TcxGridDBColumn;
    cgrid_CalMonthColumn8: TcxGridDBColumn;
    cgrid_CalMonthColumn9: TcxGridDBColumn;
    cgrid_CalMonthColumn10: TcxGridDBColumn;
    cgrid_CalMonthColumn11: TcxGridDBColumn;
    cgrid_CalMonthColumn12: TcxGridDBColumn;
    cgrid_CalMonthColumn13: TcxGridDBColumn;
    cgrid_CalMonthColumn14: TcxGridDBColumn;
    cgrid_CalMonthColumn15: TcxGridDBColumn;
    cgrid_CalMonthColumn16: TcxGridDBColumn;
    edt_FinishCnt: TcxTextEdit;
    edt_FinishTCharge: TcxTextEdit;
    edt_OrderCnt: TcxTextEdit;
    Panel5: TPanel;
    rb_DepositY: TcxRadioButton;
    rb_DepositN: TcxRadioButton;
    Panel6: TPanel;
    rb_BillY: TcxRadioButton;
    rb_BillN: TcxRadioButton;
    cxGroupBox6: TcxGroupBox;
    Shape37: TShape;
    btn_CashBill: TcxButton;
    btn_Card: TcxButton;
    cxLabel23: TcxLabel;
    edt_CalMoney: TcxCurrencyEdit;
    edt_RowNum: TcxTextEdit;
    cgrid_CalMonthColumn17: TcxGridDBColumn;
    cgrid_CalMonthColumn18: TcxGridDBColumn;
    cgrid_CalMonthColumn19: TcxGridDBColumn;
    cgrid_CalMonthColumn20: TcxGridDBColumn;
    cgrid_CalMonthColumn21: TcxGridDBColumn;
    cgrid_CalMonthColumn22: TcxGridDBColumn;
    cgrid_CalMonthColumn23: TcxGridDBColumn;
    cgrid_CalMonthColumn24: TcxGridDBColumn;
    cgrid_CalMonthColumn26: TcxGridDBColumn;
    cgrid_CalMonthColumn27: TcxGridDBColumn;
    cgrid_CalMonthColumn28: TcxGridDBColumn;
    cgrid_CalMonthColumn29: TcxGridDBColumn;
    btBubinSttListExcel: TcxButton;
    Shape13: TShape;
    Shape15: TShape;
    cxLabel16: TcxLabel;
    lb_CalInfo4: TcxLabel;
    cxLabel17: TcxLabel;
    lbDepositDate: TcxLabel;
    cxLabel18: TcxLabel;
    lbBillDate: TcxLabel;
    Shape30: TShape;
    Shape31: TShape;
    cxLabel19: TcxLabel;
    lb_CalInfo5: TcxLabel;
    Gauge1: TAdvProgressBar;
    edt_CamInfo5: TcxTextEdit;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btBubinSttSearchClick(Sender: TObject);
    procedure chkCalAllClick(Sender: TObject);
    procedure chkBillAllClick(Sender: TObject);
    procedure btn_InfoSaveClick(Sender: TObject);
    procedure rb_DepositYClick(Sender: TObject);
    procedure rb_BillYClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_AllProc1Click(Sender: TObject);
    procedure btBubinSttExcelClick(Sender: TObject);
    procedure pnl_UseListTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cgrid_CalMonthCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_CardClick(Sender: TObject);
    procedure btn_CashBillClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cgrid_CalMonthColumn2HeaderClick(Sender: TObject);
  private
    { Private declarations }
    FExcelDownWithHolding, FHdNo, FBrNo : string;

    iFinishCnt, iOrderCnt, iFinishCharge, iFinishTCharge, iRealCharge, iDeposit, iBill, iBCode, iHdNo, iBrNo : integer;
    procedure proc_SaveBubinDate(AYyMm, AHdNo, ABrNo, ABubinCode, ADeposit, ABill, AFinishCnt, AFinishCharge, AOrderCnt : string);
  public
    { Public declarations }
    ABubinParam : string;      //카드결제시 법인정보
    BBINCardPayInfo, BBINCardPaySeq, BBINCardTranNo : string;
    procedure proc_init;
    procedure proc_BrNameSet;
  end;

var
  Frm_CUTB6: TFrm_CUTB6;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Lib, xe_Msg, xe_packet,
  xe_xml, xe_Query, xe_CUT019, xe_Flash, xe_JON34;
{ TFrm_CUTB6 }

procedure TFrm_CUTB6.btBubinSttExcelClick(Sender: TObject);
begin
	if cgrid_CalMonth.DataController.RecordCount = 0 then
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

  if TcxButton(sender).Tag = 0 then
  begin
    Frm_Main.sgExcel := '법인_월정산.xls';
    Frm_Main.sgRpExcel := Format('법인>월정산]%s건/%s', [GetMoneyStr(cgrid_CalMonth.DataController.RecordCount), FExcelDownWithHolding]);
    Frm_Main.cxGridExcel := cxGrid1;
  end
  else if TcxButton(sender).Tag = 1 then
  begin
    Frm_Main.sgExcel := ' 법인_월정산' + pnl_UseListTitle.Caption + '.xls';
    Frm_Main.sgRpExcel := Format('법인>월정산' + pnl_UseListTitle.Caption + ']%s건/%s', [GetMoneyStr(cgrid_UseList.DataController.RecordCount), FExcelDownWithHolding]);
    Frm_Main.cxGridExcel := cxGrid2;
  end;
  Frm_Main.bgExcelOPT := False;
  Frm_Main.proc_excel(0);
end;

procedure TFrm_CUTB6.btBubinSttSearchClick(Sender: TObject);
var
  ls_TxLoad: string;
  slRcvList: TStringList;
  rv_str, ls_rxxml: string;
  XmlData, ErrMsg: string;
  xdom: MSDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
begin

  if GT_SEL_BRNO.GUBUN <> '1' then
  begin
    GMessagebox('법인업체 조회는 지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;
  Try
    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;

    ls_TxLoad := GTx_UnitXmlLoad('ACC12010.xml');

//    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + cb_CalMonth.Text);
    case cb_CalMonth.ItemIndex of
      0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
      1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
      2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
      3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
      4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
      5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
      6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
      7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
      8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
      9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
      10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
      11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPayment'  , chkCalAll.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBill', chkBillAll.Hint);
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
		begin
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'  , GT_SEL_BRNO.HDNO);
      ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'  , GT_SEL_BRNO.BrNo);
		end else
		begin
      if GT_SEL_BRNO.GUBUN = '0' then
      begin
        ls_TxLoad := StringReplace(ls_TxLoad, 'strHdNo',     GT_USERIF.HD, [rfReplaceAll]);
        ls_TxLoad := StringReplace(ls_TxLoad, 'strBrNo',     GT_USERIF.BR, [rfReplaceAll]);
      end
      else
      begin
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'  , GT_SEL_BRNO.HDNO);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'  , GT_SEL_BRNO.BrNo);
      end;

		end;
//    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strKeyNumber'  , cbBubinSttKeyNumber.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCorpName'  , cxdBubinSttSearch.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    Screen.Cursor := crHourGlass;
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if not xdom.loadXML(ls_rxxml) then
              Exit;
            cgrid_CalMonth.DataController.SetRecordCount(0);

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data');
            ls_Rcrd := TStringList.Create;
            cgrid_CalMonth.BeginUpdate;
            try
              for I := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iRow := cgrid_CalMonth.DataController.AppendRecord;
                cgrid_CalMonth.DataController.Values[iRow, 0] := inttostr(iRow + 1);
                cgrid_CalMonth.DataController.Values[iRow, 1] := False;
                if ls_Rcrd[2] = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow, 2] := '마감'
                else
                  cgrid_CalMonth.DataController.Values[iRow, 2] := '진행중';
                cgrid_CalMonth.DataController.Values[iRow, 3] := ls_Rcrd[10];  //본사코드
                cgrid_CalMonth.DataController.Values[iRow, 4] := scb_HdNm[scb_HdNo.IndexOf(ls_Rcrd[10])];  //본사명
                cgrid_CalMonth.DataController.Values[iRow, 5] := ls_Rcrd[11];  //지사코드
                cgrid_CalMonth.DataController.Values[iRow, 6] := scb_BranchName[scb_BranchCode.IndexOf(ls_Rcrd[11])];  //지사명
                cgrid_CalMonth.DataController.Values[iRow, 7] := ls_Rcrd[0];  //법인코드
                cgrid_CalMonth.DataController.Values[iRow, 8] := ls_Rcrd[1];  //법인명
                cgrid_CalMonth.DataController.Values[iRow, iFinishCnt]    := ls_Rcrd[3];  //이용횟수    9
                cgrid_CalMonth.DataController.Values[iRow, iFinishCharge] := ls_Rcrd[4];  //이용금액 10
                if ls_Rcrd[20] = 'y' then
                begin
                  cgrid_CalMonth.DataController.Values[iRow, iFinishTCharge] := ls_Rcrd[6];  //총합계   12
                  cgrid_CalMonth.DataController.Values[iRow,11] := ls_Rcrd[5];  //부가세
                  cgrid_CalMonth.DataController.Values[iRow,13] := '적용';  //부가세적용여부
                  cgrid_CalMonth.DataController.Values[iRow,iRealCharge] := StrToIntDef(ls_Rcrd[4],0) + StrToIntDef(ls_Rcrd[5],0);  //실정산금액 14
                end
                else
                begin
                  cgrid_CalMonth.DataController.Values[iRow, iFinishTCharge] := ls_Rcrd[4];  //총합계   12
                  cgrid_CalMonth.DataController.Values[iRow,11] := 0;  //부가세
                  cgrid_CalMonth.DataController.Values[iRow,13] := '미적용';  //부가세적용여부
                  cgrid_CalMonth.DataController.Values[iRow,iRealCharge] := ls_Rcrd[4]; //실정산금액 14
                end;

                if ls_Rcrd[13] = '0' then
                  cgrid_CalMonth.DataController.Values[iRow,15] := '현금'  //결제구분(0.현금, 1.카드)
                else if ls_Rcrd[13] = '1' then
                  cgrid_CalMonth.DataController.Values[iRow,15] := '카드'  //결제구분(0.현금, 1.카드)
                else
                  cgrid_CalMonth.DataController.Values[iRow,15] := '';  //결제구분(0.현금, 1.카드)
                cgrid_CalMonth.DataController.Values[iRow, 16] := ls_Rcrd[12];  //결제번호

                if ls_Rcrd[8] = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '입금'      //17
                else
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '미입금';
                cgrid_CalMonth.DataController.Values[iRow, 18] := ls_Rcrd[22];  //입금처리일자

                if ls_Rcrd[7] = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '발행'       //19
                else
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '미발행';
                cgrid_CalMonth.DataController.Values[iRow, 20] := ls_Rcrd[21];  //계산서발행처리일자

                cgrid_CalMonth.DataController.Values[iRow, iOrderCnt] := ls_Rcrd[9];  //누락건수  21
                cgrid_CalMonth.DataController.Values[iRow, 22] := ls_Rcrd[19];  //정산기간  22
                if ls_Rcrd[18] = '말일' then
                  cgrid_CalMonth.DataController.Values[iRow, 23] := ls_Rcrd[18]
                else if ls_Rcrd[18] = '' then
                  cgrid_CalMonth.DataController.Values[iRow, 23] := ''
                else
                  cgrid_CalMonth.DataController.Values[iRow, 23] := ls_Rcrd[18] + '일';  //정산일자  23
                cgrid_CalMonth.DataController.Values[iRow, 24] := ls_Rcrd[16];  //E-mail  24
                cgrid_CalMonth.DataController.Values[iRow, 25] := ls_Rcrd[14];  //담당자  25
                cgrid_CalMonth.DataController.Values[iRow, 26] := StrToCall(ls_Rcrd[15]);  //담당자연락처 26
                cgrid_CalMonth.DataController.Values[iRow, 27] := ls_Rcrd[17];  //사업자번호 27
              end;
            finally
              cgrid_CalMonth.EndUpdate;
              ls_Rcrd.Free;
              Screen.Cursor := crDefault;
              Frm_Flash.Hide;
            end;
          finally
            Screen.Cursor := crDefault;
            xdom := Nil;
          end;
        end;
      end;
    finally
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUTB6.btnCloseClick(Sender: TObject);
var
  i: Integer;
begin
  if Gauge1.Max <> Gauge1.Position then
  begin
    if GMessagebox('아직 작업진행 중입니다.' + #13#10 +
      '이후 작업을 종료하시겠습니까?', CDMSQ) =
      IDOK then
    begin
      cgrid_CalMonth.BeginUpdate;
      for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
      begin
        cgrid_CalMonth.DataController.Values[i, 1] := True;
      end;
      cgrid_CalMonth.EndUpdate;
      pnl_BubinAccStatus.Visible := False;
    end;
  end
  else
  begin
    pnl_BubinAccStatus.Visible := False;
  end;
end;

procedure TFrm_CUTB6.btn_AllProc1Click(Sender: TObject);
var
  iRow, i, iLevel, ErrCode: Integer;
	sCmpCode, sCmpNM, sFinishCnt, sFinishCharge, sOrderCnt: string;
  ls_TxLoad: string;
  xdom: MSDomDocument;
  XmlData, ErrMsg: string;
  ls_MSG_Err: string;
  ls_rxxml, rv_str: string;
  iGubun : integer;
  slRcvList : TStringList;
begin
	try
    iGubun := TcxButton(sender).Tag;
    iRow := 0;
    case iGubun of
      0:
      begin
        rb_DepositY.Hint := 'y';
        rb_BillY.Hint    := '';
      end;
      1:
      begin
        rb_DepositY.Hint := '';
        rb_BillY.Hint    := 'y';
      end;
    end;

    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if (cgrid_CalMonth.DataController.Values[i, 1] = True) then
      begin
        Inc(iRow);
      end;
    end;
    cxLabel4.Caption := IntToStr(iRow);
    cxLabel5.Caption := '0';
    Gauge1.Max := iRow;
    Gauge1.Position := 0;
    iRow := 0;
    if Gauge1.Max > 1 then
    begin
      pnl_BubinAccStatus.Left := frm_Main.Left + ((frm_Main.Width - pnl_BubinAccStatus.Width) div 2);
      pnl_BubinAccStatus.Top := 100;
      pnl_BubinAccStatus.Visible := True;
      pnl_BubinAccStatus.BringToFront;
    end;

    Screen.Cursor := crHourGlass;
    slRcvList := TStringList.Create;
    cgrid_CalMonth.DataController.BeginUpdate;
    for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
    begin
      if cgrid_CalMonth.DataController.Values[i, 1] = True then
      begin
        Inc(iRow);
        cxLabel5.Caption := IntToStr(iRow);
        Gauge1.Position := iRow;
        sCmpNM        := cgrid_CalMonth.DataController.Values[i,  8];
        sCmpCode      := cgrid_CalMonth.DataController.Values[i,  7];
        sFinishCnt    := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCnt]);
        sFinishCharge := FloatToStr(cgrid_CalMonth.DataController.Values[i, iFinishCharge]);
        sOrderCnt     := FloatToStr(cgrid_CalMonth.DataController.Values[i, iOrderCnt]);

        ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
        case cb_CalMonth.ItemIndex of
          0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
          1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
          2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
          3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
          4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
          5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
          6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
          7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
          8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
          9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
          10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
          11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
        end;

        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , sCmpCode);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , cgrid_CalMonth.DataController.Values[i, iHdNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , cgrid_CalMonth.DataController.Values[i, iBrNo]);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , rb_DepositY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , rb_BillY.Hint);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , sFinishCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', sFinishCharge);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , sOrderCnt);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
        ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
        try
          if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
          begin
            rv_str := slRcvList[0];
            if rv_str <> '' then
            begin
              ls_rxxml := rv_str;
              xdom := CoMSDomDocument.Create;
              try
                xdom.loadXML(ls_rxxml);

                ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
                if ('0000' <> ls_MSG_Err) then
                begin
                  GMessagebox('['+sCmpNM+']처리 오류 : '+ls_Msg_Err, CDMSI);
                  cgrid_CalMonth.DataController.EndUpdate;
                  exit;
                end
                else
                begin
                  if iGubun = 0 then
                    cgrid_CalMonth.DataController.Values[i, iDeposit] := '입금'
                  else if iGubun = 1 then
                    cgrid_CalMonth.DataController.Values[i, iBill]    := '발행';
                end;
              finally
                xdom := Nil;
              end;
            end;
          end;
        except
          slRcvList.Free;
          Screen.Cursor := crDefault;
          cgrid_CalMonth.DataController.EndUpdate;
        end;
      end;
    end;
    slRcvList.Free;
    Screen.Cursor := crDefault;
    cgrid_CalMonth.DataController.EndUpdate;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUTB6.btn_CardClick(Sender: TObject);
var lsTemp : TStringList;
begin
  // 카드결제 창 오픈.  2011-10-13.
  if not Assigned(Frm_JON34) then
  begin
    Frm_JON34 := TFrm_JON34.Create(self);
  end;

  Frm_JON34.cxCurDecRate_Cash.Properties.AssignedValues.MaxValue := False;
  Frm_JON34.cxCurDRate.Properties.AssignedValues.MaxValue := False;
  Frm_JON34.cxCurDecRate.Properties.AssignedValues.MaxValue := False;

  Frm_JON34.pnlTitle.Caption := '   카드결제';

  Frm_JON34.Card_Gubun := 11;
  Frm_JON34.proc_init;

  if (GT_SEL_BRNO.HDNO = 'A1531') or (GT_SEL_BRNO.HDNO = 'A100')  then
  begin
    Frm_JON34.pnl1.Visible := True;     //카드결제   판넬
    Frm_JON34.pnl3.Visible := False;    //현금영수증 판넬
    Frm_JON34.Constraints.MinHeight := 375 - 33;
    Frm_JON34.Height := 375 - 33;
  end	else
  begin
    Frm_JON34.pnl1.Visible := False;    //카드결제   판넬
    Frm_JON34.pnl3.Visible := False;    //현금영수증 판넬
    Frm_JON34.Constraints.MinHeight := 375 - (33 + 33);
    Frm_JON34.Height := 375 - (33 + 33);
  end;
  Frm_JON34.pnl4.Left := 400;
  Frm_JON34.pnl6.Left := 400;
  Frm_JON34.cxCurDRate.Value := edt_CalMoney.Value;    // 요금.

  //공통사항///////////////////
  Frm_JON34.lcBRNO    := GT_SEL_BRNO.BrNo;           // 지사코드 정보를 읽는다.
  Frm_JON34.lcMainNum := '';  // 대표번호 정보를 읽는다.
  Frm_JON34.lcCustTel := '';             // 고객전화번호.
  Frm_JON34.lcCustSeq := '';                 // 고객 시퀀스.
  //공통사항///////////////////

  if Frm_JON34.rbConfigVATset1.Checked then
    Frm_JON34.cxCurDecRate.Value := edt_CalMoney.Value
  else
  if Frm_JON34.rbConfigVATset2.Checked then
    // 결제요금.  설정된 부가세 적용.
    Frm_JON34.cxCurDecRate.Value := edt_CalMoney.Value + (edt_CalMoney.Value * (Frm_JON34.cxCurVATvalue.Value / 100))
  else
  if Frm_JON34.rbConfigVATset3.Checked then
  begin
    Frm_JON34.cxCurDecRate.Value := Frm_JON34.proc_getSvrCardCharge(Frm_JON34.lcBRNO, edt_CalMoney.Value);
  end;

  Frm_JON34.lcJON_IDX := Self.Tag;   // 접수창의 index 값 저장.

  // 기 결제 정보가 있으면, 해당 값을 넣어준다.
  if Length(BBINCardPayInfo) > 10 then
  begin
    try
      lsTemp := TStringList.Create;
      lsTemp.Delimiter := '|';
      lsTemp.DelimitedText := BBINCardPayInfo;

      Frm_JON34.cxCurDRate.Text       := lsTemp[0];
      Frm_JON34.cxCurDecRate.Text     := lsTemp[1];
      Frm_JON34.cxCurTerm.Text        := lsTemp[2];
      Frm_JON34.lblCardStatus.Caption := lsTemp[3];  // 상태
      if lsTemp.Count = 6 then
      begin
        Frm_JON34.medCardNum.Text       := lsTemp[4];
        Frm_JON34.medLimiteDate.text    := lsTemp[5];
      end;

      // 카드결제정보 조회
      if (BBINCardPaySeq <> '') then
        Frm_JON34.ProCardInfoSelect(BBINCardPaySeq);

      if Frm_JON34.lblCardStatus.Caption = '결제완료' then
      begin
        // 카드결제 승인 취소 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := False;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := True;
        Frm_JON34.sb_ApproveReceipt.Enabled := True;

        Frm_JON34.medCardNum.Enabled      := False;
        Frm_JON34.medLimiteDate.Enabled   := False;
        Frm_JON34.cxCurDRate.Enabled      := False;
        Frm_JON34.cxCurDecRate.Enabled    := False;
        Frm_JON34.cxCurTerm.Enabled       := False;
      end	else
      if Frm_JON34.lblCardStatus.Caption = '결제요청완료' then
      begin
        // 카드결제 승인 취소 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := False;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := False;
        Frm_JON34.sb_ApproveReceipt.Enabled := False;

        Frm_JON34.medCardNum.Enabled      := False;
        Frm_JON34.medLimiteDate.Enabled   := False;
        Frm_JON34.cxCurDRate.Enabled      := False;
        Frm_JON34.cxCurDecRate.Enabled    := False;
        Frm_JON34.cxCurTerm.Enabled       := False;
      end	else
      begin
        // 카드결제 승인 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := True;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := False;
        Frm_JON34.sb_ApproveReceipt.Enabled := False;

        Frm_JON34.medCardNum.Enabled      := True;
        Frm_JON34.medLimiteDate.Enabled   := True;
        Frm_JON34.cxCurDRate.Enabled      := True;
        Frm_JON34.cxCurDecRate.Enabled    := True;
        Frm_JON34.cxCurTerm.Enabled       := True;

        Frm_JON34.rb_Card1.Enabled        := True;
        Frm_JON34.rb_BaRo_Card1.Enabled   := True;
      end;

      Frm_JON34.lcPaySeq := BBINCardPaySeq;   // 결제일련번호
      Frm_JON34.lcTranNo := BBINCardTranNo;   // 거래번호

      Frm_JON34.lblPaySeq.Caption := BBINCardPaySeq;
      Frm_JON34.lblTranNo.Caption := BBINCardTranNo;
    finally
      FreeAndNil(lsTemp);
    end;
  end	else
  if Length(BBINCardPaySeq) > 1 then
  begin
    Frm_JON34.lcPaySeq          := BBINCardPaySeq;   // 결제일련번호  만 있으면 승인취소 가능 함.
    Frm_JON34.lblPaySeq.Caption := BBINCardPaySeq;

    Frm_JON34.ProCardInfoSelect(BBINCardPaySeq);   // 카드결제 정보를 조회 한다.

    if Frm_JON34.lblCardStatus.Caption = '결제완료' then
    begin
      // 카드결제 승인 취소 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := False;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := True;
      Frm_JON34.sb_ApproveReceipt.Enabled := True;

      Frm_JON34.medCardNum.Enabled      := False;
      Frm_JON34.medLimiteDate.Enabled   := False;
      Frm_JON34.cxCurDRate.Enabled      := False;
      Frm_JON34.cxCurDecRate.Enabled    := False;
      Frm_JON34.cxCurTerm.Enabled       := False;
    end else
    if Frm_JON34.lblCardStatus.Caption = '결제요청완료' then
    begin
      // 카드결제 승인 취소 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := False;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := False;
      Frm_JON34.sb_ApproveReceipt.Enabled := False;

      Frm_JON34.medCardNum.Enabled      := False;
      Frm_JON34.medLimiteDate.Enabled   := False;
      Frm_JON34.cxCurDRate.Enabled      := False;
      Frm_JON34.cxCurDecRate.Enabled    := False;
      Frm_JON34.cxCurTerm.Enabled       := False;
    end	else
    begin
      // 카드결제 승인 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := True;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := False;
      Frm_JON34.sb_ApproveReceipt.Enabled := False;

      Frm_JON34.medCardNum.Enabled      := True;
      Frm_JON34.medLimiteDate.Enabled   := True;
      Frm_JON34.cxCurDRate.Enabled      := True;
      Frm_JON34.cxCurDecRate.Enabled    := True;
      Frm_JON34.cxCurTerm.Enabled       := True;
      Frm_JON34.rb_Card1.Enabled        := True;
      Frm_JON34.rb_BaRo_Card1.Enabled   := True;
    end;
  end	else
  begin
    // 카드결제 승인 할 준비.
    Frm_JON34.sb_ApproveReq.Enabled    := True;
    Frm_JON34.sb_ApproveOK.Enabled     := False;
    Frm_JON34.sb_ApproveCancle.Enabled := False;
    Frm_JON34.sb_ApproveReceipt.Enabled := False;

    Frm_JON34.medCardNum.Enabled      := True;
    Frm_JON34.medLimiteDate.Enabled   := True;
    Frm_JON34.cxCurDRate.Enabled      := True;
    Frm_JON34.cxCurDecRate.Enabled    := True;
    Frm_JON34.cxCurTerm.Enabled       := True;
    Frm_JON34.rb_Card1.Enabled        := True;
    Frm_JON34.rb_BaRo_Card1.Enabled   := True;
  end;

  if Assigned(Frm_JON34) then
  begin
    Frm_JON34.Left := pnl_CalCampInfo.Left + (pnl_CalCampInfo.Width + 1);
    Frm_JON34.Top  := pnl_CalCampInfo.Top;
  end;

  Frm_JON34.Show;
end;

procedure TFrm_CUTB6.btn_CashBillClick(Sender: TObject);
var lsTemp : TStringList;
begin
  if not Assigned(Frm_JON34) then
  begin
    Frm_JON34 := TFrm_JON34.Create(self);
  end;

  Frm_JON34.cxCurDecRate_Cash.Properties.AssignedValues.MaxValue := False;
  Frm_JON34.cxCurDRate.Properties.AssignedValues.MaxValue := False;
  Frm_JON34.cxCurDecRate.Properties.AssignedValues.MaxValue := False;
  Frm_JON34.pnlTitle.Caption := '   현금영수증(지출증빙) 발급';
  // 카드결제 창 오픈.  2011-10-13.
  Frm_JON34.Card_Gubun := 10;          //현금영수증
  Frm_JON34.proc_init;
  Frm_JON34.pnl1.Visible := False;
  Frm_JON34.pnl3.Visible := True;
  Frm_JON34.pnl4.Visible := True;
  Frm_JON34.pnl6.Visible := False;
  Frm_JON34.pnl4.Left := 0;
  Frm_JON34.pnl4.Top := 1;
  Frm_JON34.Constraints.MinHeight := 375 - 33;
  Frm_JON34.Height := 375 - 33;

  Frm_JON34.cxCurDecRate_Cash.Value := edt_CalMoney.Value;    // 요금(현금영수증)

  //공통사항///////////////////
  Frm_JON34.lcBRNO    := GT_SEL_BRNO.BrNo;           // 지사코드 정보를 읽는다.
  Frm_JON34.lcMainNum := '';  // 대표번호 정보를 읽는다.
  Frm_JON34.lcCustTel := '';             // 고객전화번호.
  Frm_JON34.medtCashCardNum.Text := '';
  Frm_JON34.lcCustSeq := '';                 // 고객 시퀀스.
  //공통사항///////////////////

  Frm_JON34.lcJON_IDX := Self.Tag;   // 접수창의 index 값 저장.

  // 기 결제 정보가 있으면, 해당 값을 넣어준다.
  if Length(BBINCardPayInfo) > 10 then
  begin
    try
      Frm_JON34.lcCustTel := '';             // 고객전화번호.

      lsTemp := TStringList.Create;
      lsTemp.Delimiter := '|';
      lsTemp.DelimitedText := BBINCardPayInfo;

      Frm_JON34.cxCurDecRate_Cash.Text  := lsTemp[0];
      Frm_JON34.lblCardStatus_Cash.Caption := lsTemp[1];  // 상태
      if lsTemp.Count = 3 then
      begin
        Frm_JON34.medtCashCardNum.Text := lsTemp[2];
      end;

      // 접수번호가 있을경우만 서버에서 재조회 한다.  2011-10-27
      if (BBINCardPaySeq <> '') then
        Frm_JON34.ProCardInfoSelect(BBINCardPaySeq);   // 카드결제 정보를 조회 한다.

      if Frm_JON34.lblCardStatus_Cash.Caption = '증빙완료' then
      begin
        // 카드결제 승인 취소 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := False;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := True;
        Frm_JON34.sb_ApproveReceipt.Enabled := False;
        Frm_JON34.medtCashCardNum.Enabled      := False;
        Frm_JON34.cxCurDecRate_Cash.Enabled      := False;
      end	else
      if Frm_JON34.lblCardStatus_Cash.Caption = '증빙요청완료' then
      begin
        // 카드결제 승인 취소 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := False;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := False;
        Frm_JON34.sb_ApproveReceipt.Enabled := False;
        Frm_JON34.medtCashCardNum.Enabled      := False;
        Frm_JON34.cxCurDecRate_Cash.Enabled    := False;
      end	else
      begin
        // 카드결제 승인 할 준비.
        Frm_JON34.sb_ApproveReq.Enabled    := True;
        Frm_JON34.cxButton1.Enabled     := False;
        Frm_JON34.sb_ApproveOK.Enabled     := False;
        Frm_JON34.sb_ApproveCancle.Enabled := False;
        Frm_JON34.sb_ApproveReceipt.Enabled := False;
        Frm_JON34.medtCashCardNum.Enabled      := True;
        Frm_JON34.cxCurDecRate_Cash.Enabled    := True;

        Frm_JON34.rg_charge_ser2.Enabled   := True;
        Frm_JON34.rg_charge_ser1.Enabled   := True;
      end;

      Frm_JON34.lcPaySeq := BBINCardPaySeq;   // 결제일련번호
      Frm_JON34.lcTranNo := BBINCardTranNo;   // 거래번호

      Frm_JON34.lblPaySeq_Cash.Caption := BBINCardPaySeq;
      Frm_JON34.lblTranNo_Cash.Caption := BBINCardTranNo;
    finally
      FreeAndNil(lsTemp);
    end;
  end else
  if Length(BBINCardPaySeq) > 1 then
  begin
    Frm_JON34.lcCustTel := '';             // 고객전화번호.
    Frm_JON34.lcPaySeq               := BBINCardPaySeq;   // 결제일련번호  만 있으면 승인취소 가능 함.
    Frm_JON34.lblPaySeq_Cash.Caption := BBINCardPaySeq;

    Frm_JON34.ProCardInfoSelect(BBINCardPaySeq);   // 카드결제 정보를 조회 한다.

    if Frm_JON34.lblCardStatus_Cash.Caption =  '증빙완료' then
    begin
      // 카드결제 승인 취소 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := False;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := True;
      Frm_JON34.sb_ApproveReceipt.Enabled := False;
      Frm_JON34.medtCashCardNum.Enabled      := False;
      Frm_JON34.cxCurDecRate_cash.Enabled    := False;
    end else
    if Frm_JON34.lblCardStatus_Cash.Caption = '증빙요청완료' then
    begin
      // 카드결제 승인 취소 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := False;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := False;
      Frm_JON34.sb_ApproveReceipt.Enabled := False;
      Frm_JON34.medtCashCardNum.Enabled      := False;
      Frm_JON34.cxCurDecRate_cash.Enabled    := False;
    end else
    begin
      // 카드결제 승인 할 준비.
      Frm_JON34.sb_ApproveReq.Enabled    := True;
      Frm_JON34.sb_ApproveOK.Enabled     := False;
      Frm_JON34.sb_ApproveCancle.Enabled := False;
      Frm_JON34.sb_ApproveReceipt.Enabled := False;

      Frm_JON34.medtCashCardNum.Enabled      := True;
      Frm_JON34.cxCurDecRate_cash.Enabled    := True;
      Frm_JON34.rg_charge_ser2.Enabled   := True;
      Frm_JON34.rg_charge_ser1.Enabled   := True;
    end;
  end else
  begin
    // 카드결제 승인 할 준비.
    Frm_JON34.sb_ApproveReq.Enabled    := True;
    Frm_JON34.sb_ApproveOK.Enabled     := False;
    Frm_JON34.sb_ApproveCancle.Enabled := False;
    Frm_JON34.sb_ApproveReceipt.Enabled := False;
    Frm_JON34.medtCashCardNum.Enabled      := True;
    Frm_JON34.cxCurDecRate_cash.Enabled    := True;
    Frm_JON34.rg_charge_ser2.Enabled   := True;
    Frm_JON34.rg_charge_ser1.Enabled   := True;
  end;

  if Assigned(Frm_JON34) then
  begin
    {Frm_JON34.Left := Self.Left - (Frm_JON34.Width + 1);
    Frm_JON34.Top  := Self.Top  + 320;  }
    Frm_JON34.Left := pnl_CalCampInfo.Left + (pnl_CalCampInfo.Width + 1);
    Frm_JON34.Top  := pnl_CalCampInfo.Top;
  end;
  Frm_JON34.Show;
end;

procedure TFrm_CUTB6.btn_CloseClick(Sender: TObject);
begin
  pnl_CalCampInfo.Visible := False;
end;

procedure TFrm_CUTB6.btn_InfoSaveClick(Sender: TObject);
var
  ls_TxLoad: string;
  ls_rxxml: string;
  XmlData, ErrMsg: string;
  xdom: MSDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode, iRow : Integer;
  ls_MSG_Err, rv_str: string;
  slRcvList : TStringList;
begin
  Try
    Screen.Cursor := crHourGlass;

    ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
    slRcvList := TStringList.Create;
    case cb_CalMonth.ItemIndex of
      0 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '01');
      1 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '02');
      2 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '03');
      3 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '04');
      4 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '05');
      5 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '06');
      6 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '07');
      7 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '08');
      8 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '09');
      9 : ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '10');
      10: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '11');
      11: ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'    , lb_Year.Caption + '12');
    end;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , edtBubinCode.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , FHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , FBrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , rb_DepositY.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , rb_BillY.Hint);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , edt_FinishCnt.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', edt_CalMoney.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , edt_OrderCnt.Text);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox('저장 오류 : '+ls_Msg_Err, CDMSI);
              exit;
            end
            else
            begin
              GMessagebox('저장 완료', CDMSI);
              iRow := StrToIntDef(edt_RowNum.Text, -1);
              if iRow > -1 then
              begin
                if rb_DepositY.Hint = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '입금'
                else
                  cgrid_CalMonth.DataController.Values[iRow,iDeposit] := '미입금';
                if rb_BillY.Hint = 'y' then
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '발행'
                else
                  cgrid_CalMonth.DataController.Values[iRow,iBill] := '미발행';
              end;
            end;
          finally
            xdom := Nil;
            slRcvList.Free;
            Screen.Cursor := crDefault;
          end;
        end;
      end;
    except
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUTB6.cgrid_CalMonthCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iCol, iChoiceRow: Integer;
  Param, sYearMm : string;
  AView: TcxGridDBTableView;
  iRow, i, ErrCode: Integer;
  ls_TxLoad: string;
  xdom: MSDomDocument;
  XmlData, ErrMsg: string;
  lst_Result, lst_Count: IXMLDomNodeList;
  ls_MSG_Err: string;
  ls_Rcrd: TStringList;
  ls_rxxml,rv_str: string;
  slRcvList: TStringList;
begin
  SetDebugeWrite('Frm_JON012.cxGVeOrderListCellClick');
  AView := Sender as TcxGridDBTableView;

  try
    if (AShift = [ssright]) then exit;
    iCol := ACellViewInfo.Item.FocusedCellViewInfo.Item.Index;
    iChoiceRow := cgrid_CalMonth.DataController.FocusedRecordIndex;
    FHdNo := cgrid_CalMonth.DataController.Values[iChoiceRow, iHDNo];
    FBrNo := cgrid_CalMonth.DataController.Values[iChoiceRow, iBrNo];
    case cb_CalMonth.ItemIndex of
      0 : sYearMm := lb_Year.Caption + '01';
      1 : sYearMm := lb_Year.Caption + '02';
      2 : sYearMm := lb_Year.Caption + '03';
      3 : sYearMm := lb_Year.Caption + '04';
      4 : sYearMm := lb_Year.Caption + '05';
      5 : sYearMm := lb_Year.Caption + '06';
      6 : sYearMm := lb_Year.Caption + '07';
      7 : sYearMm := lb_Year.Caption + '08';
      8 : sYearMm := lb_Year.Caption + '09';
      9 : sYearMm := lb_Year.Caption + '10';
      10: sYearMm := lb_Year.Caption + '11';
      11: sYearMm := lb_Year.Caption + '12';
    end;

    ABubinParam:= FHdNo;
    ABubinParam:= ABubinParam + '│' + FBrNo;
    ABubinParam:= ABubinParam + '│' + sYearMm;
    ABubinParam:= ABubinParam + '│' + cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode];
    Case iCol of
      9 , 21: //이용횟수9, 누락건수21
      begin
        Param := cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode];
        Param := Param + '│' + sYearMm;
        Param := Param + '│' + FHdNo;
        Param := Param + '│' + FBrNo;
        if iCol = 9 then
        begin
          Param := Param + '│' + 'y';
          pnl_UseListTitle.Caption := sYearMm + '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + ']이용내역 리스트(이용횟수)';
        end
        else
        begin
          Param := Param + '│' + 'n';
          pnl_UseListTitle.Caption := sYearMm + '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + ']이용내역 리스트(누락횟수)';
        end;

        if not RequestBase(GetSel05('GET_CUST_BGROUP_STT_SEARCH', 'MNG_BGROUP.GET_CUST_BGROUP_STT_SEARCH', '1000', Param), XmlData, ErrCode, ErrMsg) then
        begin
          GMessagebox(Format('이용횟수 조회 중 오류발생'#13#10'[%d]%s', [ErrCode, ErrMsg]), CDMSI);
          Exit;
        end;


        xdom := ComsDomDocument.Create;
        try
          xdom.loadXML(XmlData);
          if not xdom.loadXML(ls_rxxml) then
          begin
            Screen.Cursor := crDefault;
            Exit;
          end;

          lst_Count := xdom.documentElement.selectNodes('/cdms/Service/Data');
          if StrToIntDef(lst_Count.item[0].attributes.getNamedItem('Count').Text, 0) > 0 then
          begin
            pnl_UseList.Visible := True;
            cgrid_UseList.DataController.SetRecordCount(0);

            lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
            ls_Rcrd := TStringList.Create;
            cgrid_UseList.BeginUpdate;
            try
              for I := 0 to lst_Result.length - 1 do
              begin
                GetTextSeperationEx2('│', lst_Result.item[I].attributes.getNamedItem('Value').Text, ls_Rcrd);
                iRow := cgrid_UseList.DataController.AppendRecord;
                cgrid_UseList.DataController.Values[iRow, 0]:= inttostr(iRow + 1);
                cgrid_UseList.DataController.Values[iRow, 1]:= ls_Rcrd[21];        //완료일자
                cgrid_UseList.DataController.Values[iRow, 2]:= ls_Rcrd[0];         //지사명
                cgrid_UseList.DataController.Values[iRow, 3]:= ls_Rcrd[1];                 // 대표번호
                cgrid_UseList.DataController.Values[iRow, 4]:= '';         //오더상태
                cgrid_UseList.DataController.Values[iRow, 5]:= ls_Rcrd[2];         //접수번호
                cgrid_UseList.DataController.Values[iRow, 6]:= ls_Rcrd[3];         //고객명
                cgrid_UseList.DataController.Values[iRow, 7]:= StrToCall(ls_Rcrd[4]);         //고객번호
                cgrid_UseList.DataController.Values[iRow, 8]:= ls_Rcrd[5]+ls_Rcrd[6]+ls_Rcrd[7]+ls_Rcrd[8]+ls_Rcrd[9];         //출발지1-5
                cgrid_UseList.DataController.Values[iRow, 9]:= ls_Rcrd[10]+ls_Rcrd[11]+ls_Rcrd[12]+ls_Rcrd[13]+ls_Rcrd[14];         //도착지1-5
                cgrid_UseList.DataController.Values[iRow, 10]:= ls_Rcrd[15]+ls_Rcrd[16]+ls_Rcrd[17]+ls_Rcrd[18]+ls_Rcrd[19];        //경유지1-5
                cgrid_UseList.DataController.Values[iRow, 11]:= ls_Rcrd[20];     ;  //대기시간
                cgrid_UseList.DataController.Values[iRow, 12]:= '';
                cgrid_UseList.DataController.Values[iRow, 13]:= ls_Rcrd[22];       //거리
                cgrid_UseList.DataController.Values[iRow, 14]:= ls_Rcrd[23];       //접수요금
                cgrid_UseList.DataController.Values[iRow, 15]:= ls_Rcrd[24];       //기사수수료
                cgrid_UseList.DataController.Values[iRow, 16]:= ls_Rcrd[25];       //실지급액
                cgrid_UseList.DataController.Values[iRow, 17]:= ls_Rcrd[26];       //보정요금
                cgrid_UseList.DataController.Values[iRow, 18]:= ls_Rcrd[27];       //기본요금
             end;
            finally
              cgrid_UseList.EndUpdate;
              ls_Rcrd.Free;
              Screen.Cursor := crDefault;
              Frm_Flash.Hide;
              xdom := Nil;
            end;
          end;
        except
          cgrid_UseList.EndUpdate;
          ls_Rcrd.Free;
          Screen.Cursor := crDefault;
          Frm_Flash.Hide;
        end;
      end else
      begin
        ////////////////////////////////////////////////////////////선택정보로 창오픈//////////////////////////////////////////
        pnl_CalCampInfo.Visible := True;

        edtBubinCode.Text := cgrid_CalMonth.DataController.Values[iChoiceRow, 7];
        pnl_Title.Caption := '[' + cgrid_CalMonth.DataController.Values[iChoiceRow, 8] + '] 월 정산 상세 수정';
        lb_CamInfo1.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 25]; //계산서담당자
        lb_CamInfo2.Caption := StrToCall(cgrid_CalMonth.DataController.Values[iChoiceRow, 26]); //계산서담당자 연락처
        lb_CamInfo3.Caption := ''; //메모
        lb_CamInfo4.Caption := ''; //주소
        edt_CamInfo5.Text   := cgrid_CalMonth.DataController.Values[iChoiceRow, 24];
        lb_CamInfo6.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 27];
        lb_CalInfo1.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 23];
        lb_CalInfo2.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 22];
        lb_CalInfo3.Caption := '부가세 ' + cgrid_CalMonth.DataController.Values[iChoiceRow, 13];
        if cgrid_CalMonth.DataController.Values[iChoiceRow,iDeposit] = '입금' then rb_DepositY.Checked := True
        else                                                                       rb_DepositN.Checked := True;
        if cgrid_CalMonth.DataController.Values[iChoiceRow,iBill]    = '발행' then rb_BillY.Checked    := True
        else                                                                       rb_BillN.Checked    := True;
        lb_CalInfo4.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 15]; //결제구분
        lb_CalInfo5.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 16]; //결제일련번호
        BBINCardPaySeq      := cgrid_CalMonth.DataController.Values[iChoiceRow, 16]; //결제일련번호

        lbDepositDate.Caption := cgrid_CalMonth.DataController.Values[iChoiceRow, 18];
        lbBillDate.Caption    := cgrid_CalMonth.DataController.Values[iChoiceRow, 20];

        edt_FinishCnt.Text    := cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCnt];
        edt_FinishTCharge.Text:= cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishTCharge];
        edt_CalMoney.Text     := cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCharge];
        edt_OrderCnt.Text     := cgrid_CalMonth.DataController.Values[iChoiceRow, iOrderCnt];
        edt_RowNum.Text       := IntToStr(iChoiceRow);

        proc_SaveBubinDate(sYearMm
                         , FHdNo
                         , FBrNo
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iBCode]
                         , IfThen(cgrid_CalMonth.DataController.Values[iChoiceRow, iDeposit] = '입금', 'y', 'n')
                         , IfThen(cgrid_CalMonth.DataController.Values[iChoiceRow, iBill]    = '발행', 'y', 'n')
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCnt]
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iFinishCharge]
                         , cgrid_CalMonth.DataController.Values[iChoiceRow, iOrderCnt] );
        ////////////////////////////////////////////////////////////선택정보로 창오픈//////////////////////////////////////////
      end;
    end;
  finally
  end;
end;

procedure TFrm_CUTB6.cgrid_CalMonthColumn2HeaderClick(Sender: TObject);
var
  i: Integer;
begin
  if chkBubinStt.Checked then
  begin
    chkBubinStt.Checked := False;
  end else
  begin
    chkBubinStt.Checked := True;
  end;
  cgrid_CalMonth.BeginUpdate;
  for i := 0 to cgrid_CalMonth.DataController.RecordCount - 1 do
  begin
    if chkBubinStt.Checked then
      cgrid_CalMonth.DataController.Values[i, 1] := True
    else
      cgrid_CalMonth.DataController.Values[i, 1] := False;
  end;
  cgrid_CalMonth.EndUpdate;
end;

procedure TFrm_CUTB6.chkBillAllClick(Sender: TObject);
begin
  if chkBillAll.Checked then chkBillAll.Hint := '';
  if chkBillY.Checked then chkBillAll.Hint := 'y';
  if chkBillN.Checked then chkBillAll.Hint := 'n';
end;

procedure TFrm_CUTB6.chkCalAllClick(Sender: TObject);
begin
  if chkCalAll.Checked then chkCalAll.Hint := '';
  if chkCalY.Checked then chkCalAll.Hint := 'y';
  if chkCalN.Checked then chkCalAll.Hint := 'n';

end;

procedure TFrm_CUTB6.cxButton1Click(Sender: TObject);
begin
  pnl_CalCampInfo.Visible := False;
end;

procedure TFrm_CUTB6.cxButton2Click(Sender: TObject);
begin
  pnl_UseList.Visible := false;
end;

procedure TFrm_CUTB6.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_CUTB6.pnl_UseListTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(pnl_UseList.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTB6.pnl_TitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	ReleaseCapture;
  PostMessage(pnl_CalCampInfo.Handle, WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrm_CUTB6.proc_BrNameSet;
var
	sName, sBrNo, sHdNo, sTemp: string;
  StrList: TStringList;
begin
	StrList := TStringList.Create;
  cbBubinSttKeyNumber.Tag := 1;
  try
    if ((GT_USERIF.LV = '60') or (GT_USERIF.LV = '10')) and (GT_SEL_BRNO.GUBUN <> '1') then
    begin
      GetBrTelList(GT_SEL_BRNO.HDNO, StrList);
      cbBubinSttKeyNumber.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := '';
    end else
    begin
			GetBrTelList(GT_SEL_BRNO.BrNo, StrList);
			cbBubinSttKeyNumber.Properties.Items.Assign(StrList);
      sHdNo := GT_SEL_BRNO.HDNO;
      sBrNo := GT_SEL_BRNO.BrNo;
    end;
	finally
		StrList.Free;
  end;

  sName := GetSosokInfo;
  lbBubinSttCaption.Caption := sName;

  cxHdNo10.Text := sHdNo;
  cxBrNo10.Text := sBrNo;

  if cbBubinSttKeyNumber.Properties.Items.Count > 1 then
    cbBubinSttKeyNumber.Properties.Items.Insert(0, '전체');

  cbBubinSttKeyNumber.ItemIndex := 0;
  cbBubinSttKeyNumber.Tag := 0;
end;

procedure TFrm_CUTB6.proc_init;
var
  i: Integer;
  slHidn: TStringList;
  ln_env: TIniFile;
  sTemp: string;
begin
  proc_BrNameSet;

  cb_CalMonth.Text := IntToStr(StrToInt(copy(StartDateTime('yyyymmdd'), 5, 2)))+ '월';
  lb_Year.Caption := copy(StartDateTime('yyyymmdd'), 1, 4);
  cgrid_CalMonth.Columns[0].DataBinding.ValueType := 'Integer';


  iFinishCnt    := cgrid_CalMonth.GetColumnByFieldName('이용횟수').Index;
  iOrderCnt     := cgrid_CalMonth.GetColumnByFieldName('누락건수').Index;
  iFinishCharge := cgrid_CalMonth.GetColumnByFieldName('이용금액').Index;
  iFinishTCharge:= cgrid_CalMonth.GetColumnByFieldName('총합계').Index;
  iRealCharge   := cgrid_CalMonth.GetColumnByFieldName('실정산금액').Index;
  iDeposit      := cgrid_CalMonth.GetColumnByFieldName('입금여부').Index;
  iBill         := cgrid_CalMonth.GetColumnByFieldName('계산서발행').Index;
  iBCode := cgrid_CalMonth.GetColumnByFieldName('법인코드').Index;
  iBrNo  := cgrid_CalMonth.GetColumnByFieldName('지사코드').Index;
  iHdNo  := cgrid_CalMonth.GetColumnByFieldName('본사코드').Index;

	for i := 1 to cgrid_CalMonth.ColumnCount - 1 do
		cgrid_CalMonth.Columns[i].DataBinding.ValueType := 'String';
	cgrid_CalMonth.Columns[iFinishCnt].DataBinding.ValueType      := 'Integer';
	cgrid_CalMonth.Columns[iFinishCharge].DataBinding.ValueType   := 'Currency';
	cgrid_CalMonth.Columns[iFinishCharge+1].DataBinding.ValueType := 'Currency'; //부가세액
	cgrid_CalMonth.Columns[iFinishTCharge].DataBinding.ValueType  := 'Currency';
	cgrid_CalMonth.Columns[iRealCharge].DataBinding.ValueType     := 'Currency';   //실정산금액
	cgrid_CalMonth.Columns[iOrderCnt].DataBinding.ValueType       := 'Integer';


  cgrid_UseList.Columns[0].DataBinding.ValueType := 'Integer';
	for i := 1 to cgrid_UseList.ColumnCount - 1 do
		cgrid_UseList.Columns[i].DataBinding.ValueType := 'String';
	cgrid_UseList.Columns[13].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[14].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[15].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[16].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[17].DataBinding.ValueType := 'Currency';
	cgrid_UseList.Columns[18].DataBinding.ValueType := 'Currency';

end;

procedure TFrm_CUTB6.proc_SaveBubinDate(AYyMm, AHdNo, ABrNo, ABubinCode, ADeposit, ABill, AFinishCnt, AFinishCharge, AOrderCnt : string);
var
  ls_TxLoad: string;
  ls_rxxml: string;
  XmlData, ErrMsg: string;
  xdom: MSDomDocument;
  lst_Result: IXMLDomNodeList;
  I, ErrCode : Integer;
  ls_MSG_Err, rv_str: string;
  slRcvList : TStringList;
begin
  Try
    if ABubinCode = '' then exit;

    Screen.Cursor := crHourGlass;

    ls_TxLoad := GTx_UnitXmlLoad('ACC12020.xml');
    slRcvList := TStringList.Create;
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strMonth'       , AYyMm);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strHdNo'        , AHdNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBrNo'        , ABrNo);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strCbCode'      , ABubinCode);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strPaymentYn'   , ADeposit);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strBillYn'      , ABill);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCnt'   , AFinishCnt);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strFinishCharge', AFinishCharge);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'strOrderCnt'    , AOrderCnt);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'UserIDString'   , GT_USERIF.ID);
    ls_TxLoad := ReplaceAll(ls_TxLoad, 'ClientVerString', VERSIONINFO);
    try
      if dm.SendSock(ls_TxLoad, slRcvList, ErrCode, False, 30000) then
      begin
        rv_str := slRcvList[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := CoMSDomDocument.Create;
          try
            xdom.loadXML(ls_rxxml);

            ls_MSG_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' <> ls_MSG_Err) then
            begin
              GMessagebox('법인 상세 조회시 오류발생 : '+ls_Msg_Err, CDMSI);
              exit;
            end;
          finally
            xdom := Nil;
            slRcvList.Free;
            Screen.Cursor := crDefault;
          end;
        end;
      end;
    except
      slRcvList.Free;
      Screen.Cursor := crDefault;
    end;
	except
		on e: exception do
    begin
			Screen.Cursor := crDefault;
			Assert(False, E.Message);
		end;
  end;
end;

procedure TFrm_CUTB6.rb_BillYClick(Sender: TObject);
begin
  if rb_BillY.Checked then rb_BillY.Hint := 'y';
  if rb_BillN.Checked then rb_BillY.Hint := 'n';

end;

procedure TFrm_CUTB6.rb_DepositYClick(Sender: TObject);
begin
  if rb_DepositY.Checked then rb_DepositY.Hint := 'y';
  if rb_DepositN.Checked then rb_DepositY.Hint := 'n';
end;

end.

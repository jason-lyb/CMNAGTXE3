unit xe_ACCA8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MSXML2_TLB, ShellAPI, cxSplitter, cxContainer, cxEdit, cxLabel, cxPC, cxControls,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DateUtils, cxRadioGroup, cxSpinEdit, ExtCtrls,
  cxMemo, cxCheckBox,  cxGridExportLink,
  cxCurrencyEdit, cxGridBandedTableView, cxTimeEdit, GradientLabel,
  cxImageComboBox, cxPCdxBarPopupMenu, cxLookAndFeels, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxNavigator, cxGroupBox, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinscxPCPainter;

type
  TFrm_ACCA8 = class(TForm)
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    Panel7: TPanel;
    cxrbBrCash: TcxRadioButton;
    chrbSmsCash: TcxRadioButton;
    cxcbCashMoveBrName1: TcxComboBox;
    cxcbCashMoveBrName2: TcxComboBox;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLblIBrCash: TcxLabel;
    cxLabel54: TcxLabel;
    cxLblISmCash: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxLblBrView: TcxLabel;
    cxLabel51: TcxLabel;
    cxLblOBrCash: TcxLabel;
    cxLabel60: TcxLabel;
    cxLblOSmCash: TcxLabel;
    cxLblSMView: TcxLabel;
    cxEdtLMoveAmt: TcxCurrencyEdit;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxBtnOKLA8: TcxButton;
    cxLabel67: TcxLabel;
    cxLabel70: TcxLabel;
    cxcbCashMoveBrName4: TcxComboBox;
    cxLabel72: TcxLabel;
    cxLblBrCash: TcxLabel;
    cxLabel74: TcxLabel;
    cxGridA8: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cxBrCashMove: TcxGridBandedTableView;
    cxBrCashMoveColumn1: TcxGridBandedColumn;
    cxBrCashMoveColumn2: TcxGridBandedColumn;
    cxBrCashMoveColumn3: TcxGridBandedColumn;
    cxBrCashMoveColumn4: TcxGridBandedColumn;
    cxBrCashMoveColumn5: TcxGridBandedColumn;
    cxChkSel: TcxCheckBox;
    cxLabel75: TcxLabel;
    Panel8: TPanel;
    cxRBCashM: TcxRadioButton;
    cxRBCashB: TcxRadioButton;
    cxLabel76: TcxLabel;
    cxEdtRMoveAmt: TcxCurrencyEdit;
    cxLabel77: TcxLabel;
    cxBtnOKRA8: TcxButton;
    cxLabel78: TcxLabel;
    cxSTR01: TcxStyleRepository;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    chkUseCashMoveDefault: TcxCheckBox;
    edtCashMoveDefaultBranch: TcxTextEdit;
    cxLabel8: TcxLabel;
    edtCashMoveMemo: TcxTextEdit;
    cxLabel11: TcxLabel;
    edtCashMoveMultiMemo: TcxTextEdit;
    cxcbCashMoveHdName1: TcxComboBox;
    cxcbCashMoveHdName2: TcxComboBox;
    cxcbCashMoveHdName4: TcxComboBox;
    PnlSelHdOpt: TPanel;
    RB_SelHdOpt1: TcxRadioButton;
    RB_SelHdOpt2: TcxRadioButton;
    PnlMain: TPanel;
    cxGroupBox1: TcxGroupBox;
    Shape2: TShape;
    cxGroupBox2: TcxGroupBox;
    Shape1: TShape;
    Shape3: TShape;
    cxGroupBox3: TcxGroupBox;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    cxGroupBox4: TcxGroupBox;
    Shape9: TShape;
    cxGroupBox5: TcxGroupBox;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxcbCashMoveBrName1Click(Sender: TObject);
    procedure cxcbCashMoveBrName2Click(Sender: TObject);
    procedure cxcbCashMoveBrName4Click(Sender: TObject);
    procedure cxBrCashMoveBands3HeaderClick(Sender: TObject);
    procedure cxBtnOKLA8Click(Sender: TObject);
    procedure cxBtnOKRA8Click(Sender: TObject);
    procedure cxBrCashMoveBands1HeaderClick(Sender: TObject);
    procedure cxBrCashMoveBands2HeaderClick(Sender: TObject);
    procedure chkUseCashMoveDefaultClick(Sender: TObject);
    procedure cxEdtLMoveAmtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxcbCashMoveHdName2PropertiesChange(Sender: TObject);
    procedure cxcbCashMoveHdName4PropertiesChange(Sender: TObject);
    procedure RB_SelHdOpt1Click(Sender: TObject);
    procedure cxcbCashMoveHdName1PropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FUseCashMoveDefaultBranch: Boolean;
    FCashMoveDefaultBrNo,
		FCashMoveDefaultBrName: string;

		GReceiveMainText: string;
    procedure proc_brChage(iType: Integer; sBrNo: string);
    procedure proc_BrNameSearch(iType: Integer; sBrNo, sHdNo : string);
    procedure proc_CashMove(iType: Integer);

    procedure SetCashMoveDefaultBranch(AUse: Boolean; ABrNo, ABrName: string);
    function SelectCashMoveDefaultHdNm(ABrNo: string): Boolean;
    function SelectCashMoveDefaultBranch(ABrNo: string): Boolean;
    function SelectCashMoveDefaultFamilyBranch(ABrNo: string): Boolean;
	public
    { Public declarations }
    procedure proc_init;
  end;

var
  Frm_ACCA8: TFrm_ACCA8;

implementation

{$R *.dfm}

uses Main, xe_Dm, xe_Func, xe_GNL, xe_gnl2, xe_gnl3, xe_Msg, xe_packet, xe_xml,
  xe_Query, xe_Flash;

procedure TFrm_ACCA8.proc_init;
begin
  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120704 LYB
  begin
    cxrbBrCash.Checked := True;

		cxGroupBox2.Caption := '  ※ 캐쉬 입금 본사 지사';
    cxGroupBox3.Caption := '  ※ 캐쉬 출금 본사 지사';
    cxGroupBox5.Caption := '  ※ 캐쉬 출금 본사 지사';

    PnlSelHdOpt.Visible := True;

    cxcbCashMoveHdName1.Properties.Items.Clear;
    cxcbCashMoveHdName1.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName1.Tag := 1;
    cxcbCashMoveHdName1.ItemIndex := 0;
    cxcbCashMoveHdName1.Tag := 0;

    cxcbCashMoveHdName2.Properties.Items.Clear;
    cxcbCashMoveHdName2.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName2.Tag := 1;
    cxcbCashMoveHdName2.ItemIndex := 0;
    cxcbCashMoveHdName2.Tag := 0;

    cxcbCashMoveHdName4.Properties.Items.Clear;
    cxcbCashMoveHdName4.Properties.Items.Assign(scb_HdNm);
    cxcbCashMoveHdName4.Tag := 1;
    cxcbCashMoveHdName4.ItemIndex := 0;
    cxcbCashMoveHdName4.Tag := 0;
  end else
  begin
    cxrbBrCash.Checked := True;

    cxGroupBox2.Caption := '  ※ 캐쉬 입금 지사';
    cxGroupBox3.Caption := '  ※ 캐쉬 출금 지사';
    cxGroupBox5.Caption := '  ※ 캐쉬 출금 지사';

    PnlSelHdOpt.Visible := False;

    cxcbCashMoveHdName1.Visible := False;
    cxcbCashMoveHdName2.Visible := False;
    cxcbCashMoveHdName4.Visible := False;

    cxcbCashMoveBrName1.Properties.Items.Clear;
    cxcbCashMoveBrName1.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName1.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName1.Tag := 1;
    cxcbCashMoveBrName1.ItemIndex := 0;
    cxcbCashMoveBrName1.Tag := 0;
    cxcbCashMoveBrName2.Properties.Items.Clear;
    cxcbCashMoveBrName2.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName2.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName2.Tag := 1;
    cxcbCashMoveBrName2.ItemIndex := 0;
    cxcbCashMoveBrName2.Tag := 0;
    cxcbCashMoveBrName4.Properties.Items.Clear;
    cxcbCashMoveBrName4.Properties.Items.Assign(scb_Branch);
    cxcbCashMoveBrName4.Properties.Items.Insert(0, '지사선택');
    cxcbCashMoveBrName4.Tag := 1;
    cxcbCashMoveBrName4.ItemIndex := 0;
    cxcbCashMoveBrName4.Tag := 0;
  end;

  cxLblBrView.Visible := True;
  cxLblBrView.Left := 8;
  cxLblBrView.Top := 67;
  cxLblSMView.Visible := True;
  cxLblSMView.Left := 8;
  cxLblSMView.Top := 67;
  cxLblIBrCash.Caption := '';
  cxLblISmCash.Caption := '';
  cxLblOBrCash.Caption := '';
  cxLblOSmCash.Caption := '';
  cxEdtLMoveAmt.Value := 0;
  cxLblBrCash.Caption := '';
  cxChkSel.Checked := False;
  cxRBCashM.Checked := True;
  cxEdtRMoveAmt.Value := 0;

  cxBrCashMove.Columns[0].DataBinding.ValueType := 'Integer';
  cxBrCashMove.Columns[1].DataBinding.ValueType := 'String';
  cxBrCashMove.Columns[2].DataBinding.ValueType := 'Currency';
  cxBrCashMove.Columns[3].DataBinding.ValueType := 'String';
  cxBrCashMove.Columns[4].DataBinding.ValueType := 'String';

  FUseCashMoveDefaultBranch := GS_EnvFile.ReadBool('CashMove', Format('Use-%s', [GT_USERIF.ID]), False);
  FCashMoveDefaultBrNo := GS_EnvFile.ReadString('CashMove', Format('BrNo-%s', [GT_USERIF.ID]), '');
  FCashMoveDefaultBrName := GS_EnvFile.ReadString('CashMove', Format('BrName-%s', [GT_USERIF.ID]), '');

  if FUseCashMoveDefaultBranch then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
    begin
      if SelectCashMoveDefaultHdNm(FCashMoveDefaultBrNo) then
         cxcbCashMoveHdName2PropertiesChange(cxcbCashMoveHdName2);

      if SelectCashMoveDefaultFamilyBranch(FCashMoveDefaultBrNo) then
        SetCashMoveDefaultBranch(FUseCashMoveDefaultBranch, FCashMoveDefaultBrNo, FCashMoveDefaultBrName);
    end else
    begin
      if SelectCashMoveDefaultBranch(FCashMoveDefaultBrNo) then
        SetCashMoveDefaultBranch(FUseCashMoveDefaultBranch, FCashMoveDefaultBrNo, FCashMoveDefaultBrName);
    end;
  end;
end;

procedure TFrm_ACCA8.FormCreate(Sender: TObject);
begin
  proc_init;
end;

procedure TFrm_ACCA8.FormDestroy(Sender: TObject);
begin
  Frm_ACCA8 := Nil;
end;

procedure TFrm_ACCA8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ACCA8.cxcbCashMoveBrName1Click(Sender: TObject);
var
  sBrNo: string;
begin
  if cxcbCashMoveBrName1.ItemIndex = 0 then
  begin
    cxLblIBrCash.Caption := '';
    cxLblISmCash.Caption := '';
    cxLblBrView.Visible := True;
  end else
  begin
    cxLblBrView.Visible := False;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName1.ItemIndex - 1];
    proc_brChage(0, sBrNo);
  end;
end;

procedure TFrm_ACCA8.proc_brChage(iType: Integer; sBrNo: string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp: string;
  rv_str, swhere: string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  slReceive: TStringList;
  ErrCode, i : integer;
begin
  try
    sWhere := format('WHERE BR_NO = ''%s'' ORDER BY BR_NAME ', [sBrNo]);
    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_BRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('│', lst_Result.item[0].attributes.getNamedItem('Value').Text, ls_Rcrd);
                if iType = 0 then
                begin
                  cxLblIBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxLblISmCash.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[3]));
                end else
                if iType = 1 then
                begin
                  cxLblOBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxLblOSmCash.Caption := FormatFloat('#,##0.#', StrToFloat(ls_Rcrd[3]));
                end else
                if iType = 2 then
                begin
                  cxLblBrCash.Caption := FormatFloat('#,##0', StrToFloat(ls_Rcrd[2]));
                  cxBrCashMove.BeginUpdate;
                  if RB_SelHdOpt2.Checked then     // 20120629 LYB
                  begin
                    for i := 0 to scb_HdNo.Count - 1 do
                    begin
                      proc_BrNameSearch(1, sBrNo, scb_HdNo[i]);
                    end;
                  end else
                  begin
                    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120704 LYB
                      proc_BrNameSearch(1, sBrNo, scb_HdNo[cxcbCashMoveHdName4.ItemIndex])
                    else
                      proc_BrNameSearch(1, sBrNo, GT_USERIF.HD);
                  end;
                  cxBrCashMove.EndUpdate;
                end;
              finally
                ls_Rcrd.Free;
              end;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
      Frm_Flash.Hide;
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACCA8.cxcbCashMoveBrName2Click(Sender: TObject);
var
  sBrNo: string;
begin
  if cxcbCashMoveBrName2.ItemIndex = 0 then
  begin
    cxLblOBrCash.Caption := '';
    cxLblOSmCash.Caption := '';
    cxLblSMView.Visible := True;
  end else
  begin
    cxLblSMView.Visible := False;
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    proc_brChage(1, sBrNo);
  end;
end;

procedure TFrm_ACCA8.cxcbCashMoveBrName4Click(Sender: TObject);
var
  sBrNo: string;
begin
  if cxcbCashMoveBrName4.ItemIndex = 0 then
  begin
    cxLblBrCash.Caption := '';
  end else
  if cxcbCashMoveBrName4.ItemIndex > 0 then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sBrNo := LeftStr(cxcbCashMoveBrName4.Text, Pos('(', cxcbCashMoveBrName4.Text) - 1)
    else
      sBrNo := scb_BranchCode[cxcbCashMoveBrName4.ItemIndex - 1];
      
    cxBrCashMove.DataController.SetRecordCount(0);
    cxChkSel.Checked := False;
    proc_brChage(2, sBrNo);
  end;
end;

procedure TFrm_ACCA8.proc_BrNameSearch(iType: Integer; sBrNo, sHdNo : string);
var
  ls_TxQry, ls_TxLoad, sQueryTemp : string;
  rv_str, swhere: string;
  ls_rxxml: WideString;

  xdom: msDomDocument;
  lst_Result: IXMLDomNodeList;
  ls_Msg_Err: string;
  ls_Rcrd: TStringList;
  ls_ClientKey: string;
  s: string;
  i, iRow: Integer;
  slReceive: TStringList;
  ErrCode: integer;
begin
  try
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' ORDER BY BR_CASH DESC, BR_NO ASC ', [sBrNo, sHdNo])
    else
      sWhere := format('WHERE BR_NO != ''%s'' AND HD_NO = ''%s'' ORDER BY BR_CASH DESC, BR_NO ASC ', [sBrNo, GT_USERIF.HD]);

    ls_TxLoad := GTx_UnitXmlLoad('SEL01.XML');
    fGet_BlowFish_Query(GSQ_ACC_BRANCH_CASH, sQueryTemp);
    ls_TxQry := Format(sQueryTemp, [sWhere]);

    ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', GT_USERIF.ID, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BRCA0001', [rfReplaceAll]);
    ls_TxLoad := StringReplace(ls_TxLoad, 'QueryString', ls_TxQry, [rfReplaceAll]);

    Screen.Cursor := crHandPoint;
    slReceive := TStringList.Create;
    try
      if dm.SendSock(ls_TxLoad, slReceive, ErrCode, False) then
      begin
        rv_str := slReceive[0];
        if rv_str <> '' then
        begin
          ls_rxxml := rv_str;
          xdom := ComsDomDocument.Create;
          try
            if (not xdom.loadXML(ls_rxxml)) then
            begin
              Screen.Cursor := crDefault;
              ShowMessage('전문 Error입니다. 다시조회하여주십시요.');
              Exit;
            end;
            ls_Msg_Err := GetXmlErrorCode(ls_rxxml);
            if ('0000' = ls_Msg_Err) then
            begin
              lst_Result := xdom.documentElement.selectNodes('/cdms/Service/Data/Result');
              if (0 < GetXmlRecordCount(ls_rxxml)) then
              begin
                ls_Rcrd := TStringList.Create;
                try
                  for i := 0 to lst_Result.length - 1 do
                  begin
                    GetTextSeperationEx('│', lst_Result.item[i].attributes.getNamedItem('Value').Text, ls_Rcrd);

                    if iType = 1 then
                    begin
                      if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
                      begin
                        iRow := cxBrCashMove.DataController.AppendRecord;
                        cxBrCashMove.DataController.Values[iRow, 0] := iRow + 1;
                        if RB_SelHdOpt2.Checked then
                          cxBrCashMove.DataController.Values[iRow, 1] := scb_HdNm[scb_HdNo.IndexOf(sHdNo)] + '_' + ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )'
                        else
                          cxBrCashMove.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )';
                        cxBrCashMove.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        cxBrCashMove.DataController.Values[iRow, 3] := '0';
                        cxBrCashMove.DataController.Values[iRow, 4] := ls_Rcrd[0];
                      end else
                      begin
                        iRow := cxBrCashMove.DataController.AppendRecord;
                        cxBrCashMove.DataController.Values[iRow, 0] := iRow + 1;
                        cxBrCashMove.DataController.Values[iRow, 1] := ls_Rcrd[1] + ' ( ' + ls_Rcrd[0] + ' )';
                        cxBrCashMove.DataController.Values[iRow, 2] := ls_Rcrd[2];
                        cxBrCashMove.DataController.Values[iRow, 3] := '0';
                        cxBrCashMove.DataController.Values[iRow, 4] := ls_Rcrd[0];
                      end;
                    end;
                  end;
                finally
                  ls_Rcrd.Free;
                end;
              end;
            end else
            begin
              Screen.Cursor := crDefault;
              GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
            end;
          finally
            xdom := Nil;
          end;
        end;
      end;
    finally
      Frm_Flash.Hide;
      Screen.Cursor := crDefault;
      FreeAndNil(slReceive);
    end;
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrm_ACCA8.cxBrCashMoveBands3HeaderClick(Sender: TObject);
var
  i, iCheck: Integer;
begin
  if cxChkSel.Checked then
  begin
    cxChkSel.Checked := False;
    iCheck := 0;
  end else
  begin
    cxChkSel.Checked := True;
    iCheck := 1;
  end;
  for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
  begin
    cxBrCashMove.DataController.Values[i, 3] := IntToStr(iCheck);
  end;
end;

procedure TFrm_ACCA8.proc_CashMove(iType: Integer);
const
  ls_Param = '<param>ParamString</param>';
var
  rv_str, ls_TxQry, ls_TxLoad, ls_Msg_Err, sMsg: string;
  sTemp, sParam: string;
  ls_rxxml: WideString;
  i, iCnt, iIdx: Integer;
  asParam: array[1..7] of string;
  ls_Rcrd: TStringList;
  slReceive: TStringList;
  ErrCode: integer;
begin
  ls_TxLoad := GTx_UnitXmlLoad('CALLABLE2.xml');
  if iType = 0 then
  begin
    if cxrbBrCash.Checked then
      asParam[1] := IntToStr(1)
    else
      asParam[1] := IntToStr(2);

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[2] := scb_HdNo[cxcbCashMoveHdName1.ItemIndex]   // 입금본사코드
    else
      asParam[2] := GT_USERIF.HD;

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[3] := LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1)
    else
      asParam[3] := scb_BranchCode[cxcbCashMoveBrName1.ItemIndex - 1];

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[4] := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      asParam[4] := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    asParam[5] := StringReplace(cxEdtLMoveAmt.Text, ',', '', [rfReplaceAll]);
    asParam[6] := GT_USERIF.ID;
    asParam[7] := edtCashMoveMemo.Text;
    sTemp := 'BRCASH_SMSCASH_MOVE2(?';
    iCnt := 7;
    for i := 1 to iCnt do
    begin
      sTemp := sTemp + ',?';
      sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
    end;
    sTemp := sTemp + ')';
  end else
  if iType = 1 then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      asParam[1] := LeftStr(cxcbCashMoveBrName4.Text, Pos('(', cxcbCashMoveBrName4.Text) - 1)
    else
      asParam[1] := scb_BranchCode[cxcbCashMoveBrName4.itemIndex - 1];

    sTemp := '';
    for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
    begin
      if cxBrCashMove.DataController.Values[i, 3] = '1' then
      begin
        if sTemp = '' then
          sTemp := cxBrCashMove.DataController.Values[i, 4]
        else
          sTemp := sTemp + ',' + cxBrCashMove.DataController.Values[i, 4];
      end;
    end;
    asParam[2] := sTemp;
    if cxRBCashM.Checked then
      asParam[3] := '1'
    else
      asParam[3] := '2';
    asParam[4] := StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]);
    asParam[5] := GT_USERIF.ID;
    asParam[6] := edtCashMoveMultiMemo.Text;
    sTemp := 'BRCASH_MOVE2(?';
    iCnt := 6;
    for i := 1 to iCnt do
    begin
      sTemp := sTemp + ',?';
      sParam := sParam + StringReplace(ls_Param, 'ParamString', asParam[i], [rfReplaceAll]);
    end;
    sTemp := sTemp + ')';
  end;

  ls_TxLoad := StringReplace(ls_TxLoad, 'UserIDString', En_Coding(GT_USERIF.ID), [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientVerString', VERSIONINFO, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'ClientKeyString', 'BGROUPSAVE', [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CallString', sTemp, [rfReplaceAll]);
  ls_TxLoad := StringReplace(ls_TxLoad, 'CountString', IntToStr(iCnt), [rfReplaceAll]);
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
          if ('0000' = ls_Msg_Err) then
          begin
            if iType = 0 then
            begin
              GMessagebox(ReplaceAll(sMsg, '\n', #13#10), CDMSI);
              cxcbCashMoveBrName1Click(cxcbCashMoveBrName1);
              cxcbCashMoveBrName2Click(cxcbCashMoveBrName2);
              cxEdtLMoveAmt.Value := 0;
              edtCashMoveMemo.Clear;
            end else
            if iType = 1 then
            begin
              ls_Rcrd := TStringList.Create;
              try
                GetTextSeperationEx('|', sMsg, ls_Rcrd);
                sMsg := '성공건수 : ' + ls_Rcrd[0] + ' 개' + #13#10
                  + '성공금액 : ' + FormatFloat('#,##0', StrToFloatDef(ls_Rcrd[1], 0.0)) + ' 원';
              cxEdtRMoveAmt.Value := 0;
              edtCashMoveMultiMemo.Clear;
              finally
                ls_Rcrd.Free;
              end;
              GMessagebox(sMsg, CDMSI);
              cxEdtRMoveAmt.Value := 0;
              cxcbCashMoveBrName4Click(cxcbCashMoveBrName4);
            end;
          end else
            GMessagebox(MSG012 + CRLF + ls_MSG_Err, CDMSE);
        except
          GMessagebox('실패하였습니다.' + #13#10 + '다시 한번 시도해 보세요', CDMSI);
        end;
      end;
    end;
  finally
    Frm_Flash.Hide;
    Screen.Cursor := crDefault;
    FreeAndNil(slReceive);
  end;
end;

procedure TFrm_ACCA8.cxBtnOKLA8Click(Sender: TObject);
var
  iCash, iCash2: Double;
begin
  if (cxcbCashMoveBrName1.ItemIndex = 0) or (cxcbCashMoveBrName2.ItemIndex = 0) then
  begin
    GMessagebox('지사를 선택하셔야 합니다.', CDMSI);
    Exit;
  end;

  if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
  begin
    if LeftStr(cxcbCashMoveBrName1.Text, Pos('(', cxcbCashMoveBrName1.Text) - 1) = LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1) then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSI);
      Exit;
    end;
  end else
  begin
    if cxcbCashMoveBrName1.ItemIndex = cxcbCashMoveBrName2.ItemIndex then
    begin
      GMessagebox('출금지사와 입금지사가 동일합니다.', CDMSI);
      Exit;
    end;
  end;

  if cxrbBrCash.Checked then
    iCash := StrToFloatDef(StringReplace(cxLblOBrCash.Caption, ',', '', [rfReplaceAll]), 0)
  else
    iCash := StrToFloatDef(StringReplace(cxLblOSmCash.Caption, ',', '', [rfReplaceAll]), 0);

  iCash2 := StrToFloatDef(StringReplace(cxEdtLMoveAmt.Text, ',', '', [rfReplaceAll]), 0);

	if iCash2 <= 0 then
  begin
		GMessagebox('0원보다 적은 경우 이동되지 않습니다.', CDMSI);
    cxEdtLMoveAmt.SetFocus;
    Exit;
  end;

  if iCash2 > iCash then
  begin
    GMessagebox('이동할 캐쉬가 출금할 캐쉬보다 크면은 캐쉬 이동을 할 수 없습니다.'+ #13#10
      + '출금할 지사를 다시선택하던가 이동할 캐쉬를 줄이세요', CDMSI);
    Exit;
  end;
  proc_CashMove(0);
end;

procedure TFrm_ACCA8.cxBtnOKRA8Click(Sender: TObject);
var
  i, iCnt: Integer;
begin
	if cxcbCashMoveBrName4.ItemIndex = 0 then
  begin
    GMessagebox('지사를 선택하셔야 합니다', CDMSI);
    exit;
  end;
  iCnt := 0;
  for i := 0 to cxBrCashMove.DataController.RecordCount - 1 do
  begin
    if cxBrCashMove.DataController.Values[i, 3] = '1' then
    begin
      iCnt := 1;
      Break;
    end;
  end;

  if iCnt = 0 then
  begin
    GMessagebox('입금할 지사가 없습니다.', CDMSI);
    exit;
  end;

  if (cxRBCashM.Checked) and
		(StrToIntDef(StringReplace(cxEdtRMoveAmt.Text, ',', '', [rfReplaceAll]), 0) <= 0) then
  begin
		GMessagebox('0원보다 적은 캐쉬 이동할수 없습니다.', CDMSI);
    exit;
  end;
  
	proc_CashMove(1);
end;

procedure TFrm_ACCA8.cxBrCashMoveBands1HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxBrCashMove.ColumnCount - 1 do
    begin
      if i <> 1 then
      begin
        cxBrCashMove.Columns[i].SortIndex := -1;
        cxBrCashMove.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxBrCashMove.Columns[1].SortOrder = soNone) or
      (cxBrCashMove.Columns[1].SortOrder = soDescending) then
      cxBrCashMove.Columns[1].SortOrder := soAscending
    else
    if cxBrCashMove.Columns[1].SortOrder = soAscending then
      cxBrCashMove.Columns[1].SortOrder := soDescending;
    cxBrCashMove.Columns[1].SortIndex := 0;
    cxBrCashMove.DataController.FocusedRowIndex := 0;

    gfSetIndexNo(cxBrCashMove, GS_SortNoChange);
  except
    on e: exception do
    begin

    end;
  end;
end;

procedure TFrm_ACCA8.cxBrCashMoveBands2HeaderClick(Sender: TObject);
var
  i: Integer;
  sTemp: string;
begin
  try
    for i := 0 to cxBrCashMove.ColumnCount - 1 do
    begin
      if i <> 2 then
      begin
        cxBrCashMove.Columns[i].SortIndex := -1;
        cxBrCashMove.Columns[i].SortOrder := soNone;
      end;
    end;
    if (cxBrCashMove.Columns[2].SortOrder = soNone) or
      (cxBrCashMove.Columns[2].SortOrder = soDescending) then
      cxBrCashMove.Columns[2].SortOrder := soAscending
    else
    if cxBrCashMove.Columns[2].SortOrder = soAscending then
      cxBrCashMove.Columns[2].SortOrder := soDescending;
    cxBrCashMove.Columns[2].SortIndex := 0;
    cxBrCashMove.DataController.FocusedRowIndex := 0;

    gfSetIndexNo(cxBrCashMove, GS_SortNoChange);
  except
    on e: exception do
    begin

    end;
  end;
end;

procedure TFrm_ACCA8.SetCashMoveDefaultBranch(AUse: Boolean; ABrNo,
  ABrName: string);
begin
  FUseCashMoveDefaultBranch := AUse;
  FCashMoveDefaultBrNo := ABrNo;
  FCashMoveDefaultBrName := ABrName;

  chkUseCashMoveDefault.Checked := AUse;
  if ABrName <> '' then
    edtCashMoveDefaultBranch.Text := Format('(%s) %s', [ABrNo, ABrName])
  else
    edtCashMoveDefaultBranch.Text := '';
  edtCashMoveDefaultBranch.Hint := ABrNo;

  GS_EnvFile.WriteBool('CashMove', Format('Use-%s', [GT_USERIF.ID]), FUseCashMoveDefaultBranch);
  GS_EnvFile.WriteString('CashMove', Format('BrNo-%s', [GT_USERIF.ID]), FCashMoveDefaultBrNo);
  GS_EnvFile.WriteString('CashMove', Format('BrName-%s', [GT_USERIF.ID]), FCashMoveDefaultBrName);
end;

function TFrm_ACCA8.SelectCashMoveDefaultHdNm(ABrNo: string): Boolean;
var i : Integer;
begin
  Result := False;
  if scb_BranchCode.IndexOf(ABrNo) >= 0 then
  begin
    for i := 0 to scb_HdNo.Count - 1 do
    begin
      if scb_HdNo[i] = scb_HdCode[scb_BranchCode.IndexOf(ABrNo)] then
      begin
        cxcbCashMoveHdName2.ItemIndex := i;
      end;
    end;
    Result := True;
  end;
end;

function TFrm_ACCA8.SelectCashMoveDefaultBranch(ABrNo: string): Boolean;
begin
  Result := False;
  if scb_BranchCode.IndexOf(ABrNo) >= 0 then
  begin
    cxcbCashMoveBrName2.ItemIndex := scb_BranchCode.IndexOf(ABrNo) + 1;
    Result := True;
  end;
end;

function TFrm_ACCA8.SelectCashMoveDefaultFamilyBranch(
  ABrNo: string): Boolean;
var i : Integer;
begin
  Result := False;

  for i := 0 to cxcbCashMoveBrName2.Properties.Items.Count - 1 do
  begin
    if LeftStr(cxcbCashMoveBrName2.Properties.Items.Strings[i], Pos('(', cxcbCashMoveBrName2.Properties.Items.Strings[i]) - 1) = ABrNo then
    begin
      cxcbCashMoveBrName2.ItemIndex := i;
      Result := True;      
    end;
  end;
end;

procedure TFrm_ACCA8.chkUseCashMoveDefaultClick(Sender: TObject);
var
  BrNo, BrName: string;
begin
  if (cxcbCashMoveBrName2.ItemIndex = 0) and (TcxCheckBox(Sender).checked) then
  begin
    GMessagebox('기본 출금지사 선택을 위해 지사를 선택하셔야 합니다.', CDMSI);
    TcxCheckBox(Sender).checked := False;
    edtCashMoveDefaultBranch.Clear;
    edtCashMoveDefaultBranch.Hint := '';
    Exit;
  end;

  if TcxCheckBox(Sender).Checked then
  begin
    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      BrNo := LeftStr(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) - 1)
    else
      BrNo := scb_BranchCode[cxcbCashMoveBrName2.ItemIndex - 1];

    if ( GT_USERIF.Family = 'y' ) And ( GT_USERIF.LV = '60' ) then     // 20120629 LYB
      BrName := Copy(cxcbCashMoveBrName2.Text, Pos('(', cxcbCashMoveBrName2.Text) + 1,  Length(cxcbCashMoveBrName2.Text) - (Pos('(', cxcbCashMoveBrName2.Text)+1))
    else
      BrName := scb_BranchName[cxcbCashMoveBrName2.ItemIndex - 1];
  end else
  begin
    BrNo := '';
    BrName := '';
  end;
  SetCashMoveDefaultBranch(TcxCheckBox(Sender).Checked, BrNo, BrName);
end;

procedure TFrm_ACCA8.cxEdtLMoveAmtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Ord(Key) = VK_RETURN then
  begin
    if Sender = cxEdtLMoveAmt then
      edtCashMoveMemo.SetFocus
    else
    if Sender = edtCashMoveMemo then
      cxBtnOKLA8.SetFocus
    else
    if Sender = cxEdtRMoveAmt then
      edtCashMoveMultiMemo.SetFocus
    else
    if Sender = edtCashMoveMultiMemo then
      cxBtnOKRA8.SetFocus;
  end;
end;

procedure TFrm_ACCA8.cxcbCashMoveHdName1PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName1, cxcbCashMoveBrName1);
end;

procedure TFrm_ACCA8.cxcbCashMoveHdName2PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName2, cxcbCashMoveBrName2);
end;

procedure TFrm_ACCA8.cxcbCashMoveHdName4PropertiesChange(Sender: TObject);
begin
  CB_HdCng_BrCng(cxcbCashMoveHdName4, cxcbCashMoveBrName4);
  cxBrCashMove.DataController.SetRecordCount(0);
end;

procedure TFrm_ACCA8.RB_SelHdOpt1Click(Sender: TObject);
begin
  cxBrCashMove.DataController.SetRecordCount(0);
  cxcbCashMoveBrName4.Tag := 1;
  cxcbCashMoveBrName4.ItemIndex := 0;
  cxcbCashMoveBrName4.Tag := 0;
end;

end.

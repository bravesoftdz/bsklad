unit AddIn_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision: 1.2 $
// File generated on 24.12.2003 13:38:22 from Type Library described below.

// ************************************************************************ //
// Type Lib: E:\Projects\DriverFR\Source\DrvFR\DrvFR.tlb (1)
// IID\LCID: {332C8050-469C-4B4D-A192-68CD3CB252BA}\0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINNT\system32\STDVCL40.DLL)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AddInMajorVersion = 1;
  AddInMinorVersion = 3;

  LIBID_AddIn: TGUID = '{332C8050-469C-4B4D-A192-68CD3CB252BA}';

  IID_IDrvFR: TGUID = '{2951939A-B915-4CC3-8F87-0803B8EB894F}';
  IID_IDrvFR2: TGUID = '{63097449-EC60-4E93-8052-60CB8EC8C993}';
  CLASS_DrvFR: TGUID = '{E187099F-8C5C-4723-8866-D8DBB6353ADE}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDrvFR = interface;
  IDrvFRDisp = dispinterface;
  IDrvFR2 = interface;
  IDrvFR2Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DrvFR = IDrvFR2;


// *********************************************************************//
// Interface: IDrvFR
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2951939A-B915-4CC3-8F87-0803B8EB894F}
// *********************************************************************//
  IDrvFR = interface(IDispatch)
    ['{2951939A-B915-4CC3-8F87-0803B8EB894F}']
    function  AddLD: Integer; safecall;
    function  Beep: Integer; safecall;
    function  Buy: Integer; safecall;
    function  BuyEx: Integer; safecall;
    function  CancelCheck: Integer; safecall;
    function  CashIncome: Integer; safecall;
    function  CashOutcome: Integer; safecall;
    function  Charge: Integer; safecall;
    function  CheckSubTotal: Integer; safecall;
    function  CloseCheck: Integer; safecall;
    function  ConfirmDate: Integer; safecall;
    function  Connect: Integer; safecall;
    function  ContinuePrint: Integer; safecall;
    function  Correction: Integer; safecall;
    function  CutCheck: Integer; safecall;
    function  DampRequest: Integer; safecall;
    function  DeleteLD: Integer; safecall;
    function  Disconnect: Integer; safecall;
    function  Discount: Integer; safecall;
    function  DozeOilCheck: Integer; safecall;
    function  Draw: Integer; safecall;
    function  EKLZDepartmentReportInDatesRange: Integer; safecall;
    function  EKLZDepartmentReportInSessionsRange: Integer; safecall;
    function  EKLZJournalOnSessionNumber: Integer; safecall;
    function  EKLZSessionReportInDatesRange: Integer; safecall;
    function  EKLZSessionReportInSessionsRange: Integer; safecall;
    function  ExchangeBytes: Integer; safecall;
    function  FeedDocument: Integer; safecall;
    function  Fiscalization: Integer; safecall;
    function  FiscalReportForDatesRange: Integer; safecall;
    function  FiscalReportForSessionRange: Integer; safecall;
    function  GetActiveLD: Integer; safecall;
    function  EnumLD: Integer; safecall;
    function  GetCashReg: Integer; safecall;
    function  GetCountLD: Integer; safecall;
    function  GetData: Integer; safecall;
    function  GetDeviceMetrics: Integer; safecall;
    function  GetECRStatus: Integer; safecall;
    function  GetShortECRStatus: Integer; safecall;
    function  GetExchangeParam: Integer; safecall;
    function  GetFieldStruct: Integer; safecall;
    function  GetFiscalizationParameters: Integer; safecall;
    function  GetFMRecordsSum: Integer; safecall;
    function  GetLastFMRecordDate: Integer; safecall;
    function  GetLiterSumCounter: Integer; safecall;
    function  GetOperationReg: Integer; safecall;
    function  GetParamLD: Integer; safecall;
    function  GetRangeDatesAndSessions: Integer; safecall;
    function  GetRKStatus: Integer; safecall;
    function  GetTableStruct: Integer; safecall;
    function  InitFM: Integer; safecall;
    function  InitTable: Integer; safecall;
    function  InterruptDataStream: Integer; safecall;
    function  InterruptFullReport: Integer; safecall;
    function  InterruptTest: Integer; safecall;
    function  LaunchRK: Integer; safecall;
    function  LoadLineData: Integer; safecall;
    function  OilSale: Integer; safecall;
    function  OpenCheck: Integer; safecall;
    function  OpenDrawer: Integer; safecall;
    function  PrintBarCode: Integer; safecall;
    function  PrintDepartmentReport: Integer; safecall;
    function  PrintDocumentTitle: Integer; safecall;
    function  PrintOperationReg: Integer; safecall;
    function  PrintReportWithCleaning: Integer; safecall;
    function  PrintReportWithoutCleaning: Integer; safecall;
    function  PrintString: Integer; safecall;
    function  PrintWideString: Integer; safecall;
    function  ReadEKLZDocumentOnKPK: Integer; safecall;
    function  ReadEKLZSessionTotal: Integer; safecall;
    function  ReadLicense: Integer; safecall;
    function  ReadTable: Integer; safecall;
    function  RepeatDocument: Integer; safecall;
    function  ResetAllTRK: Integer; safecall;
    function  ResetRK: Integer; safecall;
    function  ResetSettings: Integer; safecall;
    function  ResetSummary: Integer; safecall;
    function  ReturnBuy: Integer; safecall;
    function  ReturnBuyEx: Integer; safecall;
    function  ReturnSale: Integer; safecall;
    function  ReturnSaleEx: Integer; safecall;
    function  Sale: Integer; safecall;
    function  SaleEx: Integer; safecall;
    function  SetActiveLD: Integer; safecall;
    function  SetDate: Integer; safecall;
    function  SetDozeInMilliliters: Integer; safecall;
    function  SetDozeInMoney: Integer; safecall;
    function  SetExchangeParam: Integer; safecall;
    function  SetParamLD: Integer; safecall;
    function  SetPointPosition: Integer; safecall;
    function  SetRKParameters: Integer; safecall;
    function  SetSerialNumber: Integer; safecall;
    function  SetTime: Integer; safecall;
    function  ShowProperties: Integer; safecall;
    function  StopEKLZDocumentPrinting: Integer; safecall;
    function  StopRK: Integer; safecall;
    function  Storno: Integer; safecall;
    function  StornoEx: Integer; safecall;
    function  StornoCharge: Integer; safecall;
    function  StornoDiscount: Integer; safecall;
    function  SummOilCheck: Integer; safecall;
    function  SysAdminCancelCheck: Integer; safecall;
    function  Test: Integer; safecall;
    function  WriteLicense: Integer; safecall;
    function  WriteTable: Integer; safecall;
    function  Get_BarCode: WideString; safecall;
    procedure Set_BarCode(const Value: WideString); safecall;
    function  Get_BatteryCondition: WordBool; safecall;
    function  Get_BatteryVoltage: Double; safecall;
    function  Get_BaudRate: Integer; safecall;
    procedure Set_BaudRate(Value: Integer); safecall;
    function  Get_Change: Currency; safecall;
    function  Get_CheckResult: Currency; safecall;
    procedure Set_CheckResult(Value: Currency); safecall;
    function  Get_CheckType: Integer; safecall;
    procedure Set_CheckType(Value: Integer); safecall;
    function  Get_ComNumber: Integer; safecall;
    procedure Set_ComNumber(Value: Integer); safecall;
    function  Get_ContentsOfCashRegister: Currency; safecall;
    function  Get_ContentsOfOperationRegister: Integer; safecall;
    function  Get_CurrentDozeInMilliliters: Integer; safecall;
    procedure Set_CurrentDozeInMilliliters(Value: Integer); safecall;
    function  Get_CurrentDozeInMoney: Currency; safecall;
    procedure Set_CurrentDozeInMoney(Value: Currency); safecall;
    function  Get_CutType: WordBool; safecall;
    procedure Set_CutType(Value: WordBool); safecall;
    function  Get_DataBlock: WideString; safecall;
    function  Get_DataBlockNumber: Integer; safecall;
    function  Get_Date: TDateTime; safecall;
    procedure Set_Date(Value: TDateTime); safecall;
    function  Get_Department: Integer; safecall;
    procedure Set_Department(Value: Integer); safecall;
    function  Get_DeviceCode: Integer; safecall;
    procedure Set_DeviceCode(Value: Integer); safecall;
    function  Get_DeviceCodeDescription: WideString; safecall;
    function  Get_DiscountOnCheck: Double; safecall;
    procedure Set_DiscountOnCheck(Value: Double); safecall;
    function  Get_DocumentName: WideString; safecall;
    procedure Set_DocumentName(const Value: WideString); safecall;
    function  Get_DocumentNumber: Integer; safecall;
    procedure Set_DocumentNumber(Value: Integer); safecall;
    function  Get_DozeInMilliliters: Integer; safecall;
    procedure Set_DozeInMilliliters(Value: Integer); safecall;
    function  Get_DozeInMoney: Currency; safecall;
    procedure Set_DozeInMoney(Value: Currency); safecall;
    function  Get_DrawerNumber: Integer; safecall;
    procedure Set_DrawerNumber(Value: Integer); safecall;
    function  Get_ECRAdvancedMode: Integer; safecall;
    function  Get_ECRAdvancedModeDescription: WideString; safecall;
    function  Get_ECRBuild: Integer; safecall;
    function  Get_ECRFlags: Integer; safecall;
    function  Get_ECRInput: WideString; safecall;
    function  Get_ECRMode: Integer; safecall;
    function  Get_ECRMode8Status: Integer; safecall;
    function  Get_ECRModeDescription: WideString; safecall;
    function  Get_ECROutput: WideString; safecall;
    function  Get_ECRSoftDate: TDateTime; safecall;
    function  Get_ECRSoftVersion: WideString; safecall;
    function  Get_EKLZIsPresent: WordBool; safecall;
    function  Get_EmergencyStopCode: Integer; safecall;
    function  Get_EmergencyStopCodeDescription: WideString; safecall;
    function  Get_FieldName: WideString; safecall;
    function  Get_FieldNumber: Integer; safecall;
    procedure Set_FieldNumber(Value: Integer); safecall;
    function  Get_FieldSize: Integer; safecall;
    function  Get_FieldType: WordBool; safecall;
    function  Get_FirstLineNumber: Integer; safecall;
    procedure Set_FirstLineNumber(Value: Integer); safecall;
    function  Get_FirstSessionDate: TDateTime; safecall;
    procedure Set_FirstSessionDate(Value: TDateTime); safecall;
    function  Get_FirstSessionNumber: Integer; safecall;
    procedure Set_FirstSessionNumber(Value: Integer); safecall;
    function  Get_FM1IsPresent: WordBool; safecall;
    function  Get_FM2IsPresent: WordBool; safecall;
    function  Get_FMBuild: Integer; safecall;
    function  Get_FMFlags: Integer; safecall;
    function  Get_FMOverflow: WordBool; safecall;
    function  Get_FMSoftDate: TDateTime; safecall;
    function  Get_FMSoftVersion: WideString; safecall;
    function  Get_FreeRecordInFM: Integer; safecall;
    function  Get_FreeRegistration: Integer; safecall;
    function  Get_INN: WideString; safecall;
    procedure Set_INN(const Value: WideString); safecall;
    function  Get_IsCheckClosed: WordBool; safecall;
    function  Get_IsCheckMadeOut: WordBool; safecall;
    function  Get_IsDrawerOpen: WordBool; safecall;
    function  Get_JournalRibbonIsPresent: WordBool; safecall;
    function  Get_JournalRibbonLever: WordBool; safecall;
    function  Get_JournalRibbonOpticalSensor: WordBool; safecall;
    function  Get_KPKNumber: Integer; safecall;
    procedure Set_KPKNumber(Value: Integer); safecall;
    function  Get_LastLineNumber: Integer; safecall;
    procedure Set_LastLineNumber(Value: Integer); safecall;
    function  Get_LastSessionDate: TDateTime; safecall;
    procedure Set_LastSessionDate(Value: TDateTime); safecall;
    function  Get_LastSessionNumber: Integer; safecall;
    procedure Set_LastSessionNumber(Value: Integer); safecall;
    function  Get_License: WideString; safecall;
    procedure Set_License(const Value: WideString); safecall;
    function  Get_LicenseIsPresent: WordBool; safecall;
    function  Get_LidPositionSensor: WordBool; safecall;
    function  Get_LineData: WideString; safecall;
    procedure Set_LineData(const Value: WideString); safecall;
    function  Get_LineNumber: Integer; safecall;
    procedure Set_LineNumber(Value: Integer); safecall;
    function  Get_LogicalNumber: Integer; safecall;
    function  Get_MAXValueOfField: Integer; safecall;
    function  Get_MINValueOfField: Integer; safecall;
    function  Get_Motor: WordBool; safecall;
    function  Get_NameCashReg: WideString; safecall;
    function  Get_NameOperationReg: WideString; safecall;
    function  Get_NewPasswordTI: Integer; safecall;
    procedure Set_NewPasswordTI(Value: Integer); safecall;
    function  Get_OpenDocumentNumber: Integer; safecall;
    function  Get_OperatorNumber: Integer; safecall;
    function  Get_Password: Integer; safecall;
    procedure Set_Password(Value: Integer); safecall;
    function  Get_Pistol: WordBool; safecall;
    function  Get_PointPosition: WordBool; safecall;
    procedure Set_PointPosition(Value: WordBool); safecall;
    function  Get_PortNumber: Integer; safecall;
    procedure Set_PortNumber(Value: Integer); safecall;
    function  Get_Price: Currency; safecall;
    procedure Set_Price(Value: Currency); safecall;
    function  Get_Quantity: Double; safecall;
    procedure Set_Quantity(Value: Double); safecall;
    function  Get_QuantityOfOperations: Integer; safecall;
    function  Get_ReceiptRibbonIsPresent: WordBool; safecall;
    function  Get_ReceiptRibbonLever: WordBool; safecall;
    function  Get_ReceiptRibbonOpticalSensor: WordBool; safecall;
    function  Get_RegisterNumber: Integer; safecall;
    procedure Set_RegisterNumber(Value: Integer); safecall;
    function  Get_RegistrationNumber: Integer; safecall;
    procedure Set_RegistrationNumber(Value: Integer); safecall;
    function  Get_ReportType: WordBool; safecall;
    procedure Set_ReportType(Value: WordBool); safecall;
    function  Get_ResultCode: Integer; safecall;
    function  Get_ResultCodeDescription: WideString; safecall;
    function  Get_RKNumber: Integer; safecall;
    procedure Set_RKNumber(Value: Integer); safecall;
    function  Get_RNM: WideString; safecall;
    procedure Set_RNM(const Value: WideString); safecall;
    function  Get_RoughValve: WordBool; safecall;
    function  Get_RowNumber: Integer; safecall;
    procedure Set_RowNumber(Value: Integer); safecall;
    function  Get_RunningPeriod: Integer; safecall;
    procedure Set_RunningPeriod(Value: Integer); safecall;
    function  Get_SerialNumber: WideString; safecall;
    procedure Set_SerialNumber(const Value: WideString); safecall;
    function  Get_SessionNumber: Integer; safecall;
    procedure Set_SessionNumber(Value: Integer); safecall;
    function  Get_SlipDocumentIsMoving: WordBool; safecall;
    function  Get_SlipDocumentIsPresent: WordBool; safecall;
    function  Get_SlowingInMilliliters: Integer; safecall;
    procedure Set_SlowingInMilliliters(Value: Integer); safecall;
    function  Get_SlowingValve: WordBool; safecall;
    function  Get_StatusRK: Integer; safecall;
    function  Get_StatusRKDescription: WideString; safecall;
    function  Get_StringForPrinting: WideString; safecall;
    procedure Set_StringForPrinting(const Value: WideString); safecall;
    function  Get_StringQuantity: Integer; safecall;
    procedure Set_StringQuantity(Value: Integer); safecall;
    function  Get_Summ1: Currency; safecall;
    procedure Set_Summ1(Value: Currency); safecall;
    function  Get_Summ2: Currency; safecall;
    procedure Set_Summ2(Value: Currency); safecall;
    function  Get_Summ3: Currency; safecall;
    procedure Set_Summ3(Value: Currency); safecall;
    function  Get_Summ4: Currency; safecall;
    procedure Set_Summ4(Value: Currency); safecall;
    function  Get_TableName: WideString; safecall;
    function  Get_TableNumber: Integer; safecall;
    procedure Set_TableNumber(Value: Integer); safecall;
    function  Get_Tax1: Integer; safecall;
    procedure Set_Tax1(Value: Integer); safecall;
    function  Get_Tax2: Integer; safecall;
    procedure Set_Tax2(Value: Integer); safecall;
    function  Get_Tax3: Integer; safecall;
    procedure Set_Tax3(Value: Integer); safecall;
    function  Get_Tax4: Integer; safecall;
    procedure Set_Tax4(Value: Integer); safecall;
    function  Get_Time: TDateTime; safecall;
    procedure Set_Time(Value: TDateTime); safecall;
    function  Get_Timeout: Integer; safecall;
    procedure Set_Timeout(Value: Integer); safecall;
    function  Get_TimeStr: WideString; safecall;
    procedure Set_TimeStr(const Value: WideString); safecall;
    function  Get_TransferBytes: WideString; safecall;
    procedure Set_TransferBytes(const Value: WideString); safecall;
    function  Get_TRKNumber: Integer; safecall;
    procedure Set_TRKNumber(Value: Integer); safecall;
    function  Get_TypeOfLastEntryFM: WordBool; safecall;
    function  Get_TypeOfSumOfEntriesFM: WordBool; safecall;
    procedure Set_TypeOfSumOfEntriesFM(Value: WordBool); safecall;
    function  Get_UCodePage: Integer; safecall;
    function  Get_UDescription: WideString; safecall;
    function  Get_UMajorProtocolVersion: Integer; safecall;
    function  Get_UMajorType: Integer; safecall;
    function  Get_UMinorProtocolVersion: Integer; safecall;
    function  Get_UMinorType: Integer; safecall;
    function  Get_UModel: Integer; safecall;
    function  Get_UseJournalRibbon: WordBool; safecall;
    procedure Set_UseJournalRibbon(Value: WordBool); safecall;
    function  Get_UseReceiptRibbon: WordBool; safecall;
    procedure Set_UseReceiptRibbon(Value: WordBool); safecall;
    function  Get_UseSlipDocument: WordBool; safecall;
    procedure Set_UseSlipDocument(Value: WordBool); safecall;
    function  Get_ValueOfFieldInteger: Integer; safecall;
    procedure Set_ValueOfFieldInteger(Value: Integer); safecall;
    function  Get_ValueOfFieldString: WideString; safecall;
    procedure Set_ValueOfFieldString(const Value: WideString); safecall;
    function  PrintStringWithFont: Integer; safecall;
    function  Get_FontType: Integer; safecall;
    procedure Set_FontType(Value: Integer); safecall;
    function  Get_LDBaudrate: Integer; safecall;
    procedure Set_LDBaudrate(Value: Integer); safecall;
    function  Get_LDComNumber: Integer; safecall;
    procedure Set_LDComNumber(Value: Integer); safecall;
    function  Get_LDCount: Integer; safecall;
    function  Get_LDIndex: Integer; safecall;
    procedure Set_LDIndex(Value: Integer); safecall;
    function  Get_LDName: WideString; safecall;
    procedure Set_LDName(const Value: WideString); safecall;
    function  Get_LDNumber: Integer; safecall;
    procedure Set_LDNumber(Value: Integer); safecall;
    function  Get_WaitPrintingTime: Integer; safecall;
    function  Get_IsPrinterLeftSensorFailure: WordBool; safecall;
    function  Get_IsPrinterRightSensorFailure: WordBool; safecall;
    function  EKLZActivizationResult: Integer; safecall;
    function  EKLZActivization: Integer; safecall;
    function  CloseEKLZArchive: Integer; safecall;
    function  GetEKLZSerialNumber: Integer; safecall;
    function  Get_EKLZNumber: WideString; safecall;
    function  EKLZInterrupt: Integer; safecall;
    function  GetEKLZCode1Report: Integer; safecall;
    function  Get_LastKPKDocumentResult: Currency; safecall;
    function  Get_LastKPKDate: TDateTime; safecall;
    function  Get_LastKPKTime: TDateTime; safecall;
    function  Get_LastKPKNumber: Integer; safecall;
    function  Get_EKLZFlags: Integer; safecall;
    function  GetEKLZCode2Report: Integer; safecall;
    function  TestEKLZArchiveIntegrity: Integer; safecall;
    function  Get_TestNumber: Integer; safecall;
    procedure Set_TestNumber(Value: Integer); safecall;
    function  Get_EKLZVersion: WideString; safecall;
    function  Get_EKLZData: WideString; safecall;
    function  GetEKLZVersion: Integer; safecall;
    function  InitEKLZArchive: Integer; safecall;
    function  GetEKLZData: Integer; safecall;
    function  GetEKLZJournal: Integer; safecall;
    function  GetEKLZDocument: Integer; safecall;
    function  GetEKLZDepartmentReportInDatesRange: Integer; safecall;
    function  GetEKLZDepartmentReportInSessionsRange: Integer; safecall;
    function  GetEKLZSessionReportInDatesRange: Integer; safecall;
    function  GetEKLZSessionReportInSessionsRange: Integer; safecall;
    function  GetEKLZSessionTotal: Integer; safecall;
    function  GetEKLZActivizationResult: Integer; safecall;
    function  SetEKLZResultCode: Integer; safecall;
    function  Get_EKLZResultCode: Integer; safecall;
    procedure Set_EKLZResultCode(Value: Integer); safecall;
    function  Get_FMResultCode: Integer; safecall;
    function  Get_PowerSourceVoltage: Double; safecall;
    function  Get_IsEKLZOverflow: WordBool; safecall;
    function  OpenFiscalSlipDocument: Integer; safecall;
    function  OpenStandardFiscalSlipDocument: Integer; safecall;
    function  RegistrationOnSlipDocument: Integer; safecall;
    function  StandardRegistrationOnSlipDocument: Integer; safecall;
    function  ChargeOnSlipDocument: Integer; safecall;
    function  StandardChargeOnSlipDocument: Integer; safecall;
    function  CloseCheckOnSlipDocument: Integer; safecall;
    function  StandardCloseCheckOnSlipDocument: Integer; safecall;
    function  ConfigureSlipDocument: Integer; safecall;
    function  ConfigureStandardSlipDocument: Integer; safecall;
    function  FillSlipDocumentWithUnfiscalInfo: Integer; safecall;
    function  ClearSlipDocumentBufferString: Integer; safecall;
    function  ClearSlipDocumentBuffer: Integer; safecall;
    function  PrintSlipDocument: Integer; safecall;
    function  Get_CopyType: Integer; safecall;
    procedure Set_CopyType(Value: Integer); safecall;
    function  Get_NumberOfCopies: Integer; safecall;
    procedure Set_NumberOfCopies(Value: Integer); safecall;
    function  Get_CopyOffset1: Integer; safecall;
    procedure Set_CopyOffset1(Value: Integer); safecall;
    function  Get_CopyOffset2: Integer; safecall;
    procedure Set_CopyOffset2(Value: Integer); safecall;
    function  Get_CopyOffset3: Integer; safecall;
    procedure Set_CopyOffset3(Value: Integer); safecall;
    function  Get_CopyOffset4: Integer; safecall;
    procedure Set_CopyOffset4(Value: Integer); safecall;
    function  Get_CopyOffset5: Integer; safecall;
    procedure Set_CopyOffset5(Value: Integer); safecall;
    function  Get_ClicheFont: Integer; safecall;
    procedure Set_ClicheFont(Value: Integer); safecall;
    function  Get_HeaderFont: Integer; safecall;
    procedure Set_HeaderFont(Value: Integer); safecall;
    function  Get_EKLZFont: Integer; safecall;
    procedure Set_EKLZFont(Value: Integer); safecall;
    function  Get_ClicheStringNumber: Integer; safecall;
    procedure Set_ClicheStringNumber(Value: Integer); safecall;
    function  Get_HeaderStringNumber: Integer; safecall;
    procedure Set_HeaderStringNumber(Value: Integer); safecall;
    function  Get_EKLZStringNumber: Integer; safecall;
    procedure Set_EKLZStringNumber(Value: Integer); safecall;
    function  Get_FMStringNumber: Integer; safecall;
    procedure Set_FMStringNumber(Value: Integer); safecall;
    function  Get_ClicheOffset: Integer; safecall;
    procedure Set_ClicheOffset(Value: Integer); safecall;
    function  Get_HeaderOffset: Integer; safecall;
    procedure Set_HeaderOffset(Value: Integer); safecall;
    function  Get_EKLZOffset: Integer; safecall;
    procedure Set_EKLZOffset(Value: Integer); safecall;
    function  Get_KPKOffset: Integer; safecall;
    procedure Set_KPKOffset(Value: Integer); safecall;
    function  Get_FMOffset: Integer; safecall;
    procedure Set_FMOffset(Value: Integer); safecall;
    function  Get_OperationBlockFirstString: Integer; safecall;
    procedure Set_OperationBlockFirstString(Value: Integer); safecall;
    function  Get_QuantityFormat: Integer; safecall;
    procedure Set_QuantityFormat(Value: Integer); safecall;
    function  Get_StringQuantityInOperation: Integer; safecall;
    procedure Set_StringQuantityInOperation(Value: Integer); safecall;
    function  Get_TextStringNumber: Integer; safecall;
    procedure Set_TextStringNumber(Value: Integer); safecall;
    function  Get_QuantityStringNumber: Integer; safecall;
    procedure Set_QuantityStringNumber(Value: Integer); safecall;
    function  Get_SummStringNumber: Integer; safecall;
    procedure Set_SummStringNumber(Value: Integer); safecall;
    function  Get_DepartmentStringNumber: Integer; safecall;
    procedure Set_DepartmentStringNumber(Value: Integer); safecall;
    function  Get_TextFont: Integer; safecall;
    procedure Set_TextFont(Value: Integer); safecall;
    function  Get_QuantityFont: Integer; safecall;
    procedure Set_QuantityFont(Value: Integer); safecall;
    function  Get_MultiplicationFont: Integer; safecall;
    procedure Set_MultiplicationFont(Value: Integer); safecall;
    function  Get_PriceFont: Integer; safecall;
    procedure Set_PriceFont(Value: Integer); safecall;
    function  Get_SummFont: Integer; safecall;
    procedure Set_SummFont(Value: Integer); safecall;
    function  Get_DepartmentFont: Integer; safecall;
    procedure Set_DepartmentFont(Value: Integer); safecall;
    function  Get_TextSymbolNumber: Integer; safecall;
    procedure Set_TextSymbolNumber(Value: Integer); safecall;
    function  Get_QuantitySymbolNumber: Integer; safecall;
    procedure Set_QuantitySymbolNumber(Value: Integer); safecall;
    function  Get_PriceSymbolNumber: Integer; safecall;
    procedure Set_PriceSymbolNumber(Value: Integer); safecall;
    function  Get_SummSymbolNumber: Integer; safecall;
    procedure Set_SummSymbolNumber(Value: Integer); safecall;
    function  Get_DepartmentSymbolNumber: Integer; safecall;
    procedure Set_DepartmentSymbolNumber(Value: Integer); safecall;
    function  Get_TextOffset: Integer; safecall;
    procedure Set_TextOffset(Value: Integer); safecall;
    function  Get_QuantityOffset: Integer; safecall;
    procedure Set_QuantityOffset(Value: Integer); safecall;
    function  Get_SummOffset: Integer; safecall;
    procedure Set_SummOffset(Value: Integer); safecall;
    function  Get_DepartmentOffset: Integer; safecall;
    procedure Set_DepartmentOffset(Value: Integer); safecall;
    function  DiscountOnSlipDocument: Integer; safecall;
    function  StandardDiscountOnSlipDocument: Integer; safecall;
    function  Get_IsClearUnfiscalInfo: WordBool; safecall;
    procedure Set_IsClearUnfiscalInfo(Value: WordBool); safecall;
    function  Get_InfoType: Integer; safecall;
    procedure Set_InfoType(Value: Integer); safecall;
    function  Get_StringNumber: Integer; safecall;
    procedure Set_StringNumber(Value: Integer); safecall;
    function  EjectSlipDocument: Integer; safecall;
    function  Get_EjectDirection: Integer; safecall;
    procedure Set_EjectDirection(Value: Integer); safecall;
    function  LoadLineDataEx: Integer; safecall;
    function  DrawEx: Integer; safecall;
    function  ConfigureGeneralSlipDocument: Integer; safecall;
    function  Get_OperationNameStringNumber: Integer; safecall;
    procedure Set_OperationNameStringNumber(Value: Integer); safecall;
    function  Get_OperationNameFont: Integer; safecall;
    procedure Set_OperationNameFont(Value: Integer); safecall;
    function  Get_OperationNameOffset: Integer; safecall;
    procedure Set_OperationNameOffset(Value: Integer); safecall;
    function  Get_TotalStringNumber: Integer; safecall;
    procedure Set_TotalStringNumber(Value: Integer); safecall;
    function  Get_Summ1StringNumber: Integer; safecall;
    procedure Set_Summ1StringNumber(Value: Integer); safecall;
    function  Get_Summ2StringNumber: Integer; safecall;
    procedure Set_Summ2StringNumber(Value: Integer); safecall;
    function  Get_Summ3StringNumber: Integer; safecall;
    procedure Set_Summ3StringNumber(Value: Integer); safecall;
    function  Get_Summ4StringNumber: Integer; safecall;
    procedure Set_Summ4StringNumber(Value: Integer); safecall;
    function  Get_ChangeStringNumber: Integer; safecall;
    procedure Set_ChangeStringNumber(Value: Integer); safecall;
    function  Get_Tax1TurnOverStringNumber: Integer; safecall;
    procedure Set_Tax1TurnOverStringNumber(Value: Integer); safecall;
    function  Get_Tax2TurnOverStringNumber: Integer; safecall;
    procedure Set_Tax2TurnOverStringNumber(Value: Integer); safecall;
    function  Get_Tax3TurnOverStringNumber: Integer; safecall;
    procedure Set_Tax3TurnOverStringNumber(Value: Integer); safecall;
    function  Get_Tax4TurnOverStringNumber: Integer; safecall;
    procedure Set_Tax4TurnOverStringNumber(Value: Integer); safecall;
    function  Get_Tax1SumStringNumber: Integer; safecall;
    procedure Set_Tax1SumStringNumber(Value: Integer); safecall;
    function  Get_Tax2SumStringNumber: Integer; safecall;
    procedure Set_Tax2SumStringNumber(Value: Integer); safecall;
    function  Get_Tax3SumStringNumber: Integer; safecall;
    procedure Set_Tax3SumStringNumber(Value: Integer); safecall;
    function  Get_Tax4SumStringNumber: Integer; safecall;
    procedure Set_Tax4SumStringNumber(Value: Integer); safecall;
    function  Get_SubTotalStringNumber: Integer; safecall;
    procedure Set_SubTotalStringNumber(Value: Integer); safecall;
    function  Get_DiscountOnCheckStringNumber: Integer; safecall;
    procedure Set_DiscountOnCheckStringNumber(Value: Integer); safecall;
    function  Get_TotalFont: Integer; safecall;
    procedure Set_TotalFont(Value: Integer); safecall;
    function  Get_TotalSumFont: Integer; safecall;
    procedure Set_TotalSumFont(Value: Integer); safecall;
    function  Get_Summ1Font: Integer; safecall;
    procedure Set_Summ1Font(Value: Integer); safecall;
    function  Get_Summ1NameFont: Integer; safecall;
    procedure Set_Summ1NameFont(Value: Integer); safecall;
    function  Get_Summ2NameFont: Integer; safecall;
    procedure Set_Summ2NameFont(Value: Integer); safecall;
    function  Get_Summ3NameFont: Integer; safecall;
    procedure Set_Summ3NameFont(Value: Integer); safecall;
    function  Get_Summ4NameFont: Integer; safecall;
    procedure Set_Summ4NameFont(Value: Integer); safecall;
    function  Get_Summ2Font: Integer; safecall;
    procedure Set_Summ2Font(Value: Integer); safecall;
    function  Get_Summ3Font: Integer; safecall;
    procedure Set_Summ3Font(Value: Integer); safecall;
    function  Get_Summ4Font: Integer; safecall;
    procedure Set_Summ4Font(Value: Integer); safecall;
    function  Get_ChangeFont: Integer; safecall;
    procedure Set_ChangeFont(Value: Integer); safecall;
    function  Get_ChangeSumFont: Integer; safecall;
    procedure Set_ChangeSumFont(Value: Integer); safecall;
    function  Get_Tax1NameFont: Integer; safecall;
    procedure Set_Tax1NameFont(Value: Integer); safecall;
    function  Get_Tax2NameFont: Integer; safecall;
    procedure Set_Tax2NameFont(Value: Integer); safecall;
    function  Get_Tax3NameFont: Integer; safecall;
    procedure Set_Tax3NameFont(Value: Integer); safecall;
    function  Get_Tax4NameFont: Integer; safecall;
    procedure Set_Tax4NameFont(Value: Integer); safecall;
    function  Get_Tax1TurnOverFont: Integer; safecall;
    procedure Set_Tax1TurnOverFont(Value: Integer); safecall;
    function  Get_Tax2TurnOverFont: Integer; safecall;
    procedure Set_Tax2TurnOverFont(Value: Integer); safecall;
    function  Get_Tax3TurnOverFont: Integer; safecall;
    procedure Set_Tax3TurnOverFont(Value: Integer); safecall;
    function  Get_Tax4TurnOverFont: Integer; safecall;
    procedure Set_Tax4TurnOverFont(Value: Integer); safecall;
    function  Get_Tax1RateFont: Integer; safecall;
    procedure Set_Tax1RateFont(Value: Integer); safecall;
    function  Get_Tax2RateFont: Integer; safecall;
    procedure Set_Tax2RateFont(Value: Integer); safecall;
    function  Get_Tax3RateFont: Integer; safecall;
    procedure Set_Tax3RateFont(Value: Integer); safecall;
    function  Get_Tax4RateFont: Integer; safecall;
    procedure Set_Tax4RateFont(Value: Integer); safecall;
    function  Get_Tax1SumFont: Integer; safecall;
    procedure Set_Tax1SumFont(Value: Integer); safecall;
    function  Get_Tax2SumFont: Integer; safecall;
    procedure Set_Tax2SumFont(Value: Integer); safecall;
    function  Get_Tax3SumFont: Integer; safecall;
    procedure Set_Tax3SumFont(Value: Integer); safecall;
    function  Get_Tax4SumFont: Integer; safecall;
    procedure Set_Tax4SumFont(Value: Integer); safecall;
    function  Get_SubTotalFont: Integer; safecall;
    procedure Set_SubTotalFont(Value: Integer); safecall;
    function  Get_SubTotalSumFont: Integer; safecall;
    procedure Set_SubTotalSumFont(Value: Integer); safecall;
    function  Get_DiscountOnCheckFont: Integer; safecall;
    procedure Set_DiscountOnCheckFont(Value: Integer); safecall;
    function  Get_DiscountOnCheckSumFont: Integer; safecall;
    procedure Set_DiscountOnCheckSumFont(Value: Integer); safecall;
    function  Get_TotalSymbolNumber: Integer; safecall;
    procedure Set_TotalSymbolNumber(Value: Integer); safecall;
    function  Get_Summ1SymbolNumber: Integer; safecall;
    procedure Set_Summ1SymbolNumber(Value: Integer); safecall;
    function  Get_Summ2SymbolNumber: Integer; safecall;
    procedure Set_Summ2SymbolNumber(Value: Integer); safecall;
    function  Get_Summ3SymbolNumber: Integer; safecall;
    procedure Set_Summ3SymbolNumber(Value: Integer); safecall;
    function  Get_Summ4SymbolNumber: Integer; safecall;
    procedure Set_Summ4SymbolNumber(Value: Integer); safecall;
    function  Get_ChangeSymbolNumber: Integer; safecall;
    procedure Set_ChangeSymbolNumber(Value: Integer); safecall;
    function  Get_Tax1NameSymbolNumber: Integer; safecall;
    procedure Set_Tax1NameSymbolNumber(Value: Integer); safecall;
    function  Get_Tax1TurnOverSymbolNumber: Integer; safecall;
    procedure Set_Tax1TurnOverSymbolNumber(Value: Integer); safecall;
    function  Get_Tax1RateSymbolNumber: Integer; safecall;
    procedure Set_Tax1RateSymbolNumber(Value: Integer); safecall;
    function  Get_Tax1SumSymbolNumber: Integer; safecall;
    procedure Set_Tax1SumSymbolNumber(Value: Integer); safecall;
    function  Get_Tax2NameSymbolNumber: Integer; safecall;
    procedure Set_Tax2NameSymbolNumber(Value: Integer); safecall;
    function  Get_Tax2TurnOverSymbolNumber: Integer; safecall;
    procedure Set_Tax2TurnOverSymbolNumber(Value: Integer); safecall;
    function  Get_Tax2RateSymbolNumber: Integer; safecall;
    procedure Set_Tax2RateSymbolNumber(Value: Integer); safecall;
    function  Get_Tax2SumSymbolNumber: Integer; safecall;
    procedure Set_Tax2SumSymbolNumber(Value: Integer); safecall;
    function  Get_Tax3NameSymbolNumber: Integer; safecall;
    procedure Set_Tax3NameSymbolNumber(Value: Integer); safecall;
    function  Get_Tax3TurnOverSymbolNumber: Integer; safecall;
    procedure Set_Tax3TurnOverSymbolNumber(Value: Integer); safecall;
    function  Get_Tax3RateSymbolNumber: Integer; safecall;
    procedure Set_Tax3RateSymbolNumber(Value: Integer); safecall;
    function  Get_Tax3SumSymbolNumber: Integer; safecall;
    procedure Set_Tax3SumSymbolNumber(Value: Integer); safecall;
    function  Get_Tax4NameSymbolNumber: Integer; safecall;
    procedure Set_Tax4NameSymbolNumber(Value: Integer); safecall;
    function  Get_Tax4TurnOverSymbolNumber: Integer; safecall;
    procedure Set_Tax4TurnOverSymbolNumber(Value: Integer); safecall;
    function  Get_Tax4RateSymbolNumber: Integer; safecall;
    procedure Set_Tax4RateSymbolNumber(Value: Integer); safecall;
    function  Get_Tax4SumSymbolNumber: Integer; safecall;
    procedure Set_Tax4SumSymbolNumber(Value: Integer); safecall;
    function  Get_SubTotalSymbolNumber: Integer; safecall;
    procedure Set_SubTotalSymbolNumber(Value: Integer); safecall;
    function  Get_DiscountOnCheckSymbolNumber: Integer; safecall;
    procedure Set_DiscountOnCheckSymbolNumber(Value: Integer); safecall;
    function  Get_DiscountOnCheckSumSymbolNumber: Integer; safecall;
    procedure Set_DiscountOnCheckSumSymbolNumber(Value: Integer); safecall;
    function  Get_TotalOffset: Integer; safecall;
    procedure Set_TotalOffset(Value: Integer); safecall;
    function  Get_Summ1Offset: Integer; safecall;
    procedure Set_Summ1Offset(Value: Integer); safecall;
    function  Get_TotalSumOffset: Integer; safecall;
    procedure Set_TotalSumOffset(Value: Integer); safecall;
    function  Get_Summ1NameOffset: Integer; safecall;
    procedure Set_Summ1NameOffset(Value: Integer); safecall;
    function  Get_Summ2Offset: Integer; safecall;
    procedure Set_Summ2Offset(Value: Integer); safecall;
    function  Get_Summ2NameOffset: Integer; safecall;
    procedure Set_Summ2NameOffset(Value: Integer); safecall;
    function  Get_Summ3Offset: Integer; safecall;
    procedure Set_Summ3Offset(Value: Integer); safecall;
    function  Get_Summ3NameOffset: Integer; safecall;
    procedure Set_Summ3NameOffset(Value: Integer); safecall;
    function  Get_Summ4Offset: Integer; safecall;
    procedure Set_Summ4Offset(Value: Integer); safecall;
    function  Get_Summ4NameOffset: Integer; safecall;
    procedure Set_Summ4NameOffset(Value: Integer); safecall;
    function  Get_ChangeOffset: Integer; safecall;
    procedure Set_ChangeOffset(Value: Integer); safecall;
    function  Get_ChangeSumOffset: Integer; safecall;
    procedure Set_ChangeSumOffset(Value: Integer); safecall;
    function  Get_Tax1NameOffset: Integer; safecall;
    procedure Set_Tax1NameOffset(Value: Integer); safecall;
    function  Get_Tax1TurnOverOffset: Integer; safecall;
    procedure Set_Tax1TurnOverOffset(Value: Integer); safecall;
    function  Get_Tax1RateOffset: Integer; safecall;
    procedure Set_Tax1RateOffset(Value: Integer); safecall;
    function  Get_Tax1SumOffset: Integer; safecall;
    procedure Set_Tax1SumOffset(Value: Integer); safecall;
    function  Get_Tax2NameOffset: Integer; safecall;
    procedure Set_Tax2NameOffset(Value: Integer); safecall;
    function  Get_Tax2TurnOverOffset: Integer; safecall;
    procedure Set_Tax2TurnOverOffset(Value: Integer); safecall;
    function  Get_Tax2RateOffset: Integer; safecall;
    procedure Set_Tax2RateOffset(Value: Integer); safecall;
    function  Get_Tax2SumOffset: Integer; safecall;
    procedure Set_Tax2SumOffset(Value: Integer); safecall;
    function  Get_Tax3NameOffset: Integer; safecall;
    procedure Set_Tax3NameOffset(Value: Integer); safecall;
    function  Get_Tax3TurnOverOffset: Integer; safecall;
    procedure Set_Tax3TurnOverOffset(Value: Integer); safecall;
    function  Get_Tax3RateOffset: Integer; safecall;
    procedure Set_Tax3RateOffset(Value: Integer); safecall;
    function  Get_Tax3SumOffset: Integer; safecall;
    procedure Set_Tax3SumOffset(Value: Integer); safecall;
    function  Get_Tax4NameOffset: Integer; safecall;
    procedure Set_Tax4NameOffset(Value: Integer); safecall;
    function  Get_Tax4TurnOverOffset: Integer; safecall;
    procedure Set_Tax4TurnOverOffset(Value: Integer); safecall;
    function  Get_Tax4RateOffset: Integer; safecall;
    procedure Set_Tax4RateOffset(Value: Integer); safecall;
    function  Get_Tax4SumOffset: Integer; safecall;
    procedure Set_Tax4SumOffset(Value: Integer); safecall;
    function  Get_SubTotalOffset: Integer; safecall;
    procedure Set_SubTotalOffset(Value: Integer); safecall;
    function  Get_SubTotalSumOffset: Integer; safecall;
    procedure Set_SubTotalSumOffset(Value: Integer); safecall;
    function  Get_SlipDocumentWidth: Integer; safecall;
    procedure Set_SlipDocumentWidth(Value: Integer); safecall;
    function  Get_SlipDocumentLength: Integer; safecall;
    procedure Set_SlipDocumentLength(Value: Integer); safecall;
    function  Get_PrintingAlignment: Integer; safecall;
    procedure Set_PrintingAlignment(Value: Integer); safecall;
    function  Get_SlipStringIntervals: WideString; safecall;
    procedure Set_SlipStringIntervals(const Value: WideString); safecall;
    function  Get_SlipEqualStringIntervals: Integer; safecall;
    procedure Set_SlipEqualStringIntervals(Value: Integer); safecall;
    function  Get_KPKFont: Integer; safecall;
    procedure Set_KPKFont(Value: Integer); safecall;
    function  Get_DiscountOnCheckOffset: Integer; safecall;
    procedure Set_DiscountOnCheckOffset(Value: Integer); safecall;
    function  Get_DiscountOnCheckSumOffset: Integer; safecall;
    procedure Set_DiscountOnCheckSumOffset(Value: Integer); safecall;
    function  WideLoadLineData: Integer; safecall;
    function  PrintTaxReport: Integer; safecall;
    function  Get_QuantityPointPosition: WordBool; safecall;
    function  Get_FileVersionMS: LongWord; safecall;
    function  Get_FileVersionLS: LongWord; safecall;
    function  GetLongSerialNumberAndLongRNM: Integer; safecall;
    function  SetLongSerialNumber: Integer; safecall;
    function  FiscalizationWithLongRNM: Integer; safecall;
    function  Get_IsBatteryLow: WordBool; safecall;
    function  Get_IsLastFMRecordCorrupted: WordBool; safecall;
    function  Get_IsFMSessionOpen: WordBool; safecall;
    function  Get_IsFM24HoursOver: WordBool; safecall;
    function  Connect2: Integer; safecall;
    function  Get_ECRModeStatus: Integer; safecall;
    function  GetECRPrinterStatus: Integer; safecall;
    function  Get_PrinterStatus: Integer; safecall;
    property BarCode: WideString read Get_BarCode write Set_BarCode;
    property BatteryCondition: WordBool read Get_BatteryCondition;
    property BatteryVoltage: Double read Get_BatteryVoltage;
    property BaudRate: Integer read Get_BaudRate write Set_BaudRate;
    property Change: Currency read Get_Change;
    property CheckResult: Currency read Get_CheckResult write Set_CheckResult;
    property CheckType: Integer read Get_CheckType write Set_CheckType;
    property ComNumber: Integer read Get_ComNumber write Set_ComNumber;
    property ContentsOfCashRegister: Currency read Get_ContentsOfCashRegister;
    property ContentsOfOperationRegister: Integer read Get_ContentsOfOperationRegister;
    property CurrentDozeInMilliliters: Integer read Get_CurrentDozeInMilliliters write Set_CurrentDozeInMilliliters;
    property CurrentDozeInMoney: Currency read Get_CurrentDozeInMoney write Set_CurrentDozeInMoney;
    property CutType: WordBool read Get_CutType write Set_CutType;
    property DataBlock: WideString read Get_DataBlock;
    property DataBlockNumber: Integer read Get_DataBlockNumber;
    property Date: TDateTime read Get_Date write Set_Date;
    property Department: Integer read Get_Department write Set_Department;
    property DeviceCode: Integer read Get_DeviceCode write Set_DeviceCode;
    property DeviceCodeDescription: WideString read Get_DeviceCodeDescription;
    property DiscountOnCheck: Double read Get_DiscountOnCheck write Set_DiscountOnCheck;
    property DocumentName: WideString read Get_DocumentName write Set_DocumentName;
    property DocumentNumber: Integer read Get_DocumentNumber write Set_DocumentNumber;
    property DozeInMilliliters: Integer read Get_DozeInMilliliters write Set_DozeInMilliliters;
    property DozeInMoney: Currency read Get_DozeInMoney write Set_DozeInMoney;
    property DrawerNumber: Integer read Get_DrawerNumber write Set_DrawerNumber;
    property ECRAdvancedMode: Integer read Get_ECRAdvancedMode;
    property ECRAdvancedModeDescription: WideString read Get_ECRAdvancedModeDescription;
    property ECRBuild: Integer read Get_ECRBuild;
    property ECRFlags: Integer read Get_ECRFlags;
    property ECRInput: WideString read Get_ECRInput;
    property ECRMode: Integer read Get_ECRMode;
    property ECRMode8Status: Integer read Get_ECRMode8Status;
    property ECRModeDescription: WideString read Get_ECRModeDescription;
    property ECROutput: WideString read Get_ECROutput;
    property ECRSoftDate: TDateTime read Get_ECRSoftDate;
    property ECRSoftVersion: WideString read Get_ECRSoftVersion;
    property EKLZIsPresent: WordBool read Get_EKLZIsPresent;
    property EmergencyStopCode: Integer read Get_EmergencyStopCode;
    property EmergencyStopCodeDescription: WideString read Get_EmergencyStopCodeDescription;
    property FieldName: WideString read Get_FieldName;
    property FieldNumber: Integer read Get_FieldNumber write Set_FieldNumber;
    property FieldSize: Integer read Get_FieldSize;
    property FieldType: WordBool read Get_FieldType;
    property FirstLineNumber: Integer read Get_FirstLineNumber write Set_FirstLineNumber;
    property FirstSessionDate: TDateTime read Get_FirstSessionDate write Set_FirstSessionDate;
    property FirstSessionNumber: Integer read Get_FirstSessionNumber write Set_FirstSessionNumber;
    property FM1IsPresent: WordBool read Get_FM1IsPresent;
    property FM2IsPresent: WordBool read Get_FM2IsPresent;
    property FMBuild: Integer read Get_FMBuild;
    property FMFlags: Integer read Get_FMFlags;
    property FMOverflow: WordBool read Get_FMOverflow;
    property FMSoftDate: TDateTime read Get_FMSoftDate;
    property FMSoftVersion: WideString read Get_FMSoftVersion;
    property FreeRecordInFM: Integer read Get_FreeRecordInFM;
    property FreeRegistration: Integer read Get_FreeRegistration;
    property INN: WideString read Get_INN write Set_INN;
    property IsCheckClosed: WordBool read Get_IsCheckClosed;
    property IsCheckMadeOut: WordBool read Get_IsCheckMadeOut;
    property IsDrawerOpen: WordBool read Get_IsDrawerOpen;
    property JournalRibbonIsPresent: WordBool read Get_JournalRibbonIsPresent;
    property JournalRibbonLever: WordBool read Get_JournalRibbonLever;
    property JournalRibbonOpticalSensor: WordBool read Get_JournalRibbonOpticalSensor;
    property KPKNumber: Integer read Get_KPKNumber write Set_KPKNumber;
    property LastLineNumber: Integer read Get_LastLineNumber write Set_LastLineNumber;
    property LastSessionDate: TDateTime read Get_LastSessionDate write Set_LastSessionDate;
    property LastSessionNumber: Integer read Get_LastSessionNumber write Set_LastSessionNumber;
    property License: WideString read Get_License write Set_License;
    property LicenseIsPresent: WordBool read Get_LicenseIsPresent;
    property LidPositionSensor: WordBool read Get_LidPositionSensor;
    property LineData: WideString read Get_LineData write Set_LineData;
    property LineNumber: Integer read Get_LineNumber write Set_LineNumber;
    property LogicalNumber: Integer read Get_LogicalNumber;
    property MAXValueOfField: Integer read Get_MAXValueOfField;
    property MINValueOfField: Integer read Get_MINValueOfField;
    property Motor: WordBool read Get_Motor;
    property NameCashReg: WideString read Get_NameCashReg;
    property NameOperationReg: WideString read Get_NameOperationReg;
    property NewPasswordTI: Integer read Get_NewPasswordTI write Set_NewPasswordTI;
    property OpenDocumentNumber: Integer read Get_OpenDocumentNumber;
    property OperatorNumber: Integer read Get_OperatorNumber;
    property Password: Integer read Get_Password write Set_Password;
    property Pistol: WordBool read Get_Pistol;
    property PointPosition: WordBool read Get_PointPosition write Set_PointPosition;
    property PortNumber: Integer read Get_PortNumber write Set_PortNumber;
    property Price: Currency read Get_Price write Set_Price;
    property Quantity: Double read Get_Quantity write Set_Quantity;
    property QuantityOfOperations: Integer read Get_QuantityOfOperations;
    property ReceiptRibbonIsPresent: WordBool read Get_ReceiptRibbonIsPresent;
    property ReceiptRibbonLever: WordBool read Get_ReceiptRibbonLever;
    property ReceiptRibbonOpticalSensor: WordBool read Get_ReceiptRibbonOpticalSensor;
    property RegisterNumber: Integer read Get_RegisterNumber write Set_RegisterNumber;
    property RegistrationNumber: Integer read Get_RegistrationNumber write Set_RegistrationNumber;
    property ReportType: WordBool read Get_ReportType write Set_ReportType;
    property ResultCode: Integer read Get_ResultCode;
    property ResultCodeDescription: WideString read Get_ResultCodeDescription;
    property RKNumber: Integer read Get_RKNumber write Set_RKNumber;
    property RNM: WideString read Get_RNM write Set_RNM;
    property RoughValve: WordBool read Get_RoughValve;
    property RowNumber: Integer read Get_RowNumber write Set_RowNumber;
    property RunningPeriod: Integer read Get_RunningPeriod write Set_RunningPeriod;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property SessionNumber: Integer read Get_SessionNumber write Set_SessionNumber;
    property SlipDocumentIsMoving: WordBool read Get_SlipDocumentIsMoving;
    property SlipDocumentIsPresent: WordBool read Get_SlipDocumentIsPresent;
    property SlowingInMilliliters: Integer read Get_SlowingInMilliliters write Set_SlowingInMilliliters;
    property SlowingValve: WordBool read Get_SlowingValve;
    property StatusRK: Integer read Get_StatusRK;
    property StatusRKDescription: WideString read Get_StatusRKDescription;
    property StringForPrinting: WideString read Get_StringForPrinting write Set_StringForPrinting;
    property StringQuantity: Integer read Get_StringQuantity write Set_StringQuantity;
    property Summ1: Currency read Get_Summ1 write Set_Summ1;
    property Summ2: Currency read Get_Summ2 write Set_Summ2;
    property Summ3: Currency read Get_Summ3 write Set_Summ3;
    property Summ4: Currency read Get_Summ4 write Set_Summ4;
    property TableName: WideString read Get_TableName;
    property TableNumber: Integer read Get_TableNumber write Set_TableNumber;
    property Tax1: Integer read Get_Tax1 write Set_Tax1;
    property Tax2: Integer read Get_Tax2 write Set_Tax2;
    property Tax3: Integer read Get_Tax3 write Set_Tax3;
    property Tax4: Integer read Get_Tax4 write Set_Tax4;
    property Time: TDateTime read Get_Time write Set_Time;
    property Timeout: Integer read Get_Timeout write Set_Timeout;
    property TimeStr: WideString read Get_TimeStr write Set_TimeStr;
    property TransferBytes: WideString read Get_TransferBytes write Set_TransferBytes;
    property TRKNumber: Integer read Get_TRKNumber write Set_TRKNumber;
    property TypeOfLastEntryFM: WordBool read Get_TypeOfLastEntryFM;
    property TypeOfSumOfEntriesFM: WordBool read Get_TypeOfSumOfEntriesFM write Set_TypeOfSumOfEntriesFM;
    property UCodePage: Integer read Get_UCodePage;
    property UDescription: WideString read Get_UDescription;
    property UMajorProtocolVersion: Integer read Get_UMajorProtocolVersion;
    property UMajorType: Integer read Get_UMajorType;
    property UMinorProtocolVersion: Integer read Get_UMinorProtocolVersion;
    property UMinorType: Integer read Get_UMinorType;
    property UModel: Integer read Get_UModel;
    property UseJournalRibbon: WordBool read Get_UseJournalRibbon write Set_UseJournalRibbon;
    property UseReceiptRibbon: WordBool read Get_UseReceiptRibbon write Set_UseReceiptRibbon;
    property UseSlipDocument: WordBool read Get_UseSlipDocument write Set_UseSlipDocument;
    property ValueOfFieldInteger: Integer read Get_ValueOfFieldInteger write Set_ValueOfFieldInteger;
    property ValueOfFieldString: WideString read Get_ValueOfFieldString write Set_ValueOfFieldString;
    property FontType: Integer read Get_FontType write Set_FontType;
    property LDBaudrate: Integer read Get_LDBaudrate write Set_LDBaudrate;
    property LDComNumber: Integer read Get_LDComNumber write Set_LDComNumber;
    property LDCount: Integer read Get_LDCount;
    property LDIndex: Integer read Get_LDIndex write Set_LDIndex;
    property LDName: WideString read Get_LDName write Set_LDName;
    property LDNumber: Integer read Get_LDNumber write Set_LDNumber;
    property WaitPrintingTime: Integer read Get_WaitPrintingTime;
    property IsPrinterLeftSensorFailure: WordBool read Get_IsPrinterLeftSensorFailure;
    property IsPrinterRightSensorFailure: WordBool read Get_IsPrinterRightSensorFailure;
    property EKLZNumber: WideString read Get_EKLZNumber;
    property LastKPKDocumentResult: Currency read Get_LastKPKDocumentResult;
    property LastKPKDate: TDateTime read Get_LastKPKDate;
    property LastKPKTime: TDateTime read Get_LastKPKTime;
    property LastKPKNumber: Integer read Get_LastKPKNumber;
    property EKLZFlags: Integer read Get_EKLZFlags;
    property TestNumber: Integer read Get_TestNumber write Set_TestNumber;
    property EKLZVersion: WideString read Get_EKLZVersion;
    property EKLZData: WideString read Get_EKLZData;
    property EKLZResultCode: Integer read Get_EKLZResultCode write Set_EKLZResultCode;
    property FMResultCode: Integer read Get_FMResultCode;
    property PowerSourceVoltage: Double read Get_PowerSourceVoltage;
    property IsEKLZOverflow: WordBool read Get_IsEKLZOverflow;
    property CopyType: Integer read Get_CopyType write Set_CopyType;
    property NumberOfCopies: Integer read Get_NumberOfCopies write Set_NumberOfCopies;
    property CopyOffset1: Integer read Get_CopyOffset1 write Set_CopyOffset1;
    property CopyOffset2: Integer read Get_CopyOffset2 write Set_CopyOffset2;
    property CopyOffset3: Integer read Get_CopyOffset3 write Set_CopyOffset3;
    property CopyOffset4: Integer read Get_CopyOffset4 write Set_CopyOffset4;
    property CopyOffset5: Integer read Get_CopyOffset5 write Set_CopyOffset5;
    property ClicheFont: Integer read Get_ClicheFont write Set_ClicheFont;
    property HeaderFont: Integer read Get_HeaderFont write Set_HeaderFont;
    property EKLZFont: Integer read Get_EKLZFont write Set_EKLZFont;
    property ClicheStringNumber: Integer read Get_ClicheStringNumber write Set_ClicheStringNumber;
    property HeaderStringNumber: Integer read Get_HeaderStringNumber write Set_HeaderStringNumber;
    property EKLZStringNumber: Integer read Get_EKLZStringNumber write Set_EKLZStringNumber;
    property FMStringNumber: Integer read Get_FMStringNumber write Set_FMStringNumber;
    property ClicheOffset: Integer read Get_ClicheOffset write Set_ClicheOffset;
    property HeaderOffset: Integer read Get_HeaderOffset write Set_HeaderOffset;
    property EKLZOffset: Integer read Get_EKLZOffset write Set_EKLZOffset;
    property KPKOffset: Integer read Get_KPKOffset write Set_KPKOffset;
    property FMOffset: Integer read Get_FMOffset write Set_FMOffset;
    property OperationBlockFirstString: Integer read Get_OperationBlockFirstString write Set_OperationBlockFirstString;
    property QuantityFormat: Integer read Get_QuantityFormat write Set_QuantityFormat;
    property StringQuantityInOperation: Integer read Get_StringQuantityInOperation write Set_StringQuantityInOperation;
    property TextStringNumber: Integer read Get_TextStringNumber write Set_TextStringNumber;
    property QuantityStringNumber: Integer read Get_QuantityStringNumber write Set_QuantityStringNumber;
    property SummStringNumber: Integer read Get_SummStringNumber write Set_SummStringNumber;
    property DepartmentStringNumber: Integer read Get_DepartmentStringNumber write Set_DepartmentStringNumber;
    property TextFont: Integer read Get_TextFont write Set_TextFont;
    property QuantityFont: Integer read Get_QuantityFont write Set_QuantityFont;
    property MultiplicationFont: Integer read Get_MultiplicationFont write Set_MultiplicationFont;
    property PriceFont: Integer read Get_PriceFont write Set_PriceFont;
    property SummFont: Integer read Get_SummFont write Set_SummFont;
    property DepartmentFont: Integer read Get_DepartmentFont write Set_DepartmentFont;
    property TextSymbolNumber: Integer read Get_TextSymbolNumber write Set_TextSymbolNumber;
    property QuantitySymbolNumber: Integer read Get_QuantitySymbolNumber write Set_QuantitySymbolNumber;
    property PriceSymbolNumber: Integer read Get_PriceSymbolNumber write Set_PriceSymbolNumber;
    property SummSymbolNumber: Integer read Get_SummSymbolNumber write Set_SummSymbolNumber;
    property DepartmentSymbolNumber: Integer read Get_DepartmentSymbolNumber write Set_DepartmentSymbolNumber;
    property TextOffset: Integer read Get_TextOffset write Set_TextOffset;
    property QuantityOffset: Integer read Get_QuantityOffset write Set_QuantityOffset;
    property SummOffset: Integer read Get_SummOffset write Set_SummOffset;
    property DepartmentOffset: Integer read Get_DepartmentOffset write Set_DepartmentOffset;
    property IsClearUnfiscalInfo: WordBool read Get_IsClearUnfiscalInfo write Set_IsClearUnfiscalInfo;
    property InfoType: Integer read Get_InfoType write Set_InfoType;
    property StringNumber: Integer read Get_StringNumber write Set_StringNumber;
    property EjectDirection: Integer read Get_EjectDirection write Set_EjectDirection;
    property OperationNameStringNumber: Integer read Get_OperationNameStringNumber write Set_OperationNameStringNumber;
    property OperationNameFont: Integer read Get_OperationNameFont write Set_OperationNameFont;
    property OperationNameOffset: Integer read Get_OperationNameOffset write Set_OperationNameOffset;
    property TotalStringNumber: Integer read Get_TotalStringNumber write Set_TotalStringNumber;
    property Summ1StringNumber: Integer read Get_Summ1StringNumber write Set_Summ1StringNumber;
    property Summ2StringNumber: Integer read Get_Summ2StringNumber write Set_Summ2StringNumber;
    property Summ3StringNumber: Integer read Get_Summ3StringNumber write Set_Summ3StringNumber;
    property Summ4StringNumber: Integer read Get_Summ4StringNumber write Set_Summ4StringNumber;
    property ChangeStringNumber: Integer read Get_ChangeStringNumber write Set_ChangeStringNumber;
    property Tax1TurnOverStringNumber: Integer read Get_Tax1TurnOverStringNumber write Set_Tax1TurnOverStringNumber;
    property Tax2TurnOverStringNumber: Integer read Get_Tax2TurnOverStringNumber write Set_Tax2TurnOverStringNumber;
    property Tax3TurnOverStringNumber: Integer read Get_Tax3TurnOverStringNumber write Set_Tax3TurnOverStringNumber;
    property Tax4TurnOverStringNumber: Integer read Get_Tax4TurnOverStringNumber write Set_Tax4TurnOverStringNumber;
    property Tax1SumStringNumber: Integer read Get_Tax1SumStringNumber write Set_Tax1SumStringNumber;
    property Tax2SumStringNumber: Integer read Get_Tax2SumStringNumber write Set_Tax2SumStringNumber;
    property Tax3SumStringNumber: Integer read Get_Tax3SumStringNumber write Set_Tax3SumStringNumber;
    property Tax4SumStringNumber: Integer read Get_Tax4SumStringNumber write Set_Tax4SumStringNumber;
    property SubTotalStringNumber: Integer read Get_SubTotalStringNumber write Set_SubTotalStringNumber;
    property DiscountOnCheckStringNumber: Integer read Get_DiscountOnCheckStringNumber write Set_DiscountOnCheckStringNumber;
    property TotalFont: Integer read Get_TotalFont write Set_TotalFont;
    property TotalSumFont: Integer read Get_TotalSumFont write Set_TotalSumFont;
    property Summ1Font: Integer read Get_Summ1Font write Set_Summ1Font;
    property Summ1NameFont: Integer read Get_Summ1NameFont write Set_Summ1NameFont;
    property Summ2NameFont: Integer read Get_Summ2NameFont write Set_Summ2NameFont;
    property Summ3NameFont: Integer read Get_Summ3NameFont write Set_Summ3NameFont;
    property Summ4NameFont: Integer read Get_Summ4NameFont write Set_Summ4NameFont;
    property Summ2Font: Integer read Get_Summ2Font write Set_Summ2Font;
    property Summ3Font: Integer read Get_Summ3Font write Set_Summ3Font;
    property Summ4Font: Integer read Get_Summ4Font write Set_Summ4Font;
    property ChangeFont: Integer read Get_ChangeFont write Set_ChangeFont;
    property ChangeSumFont: Integer read Get_ChangeSumFont write Set_ChangeSumFont;
    property Tax1NameFont: Integer read Get_Tax1NameFont write Set_Tax1NameFont;
    property Tax2NameFont: Integer read Get_Tax2NameFont write Set_Tax2NameFont;
    property Tax3NameFont: Integer read Get_Tax3NameFont write Set_Tax3NameFont;
    property Tax4NameFont: Integer read Get_Tax4NameFont write Set_Tax4NameFont;
    property Tax1TurnOverFont: Integer read Get_Tax1TurnOverFont write Set_Tax1TurnOverFont;
    property Tax2TurnOverFont: Integer read Get_Tax2TurnOverFont write Set_Tax2TurnOverFont;
    property Tax3TurnOverFont: Integer read Get_Tax3TurnOverFont write Set_Tax3TurnOverFont;
    property Tax4TurnOverFont: Integer read Get_Tax4TurnOverFont write Set_Tax4TurnOverFont;
    property Tax1RateFont: Integer read Get_Tax1RateFont write Set_Tax1RateFont;
    property Tax2RateFont: Integer read Get_Tax2RateFont write Set_Tax2RateFont;
    property Tax3RateFont: Integer read Get_Tax3RateFont write Set_Tax3RateFont;
    property Tax4RateFont: Integer read Get_Tax4RateFont write Set_Tax4RateFont;
    property Tax1SumFont: Integer read Get_Tax1SumFont write Set_Tax1SumFont;
    property Tax2SumFont: Integer read Get_Tax2SumFont write Set_Tax2SumFont;
    property Tax3SumFont: Integer read Get_Tax3SumFont write Set_Tax3SumFont;
    property Tax4SumFont: Integer read Get_Tax4SumFont write Set_Tax4SumFont;
    property SubTotalFont: Integer read Get_SubTotalFont write Set_SubTotalFont;
    property SubTotalSumFont: Integer read Get_SubTotalSumFont write Set_SubTotalSumFont;
    property DiscountOnCheckFont: Integer read Get_DiscountOnCheckFont write Set_DiscountOnCheckFont;
    property DiscountOnCheckSumFont: Integer read Get_DiscountOnCheckSumFont write Set_DiscountOnCheckSumFont;
    property TotalSymbolNumber: Integer read Get_TotalSymbolNumber write Set_TotalSymbolNumber;
    property Summ1SymbolNumber: Integer read Get_Summ1SymbolNumber write Set_Summ1SymbolNumber;
    property Summ2SymbolNumber: Integer read Get_Summ2SymbolNumber write Set_Summ2SymbolNumber;
    property Summ3SymbolNumber: Integer read Get_Summ3SymbolNumber write Set_Summ3SymbolNumber;
    property Summ4SymbolNumber: Integer read Get_Summ4SymbolNumber write Set_Summ4SymbolNumber;
    property ChangeSymbolNumber: Integer read Get_ChangeSymbolNumber write Set_ChangeSymbolNumber;
    property Tax1NameSymbolNumber: Integer read Get_Tax1NameSymbolNumber write Set_Tax1NameSymbolNumber;
    property Tax1TurnOverSymbolNumber: Integer read Get_Tax1TurnOverSymbolNumber write Set_Tax1TurnOverSymbolNumber;
    property Tax1RateSymbolNumber: Integer read Get_Tax1RateSymbolNumber write Set_Tax1RateSymbolNumber;
    property Tax1SumSymbolNumber: Integer read Get_Tax1SumSymbolNumber write Set_Tax1SumSymbolNumber;
    property Tax2NameSymbolNumber: Integer read Get_Tax2NameSymbolNumber write Set_Tax2NameSymbolNumber;
    property Tax2TurnOverSymbolNumber: Integer read Get_Tax2TurnOverSymbolNumber write Set_Tax2TurnOverSymbolNumber;
    property Tax2RateSymbolNumber: Integer read Get_Tax2RateSymbolNumber write Set_Tax2RateSymbolNumber;
    property Tax2SumSymbolNumber: Integer read Get_Tax2SumSymbolNumber write Set_Tax2SumSymbolNumber;
    property Tax3NameSymbolNumber: Integer read Get_Tax3NameSymbolNumber write Set_Tax3NameSymbolNumber;
    property Tax3TurnOverSymbolNumber: Integer read Get_Tax3TurnOverSymbolNumber write Set_Tax3TurnOverSymbolNumber;
    property Tax3RateSymbolNumber: Integer read Get_Tax3RateSymbolNumber write Set_Tax3RateSymbolNumber;
    property Tax3SumSymbolNumber: Integer read Get_Tax3SumSymbolNumber write Set_Tax3SumSymbolNumber;
    property Tax4NameSymbolNumber: Integer read Get_Tax4NameSymbolNumber write Set_Tax4NameSymbolNumber;
    property Tax4TurnOverSymbolNumber: Integer read Get_Tax4TurnOverSymbolNumber write Set_Tax4TurnOverSymbolNumber;
    property Tax4RateSymbolNumber: Integer read Get_Tax4RateSymbolNumber write Set_Tax4RateSymbolNumber;
    property Tax4SumSymbolNumber: Integer read Get_Tax4SumSymbolNumber write Set_Tax4SumSymbolNumber;
    property SubTotalSymbolNumber: Integer read Get_SubTotalSymbolNumber write Set_SubTotalSymbolNumber;
    property DiscountOnCheckSymbolNumber: Integer read Get_DiscountOnCheckSymbolNumber write Set_DiscountOnCheckSymbolNumber;
    property DiscountOnCheckSumSymbolNumber: Integer read Get_DiscountOnCheckSumSymbolNumber write Set_DiscountOnCheckSumSymbolNumber;
    property TotalOffset: Integer read Get_TotalOffset write Set_TotalOffset;
    property Summ1Offset: Integer read Get_Summ1Offset write Set_Summ1Offset;
    property TotalSumOffset: Integer read Get_TotalSumOffset write Set_TotalSumOffset;
    property Summ1NameOffset: Integer read Get_Summ1NameOffset write Set_Summ1NameOffset;
    property Summ2Offset: Integer read Get_Summ2Offset write Set_Summ2Offset;
    property Summ2NameOffset: Integer read Get_Summ2NameOffset write Set_Summ2NameOffset;
    property Summ3Offset: Integer read Get_Summ3Offset write Set_Summ3Offset;
    property Summ3NameOffset: Integer read Get_Summ3NameOffset write Set_Summ3NameOffset;
    property Summ4Offset: Integer read Get_Summ4Offset write Set_Summ4Offset;
    property Summ4NameOffset: Integer read Get_Summ4NameOffset write Set_Summ4NameOffset;
    property ChangeOffset: Integer read Get_ChangeOffset write Set_ChangeOffset;
    property ChangeSumOffset: Integer read Get_ChangeSumOffset write Set_ChangeSumOffset;
    property Tax1NameOffset: Integer read Get_Tax1NameOffset write Set_Tax1NameOffset;
    property Tax1TurnOverOffset: Integer read Get_Tax1TurnOverOffset write Set_Tax1TurnOverOffset;
    property Tax1RateOffset: Integer read Get_Tax1RateOffset write Set_Tax1RateOffset;
    property Tax1SumOffset: Integer read Get_Tax1SumOffset write Set_Tax1SumOffset;
    property Tax2NameOffset: Integer read Get_Tax2NameOffset write Set_Tax2NameOffset;
    property Tax2TurnOverOffset: Integer read Get_Tax2TurnOverOffset write Set_Tax2TurnOverOffset;
    property Tax2RateOffset: Integer read Get_Tax2RateOffset write Set_Tax2RateOffset;
    property Tax2SumOffset: Integer read Get_Tax2SumOffset write Set_Tax2SumOffset;
    property Tax3NameOffset: Integer read Get_Tax3NameOffset write Set_Tax3NameOffset;
    property Tax3TurnOverOffset: Integer read Get_Tax3TurnOverOffset write Set_Tax3TurnOverOffset;
    property Tax3RateOffset: Integer read Get_Tax3RateOffset write Set_Tax3RateOffset;
    property Tax3SumOffset: Integer read Get_Tax3SumOffset write Set_Tax3SumOffset;
    property Tax4NameOffset: Integer read Get_Tax4NameOffset write Set_Tax4NameOffset;
    property Tax4TurnOverOffset: Integer read Get_Tax4TurnOverOffset write Set_Tax4TurnOverOffset;
    property Tax4RateOffset: Integer read Get_Tax4RateOffset write Set_Tax4RateOffset;
    property Tax4SumOffset: Integer read Get_Tax4SumOffset write Set_Tax4SumOffset;
    property SubTotalOffset: Integer read Get_SubTotalOffset write Set_SubTotalOffset;
    property SubTotalSumOffset: Integer read Get_SubTotalSumOffset write Set_SubTotalSumOffset;
    property SlipDocumentWidth: Integer read Get_SlipDocumentWidth write Set_SlipDocumentWidth;
    property SlipDocumentLength: Integer read Get_SlipDocumentLength write Set_SlipDocumentLength;
    property PrintingAlignment: Integer read Get_PrintingAlignment write Set_PrintingAlignment;
    property SlipStringIntervals: WideString read Get_SlipStringIntervals write Set_SlipStringIntervals;
    property SlipEqualStringIntervals: Integer read Get_SlipEqualStringIntervals write Set_SlipEqualStringIntervals;
    property KPKFont: Integer read Get_KPKFont write Set_KPKFont;
    property DiscountOnCheckOffset: Integer read Get_DiscountOnCheckOffset write Set_DiscountOnCheckOffset;
    property DiscountOnCheckSumOffset: Integer read Get_DiscountOnCheckSumOffset write Set_DiscountOnCheckSumOffset;
    property QuantityPointPosition: WordBool read Get_QuantityPointPosition;
    property FileVersionMS: LongWord read Get_FileVersionMS;
    property FileVersionLS: LongWord read Get_FileVersionLS;
    property IsBatteryLow: WordBool read Get_IsBatteryLow;
    property IsLastFMRecordCorrupted: WordBool read Get_IsLastFMRecordCorrupted;
    property IsFMSessionOpen: WordBool read Get_IsFMSessionOpen;
    property IsFM24HoursOver: WordBool read Get_IsFM24HoursOver;
    property ECRModeStatus: Integer read Get_ECRModeStatus;
    property PrinterStatus: Integer read Get_PrinterStatus;
  end;

// *********************************************************************//
// DispIntf:  IDrvFRDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2951939A-B915-4CC3-8F87-0803B8EB894F}
// *********************************************************************//
  IDrvFRDisp = dispinterface
    ['{2951939A-B915-4CC3-8F87-0803B8EB894F}']
    function  AddLD: Integer; dispid 1;
    function  Beep: Integer; dispid 2;
    function  Buy: Integer; dispid 3;
    function  BuyEx: Integer; dispid 4;
    function  CancelCheck: Integer; dispid 5;
    function  CashIncome: Integer; dispid 6;
    function  CashOutcome: Integer; dispid 7;
    function  Charge: Integer; dispid 8;
    function  CheckSubTotal: Integer; dispid 9;
    function  CloseCheck: Integer; dispid 10;
    function  ConfirmDate: Integer; dispid 12;
    function  Connect: Integer; dispid 13;
    function  ContinuePrint: Integer; dispid 14;
    function  Correction: Integer; dispid 15;
    function  CutCheck: Integer; dispid 16;
    function  DampRequest: Integer; dispid 17;
    function  DeleteLD: Integer; dispid 18;
    function  Disconnect: Integer; dispid 19;
    function  Discount: Integer; dispid 20;
    function  DozeOilCheck: Integer; dispid 21;
    function  Draw: Integer; dispid 22;
    function  EKLZDepartmentReportInDatesRange: Integer; dispid 23;
    function  EKLZDepartmentReportInSessionsRange: Integer; dispid 24;
    function  EKLZJournalOnSessionNumber: Integer; dispid 25;
    function  EKLZSessionReportInDatesRange: Integer; dispid 26;
    function  EKLZSessionReportInSessionsRange: Integer; dispid 27;
    function  ExchangeBytes: Integer; dispid 28;
    function  FeedDocument: Integer; dispid 29;
    function  Fiscalization: Integer; dispid 30;
    function  FiscalReportForDatesRange: Integer; dispid 31;
    function  FiscalReportForSessionRange: Integer; dispid 32;
    function  GetActiveLD: Integer; dispid 33;
    function  EnumLD: Integer; dispid 34;
    function  GetCashReg: Integer; dispid 35;
    function  GetCountLD: Integer; dispid 36;
    function  GetData: Integer; dispid 37;
    function  GetDeviceMetrics: Integer; dispid 38;
    function  GetECRStatus: Integer; dispid 39;
    function  GetShortECRStatus: Integer; dispid 40;
    function  GetExchangeParam: Integer; dispid 41;
    function  GetFieldStruct: Integer; dispid 42;
    function  GetFiscalizationParameters: Integer; dispid 43;
    function  GetFMRecordsSum: Integer; dispid 44;
    function  GetLastFMRecordDate: Integer; dispid 45;
    function  GetLiterSumCounter: Integer; dispid 46;
    function  GetOperationReg: Integer; dispid 47;
    function  GetParamLD: Integer; dispid 48;
    function  GetRangeDatesAndSessions: Integer; dispid 49;
    function  GetRKStatus: Integer; dispid 50;
    function  GetTableStruct: Integer; dispid 51;
    function  InitFM: Integer; dispid 52;
    function  InitTable: Integer; dispid 53;
    function  InterruptDataStream: Integer; dispid 54;
    function  InterruptFullReport: Integer; dispid 55;
    function  InterruptTest: Integer; dispid 56;
    function  LaunchRK: Integer; dispid 57;
    function  LoadLineData: Integer; dispid 58;
    function  OilSale: Integer; dispid 59;
    function  OpenCheck: Integer; dispid 60;
    function  OpenDrawer: Integer; dispid 61;
    function  PrintBarCode: Integer; dispid 62;
    function  PrintDepartmentReport: Integer; dispid 63;
    function  PrintDocumentTitle: Integer; dispid 64;
    function  PrintOperationReg: Integer; dispid 65;
    function  PrintReportWithCleaning: Integer; dispid 66;
    function  PrintReportWithoutCleaning: Integer; dispid 67;
    function  PrintString: Integer; dispid 68;
    function  PrintWideString: Integer; dispid 69;
    function  ReadEKLZDocumentOnKPK: Integer; dispid 70;
    function  ReadEKLZSessionTotal: Integer; dispid 71;
    function  ReadLicense: Integer; dispid 72;
    function  ReadTable: Integer; dispid 73;
    function  RepeatDocument: Integer; dispid 74;
    function  ResetAllTRK: Integer; dispid 75;
    function  ResetRK: Integer; dispid 76;
    function  ResetSettings: Integer; dispid 77;
    function  ResetSummary: Integer; dispid 78;
    function  ReturnBuy: Integer; dispid 79;
    function  ReturnBuyEx: Integer; dispid 80;
    function  ReturnSale: Integer; dispid 81;
    function  ReturnSaleEx: Integer; dispid 82;
    function  Sale: Integer; dispid 83;
    function  SaleEx: Integer; dispid 84;
    function  SetActiveLD: Integer; dispid 85;
    function  SetDate: Integer; dispid 86;
    function  SetDozeInMilliliters: Integer; dispid 87;
    function  SetDozeInMoney: Integer; dispid 88;
    function  SetExchangeParam: Integer; dispid 89;
    function  SetParamLD: Integer; dispid 90;
    function  SetPointPosition: Integer; dispid 91;
    function  SetRKParameters: Integer; dispid 92;
    function  SetSerialNumber: Integer; dispid 93;
    function  SetTime: Integer; dispid 94;
    function  ShowProperties: Integer; dispid 95;
    function  StopEKLZDocumentPrinting: Integer; dispid 96;
    function  StopRK: Integer; dispid 97;
    function  Storno: Integer; dispid 98;
    function  StornoEx: Integer; dispid 99;
    function  StornoCharge: Integer; dispid 100;
    function  StornoDiscount: Integer; dispid 101;
    function  SummOilCheck: Integer; dispid 102;
    function  SysAdminCancelCheck: Integer; dispid 104;
    function  Test: Integer; dispid 105;
    function  WriteLicense: Integer; dispid 106;
    function  WriteTable: Integer; dispid 107;
    property BarCode: WideString dispid 103;
    property BatteryCondition: WordBool readonly dispid 108;
    property BatteryVoltage: Double readonly dispid 109;
    property BaudRate: Integer dispid 110;
    property Change: Currency readonly dispid 111;
    property CheckResult: Currency dispid 112;
    property CheckType: Integer dispid 113;
    property ComNumber: Integer dispid 114;
    property ContentsOfCashRegister: Currency readonly dispid 115;
    property ContentsOfOperationRegister: Integer readonly dispid 116;
    property CurrentDozeInMilliliters: Integer dispid 117;
    property CurrentDozeInMoney: Currency dispid 118;
    property CutType: WordBool dispid 119;
    property DataBlock: WideString readonly dispid 120;
    property DataBlockNumber: Integer readonly dispid 121;
    property Date: TDateTime dispid 122;
    property Department: Integer dispid 123;
    property DeviceCode: Integer dispid 124;
    property DeviceCodeDescription: WideString readonly dispid 125;
    property DiscountOnCheck: Double dispid 126;
    property DocumentName: WideString dispid 127;
    property DocumentNumber: Integer dispid 128;
    property DozeInMilliliters: Integer dispid 129;
    property DozeInMoney: Currency dispid 130;
    property DrawerNumber: Integer dispid 131;
    property ECRAdvancedMode: Integer readonly dispid 132;
    property ECRAdvancedModeDescription: WideString readonly dispid 133;
    property ECRBuild: Integer readonly dispid 134;
    property ECRFlags: Integer readonly dispid 135;
    property ECRInput: WideString readonly dispid 136;
    property ECRMode: Integer readonly dispid 137;
    property ECRMode8Status: Integer readonly dispid 138;
    property ECRModeDescription: WideString readonly dispid 139;
    property ECROutput: WideString readonly dispid 140;
    property ECRSoftDate: TDateTime readonly dispid 141;
    property ECRSoftVersion: WideString readonly dispid 142;
    property EKLZIsPresent: WordBool readonly dispid 143;
    property EmergencyStopCode: Integer readonly dispid 144;
    property EmergencyStopCodeDescription: WideString readonly dispid 145;
    property FieldName: WideString readonly dispid 146;
    property FieldNumber: Integer dispid 147;
    property FieldSize: Integer readonly dispid 148;
    property FieldType: WordBool readonly dispid 149;
    property FirstLineNumber: Integer dispid 150;
    property FirstSessionDate: TDateTime dispid 151;
    property FirstSessionNumber: Integer dispid 152;
    property FM1IsPresent: WordBool readonly dispid 153;
    property FM2IsPresent: WordBool readonly dispid 154;
    property FMBuild: Integer readonly dispid 155;
    property FMFlags: Integer readonly dispid 156;
    property FMOverflow: WordBool readonly dispid 157;
    property FMSoftDate: TDateTime readonly dispid 158;
    property FMSoftVersion: WideString readonly dispid 159;
    property FreeRecordInFM: Integer readonly dispid 160;
    property FreeRegistration: Integer readonly dispid 161;
    property INN: WideString dispid 162;
    property IsCheckClosed: WordBool readonly dispid 163;
    property IsCheckMadeOut: WordBool readonly dispid 164;
    property IsDrawerOpen: WordBool readonly dispid 165;
    property JournalRibbonIsPresent: WordBool readonly dispid 166;
    property JournalRibbonLever: WordBool readonly dispid 167;
    property JournalRibbonOpticalSensor: WordBool readonly dispid 168;
    property KPKNumber: Integer dispid 170;
    property LastLineNumber: Integer dispid 171;
    property LastSessionDate: TDateTime dispid 172;
    property LastSessionNumber: Integer dispid 173;
    property License: WideString dispid 174;
    property LicenseIsPresent: WordBool readonly dispid 175;
    property LidPositionSensor: WordBool readonly dispid 176;
    property LineData: WideString dispid 177;
    property LineNumber: Integer dispid 178;
    property LogicalNumber: Integer readonly dispid 179;
    property MAXValueOfField: Integer readonly dispid 180;
    property MINValueOfField: Integer readonly dispid 181;
    property Motor: WordBool readonly dispid 182;
    property NameCashReg: WideString readonly dispid 183;
    property NameOperationReg: WideString readonly dispid 184;
    property NewPasswordTI: Integer dispid 185;
    property OpenDocumentNumber: Integer readonly dispid 186;
    property OperatorNumber: Integer readonly dispid 187;
    property Password: Integer dispid 188;
    property Pistol: WordBool readonly dispid 189;
    property PointPosition: WordBool dispid 190;
    property PortNumber: Integer dispid 191;
    property Price: Currency dispid 192;
    property Quantity: Double dispid 193;
    property QuantityOfOperations: Integer readonly dispid 194;
    property ReceiptRibbonIsPresent: WordBool readonly dispid 195;
    property ReceiptRibbonLever: WordBool readonly dispid 196;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 197;
    property RegisterNumber: Integer dispid 198;
    property RegistrationNumber: Integer dispid 199;
    property ReportType: WordBool dispid 200;
    property ResultCode: Integer readonly dispid 201;
    property ResultCodeDescription: WideString readonly dispid 202;
    property RKNumber: Integer dispid 203;
    property RNM: WideString dispid 204;
    property RoughValve: WordBool readonly dispid 205;
    property RowNumber: Integer dispid 206;
    property RunningPeriod: Integer dispid 207;
    property SerialNumber: WideString dispid 208;
    property SessionNumber: Integer dispid 209;
    property SlipDocumentIsMoving: WordBool readonly dispid 210;
    property SlipDocumentIsPresent: WordBool readonly dispid 211;
    property SlowingInMilliliters: Integer dispid 212;
    property SlowingValve: WordBool readonly dispid 213;
    property StatusRK: Integer readonly dispid 214;
    property StatusRKDescription: WideString readonly dispid 215;
    property StringForPrinting: WideString dispid 216;
    property StringQuantity: Integer dispid 217;
    property Summ1: Currency dispid 218;
    property Summ2: Currency dispid 219;
    property Summ3: Currency dispid 220;
    property Summ4: Currency dispid 221;
    property TableName: WideString readonly dispid 222;
    property TableNumber: Integer dispid 223;
    property Tax1: Integer dispid 224;
    property Tax2: Integer dispid 225;
    property Tax3: Integer dispid 226;
    property Tax4: Integer dispid 227;
    property Time: TDateTime dispid 228;
    property Timeout: Integer dispid 229;
    property TimeStr: WideString dispid 230;
    property TransferBytes: WideString dispid 231;
    property TRKNumber: Integer dispid 232;
    property TypeOfLastEntryFM: WordBool readonly dispid 233;
    property TypeOfSumOfEntriesFM: WordBool dispid 234;
    property UCodePage: Integer readonly dispid 235;
    property UDescription: WideString readonly dispid 236;
    property UMajorProtocolVersion: Integer readonly dispid 237;
    property UMajorType: Integer readonly dispid 238;
    property UMinorProtocolVersion: Integer readonly dispid 239;
    property UMinorType: Integer readonly dispid 240;
    property UModel: Integer readonly dispid 241;
    property UseJournalRibbon: WordBool dispid 242;
    property UseReceiptRibbon: WordBool dispid 243;
    property UseSlipDocument: WordBool dispid 244;
    property ValueOfFieldInteger: Integer dispid 245;
    property ValueOfFieldString: WideString dispid 246;
    function  PrintStringWithFont: Integer; dispid 169;
    property FontType: Integer dispid 247;
    property LDBaudrate: Integer dispid 248;
    property LDComNumber: Integer dispid 249;
    property LDCount: Integer readonly dispid 250;
    property LDIndex: Integer dispid 251;
    property LDName: WideString dispid 252;
    property LDNumber: Integer dispid 253;
    property WaitPrintingTime: Integer readonly dispid 254;
    property IsPrinterLeftSensorFailure: WordBool readonly dispid 255;
    property IsPrinterRightSensorFailure: WordBool readonly dispid 256;
    function  EKLZActivizationResult: Integer; dispid 257;
    function  EKLZActivization: Integer; dispid 258;
    function  CloseEKLZArchive: Integer; dispid 259;
    function  GetEKLZSerialNumber: Integer; dispid 260;
    property EKLZNumber: WideString readonly dispid 261;
    function  EKLZInterrupt: Integer; dispid 262;
    function  GetEKLZCode1Report: Integer; dispid 263;
    property LastKPKDocumentResult: Currency readonly dispid 264;
    property LastKPKDate: TDateTime readonly dispid 265;
    property LastKPKTime: TDateTime readonly dispid 266;
    property LastKPKNumber: Integer readonly dispid 267;
    property EKLZFlags: Integer readonly dispid 268;
    function  GetEKLZCode2Report: Integer; dispid 269;
    function  TestEKLZArchiveIntegrity: Integer; dispid 270;
    property TestNumber: Integer dispid 271;
    property EKLZVersion: WideString readonly dispid 272;
    property EKLZData: WideString readonly dispid 273;
    function  GetEKLZVersion: Integer; dispid 274;
    function  InitEKLZArchive: Integer; dispid 275;
    function  GetEKLZData: Integer; dispid 276;
    function  GetEKLZJournal: Integer; dispid 277;
    function  GetEKLZDocument: Integer; dispid 278;
    function  GetEKLZDepartmentReportInDatesRange: Integer; dispid 279;
    function  GetEKLZDepartmentReportInSessionsRange: Integer; dispid 280;
    function  GetEKLZSessionReportInDatesRange: Integer; dispid 281;
    function  GetEKLZSessionReportInSessionsRange: Integer; dispid 282;
    function  GetEKLZSessionTotal: Integer; dispid 283;
    function  GetEKLZActivizationResult: Integer; dispid 284;
    function  SetEKLZResultCode: Integer; dispid 285;
    property EKLZResultCode: Integer dispid 286;
    property FMResultCode: Integer readonly dispid 287;
    property PowerSourceVoltage: Double readonly dispid 288;
    property IsEKLZOverflow: WordBool readonly dispid 289;
    function  OpenFiscalSlipDocument: Integer; dispid 291;
    function  OpenStandardFiscalSlipDocument: Integer; dispid 292;
    function  RegistrationOnSlipDocument: Integer; dispid 293;
    function  StandardRegistrationOnSlipDocument: Integer; dispid 294;
    function  ChargeOnSlipDocument: Integer; dispid 295;
    function  StandardChargeOnSlipDocument: Integer; dispid 296;
    function  CloseCheckOnSlipDocument: Integer; dispid 297;
    function  StandardCloseCheckOnSlipDocument: Integer; dispid 298;
    function  ConfigureSlipDocument: Integer; dispid 299;
    function  ConfigureStandardSlipDocument: Integer; dispid 300;
    function  FillSlipDocumentWithUnfiscalInfo: Integer; dispid 301;
    function  ClearSlipDocumentBufferString: Integer; dispid 302;
    function  ClearSlipDocumentBuffer: Integer; dispid 303;
    function  PrintSlipDocument: Integer; dispid 304;
    property CopyType: Integer dispid 305;
    property NumberOfCopies: Integer dispid 307;
    property CopyOffset1: Integer dispid 308;
    property CopyOffset2: Integer dispid 309;
    property CopyOffset3: Integer dispid 310;
    property CopyOffset4: Integer dispid 311;
    property CopyOffset5: Integer dispid 312;
    property ClicheFont: Integer dispid 313;
    property HeaderFont: Integer dispid 314;
    property EKLZFont: Integer dispid 315;
    property ClicheStringNumber: Integer dispid 316;
    property HeaderStringNumber: Integer dispid 317;
    property EKLZStringNumber: Integer dispid 318;
    property FMStringNumber: Integer dispid 319;
    property ClicheOffset: Integer dispid 320;
    property HeaderOffset: Integer dispid 321;
    property EKLZOffset: Integer dispid 322;
    property KPKOffset: Integer dispid 323;
    property FMOffset: Integer dispid 324;
    property OperationBlockFirstString: Integer dispid 325;
    property QuantityFormat: Integer dispid 326;
    property StringQuantityInOperation: Integer dispid 327;
    property TextStringNumber: Integer dispid 328;
    property QuantityStringNumber: Integer dispid 329;
    property SummStringNumber: Integer dispid 330;
    property DepartmentStringNumber: Integer dispid 331;
    property TextFont: Integer dispid 332;
    property QuantityFont: Integer dispid 333;
    property MultiplicationFont: Integer dispid 334;
    property PriceFont: Integer dispid 335;
    property SummFont: Integer dispid 336;
    property DepartmentFont: Integer dispid 337;
    property TextSymbolNumber: Integer dispid 338;
    property QuantitySymbolNumber: Integer dispid 339;
    property PriceSymbolNumber: Integer dispid 340;
    property SummSymbolNumber: Integer dispid 341;
    property DepartmentSymbolNumber: Integer dispid 342;
    property TextOffset: Integer dispid 343;
    property QuantityOffset: Integer dispid 344;
    property SummOffset: Integer dispid 345;
    property DepartmentOffset: Integer dispid 346;
    function  DiscountOnSlipDocument: Integer; dispid 347;
    function  StandardDiscountOnSlipDocument: Integer; dispid 348;
    property IsClearUnfiscalInfo: WordBool dispid 349;
    property InfoType: Integer dispid 350;
    property StringNumber: Integer dispid 11;
    function  EjectSlipDocument: Integer; dispid 290;
    property EjectDirection: Integer dispid 306;
    function  LoadLineDataEx: Integer; dispid 351;
    function  DrawEx: Integer; dispid 352;
    function  ConfigureGeneralSlipDocument: Integer; dispid 353;
    property OperationNameStringNumber: Integer dispid 355;
    property OperationNameFont: Integer dispid 356;
    property OperationNameOffset: Integer dispid 357;
    property TotalStringNumber: Integer dispid 358;
    property Summ1StringNumber: Integer dispid 359;
    property Summ2StringNumber: Integer dispid 360;
    property Summ3StringNumber: Integer dispid 361;
    property Summ4StringNumber: Integer dispid 362;
    property ChangeStringNumber: Integer dispid 363;
    property Tax1TurnOverStringNumber: Integer dispid 364;
    property Tax2TurnOverStringNumber: Integer dispid 365;
    property Tax3TurnOverStringNumber: Integer dispid 366;
    property Tax4TurnOverStringNumber: Integer dispid 367;
    property Tax1SumStringNumber: Integer dispid 368;
    property Tax2SumStringNumber: Integer dispid 369;
    property Tax3SumStringNumber: Integer dispid 370;
    property Tax4SumStringNumber: Integer dispid 371;
    property SubTotalStringNumber: Integer dispid 372;
    property DiscountOnCheckStringNumber: Integer dispid 373;
    property TotalFont: Integer dispid 374;
    property TotalSumFont: Integer dispid 375;
    property Summ1Font: Integer dispid 376;
    property Summ1NameFont: Integer dispid 377;
    property Summ2NameFont: Integer dispid 378;
    property Summ3NameFont: Integer dispid 379;
    property Summ4NameFont: Integer dispid 380;
    property Summ2Font: Integer dispid 381;
    property Summ3Font: Integer dispid 382;
    property Summ4Font: Integer dispid 383;
    property ChangeFont: Integer dispid 384;
    property ChangeSumFont: Integer dispid 385;
    property Tax1NameFont: Integer dispid 386;
    property Tax2NameFont: Integer dispid 387;
    property Tax3NameFont: Integer dispid 388;
    property Tax4NameFont: Integer dispid 389;
    property Tax1TurnOverFont: Integer dispid 390;
    property Tax2TurnOverFont: Integer dispid 391;
    property Tax3TurnOverFont: Integer dispid 392;
    property Tax4TurnOverFont: Integer dispid 393;
    property Tax1RateFont: Integer dispid 394;
    property Tax2RateFont: Integer dispid 395;
    property Tax3RateFont: Integer dispid 396;
    property Tax4RateFont: Integer dispid 397;
    property Tax1SumFont: Integer dispid 398;
    property Tax2SumFont: Integer dispid 399;
    property Tax3SumFont: Integer dispid 400;
    property Tax4SumFont: Integer dispid 401;
    property SubTotalFont: Integer dispid 402;
    property SubTotalSumFont: Integer dispid 403;
    property DiscountOnCheckFont: Integer dispid 404;
    property DiscountOnCheckSumFont: Integer dispid 405;
    property TotalSymbolNumber: Integer dispid 406;
    property Summ1SymbolNumber: Integer dispid 407;
    property Summ2SymbolNumber: Integer dispid 408;
    property Summ3SymbolNumber: Integer dispid 409;
    property Summ4SymbolNumber: Integer dispid 410;
    property ChangeSymbolNumber: Integer dispid 411;
    property Tax1NameSymbolNumber: Integer dispid 412;
    property Tax1TurnOverSymbolNumber: Integer dispid 413;
    property Tax1RateSymbolNumber: Integer dispid 414;
    property Tax1SumSymbolNumber: Integer dispid 415;
    property Tax2NameSymbolNumber: Integer dispid 416;
    property Tax2TurnOverSymbolNumber: Integer dispid 417;
    property Tax2RateSymbolNumber: Integer dispid 418;
    property Tax2SumSymbolNumber: Integer dispid 419;
    property Tax3NameSymbolNumber: Integer dispid 420;
    property Tax3TurnOverSymbolNumber: Integer dispid 421;
    property Tax3RateSymbolNumber: Integer dispid 422;
    property Tax3SumSymbolNumber: Integer dispid 423;
    property Tax4NameSymbolNumber: Integer dispid 424;
    property Tax4TurnOverSymbolNumber: Integer dispid 425;
    property Tax4RateSymbolNumber: Integer dispid 426;
    property Tax4SumSymbolNumber: Integer dispid 427;
    property SubTotalSymbolNumber: Integer dispid 428;
    property DiscountOnCheckSymbolNumber: Integer dispid 429;
    property DiscountOnCheckSumSymbolNumber: Integer dispid 430;
    property TotalOffset: Integer dispid 431;
    property Summ1Offset: Integer dispid 432;
    property TotalSumOffset: Integer dispid 433;
    property Summ1NameOffset: Integer dispid 434;
    property Summ2Offset: Integer dispid 435;
    property Summ2NameOffset: Integer dispid 436;
    property Summ3Offset: Integer dispid 437;
    property Summ3NameOffset: Integer dispid 438;
    property Summ4Offset: Integer dispid 439;
    property Summ4NameOffset: Integer dispid 440;
    property ChangeOffset: Integer dispid 441;
    property ChangeSumOffset: Integer dispid 442;
    property Tax1NameOffset: Integer dispid 443;
    property Tax1TurnOverOffset: Integer dispid 444;
    property Tax1RateOffset: Integer dispid 445;
    property Tax1SumOffset: Integer dispid 446;
    property Tax2NameOffset: Integer dispid 447;
    property Tax2TurnOverOffset: Integer dispid 448;
    property Tax2RateOffset: Integer dispid 449;
    property Tax2SumOffset: Integer dispid 450;
    property Tax3NameOffset: Integer dispid 451;
    property Tax3TurnOverOffset: Integer dispid 452;
    property Tax3RateOffset: Integer dispid 453;
    property Tax3SumOffset: Integer dispid 454;
    property Tax4NameOffset: Integer dispid 455;
    property Tax4TurnOverOffset: Integer dispid 456;
    property Tax4RateOffset: Integer dispid 457;
    property Tax4SumOffset: Integer dispid 458;
    property SubTotalOffset: Integer dispid 459;
    property SubTotalSumOffset: Integer dispid 460;
    property SlipDocumentWidth: Integer dispid 461;
    property SlipDocumentLength: Integer dispid 462;
    property PrintingAlignment: Integer dispid 463;
    property SlipStringIntervals: WideString dispid 464;
    property SlipEqualStringIntervals: Integer dispid 465;
    property KPKFont: Integer dispid 354;
    property DiscountOnCheckOffset: Integer dispid 466;
    property DiscountOnCheckSumOffset: Integer dispid 467;
    function  WideLoadLineData: Integer; dispid 468;
    function  PrintTaxReport: Integer; dispid 469;
    property QuantityPointPosition: WordBool readonly dispid 470;
    property FileVersionMS: LongWord readonly dispid 471;
    property FileVersionLS: LongWord readonly dispid 472;
    function  GetLongSerialNumberAndLongRNM: Integer; dispid 473;
    function  SetLongSerialNumber: Integer; dispid 474;
    function  FiscalizationWithLongRNM: Integer; dispid 475;
    property IsBatteryLow: WordBool readonly dispid 476;
    property IsLastFMRecordCorrupted: WordBool readonly dispid 477;
    property IsFMSessionOpen: WordBool readonly dispid 478;
    property IsFM24HoursOver: WordBool readonly dispid 479;
    function  Connect2: Integer; dispid 480;
    property ECRModeStatus: Integer readonly dispid 481;
    function  GetECRPrinterStatus: Integer; dispid 482;
    property PrinterStatus: Integer readonly dispid 483;
  end;

// *********************************************************************//
// Interface: IDrvFR2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63097449-EC60-4E93-8052-60CB8EC8C993}
// *********************************************************************//
  IDrvFR2 = interface(IDrvFR)
    ['{63097449-EC60-4E93-8052-60CB8EC8C993}']
    function  Get_ServerVersion: WideString; safecall;
    function  Get_LDComputerName: WideString; safecall;
    procedure Set_LDComputerName(const Value: WideString); safecall;
    function  Get_LDTimeout: Integer; safecall;
    procedure Set_LDTimeout(Value: Integer); safecall;
    function  Get_ComputerName: WideString; safecall;
    procedure Set_ComputerName(const Value: WideString); safecall;
    function  ServerConnect: Integer; safecall;
    function  ServerDisconnect: Integer; safecall;
    function  Get_ServerConnected: WordBool; safecall;
    function  LockPort: Integer; safecall;
    function  UnlockPort: Integer; safecall;
    function  Get_PortLocked: WordBool; safecall;
    function  AdminUnlockPort: Integer; safecall;
    function  AdminUnlockPorts: Integer; safecall;
    property ServerVersion: WideString read Get_ServerVersion;
    property LDComputerName: WideString read Get_LDComputerName write Set_LDComputerName;
    property LDTimeout: Integer read Get_LDTimeout write Set_LDTimeout;
    property ComputerName: WideString read Get_ComputerName write Set_ComputerName;
    property ServerConnected: WordBool read Get_ServerConnected;
    property PortLocked: WordBool read Get_PortLocked;
  end;

// *********************************************************************//
// DispIntf:  IDrvFR2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63097449-EC60-4E93-8052-60CB8EC8C993}
// *********************************************************************//
  IDrvFR2Disp = dispinterface
    ['{63097449-EC60-4E93-8052-60CB8EC8C993}']
    property ServerVersion: WideString readonly dispid 484;
    property LDComputerName: WideString dispid 485;
    property LDTimeout: Integer dispid 486;
    property ComputerName: WideString dispid 487;
    function  ServerConnect: Integer; dispid 488;
    function  ServerDisconnect: Integer; dispid 489;
    property ServerConnected: WordBool readonly dispid 490;
    function  LockPort: Integer; dispid 491;
    function  UnlockPort: Integer; dispid 492;
    property PortLocked: WordBool readonly dispid 493;
    function  AdminUnlockPort: Integer; dispid 494;
    function  AdminUnlockPorts: Integer; dispid 495;
    function  AddLD: Integer; dispid 1;
    function  Beep: Integer; dispid 2;
    function  Buy: Integer; dispid 3;
    function  BuyEx: Integer; dispid 4;
    function  CancelCheck: Integer; dispid 5;
    function  CashIncome: Integer; dispid 6;
    function  CashOutcome: Integer; dispid 7;
    function  Charge: Integer; dispid 8;
    function  CheckSubTotal: Integer; dispid 9;
    function  CloseCheck: Integer; dispid 10;
    function  ConfirmDate: Integer; dispid 12;
    function  Connect: Integer; dispid 13;
    function  ContinuePrint: Integer; dispid 14;
    function  Correction: Integer; dispid 15;
    function  CutCheck: Integer; dispid 16;
    function  DampRequest: Integer; dispid 17;
    function  DeleteLD: Integer; dispid 18;
    function  Disconnect: Integer; dispid 19;
    function  Discount: Integer; dispid 20;
    function  DozeOilCheck: Integer; dispid 21;
    function  Draw: Integer; dispid 22;
    function  EKLZDepartmentReportInDatesRange: Integer; dispid 23;
    function  EKLZDepartmentReportInSessionsRange: Integer; dispid 24;
    function  EKLZJournalOnSessionNumber: Integer; dispid 25;
    function  EKLZSessionReportInDatesRange: Integer; dispid 26;
    function  EKLZSessionReportInSessionsRange: Integer; dispid 27;
    function  ExchangeBytes: Integer; dispid 28;
    function  FeedDocument: Integer; dispid 29;
    function  Fiscalization: Integer; dispid 30;
    function  FiscalReportForDatesRange: Integer; dispid 31;
    function  FiscalReportForSessionRange: Integer; dispid 32;
    function  GetActiveLD: Integer; dispid 33;
    function  EnumLD: Integer; dispid 34;
    function  GetCashReg: Integer; dispid 35;
    function  GetCountLD: Integer; dispid 36;
    function  GetData: Integer; dispid 37;
    function  GetDeviceMetrics: Integer; dispid 38;
    function  GetECRStatus: Integer; dispid 39;
    function  GetShortECRStatus: Integer; dispid 40;
    function  GetExchangeParam: Integer; dispid 41;
    function  GetFieldStruct: Integer; dispid 42;
    function  GetFiscalizationParameters: Integer; dispid 43;
    function  GetFMRecordsSum: Integer; dispid 44;
    function  GetLastFMRecordDate: Integer; dispid 45;
    function  GetLiterSumCounter: Integer; dispid 46;
    function  GetOperationReg: Integer; dispid 47;
    function  GetParamLD: Integer; dispid 48;
    function  GetRangeDatesAndSessions: Integer; dispid 49;
    function  GetRKStatus: Integer; dispid 50;
    function  GetTableStruct: Integer; dispid 51;
    function  InitFM: Integer; dispid 52;
    function  InitTable: Integer; dispid 53;
    function  InterruptDataStream: Integer; dispid 54;
    function  InterruptFullReport: Integer; dispid 55;
    function  InterruptTest: Integer; dispid 56;
    function  LaunchRK: Integer; dispid 57;
    function  LoadLineData: Integer; dispid 58;
    function  OilSale: Integer; dispid 59;
    function  OpenCheck: Integer; dispid 60;
    function  OpenDrawer: Integer; dispid 61;
    function  PrintBarCode: Integer; dispid 62;
    function  PrintDepartmentReport: Integer; dispid 63;
    function  PrintDocumentTitle: Integer; dispid 64;
    function  PrintOperationReg: Integer; dispid 65;
    function  PrintReportWithCleaning: Integer; dispid 66;
    function  PrintReportWithoutCleaning: Integer; dispid 67;
    function  PrintString: Integer; dispid 68;
    function  PrintWideString: Integer; dispid 69;
    function  ReadEKLZDocumentOnKPK: Integer; dispid 70;
    function  ReadEKLZSessionTotal: Integer; dispid 71;
    function  ReadLicense: Integer; dispid 72;
    function  ReadTable: Integer; dispid 73;
    function  RepeatDocument: Integer; dispid 74;
    function  ResetAllTRK: Integer; dispid 75;
    function  ResetRK: Integer; dispid 76;
    function  ResetSettings: Integer; dispid 77;
    function  ResetSummary: Integer; dispid 78;
    function  ReturnBuy: Integer; dispid 79;
    function  ReturnBuyEx: Integer; dispid 80;
    function  ReturnSale: Integer; dispid 81;
    function  ReturnSaleEx: Integer; dispid 82;
    function  Sale: Integer; dispid 83;
    function  SaleEx: Integer; dispid 84;
    function  SetActiveLD: Integer; dispid 85;
    function  SetDate: Integer; dispid 86;
    function  SetDozeInMilliliters: Integer; dispid 87;
    function  SetDozeInMoney: Integer; dispid 88;
    function  SetExchangeParam: Integer; dispid 89;
    function  SetParamLD: Integer; dispid 90;
    function  SetPointPosition: Integer; dispid 91;
    function  SetRKParameters: Integer; dispid 92;
    function  SetSerialNumber: Integer; dispid 93;
    function  SetTime: Integer; dispid 94;
    function  ShowProperties: Integer; dispid 95;
    function  StopEKLZDocumentPrinting: Integer; dispid 96;
    function  StopRK: Integer; dispid 97;
    function  Storno: Integer; dispid 98;
    function  StornoEx: Integer; dispid 99;
    function  StornoCharge: Integer; dispid 100;
    function  StornoDiscount: Integer; dispid 101;
    function  SummOilCheck: Integer; dispid 102;
    function  SysAdminCancelCheck: Integer; dispid 104;
    function  Test: Integer; dispid 105;
    function  WriteLicense: Integer; dispid 106;
    function  WriteTable: Integer; dispid 107;
    property BarCode: WideString dispid 103;
    property BatteryCondition: WordBool readonly dispid 108;
    property BatteryVoltage: Double readonly dispid 109;
    property BaudRate: Integer dispid 110;
    property Change: Currency readonly dispid 111;
    property CheckResult: Currency dispid 112;
    property CheckType: Integer dispid 113;
    property ComNumber: Integer dispid 114;
    property ContentsOfCashRegister: Currency readonly dispid 115;
    property ContentsOfOperationRegister: Integer readonly dispid 116;
    property CurrentDozeInMilliliters: Integer dispid 117;
    property CurrentDozeInMoney: Currency dispid 118;
    property CutType: WordBool dispid 119;
    property DataBlock: WideString readonly dispid 120;
    property DataBlockNumber: Integer readonly dispid 121;
    property Date: TDateTime dispid 122;
    property Department: Integer dispid 123;
    property DeviceCode: Integer dispid 124;
    property DeviceCodeDescription: WideString readonly dispid 125;
    property DiscountOnCheck: Double dispid 126;
    property DocumentName: WideString dispid 127;
    property DocumentNumber: Integer dispid 128;
    property DozeInMilliliters: Integer dispid 129;
    property DozeInMoney: Currency dispid 130;
    property DrawerNumber: Integer dispid 131;
    property ECRAdvancedMode: Integer readonly dispid 132;
    property ECRAdvancedModeDescription: WideString readonly dispid 133;
    property ECRBuild: Integer readonly dispid 134;
    property ECRFlags: Integer readonly dispid 135;
    property ECRInput: WideString readonly dispid 136;
    property ECRMode: Integer readonly dispid 137;
    property ECRMode8Status: Integer readonly dispid 138;
    property ECRModeDescription: WideString readonly dispid 139;
    property ECROutput: WideString readonly dispid 140;
    property ECRSoftDate: TDateTime readonly dispid 141;
    property ECRSoftVersion: WideString readonly dispid 142;
    property EKLZIsPresent: WordBool readonly dispid 143;
    property EmergencyStopCode: Integer readonly dispid 144;
    property EmergencyStopCodeDescription: WideString readonly dispid 145;
    property FieldName: WideString readonly dispid 146;
    property FieldNumber: Integer dispid 147;
    property FieldSize: Integer readonly dispid 148;
    property FieldType: WordBool readonly dispid 149;
    property FirstLineNumber: Integer dispid 150;
    property FirstSessionDate: TDateTime dispid 151;
    property FirstSessionNumber: Integer dispid 152;
    property FM1IsPresent: WordBool readonly dispid 153;
    property FM2IsPresent: WordBool readonly dispid 154;
    property FMBuild: Integer readonly dispid 155;
    property FMFlags: Integer readonly dispid 156;
    property FMOverflow: WordBool readonly dispid 157;
    property FMSoftDate: TDateTime readonly dispid 158;
    property FMSoftVersion: WideString readonly dispid 159;
    property FreeRecordInFM: Integer readonly dispid 160;
    property FreeRegistration: Integer readonly dispid 161;
    property INN: WideString dispid 162;
    property IsCheckClosed: WordBool readonly dispid 163;
    property IsCheckMadeOut: WordBool readonly dispid 164;
    property IsDrawerOpen: WordBool readonly dispid 165;
    property JournalRibbonIsPresent: WordBool readonly dispid 166;
    property JournalRibbonLever: WordBool readonly dispid 167;
    property JournalRibbonOpticalSensor: WordBool readonly dispid 168;
    property KPKNumber: Integer dispid 170;
    property LastLineNumber: Integer dispid 171;
    property LastSessionDate: TDateTime dispid 172;
    property LastSessionNumber: Integer dispid 173;
    property License: WideString dispid 174;
    property LicenseIsPresent: WordBool readonly dispid 175;
    property LidPositionSensor: WordBool readonly dispid 176;
    property LineData: WideString dispid 177;
    property LineNumber: Integer dispid 178;
    property LogicalNumber: Integer readonly dispid 179;
    property MAXValueOfField: Integer readonly dispid 180;
    property MINValueOfField: Integer readonly dispid 181;
    property Motor: WordBool readonly dispid 182;
    property NameCashReg: WideString readonly dispid 183;
    property NameOperationReg: WideString readonly dispid 184;
    property NewPasswordTI: Integer dispid 185;
    property OpenDocumentNumber: Integer readonly dispid 186;
    property OperatorNumber: Integer readonly dispid 187;
    property Password: Integer dispid 188;
    property Pistol: WordBool readonly dispid 189;
    property PointPosition: WordBool dispid 190;
    property PortNumber: Integer dispid 191;
    property Price: Currency dispid 192;
    property Quantity: Double dispid 193;
    property QuantityOfOperations: Integer readonly dispid 194;
    property ReceiptRibbonIsPresent: WordBool readonly dispid 195;
    property ReceiptRibbonLever: WordBool readonly dispid 196;
    property ReceiptRibbonOpticalSensor: WordBool readonly dispid 197;
    property RegisterNumber: Integer dispid 198;
    property RegistrationNumber: Integer dispid 199;
    property ReportType: WordBool dispid 200;
    property ResultCode: Integer readonly dispid 201;
    property ResultCodeDescription: WideString readonly dispid 202;
    property RKNumber: Integer dispid 203;
    property RNM: WideString dispid 204;
    property RoughValve: WordBool readonly dispid 205;
    property RowNumber: Integer dispid 206;
    property RunningPeriod: Integer dispid 207;
    property SerialNumber: WideString dispid 208;
    property SessionNumber: Integer dispid 209;
    property SlipDocumentIsMoving: WordBool readonly dispid 210;
    property SlipDocumentIsPresent: WordBool readonly dispid 211;
    property SlowingInMilliliters: Integer dispid 212;
    property SlowingValve: WordBool readonly dispid 213;
    property StatusRK: Integer readonly dispid 214;
    property StatusRKDescription: WideString readonly dispid 215;
    property StringForPrinting: WideString dispid 216;
    property StringQuantity: Integer dispid 217;
    property Summ1: Currency dispid 218;
    property Summ2: Currency dispid 219;
    property Summ3: Currency dispid 220;
    property Summ4: Currency dispid 221;
    property TableName: WideString readonly dispid 222;
    property TableNumber: Integer dispid 223;
    property Tax1: Integer dispid 224;
    property Tax2: Integer dispid 225;
    property Tax3: Integer dispid 226;
    property Tax4: Integer dispid 227;
    property Time: TDateTime dispid 228;
    property Timeout: Integer dispid 229;
    property TimeStr: WideString dispid 230;
    property TransferBytes: WideString dispid 231;
    property TRKNumber: Integer dispid 232;
    property TypeOfLastEntryFM: WordBool readonly dispid 233;
    property TypeOfSumOfEntriesFM: WordBool dispid 234;
    property UCodePage: Integer readonly dispid 235;
    property UDescription: WideString readonly dispid 236;
    property UMajorProtocolVersion: Integer readonly dispid 237;
    property UMajorType: Integer readonly dispid 238;
    property UMinorProtocolVersion: Integer readonly dispid 239;
    property UMinorType: Integer readonly dispid 240;
    property UModel: Integer readonly dispid 241;
    property UseJournalRibbon: WordBool dispid 242;
    property UseReceiptRibbon: WordBool dispid 243;
    property UseSlipDocument: WordBool dispid 244;
    property ValueOfFieldInteger: Integer dispid 245;
    property ValueOfFieldString: WideString dispid 246;
    function  PrintStringWithFont: Integer; dispid 169;
    property FontType: Integer dispid 247;
    property LDBaudrate: Integer dispid 248;
    property LDComNumber: Integer dispid 249;
    property LDCount: Integer readonly dispid 250;
    property LDIndex: Integer dispid 251;
    property LDName: WideString dispid 252;
    property LDNumber: Integer dispid 253;
    property WaitPrintingTime: Integer readonly dispid 254;
    property IsPrinterLeftSensorFailure: WordBool readonly dispid 255;
    property IsPrinterRightSensorFailure: WordBool readonly dispid 256;
    function  EKLZActivizationResult: Integer; dispid 257;
    function  EKLZActivization: Integer; dispid 258;
    function  CloseEKLZArchive: Integer; dispid 259;
    function  GetEKLZSerialNumber: Integer; dispid 260;
    property EKLZNumber: WideString readonly dispid 261;
    function  EKLZInterrupt: Integer; dispid 262;
    function  GetEKLZCode1Report: Integer; dispid 263;
    property LastKPKDocumentResult: Currency readonly dispid 264;
    property LastKPKDate: TDateTime readonly dispid 265;
    property LastKPKTime: TDateTime readonly dispid 266;
    property LastKPKNumber: Integer readonly dispid 267;
    property EKLZFlags: Integer readonly dispid 268;
    function  GetEKLZCode2Report: Integer; dispid 269;
    function  TestEKLZArchiveIntegrity: Integer; dispid 270;
    property TestNumber: Integer dispid 271;
    property EKLZVersion: WideString readonly dispid 272;
    property EKLZData: WideString readonly dispid 273;
    function  GetEKLZVersion: Integer; dispid 274;
    function  InitEKLZArchive: Integer; dispid 275;
    function  GetEKLZData: Integer; dispid 276;
    function  GetEKLZJournal: Integer; dispid 277;
    function  GetEKLZDocument: Integer; dispid 278;
    function  GetEKLZDepartmentReportInDatesRange: Integer; dispid 279;
    function  GetEKLZDepartmentReportInSessionsRange: Integer; dispid 280;
    function  GetEKLZSessionReportInDatesRange: Integer; dispid 281;
    function  GetEKLZSessionReportInSessionsRange: Integer; dispid 282;
    function  GetEKLZSessionTotal: Integer; dispid 283;
    function  GetEKLZActivizationResult: Integer; dispid 284;
    function  SetEKLZResultCode: Integer; dispid 285;
    property EKLZResultCode: Integer dispid 286;
    property FMResultCode: Integer readonly dispid 287;
    property PowerSourceVoltage: Double readonly dispid 288;
    property IsEKLZOverflow: WordBool readonly dispid 289;
    function  OpenFiscalSlipDocument: Integer; dispid 291;
    function  OpenStandardFiscalSlipDocument: Integer; dispid 292;
    function  RegistrationOnSlipDocument: Integer; dispid 293;
    function  StandardRegistrationOnSlipDocument: Integer; dispid 294;
    function  ChargeOnSlipDocument: Integer; dispid 295;
    function  StandardChargeOnSlipDocument: Integer; dispid 296;
    function  CloseCheckOnSlipDocument: Integer; dispid 297;
    function  StandardCloseCheckOnSlipDocument: Integer; dispid 298;
    function  ConfigureSlipDocument: Integer; dispid 299;
    function  ConfigureStandardSlipDocument: Integer; dispid 300;
    function  FillSlipDocumentWithUnfiscalInfo: Integer; dispid 301;
    function  ClearSlipDocumentBufferString: Integer; dispid 302;
    function  ClearSlipDocumentBuffer: Integer; dispid 303;
    function  PrintSlipDocument: Integer; dispid 304;
    property CopyType: Integer dispid 305;
    property NumberOfCopies: Integer dispid 307;
    property CopyOffset1: Integer dispid 308;
    property CopyOffset2: Integer dispid 309;
    property CopyOffset3: Integer dispid 310;
    property CopyOffset4: Integer dispid 311;
    property CopyOffset5: Integer dispid 312;
    property ClicheFont: Integer dispid 313;
    property HeaderFont: Integer dispid 314;
    property EKLZFont: Integer dispid 315;
    property ClicheStringNumber: Integer dispid 316;
    property HeaderStringNumber: Integer dispid 317;
    property EKLZStringNumber: Integer dispid 318;
    property FMStringNumber: Integer dispid 319;
    property ClicheOffset: Integer dispid 320;
    property HeaderOffset: Integer dispid 321;
    property EKLZOffset: Integer dispid 322;
    property KPKOffset: Integer dispid 323;
    property FMOffset: Integer dispid 324;
    property OperationBlockFirstString: Integer dispid 325;
    property QuantityFormat: Integer dispid 326;
    property StringQuantityInOperation: Integer dispid 327;
    property TextStringNumber: Integer dispid 328;
    property QuantityStringNumber: Integer dispid 329;
    property SummStringNumber: Integer dispid 330;
    property DepartmentStringNumber: Integer dispid 331;
    property TextFont: Integer dispid 332;
    property QuantityFont: Integer dispid 333;
    property MultiplicationFont: Integer dispid 334;
    property PriceFont: Integer dispid 335;
    property SummFont: Integer dispid 336;
    property DepartmentFont: Integer dispid 337;
    property TextSymbolNumber: Integer dispid 338;
    property QuantitySymbolNumber: Integer dispid 339;
    property PriceSymbolNumber: Integer dispid 340;
    property SummSymbolNumber: Integer dispid 341;
    property DepartmentSymbolNumber: Integer dispid 342;
    property TextOffset: Integer dispid 343;
    property QuantityOffset: Integer dispid 344;
    property SummOffset: Integer dispid 345;
    property DepartmentOffset: Integer dispid 346;
    function  DiscountOnSlipDocument: Integer; dispid 347;
    function  StandardDiscountOnSlipDocument: Integer; dispid 348;
    property IsClearUnfiscalInfo: WordBool dispid 349;
    property InfoType: Integer dispid 350;
    property StringNumber: Integer dispid 11;
    function  EjectSlipDocument: Integer; dispid 290;
    property EjectDirection: Integer dispid 306;
    function  LoadLineDataEx: Integer; dispid 351;
    function  DrawEx: Integer; dispid 352;
    function  ConfigureGeneralSlipDocument: Integer; dispid 353;
    property OperationNameStringNumber: Integer dispid 355;
    property OperationNameFont: Integer dispid 356;
    property OperationNameOffset: Integer dispid 357;
    property TotalStringNumber: Integer dispid 358;
    property Summ1StringNumber: Integer dispid 359;
    property Summ2StringNumber: Integer dispid 360;
    property Summ3StringNumber: Integer dispid 361;
    property Summ4StringNumber: Integer dispid 362;
    property ChangeStringNumber: Integer dispid 363;
    property Tax1TurnOverStringNumber: Integer dispid 364;
    property Tax2TurnOverStringNumber: Integer dispid 365;
    property Tax3TurnOverStringNumber: Integer dispid 366;
    property Tax4TurnOverStringNumber: Integer dispid 367;
    property Tax1SumStringNumber: Integer dispid 368;
    property Tax2SumStringNumber: Integer dispid 369;
    property Tax3SumStringNumber: Integer dispid 370;
    property Tax4SumStringNumber: Integer dispid 371;
    property SubTotalStringNumber: Integer dispid 372;
    property DiscountOnCheckStringNumber: Integer dispid 373;
    property TotalFont: Integer dispid 374;
    property TotalSumFont: Integer dispid 375;
    property Summ1Font: Integer dispid 376;
    property Summ1NameFont: Integer dispid 377;
    property Summ2NameFont: Integer dispid 378;
    property Summ3NameFont: Integer dispid 379;
    property Summ4NameFont: Integer dispid 380;
    property Summ2Font: Integer dispid 381;
    property Summ3Font: Integer dispid 382;
    property Summ4Font: Integer dispid 383;
    property ChangeFont: Integer dispid 384;
    property ChangeSumFont: Integer dispid 385;
    property Tax1NameFont: Integer dispid 386;
    property Tax2NameFont: Integer dispid 387;
    property Tax3NameFont: Integer dispid 388;
    property Tax4NameFont: Integer dispid 389;
    property Tax1TurnOverFont: Integer dispid 390;
    property Tax2TurnOverFont: Integer dispid 391;
    property Tax3TurnOverFont: Integer dispid 392;
    property Tax4TurnOverFont: Integer dispid 393;
    property Tax1RateFont: Integer dispid 394;
    property Tax2RateFont: Integer dispid 395;
    property Tax3RateFont: Integer dispid 396;
    property Tax4RateFont: Integer dispid 397;
    property Tax1SumFont: Integer dispid 398;
    property Tax2SumFont: Integer dispid 399;
    property Tax3SumFont: Integer dispid 400;
    property Tax4SumFont: Integer dispid 401;
    property SubTotalFont: Integer dispid 402;
    property SubTotalSumFont: Integer dispid 403;
    property DiscountOnCheckFont: Integer dispid 404;
    property DiscountOnCheckSumFont: Integer dispid 405;
    property TotalSymbolNumber: Integer dispid 406;
    property Summ1SymbolNumber: Integer dispid 407;
    property Summ2SymbolNumber: Integer dispid 408;
    property Summ3SymbolNumber: Integer dispid 409;
    property Summ4SymbolNumber: Integer dispid 410;
    property ChangeSymbolNumber: Integer dispid 411;
    property Tax1NameSymbolNumber: Integer dispid 412;
    property Tax1TurnOverSymbolNumber: Integer dispid 413;
    property Tax1RateSymbolNumber: Integer dispid 414;
    property Tax1SumSymbolNumber: Integer dispid 415;
    property Tax2NameSymbolNumber: Integer dispid 416;
    property Tax2TurnOverSymbolNumber: Integer dispid 417;
    property Tax2RateSymbolNumber: Integer dispid 418;
    property Tax2SumSymbolNumber: Integer dispid 419;
    property Tax3NameSymbolNumber: Integer dispid 420;
    property Tax3TurnOverSymbolNumber: Integer dispid 421;
    property Tax3RateSymbolNumber: Integer dispid 422;
    property Tax3SumSymbolNumber: Integer dispid 423;
    property Tax4NameSymbolNumber: Integer dispid 424;
    property Tax4TurnOverSymbolNumber: Integer dispid 425;
    property Tax4RateSymbolNumber: Integer dispid 426;
    property Tax4SumSymbolNumber: Integer dispid 427;
    property SubTotalSymbolNumber: Integer dispid 428;
    property DiscountOnCheckSymbolNumber: Integer dispid 429;
    property DiscountOnCheckSumSymbolNumber: Integer dispid 430;
    property TotalOffset: Integer dispid 431;
    property Summ1Offset: Integer dispid 432;
    property TotalSumOffset: Integer dispid 433;
    property Summ1NameOffset: Integer dispid 434;
    property Summ2Offset: Integer dispid 435;
    property Summ2NameOffset: Integer dispid 436;
    property Summ3Offset: Integer dispid 437;
    property Summ3NameOffset: Integer dispid 438;
    property Summ4Offset: Integer dispid 439;
    property Summ4NameOffset: Integer dispid 440;
    property ChangeOffset: Integer dispid 441;
    property ChangeSumOffset: Integer dispid 442;
    property Tax1NameOffset: Integer dispid 443;
    property Tax1TurnOverOffset: Integer dispid 444;
    property Tax1RateOffset: Integer dispid 445;
    property Tax1SumOffset: Integer dispid 446;
    property Tax2NameOffset: Integer dispid 447;
    property Tax2TurnOverOffset: Integer dispid 448;
    property Tax2RateOffset: Integer dispid 449;
    property Tax2SumOffset: Integer dispid 450;
    property Tax3NameOffset: Integer dispid 451;
    property Tax3TurnOverOffset: Integer dispid 452;
    property Tax3RateOffset: Integer dispid 453;
    property Tax3SumOffset: Integer dispid 454;
    property Tax4NameOffset: Integer dispid 455;
    property Tax4TurnOverOffset: Integer dispid 456;
    property Tax4RateOffset: Integer dispid 457;
    property Tax4SumOffset: Integer dispid 458;
    property SubTotalOffset: Integer dispid 459;
    property SubTotalSumOffset: Integer dispid 460;
    property SlipDocumentWidth: Integer dispid 461;
    property SlipDocumentLength: Integer dispid 462;
    property PrintingAlignment: Integer dispid 463;
    property SlipStringIntervals: WideString dispid 464;
    property SlipEqualStringIntervals: Integer dispid 465;
    property KPKFont: Integer dispid 354;
    property DiscountOnCheckOffset: Integer dispid 466;
    property DiscountOnCheckSumOffset: Integer dispid 467;
    function  WideLoadLineData: Integer; dispid 468;
    function  PrintTaxReport: Integer; dispid 469;
    property QuantityPointPosition: WordBool readonly dispid 470;
    property FileVersionMS: LongWord readonly dispid 471;
    property FileVersionLS: LongWord readonly dispid 472;
    function  GetLongSerialNumberAndLongRNM: Integer; dispid 473;
    function  SetLongSerialNumber: Integer; dispid 474;
    function  FiscalizationWithLongRNM: Integer; dispid 475;
    property IsBatteryLow: WordBool readonly dispid 476;
    property IsLastFMRecordCorrupted: WordBool readonly dispid 477;
    property IsFMSessionOpen: WordBool readonly dispid 478;
    property IsFM24HoursOver: WordBool readonly dispid 479;
    function  Connect2: Integer; dispid 480;
    property ECRModeStatus: Integer readonly dispid 481;
    function  GetECRPrinterStatus: Integer; dispid 482;
    property PrinterStatus: Integer readonly dispid 483;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TDrvFR
// Help String      : 
// Default Interface: IDrvFR2
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (6) CanCreate Licensed
// *********************************************************************//
  TDrvFR = class(TOleControl)
  private
    FIntf: IDrvFR2;
    function  GetControlInterface: IDrvFR2;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function  AddLD: Integer;
    function  Beep: Integer;
    function  Buy: Integer;
    function  BuyEx: Integer;
    function  CancelCheck: Integer;
    function  CashIncome: Integer;
    function  CashOutcome: Integer;
    function  Charge: Integer;
    function  CheckSubTotal: Integer;
    function  CloseCheck: Integer;
    function  ConfirmDate: Integer;
    function  Connect: Integer;
    function  ContinuePrint: Integer;
    function  Correction: Integer;
    function  CutCheck: Integer;
    function  DampRequest: Integer;
    function  DeleteLD: Integer;
    function  Disconnect: Integer;
    function  Discount: Integer;
    function  DozeOilCheck: Integer;
    function  Draw: Integer;
    function  EKLZDepartmentReportInDatesRange: Integer;
    function  EKLZDepartmentReportInSessionsRange: Integer;
    function  EKLZJournalOnSessionNumber: Integer;
    function  EKLZSessionReportInDatesRange: Integer;
    function  EKLZSessionReportInSessionsRange: Integer;
    function  ExchangeBytes: Integer;
    function  FeedDocument: Integer;
    function  Fiscalization: Integer;
    function  FiscalReportForDatesRange: Integer;
    function  FiscalReportForSessionRange: Integer;
    function  GetActiveLD: Integer;
    function  EnumLD: Integer;
    function  GetCashReg: Integer;
    function  GetCountLD: Integer;
    function  GetData: Integer;
    function  GetDeviceMetrics: Integer;
    function  GetECRStatus: Integer;
    function  GetShortECRStatus: Integer;
    function  GetExchangeParam: Integer;
    function  GetFieldStruct: Integer;
    function  GetFiscalizationParameters: Integer;
    function  GetFMRecordsSum: Integer;
    function  GetLastFMRecordDate: Integer;
    function  GetLiterSumCounter: Integer;
    function  GetOperationReg: Integer;
    function  GetParamLD: Integer;
    function  GetRangeDatesAndSessions: Integer;
    function  GetRKStatus: Integer;
    function  GetTableStruct: Integer;
    function  InitFM: Integer;
    function  InitTable: Integer;
    function  InterruptDataStream: Integer;
    function  InterruptFullReport: Integer;
    function  InterruptTest: Integer;
    function  LaunchRK: Integer;
    function  LoadLineData: Integer;
    function  OilSale: Integer;
    function  OpenCheck: Integer;
    function  OpenDrawer: Integer;
    function  PrintBarCode: Integer;
    function  PrintDepartmentReport: Integer;
    function  PrintDocumentTitle: Integer;
    function  PrintOperationReg: Integer;
    function  PrintReportWithCleaning: Integer;
    function  PrintReportWithoutCleaning: Integer;
    function  PrintString: Integer;
    function  PrintWideString: Integer;
    function  ReadEKLZDocumentOnKPK: Integer;
    function  ReadEKLZSessionTotal: Integer;
    function  ReadLicense: Integer;
    function  ReadTable: Integer;
    function  RepeatDocument: Integer;
    function  ResetAllTRK: Integer;
    function  ResetRK: Integer;
    function  ResetSettings: Integer;
    function  ResetSummary: Integer;
    function  ReturnBuy: Integer;
    function  ReturnBuyEx: Integer;
    function  ReturnSale: Integer;
    function  ReturnSaleEx: Integer;
    function  Sale: Integer;
    function  SaleEx: Integer;
    function  SetActiveLD: Integer;
    function  SetDate: Integer;
    function  SetDozeInMilliliters: Integer;
    function  SetDozeInMoney: Integer;
    function  SetExchangeParam: Integer;
    function  SetParamLD: Integer;
    function  SetPointPosition: Integer;
    function  SetRKParameters: Integer;
    function  SetSerialNumber: Integer;
    function  SetTime: Integer;
    function  ShowProperties: Integer;
    function  StopEKLZDocumentPrinting: Integer;
    function  StopRK: Integer;
    function  Storno: Integer;
    function  StornoEx: Integer;
    function  StornoCharge: Integer;
    function  StornoDiscount: Integer;
    function  SummOilCheck: Integer;
    function  SysAdminCancelCheck: Integer;
    function  Test: Integer;
    function  WriteLicense: Integer;
    function  WriteTable: Integer;
    function  PrintStringWithFont: Integer;
    function  EKLZActivizationResult: Integer;
    function  EKLZActivization: Integer;
    function  CloseEKLZArchive: Integer;
    function  GetEKLZSerialNumber: Integer;
    function  EKLZInterrupt: Integer;
    function  GetEKLZCode1Report: Integer;
    function  GetEKLZCode2Report: Integer;
    function  TestEKLZArchiveIntegrity: Integer;
    function  GetEKLZVersion: Integer;
    function  InitEKLZArchive: Integer;
    function  GetEKLZData: Integer;
    function  GetEKLZJournal: Integer;
    function  GetEKLZDocument: Integer;
    function  GetEKLZDepartmentReportInDatesRange: Integer;
    function  GetEKLZDepartmentReportInSessionsRange: Integer;
    function  GetEKLZSessionReportInDatesRange: Integer;
    function  GetEKLZSessionReportInSessionsRange: Integer;
    function  GetEKLZSessionTotal: Integer;
    function  GetEKLZActivizationResult: Integer;
    function  SetEKLZResultCode: Integer;
    function  OpenFiscalSlipDocument: Integer;
    function  OpenStandardFiscalSlipDocument: Integer;
    function  RegistrationOnSlipDocument: Integer;
    function  StandardRegistrationOnSlipDocument: Integer;
    function  ChargeOnSlipDocument: Integer;
    function  StandardChargeOnSlipDocument: Integer;
    function  CloseCheckOnSlipDocument: Integer;
    function  StandardCloseCheckOnSlipDocument: Integer;
    function  ConfigureSlipDocument: Integer;
    function  ConfigureStandardSlipDocument: Integer;
    function  FillSlipDocumentWithUnfiscalInfo: Integer;
    function  ClearSlipDocumentBufferString: Integer;
    function  ClearSlipDocumentBuffer: Integer;
    function  PrintSlipDocument: Integer;
    function  DiscountOnSlipDocument: Integer;
    function  StandardDiscountOnSlipDocument: Integer;
    function  EjectSlipDocument: Integer;
    function  LoadLineDataEx: Integer;
    function  DrawEx: Integer;
    function  ConfigureGeneralSlipDocument: Integer;
    function  WideLoadLineData: Integer;
    function  PrintTaxReport: Integer;
    function  GetLongSerialNumberAndLongRNM: Integer;
    function  SetLongSerialNumber: Integer;
    function  FiscalizationWithLongRNM: Integer;
    function  Connect2: Integer;
    function  GetECRPrinterStatus: Integer;
    function  ServerConnect: Integer;
    function  ServerDisconnect: Integer;
    function  LockPort: Integer;
    function  UnlockPort: Integer;
    function  AdminUnlockPort: Integer;
    function  AdminUnlockPorts: Integer;
    property  ControlInterface: IDrvFR2 read GetControlInterface;
    property  DefaultInterface: IDrvFR2 read GetControlInterface;
    property BatteryCondition: WordBool index 108 read GetWordBoolProp;
    property BatteryVoltage: Double index 109 read GetDoubleProp;
    property Change: Currency index 111 read GetCurrencyProp;
    property ContentsOfCashRegister: Currency index 115 read GetCurrencyProp;
    property ContentsOfOperationRegister: Integer index 116 read GetIntegerProp;
    property DataBlock: WideString index 120 read GetWideStringProp;
    property DataBlockNumber: Integer index 121 read GetIntegerProp;
    property DeviceCodeDescription: WideString index 125 read GetWideStringProp;
    property ECRAdvancedMode: Integer index 132 read GetIntegerProp;
    property ECRAdvancedModeDescription: WideString index 133 read GetWideStringProp;
    property ECRBuild: Integer index 134 read GetIntegerProp;
    property ECRFlags: Integer index 135 read GetIntegerProp;
    property ECRInput: WideString index 136 read GetWideStringProp;
    property ECRMode: Integer index 137 read GetIntegerProp;
    property ECRMode8Status: Integer index 138 read GetIntegerProp;
    property ECRModeDescription: WideString index 139 read GetWideStringProp;
    property ECROutput: WideString index 140 read GetWideStringProp;
    property ECRSoftDate: TDateTime index 141 read GetTDateTimeProp;
    property ECRSoftVersion: WideString index 142 read GetWideStringProp;
    property EKLZIsPresent: WordBool index 143 read GetWordBoolProp;
    property EmergencyStopCode: Integer index 144 read GetIntegerProp;
    property EmergencyStopCodeDescription: WideString index 145 read GetWideStringProp;
    property FieldName: WideString index 146 read GetWideStringProp;
    property FieldSize: Integer index 148 read GetIntegerProp;
    property FieldType: WordBool index 149 read GetWordBoolProp;
    property FM1IsPresent: WordBool index 153 read GetWordBoolProp;
    property FM2IsPresent: WordBool index 154 read GetWordBoolProp;
    property FMBuild: Integer index 155 read GetIntegerProp;
    property FMFlags: Integer index 156 read GetIntegerProp;
    property FMOverflow: WordBool index 157 read GetWordBoolProp;
    property FMSoftDate: TDateTime index 158 read GetTDateTimeProp;
    property FMSoftVersion: WideString index 159 read GetWideStringProp;
    property FreeRecordInFM: Integer index 160 read GetIntegerProp;
    property FreeRegistration: Integer index 161 read GetIntegerProp;
    property IsCheckClosed: WordBool index 163 read GetWordBoolProp;
    property IsCheckMadeOut: WordBool index 164 read GetWordBoolProp;
    property IsDrawerOpen: WordBool index 165 read GetWordBoolProp;
    property JournalRibbonIsPresent: WordBool index 166 read GetWordBoolProp;
    property JournalRibbonLever: WordBool index 167 read GetWordBoolProp;
    property JournalRibbonOpticalSensor: WordBool index 168 read GetWordBoolProp;
    property LicenseIsPresent: WordBool index 175 read GetWordBoolProp;
    property LidPositionSensor: WordBool index 176 read GetWordBoolProp;
    property LogicalNumber: Integer index 179 read GetIntegerProp;
    property MAXValueOfField: Integer index 180 read GetIntegerProp;
    property MINValueOfField: Integer index 181 read GetIntegerProp;
    property Motor: WordBool index 182 read GetWordBoolProp;
    property NameCashReg: WideString index 183 read GetWideStringProp;
    property NameOperationReg: WideString index 184 read GetWideStringProp;
    property OpenDocumentNumber: Integer index 186 read GetIntegerProp;
    property OperatorNumber: Integer index 187 read GetIntegerProp;
    property Pistol: WordBool index 189 read GetWordBoolProp;
    property QuantityOfOperations: Integer index 194 read GetIntegerProp;
    property ReceiptRibbonIsPresent: WordBool index 195 read GetWordBoolProp;
    property ReceiptRibbonLever: WordBool index 196 read GetWordBoolProp;
    property ReceiptRibbonOpticalSensor: WordBool index 197 read GetWordBoolProp;
    property ResultCode: Integer index 201 read GetIntegerProp;
    property ResultCodeDescription: WideString index 202 read GetWideStringProp;
    property RoughValve: WordBool index 205 read GetWordBoolProp;
    property SlipDocumentIsMoving: WordBool index 210 read GetWordBoolProp;
    property SlipDocumentIsPresent: WordBool index 211 read GetWordBoolProp;
    property SlowingValve: WordBool index 213 read GetWordBoolProp;
    property StatusRK: Integer index 214 read GetIntegerProp;
    property StatusRKDescription: WideString index 215 read GetWideStringProp;
    property TableName: WideString index 222 read GetWideStringProp;
    property TypeOfLastEntryFM: WordBool index 233 read GetWordBoolProp;
    property UCodePage: Integer index 235 read GetIntegerProp;
    property UDescription: WideString index 236 read GetWideStringProp;
    property UMajorProtocolVersion: Integer index 237 read GetIntegerProp;
    property UMajorType: Integer index 238 read GetIntegerProp;
    property UMinorProtocolVersion: Integer index 239 read GetIntegerProp;
    property UMinorType: Integer index 240 read GetIntegerProp;
    property UModel: Integer index 241 read GetIntegerProp;
    property LDCount: Integer index 250 read GetIntegerProp;
    property WaitPrintingTime: Integer index 254 read GetIntegerProp;
    property IsPrinterLeftSensorFailure: WordBool index 255 read GetWordBoolProp;
    property IsPrinterRightSensorFailure: WordBool index 256 read GetWordBoolProp;
    property EKLZNumber: WideString index 261 read GetWideStringProp;
    property LastKPKDocumentResult: Currency index 264 read GetCurrencyProp;
    property LastKPKDate: TDateTime index 265 read GetTDateTimeProp;
    property LastKPKTime: TDateTime index 266 read GetTDateTimeProp;
    property LastKPKNumber: Integer index 267 read GetIntegerProp;
    property EKLZFlags: Integer index 268 read GetIntegerProp;
    property EKLZVersion: WideString index 272 read GetWideStringProp;
    property EKLZData: WideString index 273 read GetWideStringProp;
    property FMResultCode: Integer index 287 read GetIntegerProp;
    property PowerSourceVoltage: Double index 288 read GetDoubleProp;
    property IsEKLZOverflow: WordBool index 289 read GetWordBoolProp;
    property QuantityPointPosition: WordBool index 470 read GetWordBoolProp;
    property FileVersionMS: Integer index 471 read GetIntegerProp;
    property FileVersionLS: Integer index 472 read GetIntegerProp;
    property IsBatteryLow: WordBool index 476 read GetWordBoolProp;
    property IsLastFMRecordCorrupted: WordBool index 477 read GetWordBoolProp;
    property IsFMSessionOpen: WordBool index 478 read GetWordBoolProp;
    property IsFM24HoursOver: WordBool index 479 read GetWordBoolProp;
    property ECRModeStatus: Integer index 481 read GetIntegerProp;
    property PrinterStatus: Integer index 483 read GetIntegerProp;
    property ServerVersion: WideString index 484 read GetWideStringProp;
    property ServerConnected: WordBool index 490 read GetWordBoolProp;
    property PortLocked: WordBool index 493 read GetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property BarCode: WideString index 103 read GetWideStringProp write SetWideStringProp stored False;
    property BaudRate: Integer index 110 read GetIntegerProp write SetIntegerProp stored False;
    property CheckResult: Currency index 112 read GetCurrencyProp write SetCurrencyProp stored False;
    property CheckType: Integer index 113 read GetIntegerProp write SetIntegerProp stored False;
    property ComNumber: Integer index 114 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDozeInMilliliters: Integer index 117 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDozeInMoney: Currency index 118 read GetCurrencyProp write SetCurrencyProp stored False;
    property CutType: WordBool index 119 read GetWordBoolProp write SetWordBoolProp stored False;
    property Date: TDateTime index 122 read GetTDateTimeProp write SetTDateTimeProp stored False;
    property Department: Integer index 123 read GetIntegerProp write SetIntegerProp stored False;
    property DeviceCode: Integer index 124 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheck: Double index 126 read GetDoubleProp write SetDoubleProp stored False;
    property DocumentName: WideString index 127 read GetWideStringProp write SetWideStringProp stored False;
    property DocumentNumber: Integer index 128 read GetIntegerProp write SetIntegerProp stored False;
    property DozeInMilliliters: Integer index 129 read GetIntegerProp write SetIntegerProp stored False;
    property DozeInMoney: Currency index 130 read GetCurrencyProp write SetCurrencyProp stored False;
    property DrawerNumber: Integer index 131 read GetIntegerProp write SetIntegerProp stored False;
    property FieldNumber: Integer index 147 read GetIntegerProp write SetIntegerProp stored False;
    property FirstLineNumber: Integer index 150 read GetIntegerProp write SetIntegerProp stored False;
    property FirstSessionDate: TDateTime index 151 read GetTDateTimeProp write SetTDateTimeProp stored False;
    property FirstSessionNumber: Integer index 152 read GetIntegerProp write SetIntegerProp stored False;
    property INN: WideString index 162 read GetWideStringProp write SetWideStringProp stored False;
    property KPKNumber: Integer index 170 read GetIntegerProp write SetIntegerProp stored False;
    property LastLineNumber: Integer index 171 read GetIntegerProp write SetIntegerProp stored False;
    property LastSessionDate: TDateTime index 172 read GetTDateTimeProp write SetTDateTimeProp stored False;
    property LastSessionNumber: Integer index 173 read GetIntegerProp write SetIntegerProp stored False;
    property License: WideString index 174 read GetWideStringProp write SetWideStringProp stored False;
    property LineData: WideString index 177 read GetWideStringProp write SetWideStringProp stored False;
    property LineNumber: Integer index 178 read GetIntegerProp write SetIntegerProp stored False;
    property NewPasswordTI: Integer index 185 read GetIntegerProp write SetIntegerProp stored False;
    property Password: Integer index 188 read GetIntegerProp write SetIntegerProp stored False;
    property PointPosition: WordBool index 190 read GetWordBoolProp write SetWordBoolProp stored False;
    property PortNumber: Integer index 191 read GetIntegerProp write SetIntegerProp stored False;
    property Price: Currency index 192 read GetCurrencyProp write SetCurrencyProp stored False;
    property Quantity: Double index 193 read GetDoubleProp write SetDoubleProp stored False;
    property RegisterNumber: Integer index 198 read GetIntegerProp write SetIntegerProp stored False;
    property RegistrationNumber: Integer index 199 read GetIntegerProp write SetIntegerProp stored False;
    property ReportType: WordBool index 200 read GetWordBoolProp write SetWordBoolProp stored False;
    property RKNumber: Integer index 203 read GetIntegerProp write SetIntegerProp stored False;
    property RNM: WideString index 204 read GetWideStringProp write SetWideStringProp stored False;
    property RowNumber: Integer index 206 read GetIntegerProp write SetIntegerProp stored False;
    property RunningPeriod: Integer index 207 read GetIntegerProp write SetIntegerProp stored False;
    property SerialNumber: WideString index 208 read GetWideStringProp write SetWideStringProp stored False;
    property SessionNumber: Integer index 209 read GetIntegerProp write SetIntegerProp stored False;
    property SlowingInMilliliters: Integer index 212 read GetIntegerProp write SetIntegerProp stored False;
    property StringForPrinting: WideString index 216 read GetWideStringProp write SetWideStringProp stored False;
    property StringQuantity: Integer index 217 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1: Currency index 218 read GetCurrencyProp write SetCurrencyProp stored False;
    property Summ2: Currency index 219 read GetCurrencyProp write SetCurrencyProp stored False;
    property Summ3: Currency index 220 read GetCurrencyProp write SetCurrencyProp stored False;
    property Summ4: Currency index 221 read GetCurrencyProp write SetCurrencyProp stored False;
    property TableNumber: Integer index 223 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1: Integer index 224 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2: Integer index 225 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3: Integer index 226 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4: Integer index 227 read GetIntegerProp write SetIntegerProp stored False;
    property Time: TDateTime index 228 read GetTDateTimeProp write SetTDateTimeProp stored False;
    property Timeout: Integer index 229 read GetIntegerProp write SetIntegerProp stored False;
    property TimeStr: WideString index 230 read GetWideStringProp write SetWideStringProp stored False;
    property TransferBytes: WideString index 231 read GetWideStringProp write SetWideStringProp stored False;
    property TRKNumber: Integer index 232 read GetIntegerProp write SetIntegerProp stored False;
    property TypeOfSumOfEntriesFM: WordBool index 234 read GetWordBoolProp write SetWordBoolProp stored False;
    property UseJournalRibbon: WordBool index 242 read GetWordBoolProp write SetWordBoolProp stored False;
    property UseReceiptRibbon: WordBool index 243 read GetWordBoolProp write SetWordBoolProp stored False;
    property UseSlipDocument: WordBool index 244 read GetWordBoolProp write SetWordBoolProp stored False;
    property ValueOfFieldInteger: Integer index 245 read GetIntegerProp write SetIntegerProp stored False;
    property ValueOfFieldString: WideString index 246 read GetWideStringProp write SetWideStringProp stored False;
    property FontType: Integer index 247 read GetIntegerProp write SetIntegerProp stored False;
    property LDBaudrate: Integer index 248 read GetIntegerProp write SetIntegerProp stored False;
    property LDComNumber: Integer index 249 read GetIntegerProp write SetIntegerProp stored False;
    property LDIndex: Integer index 251 read GetIntegerProp write SetIntegerProp stored False;
    property LDName: WideString index 252 read GetWideStringProp write SetWideStringProp stored False;
    property LDNumber: Integer index 253 read GetIntegerProp write SetIntegerProp stored False;
    property TestNumber: Integer index 271 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZResultCode: Integer index 286 read GetIntegerProp write SetIntegerProp stored False;
    property CopyType: Integer index 305 read GetIntegerProp write SetIntegerProp stored False;
    property NumberOfCopies: Integer index 307 read GetIntegerProp write SetIntegerProp stored False;
    property CopyOffset1: Integer index 308 read GetIntegerProp write SetIntegerProp stored False;
    property CopyOffset2: Integer index 309 read GetIntegerProp write SetIntegerProp stored False;
    property CopyOffset3: Integer index 310 read GetIntegerProp write SetIntegerProp stored False;
    property CopyOffset4: Integer index 311 read GetIntegerProp write SetIntegerProp stored False;
    property CopyOffset5: Integer index 312 read GetIntegerProp write SetIntegerProp stored False;
    property ClicheFont: Integer index 313 read GetIntegerProp write SetIntegerProp stored False;
    property HeaderFont: Integer index 314 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZFont: Integer index 315 read GetIntegerProp write SetIntegerProp stored False;
    property ClicheStringNumber: Integer index 316 read GetIntegerProp write SetIntegerProp stored False;
    property HeaderStringNumber: Integer index 317 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZStringNumber: Integer index 318 read GetIntegerProp write SetIntegerProp stored False;
    property FMStringNumber: Integer index 319 read GetIntegerProp write SetIntegerProp stored False;
    property ClicheOffset: Integer index 320 read GetIntegerProp write SetIntegerProp stored False;
    property HeaderOffset: Integer index 321 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZOffset: Integer index 322 read GetIntegerProp write SetIntegerProp stored False;
    property KPKOffset: Integer index 323 read GetIntegerProp write SetIntegerProp stored False;
    property FMOffset: Integer index 324 read GetIntegerProp write SetIntegerProp stored False;
    property OperationBlockFirstString: Integer index 325 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityFormat: Integer index 326 read GetIntegerProp write SetIntegerProp stored False;
    property StringQuantityInOperation: Integer index 327 read GetIntegerProp write SetIntegerProp stored False;
    property TextStringNumber: Integer index 328 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityStringNumber: Integer index 329 read GetIntegerProp write SetIntegerProp stored False;
    property SummStringNumber: Integer index 330 read GetIntegerProp write SetIntegerProp stored False;
    property DepartmentStringNumber: Integer index 331 read GetIntegerProp write SetIntegerProp stored False;
    property TextFont: Integer index 332 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityFont: Integer index 333 read GetIntegerProp write SetIntegerProp stored False;
    property MultiplicationFont: Integer index 334 read GetIntegerProp write SetIntegerProp stored False;
    property PriceFont: Integer index 335 read GetIntegerProp write SetIntegerProp stored False;
    property SummFont: Integer index 336 read GetIntegerProp write SetIntegerProp stored False;
    property DepartmentFont: Integer index 337 read GetIntegerProp write SetIntegerProp stored False;
    property TextSymbolNumber: Integer index 338 read GetIntegerProp write SetIntegerProp stored False;
    property QuantitySymbolNumber: Integer index 339 read GetIntegerProp write SetIntegerProp stored False;
    property PriceSymbolNumber: Integer index 340 read GetIntegerProp write SetIntegerProp stored False;
    property SummSymbolNumber: Integer index 341 read GetIntegerProp write SetIntegerProp stored False;
    property DepartmentSymbolNumber: Integer index 342 read GetIntegerProp write SetIntegerProp stored False;
    property TextOffset: Integer index 343 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityOffset: Integer index 344 read GetIntegerProp write SetIntegerProp stored False;
    property SummOffset: Integer index 345 read GetIntegerProp write SetIntegerProp stored False;
    property DepartmentOffset: Integer index 346 read GetIntegerProp write SetIntegerProp stored False;
    property IsClearUnfiscalInfo: WordBool index 349 read GetWordBoolProp write SetWordBoolProp stored False;
    property InfoType: Integer index 350 read GetIntegerProp write SetIntegerProp stored False;
    property StringNumber: Integer index 11 read GetIntegerProp write SetIntegerProp stored False;
    property EjectDirection: Integer index 306 read GetIntegerProp write SetIntegerProp stored False;
    property OperationNameStringNumber: Integer index 355 read GetIntegerProp write SetIntegerProp stored False;
    property OperationNameFont: Integer index 356 read GetIntegerProp write SetIntegerProp stored False;
    property OperationNameOffset: Integer index 357 read GetIntegerProp write SetIntegerProp stored False;
    property TotalStringNumber: Integer index 358 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1StringNumber: Integer index 359 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2StringNumber: Integer index 360 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3StringNumber: Integer index 361 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4StringNumber: Integer index 362 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeStringNumber: Integer index 363 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1TurnOverStringNumber: Integer index 364 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2TurnOverStringNumber: Integer index 365 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3TurnOverStringNumber: Integer index 366 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4TurnOverStringNumber: Integer index 367 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1SumStringNumber: Integer index 368 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2SumStringNumber: Integer index 369 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3SumStringNumber: Integer index 370 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4SumStringNumber: Integer index 371 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalStringNumber: Integer index 372 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckStringNumber: Integer index 373 read GetIntegerProp write SetIntegerProp stored False;
    property TotalFont: Integer index 374 read GetIntegerProp write SetIntegerProp stored False;
    property TotalSumFont: Integer index 375 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1Font: Integer index 376 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1NameFont: Integer index 377 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2NameFont: Integer index 378 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3NameFont: Integer index 379 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4NameFont: Integer index 380 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2Font: Integer index 381 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3Font: Integer index 382 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4Font: Integer index 383 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeFont: Integer index 384 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeSumFont: Integer index 385 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1NameFont: Integer index 386 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2NameFont: Integer index 387 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3NameFont: Integer index 388 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4NameFont: Integer index 389 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1TurnOverFont: Integer index 390 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2TurnOverFont: Integer index 391 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3TurnOverFont: Integer index 392 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4TurnOverFont: Integer index 393 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1RateFont: Integer index 394 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2RateFont: Integer index 395 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3RateFont: Integer index 396 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4RateFont: Integer index 397 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1SumFont: Integer index 398 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2SumFont: Integer index 399 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3SumFont: Integer index 400 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4SumFont: Integer index 401 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalFont: Integer index 402 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalSumFont: Integer index 403 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckFont: Integer index 404 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckSumFont: Integer index 405 read GetIntegerProp write SetIntegerProp stored False;
    property TotalSymbolNumber: Integer index 406 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1SymbolNumber: Integer index 407 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2SymbolNumber: Integer index 408 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3SymbolNumber: Integer index 409 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4SymbolNumber: Integer index 410 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeSymbolNumber: Integer index 411 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1NameSymbolNumber: Integer index 412 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1TurnOverSymbolNumber: Integer index 413 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1RateSymbolNumber: Integer index 414 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1SumSymbolNumber: Integer index 415 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2NameSymbolNumber: Integer index 416 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2TurnOverSymbolNumber: Integer index 417 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2RateSymbolNumber: Integer index 418 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2SumSymbolNumber: Integer index 419 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3NameSymbolNumber: Integer index 420 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3TurnOverSymbolNumber: Integer index 421 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3RateSymbolNumber: Integer index 422 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3SumSymbolNumber: Integer index 423 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4NameSymbolNumber: Integer index 424 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4TurnOverSymbolNumber: Integer index 425 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4RateSymbolNumber: Integer index 426 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4SumSymbolNumber: Integer index 427 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalSymbolNumber: Integer index 428 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckSymbolNumber: Integer index 429 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckSumSymbolNumber: Integer index 430 read GetIntegerProp write SetIntegerProp stored False;
    property TotalOffset: Integer index 431 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1Offset: Integer index 432 read GetIntegerProp write SetIntegerProp stored False;
    property TotalSumOffset: Integer index 433 read GetIntegerProp write SetIntegerProp stored False;
    property Summ1NameOffset: Integer index 434 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2Offset: Integer index 435 read GetIntegerProp write SetIntegerProp stored False;
    property Summ2NameOffset: Integer index 436 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3Offset: Integer index 437 read GetIntegerProp write SetIntegerProp stored False;
    property Summ3NameOffset: Integer index 438 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4Offset: Integer index 439 read GetIntegerProp write SetIntegerProp stored False;
    property Summ4NameOffset: Integer index 440 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeOffset: Integer index 441 read GetIntegerProp write SetIntegerProp stored False;
    property ChangeSumOffset: Integer index 442 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1NameOffset: Integer index 443 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1TurnOverOffset: Integer index 444 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1RateOffset: Integer index 445 read GetIntegerProp write SetIntegerProp stored False;
    property Tax1SumOffset: Integer index 446 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2NameOffset: Integer index 447 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2TurnOverOffset: Integer index 448 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2RateOffset: Integer index 449 read GetIntegerProp write SetIntegerProp stored False;
    property Tax2SumOffset: Integer index 450 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3NameOffset: Integer index 451 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3TurnOverOffset: Integer index 452 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3RateOffset: Integer index 453 read GetIntegerProp write SetIntegerProp stored False;
    property Tax3SumOffset: Integer index 454 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4NameOffset: Integer index 455 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4TurnOverOffset: Integer index 456 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4RateOffset: Integer index 457 read GetIntegerProp write SetIntegerProp stored False;
    property Tax4SumOffset: Integer index 458 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalOffset: Integer index 459 read GetIntegerProp write SetIntegerProp stored False;
    property SubTotalSumOffset: Integer index 460 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocumentWidth: Integer index 461 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocumentLength: Integer index 462 read GetIntegerProp write SetIntegerProp stored False;
    property PrintingAlignment: Integer index 463 read GetIntegerProp write SetIntegerProp stored False;
    property SlipStringIntervals: WideString index 464 read GetWideStringProp write SetWideStringProp stored False;
    property SlipEqualStringIntervals: Integer index 465 read GetIntegerProp write SetIntegerProp stored False;
    property KPKFont: Integer index 354 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckOffset: Integer index 466 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountOnCheckSumOffset: Integer index 467 read GetIntegerProp write SetIntegerProp stored False;
    property LDComputerName: WideString index 485 read GetWideStringProp write SetWideStringProp stored False;
    property LDTimeout: Integer index 486 read GetIntegerProp write SetIntegerProp stored False;
    property ComputerName: WideString index 487 read GetWideStringProp write SetWideStringProp stored False;
  end;

procedure Register;

implementation

uses ComObj;

procedure TDrvFR.InitControlData;
const
  CLicenseKey: array[0..36] of Word = ( $0042, $0038, $0031, $0044, $0044, $0034, $0035, $0030, $002D, $0041, $0034
    , $0032, $0041, $002D, $0034, $0041, $0042, $0030, $002D, $0038, $0044
    , $0033, $0044, $002D, $0032, $0032, $0031, $0030, $0039, $0043, $0035
    , $0039, $0033, $0039, $0042, $0036, $0000);
  CControlData: TControlData2 = (
    ClassID: '{E187099F-8C5C-4723-8866-D8DBB6353ADE}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TDrvFR.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IDrvFR2;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TDrvFR.GetControlInterface: IDrvFR2;
begin
  CreateControl;
  Result := FIntf;
end;

function  TDrvFR.AddLD: Integer;
begin
  Result := DefaultInterface.AddLD;
end;

function  TDrvFR.Beep: Integer;
begin
  Result := DefaultInterface.Beep;
end;

function  TDrvFR.Buy: Integer;
begin
  Result := DefaultInterface.Buy;
end;

function  TDrvFR.BuyEx: Integer;
begin
  Result := DefaultInterface.BuyEx;
end;

function  TDrvFR.CancelCheck: Integer;
begin
  Result := DefaultInterface.CancelCheck;
end;

function  TDrvFR.CashIncome: Integer;
begin
  Result := DefaultInterface.CashIncome;
end;

function  TDrvFR.CashOutcome: Integer;
begin
  Result := DefaultInterface.CashOutcome;
end;

function  TDrvFR.Charge: Integer;
begin
  Result := DefaultInterface.Charge;
end;

function  TDrvFR.CheckSubTotal: Integer;
begin
  Result := DefaultInterface.CheckSubTotal;
end;

function  TDrvFR.CloseCheck: Integer;
begin
  Result := DefaultInterface.CloseCheck;
end;

function  TDrvFR.ConfirmDate: Integer;
begin
  Result := DefaultInterface.ConfirmDate;
end;

function  TDrvFR.Connect: Integer;
begin
  Result := DefaultInterface.Connect;
end;

function  TDrvFR.ContinuePrint: Integer;
begin
  Result := DefaultInterface.ContinuePrint;
end;

function  TDrvFR.Correction: Integer;
begin
  Result := DefaultInterface.Correction;
end;

function  TDrvFR.CutCheck: Integer;
begin
  Result := DefaultInterface.CutCheck;
end;

function  TDrvFR.DampRequest: Integer;
begin
  Result := DefaultInterface.DampRequest;
end;

function  TDrvFR.DeleteLD: Integer;
begin
  Result := DefaultInterface.DeleteLD;
end;

function  TDrvFR.Disconnect: Integer;
begin
  Result := DefaultInterface.Disconnect;
end;

function  TDrvFR.Discount: Integer;
begin
  Result := DefaultInterface.Discount;
end;

function  TDrvFR.DozeOilCheck: Integer;
begin
  Result := DefaultInterface.DozeOilCheck;
end;

function  TDrvFR.Draw: Integer;
begin
  Result := DefaultInterface.Draw;
end;

function  TDrvFR.EKLZDepartmentReportInDatesRange: Integer;
begin
  Result := DefaultInterface.EKLZDepartmentReportInDatesRange;
end;

function  TDrvFR.EKLZDepartmentReportInSessionsRange: Integer;
begin
  Result := DefaultInterface.EKLZDepartmentReportInSessionsRange;
end;

function  TDrvFR.EKLZJournalOnSessionNumber: Integer;
begin
  Result := DefaultInterface.EKLZJournalOnSessionNumber;
end;

function  TDrvFR.EKLZSessionReportInDatesRange: Integer;
begin
  Result := DefaultInterface.EKLZSessionReportInDatesRange;
end;

function  TDrvFR.EKLZSessionReportInSessionsRange: Integer;
begin
  Result := DefaultInterface.EKLZSessionReportInSessionsRange;
end;

function  TDrvFR.ExchangeBytes: Integer;
begin
  Result := DefaultInterface.ExchangeBytes;
end;

function  TDrvFR.FeedDocument: Integer;
begin
  Result := DefaultInterface.FeedDocument;
end;

function  TDrvFR.Fiscalization: Integer;
begin
  Result := DefaultInterface.Fiscalization;
end;

function  TDrvFR.FiscalReportForDatesRange: Integer;
begin
  Result := DefaultInterface.FiscalReportForDatesRange;
end;

function  TDrvFR.FiscalReportForSessionRange: Integer;
begin
  Result := DefaultInterface.FiscalReportForSessionRange;
end;

function  TDrvFR.GetActiveLD: Integer;
begin
  Result := DefaultInterface.GetActiveLD;
end;

function  TDrvFR.EnumLD: Integer;
begin
  Result := DefaultInterface.EnumLD;
end;

function  TDrvFR.GetCashReg: Integer;
begin
  Result := DefaultInterface.GetCashReg;
end;

function  TDrvFR.GetCountLD: Integer;
begin
  Result := DefaultInterface.GetCountLD;
end;

function  TDrvFR.GetData: Integer;
begin
  Result := DefaultInterface.GetData;
end;

function  TDrvFR.GetDeviceMetrics: Integer;
begin
  Result := DefaultInterface.GetDeviceMetrics;
end;

function  TDrvFR.GetECRStatus: Integer;
begin
  Result := DefaultInterface.GetECRStatus;
end;

function  TDrvFR.GetShortECRStatus: Integer;
begin
  Result := DefaultInterface.GetShortECRStatus;
end;

function  TDrvFR.GetExchangeParam: Integer;
begin
  Result := DefaultInterface.GetExchangeParam;
end;

function  TDrvFR.GetFieldStruct: Integer;
begin
  Result := DefaultInterface.GetFieldStruct;
end;

function  TDrvFR.GetFiscalizationParameters: Integer;
begin
  Result := DefaultInterface.GetFiscalizationParameters;
end;

function  TDrvFR.GetFMRecordsSum: Integer;
begin
  Result := DefaultInterface.GetFMRecordsSum;
end;

function  TDrvFR.GetLastFMRecordDate: Integer;
begin
  Result := DefaultInterface.GetLastFMRecordDate;
end;

function  TDrvFR.GetLiterSumCounter: Integer;
begin
  Result := DefaultInterface.GetLiterSumCounter;
end;

function  TDrvFR.GetOperationReg: Integer;
begin
  Result := DefaultInterface.GetOperationReg;
end;

function  TDrvFR.GetParamLD: Integer;
begin
  Result := DefaultInterface.GetParamLD;
end;

function  TDrvFR.GetRangeDatesAndSessions: Integer;
begin
  Result := DefaultInterface.GetRangeDatesAndSessions;
end;

function  TDrvFR.GetRKStatus: Integer;
begin
  Result := DefaultInterface.GetRKStatus;
end;

function  TDrvFR.GetTableStruct: Integer;
begin
  Result := DefaultInterface.GetTableStruct;
end;

function  TDrvFR.InitFM: Integer;
begin
  Result := DefaultInterface.InitFM;
end;

function  TDrvFR.InitTable: Integer;
begin
  Result := DefaultInterface.InitTable;
end;

function  TDrvFR.InterruptDataStream: Integer;
begin
  Result := DefaultInterface.InterruptDataStream;
end;

function  TDrvFR.InterruptFullReport: Integer;
begin
  Result := DefaultInterface.InterruptFullReport;
end;

function  TDrvFR.InterruptTest: Integer;
begin
  Result := DefaultInterface.InterruptTest;
end;

function  TDrvFR.LaunchRK: Integer;
begin
  Result := DefaultInterface.LaunchRK;
end;

function  TDrvFR.LoadLineData: Integer;
begin
  Result := DefaultInterface.LoadLineData;
end;

function  TDrvFR.OilSale: Integer;
begin
  Result := DefaultInterface.OilSale;
end;

function  TDrvFR.OpenCheck: Integer;
begin
  Result := DefaultInterface.OpenCheck;
end;

function  TDrvFR.OpenDrawer: Integer;
begin
  Result := DefaultInterface.OpenDrawer;
end;

function  TDrvFR.PrintBarCode: Integer;
begin
  Result := DefaultInterface.PrintBarCode;
end;

function  TDrvFR.PrintDepartmentReport: Integer;
begin
  Result := DefaultInterface.PrintDepartmentReport;
end;

function  TDrvFR.PrintDocumentTitle: Integer;
begin
  Result := DefaultInterface.PrintDocumentTitle;
end;

function  TDrvFR.PrintOperationReg: Integer;
begin
  Result := DefaultInterface.PrintOperationReg;
end;

function  TDrvFR.PrintReportWithCleaning: Integer;
begin
  Result := DefaultInterface.PrintReportWithCleaning;
end;

function  TDrvFR.PrintReportWithoutCleaning: Integer;
begin
  Result := DefaultInterface.PrintReportWithoutCleaning;
end;

function  TDrvFR.PrintString: Integer;
begin
  Result := DefaultInterface.PrintString;
end;

function  TDrvFR.PrintWideString: Integer;
begin
  Result := DefaultInterface.PrintWideString;
end;

function  TDrvFR.ReadEKLZDocumentOnKPK: Integer;
begin
  Result := DefaultInterface.ReadEKLZDocumentOnKPK;
end;

function  TDrvFR.ReadEKLZSessionTotal: Integer;
begin
  Result := DefaultInterface.ReadEKLZSessionTotal;
end;

function  TDrvFR.ReadLicense: Integer;
begin
  Result := DefaultInterface.ReadLicense;
end;

function  TDrvFR.ReadTable: Integer;
begin
  Result := DefaultInterface.ReadTable;
end;

function  TDrvFR.RepeatDocument: Integer;
begin
  Result := DefaultInterface.RepeatDocument;
end;

function  TDrvFR.ResetAllTRK: Integer;
begin
  Result := DefaultInterface.ResetAllTRK;
end;

function  TDrvFR.ResetRK: Integer;
begin
  Result := DefaultInterface.ResetRK;
end;

function  TDrvFR.ResetSettings: Integer;
begin
  Result := DefaultInterface.ResetSettings;
end;

function  TDrvFR.ResetSummary: Integer;
begin
  Result := DefaultInterface.ResetSummary;
end;

function  TDrvFR.ReturnBuy: Integer;
begin
  Result := DefaultInterface.ReturnBuy;
end;

function  TDrvFR.ReturnBuyEx: Integer;
begin
  Result := DefaultInterface.ReturnBuyEx;
end;

function  TDrvFR.ReturnSale: Integer;
begin
  Result := DefaultInterface.ReturnSale;
end;

function  TDrvFR.ReturnSaleEx: Integer;
begin
  Result := DefaultInterface.ReturnSaleEx;
end;

function  TDrvFR.Sale: Integer;
begin
  Result := DefaultInterface.Sale;
end;

function  TDrvFR.SaleEx: Integer;
begin
  Result := DefaultInterface.SaleEx;
end;

function  TDrvFR.SetActiveLD: Integer;
begin
  Result := DefaultInterface.SetActiveLD;
end;

function  TDrvFR.SetDate: Integer;
begin
  Result := DefaultInterface.SetDate;
end;

function  TDrvFR.SetDozeInMilliliters: Integer;
begin
  Result := DefaultInterface.SetDozeInMilliliters;
end;

function  TDrvFR.SetDozeInMoney: Integer;
begin
  Result := DefaultInterface.SetDozeInMoney;
end;

function  TDrvFR.SetExchangeParam: Integer;
begin
  Result := DefaultInterface.SetExchangeParam;
end;

function  TDrvFR.SetParamLD: Integer;
begin
  Result := DefaultInterface.SetParamLD;
end;

function  TDrvFR.SetPointPosition: Integer;
begin
  Result := DefaultInterface.SetPointPosition;
end;

function  TDrvFR.SetRKParameters: Integer;
begin
  Result := DefaultInterface.SetRKParameters;
end;

function  TDrvFR.SetSerialNumber: Integer;
begin
  Result := DefaultInterface.SetSerialNumber;
end;

function  TDrvFR.SetTime: Integer;
begin
  Result := DefaultInterface.SetTime;
end;

function  TDrvFR.ShowProperties: Integer;
begin
  Result := DefaultInterface.ShowProperties;
end;

function  TDrvFR.StopEKLZDocumentPrinting: Integer;
begin
  Result := DefaultInterface.StopEKLZDocumentPrinting;
end;

function  TDrvFR.StopRK: Integer;
begin
  Result := DefaultInterface.StopRK;
end;

function  TDrvFR.Storno: Integer;
begin
  Result := DefaultInterface.Storno;
end;

function  TDrvFR.StornoEx: Integer;
begin
  Result := DefaultInterface.StornoEx;
end;

function  TDrvFR.StornoCharge: Integer;
begin
  Result := DefaultInterface.StornoCharge;
end;

function  TDrvFR.StornoDiscount: Integer;
begin
  Result := DefaultInterface.StornoDiscount;
end;

function  TDrvFR.SummOilCheck: Integer;
begin
  Result := DefaultInterface.SummOilCheck;
end;

function  TDrvFR.SysAdminCancelCheck: Integer;
begin
  Result := DefaultInterface.SysAdminCancelCheck;
end;

function  TDrvFR.Test: Integer;
begin
  Result := DefaultInterface.Test;
end;

function  TDrvFR.WriteLicense: Integer;
begin
  Result := DefaultInterface.WriteLicense;
end;

function  TDrvFR.WriteTable: Integer;
begin
  Result := DefaultInterface.WriteTable;
end;

function  TDrvFR.PrintStringWithFont: Integer;
begin
  Result := DefaultInterface.PrintStringWithFont;
end;

function  TDrvFR.EKLZActivizationResult: Integer;
begin
  Result := DefaultInterface.EKLZActivizationResult;
end;

function  TDrvFR.EKLZActivization: Integer;
begin
  Result := DefaultInterface.EKLZActivization;
end;

function  TDrvFR.CloseEKLZArchive: Integer;
begin
  Result := DefaultInterface.CloseEKLZArchive;
end;

function  TDrvFR.GetEKLZSerialNumber: Integer;
begin
  Result := DefaultInterface.GetEKLZSerialNumber;
end;

function  TDrvFR.EKLZInterrupt: Integer;
begin
  Result := DefaultInterface.EKLZInterrupt;
end;

function  TDrvFR.GetEKLZCode1Report: Integer;
begin
  Result := DefaultInterface.GetEKLZCode1Report;
end;

function  TDrvFR.GetEKLZCode2Report: Integer;
begin
  Result := DefaultInterface.GetEKLZCode2Report;
end;

function  TDrvFR.TestEKLZArchiveIntegrity: Integer;
begin
  Result := DefaultInterface.TestEKLZArchiveIntegrity;
end;

function  TDrvFR.GetEKLZVersion: Integer;
begin
  Result := DefaultInterface.GetEKLZVersion;
end;

function  TDrvFR.InitEKLZArchive: Integer;
begin
  Result := DefaultInterface.InitEKLZArchive;
end;

function  TDrvFR.GetEKLZData: Integer;
begin
  Result := DefaultInterface.GetEKLZData;
end;

function  TDrvFR.GetEKLZJournal: Integer;
begin
  Result := DefaultInterface.GetEKLZJournal;
end;

function  TDrvFR.GetEKLZDocument: Integer;
begin
  Result := DefaultInterface.GetEKLZDocument;
end;

function  TDrvFR.GetEKLZDepartmentReportInDatesRange: Integer;
begin
  Result := DefaultInterface.GetEKLZDepartmentReportInDatesRange;
end;

function  TDrvFR.GetEKLZDepartmentReportInSessionsRange: Integer;
begin
  Result := DefaultInterface.GetEKLZDepartmentReportInSessionsRange;
end;

function  TDrvFR.GetEKLZSessionReportInDatesRange: Integer;
begin
  Result := DefaultInterface.GetEKLZSessionReportInDatesRange;
end;

function  TDrvFR.GetEKLZSessionReportInSessionsRange: Integer;
begin
  Result := DefaultInterface.GetEKLZSessionReportInSessionsRange;
end;

function  TDrvFR.GetEKLZSessionTotal: Integer;
begin
  Result := DefaultInterface.GetEKLZSessionTotal;
end;

function  TDrvFR.GetEKLZActivizationResult: Integer;
begin
  Result := DefaultInterface.GetEKLZActivizationResult;
end;

function  TDrvFR.SetEKLZResultCode: Integer;
begin
  Result := DefaultInterface.SetEKLZResultCode;
end;

function  TDrvFR.OpenFiscalSlipDocument: Integer;
begin
  Result := DefaultInterface.OpenFiscalSlipDocument;
end;

function  TDrvFR.OpenStandardFiscalSlipDocument: Integer;
begin
  Result := DefaultInterface.OpenStandardFiscalSlipDocument;
end;

function  TDrvFR.RegistrationOnSlipDocument: Integer;
begin
  Result := DefaultInterface.RegistrationOnSlipDocument;
end;

function  TDrvFR.StandardRegistrationOnSlipDocument: Integer;
begin
  Result := DefaultInterface.StandardRegistrationOnSlipDocument;
end;

function  TDrvFR.ChargeOnSlipDocument: Integer;
begin
  Result := DefaultInterface.ChargeOnSlipDocument;
end;

function  TDrvFR.StandardChargeOnSlipDocument: Integer;
begin
  Result := DefaultInterface.StandardChargeOnSlipDocument;
end;

function  TDrvFR.CloseCheckOnSlipDocument: Integer;
begin
  Result := DefaultInterface.CloseCheckOnSlipDocument;
end;

function  TDrvFR.StandardCloseCheckOnSlipDocument: Integer;
begin
  Result := DefaultInterface.StandardCloseCheckOnSlipDocument;
end;

function  TDrvFR.ConfigureSlipDocument: Integer;
begin
  Result := DefaultInterface.ConfigureSlipDocument;
end;

function  TDrvFR.ConfigureStandardSlipDocument: Integer;
begin
  Result := DefaultInterface.ConfigureStandardSlipDocument;
end;

function  TDrvFR.FillSlipDocumentWithUnfiscalInfo: Integer;
begin
  Result := DefaultInterface.FillSlipDocumentWithUnfiscalInfo;
end;

function  TDrvFR.ClearSlipDocumentBufferString: Integer;
begin
  Result := DefaultInterface.ClearSlipDocumentBufferString;
end;

function  TDrvFR.ClearSlipDocumentBuffer: Integer;
begin
  Result := DefaultInterface.ClearSlipDocumentBuffer;
end;

function  TDrvFR.PrintSlipDocument: Integer;
begin
  Result := DefaultInterface.PrintSlipDocument;
end;

function  TDrvFR.DiscountOnSlipDocument: Integer;
begin
  Result := DefaultInterface.DiscountOnSlipDocument;
end;

function  TDrvFR.StandardDiscountOnSlipDocument: Integer;
begin
  Result := DefaultInterface.StandardDiscountOnSlipDocument;
end;

function  TDrvFR.EjectSlipDocument: Integer;
begin
  Result := DefaultInterface.EjectSlipDocument;
end;

function  TDrvFR.LoadLineDataEx: Integer;
begin
  Result := DefaultInterface.LoadLineDataEx;
end;

function  TDrvFR.DrawEx: Integer;
begin
  Result := DefaultInterface.DrawEx;
end;

function  TDrvFR.ConfigureGeneralSlipDocument: Integer;
begin
  Result := DefaultInterface.ConfigureGeneralSlipDocument;
end;

function  TDrvFR.WideLoadLineData: Integer;
begin
  Result := DefaultInterface.WideLoadLineData;
end;

function  TDrvFR.PrintTaxReport: Integer;
begin
  Result := DefaultInterface.PrintTaxReport;
end;

function  TDrvFR.GetLongSerialNumberAndLongRNM: Integer;
begin
  Result := DefaultInterface.GetLongSerialNumberAndLongRNM;
end;

function  TDrvFR.SetLongSerialNumber: Integer;
begin
  Result := DefaultInterface.SetLongSerialNumber;
end;

function  TDrvFR.FiscalizationWithLongRNM: Integer;
begin
  Result := DefaultInterface.FiscalizationWithLongRNM;
end;

function  TDrvFR.Connect2: Integer;
begin
  Result := DefaultInterface.Connect2;
end;

function  TDrvFR.GetECRPrinterStatus: Integer;
begin
  Result := DefaultInterface.GetECRPrinterStatus;
end;

function  TDrvFR.ServerConnect: Integer;
begin
  Result := DefaultInterface.ServerConnect;
end;

function  TDrvFR.ServerDisconnect: Integer;
begin
  Result := DefaultInterface.ServerDisconnect;
end;

function  TDrvFR.LockPort: Integer;
begin
  Result := DefaultInterface.LockPort;
end;

function  TDrvFR.UnlockPort: Integer;
begin
  Result := DefaultInterface.UnlockPort;
end;

function  TDrvFR.AdminUnlockPort: Integer;
begin
  Result := DefaultInterface.AdminUnlockPort;
end;

function  TDrvFR.AdminUnlockPorts: Integer;
begin
  Result := DefaultInterface.AdminUnlockPorts;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TDrvFR]);
end;

end.

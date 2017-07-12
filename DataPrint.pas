unit DataPrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Data1,
  Db, IBCustomDataSet, IBQuery, IBDatabase;

type
  TDataModule2 = class(TDataModule)
    PrintTransaction: TIBTransaction;
    PrintPNS: TIBQuery;
    PrintPNSPNS_ID: TIntegerField;
    PrintPNSTW_ART: TIntegerField;
    PrintPNSTW_NAM: TIBStringField;
    PrintPNSED_SHORT: TIBStringField;
    PrintPNSTW_KOL: TFloatField;
    PrintPNSTWZ_MONEY: TFloatField;
    PrintPNSTWZ_SUMM: TFloatField;
    PrintPNSTWR_MONEY: TFloatField;
    PrintPNSTWR_SUMM: TFloatField;
    PrintPNSSERT_NUM: TIBStringField;
    PrintPNSSERT_DATE: TDateTimeField;
    PrintPNSSERT_WHO: TIBStringField;
    PrintPN: TIBQuery;
    PrintPNPOST_FULL: TIBStringField;
    PrintPNFRM_FULL: TIBStringField;
    PrintPNSKL_FULL: TIBStringField;
    PrintPNPN_NUM_FULL: TIBStringField;
    PrintPNPN_OSN: TIBStringField;
    PrintPNPN_WHO: TIBStringField;
    PrintPNUS_FULL: TIBStringField;
    PrintPNPN_DATE: TDateTimeField;
    PrintSTS: TIBQuery;
    PrintST: TIBQuery;
    PrintSTSSTS_ID: TIntegerField;
    PrintSTSTW_ART: TIntegerField;
    PrintSTSTW_NAM: TIBStringField;
    PrintSTSED_SHORT: TIBStringField;
    PrintSTSTW_KOL: TFloatField;
    PrintSTSTW_MONEY: TFloatField;
    PrintSTSTW_SUMM: TFloatField;
    PrintSTST_TEXT: TIBStringField;
    PrintSTST_NUM_FULL: TIBStringField;
    PrintSTFRM_FULL: TIBStringField;
    PrintSTFRM_ADR: TIBStringField;
    PrintSTFRM_REKW: TIBStringField;
    PrintSTFRM_TEL: TIBStringField;
    PrintSTKLN_FULL: TIBStringField;
    PrintSTKLN_ADR: TIBStringField;
    PrintSTKLN_REKW: TIBStringField;
    PrintSTKLN_TEL: TIBStringField;
    PrintSTVALUTA_FULL: TIBStringField;
    PrintSTUS_FULL: TIBStringField;
    PrintSTKLN_DIR: TIBStringField;
    PrintSTKLN_GB: TIBStringField;
    PrintSTVALUTA_AUTO1: TIBStringField;
    PrintSTVALUTA_AUTO2: TIBStringField;
    PrintSTVALUTA_AUTO3: TIBStringField;
    PrintSTVALUTA_AUTO11: TIBStringField;
    PrintSTVALUTA_AUTO12: TIBStringField;
    PrintSTVALUTA_AUTO13: TIBStringField;
    PrintSTST_SKID: TFloatField;
    PrintRNS: TIBQuery;
    PrintRN: TIBQuery;
    PrintSPISS: TIBQuery;
    PrintSPIS: TIBQuery;
    PrintSPISSSPISS_ID: TIntegerField;
    PrintSPISSTW_ART: TIntegerField;
    PrintSPISSTW_NAM: TIBStringField;
    PrintSPISSED_SHORT: TIBStringField;
    PrintSPISSTW_KOL: TFloatField;
    PrintSPISSTW_MONEY: TFloatField;
    PrintSPISSTW_SUMM: TFloatField;
    PrintSPISSPIS_NUM_FULL: TIBStringField;
    PrintSPISUS_FULL: TIBStringField;
    PrintSPISSPISVID_NAM: TIBStringField;
    PrintSPISSKL_FULL: TIBStringField;
    PrintSPISSPIS_WHO: TIBStringField;
    PrintSPISSPIS_OSN: TIBStringField;
    PrintSPISFRM_FULL: TIBStringField;
    PrintPERS: TIBQuery;
    PrintPER: TIBQuery;
    PrintPERSPERS_ID: TIntegerField;
    PrintPERSTW_ART: TIntegerField;
    PrintPERSTW_NAM: TIBStringField;
    PrintPERSED_SHORT: TIBStringField;
    PrintPERSTW_KOL: TFloatField;
    PrintPERSTW_MONEY: TFloatField;
    PrintPERSTW_SUMM: TFloatField;
    PrintPERSSERT_NUM: TIBStringField;
    PrintPERSSERT_DATE: TDateTimeField;
    PrintPERSSERT_WHO: TIBStringField;
    PrintPERFRM_FULL: TIBStringField;
    PrintPERSKL_FROM_FULL: TIBStringField;
    PrintPERSKL_TO_FULL: TIBStringField;
    PrintPERPER_NUM_FULL: TIBStringField;
    PrintPERPER_OSN: TIBStringField;
    PrintPERPER_WHO: TIBStringField;
    PrintPERUS_FULL: TIBStringField;
    PrintPERPER_DATE: TDateTimeField;
    PrintKKMS: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    PrintKKM: TIBQuery;
    PrintKKMKKM_TEXT: TIBStringField;
    PrintKKMRN_DATE: TDateTimeField;
    PrintKKMRN_NUM: TIntegerField;
    PrintKKMSKL_FULL: TIBStringField;
    PrintKKMUS_FULL: TIBStringField;
    PrintGarant: TIBQuery;
    PrintGarantGARANT_TEXT: TIBStringField;
    PrintGarantGARANT_NUM_FULL: TIBStringField;
    PrintGarantSKL_FULL: TIBStringField;
    PrintGarantSKL_ADR: TIBStringField;
    PrintGarantSKL_TEL: TIBStringField;
    PrintGarantTW_NAM: TIBStringField;
    PrintGarantTW_NUM: TIBStringField;
    PrintGarantGARANT_MES: TSmallintField;
    PrintGarantNAKL: TIBStringField;
    PrintGarantGARANT_DT: TDateTimeField;
    PrintGarantUS_FULL: TIBStringField;
    PrintGarantTW_MONEY: TFloatField;
    MarketKonk: TIBQuery;
    MarketKonkTW_ART: TIntegerField;
    MarketKonkTW_NAM: TIBStringField;
    MarketKonkTWTREE_FULL: TIBStringField;
    MarketKonkED_SHORT: TIBStringField;
    MarketKonkTW_MONEY: TFloatField;
    MarketKonkTW_MONEYD: TFloatField;
    MarketKonkMTW_MONEY: TFloatField;
    MarketKonkMTW_MONEYD: TFloatField;
    MarketKonkMARKET_DATE: TDateTimeField;
    MarketKonkMARKET_PRIM: TIBStringField;
    MarketKonkKLN_FULL: TIBStringField;
    MarketKonkUS_FULL: TIBStringField;
    MarketKonkTW_OST: TFloatField;
    MarketOld: TIBQuery;
    MarketOldTW_ART: TIntegerField;
    MarketOldTW_NAM: TIBStringField;
    MarketOldED_SHORT: TIBStringField;
    MarketOldTWTREE_FULL: TIBStringField;
    MarketOldTW_MONEY: TFloatField;
    MarketOldTW_MONEYD: TFloatField;
    MarketOldLAST_DATE: TDateTimeField;
    Pribyl: TIBQuery;
    PribylTW_ID: TIntegerField;
    PribylTW_ART: TIntegerField;
    PribylTW_NAM: TIBStringField;
    PribylTWTREE_FULL: TIBStringField;
    PribylED_SHORT: TIBStringField;
    PribylTW_MROZ: TFloatField;
    PribylOST1: TFloatField;
    PribylOST1_SUMMZ: TFloatField;
    PribylOST1_SUMMR: TFloatField;
    PribylPOST: TFloatField;
    PribylPOST_SUMMZ: TFloatField;
    PribylPOST_SUMMR: TFloatField;
    PribylRASH: TFloatField;
    PribylRASH_SUMMZ: TFloatField;
    PribylRASH_SUMMR: TFloatField;
    PribylSPIS: TFloatField;
    PribylSPIS_SUMMZ: TFloatField;
    PribylSPIS_SUMMR: TFloatField;
    PribylOST2: TFloatField;
    PribylOST2_SUMMZ: TFloatField;
    PribylOST2_SUMMR: TFloatField;
    PribylPRIBYL: TFloatField;
    PribylUBYT: TFloatField;
    ReportCard: TIBQuery;
    ReportCardCARD_ID: TIntegerField;
    ReportCardCARD_NUM: TIntegerField;
    ReportCardCARD_DATE: TDateTimeField;
    ReportCardCARD_OSN: TIBStringField;
    ReportCardFIRST_SUMM: TFloatField;
    ReportCardPERIOD_SUMM: TFloatField;
    ReportCardPERIOD_COUNT: TFloatField;
    ReportCardPERIOD_SKID: TFloatField;
    ReportCardCURRENT_SUMM: TFloatField;
    ReportCardCURRENT_SKID: TFloatField;
    ReportCardKLN_FULL: TIBStringField;
    ReportPostList: TIBQuery;
    ReportPostOst: TIBQuery;
    ReportPostOstTW_ID: TIntegerField;
    ReportPostOstTW_ART: TIntegerField;
    ReportPostOstTW_NAM: TIBStringField;
    ReportPostOstTW_MROZ: TFloatField;
    ReportPostOstED_SHORT: TIBStringField;
    ReportPostOstPN_FULL_NUM: TIBStringField;
    ReportPostOstPN_COLOR: TIntegerField;
    ReportPostOstPN_DATE: TDateTimeField;
    ReportPostOstPNVID_NAM: TIBStringField;
    ReportPostOstTW_OST: TFloatField;
    ReportPostOstTW_MONEY: TFloatField;
    ReportPostOstPN_OSN: TIBStringField;
    ReportPostOstPN_ID: TIntegerField;
    ReportPostOstUS_FULL: TIBStringField;
    ReportPostOstOST_SUMMZ: TFloatField;
    ReportPostOstOST_SUMMR: TFloatField;
    Query_ost: TIBQuery;
    Query_ostOST1: TFloatField;
    Query_ostOST2: TFloatField;
    Query_ostSKL_ID: TIntegerField;
    Query_ostSKL_FULL: TIBStringField;
    DsQuery_OST: TDataSource;
    TransactionTwDetal: TIBTransaction;
    DsQuery_SERT: TDataSource;
    Query_Sert: TIBQuery;
    Query_SertSERT_NUM: TIBStringField;
    Query_SertSERT_DATE: TDateTimeField;
    Query_SertSERT_WHO: TIBStringField;
    Query_Unprov_PN: TIBQuery;
    IntegerField3: TIntegerField;
    IBStringField3: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IBStringField4: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    FloatField4: TFloatField;
    IBStringField9: TIBStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    Query_Unprov_PNPOST_OSN: TIBStringField;
    DsQuery_Unprov_PN: TDataSource;
    DsQuery_Unprov_RN: TDataSource;
    Query_Unprov_RN: TIBQuery;
    IntegerField6: TIntegerField;
    IBStringField10: TIBStringField;
    DateTimeField3: TDateTimeField;
    IBStringField11: TIBStringField;
    IntegerField8: TIntegerField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    FloatField14: TFloatField;
    IBStringField15: TIBStringField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    IBStringField16: TIBStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    Query_Unprov_RNDOC_TYP: TIntegerField;
    Query_Move: TIBQuery;
    Query_MoveMOVE_ID: TIntegerField;
    Query_MoveMOVE_NUM_FULL: TIBStringField;
    Query_MoveMOVE_DATE: TDateTimeField;
    Query_MoveSKL_SHORT: TIBStringField;
    Query_MoveMOVE_COLOR: TIntegerField;
    Query_MoveUS_FULL: TIBStringField;
    Query_MoveMOVEVID_NAM: TIBStringField;
    Query_MoveKLN_ORG: TIBStringField;
    Query_MoveMOVE_KURS: TFloatField;
    Query_MovePOST_KOL: TFloatField;
    Query_MoveREAL_KOL: TFloatField;
    Query_MoveTW_MONEY: TFloatField;
    Query_MoveTW_SUMM: TFloatField;
    Query_MoveMOVE_OSN: TIBStringField;
    Query_MoveTW_MONEYD: TFloatField;
    Query_MoveTW_SUMMD: TFloatField;
    Query_MoveDOC_TYP: TIntegerField;
    DsQuery_MOVE: TDataSource;
    DsQuery_POST: TDataSource;
    Query_POST: TIBQuery;
    Query_POSTPN_ID: TIntegerField;
    Query_POSTPN_NUM_FULL: TIBStringField;
    Query_POSTPN_DATE: TDateTimeField;
    Query_POSTPN_DATE_OPL: TDateTimeField;
    Query_POSTSKL_SHORT: TIBStringField;
    Query_POSTPN_COLOR: TIntegerField;
    Query_POSTUS_FULL: TIBStringField;
    Query_POSTPNVID_NAM: TIBStringField;
    Query_POSTOWNER_FULL: TIBStringField;
    Query_POSTKLN_ORG: TIBStringField;
    Query_POSTPN_KURS: TFloatField;
    Query_POSTKLN_PREFIX: TIBStringField;
    Query_POSTTW_KOL: TFloatField;
    Query_POSTTW_MONEY: TFloatField;
    Query_POSTTW_MONEY_S: TFloatField;
    Query_POSTTW_SUMM: TFloatField;
    Query_POSTTW_SUMM_S: TFloatField;
    Query_POSTTW_MONEYD: TFloatField;
    Query_POSTTW_MONEYD_S: TFloatField;
    Query_POSTTW_SUMMD: TFloatField;
    Query_POSTTW_SUMMD_S: TFloatField;
    Query_POSTPOST_OSN: TIBStringField;
    Query_Realiz: TIBQuery;
    Query_RealizREAL_ID: TIntegerField;
    Query_RealizREAL_NUM_FULL: TIBStringField;
    Query_RealizREAL_DATE: TDateTimeField;
    Query_RealizSKL_SHORT: TIBStringField;
    Query_RealizREAL_COLOR: TIntegerField;
    Query_RealizUS_FULL: TIBStringField;
    Query_RealizREALVID_NAM: TIBStringField;
    Query_RealizKLN_ORG: TIBStringField;
    Query_RealizREAL_KURS: TFloatField;
    Query_RealizKLN_PREFIX: TIBStringField;
    Query_RealizTW_KOL: TFloatField;
    Query_RealizTW_MONEY: TFloatField;
    Query_RealizTW_SUMM: TFloatField;
    Query_RealizREAL_OSN: TIBStringField;
    Query_RealizTW_MONEYD: TFloatField;
    Query_RealizTW_SUMMD: TFloatField;
    Query_RealizDOC_TYP: TIntegerField;
    DsQuery_Realiz: TDataSource;
    DsQuery_Unprov_PER: TDataSource;
    Query_Unprov_PER: TIBQuery;
    Query_Unprov_PERPER_ID: TIntegerField;
    Query_Unprov_PERPER_NUM_FULL: TIBStringField;
    Query_Unprov_PERPER_DATE: TDateTimeField;
    Query_Unprov_PERSKL_FROM: TIBStringField;
    Query_Unprov_PERSKL_TO: TIBStringField;
    Query_Unprov_PERPER_COLOR: TIntegerField;
    Query_Unprov_PERUS_FULL: TIBStringField;
    Query_Unprov_PERTW_KOL: TFloatField;
    Query_Unprov_PERPER_OSN: TIBStringField;
    Query_REMON: TIBQuery;
    Ds_REMON: TDataSource;
    QrPostMove: TIBQuery;
    QrPostMoveTW_ART: TIntegerField;
    QrPostMoveTW_NAM: TIBStringField;
    QrPostMoveDOC_FULL_NUM: TIBStringField;
    QrPostMoveDOC_DATE: TDateTimeField;
    QrPostMoveDOC_VID: TIBStringField;
    QrPostMoveED_SHORT: TIBStringField;
    QrPostMoveTW_MROZ: TFloatField;
    QrPostMoveTW_KOL: TFloatField;
    QrPostMoveTW_MONEY: TFloatField;
    QrPostMoveKLN_FULL: TIBStringField;
    QrPostMoveUS_FULL: TIBStringField;
    QrPostMoveTW_SUMMR: TFloatField;
    QrPostMoveTW_SUMMZ: TFloatField;
    QrPostMoveSUMM_ACTIV: TFloatField;
    QrPostMoveDOC_DATE_FULL: TStringField;
    PrintSTFAKTS: TIBQuery;
    PrintSTFAKT: TIBQuery;
    PrintSTFAKTPOST_FULL: TIBStringField;
    PrintSTFAKTPOST_ADR: TIBStringField;
    PrintSTFAKTPOST_REKW: TIBStringField;
    PrintSTFAKTPOST_TEL: TIBStringField;
    PrintSTFAKTKLN_FULL: TIBStringField;
    PrintSTFAKTKLN_ADR: TIBStringField;
    PrintSTFAKTKLN_REKW: TIBStringField;
    PrintSTFAKTKLN_TEL: TIBStringField;
    PrintSTFAKTSTFAKT_FULL_NUM: TIBStringField;
    PrintSTFAKTSTFAKT_DATE: TDateTimeField;
    PrintSTFAKTUS_FULL: TIBStringField;
    PrintSTFAKTSTW_ID: TIntegerField;
    PrintSTFAKTSTW_ART: TIntegerField;
    PrintSTFAKTSTW_NAM: TIBStringField;
    PrintSTFAKTSED_SHORT: TIBStringField;
    PrintSTFAKTSTW_KOL: TFloatField;
    PrintSTFAKTSTW_MONEY: TFloatField;
    PrintSTFAKTSTW_NDS: TFloatField;
    PrintSTFAKTSTW_SUMM: TFloatField;
    PrintSTFAKTSTW_SUMM_NDS: TFloatField;
    PrintSTFAKTSTW_SUMM_ALL: TFloatField;
    PrintSTFAKTSERR: TIBStringField;
    PrintSTFAKTPOST_DIR: TIBStringField;
    PrintSTFAKTPOST_GB: TIBStringField;
    PrintSTFAKTSTFAKT_DOCS: TIBStringField;
    ReportSkid: TIBQuery;
    ReportSkidRN_NUM_FULL: TIBStringField;
    ReportSkidRN_ID: TIntegerField;
    ReportSkidTW_ID: TIntegerField;
    ReportSkidTW_ART: TIntegerField;
    ReportSkidTW_NAM: TIBStringField;
    ReportSkidED_SHORT: TIBStringField;
    ReportSkidSKL_FULL: TIBStringField;
    ReportSkidTW_KOL: TFloatField;
    ReportSkidTW_MONEY: TFloatField;
    ReportSkidTW_MONEY_OK: TFloatField;
    ReportSkidTW_SKID: TFloatField;
    ReportSkidTW_SKIDDOLL: TFloatField;
    ReportSkidRN_SKID: TFloatField;
    ReportSkidALL_SKID: TFloatField;
    ReportSkidSKID_MONEY: TFloatField;
    ReportSkidTW_SKIDTXT: TIBStringField;
    ReportSkidRN_SKIDTXT: TIBStringField;
    ReportSkidUS_FULL: TIBStringField;
    PrintSTFAKTSTW_TAM: TIBStringField;
    PrintSTFAKTSTW_LAND: TIBStringField;
    PrintMail: TIBQuery;
    PrintMailMAILVID_NAM: TIBStringField;
    PrintMailFROM_TXT: TIBStringField;
    PrintMailTO_TXT: TIBStringField;
    PrintMailMAIL_TEM: TIBStringField;
    PrintMailMAIL_DATE: TDateTimeField;
    PrintMailMAIL_NUM: TIntegerField;
    PrintMailMAIL_TXT: TIBStringField;
    PrintMailMAIL_ADD: TIBStringField;
    PrintMailMAIL_CONF: TIBStringField;
    PrintMailMAIL_REPLY: TIBStringField;
    PrintMails: TIBQuery;
    PrintRemon: TIBQuery;
    PrintRemons: TIBQuery;
    PrintRemonFRM_FULL: TIBStringField;
    PrintRemonREMON_NUM_FULL: TIBStringField;
    PrintRemonSKL_FULL: TIBStringField;
    PrintRemonUS_FULL: TIBStringField;
    PrintRemonsTW_ID: TIntegerField;
    PrintRemonsTW_ART: TIntegerField;
    PrintRemonsTW_NAM: TIBStringField;
    PrintRemonsED_SHORT: TIBStringField;
    PrintRemonsTW_KOL: TFloatField;
    PrintRemonsOLD_MROZ: TFloatField;
    PrintRemonsNEW_MROZ: TFloatField;
    PrintRemonsREMONS_PRIM: TIBStringField;
    PrintMail2: TIBQuery;
    PrintMails2: TIBQuery;
    PrintMail2FRM_FULL: TIBStringField;
    PrintMail2FRM_SHORT: TIBStringField;
    PrintMail2FRM_TEL: TIBStringField;
    PrintMail2PRIM1: TIBStringField;
    PrintMail2MAIL_TXT: TIBStringField;
    PrintMail2MAIL_FULL_NUM: TIBStringField;
    PrintMail2MAIL_DATE: TDateTimeField;
    PrintMail2VALUTA_FULL: TIBStringField;
    PrintMail2MAIL_OSN: TIBStringField;
    PrintMail2POST_FULL: TIBStringField;
    PrintMail2POST_ADD: TIBStringField;
    PrintMail2TITLE1: TIBStringField;
    PrintMail2TITLE2: TIBStringField;
    PrintMail2TITLE3: TIBStringField;
    PrintMail2TITLE4: TIBStringField;
    PrintMail2TITLE5: TIBStringField;
    PrintMail2TITLE6: TIBStringField;
    PrintMail2TITLE7: TIBStringField;
    PrintMail2TITLE8: TIBStringField;
    PrintMail2TITLE9: TIBStringField;
    PrintMail2TITLE10: TIBStringField;
    PrintMail2TITLE11: TIBStringField;
    PrintMail2TITLE12: TIBStringField;
    PrintMails2TW_ART: TIntegerField;
    PrintMails2TW_NAM: TIBStringField;
    PrintMails2ED_SHORT: TIBStringField;
    PrintMails2TW_KOL: TFloatField;
    PrintMails2TW_MONEY: TFloatField;
    PrintMails2VALUTA_SHORT: TIBStringField;
    PrintMails2TW_SUMM: TFloatField;
    PrintMails2TW_PERCENT: TFloatField;
    PrintMails2NEW_MROZ: TFloatField;
    PrintMails2PRIBYL: TFloatField;
    PrintMails2MOVE1: TIntegerField;
    PrintMails2MOVE2: TIntegerField;
    PrintMails2MOVE3: TIntegerField;
    PrintMails2MOVE4: TIntegerField;
    PrintMails2MOVE5: TIntegerField;
    PrintMails2MOVE6: TIntegerField;
    PrintMails2MOVE7: TIntegerField;
    PrintMails2MOVE8: TIntegerField;
    PrintMails2MOVE9: TIntegerField;
    PrintMails2MOVE10: TIntegerField;
    PrintMails2MOVE11: TIntegerField;
    PrintMails2MOVE12: TIntegerField;
    PrintMail2FROM_TXT: TIBStringField;
    PrintMails2MAILS_PRIM: TIBStringField;
    DsRNS: TDataSource;
    DsRN: TDataSource;
    PrintMailsMAILS_ID: TIntegerField;
    PrintMailsTW_ID: TIntegerField;
    PrintMailsTW_ART: TIntegerField;
    PrintMailsTW_NAM: TIBStringField;
    PrintMailsTWKTG_ID: TIntegerField;
    PrintMailsVALUTA_ID: TIntegerField;
    PrintMailsTW_MROZ: TFloatField;
    PrintMailsTW_COLOR: TIntegerField;
    PrintMailsED_SHORT: TIBStringField;
    PrintMailsTW_RASPR: TIBStringField;
    PrintMailsOST: TFloatField;
    PrintMailsTW_KOL: TFloatField;
    PrintMailsTW_KOL_OLD: TFloatField;
    PrintMailsMONEY_ZAK: TFloatField;
    PrintMailsNEW_MROZ: TFloatField;
    PrintMailsMAILS_SPEED: TFloatField;
    PrintMailsMAILS_PRIM: TIBStringField;
    PrintMailsOLD_MZAK: TFloatField;
    PrintMailsTW_PERCENT: TFloatField;
    PrintMailsVALUTA_SHORT: TIBStringField;
    PrintMailsRASP1: TIntegerField;
    PrintMailsRASP2: TIntegerField;
    PrintMailsRASP3: TIntegerField;
    PrintMailsRASP4: TIntegerField;
    PrintMailsRASP5: TIntegerField;
    PrintMailsRASP6: TIntegerField;
    PrintMailsRASP7: TIntegerField;
    PrintMailsRASP8: TIntegerField;
    PrintMailsRASP9: TIntegerField;
    PrintMailsRASP10: TIntegerField;
    PrintMailsRASP11: TIntegerField;
    PrintMailsRASP12: TIntegerField;
    PrintMailsMOVE1: TIntegerField;
    PrintMailsMOVE2: TIntegerField;
    PrintMailsMOVE3: TIntegerField;
    PrintMailsMOVE4: TIntegerField;
    PrintMailsMOVE5: TIntegerField;
    PrintMailsMOVE6: TIntegerField;
    PrintMailsMOVE7: TIntegerField;
    PrintMailsMOVE8: TIntegerField;
    PrintMailsMOVE9: TIntegerField;
    PrintMailsMOVE10: TIntegerField;
    PrintMailsMOVE11: TIntegerField;
    PrintMailsMOVE12: TIntegerField;
    DsMail: TDataSource;
    DsMails: TDataSource;
    DsMail2: TDataSource;
    DsMails2: TDataSource;
    DsSpis: TDataSource;
    DsSpiss: TDataSource;
    DsPer: TDataSource;
    DsPers: TDataSource;
    DsPN: TDataSource;
    DsPNS: TDataSource;
    DsKKM: TDataSource;
    DsKKMS: TDataSource;
    DsST: TDataSource;
    DsSTS: TDataSource;
    DsSTFAKT: TDataSource;
    DsSTFAKTS: TDataSource;
    DsRemon: TDataSource;
    DsRemons: TDataSource;
    PrintSPISSPIS_ID2: TIntegerField;
    PrintPERPER_ID2: TIntegerField;
    PrintPNPN_ID2: TIntegerField;
    PrintSTST_ID2: TIntegerField;
    DsGarant: TDataSource;
    DsPostList: TDataSource;
    DsPostOst: TDataSource;
    DsPostMove: TDataSource;
    ReportPostListKLN_ID: TIntegerField;
    ReportPostListKLN_FULL: TIBStringField;
    QrDetalKLN: TIBQuery;
    QrDetalKLNKLNTREE_FULL: TIBStringField;
    QrDetalKLNKLN_FAM: TIBStringField;
    QrDetalKLNKLN_NAME: TIBStringField;
    QrDetalKLNKLN_NAME2: TIBStringField;
    QrDetalKLNKLN_EMAIL: TIBStringField;
    QrDetalKLNKLN_PASS_SER: TIBStringField;
    QrDetalKLNKLN_PASS_NUM: TIBStringField;
    QrDetalKLNKLN_PASS_WYDD: TDateTimeField;
    QrDetalKLNKLN_PASS_WYD: TIBStringField;
    QrDetalKLNKLN_SVID: TIBStringField;
    QrDetalKLNKLN_ADR: TIBStringField;
    QrDetalKLNKLN_CITY: TIBStringField;
    QrDetalKLNKLN_OBLAST: TIBStringField;
    QrDetalKLNKLN_INDEX: TIBStringField;
    QrDetalKLNKLN_LAND: TIBStringField;
    QrDetalKLNKLN_TEL: TIBStringField;
    QrDetalKLNKLN_FAX: TIBStringField;
    QrDetalKLNKLN_SOTEL: TIBStringField;
    QrDetalKLNKLN_PAGER: TIBStringField;
    QrDetalKLNKLN_ORG: TIBStringField;
    QrDetalKLNKLN_DOL: TIBStringField;
    QrDetalKLNKLN_ORG_ADR: TIBStringField;
    QrDetalKLNKLN_ORG_CITY: TIBStringField;
    QrDetalKLNKLN_ORG_OBLAST: TIBStringField;
    QrDetalKLNKLN_ORG_INDEX: TIBStringField;
    QrDetalKLNKLN_ORG_LAND: TIBStringField;
    QrDetalKLNKLN_ORG_TEL: TIBStringField;
    QrDetalKLNKLN_ORG_FAX: TIBStringField;
    QrDetalKLNKLN_INN: TIBStringField;
    QrDetalKLNKLN_OK1: TIBStringField;
    QrDetalKLNKLN_OK2: TIBStringField;
    QrDetalKLNKLN_BNK: TIBStringField;
    QrDetalKLNKLN_BNKADR: TIBStringField;
    QrDetalKLNKLN_KB: TIBStringField;
    QrDetalKLNKLN_RS: TIBStringField;
    QrDetalKLNKLN_BIK: TIBStringField;
    QrDetalKLNKLN_KS: TIBStringField;
    QrDetalKLNKLN_OFFICE_ADR: TIBStringField;
    QrDetalKLNKLN_OFFICE_TEL: TIBStringField;
    QrDetalKLNKLN_OFFICE_FAX: TIBStringField;
    QrDetalKLNKLN_OFFICE_TIME: TIBStringField;
    QrDetalKLNKLN_OFFICE_BIGAUTO: TIBStringField;
    QrDetalKLNKLN_OFFICE_CONTACT: TIBStringField;
    QrDetalKLNKLN_SKL_ADR: TIBStringField;
    QrDetalKLNKLN_SKL_TEL: TIBStringField;
    QrDetalKLNKLN_SKL_FAX: TIBStringField;
    QrDetalKLNKLN_SKL_TIME: TIBStringField;
    QrDetalKLNKLN_SKL_BIGAUTO: TIBStringField;
    QrDetalKLNKLN_PASSWORD: TIBStringField;
    QrDetalKLNUSGROUP_NAM: TIBStringField;
    QrDetalKLNKLN_CLOSE: TIBStringField;
    QrDetalKLNKLN_MEN: TIBStringField;
    QrDetalKLNKLN_SKL_CONTACT: TIBStringField;
    QrDetalKLNKLN_DIR: TIBStringField;
    QrDetalKLNKLN_GB: TIBStringField;
    QrDetalKLNKLN_PREFIX: TIBStringField;
    QrDetalKLNKLN_DR: TDateTimeField;
    DsDetalKLN: TDataSource;
    QrDetalKLNKLN_PRIM: TBlobField;
    DsSkid: TDataSource;
    DsCard: TDataSource;
    DsKonk: TDataSource;
    DsOld: TDataSource;
    PrintPNSNDS: TFloatField;
    PrintPNSNDS_SUMMZ: TFloatField;
    PrintPNSNDS_SUMMR: TFloatField;
    Query_SertFIO: TIBStringField;
    PrintPsort: TIBQuery;
    PrintPsortPSORT_FULL_NUM: TIBStringField;
    PrintPsortPSORT_DATE: TDateTimeField;
    PrintPsortFRM_FULL: TIBStringField;
    PrintPsortSKL_FULL: TIBStringField;
    PrintPsortPSORT_OSN: TIBStringField;
    PrintPsortUS_FULL: TIBStringField;
    PrintPsorts: TIBQuery;
    PrintPsortsPSORTS_ID: TIntegerField;
    PrintPsortsTW_ID: TIntegerField;
    PrintPsortsTW_ART1: TIntegerField;
    PrintPsortsTW_NAM1: TIBStringField;
    PrintPsortsTW_COLOR1: TIntegerField;
    PrintPsortsED_SHORT1: TIBStringField;
    PrintPsortsTW_ID2: TIntegerField;
    PrintPsortsTW_ART2: TIntegerField;
    PrintPsortsTW_NAM2: TIBStringField;
    PrintPsortsED_SHORT2: TIBStringField;
    PrintPsortsTW_COLOR2: TIntegerField;
    PrintPsortsTW_KOL: TFloatField;
    PrintPsortsTW_OST: TFloatField;
    DsPsort: TDataSource;
    DsPsorts: TDataSource;
    PrintPsortPSORT_ID2: TIntegerField;
    PrintPsortMEN_FULL: TIBStringField;
    PrintRemonREMON_OSN: TIBStringField;
    PrintPNSTW_ID: TIntegerField;
    Query_REMONREMON_NUM_FULL: TIBStringField;
    Query_REMONREMON_DATE: TDateTimeField;
    Query_REMONSKL_FULL: TIBStringField;
    Query_REMONTW_KOL: TFloatField;
    Query_REMONED_SHORT: TIBStringField;
    Query_REMONOLD_MONEY: TFloatField;
    Query_REMONNEW_MONEY: TFloatField;
    Query_REMONREMON_OSN: TIBStringField;
    Query_REMONUS_FULL: TIBStringField;
    Query_REMONREMON_SHOP: TIBStringField;
    Query_REMONREMON_SHOP_MET: TIBStringField;
    PrintSTNDS: TFloatField;
    TransactionTWMove: TIBTransaction;
    PrintKKMFRM_FULL: TIBStringField;
    PrintKKMRN_NUM_FULL: TIBStringField;
    PrintSTFAKTGP_FULL: TIBStringField;
    PrintSTFAKTGP_ADR: TIBStringField;
    PrintSTFAKTGP_REKW: TIBStringField;
    PrintSTFAKTGP_TEL: TIBStringField;
    PrintNPZ: TIBQuery;
    DsNpz: TDataSource;
    PrintNPZNPZ_NUM_FULL: TIBStringField;
    PrintNPZFRM_FULL: TIBStringField;
    PrintNPZUS_FULL: TIBStringField;
    PrintNPZNPZ_ID2: TIntegerField;
    PrintNPZSHOP_NAME: TIBStringField;
    PrintNPZZONE_FROM_NAME: TIBStringField;
    PrintNPZZONE_TO_NAME: TIBStringField;
    PrintNPZZONE_FROM_TYPE: TIBStringField;
    PrintNPZZONE_TO_TYPE: TIBStringField;
    PrintNpzs: TIBQuery;
    DsNpzs: TDataSource;
    PrintNpzsNPZS_ID: TIntegerField;
    PrintNpzsTW_ART: TIntegerField;
    PrintNpzsTW_NAM: TIBStringField;
    PrintNpzsED_SHORT: TIBStringField;
    PrintNpzsTW_KOL: TFloatField;
    PrintNPZZONE_FROM_S: TIBStringField;
    PrintNPZZONE_TO_S: TIBStringField;
    PrintPERSPERS_WEIGHT: TFloatField;
    PrintMailsTW_WEIGHT: TFloatField;
    PrintMailsMAILS_WEIGHT: TFloatField;
    PrintMails2MAILS_WEIGHT: TFloatField;
    PrintKKMSKID_STR: TIBStringField;
    QrDetalKLNKLN_KPP: TIBStringField;
    PrintSTFAKTPOST_INN_KPP: TIBStringField;
    PrintSTFAKTKLN_INN_KPP: TIBStringField;
    PrintMailsNEW_MONEY1: TFloatField;
    PrintMailsOLD_MONEY1: TFloatField;
    PrintMailsNEW_MONEY2: TFloatField;
    PrintMailsOLD_MONEY2: TFloatField;
    PrintMailsNEW_MONEY3: TFloatField;
    PrintMailsOLD_MONEY3: TFloatField;
    PrintMails2OLD_MONEY3: TFloatField;
    PrintMails2OLD_MONEY2: TFloatField;
    PrintMails2OLD_MONEY1: TFloatField;
    PrintMails2NEW_MONEY3: TFloatField;
    PrintMails2NEW_MONEY2: TFloatField;
    PrintMails2NEW_MONEY1: TFloatField;
    PrintRemonsOLD_MONEY3: TFloatField;
    PrintRemonsOLD_MONEY2: TFloatField;
    PrintRemonsOLD_MONEY1: TFloatField;
    PrintRemonsNEW_MONEY3: TFloatField;
    PrintRemonsNEW_MONEY2: TFloatField;
    PrintRemonsNEW_MONEY1: TFloatField;
    PrintSTSTW_WEIGHT: TFloatField;
    PrintTorg12s: TIBQuery;
    PrintTorg12: TIBQuery;
    DsT12s: TDataSource;
    DsT12: TDataSource;
    PrintTorg12N_NUM_FULL: TIBStringField;
    PrintTorg12FRM_FULL: TIBStringField;
    PrintTorg12FRM_ADR: TIBStringField;
    PrintTorg12FRM_REKW: TIBStringField;
    PrintTorg12FRM_TEL: TIBStringField;
    PrintTorg12KLN_FULL: TIBStringField;
    PrintTorg12KLN_ADR: TIBStringField;
    PrintTorg12KLN_REKW: TIBStringField;
    PrintTorg12KLN_TEL: TIBStringField;
    PrintTorg12KLN_DIR: TIBStringField;
    PrintTorg12KLN_GB: TIBStringField;
    PrintTorg12SKL_FULL: TIBStringField;
    PrintTorg12RN_WHO: TIBStringField;
    PrintTorg12OSN: TIBStringField;
    PrintTorg12N_DOST: TIBStringField;
    PrintTorg12RN_ID2: TIntegerField;
    PrintTorg12FRM_ID: TIntegerField;
    PrintTorg12OTG_SKL_FULL: TIBStringField;
    PrintTorg12TYP_NDS: TIntegerField;
    PrintTorg12NDS: TIntegerField;
    PrintTorg12sNS_ID: TIntegerField;
    PrintTorg12sTW_ART: TIntegerField;
    PrintTorg12sTW_NAM: TIBStringField;
    PrintTorg12sED_SHORT: TIBStringField;
    PrintTorg12sTW_KOL: TFloatField;
    PrintTorg12sTW_MONEY: TFloatField;
    PrintTorg12sTW_SUMM: TFloatField;
    PrintTorg12sTWS_WEIGHT: TFloatField;
    PrintTorg12sNDS: TIntegerField;
    PrintTorg12PROV_US: TStringField;
    PrintTorg12DOC_SUB: TIBStringField;
    PrintMails2NEW_MONEY4: TFloatField;
    PrintMails2OLD_MONEY4: TFloatField;
    DsStFaktPN: TDataSource;
    PrintSTFAKTPN: TIBQuery;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBStringField22: TIBStringField;
    IBStringField23: TIBStringField;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    DateTimeField4: TDateTimeField;
    IBStringField26: TIBStringField;
    IBStringField27: TIBStringField;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    IBStringField30: TIBStringField;
    IBStringField31: TIBStringField;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    IBStringField34: TIBStringField;
    IBStringField35: TIBStringField;
    PrintSTFAKTSPN: TIBQuery;
    IntegerField4: TIntegerField;
    IntegerField7: TIntegerField;
    IBStringField36: TIBStringField;
    IBStringField37: TIBStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    IBStringField38: TIBStringField;
    IBStringField39: TIBStringField;
    IBStringField40: TIBStringField;
    DsStfaktsPN: TDataSource;
    PrintSTFAKTKLN_FULL_NAME: TIBStringField;
    PrintPsortsTW_KOL2: TFloatField;
    PrintSTFAKTFRM_ID: TIntegerField;
    PRINT_MH: TIBQuery;
    PRINT_MH_S: TIBQuery;
    PRINT_MHFRM_1: TIBStringField;
    PRINT_MHFRM_2: TIBStringField;
    PRINT_MHSKL_NAME: TIBStringField;
    PRINT_MHFRM_1_DIR: TIBStringField;
    PRINT_MHDOC_DATE: TDateTimeField;
    PRINT_MHDOC_NUM: TIBStringField;
    PRINT_MH_STW_ART: TIntegerField;
    PRINT_MH_STW_NAM: TIBStringField;
    PRINT_MH_SED_SHORT: TIBStringField;
    PRINT_MH_STW_KOL: TFloatField;
    PRINT_MH_STW_STORE_PRICE: TFloatField;
    PRINT_MH_STW_SUMM: TFloatField;
    PRINT_MHDOC_ID: TIntegerField;
    PrintTorg12RN_GP: TIBStringField;
    PrintSTFAKTRN_GP: TIBStringField;
    PrintSTFAKTgp_full_addr: TStringField;
    PrintTransportNakl2: TIBQuery;
    PrintTransportNakl2DOC_NUMBER: TIBStringField;
    PrintTransportNakl2DOC_DATE: TDateTimeField;
    PrintTransportNakl2KLN_NAME: TIBStringField;
    PrintTransportNakl2KLN_ADDRESS: TIBStringField;
    PrintTransportNakl2KLN_SKL_ADDRESS: TIBStringField;
    PrintTransportNakl2FRM_NAME: TIBStringField;
    PrintTransportNakl2FRM_ADDRESS: TIBStringField;
    PrintTransportNakl2FRM_SKL_ADDRESS: TIBStringField;
    PrintTransportNakl2TW_WEIGHT: TFloatField;
    DsTransportNakl2: TDataSource;
    PrintTransportNakl2TW_NAMES: TIBStringField;
    PrintSTFAKTSed_kod: TStringField;
    PRINT_MH_SSTORE_ZONE: TStringField;
    PRINT_MHBARCODE: TIBStringField;
    PRINT_MH_SWEIGHT: TFloatField;
    PRINT_MHday_number: TStringField;
    PRINT_MH_SRAZ1_1: TFloatField;
    PRINT_MH_SRAZ1_2: TFloatField;
    PRINT_MH_SRAZ1_3: TFloatField;
    PRINT_MH_SRAZ2_1: TFloatField;
    PRINT_MH_SRAZ2_2: TFloatField;
    PRINT_MH_SRAZ2_3: TFloatField;
    PRINT_MH_SRAZ3_1: TFloatField;
    PRINT_MH_SRAZ3_2: TFloatField;
    PRINT_MH_SRAZ3_3: TFloatField;
    PRINT_MH_STW_UP_KOL: TFloatField;
    PRINT_MH_STW_PALL_KOL: TFloatField;
    PRINT_MH_STW_SROK: TIntegerField;
    PRINT_MH_STW_DATE_PROIZ: TIBStringField;
    PrintSTFAKTPRINT_FOOTER: TIntegerField;
    PrintMails2NEW_MONEY6: TFloatField;
    PrintMails2NEW_MONEY7: TFloatField;
    PrintMails2NEW_MONEY8: TFloatField;
    PrintMails2OLD_MONEY6: TFloatField;
    PrintMails2OLD_MONEY7: TFloatField;
    PrintMails2OLD_MONEY8: TFloatField;
    procedure ReportPostOstCalcFields(DataSet: TDataSet);
    procedure QrPostMoveCalcFields(DataSet: TDataSet);
    procedure PrintMailsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses B_dbutils,B_utils;

{$R *.DFM}

procedure TDataModule2.ReportPostOstCalcFields(DataSet: TDataSet);
begin
   DataModule2.ReportPostOst.fieldByname('OST_SUMMZ').asfloat:=
   DataModule2.ReportPostOst.fieldByname('TW_OST').asfloat*
   DataModule2.ReportPostOst.fieldByname('TW_MONEY').asfloat;
   DataModule2.ReportPostOst.fieldByname('OST_SUMMR').asfloat:=
   DataModule2.ReportPostOst.fieldByname('TW_OST').asfloat*
   DataModule2.ReportPostOst.fieldByname('TW_MROZ').asfloat;

end;

procedure TDataModule2.QrPostMoveCalcFields(DataSet: TDataSet);
begin
     QrPostMove.fieldByname('DOC_DATE_FULL').asstring:=
     date_sokr(QrPostMove.fieldByname('DOC_DATE').asdatetime)+' '+
     timetostr(QrPostMove.fieldByname('DOC_DATE').asdatetime);
     QrPostMove.fieldByname('TW_SUMMR').asfloat:=
     QrPostMove.fieldByname('TW_KOL').asfloat*
     QrPostMove.fieldByname('TW_MROZ').asfloat;
     QrPostMove.fieldByname('TW_SUMMZ').asfloat:=
     QrPostMove.fieldByname('TW_KOL').asfloat*
     QrPostMove.fieldByname('TW_MONEY').asfloat;

end;

procedure TDataModule2.PrintMailsCalcFields(DataSet: TDataSet);
begin
     PrintMails.fieldbyname('MAILS_WEIGHT').asfloat:=PrintMails.fieldbyname('TW_WEIGHT').asfloat*PrintMails.fieldbyname('TW_KOL').asfloat;
end;

end.

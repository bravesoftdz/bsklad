
{******************************************}
{                                          }
{             FastReport v2.4              }
{              Include file                }
{                                          }
{ Copyright (c) 1998-2001 by Tzyganenko A. }
{                                          }
{******************************************}


{$B-} {- Complete Boolean Evaluation }
{$R-} {- Range-Checking }
{$V-} {- Var-String Checking }
{$T-} {- Typed @ operator }
{$X+} {- Extended syntax }
{$P+} {- Open string params }
{$J+} {- Writeable structured consts }
{$H+} {- Use long strings by default }

{$IFDEF VER90}       // Delphi 2.0
  {$DEFINE Delphi2}
{$ENDIF}

{$IFDEF VER100}      // Delphi 3.0
  {$DEFINE Delphi3}
{$ENDIF}

{$IFDEF VER120}      // Delphi 4.0
  {$DEFINE Delphi4}
{$ENDIF}

{$IFDEF VER130}      // Delphi 5.0
  {$DEFINE Delphi4}
  {$DEFINE Delphi5}
{$ENDIF}

{$IFDEF VER140}      // Delphi 6.0
  {$DEFINE Delphi4}
  {$DEFINE Delphi5}
  {$DEFINE Delphi6}
{$ENDIF}

{$IFDEF VER93}       // Borland C++ Builder 1.0
  {$DEFINE Delphi2}
{$ENDIF}

{$IFDEF VER110}      // Borland C++ Builder 3.0
  {$DEFINE Delphi3}
  {$ObjExportAll on}
{$ENDIF}

{$IFDEF VER125}      // Borland C++ Builder 4.0
  {$DEFINE Delphi4}
  {$ObjExportAll on}
{$ENDIF}

{$IFDEF VER130}      // Borland C++ Builder 5.0
 {$IFDEF BCB}
  {$ObjExportAll on}
 {$ENDIF}
{$ENDIF}


{$DEFINE BDE}

// Uncomment the following line if you still use datamanager (TfrDataStorage).
// We highly recommended to drop it and go to TfrBDE(ADO,IBX)Components -
// it works much better.
//{$DEFINE DATAMANAGER}

//-------------------------Additional components----------------------------

//------------------- TeeChart component ----------------------------
{$IFNDEF Delphi2}
  {$DEFINE TeeChartStd}
{$ENDIF}

// TeeChart component is usually not shipped with Delphi 2.
// But if you have it, uncomment the following line:
//{$DEFINE TeeChartStd}

//------------------- TeeChart Pro 4.5 component --------------------
// If you have TeeChart 4.5, uncomment the following line:
//{$DEFINE TeeChart45}

//------------------- JPEG images -----------------------------------
// JPEG images - only available in Delphi 3 and above. Adds approximately
// 100Kb to your EXE.
// If you want to show jpeg images in "Picture" object, uncomment
// the following line:
//{$DEFINE JPEG}

//------------------- "Open Picture" dialog -------------------------
// Only available in Delphi 3 and above. Adds approximately 60Kb to your EXE.
// If you want to use standard "Open picture" dialog in picture editor,
// uncomment the following line:
//{$DEFINE OPENPICTUREDLG}

//------------------- RX Rich 2.0 -----------------------------------
// RX RichEdit 2.0. You should install RX Library (2.60 or above) first.
//{$DEFINE RX}

//------------------- Interbase Objects (IBO) components ------------
// Allows using IB_Objects.
//{$DEFINE IBO}
// Also uncomment the following line if you have IB_Objects ver4.0+.
//{$DEFINE IBO4}

//------------------- Interbase Express (IBX) components ------------
// Allows using Interbase DB's in data manager with no BDE required.
//{$DEFINE IBX}

//------------------- ActiveX Data Objects (ADO) components ---------
// Allows using any DB's in data manager with no BDE required.
//{$DEFINE ADO}

//------------------- Script editor with syntax highlightning -------
// To use syntax highlightning in script editor, you should install
// mwEdit component by Martin Waldenburg first. Adds approximately 100Kb
// to your EXE.
//  (http://synedit.sourceforge.net/mwEdit/mwedit_0.92a.zip)
// Tested with mwEdit v0.92.
//{$DEFINE MWEDIT}

//------------------- Visual Query builder --------------------------
// To use visual query builder in Data manager, you should install
// Open QBuilder component set by Sergey Orlik.
//  (http://www.geocities.com/SiliconValley/Way/9006/index.html)
// Tested with OQBuilder v4.0a.
//{$DEFINE QBUILDER}


// Don't change here ------------------------------------------------
{$IFDEF Delphi2}
  {$UNDEF JPEG}
  {$UNDEF OPENPICTUREDLG}
{$ENDIF}

{$IFDEF TeeChart45}
  {$UNDEF TeeChartStd}
  {$DEFINE TeeChart}
{$ENDIF}

{$IFDEF TeeChartStd}
  {$DEFINE TeeChart}
{$ENDIF}

{$IFDEF IBX}
 {$UNDEF BDE}
 {$UNDEF IBO}
 {$UNDEF ADO}
{$ENDIF}

{$IFDEF IBO}
 {$UNDEF BDE}
 {$UNDEF IBX}
 {$UNDEF ADO}
 {$UNDEF DATAMANAGER}
{$ENDIF}

{$IFDEF ADO}
 {$UNDEF BDE}
 {$UNDEF IBX}
 {$UNDEF IBO}
{$ENDIF}


; Installer for HelperNet
; 5.0.1.0 Removed register from the VB6 helper dlls
; 5.0.2.0 Added version 5 redirection policy install and XML intellisense file
; 5.1.3.0 Added profile Explorer
; 5.2.5.0 Split ASCOM.Astrometrics from ASCOM.HelperNET
; 5.3.0.0 Adapted for use in the ASCOM SVN repository where everything is built in debug mode
; Added ASCOM.Exceptions install
; Moved IConform from Utiities to own assembly

[Setup]
#define AppVer GetFileVersion("..\Utilities\bin\Debug\ASCOM.Utilities.dll") ; define version variable
AppCopyright=Copyright � 2009 ASCOM Initiative
;AppID must not change to maintain a consistent uninstall experience although AppName can be changed.
;This value is hard coded in the uninstall code below. If you do change this you must change the corresponding reference in
;the [Code] CurStepChanged section
AppID="ASCOM.Platform.NET.Components"
AppName="ASCOM Platform .NET Components"
; #emit "AppVerName=ASCOM HelperNET " + AppVer
AppVerName="ASCOM Platform .NET Components 5.0"
#emit "AppVersion=" + AppVer
AppPublisher=ASCOM Initiative
AppPublisherURL=http://ascom-standards.org/
AppSupportURL=http://tech.groups.yahoo.com/group/ASCOM-Talk/
AppUpdatesURL=http://ascom-standards.org/
MinVersion=0,5.0.2195sp4
DefaultDirName="{cf}\ASCOM\.net"
DefaultGroupName="ASCOM Platform\Docs\Helper Components"
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir="."
PrivilegesRequired=admin
#emit "OutputBaseFilename=Utilities(" + AppVer +")setup"
Compression=lzma
SolidCompression=yes
SetupIconFile=..\Utilities\Resources\ASCOM.ico
ShowLanguageDialog=auto
; Put there by Platform if Driver Installer Support selected
WizardImageFile="C:\Program Files\ASCOM\InstallGen\Resources\WizardImage.bmp"
WizardSmallImageFile=ASCOMLogo.bmp
Uninstallable=yes
DirExistsWarning=no
;UninstallDisplayIcon={cf32}\ASCOM\HelperNET\EraseProfile.exe,1
UninstallDisplayIcon={app}\ASCOM.ico,4
UninstallFilesDir="{cf}\ASCOM\Uninstall\Utilities"
UsePreviousTasks=no
VersionInfoCompany=ASCOM Initiative
VersionInfoCopyright=ASCOM Initiative
VersionInfoDescription=ASCOM Platform .NET Components 5.0
VersionInfoProductName=ASCOM Platform .NET Components
#emit "VersionInfoProductVersion=" + AppVer
#emit "VersionInfoVersion=" + AppVer
ArchitecturesInstallIn64BitMode=X64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{cf}\ASCOM\Uninstall\Utilities"

;  Add an option to erase the HelperNET profile
[Tasks]
Name: cleanprofile; Description: "Erase Utilities profile store (leaves registry profile intact)"; GroupDescription: "Installation Tasks"   ; Flags: unchecked

[Files]
;Install the ASCOM.Utilities code
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\Interop.Scripting.dll"; DestDir: "{app}"; Flags: ignoreversion
;Debug symbols to the symbols directory
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.pdb"; DestDir: "{win}\Symbols\dll"; Flags: ignoreversion
;Install to 32bit directory as well on 64bit systems so that 32bit apps will find Utilities in the place they expect on a 64bit system
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.dll"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.pdb"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\ASCOM.Utilities.xml"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion
Source: "..\Utilities\bin\Debug\Interop.Scripting.dll"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion

;Install the Astrometry code
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.xml"; DestDir: "{app}"; Flags: ignoreversion
;Debug symbols to the symbols directory
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.pdb"; DestDir: "{win}\Symbols\dll"; Flags: ignoreversion
;Install to 32bit directory as well on 64bit systems so that 32bit apps will find Utilities in the place they expect on a 64bit system
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.dll"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.pdb"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion
Source: "..\..\ASCOM.Astrometry\Astrometry\bin\Debug\ASCOM.Astrometry.xml"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion

;Install the IConform interface and classes
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.xml"; DestDir: "{app}"; Flags: ignoreversion
;Debug symbols to the symbols directory
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.pdb"; DestDir: "{win}\Symbols\dll"; Flags: ignoreversion
;Install to 32bit directory as well on 64bit systems so that 32bit apps will find Utilities in the place they expect on a 64bit system
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.dll"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.pdb"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion
Source: "..\..\ASCOM.IConform\ASCOM.IConform\bin\Debug\ASCOM.IConform.xml"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion

;VB6 Helpers
Source: "..\VB6Helper\Helper.dll"; DestDir: "{cf32}\ASCOM"; Flags: ignoreversion uninsneveruninstall 32bit
Source: "..\VB6Helper2\Helper2.dll"; DestDir: "{cf32}\ASCOM"; Flags: ignoreversion uninsneveruninstall 32bit

;Install the ASCOM Master Interface type library introduced at 5.1.0.0
;Source: "..\..\ASCOM Master Interfaces\ASCOM Master Interfaces\bin\Release\ASCOM.MasterInterfaces.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\..\ASCOM Master Interfaces\ASCOM Master Interfaces\bin\Release\ASCOM.MasterInterfaces.pdb"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\..\ASCOM Master Interfaces\ASCOM Master Interfaces\bin\Release\ASCOM.MasterInterfaces.xml"; DestDir: "{app}"; Flags: ignoreversion

;Copy the policy files
;Source: "..\Redirect Policy\bin\release\PublisherPolicy.xml"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\Redirect Policy\bin\release\policy.5.3.ASCOM.Utilities.dll"; DestDir: "{app}"; Flags: ignoreversion

;Make sure we have backout copies of the original helpers
Source: "..\OriginalHelpers\Helper.dll"; DestDir: "{cf32}\ASCOM\Utilities"; Flags: ignoreversion
Source: "..\OriginalHelpers\Helper2.dll"; DestDir: "{cf32}\ASCOM\Utilities"; Flags: ignoreversion
Source: "..\OriginalHelpers\RestoreOriginalHelpers.cmd"; DestDir: "{cf32}\ASCOM\Utilities"; Flags: ignoreversion

;ASCOM Platform .NET Help files
Source: "..\Help\Help\PlatformHelp.chm"; DestDir: "{cf}\ASCOM\Doc"; Flags: ignoreversion
Source: "..\Help\Help\HelperNET.pdf"; DestDir: "{cf}\ASCOM\Doc"; Flags: ignoreversion

;Profile Explorer
Source: "..\Profile Explorer\bin\Debug\ProfileExplorer.exe"; DestDir: "{pf}\ASCOM\Profile Explorer"; Flags: ignoreversion
Source: "..\Profile Explorer\bin\Debug\ProfileExplorer.pdb"; DestDir: "{pf}\ASCOM\Profile Explorer"; Flags: ignoreversion

;Tool to erase profile
Source: "..\EraseProfile\bin\Debug\EraseProfile.exe"; DestDir: "{cf32}\ASCOM\Utilities"; Flags: ignoreversion

;Tool to install into GAC
Source: "..\..\GACInstall\bin\Debug\GACInstall.exe"; DestDir: {app}; Flags: ignoreversion

;ASCOM Icon
Source: "..\Utilities\Resources\ASCOM.ico"; DestDir: "{app}"; Flags: ignoreversion

;NOVAS and Kepler PIAs
Source: "..\..\Interfaces\NOVAS PIAs\ASCOM.NOVAS.DLL"; DestDir: {app}; Flags: ignoreversion
Source: "..\..\Interfaces\Kepler PIAs\ASCOM.Kepler.DLL"; DestDir: {app}; Flags: ignoreversion

;ASCOM Exceptions
Source: "..\..\Interfaces\ASCOMExceptions\bin\Debug\ASCOM.Exceptions.dll"; DestDir: {app}; Flags: ignoreversion
Source: "..\..\Interfaces\ASCOMExceptions\bin\Debug\ASCOM.Exceptions.XML"; DestDir: {app}; Flags: ignoreversion
;...and for 32bit directories on a 64bit system
Source: "..\..\Interfaces\ASCOMExceptions\bin\Debug\ASCOM.Exceptions.dll"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion
Source: "..\..\Interfaces\ASCOMExceptions\bin\Debug\ASCOM.Exceptions.XML"; DestDir: "{{cf32}\ASCOM\.net}"; Flags: ignoreversion

;NOVAS C DLLs
Source: "..\NOVAS-C x86-x64\Release\NOVAS-C.dll"; DestDir: {app}; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\Release\NOVAS-C.pdb"; DestDir: {app}; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\x64\Release\NOVAS-C64.dll"; DestDir: {app}; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\x64\Release\NOVAS-C64.pdb"; DestDir: {app}; Flags: ignoreversion
;Install to 32bit directory as well on 64bit systems so that 32bit apps will find NOVAS DLLs in the place they expect on a 64bit system
Source: "..\NOVAS-C x86-x64\Release\NOVAS-C.dll"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\Release\NOVAS-C.pdb"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\x64\Release\NOVAS-C64.dll"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion
Source: "..\NOVAS-C x86-x64\x64\Release\NOVAS-C64.pdb"; DestDir: "{cf32}\ASCOM\.net"; Flags: ignoreversion

[Registry]
Root: HKLM64; Subkey: "SOFTWARE\Microsoft\.NETFramework\v2.0.50727\AssemblyFoldersEx\ASCOM64"; ValueType: string;  ValueName: ""; ValueData: "{cf}\ASCOM\.net";Flags: uninsdeletekey; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\Microsoft\.NETFramework\v2.0.50727\AssemblyFoldersEx\ASCOM64"; ValueType: string;  ValueName: ""; ValueData: "{cf64}\ASCOM\.net";Flags: uninsdeletekey; Check: IsWin64

[Icons]
Name: "{group}\ASCOM Platform for .NET"; Filename: {cf}\ASCOM\Doc\HelperNET.chm
Name: "{group}\ASCOM Platform Architecture"; Filename: {cf}\ASCOM\Doc\HelperNET.pdf
Name: "{commonprograms}\ASCOM Platform\Tools\Profile Explorer"; Filename: {pf}\ASCOM\Profile Explorer\ProfileExplorer.exe

[Run]
; Install to the GAC and register COM types
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.Utilities.dll; Flags: runhidden; StatusMsg: Installing Utilities to the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.Astrometry.dll; Flags: runhidden; StatusMsg: Installing ASCOM.Astrometry to the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: Interop.Scripting.dll; Flags: runhidden; StatusMsg: Installing Interop.Scripting to the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.IConform.dll; Flags: runhidden; StatusMsg: Installing ASCOM.IConform to the assembly cache
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/TLB ""{app}\ASCOM.Utilities.dll"""; Flags: runhidden; StatusMsg: Registering Utilities for COM
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/TLB ""{app}\ASCOM.Astrometry.dll"""; Flags: runhidden; StatusMsg: Registering ASCOM.Astrometry for COM
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/TLB ""{app}\ASCOM.IConform.dll"""; Flags: runhidden; StatusMsg: Registering ASCOM.IConform for COM
;Filename: "{app}\GACInstall.exe"; Parameters: policy.5.3.ASCOM.Utilities.dll; Flags: runhidden; StatusMsg: Installing Utilities redirection policy to the assembly cache
Filename: "{cf32}\ASCOM\Utilities\EraseProfile.exe"; Tasks: cleanprofile
;#emit 'Filename: "XCopy"; Parameters: """{app}\ASCOM.HelperNET.pdb"" ""{win}\assembly\GAC_MSIL\ASCOM.HelperNET\' + AppVer + '__565de7938946fba7""";StatusMsg: Installing HelperNET debug symbols into the GAC;Flags: runhidden waituntilterminated'
;#emit 'Filename: "XCopy"; Parameters: """{app}\NOVAS-C.dll"" ""{win}\assembly\GAC_MSIL\ASCOM.HelperNET\' + AppVer + '__565de7938946fba7""";StatusMsg: Installing NOVAS C 32bit library into the GAC;Flags: runhidden waituntilterminated'
;#emit 'Filename: "XCopy"; Parameters: """{app}\NOVAS-C.pdb"" ""{win}\assembly\GAC_MSIL\ASCOM.HelperNET\' + AppVer + '__565de7938946fba7""";StatusMsg: Installing NOVAS C 32bit library debug symbols into the GAC;Flags: runhidden waituntilterminated'
;#emit 'Filename: "XCopy"; Parameters: """{app}\NOVAS-C64.dll"" ""{win}\assembly\GAC_MSIL\ASCOM.HelperNET\' + AppVer + '__565de7938946fba7""";StatusMsg: Installing NOVAS C 64bit library into the GAC;Flags: runhidden waituntilterminated'
;#emit 'Filename: "XCopy"; Parameters: """{app}\NOVAS-C64.pdb"" ""{win}\assembly\GAC_MSIL\ASCOM.HelperNET\' + AppVer + '__565de7938946fba7""";StatusMsg: Installing NOVAS C 64bit library debug symbols into the GAC;Flags: runhidden waituntilterminated'

;NOVAS and Kepler
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.NOVAS.dll; Flags: runhidden; StatusMsg: Installing NOVAS 2 to the assembly cache
;Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/TLB ""{app}\ASCOM.NOVAS.dll"""; Flags: runhidden; StatusMsg: Registering NOVAS 2 for COM
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.Kepler.dll; Flags: runhidden; StatusMsg: Installing Kepler to the assembly cache

;ASCOM Exceptions
Filename: "{app}\GACInstall.exe"; Parameters: ASCOM.Exceptions.dll; Flags: runhidden; StatusMsg: Installing ASCOM.Exceptions to the assembly cache

[UninstallRun]
;Filename: "{app}\GACInstall.exe"; Parameters: "/U ""policy.5.3.ASCOM.Utilities"""; Flags: runhidden; StatusMsg: Uninstalling Utilities redirection policy from the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.Astrometry"""; Flags: runhidden; StatusMsg: Uninstalling ASCOM.Astrometry from the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.Utilities"""; Flags: runhidden; StatusMsg: Uninstalling Utilities from the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""Interop.Scripting"""; Flags: runhidden; StatusMsg: Uninstalling Interop.Scripting from the assembly cache
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.IConform"""; Flags: runhidden; StatusMsg: Uninstalling ASCOM.IConform from the assembly cache
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/Unregister /TLB ""{app}\ASCOM.Astrometry.dll"""; Flags: runhidden; StatusMsg: Unregistering ASCOM.Astrometry for COM
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/Unregister /TLB ""{app}\ASCOM.Utilities.dll"""; Flags: runhidden; StatusMsg: Unregistering ASCOM.Utilities for COM
Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/Unregister /TLB ""{app}\ASCOM.IConform.dll"""; Flags: runhidden; StatusMsg: Unregistering ASCOM.IConform for COM
Filename: "{cf32}\ASCOM\Utilities\RestoreOriginalHelpers.cmd"; Parameters: """{cf32}\ASCOM\Utilities\*.dll"" ""{cf32}\ASCOM"""; StatusMsg: Restoring helper dlls; Flags: runhidden

;NOVAS and Kepler
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.NOVAS"""; Flags: runhidden; StatusMsg: Uninstalling NOVAS 2 from the assembly cache
;Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/Unregister /TLB ""{app}\ASCOM.NOVAS.dll"""; Flags: runhidden; StatusMsg: Unregistering NOVAS 2 for COM
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.Kepler"""; Flags: runhidden; StatusMsg: Uninstalling Kepler from the assembly cache

;ASCOM.Exceptions
Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.Exceptions"""; Flags: runhidden; StatusMsg: Uninstalling ASCOM.Exceptions from the assembly cache

;Master interfaces uninstall
;Filename: "{app}\GACInstall.exe"; Parameters: "/U ""ASCOM.MasterInterfaces.dll"""; Flags: runhidden; StatusMsg: Uninstalling ASCOM Master Interfaces from the assembly cache
;Filename: "{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe"; Parameters: "/Unregister /TLB ""{app}\ASCOM.MasterInterfaces.dll"""; Flags: runhidden; StatusMsg: Unregistering ASCOM Master Interfaces for COM

[UninstallDelete]
Type: files; Name: "{cf32}\ASCOM\Utilities\*.*"
Type: dirifempty; Name: "{cf32}\ASCOM\Utilities"
Type: files; Name: "{app}\ASCOM.Utilities.tlb"
Type: dirifempty; Name: "{app}"

[CODE]
procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
  Uninstall: String;
begin
  if (CurStep = ssInstall) then begin
      if RegQueryStringValue(HKLM, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\ASCOM.Platform.NET.Components_is1', 'UninstallString', Uninstall) then begin
      MsgBox('Setup will now remove the previous version.', mbInformation, MB_OK);
      Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
    end;
  end;
end;


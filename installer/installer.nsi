;  Síragon AOSU is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.
;  
;  Síragon AOSU is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;  GNU General Public License for more details.
;  
;  You should have received a copy of the GNU General Public License
;  along with Síragon AOSU. If not, see <http://www.gnu.org/licenses/>. 

!addplugindir "plugins"
!include "x64.nsh"
Name "Controladores ADB - Tablet 4N"
OutFile "Tablet4N_ADB.exe"
AutoCloseWindow True
InstallDir "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb"
Icon "../images/installer.ico"
UninstallIcon "../images/installer.ico"
RequestExecutionLevel admin

!define LANG_SPANISH     "8202"
!define LANG_ENGLISH     "1033"
VIProductVersion "1.1.0.0"
VIAddVersionKey /LANG=${LANG_SPANISH} "ProductName" "Controladores ADB - Tablet 4N"
VIAddVersionKey /LANG=${LANG_SPANISH} "Comments" "Estos controladores son parte del Kit de Desarrollo de Software de Android"
VIAddVersionKey /LANG=${LANG_SPANISH} "CompanyName" "Síragon"
VIAddVersionKey /LANG=${LANG_SPANISH} "LegalCopyright" "GPL v3"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "GPL v3"
VIAddVersionKey /LANG=${LANG_SPANISH} "FileDescription" "Instalador de controladores para la Tablet 4N"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "Driver installer for the Tablet 4N"
VIAddVersionKey /LANG=${LANG_SPANISH} "FileVersion" "1.1"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "1.1"
VIAddVersionKey /LANG=${LANG_SPANISH} "ProductVersion" "Release"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "Release"
VIAddVersionKey /LANG=${LANG_SPANISH} "InternalName" "Tablet4N_ADB"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "Síragon® is a Trademark of Greentech de Venezuela c.a."
VIAddVersionKey /LANG=${LANG_SPANISH} "LegalTrademarks" "Síragon® es una Marca Registrada de Greentech de Venezuela c.a."
VIAddVersionKey /LANG=${LANG_SPANISH} "OriginalFilename" "Tablet4N_ADB.exe"

Function .onInit
  SetSilent silent
FunctionEnd

Section "Controladores ADB - Tablet 4N" XULAppSection
  SetOutPath "$INSTDIR"
  call copyFilesToInstallDir
  call createUnInstallRegEntries
SectionEnd

Function createUnInstallRegEntries
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "DisplayName" "Controladores ADB - Tablet 4N"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "UninstallString" "$PROGRAMFILES32\Síragon\aosu\uninstall\helper_driver.exe"
  ;WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "ModifyPath" "$PROGRAMFILES32\${XULAPP_VENDOR}\${XULAPP_PRODUCTNAME}\uninstall\helper.exe"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "InstallSource" "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb\Tablet4N_ADB.exe"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "InstallLocation" "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "DisplayIcon" "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb\images\installer.ico"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "Publisher" "Síragon"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "DisplayVersion" "1.0"
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "NoModify" 0x00000001
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "NoRepair" 0x00000001
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "URLInfoAbout" "http://www.siragon.com"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "URLUpdateInfo" "http://www.siragon.com"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "HelpLink" "http://www.siragon.com/ve/soporte_drivers.php"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "HelpTelephone" "0500-SIRAGON"
  ;WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "ProductID" "${XULAPP_ID}"
  ;WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "RegOwner" "alexander.salas@siragon.com.ve"
  ;WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "RegCompany" "${XULAPP_VENDOR}"
  ;WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "EstimatedSize" "${XULAPP_VENDOR}"
  WriteRegStr   HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Síragon - Drivers ADB Tablet 4N (v1.0)" "Comments" "Estos controladores son parte del Kit de Desarrollo de Software de Android"
  WriteRegStr   HKCU "Software\Síragon\Drivers ADB - Tablet 4N" "StartMenuFolder" "$StartMenuFolder"
FunctionEnd

Function copyFilesToInstallDir
	SetOutPath "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb"
	File "Tablet4N_ADB.7z"
	Nsis7z::Extract "Tablet4N_ADB.7z"
	StrCpy $OUTDIR "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb"
	SetOutPath "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb"
	
	${If} ${RunningX64}
	   Exec '"$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb\dpinst_x64.exe"'
	${Else}
	   Exec '"$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb\dpinst_x86.exe"'
	${EndIf}
	Delete "$PROGRAMFILES32\Síragon\drivers\Tablet4N\adb\Tablet4N_ADB.7z"
	AllowSkipFiles off
FunctionEnd
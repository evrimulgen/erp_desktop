; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sistema de Gest�o Empresarial"
#define MyAppVersion "2.0.0.253"
#define MyAppPublisher "SoftwarePI"
#define MyAppURL "http://www.softwarepi.com.br"
#define MyAppExeName "IndustriaX.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AE71CFF7-137F-40F7-86CF-89A32874463D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
MinVersion=0,5.0

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: D:\instalador\IndustriaX.exe; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\install_mysql.exe; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\libeay32.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\libmysql.dll; DestDir: {sys}; Flags: ignoreversion
Source: D:\instalador\libmysql41.dll; DestDir: {sys}; Flags: ignoreversion
Source: D:\instalador\libmySQL50.dll; DestDir: {sys}; Flags: ignoreversion
Source: D:\instalador\libmysql51.dll; DestDir: {sys}; Flags: ignoreversion
Source: D:\instalador\libmysql55.dll; DestDir: {sys}; Flags: ignoreversion
Source: D:\instalador\uninstall_mysql.exe; DestDir: {app}; Flags: ignoreversion
; Source: D:\instalador\industria.chm; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\dev-ptbr.ini; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\indx.ini; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\NotaFiscalEletronica.rav; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\capicom.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\msxml5.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\msxml5r.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\ssleay32.dll; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\instala.bat; DestDir: {app}; Flags: ignoreversion
Source: D:\instalador\mysql\*; DestDir: {app}\mysql; Flags: ignoreversion recursesubdirs createallsubdirs
Source: D:\instalador\recursos\*; DestDir: {app}\recursos; Flags: ignoreversion recursesubdirs createallsubdirs
Source: D:\instalador\Schemas\*; DestDir: {app}\Schemas; Flags: ignoreversion recursesubdirs createallsubdirs





; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {group}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {#MyAppURL}
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}; Flags: nowait postinstall skipifsilent
Filename: {app}\install_mysql.exe; Flags: waituntilidle
Filename: {app}\instala.bat; Flags: runminimized; WorkingDir: {app}
[UninstallRun]
Filename: {app}\uninstall_mysql.exe; Flags: waituntilidle

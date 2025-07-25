#define APP_NAME "PySoWorks"

[Setup]
AppName={#APP_NAME}
AppVersion=1.0
DefaultDirName={userappdata}\Programs\{#APP_NAME}
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir=dist
OutputBaseFilename={#APP_NAME}_Setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64
UninstallDisplayIcon={app}\PySoWorks.exe
SetupIconFile=pysoworks\assets\app_icon.ico
WizardStyle=modern

[Files]
Source: "dist\PySoWorks.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Start Menu shortcut
Name: "{userprograms}\PySoWorks"; Filename: "{app}\PySoWorks.exe"

; Optional desktop shortcut
Name: "{userdesktop}\PySoWorks"; Filename: "{app}\PySoWorks.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Run]
Filename: "{app}\PySoWorks.exe"; Description: "Launch PySoWorks"; Flags: nowait postinstall skipifsilent

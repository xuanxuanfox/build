; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{E7D801CA-0D7F-8979-85FE-48DED54B1AA9}
AppName=防火墙集中管理平台
AppVerName=防火墙集中管理平台V1.0
AppPublisher=世恒樽
AppPublisherURL=http://www.shihengzun.com/
AppSupportURL=http://www.shihengzun.com/
AppUpdatesURL=http://www.shihengzun.com/
DefaultDirName={pf}\防火墙集中管理平台
DefaultGroupName=防火墙集中管理平台
OutputDir=F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\output
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Dirs]
Name: "{app}/apache-tomcat-7.0.54"
Name: "{app}/jre-7u55"
Name: "{app}/mysql-5.1.73-winx64"

[Files]
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\afterinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\run.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\stop.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\delafterinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\deldel.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\uninstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\apache-tomcat-7.0.54\*"; DestDir: "{app}/apache-tomcat-7.0.54"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\jre-7u55\*"; DestDir: "{app}/jre-7u55"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "F:\work\工程\myself\防火墙集中管理平台\开发\制作安装包\build\mysql-5.1.73-winx64\*"; DestDir: "{app}/mysql-5.1.73-winx64"; Flags: ignoreversion recursesubdirs createallsubdirs
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”


[Icons]
Name: "{group}\启动防火墙集中管理平台"; Filename: "{app}\run.bat"; WorkingDir: "{app}"
Name: "{commondesktop}\启动防火墙集中管理平台"; Filename: "{app}\run.bat"; Tasks: desktopicon ; WorkingDir:"{app}"
Name: "{group}\停止防火墙集中管理平台"; Filename: "{app}\stop.bat"; WorkingDir: "{app}"
Name: "{commondesktop}\停止防火墙集中管理平台"; Filename: "{app}\stop.bat"; Tasks: desktopicon ; WorkingDir:"{app}"
Name: "{group}\{cm:UninstallProgram,防火墙集中管理平台}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\afterinstall.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"
Filename: "{app}\delafterinstall.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"
Filename: "{app}\deldel.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"

[UninstallRun]
Filename: "{app}\uninstall.bat"; Flags: hidewizard; WorkingDir:"{app}"




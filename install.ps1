# camtui - Universal Windows Installer
# Optimized for: Windows 10/11 (AMD64/ARM64)

$ErrorActionPreference = "Stop"

$Repo = "oguzeray/camtui-public"
$InstallDir = Join-Path $HOME ".local\bin"
$BinaryName = "camtui.exe"

Write-Host "🛡️ Initializing camtui installation for Windows..." -ForegroundColor Blue

# 1. Detect Architecture
$ArchType = $env:PROCESSOR_ARCHITECTURE
switch ($ArchType) {
    "AMD64" { $Arch = "amd64" }
    "ARM64" { $Arch = "arm64" }
    default { Write-Error "Unsupported Architecture: $ArchType"; exit 1 }
}

$Target = "camtui-windows-$Arch.exe"
$DownloadUrl = "https://github.com/$Repo/releases/latest/download/$Target"

# 2. Create Install Directory if it doesn't exist
if (-not (Test-Path $InstallDir)) {
    Write-Host "Creating installation directory: $InstallDir" -ForegroundColor Blue
    New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
}

$DestPath = Join-Path $InstallDir $BinaryName

# 3. Download Binary
Write-Host "Downloading $Target..." -ForegroundColor Blue
Invoke-WebRequest -Uri $DownloadUrl -OutFile $DestPath

Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host "--------------------------------------------------" -ForegroundColor Blue
Write-Host "Binary installed to: $DestPath" -ForegroundColor Green

# 4. Check/Update PATH for current session
if ($env:Path -notlike "*$InstallDir*") {
    Write-Host "Adding $InstallDir to your User PATH..." -ForegroundColor Blue
    
    # Update current session path
    $env:Path += ";$InstallDir"
    
    # Permanently update User PATH
    $OldPath = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($OldPath -notlike "*$InstallDir*") {
        [Environment]::SetEnvironmentVariable("Path", "$OldPath;$InstallDir", "User")
        Write-Host "✅ Path updated permanently." -ForegroundColor Green
    }
}

Write-Host "You can now run 'camtui' from your terminal." -ForegroundColor Green
Write-Host "--------------------------------------------------" -ForegroundColor Blue

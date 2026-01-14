# 1. Cek apakah dijalankan sebagai Administrator
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Meminta izin Administrator..." -ForegroundColor Yellow
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"irm $($MyInvocation.MyCommand.Definition) | iex`"" -Verb RunAs
    exit
}

# 2. Jika sudah Admin, jalankan perintah utama
Write-Host "Menjalankan skrip dengan hak akses Administrator..." -ForegroundColor Green
irm https://get.activated.win | iex
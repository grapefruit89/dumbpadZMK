while($true) {
    Clear-Host
    Write-Host "--- LAUSCHE AUF NICE!NANO (Drücke 2x Reset schnell!) ---" -ForegroundColor Cyan
    
    $drive = Get-Volume | Where-Object { $_.FileSystemLabel -match 'NICE' -or $_.FileSystemLabel -match 'BOOT' }
    if ($drive) {
        Write-Host "[GEFUNDEN!] Bootloader-Laufwerk erkannt: $($drive.DriveLetter): [$($drive.FileSystemLabel)]" -ForegroundColor Green -BackgroundColor DarkGreen
    } else {
        Write-Host "[-] Kein Bootloader-Laufwerk (UF2) gefunden..." -ForegroundColor Gray
    }

    $pnp = Get-PnpDevice -PresentOnly | Where-Object { $_.FriendlyName -match 'nRF52' -or $_.FriendlyName -match 'nice!nano' -or $_.FriendlyName -match 'USB Serial' }
    if ($pnp) {
        Write-Host "[GEFUNDEN!] Geraet im System erkannt: $($pnp.FriendlyName)" -ForegroundColor Yellow
    } else {
        Write-Host "[-] Kein nRF52/Serial Geraet aktiv..." -ForegroundColor Gray
    }

    Write-Host "`n(Abbrechen mit Strg+C)" -ForegroundColor DarkGray
    Start-Sleep -Seconds 2
}

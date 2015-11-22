Set-StrictMode -Version 3

function prompt
{
    $id = 1
    $historyItem = Get-History -Count 1
    if($historyItem) 
    {
        $id = $historyItem.Id + 1
    }
    Write-Host -ForegroundColor DarkGray "`n[$(Get-Location)]"
    Write-Host -NoNewline "PS:$id > "
    $host.UI.RawUI.WindowTitle = "$(Get-Location)"
    # "PS [$env:COMPUTERNAME] >"
    "`b"
}

Set-Alias n 'C:\Program Files (x86)\Notepad++\notepad++.exe'
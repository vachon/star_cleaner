$folder = $PSScriptRoot

Get-ChildItem -LiteralPath $folder -File | ForEach-Object {
    $newName = $_.Name.Replace("_M", "")

    if ($newName -ne $_.Name) {
        Rename-Item -LiteralPath $_.FullName -NewName $newName
        Write-Host "$($_.Name) -> $newName"
    }
}
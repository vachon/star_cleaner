
# Dossier contenant le script
$folder = $PSScriptRoot

# Parcourt tous les fichiers, y compris les sous-dossiers
Get-ChildItem -LiteralPath $folder -File -Recurse | ForEach-Object {

    $newName = $_.Name.Replace("_0000", "")

    if ($newName -ne $_.Name) {
        Rename-Item -LiteralPath $_.FullName -NewName $newName
        Write-Host "$($_.FullName) -> $newName"
    }
}

Write-Host "Renommage termine !"
Read-Host "Appuie sur Entree pour fermer"

$excludeFiles = @(".\build.ps1", ".\.gitignore", ".\.vscode")
$inputFolder = (Get-Item -Path ".\").FullName
$outputFile = "..\Loader-Furnaces_" + $version + ".zip"
$version = (Get-Content -Raw -Path .\info.json | ConvertFrom-Json).version

$tempFolder = [System.IO.Path]::GetTempFileName()
Remove-Item $tempFolder -Force
New-Item -ItemType Directory -Path $tempFolder -Force

$exclude = @()
$excludeFiles | ForEach-Object {
    if ((Get-Item -Path $_) -is [System.IO.DirectoryInfo])  {
        Get-ChildItem (Join-Path $inputFolder $_) -Recurse | ForEach-Object{$exclude+=$_.FullName}
    } else {
        $exclude += (Get-Item -Path $_).FullName
    }
}

Get-ChildItem -Path ".\" -Recurse | Where-Object {
    $_.FullName -notin $exclude 
} | Copy-Item -Destination { 
    Join-Path $tempFolder $_.FullName.Substring($inputFolder.Length)
}

Get-ChildItem $tempFolder |Compress-Archive -DestinationPath $outputFile -Update
Remove-Item $tempFolder -Force -Recurse

Write-Host "Created zip file at: " (Get-Item -Path $outputFile).FullName
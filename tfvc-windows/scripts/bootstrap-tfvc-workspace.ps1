[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^https?://')]
    [string]$CollectionUrl,

    [Parameter(Mandatory = $true)]
    [ValidatePattern('^\$/')]
    [string]$ServerPath,

    [string]$WorkspaceName = "$env:COMPUTERNAME-TFVC",

    [string]$RootDir = (Join-Path $HOME 'source\tfvc-workspace')
)

$ErrorActionPreference = 'Stop'
$tfScript = Join-Path $PSScriptRoot 'tfvc.ps1'
$mappedDir = Join-Path $RootDir $WorkspaceName

New-Item -ItemType Directory -Path $mappedDir -Force | Out-Null

& $tfScript workspace /new "/collection:$CollectionUrl" /location:local /noprompt $WorkspaceName
& $tfScript workfold /map $ServerPath $mappedDir "/collection:$CollectionUrl" "/workspace:$WorkspaceName"
Set-Location -LiteralPath $mappedDir
& $tfScript get /recursive

Write-Host "Workspace '$WorkspaceName' mapped $ServerPath to $mappedDir"
[CmdletBinding()]
param(
    [Parameter(Position = 0, ValueFromRemainingArguments = $true)]
    [string[]]$TfArgs
)

$ErrorActionPreference = 'Stop'

if (-not $TfArgs -or $TfArgs.Count -eq 0) {
    Write-Host 'Usage: .\tfvc.ps1 <tf-command> [arguments]'
    Write-Host 'Example: .\tfvc.ps1 status . /recursive'
    exit 2
}

$tfPath = $null
if ($env:TFVC_TF_PATH) {
    if (-not (Test-Path -LiteralPath $env:TFVC_TF_PATH -PathType Leaf)) {
        throw "TFVC_TF_PATH does not point to a file: $env:TFVC_TF_PATH"
    }
    $tfPath = (Resolve-Path -LiteralPath $env:TFVC_TF_PATH).Path
}

if (-not $tfPath) {
    $pathCommand = Get-Command 'tf.exe' -ErrorAction SilentlyContinue
    if ($pathCommand) {
        $tfPath = $pathCommand.Source
    }
}

if (-not $tfPath) {
    $vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
    if (Test-Path -LiteralPath $vswhere -PathType Leaf) {
        $locatedPaths = & $vswhere -latest -products '*' -find '**\tf.exe' 2>$null
        $tfPath = $locatedPaths | Where-Object { Test-Path -LiteralPath $_ -PathType Leaf } | Select-Object -First 1
    }
}

if (-not $tfPath) {
    throw 'Could not find Visual Studio tf.exe. Install/repair Visual Studio, or set TFVC_TF_PATH to the full path to tf.exe.'
}

& $tfPath @TfArgs
$tfExitCode = $LASTEXITCODE
if ($tfExitCode -ne 0) {
    throw "tf.exe failed with exit code $tfExitCode."
}
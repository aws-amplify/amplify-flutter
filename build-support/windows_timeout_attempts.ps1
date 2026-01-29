param(
    [Parameter(Mandatory=$true, Position=0)]
    [int]$NumAttempts,

    [Parameter(Mandatory=$true, Position=1)]
    [int]$AttemptTimeoutMinutes,

    [Parameter(Mandatory=$true, Position=2, ValueFromRemainingArguments=$true)]
    [string[]]$Command
)

$ErrorActionPreference = "Stop"

# Get the directory where this script is located
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$timeoutScript = Join-Path $scriptDir "linux_like_timeout.ps1"

for ($i = 1; $i -le $NumAttempts; $i++) {
    $startTime = Get-Date

    Write-Host ""
    Write-Host "===================================================================="
    Write-Host "ATTEMPT $i OF $NumAttempts - STARTING"
    Write-Host "   Timeout: $AttemptTimeoutMinutes minutes"
    Write-Host "   Started at: $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))"
    Write-Host "===================================================================="
    Write-Host ""

    # Execute the command with timeout
    $exitCode = 0
    try {
        # Build argument list for timeout script
        $timeoutArgs = @("${AttemptTimeoutMinutes}m") + $Command
        & powershell.exe -NoProfile -ExecutionPolicy Bypass -File $timeoutScript $timeoutArgs
        $exitCode = $LASTEXITCODE
    }
    catch {
        $exitCode = 1
    }

    $endTime = Get-Date
    $duration = $endTime - $startTime
    $minutes = [math]::Floor($duration.TotalMinutes)
    $seconds = $duration.Seconds

    if ($exitCode -eq 0) {
        Write-Host ""
        Write-Host "===================================================================="
        Write-Host "ATTEMPT $i SUCCEEDED"
        Write-Host "   Duration: $minutes minutes $seconds seconds"
        Write-Host "   Finished at: $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))"
        Write-Host "===================================================================="
        Write-Host ""
        exit 0
    }

    if ($exitCode -eq 124) {
        Write-Host ""
        Write-Host "===================================================================="
        Write-Host "ATTEMPT $i TIMED OUT"
        Write-Host "   Duration: $minutes minutes $seconds seconds"
        Write-Host "   Time: $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))"
        Write-Host "===================================================================="
        Write-Host ""
    }
    else {
        Write-Host ""
        Write-Host "===================================================================="
        Write-Host "ATTEMPT $i FAILED"
        Write-Host "   Exit code: $exitCode"
        Write-Host "   Duration: $minutes minutes $seconds seconds"
        Write-Host "   Time: $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))"
        Write-Host "===================================================================="
        Write-Host ""
    }

    if ($i -lt $NumAttempts) {
        Write-Host "Preparing for next retry..."
        Write-Host "   Waiting 10 seconds before next attempt..."
        Start-Sleep -Seconds 10
        Write-Host "   Ready for next attempt"
    }
}

Write-Host ""
Write-Host "===================================================================="
Write-Host "  ALL $NumAttempts ATTEMPTS FAILED"
Write-Host "  Time: $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))"
Write-Host "===================================================================="
Write-Host ""
exit 1

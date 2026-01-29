# This copies the behavior of the Linux timeout command

[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [Alias('k')]
    [string]$KillAfter = "",

    [Parameter(Mandatory=$false)]
    [Alias('s')]
    [string]$Signal,

    [Parameter(Mandatory=$false)]
    [switch]$Preserve,

    [Parameter(Mandatory=$true, Position=0, ValueFromRemainingArguments=$false)]
    [string]$Duration,

    [Parameter(Mandatory=$true, Position=1, ValueFromRemainingArguments=$true)]
    [string[]]$Command
)

# Exit codes
$EXIT_TIMEOUT = 124
$EXIT_KILLED = 137

# Function to parse duration string (supports s, m, h, d suffixes like Linux timeout)
function Parse-Duration {
    param([string]$durationStr)

    if ([string]::IsNullOrWhiteSpace($durationStr)) {
        return 0
    }

    # Match number followed by optional suffix
    if ($durationStr -match '^(\d+(?:\.\d+)?)(s|m|h|d)?$') {
        $value = [double]$matches[1]
        $suffix = $matches[2]

        switch ($suffix) {
            'm' { return [int]($value * 60) }      # minutes to seconds
            'h' { return [int]($value * 3600) }    # hours to seconds
            'd' { return [int]($value * 86400) }   # days to seconds
            default { return [int]$value }         # seconds (default) or 's' suffix
        }
    }
    else {
        throw "Invalid duration format: $durationStr. Use a number optionally followed by s, m, h, or d (e.g., 10, 5m, 2h, 1d)"
    }
}

try {
    # Parse duration and kill-after timeout
    $durationSeconds = Parse-Duration $Duration
    $killAfterSeconds = 0

    if (-not [string]::IsNullOrWhiteSpace($KillAfter)) {
        $killAfterSeconds = Parse-Duration $KillAfter
    }

    if ($durationSeconds -le 0) {
        throw "Duration must be greater than 0"
    }

    # Split command into executable and arguments
    # Support both "command arg1 arg2" format and separate arguments
    $executable = ""
    $arguments = ""

    if ($Command.Length -eq 1 -and $Command[0] -match '\s') {
        # Single string with spaces - parse it as "executable args"
        $parts = $Command[0] -split '\s+', 2
        $executable = $parts[0]
        if ($parts.Length -gt 1) {
            $arguments = $parts[1]
        }
    }
    else {
        # Multiple arguments or single word command
        $executable = $Command[0]
        if ($Command.Length -gt 1) {
            $arguments = $Command[1..($Command.Length - 1)] -join " "
        }
    }

    # Start the process
    $processInfo = New-Object System.Diagnostics.ProcessStartInfo
    $processInfo.FileName = $executable
    $processInfo.Arguments = $arguments
    $processInfo.UseShellExecute = $false
    # Don't redirect - let output flow naturally to console for live display
    $processInfo.RedirectStandardOutput = $false
    $processInfo.RedirectStandardError = $false

    $process = New-Object System.Diagnostics.Process
    $process.StartInfo = $processInfo

    # Start the process
    $started = $process.Start()

    if (-not $started) {
        Write-Error "Failed to start process: $executable"
        exit 1
    }

    # Wait for the process to exit or timeout
    $exited = $process.WaitForExit($durationSeconds * 1000)

    if ($exited) {
        # Process completed within timeout
        $exitCode = $process.ExitCode

        # Cleanup
        Get-EventSubscriber | Where-Object { $_.SourceObject -eq $process } | Unregister-Event
        $process.Dispose()

        exit $exitCode
    }
    else {
        # Timeout occurred
        Write-Warning "Command timed out after $Duration"

        # Try graceful termination first
        try {
            $process.CloseMainWindow() | Out-Null
        }
        catch {
            # Window might not exist
        }

        if ($killAfterSeconds -gt 0) {
            # Wait for KillAfter duration before force killing
            $gracefulExit = $process.WaitForExit($killAfterSeconds * 1000)

            if (-not $gracefulExit) {
                Write-Warning "Force killing process after $KillAfter additional time"
                $process.Kill()

                # Cleanup
                Get-EventSubscriber | Where-Object { $_.SourceObject -eq $process } | Unregister-Event
                $process.Dispose()

                exit $EXIT_KILLED
            }
        }
        else {
            # Force kill immediately
            try {
                $process.Kill()
            }
            catch {
                # Process might have already exited
            }
        }

        # Cleanup
        Get-EventSubscriber | Where-Object { $_.SourceObject -eq $process } | Unregister-Event
        $process.Dispose()

        if ($Preserve) {
            exit $EXIT_TIMEOUT
        }
        else {
            exit $EXIT_TIMEOUT
        }
    }
}
catch {
    Write-Error "Error executing command: $_"

    # Cleanup if needed
    if ($process -ne $null) {
        try {
            if (-not $process.HasExited) {
                $process.Kill()
            }
            Get-EventSubscriber | Where-Object { $_.SourceObject -eq $process } | Unregister-Event -ErrorAction SilentlyContinue
            $process.Dispose()
        }
        catch {
            # Best effort cleanup
        }
    }

    exit 1
}

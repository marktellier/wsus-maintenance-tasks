<#
.SYNOPSIS
    Cleanup WSUS
.DESCRIPTION
    Schedule script to run monthly maintenance on WSUS Server
.EXAMPLE
    Manually run or schedule with Task Scheduler
.INPUTS
    None
.OUTPUTS
    Log file written to C:\Logs
.NOTES
    8/20/2021 Mark Tellier
#>

# --- Log path
$log = "C:\Logs\wsusmaintenance.log"

# --- IMPORT MODULE - SUPPORTS PowerShell 5.1
if (!( Get-Module -Name UpdateServices )) {
    Import-Module -Name UpdateServices
}

# --- APPEND DATE TO LOG FILE
Get-Date | Out-File -Append -FilePath $log

# --- RUN MAINTENANCE TASK
Get-Wsusserver | Invoke-WsusServerCleanup -CleanupObsoleteUpdates -CleanupObsoleteComputers -DeclineExpiredUpdates -DeclineSupersededUpdates -Verbose | Out-File -Append -FilePath $log

Exit 

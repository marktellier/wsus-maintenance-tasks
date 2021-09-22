# Automate Windows Server Update Services Tasks

Here is a simple house cleaning script for WSUS.

Add the script as a Scheduled Task for automating maintenance tasks on a monthly basis as in this example.

1. Create a local Administrator account to run script: Automation
1. Open Task Scheduler
1. Under Actions: Start a program
1. Program/script: powershell
1. Arguments:  -File C:\Scripts\invoke-wsus-maintenance.ps1
1. Trigger: Monthly on last day of the month
1. Run whether user is logged on or not
1. Run with highest privileges
1. Change user: Automation



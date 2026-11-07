# autoruns: current user
Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run
# autoruns: all users, 64-bit
Get-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\Run
# autoruns: all users, 32-bit (WOW6432Node)
Get-ItemProperty -Path HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Run
# UAC: EnableLUA (1 = on)
Get-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA
# PATH
Get-Item Env:Path

# Get all running Services
Get-Service | Where-Object {$_.Status -eq "Running"}

# Get all enabled inbound firewall rules
Get-NetFirewallRule -Direction inbound -Enabled true


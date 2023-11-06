# Chewck OpenSSH installation (https://learn.microsoft.com/pt-br/windows-server/administration/openssh/openssh_install_firstuse?tabs=gui)
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'

## Install the OpenSSH Client if not installed
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

## Install the OpenSSH Server if not installed
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

# Start the sshd service
Start-Service sshd

# OPTIONAL but recommended:
Set-Service -Name sshd -StartupType 'Automatic'

# Confirm the Firewall rule is configured. It should be created automatically by setup. Run the following to verify
if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
}

# Create your own SSH Key to identify and validade your signature over any service connection request
ssh-keygen -t ed25519 -b 4096 -C "seu_email@exemplo.com"

# Verify if ssh Agent Service is running
Get-Service ssh-agent

# Since, by default, the ssh-agent service is disabled. Configure it to start automatically.
# Make sure you're running as an Administrator.
Get-Service ssh-agent | Set-Service -StartupType Automatic

# Start the service
Start-Service ssh-agent

# Confirm now it is Running
Get-Service ssh-agent

# Now load your key files into ssh-agent
C:\Windows\System32\OpenSSH\ssh-add $env:USERPROFILE\.ssh\id_ed25519
or
powershell ssh-add $env:USERPROFILE\.ssh\id_ed25519

## Local dos arquivos de configuração ssh de um usuário
dir $env:USERPROFILE\.ssh

## Local dos arquivos de configuração do ssh server
dir $env:programdata\ssh\

##  Local dos arquivos do Openssh
dir $env:systemdrive\Windows\System32\openssh

## Define powershell as standard shell for ssh
#New-ItemProperty -Path "HKEY_LOCAL_MACHINE\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

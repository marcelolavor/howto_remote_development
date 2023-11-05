
# Search for the latest version of PowerShell
winget search Microsoft.PowerShell

# Check the current installed release
$PSVersionTable.PSVersion

# Install latest PowerShell 
winget install --id Microsoft.Powershell --source winget

# Install PowerShell Preview
winget install --id Microsoft.Powershell.Preview --source winget

# Atualizar as variáves de ambiente numa sessão PS
$env:PATH = [System.Environment]::GetEnvironmentVariable('PATH', 'User') + ";" + [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') 

# Listar os valores do PATH
[System.Environment]::GetEnvironmentVariable('PATH', 'User') + ";" + [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') -split ";"


Reference:
https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#install-powershell-using-winget-recommended


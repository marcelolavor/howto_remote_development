# Config curl to upgrade

## Verifica a versão disponível
winget search cURL.cURL

## Instala a última versão
winget install --id=cURL.cURL  -e

# ADICIONAR REFERÊNCIAS AO CURL PARA EXECUÇÂO
$curl_home = "C:\Users\<your-user>\AppData\Local\Microsoft\WinGet\Packages\<curl-bin-path>"

# LOCAL USER
[Environment]::SetEnvironmentVariable("CURL_HOME", $curl_home, "User") # Adicionar variável de ambiente CURL_HOME
[Environment]::SetEnvironmentVariable("PATH", $curl_home + ";" + [Environment]::GetEnvironmentVariable("PATH", "User") , "User") # Adicionar o cURL ao PATH
[Environment]::GetEnvironmentVariable("PATH", "User") -split ";" # Verificar adição

# LOCAL MACHINE (OPCIONAL)
[Environment]::SetEnvironmentVariable("CURL_HOME", $curl_home, "Machine") # Adicionar variável de ambiente CURL_HOME
[Environment]::SetEnvironmentVariable("PATH", $curl_home + ";" + [Environment]::GetEnvironmentVariable("PATH", "Machine") , "Machine") # Adicionar o cURL ao PATH
[Environment]::GetEnvironmentVariable("PATH", "Machine") -split ";" # Verificar adição

<<<<<<< HEAD
# Apply system & user environment variables to the current command line session
$env:PATH = [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') + ";" + [System.Environment]::GetEnvironmentVariable('PATH', 'User')
=======
# Atualizar as variáves de ambiente numa sessão PS
$env:PATH = [System.Environment]::GetEnvironmentVariable('PATH', 'User') + ";" + [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') 

# Listar os valores do PATH
[System.Environment]::GetEnvironmentVariable('PATH', 'User') + ";" + [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') -split ";"
>>>>>>> a988ebaf02ac244400d3960baec681f69a748985

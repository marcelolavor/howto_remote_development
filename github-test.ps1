# Testa conexão física com o GitHub
ssh -Tv git@github.com

# Eleva o nível de debug para identificação de falhas
SET GIT_TRACE=1
SET GIT_TRACE_PACKET=1
SET GIT_TRACE_CURL_NO_DATA=1
SET GIT_CURL_VERBOSE=1

Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
# Testa conexão física com o GitHub
ssh -Tv git@github.com

# Eleva o nível de debug para identificação de falhas
SET GIT_TRACE=1
SET GIT_TRACE_PACKET=1
SET GIT_TRACE_CURL_NO_DATA=1
SET GIT_CURL_VERBOSE=1

Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'

## Define os CYPHERs aceitos para se conectar com o GitHub
git config --global http.sslCiphers 'TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384'

## Define o repo remote no GitHub para o projeto
git remote set-url origin "git@bitbucket.agile.corp.edp.pt:7999/suem/lib-cloud-queue.git"

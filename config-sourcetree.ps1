# SourceTree Config

# 1 - SourceTree Config only accepts PuTTY SSH Key formats, so you have to convert any ssh key that is not in .ppk file format
# 2 - Go to "Tools > Create or Import SSH Keys > Load " and select all files option in the pop up windows and select the source file with your ssh private key and OK
# 3 - After the file be loaded and the Key be properly imported, select "Save Private Key", define a new file name with ".ppk" extention at the end
# 4 - Add the following file in your ".ssh" folder
```
# Configuração para o SourceTree demanda chave no formato Putty (ppk)
Host bitbucket.agile.corp.edp.pt
    HostName bitbucket.[CORPORATIVE DOMAIN]
    Port [PORT]]
	User [REPO USER NAME]]
    IdentityFile C:\Users\[YOUR WINDOWS USER]]\.ssh\[YOUR SSH PUTTY PRIVATE KEY].ppk

Host *
    ForwardAgent yes
```
# 5 - Come back to the SourceTree interface and go to "Tools > Launch SSH Agent", select the new file with ".ppk" extention at the end and OK.
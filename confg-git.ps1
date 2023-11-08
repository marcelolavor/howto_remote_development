# GIT Configuration
setx USER_AT_HOST="<your@email>"
setx PUBKEYPATH="$HOME/.ssh/id_ed25519.pub"

# Add the following file in your ".ssh" folder
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
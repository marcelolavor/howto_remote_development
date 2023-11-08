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

# Test physical connection to the Bitbucket server
ssh -Tv <SUA-CONTA>@bitbucket.<HTTP-Bitbucket-CORPORATIVO> -p <port>

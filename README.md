# howto_remote_development

This repository contains PowerShell scripts and configuration examples to set up a Windows machine for remote development. The scripts help you manage SSH keys, install common tools, and connect to services like GitHub, Bitbucket, and remote virtual machines.

## Environment

The instructions are aimed at Windows 10/11. Most commands run from PowerShell, and optional scripts enable Windows Subsystem for Linux (WSL) and Visual Studio Code extensions for a smoother workflow.

## Repository contents

| Script | Purpose |
| ------ | ------- |
| `config-powershell.ps1` | Install or update PowerShell and refresh the PATH. |
| `config-curl.ps1` | Install cURL using winget and add it to the PATH. |
| `config-ssh.ps1` | Install OpenSSH, generate SSH keys, and enable `ssh-agent`. |
| `config-wsl.ps1` | Install WSL and choose a Linux distribution. |
| `config-vsc.ps1` | List recommended Visual Studio Code extensions. |
| `confg-git.ps1` | Configure Git user settings and example SSH config. |
| `config- github.ps1` | Troubleshoot GitHub connectivity and set the remote URL. |
| `config-sourcetree.ps1` | Use PuTTY-formatted keys with SourceTree. |
| `conn-bitbucket.ps1` | Test SSH connectivity to Bitbucket. |
| `conn-vm.ps1` | Copy your public key to a remote VM. |

## Setup overview

1. Run `config-powershell.ps1` to ensure you have the latest PowerShell.
2. Execute `config-curl.ps1` to install cURL and update environment variables.
3. Use `config-ssh.ps1` to install OpenSSH, create keys, and start the `ssh-agent` service.
4. Configure Git and GitHub with `confg-git.ps1` and `config- github.ps1`.
5. Follow `config-sourcetree.ps1` if you use SourceTree.
6. Add WSL support with `config-wsl.ps1` and install your preferred distribution.
7. Review `config-vsc.ps1` to install Visual Studio Code extensions.
8. Test connections using `conn-bitbucket.ps1` or `conn-vm.ps1`.

## Typical workflow

1. Open PowerShell as Administrator.
2. Run the configuration scripts in the order above, adjusting variables for your environment.
3. Verify SSH connectivity with the `conn-*` scripts.
4. Launch Visual Studio Code and install the recommended extensions.

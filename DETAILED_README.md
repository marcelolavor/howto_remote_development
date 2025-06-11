# Remote Development Guide

This repository contains several PowerShell scripts to configure a Windows workstation for remote development. The scripts automate the installation and configuration of common tools (PowerShell, cURL, SSH, WSL) and show how to connect to remote services like Bitbucket and virtual machines.

## Environment

The instructions are focused on Windows 10/11 with optional Windows Subsystem for Linux (WSL) and Visual Studio Code. Most scripts are written for PowerShell.

## Repository Contents

| Script | Purpose |
| ------ | ------- |
| `config-powershell.ps1` | Install or update PowerShell and refresh environment variables. |
| `config-curl.ps1` | Install cURL using winget and add it to the PATH. |
| `config-ssh.ps1` | Install OpenSSH client/server, configure the service, and create SSH keys. |
| `config-wsl.ps1` | Install WSL and choose a Linux distribution. |
| `config-vsc.ps1` | Suggest Visual Studio Code extensions for remote development. |
| `confg-git.ps1` | Configure Git user variables and example SSH settings. |
| `config- github.ps1` | Troubleshoot GitHub connection issues and set remote repository URL. |
| `config-sourcetree.ps1` | Steps to use PuTTY formatted SSH keys with SourceTree. |
| `conn-bitbucket.ps1` | Example SSH config and command to test Bitbucket connectivity. |
| `conn-vm.ps1` | Copy your public key to a remote VM to enable passwordless login. |

## Setup Overview

1. **PowerShell** - Run `config-powershell.ps1` to install the latest stable and preview versions of PowerShell. It also refreshes your `PATH` so the new version is immediately available.
2. **cURL** - Execute `config-curl.ps1` to install cURL through winget. The script shows how to set `CURL_HOME` and update the `PATH` for both user and machine scopes.
3. **OpenSSH** - Use `config-ssh.ps1` to install OpenSSH client/server, generate an Ed25519 key, and enable the `ssh-agent` service so your keys load automatically.
4. **Git and GitHub** - `confg-git.ps1` sets Git environment variables and gives an example `ssh` configuration. `config- github.ps1` includes extra debug options and shows how to define the remote repository URL.
5. **SourceTree** - If you use SourceTree, follow `config-sourcetree.ps1` to convert keys to PuTTY format and configure the application to use them.
6. **WSL** - Run `config-wsl.ps1` to install the Windows Subsystem for Linux and select a distribution (e.g., Ubuntu 22.04).
7. **Visual Studio Code** - `config-vsc.ps1` lists recommended extensions such as Remote - SSH, WSL, and Dev Containers.
8. **Connecting to Services** - `conn-bitbucket.ps1` and `conn-vm.ps1` show how to test SSH connectivity to Bitbucket or a virtual machine and copy your public key to the server.

## Typical Workflow

1. Open PowerShell as Administrator.
2. Execute the configuration scripts in the order above, adjusting variables like usernames, hostnames, and paths.
3. Verify SSH connectivity to your remote services using the `conn-*` scripts.
4. Launch Visual Studio Code and install the suggested extensions for a smooth remote experience.

These scripts serve as a starting point. Customize them to match your corporate environment and security policies.

# setup-new-computer-script

adapted from:

- https://gist.github.com/mrlesmithjr/f3c15fdd53020a71f55c2032b8be2eda
- https://github.com/vendasta/setup-new-computer-script

## Prerequisites

**Signin to App Store**, since we'll be installing apps via CLI

## Usage

```bash
./setup-new-computer.sh
```

## Post Installation Instructions

### Add SSH key to GitHub

https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

### Set iTerm2 config

- Preferences > Profile > General > Command, select `Custom Shell` from drop-down menu, and set value to `/usr/local/bin/fish`
  - for M1 mac, set it as `/opt/homebrew/bin/fish`
- Preferences > general > profiles > general > working directory > select `Reuse previous session's directory`
- Preferences > Profile > Text > Font > select `MesloLGS Nerd Font Mono`

### Misc MacOS config

- set `tap to single click`
- set `three-finger drag`

### homebrew

```bash
# List what needs to be updated
brew update
brew outdated

# Upgrade a specific app/formula (example: git)
brew upgrade git

# Upgrade everything
brew upgrade

# List previous versions installed (example: git)
brew switch git list

# Roll back to a currently installed previous version (example: git 2.25.0)
brew switch git 2.25.0
```

## vscode

### Backup extensions list

```
code --list-extensions | xargs -L 1 echo code --install-extension > ext_install.sh
```

### Backup config

```
cp "/users/$USER/Library/Application Support/Code/User/keybindings.json" .
cp "/users/$USER/Library/Application Support/Code/User/settings.json" .
```

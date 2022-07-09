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

### Install fish plugins

```bash
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install jethrokuan/z
fisher install franciscolourenco/done
fisher install jorgebucaran/autopair.fish
```

~~### Setup nvim plugins~~
~~If you didn't copy existing github ssh key, add your ssh key to github and install nvim plugins manually.~~

## Post Installation Tips

### pyenv

```bash
# lisit available python versions
pyenv install --list

# install specific version
pyenv install 3.8.0

# list installed versions
pyenv versions

# activate new env
pyenv shell 3.8.0 # support multiple version

# config venv
pyenv virtualenv 3.8.0 my-data-project
```

### pipenv

```bash
pipenv --python 3.7
pipenv install jupyterlab==2.2.9
pipenv install

pipenv --rm

pipenv run jupyter lab
pipenv run python main.py
```

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

### pre-commit

```bash
# run pre-commit hooks for all files in folder
$ pre-commit run --files **/*.*

# run pre-commit hooks for all files in the repo
$ pre-commit run --all-files

# enable for downloaded repo
$ git config --global init.templateDir ~/.git-template
$ pre-commit init-templatedir ~/.git-template
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

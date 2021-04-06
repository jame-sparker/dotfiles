# dotfiles
#### For maintaining dot files in my computer

## Usage

### Adding files 
```
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

2. Setting up on other computer
```
git clone --recurse-submodules -j8 --bare https://github.com/jame-sparker/dotfiles.git $HOME/.dotfiles
alias dotfiles 
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles submodule update --init --recursive
dotfiles checkout
```

# Dot files to build your home dir on Linux

## Installation
Install git on your system if you don't have one yet.
Type the commands below one by one from your terminal:
```
1. cd ~
2. git init
3. export https_proxy=http://your-proxy.example.com:8000 (optional)
4. git remote add origin https://github.com/byang822/preferHome.git
5. git fetch origin
6. git checkout -t -f origin/dev
7. vi .vimrc
  - :PluginInstall
```

## Instruduction
The repo includes following files/directories:
1. .bash_profile
  - export some env variables, such as the tomcat home, CDPATH, proxy and so on
  - config ssh agent
2. .bashrc
3. .dir_colors.screen
  - customized colors for screen term
4. .dir_colors.xterm
  - customized colors for xterm term
5. .editorconfig
  - help your format text files
6. .inputrc
  - some key binding
7. .screenrc
  - screen configurations
8. .tmux.conf
  - tmux configurations
9. .vimrc
  - vim configurations
10. .vim
  - solarized vim colorscheme
  - vundle
  - vim plugins
11. bin
  - a script file to test output colors

For detailed configuration items, please refer to the comments above it.


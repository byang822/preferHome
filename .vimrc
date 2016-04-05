set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'moll/vim-node' 
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'elzr/vim-json'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" format javascript by ctrl-f
map <c-f> :call JsBeautify()<cr>

set nu
set ts=2
" detect file type by ':set filetype?'
" 'z+r' -> collapse all
" 'z+m' -> expand all
" 'z+c' -> collapse current(cursor)
" 'z+o' -> expand current(cursor)
autocmd FileType conf setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#.*'
autocmd FileType dosini setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#.*'
autocmd FileType yaml setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*\\#.*'

autocmd FileType html setlocal equalprg=tidy\ -config\ ~/.tidyrc\ -quiet

if has("gui_running")
  colorscheme default
else
 " perfect color scheme
  colorscheme solarized
endif

" rebind up, down, left, right
" now use 'h' to get in insert mode
noremap i k
noremap k j
noremap j h
noremap h i

" use F10 to toggle on/off paste mode, if paste mode is on, autoindent will be
" disabled
set pastetoggle=<F10>

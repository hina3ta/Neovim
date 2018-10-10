"行数表示"
set number

"うんち作らない"
set noswapfile

"うんち作らない"
set nobackup

"syntaxハイライトon"
syntax on

"スマートインデントをオンにする"
set smartindent

"マウス有効化"
set mouse=a

"shellをzshにする"
set sh=zsh
1
"プラグイン用の設定"
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('zchee/deoplete-jedi')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif
 let g:deoplete#enable_at_startup = 1

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

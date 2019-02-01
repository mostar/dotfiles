" test
" v4 230919 from r python adjustments
" v3 240217 from r l user : only doc The arrow keys end...
" v2 300616 from a1 : add Vundle plagin manager
" v1 161215 from r l root :
"

" Vundle plagin manager   vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vdebug 
Bundle "joonty/vdebug"
" fail to run vdebug see WIKIR63-300616 on port 9000 move to 9002
"let g:vdebug_options={} let g:vdebug_options['port']=9002
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options['port']=9002

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end of Vundle  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

set number

" pathogen plugin manager
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"
" folding
set foldlevel=99
set foldmethod=marker
set foldmarker={,}
"
" python folding by 2 blanks
" 230918 cuase ident problen after new line let comment out:
"autocmd Filetype python set foldmethod=indent shiftwidth=2
"some time python code have tabs expandtab replace new tab it with space and it don't compile
"  set noexpandtab
"not realy help, some mess google "vim python file disable expandtab", but look like tab+tab make the 1st tab

if has("gui_running")
  " the GUI is running or about to start
  " set windows like
  source $VIMRUNTIME/mswin.vim
  behave mswin
  " The arrow keys end visual mode rather than extending the selection because of behave mswin. so fixing it
  " http://vim.wikia.com/wiki/Make_arrow_keys_work_in_visual_mode_under_Windows
  "   it cause other problem so i remove it!
  " set keymodel-=stopsel
else
  " this is console vim
endif 

"
set mouse=a
set nowrap
"
" Highlighting search matches
set hlsearch
"
" tab completion
set wildmode=longest,list,full
set wildmenu
"
" xdebug
"let g:vdebug_options = {}
"let g:vdebug_options["port"] = 9001 <<<< not work
"let g:debuggerPort = 10001  <<< lets try
"let g:vdebug_options["path_maps"] = {
"\    "/home/sites/worker/crm51": "/home/user/.gvfs/SFTP\ for\ user\ on\ 10.200.1.4/home/sites/worker/crm51"
"\}
"
" colorscheme evening
if has('gui_running')
    " GUI colors
    colorscheme default
    set guifont=Monospace\ 11
else
    " Non-GUI (terminal) colors
    colorscheme evening
endif

" add syntax=php *.trade
autocmd BufNewFile,BufRead *.trade set syntax=php


" v2 300616 from a1 add Vundle plagin manager
" v1 161215 from r l root
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
if has("gui_running")
  " the GUI is running or about to start
  " set windows like
  source $VIMRUNTIME/mswin.vim
  behave mswin
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

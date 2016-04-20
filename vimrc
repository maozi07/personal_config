" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Chiel92/vim-autoformat'

call vundle#end()
filetype plugin indent on    " required

syntax on
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
"python 缩进4空格
autocmd FileType python setlocal et sta sw=4 sts=4
"设置剪贴板共享
set clipboard+=unnamed
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
"不使用空格替代tab
set noexpandtab
"
set showmatch
"show line number
set number
"show ruler
set ruler

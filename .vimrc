" Use color syntax highlighting.
syntax on

set encoding=utf-8
set hlsearch
set incsearch
set ts=2
set shiftwidth=2        " Indent by 4 columns (for C functions, etc).
set autoindent
set backspace=2         " Allows insert-mode backspace to work as one expects
set cindent
set expandtab
set nu
set paste

colorscheme desert

function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "#-*- coding:utf8 -*-")
    call append(2, "# Author Shi Xing <shi-xing-xing@163.com> " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
    endf
    autocmd bufnewfile *.py call HeaderPython()

autocmd FileType python setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

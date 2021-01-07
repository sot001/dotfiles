set nocompatible              " required
filetype off                  " required

syntax enable

filetype plugin indent on    " required

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225,E302,E303'

" vim-terraform settings
let g:terraform_align=1
let g:terraform_fmt_on_save=1


set tabstop=2
set expandtab
set encoding=utf-8
syntax on

" F1: toggle autoindent
nnoremap <F1> :set autoindent!<CR>
" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

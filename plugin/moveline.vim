scriptencoding utf-8

if exists('g:loaded_moveline')
    finish
endif
let g:loaded_moveline = 1

let s:save_cpo = &cpo
set cpo&vim

nmap <C-j> :call moveline#down()<CR>
nmap <C-k> :call moveline#up()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

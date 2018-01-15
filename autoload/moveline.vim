scriptencoding utf-8

if !exists('g:loaded_moveline')
    finish
endif
let g:loaded_moveline = 1

let s:save_cpo = &cpo
set cpo&vim

function! moveline#moveline()
  echo "line move!"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

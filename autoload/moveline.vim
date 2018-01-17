scriptencoding utf-8

if !exists('g:loaded_moveline')
    finish
endif
let g:loaded_moveline = 1

let s:save_cpo = &cpo
set cpo&vim

function! moveline#up()
  let current_line = line('.')
  if current_line == "1"
  elseif current_line == line('$')
    :execute ":normal ddkp"
  else
    :execute ":normal ddk\<S-p>"
  endif
endfunction

function! moveline#down()
  :execute ":normal ddp"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

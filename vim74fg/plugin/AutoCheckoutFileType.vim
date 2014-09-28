"
" ================================================================================
" Author:          weiwench(saberwen@hotmail.com)
" Create Time:     2013-10-07 12-51 WEEK_1
" Modify Time:     2013-10-07 12-51 WEEK_1
" File Name:       .vim/plugin/AutoCheckoutFileType.vim
" Description:     
" ================================================================================


"----------------------------------------------------------------------
" for python
"----------------------------------------------------------------------
function SetPythonEnv()
	set tabstop=4
	set shiftwidth=4
	set expandtab
	set softtabstop=4
	set autoindent
	set smartindent
	nmap <F9> :w<CR>:!python %
endfunction
"----------------------------------------------------------------------

"----------------------------------------------------------------------
" for shell script
"----------------------------------------------------------------------
function SetShellEnv()
	nmap <F9> :w<CR>:!sh %
endfunction
"----------------------------------------------------------------------

"----------------------------------------------------------------------
" for cmake
"----------------------------------------------------------------------
function SetCmakeEnv()
    silent! setfiletype cmake 
endfunction
"----------------------------------------------------------------------


autocmd BufEnter,BufNewFile,BufRead * exec ":call CheckoutFileType()"

function CheckoutFileType()

	if expand("%:t") == 'CMakeLists.txt' || expand("%:t") == 'CMakeCache.txt' 
		silent! exec "set filetype=cmake"
    elseif expand("%:e") == 'S'
		silent! exec "set filetype=c"
    elseif &filetype == 'c'
        inoremap " ""<ESC>i
        inoremap ' ''<ESC>i
        inoremap ( ()<ESC>i
        inoremap [ []<ESC>i
	elseif &filetype == 'python' || &filetype == 'pyc' || &filetype == 'pyw'  
        silent! exec "call SetPythonEnv()"
    elseif &filetype == 'sh'
        silent! exec "call SetShellEnv()"
	else
		autocmd BufEnter *.txt setfiletype txt
		autocmd BufNewFile,BufRead *.cmake,*.cmake.in exec ":call SetCmakeEnv()"
	endif


endfunction

	


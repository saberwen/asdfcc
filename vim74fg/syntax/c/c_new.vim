
" syn match         cOperation  display  "\(==\|->\|!=\|>=\|<=\|=\~|\!\~|\<\|>\|=\)[?#]\{0,2}"
" syn match         cOperation  display  "||\|&&\|[-+.]"
syn match         cOperation   display  ",\|\.\|||\|==\|&&\|=\|+\|++\|-\|--\|&\|{\|}"
hi cOperation     cterm=NONE  ctermfg=093   ctermbg=194       guibg=#D7FFD7     guifg=#8700FF
 
syn match  myCtype display   "\<HI_[SU163028]\+\>"
hi myCtype  cterm=NONE  ctermfg=160   ctermbg=194          guibg=#D7FFD7     guifg=#D70000

"syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
"syn match   cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
"syn match   cFunction "\<\a\+\w\+\>\s*("ms=s-3,me=e-1
syn match   cFunction "\<\a\+\w\+\>\s*("me=e-1
hi  cFunction   cterm=NONE       ctermfg=202              ctermbg=194          guibg=#D7FFD7     guifg=#FF5F00


"syn match   cDefineType "\<define\s*\a\+\w\+\>"ms=s+6
"hi  cDefineType   cterm=NONE       ctermfg=129              ctermbg=194          guibg=#D7FFD7     guifg=#AF00FF

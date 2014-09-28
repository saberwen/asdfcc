" File:    cnwei.vim
" Version: 1.0
" Anthor:  saberwen <saberwen@hotmail.com>
" Description: colorscheme for vim
" ________________________________________


hi clear

set background=dark

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="cnwei"


"
" Support for 256-color terminal
"
if &t_Co > 255
	
"	hi  Boolean       cterm=NONE       ctermfg=NONE            ctermbg=NONE 
"	hi  Boolean       cterm=NONE       ctermfg=NONE            ctermbg=NONE 
"	hi  Boolean       cterm=NONE       ctermfg=NONE            ctermbg=NONE 
"	hi  Normal        cterm=NONE       ctermfg=252             ctermbg=235 
	hi  Normal        cterm=NONE       ctermfg=000             ctermbg=194 
	hi  Comment       cterm=NONE       ctermfg=160             ctermbg=NONE 
"	hi  Comment       cterm=NONE       ctermfg=040             ctermbg=NONE 
	hi  CursorLine    cterm=NONE       ctermfg=NONE            ctermbg=237 
	hi  CursorColumn  cterm=NONE       ctermfg=NONE            ctermbg=237 
	hi  LineNr        cterm=NONE       ctermfg=180             ctermbg=235 
	hi  Cursor        cterm=NONE       ctermfg=NONE            ctermbg=NONE 

	hi  VertSplit     cterm=bold       ctermfg=237             ctermbg=237 
	hi  VisualNOS     cterm=NONE       ctermfg=NONE            ctermbg=237 
	hi  Visual        cterm=NONE       ctermfg=NONE            ctermbg=237 

	hi  DiffAdd       cterm=NONE       ctermfg=NONE            ctermbg=170 
	hi  DiffChange    cterm=NONE       ctermfg=244             ctermbg=lightgreen 
	hi  DiffDelete    cterm=NONE       ctermfg=089             ctermbg=147 
	hi  DiffText      cterm=NONE       ctermfg=NONE            ctermbg=215 

	hi  Boolean       cterm=bold       ctermfg=Blue            ctermbg=NONE 
	hi  Character     cterm=NONE       ctermfg=NONE            ctermbg=blue 
	hi  String        cterm=NONE       ctermfg=175             ctermbg=NONE 
	hi  Number        cterm=NONE       ctermfg=160             ctermbg=NONE 
"	hi  Number        cterm=NONE       ctermfg=lightgreen      ctermbg=NONE 
	hi  Float         cterm=NONE       ctermfg=lightgreen      ctermbg=NONE 
	hi  Character     cterm=NONE       ctermfg=200             ctermbg=NONE 
	hi  Conditional   cterm=bold       ctermfg=160             ctermbg=NONE 
	hi  Repeat        cterm=NONE       ctermfg=160             ctermbg=NONE 

	hi  Label         cterm=NONE       ctermfg=220             ctermbg=NONE 
	hi  Keyword       cterm=bold       ctermfg=160             ctermbg=NONE 
	hi  Include       cterm=NONE       ctermfg=215             ctermbg=NONE 
	hi  Define        cterm=bold       ctermfg=150             ctermbg=Blue 

	"___ #define ___
	hi  Macro         cterm=bold       ctermfg=004             ctermbg=NONE 
	
	"___ static register volatitle ___
	hi  StorageClass  cterm=NONE       ctermfg=045             ctermbg=NONE
	"___ struct union enum ___
	hi  Structure     cterm=NONE       ctermfg=175             ctermbg=NONE
	"___ Typedef ___
	hi  Typedef       cterm=NONE       ctermfg=180             ctermbg=NONE

	"___ Special %s \n %d  ___
	hi  SpecialChar   cterm=NONE       ctermfg=169             ctermbg=NONE
	"___ Special things inside a comment  ___
	hi  SpecialComment cterm=NONE      ctermfg=180             ctermbg=black
	"___ Special things inside a comment  ___
	hi  Delimiter     cterm=NONE       ctermfg=160             ctermbg=NONE
	

" ________________________________________________________________________
" C highlight
" ________________________________________________________________________

	hi  Operator      cterm=NONE       ctermfg=170             ctermbg=NONE 

" ________________________________________________________________________
	hi  Constant     cterm=bold       ctermfg=174              ctermbg=NONE
	hi  Directory    cterm=NONE       ctermfg=112              ctermbg=black
	hi  Error        cterm=NONE       ctermfg=230              ctermbg=160
	hi  ErrorMsg     cterm=NONE       ctermfg=230              ctermbg=black
	hi  Exception    cterm=NONE       ctermfg=112              ctermbg=black
	hi  FoldColumn   cterm=NONE       ctermfg=239              ctermbg=235
	hi  Folded       cterm=NONE       ctermfg=239              ctermbg=black
	"___ Makefile 变量 ___
	hi  Identifier   cterm=NONE       ctermfg=118              ctermbg=NONE
	"___ Makefile 目标 ___
	hi  Function     cterm=NONE       ctermfg=076              ctermbg=NONE
	"___ Makefile ifeq else endif ___
	hi  PreCondit    cterm=bold       ctermfg=170              ctermbg=NONE 
	hi  Ignore       cterm=NONE       ctermfg=224              ctermbg=black
	hi  IncSearch    cterm=NONE       ctermfg=144              ctermbg=black
	hi  Search       cterm=NONE       ctermfg=240              ctermbg=227
	hi  MatchParen   cterm=bold       ctermfg=016              ctermbg=208
	hi  MoreMsg      cterm=NONE       ctermfg=185              ctermbg=black
	hi  ModeMsg      cterm=NONE       ctermfg=lightgreen       ctermbg=235
"	hi  ModeMsg      cterm=NONE       ctermfg=000              ctermbg=160

	hi  StatusLine   cterm=NONE       ctermfg=046              ctermbg=235
	hi  StatusLineNC cterm=NONE       ctermfg=096              ctermbg=237

	hi  WarningMsg   cterm=NONE       ctermfg=096              ctermbg=black

"	hi  NonText      cterm=NONE       ctermfg=051              ctermbg=000 

	hi  PmenuSel     cterm=NONE       ctermfg=160              ctermbg=250 

	hi  Pmenu        cterm=NONE       ctermfg=061              ctermbg=250 



end

" _________________________________________

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

let g:colors_name="cGreenEyes"


"
" Support for 256-color terminal
"
	
"----------------------------------------------------------------------------------
" 红------绿------黄------蓝------粉红------青蓝------灰白------灰黑------紫---------棕色---------橙色--------黑
" 001     002     003     004     005       006       007       008       053 - 057  -095         130         232     
" 009     022     011     012     013       014       015       016       060 - 063  -101         131         233
" 010     023     052     017     125       030       102       059       089 - 093  -137         166         234
" 088     028     058     018     132       037       109                -096 - 099  -138         167         235
" 124     029     064     019     133       044       145                 103        -143         172         236         
" 160     034     094     020     162       045       188                 104        -144         173         237       
" 161     035     100     021     163       051      -230                 105        -187         174         238
" 196     036     106     024     168       123      -231                 110                     175         239
" 197     040     136     025     169       152                           111                     179         240
"         041     142     026     198       153                           126                     180 
"         042     178     027     199       159                           127                     181  
"         043    -185     031     205       189                           128                     202 
"         046    -186     032     206       195                           129                     203             
"         047     190     033     211                                     134                     204  
"         048             038     213                                     135                     208  
"         049     220     039    -217                                     139                     209  
"         050     226     066-69  218                                     141                     210  
"        -065     227     073-75  219                                     146                     215 - 214 
"         070    -228     080    -224                                     147                     216                   
"        -071    -229     081                                             164                     221  
"         072             086                                             165                     222                 
"         076             087                                             170                     223                 
"         077             116                                             171                            
"        -078             117                                             176                            
"         079                                                             177                                     
"         082                                                             182                                   
"         083                                                             183                                   
"        -084                                                             200                                   
"         085                                                             201                                   
"        -107                                                             207                                   
"        -108                                                             212                                    
"         112                                                             225                                   
"        -113                                                                                                
"        -114                                                                                                
"         115                                                                                                
"         118                                                                                                
"        -119                                                                                                
"        -120                                                                                                
"        -121                                                                                                
"         122                                                                                                
"         148                                                                                                
"        -149
"        -150
"        -151
"         154
"         155
"        -156
"        -157
"         158
"         184
"         191
"        -192
"        -193
"        -194
"        -194
"----------------------------------------------------------------------------------
	hi  Normal        cterm=NONE       ctermfg=022             ctermbg=194      guibg=#D7FFD7     guifg=#005F00
	"hi  Comment       cterm=NONE       ctermfg=160             ctermbg=229     guibg=#FFFFAF     guifg=#D70000
	hi  Comment       cterm=NONE       ctermfg=069             ctermbg=NONE     guibg=NONE     guifg=#5F87FF
	hi  CursorLine    cterm=NONE       ctermfg=NONE            ctermbg=119     guibg=#87FF5F     guifg=NONE
	hi  CursorColumn  cterm=NONE       ctermfg=NONE            ctermbg=229      guibg=#FFFFAF     guifg=NONE

"----------------------------------------------------------------------------------
" Line number
"----------------------------------------------------------------------------------
	hi  LineNr        cterm=NONE       ctermfg=172             ctermbg=194      guibg=#D7FFD7     guifg=#D78700

	hi  Cursor        cterm=NONE       ctermfg=195             ctermbg=197      guibg=#FF005F     guifg=#D7FFFF

	hi  VertSplit     cterm=NONE       ctermfg=157             ctermbg=157      guibg=#AFFFAF     guifg=#AFFFAF
	hi  VisualNOS     cterm=NONE       ctermfg=NONE            ctermbg=194      guibg=#D7FFD7     guifg=NONE
	hi  Visual        cterm=NONE       ctermfg=NONE            ctermbg=195      guibg=#D7FFFF     guifg=NONE

	hi  DiffAdd       cterm=NONE       ctermfg=NONE            ctermbg=170      guibg=#D75FD7     guifg=NONE
	hi  DiffChange    cterm=NONE       ctermfg=244             ctermbg=lightgreen      guibg=lightgreen     guifg=#808080
	hi  DiffDelete    cterm=NONE       ctermfg=089             ctermbg=147      guibg=#AFAFFF     guifg=#87005F
	hi  DiffText      cterm=NONE       ctermfg=NONE            ctermbg=215      guibg=#FFAF5F     guifg=NONE

	hi  Boolean       cterm=BOLD       ctermfg=BLUE            ctermbg=NONE      guibg=NONE     guifg=BLUE
	hi  Character     cterm=NONE       ctermfg=NONE            ctermbg=blue      guibg=blue     guifg=NONE
	hi  String        cterm=BOLD       ctermfg=175             ctermbg=NONE      guibg=NONE     guifg=#D787AF
	hi  Number        cterm=NONE       ctermfg=160             ctermbg=NONE      guibg=NONE     guifg=#D70000
	hi  Float         cterm=NONE       ctermfg=160             ctermbg=NONE      guibg=NONE     guifg=#D70000
	hi  Character     cterm=NONE       ctermfg=200             ctermbg=NONE      guibg=NONE     guifg=#FF00D7
	hi  Special       cterm=NONE       ctermfg=202             ctermbg=NONE      guibg=NONE     guifg=#FF5F00


"----------------------------------------------------------------------------------
" return break hi 
"----------------------------------------------------------------------------------
	hi  Statement     cterm=BOLD       ctermfg=130             ctermbg=NONE      guibg=NONE     guifg=#AF5F00

	hi  Conditional   cterm=BOLD       ctermfg=160             ctermbg=NONE      guibg=NONE     guifg=#D70000
	hi  Repeat        cterm=BOLD       ctermfg=160             ctermbg=NONE      guibg=NONE     guifg=#D70000

	hi  Label         cterm=BOLD       ctermfg=209             ctermbg=NONE      guibg=NONE     guifg=#FF875F
	hi  Keyword       cterm=BOLD       ctermfg=160             ctermbg=NONE      guibg=NONE     guifg=#D70000
	hi  Include       cterm=NONE       ctermfg=215             ctermbg=NONE      guibg=NONE     guifg=#FFAF5F
	hi  Define        cterm=BOLD       ctermfg=150             ctermbg=Blue      guibg=Blue     guifg=#AFD787

	hi  PreProc       cterm=BOLD       ctermfg=130             ctermbg=NONE      guibg=NONE     guifg=#AF5F00


"----------------------------------------------------------------------------------
" #define 
"----------------------------------------------------------------------------------
	hi  Macro         cterm=BOLD       ctermfg=093             ctermbg=NONE      guibg=NONE     guifg=#8700FF
	
"----------------------------------------------------------------------------------
" static register volatitle 
"----------------------------------------------------------------------------------
	hi  StorageClass  cterm=BOLD       ctermfg=215             ctermbg=NONE     guibg=NONE     guifg=#FFAF5F

"----------------------------------------------------------------------------------
" struct union enum 
"----------------------------------------------------------------------------------
	hi  Structure     cterm=BOLD       ctermfg=166             ctermbg=NONE     guibg=NONE     guifg=#D75F00

"----------------------------------------------------------------------------------
" Typedef 
"----------------------------------------------------------------------------------
	hi  Typedef       cterm=BOLD       ctermfg=136             ctermbg=NONE     guibg=NONE     guifg=#AF8700

"----------------------------------------------------------------------------------
" Type int char 
"----------------------------------------------------------------------------------
	hi  Type          cterm=BOLD       ctermfg=140             ctermbg=NONE     guibg=NONE     guifg=#AF87D7

"----------------------------------------------------------------------------------
" Special %s \n %d  
"----------------------------------------------------------------------------------
	hi  SpecialChar   cterm=NONE       ctermfg=199             ctermbg=NONE     guibg=NONE     guifg=#FF00AF

"----------------------------------------------------------------------------------
" Special things inside a comment  
"----------------------------------------------------------------------------------
	hi  SpecialComment cterm=NONE      ctermfg=180             ctermbg=black     guibg=black     guifg=#D7AF87

"----------------------------------------------------------------------------------
" Special things inside a comment  
"----------------------------------------------------------------------------------
	hi  Delimiter     cterm=NONE       ctermfg=160             ctermbg=NONE     guibg=NONE     guifg=#D70000
	

"----------------------------------------------------------------------------------
" C highlight
"----------------------------------------------------------------------------------

	hi  Operator      cterm=NONE       ctermfg=170             ctermbg=NONE      guibg=NONE     guifg=#D75FD7

"----------------------------------------------------------------------------------
	hi  Constant     cterm=BOLD       ctermfg=174              ctermbg=NONE     guibg=NONE     guifg=#D78787
	hi  Directory    cterm=NONE       ctermfg=160              ctermbg=NONE     guibg=NONE     guifg=#D70000
	hi  Error        cterm=NONE       ctermfg=160              ctermbg=197     guibg=#FF005F     guifg=#D70000
	hi  ErrorMsg     cterm=NONE       ctermfg=230              ctermbg=black     guibg=black     guifg=#FFFFD7
	hi  Exception    cterm=NONE       ctermfg=112              ctermbg=black     guibg=black     guifg=#87D700
	hi  FoldColumn   cterm=NONE       ctermfg=239              ctermbg=194     guibg=#D7FFD7     guifg=#4E4E4E
	hi  Folded       cterm=NONE       ctermfg=239              ctermbg=black     guibg=black     guifg=#4E4E4E
    hi  Title        cterm=NONE       ctermfg=166              ctermbg=NONE     guibg=NONE     guifg=#D75F00
"----------------------------------------------------------------------------------
" Makefile 变量 printf memcpy 全局变量 
"----------------------------------------------------------------------------------
	hi  Identifier   cterm=bold       ctermfg=034              ctermbg=NONE     guibg=NONE     guifg=#00AF00
"----------------------------------------------------------------------------------
" Makefile 目标
"----------------------------------------------------------------------------------
	hi  Function     cterm=NONE       ctermfg=065              ctermbg=NONE     guibg=NONE     guifg=#5F875F
"----------------------------------------------------------------------------------
" Makefile ifeq else endif 
"----------------------------------------------------------------------------------
	hi  PreCondit    cterm=bold       ctermfg=160              ctermbg=NONE      guibg=NONE     guifg=#D70000

	hi  Ignore       cterm=NONE       ctermfg=224              ctermbg=black     guibg=black     guifg=#FFD7D7
	hi  IncSearch    cterm=NONE       ctermfg=144              ctermbg=black     guibg=black     guifg=#AFAF87
	hi  Search       cterm=NONE       ctermfg=240              ctermbg=227     guibg=#FFFF5F     guifg=#585858
	hi  MatchParen   cterm=bold       ctermfg=016              ctermbg=208     guibg=#FF8700     guifg=#000000
	hi  MoreMsg      cterm=NONE       ctermfg=185              ctermbg=black     guibg=black     guifg=#D7D75F
	hi  ModeMsg      cterm=NONE       ctermfg=196              ctermbg=194     guibg=#D7FFD7     guifg=#FF0000

	hi  StatusLine   cterm=NONE       ctermfg=157              ctermbg=196     guibg=#FF0000     guifg=#AFFFAF
	hi  StatusLineNC cterm=NONE       ctermfg=157              ctermbg=243     guibg=#767676     guifg=#AFFFAF

	hi  WarningMsg   cterm=NONE       ctermfg=096              ctermbg=black     guibg=black     guifg=#875F87

    hi  NonText      cterm=NONE       ctermfg=022              ctermbg=194     guibg=#D7FFD7     guifg=#005F00

"----------------------------------------------------------------------------------
" no use area
"----------------------------------------------------------------------------------
	hi  PmenuSel     cterm=NONE       ctermfg=023              ctermbg=160      guibg=#D70000     guifg=#005F5F

	hi  Pmenu        cterm=NONE       ctermfg=034              ctermbg=160      guibg=#D70000     guifg=#00AF00

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   " 红黑 未知
   hi Tag       cterm=NONE   ctermfg=160     ctermbg=Black     guibg=Black     guifg=#D70000


"----------------------------------------------------------------------------------
" set for Mark.vim
"----------------------------------------------------------------------------------
set background=dark
hi MarkWord1     cterm=NONE    ctermbg=Cyan     ctermfg=Black      guibg=Cyan     guifg=Black
hi MarkWord2     cterm=NONE    ctermbg=Green    ctermfg=Black      guibg=Green     guifg=Black
hi MarkWord3     cterm=NONE    ctermbg=Yellow   ctermfg=Black      guibg=Yellow     guifg=Black
hi MarkWord4     cterm=NONE    ctermbg=Red      ctermfg=Black      guibg=Red     guifg=Black
hi MarkWord5     cterm=NONE    ctermbg=Magenta  ctermfg=Black      guibg=Magenta     guifg=Black
hi MarkWord6     cterm=NONE    ctermbg=101      ctermfg=Black      guibg=#87875F     guifg=Black
hi MarkWord7     cterm=NONE    ctermbg=186      ctermfg=Black      guibg=#D7D787     guifg=Black
hi MarkWord8     cterm=NONE    ctermbg=217      ctermfg=Black      guibg=#FFAFAF     guifg=Black
hi MarkWord9     cterm=NONE    ctermbg=230      ctermfg=Black      guibg=#FFFFD7     guifg=Black
hi MarkWord10    cterm=NONE    ctermbg=215      ctermfg=Black      guibg=#FFAF5F     guifg=Black
hi MarkWord11    cterm=NONE    ctermbg=162      ctermfg=Black      guibg=#D70087     guifg=Black
hi MarkWord12    cterm=NONE    ctermbg=102      ctermfg=Black      guibg=#878787     guifg=Black
hi MarkWord13    cterm=NONE    ctermbg=123      ctermfg=Black      guibg=#87FFFF     guifg=Black
hi MarkWord14    cterm=NONE    ctermbg=095      ctermfg=Black      guibg=#875F5F     guifg=Black
hi MarkWord15    cterm=NONE    ctermbg=137      ctermfg=Black      guibg=#AF875F     guifg=Black
hi MarkWord16    cterm=NONE    ctermbg=187      ctermfg=Black      guibg=#D7D7AF     guifg=Black
hi MarkWord17    cterm=NONE    ctermbg=071      ctermfg=Black      guibg=#5FAF5F     guifg=Black
hi MarkWord18    cterm=NONE    ctermbg=133      ctermfg=Black      guibg=#AF5FAF     guifg=Black
hi MarkWord19    cterm=NONE    ctermbg=138      ctermfg=Black      guibg=#AF8787     guifg=Black
hi MarkWord20    cterm=NONE    ctermbg=197      ctermfg=Black      guibg=#FF005F     guifg=Black
hi MarkWord21    cterm=NONE    ctermbg=084      ctermfg=Black      guibg=#5FFF87     guifg=Black
hi MarkWord22    cterm=NONE    ctermbg=188      ctermfg=Black      guibg=#D7D7D7     guifg=Black
hi MarkWord23    cterm=NONE    ctermbg=144      ctermfg=Black      guibg=#AFAF87     guifg=Black
hi MarkWord24    cterm=NONE    ctermbg=200      ctermfg=Black      guibg=#FF00D7     guifg=Black
hi MarkWord25    cterm=NONE    ctermbg=202      ctermfg=Black      guibg=#FF5F00     guifg=Black
hi MarkWord26    cterm=NONE    ctermbg=124      ctermfg=Black      guibg=#AF0000     guifg=Black
hi MarkWord27    cterm=NONE    ctermbg=080      ctermfg=Black      guibg=#5FD7D7     guifg=Black
hi MarkWord28    cterm=NONE    ctermbg=130      ctermfg=Black      guibg=#AF5F00     guifg=Black
hi MarkWord29    cterm=NONE    ctermbg=150      ctermfg=Black      guibg=#AFD787     guifg=Black

"----------------------------------------------------------------------------------
" set for .vim/syntax/c.vim
"----------------------------------------------------------------------------------
if (g:vimrc_iswindows!=1)
	source ~/.vim/syntax/c.vim
else
	source ~\vimfiles\syntax\c.vim
endif

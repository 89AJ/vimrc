set mouse=a
"set clipboard=unnamed

set ruler
set number

syntax on
"set bg=dark

"set autoindent
"set cindent
"set expandtab
set shiftwidth=4
set tabstop=4

"set wildmode=longest:full
"set wildmenu

"stop folding
:let Tex_FoldedSections=""
:let Tex_FoldedEnvironments=""
:let Tex_FoldedMisc=""
" compile to pdf                              
let g:Tex_DefaultTargetFormat = 'pdf' 
"
" pdf compile and view settings                                
"let g:Tex_ViewRule_pdf = 'open -a Preview'
"let g:Tex_CompileRule_pdf = 'latexmk -pdf'
"
" ignore all warnings below level 4
let g:TCLevel = 4
let g:Tex_GotoError=0
 "
" one last thing for latex
let g:tex_flavor = 'latex'

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Smart indenting
set autoindent
set smartindent
set tabstop=4       "number of spaces for a tab
set shiftwidth=4    "number of spaces to autoindent
set expandtab       "tabs converted to spaces

syntax on

" Mouse selection and highlighting
" set ttymouse=xterm2
" set mouse=ar

set nowrap

" Set title

set title
set showcmd
set number

" Use the cool tab complete menu
set wildmenu
set wildmode=longest,full
set wildignore+=*.o,*~,*.pyc

set autowrite

" highlight trailing whitespace as an error
match ErrorMsg '\s\+$'

"Fix leading and trailing white space on write
"func! FixWS()
"  let l = line(".")
"  let c = col(".")
"  %s/\s\+$//e
"  set fileformat=unix
"  retab "need expandtab and tabstop set above for this to do as intended
"  call cursor(l, c)
"endfunc

"autocmd BufWritePre Dockerfile,*.{c,cc,cpp,h,py,xml,java,js,rb,sh,txt,rtf} :call FixWS()
" xmllint formatting options for xml filetypes
" autocmd FileType xml exe "let &l:equalprg='xmllint--format -'"

set splitbelow
set splitright

nnoremap <C-Up> <C-w><up>
nnoremap <C-Down> <C-w><down>
nnoremap <C-Left> <C-w><left>
nnoremap <C-Right> <C-w><right>

inoremap <C-A> <Home>
inoremap <C-E> <End>

autocmd FileType Makefile noexpandtab
autocmd FileType make setlocal noexpandtab

" auto set paste mode
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Make vim indent 2 spaces for ruby and scala files only
filetype plugin indent on
set sw=4
set ts=4
:autocmd Filetype ruby set softtabstop=2
:autocmd Filetype ruby set sw=2
:autocmd Filetype ruby set ts=2

:autocmd Filetype scala set softtabstop=2
:autocmd Filetype scala set sw=2
:autocmd Filetype scala set ts=2

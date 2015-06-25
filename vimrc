"
" Settings
"

" vi compatibility mode off
set nocp

" use X clipboard, instead of own registers
" set clipboard=unnamed

" turn these ON:
set ek hidden ruler sc vb wmnu paste number
set autoindent showmatch ignorecase smartcase

" turn these OFF:
set noeb noet nosol nowrap

" backspace over everything
set backspace=indent,eol,start

" no wordwrap
set textwidth=0
set shortmess=at
set whichwrap=<,>,h,l matchtime=6

" tabstops
set smd shiftwidth=4 tabstop=4

" format options
set fo=cqrt
set comments=b:#,:%,fb:-,n:>,n:)
set sidescroll=5
set listchars+=precedes:<,extends:>

" show tabs/spaces as chars
set list listchars=tab:»·,trail:·

set viminfo=%,'50,\"100,:100,n~/.viminfo

" I want to see those ^M if I'm editing a dos file
set fileformats=unix

" Tell me if something fucks up
set confirm

" Let VIM manage the term title
set title

"
" Statusline stuff
"

set laststatus=2  "always titlebar

" file, type, readonly, modified, col, line/totlines,percent
set statusline=%1*\ %f\ %2*%y\ %4*%r\ %m%=%3*%(<%c,%l/%L>%3p%%%)

"
" Toggles
"

" syntax coloring
syn on

" enable filetype detection
filetype plugin indent on

"
" mappings:
"

" opens shell
map <C-Z> :shell

" asked to add this for latex functionability
set grepprg=grep\ -nH\ $*

" delete (close) current buffer
nmap <silent> <C-W> :bd <CR>

" save current buffer
nmap <C-S> :w <CR>

" create new tab
nmap <C-N> :tabnew <CR>

" open file in new tab
nmap <C-O> :browse tabnew <CR>

" Switch through tab buffers
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" For all files, start at last edited position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

" Hide menu bar
set guioptions-=T guioptions-=m

" Tabs
set expandtab
set complete-=k complete+=k

set fileencodings=utf-8,ucs-bom,latin1,default
set fileencoding=utf-8
set encoding=utf-8

" visual
colorscheme railscasts
" colorscheme desert
" colorscheme wombat
" colorscheme ron
" colorscheme elflord
" colorscheme pablo
" colorscheme slate

" cursor and columns
set colorcolumn=120
set synmaxcol=120
set cursorline

highlight CursorLine cterm=none ctermbg=black

" Hightlight search
set hlsearch

" File extension
" let did_load_filetypes = 0
vmap <C-C> "+y
vmap <C-V> "+p

" Font
"set guifont=LiberationMono\ 12
if has("x11")
    set guifont=monoOne\ for\ Powerline\ 12
else
    set guifont=monoOne\ for\ Powerline:h13
endif

set antialias


" Vim bundle
call pathogen#infect()

" Puppet
autocmd BufRead,BufNewFile *.pp set filetype=ruby

" ruby
autocmd FileType ruby,eruby setlocal smd shiftwidth=2 tabstop=2

" Migrations as sql
autocmd BufRead,BufNewFile *.migration set filetype=sql

" Arduino Code
autocmd BufRead,BufNewFile *.ino set filetype=c

" Markdown format
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Pig syntax
augroup filetypedetect
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
augroup END

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" NERDTree
let g:NERDTreeWinPos = "right"
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35
let NERDTreeIgnore = ['\.pyc$']

map <C-F> :NERDTreeFind<CR>
map <C-E> :NERDTreeToggle<CR>

map <M-{> :tabprevious<CR>
map <M-}> :tabnext<CR>

" NERDCommenter
map ,cc <plug>NERDCommenterToggle

" PEP8
let g:flake8_max_line_length = 120
let g:flake8_ignore = "E501,W293,E127"
let g:pep8_ignore = 'E501,W391,E127'

" CTRLP
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ }

let g:ctrlp_user_command = 'find %s -type f ! -regex ".*.git/.*" | grep -v "\(pyc\|swp\)$"'

" Powerline
let g:Powerline_symbols = 'fancy'

" Pydoc
let g:pydoc_cmd = 'python -m pydoc'

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_key='<C-d>'
let g:multi_cursor_start_word_key='g<C-d>'
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_quit_key='<Esc>'

" Vim Go
let g:go_fmt_command = "goimports"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


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
set list listchars=tab:��,trail:�

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

set laststatus=2 "always titlebar

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

" For all files, start at last edited position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

" Hide menu bar
set guioptions-=T
set guioptions-=m

" Tabs
set expandtab
set complete-=k complete+=k

set fileencodings=utf-8,ucs-bom,latin1,default
set fileencoding=utf-8
set encoding=utf-8

" visual
" colorscheme railscasts
" colorscheme wombat
colorscheme desert
" colorscheme ron
" colorscheme elflord
" colorscheme pablo
" colorscheme slate
" colorscheme delek

" Crux cursor
set cursorline cursorcolumn

highlight CursorLine cterm=none ctermbg=black

" Hightlight search
set hlsearch

" File extension
" let did_load_filetypes = 0
vmap <C-C> "+y
vmap <C-V> "+p

" Font
set guifont=LiberationMono\ 12

" Vim bundle
call pathogen#infect()

" ruby
" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby set completefunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby set smd shiftwidth=2 tabstop=2

" Migrations as sql
autocmd BufRead,BufNewFile *.migration setfiletype sql

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" NERDTree
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

"autocmd VimEnter * if !argc() | NERDTree | endif
autocmd VimEnter map <C-E> <plug>NERDTreeTabsToggle<CR>
autocmd VimEnter nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter imap <F3> <Esc>:NERDTreeToggle<CR>a

" NERDCommenter
map ,cc <plug>NERDCommenterToggle

" PEP8
" let g:pep8_ignore = ['E501', 'W391']
let g:pep8_ignore = 'E501,W391'

" NERDTree ack
"let g:path_to_search_app = '/usr/bin/ack-grep'

" CTRLP
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.pyc
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Powerline
"let g:Powerline_symbols = 'fancy'

" Pydoc
let g:pydoc_cmd = 'python -m pydoc'


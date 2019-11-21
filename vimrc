"""""""""""
" PLUGINS "
"""""""""""

" Vim Plug - Addons
call plug#begin()
"
" STAN Syntax
Plug 'maverickg/stan.vim'

" color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Toggle Maximize
Plug 'pmalek/toogle-maximize.vim'

" Parenthesis
Plug 'tpope/vim-surround'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Vim Markdown compilation etc
Plug 'vim-pandoc/vim-rmarkdown'

" Vim Pandoc RMarkdown
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'

" Highlight yanked text
Plug 'machakann/vim-highlightedyank'

" Vim Slime - send stuff to screen
Plug 'jpalardy/vim-slime'

call plug#end()

"""""""""""
" GENERAL "
"""""""""""

set guicursor=

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on
syntax enable

" enable omni-complete
set omnifunc=syntaxcomplete#Complete

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" get interactive :s (substitution)
" set inccommand=split

" don't show scratch window when omnicompleting
set completeopt-=preview

" remap to easily switch buffers
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :bd<cr>

" enable paste-mode via F2
set pastetoggle=<F2>

""""""""""""""""""""""""""""""""
" Fix Background in GNU-screen "
""""""""""""""""""""""""""""""""

" set termguicolors

if &term =~ '256-color'
    set t_ut=
endif

"""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 space
set shiftwidth=4
set tabstop=4

" Linebreak on 503 characters
set lbr
set tw=79

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""
" => VIM user interface "
"""""""""""""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Always show line numbers
set number

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Always show the status line
set laststatus=2

""""""""""""""""
" KEY BINDINGS "
""""""""""""""""

" Remap leader
let mapleader = ";"
let maplocalleader = ","

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <S-Space> ?

" map F12 to Syntax reset
noremap <F10> <Esc>:syntax sync fromstart<CR>
inoremap <F10> <C-o>:syntax sync fromstart<CR>

" Toggle maximizer
nnoremap <silent> <C-n> :call ToggleMaximizeCurrentWindow()<CR>

" remap Escape key
imap jj <Esc>

" remap Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split navigation
set splitbelow
set splitright

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""
" COLOR "
"""""""""

let g:solarized_termcolors=256
set background=dark
colorscheme solarized8

"""""""""
" NETRW "
"""""""""

" remove the banner from netrw
let g:netrw_banner = 0

" set default view style
" let g:netrw_liststyle = 4

" set standard windowsize to x
let g:netrw_winsize = 25

" open new windows in new vertical split
let g:netrw_browse_split = 2

"""""""""
" SLIME "
"""""""""
let g:slime_target = "screen"
let g:slime_no_mappings = 1
nmap <c-c><c-c> <Plug>SlimeLineSend<CR>
nmap <c-x><c-x> <Plug>SlimeparagraphSend<CR>}
xmap <c-c><c-c> <Plug>SlimeRegionSend

" DeadPix3l's Vimrc
set nocompatible                " Don't try to be vi.

" UI settings
set number                      " show line numbers
set relativenumber              " relative numbers
set showmode                    " Print current mode in status bar
set showcmd                     " show partial command in status bar
set ruler                       " shows location in file on status line

" Colors
syntax enable                   " syntax highlighting
highlight VertSplit cterm=None ctermfg=Darkcyan
highlight LineNr ctermfg=DarkGray
highlight CursorLineNr ctermfg=DarkBlue
highlight TabLineFill ctermfg=black
highlight TabLineSel ctermbg=DarkGreen
highlight TabLine ctermfg=Gray ctermbg=black

" Convience
set wildmenu                    " visual autocomplete for command menu
set confirm                     " ask to save (rather than error) on close
set hidden                      " allow hidden buffers
set list                        " show invisible chars
set listchars=tab:<->,trail:.   " like tabs as <---> or trailing spaces
set splitbelow splitright

"  Disabled for the moment -- swap ; and :
" nnoremap ; :
" nnoremap : ;

" Whitespace Options
set backspace=indent,eol,start  " Logical backspacing rules
set tabstop=4                   " When printing tabs, display as 4 spaces
set softtabstop=4               " When editing, insert or delete 4 spaces
set shiftwidth=4                " When autoindenting, 4 spaces
set expandtab                   " actually convert tabs to spaces.
set autoindent                  " auto indent new lines to match pevious line
set smartindent                 " add another indent to next line based on brackets

" search settings 
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... UNLESS the search contains capitals
set incsearch                   " search as you type
set hlsearch                    " highlight matches
set wrapscan                    " wrap search after EOL

" performance and security
set lazyredraw                  " redraw only when needed (Increases performance)
set nomodeline                  " disables modelines in files. Security.
set wrap                        " wrap long lines
set showmatch                   " highlight matching brackets: ([{}])
filetype indent plugin on       " load filetype specific indent templates

"set colorcolumn=80             " highlight column 80 (really distracting)
highlight column81 ctermbg=red  " make a new highlight group for below
call matchadd('column81', '\%81v', 100) "highlight character on the 81st column

" code block folding 
set foldenable                  " enabled folding code blocks
set foldlevelstart=10           " initially only fold blocks 10+ levels deep
set foldnestmax=10              " maximum of nested folds.
set foldmethod=indent           " fold all lines of same indent level

" other settings 
set laststatus=1                " show status line only when there's 2+ windows

" Allows moving vertically on wrapped lines using j and k
nnoremap j gj
nnoremap k gk

" Highlight all text entered in last Insert mode
nnoremap gV `[v`]

" type '\<space>' to unhighlight
nnoremap <leader><space> :nohlsearch<CR>

" nnoremap :vh :vertical botright help 

" without plugins settings
" =========================

" fuzzy file finder
set path+=**

" disables Ex mode
nnoremap Q <nop>



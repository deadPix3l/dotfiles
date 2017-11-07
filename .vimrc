set nocompatible
" DeadPix3l's Vimrc
 
" code related settings {{{
set wrap                        " wrap long lines
set number	                    " show line numbers
set showmatch                   " highlight matching brackets: ([{}])
syntax on                       " syntax highlighting
filetype indent plugin on       " load filetype specific indent templates
" }}}

" code block folding {{{
set foldenable                  " enabled folding code blocks
set foldlevelstart=10           " initially only fold blocks 10+ levels deep
set foldnestmax=10              " maximum of nested folds.
set foldmethod=indent           " fold all lines of same indent level
" }}}

" search settings {{{
set wrapscan	                " wrap search after EOL
set ignorecase	                " searches are case insensitive...
set smartcase	                " ... UNLESS the search contains capitals
set incsearch	                " search as you type
set hlsearch	                " highlight matches
" }}} 

" whitespace and special keys {{{
set backspace=indent,eol,start  " 
set tabstop=4       			" display tabs as being 4 spaces wide
set softtabstop=4               " insert 4 spaces on <TAB>
set expandtab                   " force insert spaces on <TAB>
set autoindent                  " auto indent new lines to match pevious line
set smartindent                 " add another indent to next line based on brackets
" }}}

"  other settings {{{
set confirm                     " ask to save (rather than error) on close
set wildmenu                    " visual autocomplete for command menu
set showcmd                     " show partial command in status bar
set lazyredraw                  " redraw only when needed (Increases performance)
set showmode                    " Print current mode in status bar
set modeline                    " allow files to define their own modeline
set modelines=1                 " only parse one line for modelines
set laststatus=1                " show status line only when there's 2+ windows
" set cursorline                " underline/highlight current line
" }}}

" Terrible Ideas {{{
" set autoread                  " read in external changes
" set nobackup                  " disable backups
" set noswapfile                " disable swapfiles
" set nowritebackup             " write directly to file non-atomically
" set magic                     " modify regex interpreting (check :help magic)
" }}}

" key remaps {{{
" opens/closes folds (ie. runs 'za')
nnoremap <space> za             

" Allows moving vertically on wrapped lines using j and k
nnoremap j gj
nnoremap k gk

" Highlight all text entered in last Insert mode
nnoremap gV `[v`]

" type '\<space>' to unhighlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0

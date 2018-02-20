" basic settings 
set nocompatible
set encoding=utf-8
set showcmd
set showmatch
set nojoinspaces
set autoindent
set ruler
set laststatus=2
set wildmenu
set display+=lastline " dont show @ is line does not fit
set formatoptions+=j " delete comment character when joining commented lines
setglobal tags-=./tags tags-=./tags; tags^=./tags;
set nocursorline
set lazyredraw

" Clipboard
set clipboard=unnamed

" wrap setting
set wrap
set nolinebreak

" leader settings
let mapleader = "\<SPACE>"
let maplocalleader="//"

" tab settings
set tabstop=4
set shiftwidth=4
set noexpandtab
hi SpecialKey guifg=NONE guibg=NONE

" search settings
set hlsearch
set ignorecase
set smartcase
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
nnoremap <leader>hl :noh<CR>

" scroll settings
set scrolloff=5

" set list char
set list
set listchars=tab:│\ ,extends:›,precedes:‹,nbsp:·,trail:·

" numberline settings
set number
" set relativenumber
map <leader>r :call function#cycle_numbering()<CR>

" set colours
set t_Co=256
set termguicolors
set textwidth=0 " do not break lines
set colorcolumn=80

" increment and decrement with <c-a> <c-x>
set nrformats= " always decimal increment

" movements & split navigation
nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" get help
nnoremap <leader>h :help <C-R><C-W><CR>

" remember last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" disable comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" reload vimrc
map <silent> <leader>v :source ~/.vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>
map <silent> <leader>e :e ~/.dotfiles/vim/configs/all_basic.vim<CR>:cd ~/.dotfiles/vim/<CR>:exe ":echo 'vimrc opened'"<CR>
map <silent> <leader>cd :cd %:h<CR>

" set colorscheme
set background=dark
map <leader>b :set background=dark<CR>
map <leader>w :set background=light<CR>
source ~/.dotfiles/vim/configs/gruvbox.vim
colorscheme gruvbox

" folding
nnoremap <s-tab> za
set foldlevelstart=1
set foldmethod=syntax

" cursor
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

" easily edit macro in q reg
nnoremap <leader>... :<c-u><c-r><c-r>='let @q = '. string(getreg('q'))<cr><c-f><left>

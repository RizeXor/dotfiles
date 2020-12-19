call plug#begin('~/.config/nvim/plugged')
" Themes
" Plug 'aonemd/kuroi.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'python/black'
Plug 'dense-analysis/ale'
call plug#end()

" Onedark theme
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" if (has("nvim"))
"     "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"     "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"     " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"     if (has("termguicolors"))
"     set termguicolors
" endif

" OneDark
let g:onedark_terminal_italics = 0
let g:onedark_termcolors = 256

" Set color scheme
" autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme kuroi
colorscheme onedark

" Lightline
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ }

" Airline
" let g:airline_theme='onedark'
" let g:airline_powerline_fonts = 1

let g:user_emmet_leader_key=','
filetype plugin indent on
set noshowmode
set rnu
set nu
set nobackup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a
set clipboard+=unnamedplus
set nowrap
set encoding=utf-8
set nobackup
set undodir=~/.config/nvim/undodir
set incsearch
set noswapfile
set nohlsearch
set cc=88
set background=dark
syntax on

" FZF
nmap <C-P> :FZF<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
" let NERDTreeShowLineNumbers=1
" autocmd FileType nerdtree setlocal relativenumber

" Rust
let g:rustfmt_autosave = 1

" Python
autocmd BufWritePre *.py execute ':Black'

" ALE
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['prettier', 'eslint'],
" \}
let g:ale_fix_on_save = 1

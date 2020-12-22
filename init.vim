call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'

" Plug 'ycm-core/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'python/black'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdcommenter'
call plug#end()

" OneDark
let g:onedark_terminal_italics = 0
let g:onedark_termcolors = 256

" Set color scheme
" colorscheme gruvbox
colorscheme gruvbox

" Lightline
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ }

" Emmet
let g:user_emmet_leader_key=','
let g:user_emmet_mode='n'

filetype plugin indent on
let mapleader=" "
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
set nowritebackup
set undodir=~/.config/nvim/undodir
set incsearch
set noswapfile
set nohlsearch
set cc=88
set background=dark
syntax on

" Transparent BG
highlight Normal ctermbg=None

" Ycm
" let g:ycm_auto_trigger = 1
" nmap <silent> gd :YcmCompleter GoToDefinition<CR>

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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

" Nerd Commenter
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

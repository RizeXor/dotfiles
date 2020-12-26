filetype off
set encoding=utf-8
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin('~/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'gruvbox-community/gruvbox'

Plugin 'ycm-core/YouCompleteMe'

" Formatter
Plugin 'python/black'

" Misc
Plugin 'junegunn/fzf'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'mattn/emmet-vim'
call vundle#end()

" YCM
nmap <silent> gd :YcmCompleter GoToDefinition<CR>

let g:gruvbox_italic = 0

filetype plugin indent on
colorscheme gruvbox
" Show lightline
set nomousehide
set laststatus=2
set autoindent
set backspace=indent,eol,start
set undodir=~/vimfiles/undodir
set noerrorbells
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
set clipboard^=unnamed,unnamedplus
set nowrap
set encoding=utf-8
set nobackup
set nowritebackup
set incsearch
set noswapfile
set nohlsearch
set cc=88
set background=dark
syntax on

" Lightline
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ }

" FZF
nmap <C-P> :FZF<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

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

" Rust
let g:rustfmt_autosave = 1

" Python
autocmd BufWritePre *.py execute ':Black'

" Javascript
autocmd BufWritePre *.jsx execute ':YcmCompleter Format'
autocmd BufWritePre *.js execute ':YcmCompleter Format'
autocmd BufWritePre *.ts execute ':YcmCompleter Format'
autocmd BufWritePre *.tsx execute ':YcmCompleter Format'

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

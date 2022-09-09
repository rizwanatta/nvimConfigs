" Options
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set cc=80 " Show at 80 column a border for good code style
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim
set encoding=UTF-8
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier',{ 'do': 'yarn install --frozen-lockfile --production' }
Plug 'dense-analysis/ale' " enables prettier and eslint
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'overcache/NeoSolarized'
call plug#end()

filetype plugin on

colorscheme gruvbox
let g:bargreybars_auto=0
let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1
let g:airline#extension#tabline#enable=1
let g:airline#extension#tabline#left_sep=' '
let g:airline#extension#tabline#left_alt_sep='|'
let g:airline#extension#tabline#formatter='unique_tail'
let NERDTreeQuitOnOpen=1


let js_fixers = ['prettier', 'eslint']

let g:ale_fixers={
         \'*': ['remove_trailing_lines', 'trim_whitespace'],
         \'javascript': js_fixers,
         \'javascript.jsx': js_fixers,
         \'typescript': js_fixers,
         \'typescriptreact': js_fixers,
         \'css': ['prettier'],
         \'json': ['prettier'],
         \}

let g:ale_sign_error = '🚨'
let g:ale_sign_warning = '🍑'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = "🔥 "

let g:ale_fix_on_save = 1

" remaps for FZF
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-e> :History<CR>
" remaps for resizing windows in tmux

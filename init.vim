"different options that make VIM more comfortable for me
set hlsearch
set autochdir
set clipboard=unnamedplus
set cursorline
set title 
set wildmenu
set number
set splitright splitbelow
set inccommand=split
set ignorecase
set completeopt=noinsert,menuone,noselect
set hidden
set relativenumber 
set wildmenu
set mouse=a
set nocompatible
filetype plugin indent on
syntax on
set t_Co=256
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"Plugins that do a wide varity of things
call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'ful1e5/onedark.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'plasticboy/vim-markdown'
    Plug 'airblade/vim-gitgutter'
    Plug 'Yggdroot/indentLine'
call plug#end()

"set colorscheme
colorscheme onedark
"Show hidden files in NerdTree
let NERDTreeShowHidden=1
"Set colorscheme and other parameters for status bar
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:tex_conceal = ''
let g:vim_markdown_math = 1

"YAML indentation indicators 
let g:indentLine_char = '⦙'

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" Normal mode remappings
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>
nnoremap <C-q> :q!<CR>

source $HOME/.config/nvim/plugins/treesitter.lua
source $HOME/.config/nvim/plugins/coc.lua

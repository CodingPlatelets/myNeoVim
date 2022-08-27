
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'f-person/git-blame.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
call plug#end()


set background=dark
set clipboard=unnamedplus
set clipboard=unnamed
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set number
set nu
set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set cc=80
set hlsearch
set showmatch

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let mapleader = ";"
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <Leader>n :NERDTree<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
" nmap p :pu<CR>

nmap f <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1

" Start NERDTree and leave the cursor in it.
" autocmd StdnnoremapinReadPre * let s:std_nnoremapin=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
colorscheme gruvbox

" Default mappnnoremaping

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color upport
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


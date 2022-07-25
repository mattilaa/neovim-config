" Runtimepath for fzf
set rtp+=~/.fzf

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'lifepillar/vim-gruvbox8'
Plug 'EdenEast/nightfox.nvim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'udalov/kotlin-vim'

call plug#end()

" CoC plugins
let g:coc_global_extensions = [
  \ 'coc-clangd',
  \ 'coc-explorer',
  \ 'coc-git',
  \ 'coc-jedi',
  \ 'coc-tsserver'
  \ ]

" Plugin configurations
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/gruvbox8.vim
source ~/.config/nvim/config/cpphighlight.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/nerdcommenter.vim
source ~/.config/nvim/config/buftabline.vim
source ~/.config/nvim/config/coc-explorer.vim

" Vim configuration
source ~/.config/nvim/config/settings.vim

filetype plugin on

autocmd BufNewFile,BufRead *.robot setlocal filetype=robot


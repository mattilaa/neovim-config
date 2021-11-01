" Better terminal colors
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let base16colorspace=256

" Use system clipboard. Copypaste works between system and editor
set clipboard+=unnamedplus

" Enable syntax highlighting for better readibility
syntax on

" Enable relative line numbers
set number
set relativenumber

" Enable curson line for better readability
set cursorline

" Set column to 80 chars
set cc=80

" Setup tab. Tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
" Make spaces feel like tabs when deleting
set softtabstop=4

" Press double ESC for escaping from everything
nnoremap <esc><esc> :noh<return>

" Ignore case in search
set ignorecase

" Trim trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Replace text visually
set inccommand=nosplit
nnoremap <leader>k :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" Browse buffers with Ctrl-j and Ctrl-k
nnoremap <C-j> :bp<Cr>
nnoremap <C-k> :bn<Cr>
nnoremap <leader>bd :bd<Cr>

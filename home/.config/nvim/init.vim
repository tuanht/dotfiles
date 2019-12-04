source ~/.config/nvim/plugins.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/statusline.vim

" TODO color incorrect with tmux
colorscheme cobalt2
set background=dark
set termguicolors

set number

set splitbelow
set splitright

" === Netrw section ===
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Change open file behavior
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1


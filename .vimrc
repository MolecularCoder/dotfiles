"   
"   Neovim with Vim Plug Plugin Manager
"

call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'cjrh/vim-conda'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'
Plug 'hynek/vim-python-pep8-indent'
Plug 'neomake/neomake'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal cindent
setlocal smarttab
setlocal formatoptions=croql
setlocal number

" Neovim Theme
colorscheme gruvbox
set background=dark

" Deoplete Configuation and Deoplete-Jedi Vim
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_command = "<C-Space>"
let g:deoplete#sources#jedi#statement_length = 100
let deoplete#sources#jedi#enable_cache = 1
let deoplete#sources#jedi#show_docstring = 1
inoremap <C-@> <C-p>

" Vim Conda Configuration
let g:python_host_prog = '/Users/sshantha/anaconda/envs/neovim2/bin/python'
let g:python3_host_prog = '/Users/sshantha/anaconda/envs/neovim3/bin/python'
let g:conda_startup_msg_suppress = 1

" Nerd Tree and NerdGit
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" Neomake
autocmd! BufWritePost * Neomake

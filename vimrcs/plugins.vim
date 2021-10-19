" Plugins
" colorschemes
call plug#begin('~/.vim/plugged')
" colourschemes (incl. gruvbox)
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
" ripgrep
Plug 'jremmen/vim-ripgrep'
" github (vim friendly)
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
" filepath/ var autocompleter
Plug 'mbbill/undotree'
" pytest
Plug 'alfredodeza/pytest.vim'
" mql4
Plug 'vobornik/vim-mql4'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'
" markdown
Plug 'skanehira/preview-markdown.vim'
" deoplete reqs
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'neoclide/coc.nvuim', {'branch': 'release'}
call plug#end()


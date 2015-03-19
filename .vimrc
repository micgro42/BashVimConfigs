" vim config files, which are usually sourced: /etc/vim/vimrc, ~/.vimrc
autocmd Filetype gitcommit setlocal spell textwidth=72
syntax enable " enable syntax processing
set background=dark
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set incsearch          " Incremental search
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

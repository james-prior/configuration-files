let loaded_matchparen = 1
set background=dark
" Following does only one space for joining sentences with 'J' command.
set nojoinspaces
" :colorscheme mine
:hi Search term=reverse ctermfg=7 ctermbg=3
function! SearchWord(word)
    let @/ = '\<' . a:word . '\>'
    normal n
endfunction
command! -nargs=1 SearchWord call SearchWord(<f-args>)
nmap ? :SearchWord

" the following is probably best for my Python stuff
" Note that it leaves existing tabs characters as is.
set expandtab           " enter spaces when tab is pressed
set softtabstop=4       " use 4 spaces to represent tab
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

syntax off

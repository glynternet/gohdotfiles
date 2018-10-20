syntax on		" enable syntax processing
set number		" enable line numbers 
set ruler		" enable ruler, shows line,charater-column in bottom-right corner
set showcmd		" show command in bottom bar
set cursorline		" highlight currentline
set wildmenu		" visual autocomplete for command menu
set showmatch		" highlight matching parenthesis and block endings and starts, i.e. [{}]
set hlsearch		" sets search results to be highlighted:
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Press Space to turn off highlighting and clear any message already displayed.
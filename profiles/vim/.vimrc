syntax on			" enable syntax processing
set relativenumber	" enable relative line numbers
set ruler			" enable ruler, shows line,charater-column in bottom-right corner
set showcmd			" show command in bottom bar
set cursorline		" highlight currentline
set wildmenu		" visual autocomplete for command menu
set showmatch		" highlight matching parenthesis and block endings and starts, i.e. [{}]
set hlsearch		" sets search results to be highlighted:
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " Press Space to turn off highlighting and clear any message already displayed.
set autoindent		" if indented, new lines will also be indented
set smartindent		" automatically indents lines after opening a bracket in programming languages
set smarttab		" improves tabbing
set shiftwidth=4	" assists code formatting
set tabstop=4		" how much space given to a tab

function NextDone()
  return search('DONE','n')
endfunction
nnoremap <C-d> :echom NextDone()<CR>

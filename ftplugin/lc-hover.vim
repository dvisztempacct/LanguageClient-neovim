" based on
" https://github.com/hauleth/vim-lsp/blob/ed13792def5c92fcdaeaa75f1de505aee218676a/ftplugin/lsp-hover.vim
" used to configure hover window
setlocal previewwindow buftype=nofile bufhidden=wipe noswapfile nobuflisted
setlocal nocursorline nofoldenable

if has('syntax')
    setlocal nospell
endif

let &l:statusline = ' LC Hover'

let b:undo_ftplugin = 'setlocal pvw< bt< bh< swf< bl< cul< fen<' .
            \ (has('syntax') ? ' spell<' : '') .
            \ ' | unlet! g:markdown_fenced_languages'

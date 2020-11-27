let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'firenvim',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }

"let fc = g:firenvim_config['localSettings']
"let fc['.*'] = { 'selector': 'textarea' }
"let fc['.*'] = { 'takeover': 'never' }
"let fc['.*'] = { 'cmdline' : 'neovim' }
au BufEnter github.com_*.txt set filetype=markdown
au BufEnter stackoverflow.com_*.txt set filetype=markdown


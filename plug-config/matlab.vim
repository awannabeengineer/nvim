let g:matlab_auto_mappings = 0  "automatic mappings disabled 
let g:matlab_server_launcher = 'tmux'   "launch the server in a Neovim terminal buffer can use tmux
let g:matlab_server_split = 'horizonatal'    "launch the server in a vertical split can use horizonatal
setlocal shortmess+=A
setlocal formatoptions-=cro

" let s:split_command = ':!tmux split-window -h '
" let s:split_command = ':!tmux split-window '
let s:split_command = ':vsplit term://'
" let s:split_command = ':split term://'

let s:server_command = expand('<sfile>:p:h') . '/../autoload/plugged/vim-matlab/scripts/vim-matlab-server.py'

command! MatlabLaunchServer :execute 'normal! ' . s:split_command . s:server_command . '<CR>'

command! MatlabNormalModeCreateCell :execute 'normal! :set paste<CR>m`O%%<ESC>``:set nopaste<CR>'
command! MatlabVisualModeCreateCell :execute 'normal! gvD:set paste<CR>O%%<CR>%%<ESC>P:set nopaste<CR>'
command! MatlabInsertModeCreateCell :execute 'normal! I%% '

if g:matlab_auto_mappings
  nnoremap <buffer>         <leader>rn :MatlabRename
  nnoremap <buffer><silent> <leader>fn :MatlabFixName<CR>
  vnoremap <buffer><silent> <C-m> <ESC>:MatlabCliRunSelection<CR>
  nnoremap <buffer><silent> <C-m> <ESC>:MatlabCliRunCell<CR>
  nnoremap <buffer><silent> <C-h> :MatlabCliRunLine<CR>
  nnoremap <buffer><silent> ,i <ESC>:MatlabCliViewVarUnderCursor<CR>
  vnoremap <buffer><silent> ,i <ESC>:MatlabCliViewSelectedVar<CR>
  nnoremap <buffer><silent> ,h <ESC>:MatlabCliHelp<CR>
  nnoremap <buffer><silent> ,e <ESC>:MatlabCliOpenInMatlabEditor<CR>
  nnoremap <buffer><silent> <leader>c :MatlabCliCancel<CR>
  nnoremap <buffer><silent> <C-l> :MatlabNormalModeCreateCell<CR>
  vnoremap <buffer><silent> <C-l> :<C-u>MatlabVisualModeCreateCell<CR>
  inoremap <buffer><silent> <C-l> <C-o>:MatlabInsertModeCreateCell<CR>
endif


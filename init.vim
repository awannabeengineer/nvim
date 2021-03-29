"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
if !exists('g:vscode')
  source $HOME/.config/nvim/plug-config/polyglot.vim
endif
"" fix color issues when inside tmux
"if exists('+termguicolors')
  "let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif
" Enables 24-bit RGB color in the terminal
if has('termguicolors')
  if empty($COLORTERM) || $COLORTERM =~# 'truecolor\|24bit'
    set termguicolors
  endif
endif

if ! has('nvim')
  set t_Co=256
  " Set Vim-specific sequences for RGB colors
  " Fixes 'termguicolors' usage in vim+tmux
  " :h xterm-true-color
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif



source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/highlightyank.vim
"elseif exists ('g:started_by_firenvim')
  "source $HOME/.config/nvim/plug-config/firenvim.vim
  "source $HOME/.config/nvim/themes/syntax.vim
  "source $HOME/.config/nvim/themes/nvcode.vim
  "luafile $HOME/.config/nvim/lua/eviline.lua
  "source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  "source $HOME/.config/nvim/plug-config/rnvimr.vim
  ""source $HOME/.config/nvim/plug-config/better-whitespace.vim
  ""source $HOME/.config/nvim/plug-config/fzf.vim
  "source $HOME/.config/nvim/plug-config/floaterm.vim
  "source $HOME/.config/nvim/plug-config/barbar.vim
  ""source $HOME/.config/nvim/plug-config/far.vim
  ""source $HOME/.config/nvim/plug-config/tagalong.vim
  ""source $HOME/.config/nvim/plug-config/bracey.vim
  ""source $HOME/.config/nvim/plug-config/asynctask.vim
  "source $HOME/.config/nvim/keys/which-key.vim
  "source $HOME/.config/nvim/plug-config/coc/coc.vim
  "source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
else

  " Themes
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/nvcode.vim

  " Plugin Configuration
  "source $HOME/.config/nvim/plug-config/firenvim.vim
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/nerd-commenter.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/codi.vim
  source $HOME/.config/nvim/plug-config/vim-wiki.vim
  " luafile $HOME/.config/nvim/lua/nvcodeline.lua
  luafile $HOME/.config/nvim/lua/eviline.lua
  "luafile $HOME/.config/nvim/lua/treesitter.lua
  source $HOME/.config/nvim/plug-config/coc/coc.vim
  source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/git-messenger.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/barbar.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/tagalong.vim
  source $HOME/.config/nvim/plug-config/bracey.vim
  source $HOME/.config/nvim/plug-config/asynctask.vim
  source $HOME/.config/nvim/plug-config/window-swap.vim
  source $HOME/.config/nvim/plug-config/markdown_preview.vim
  source $HOME/.config/nvim/plug-config/neovide.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  " source $HOME/.config/nvim/plug-config/sneak.vim
  " source $HOME/.config/nvim/plug-config/rainbow.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  " source $HOME/.config/nvim/plug-config/xtabline.vim
  " source $HOME/.config/nvim/plug-config/vim-commentary.vim
  source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
  " source $HOME/.config/nvim/plug-config/ale.vim
  " additional documentation
  source $HOME/.config/nvim/plug-config/ipy.vim
  source $HOME/.config/nvim/plug-config/vimspector.vim
  source $HOME/.config/nvim/plug-config/ultisnips.vim
  source $HOME/.config/nvim/plug-config/vimtex.vim
  source $HOME/.config/nvim/plug-config/tex-conceal.vim
  source $HOME/.config/nvim/plug-config/jupytext.vim
  source $HOME/.config/nvim/plug-config/matlab.vim
  source $HOME/.config/nvim/plug-config/julia.vim
  source $HOME/.config/nvim/plug-config/calender.vim
  source $HOME/.config/nvim/plug-config/emmet.vim
  source $HOME/.config/nvim/plug-config/minimap.vim
  " source $HOME/.config/nvim/plug-config/rust.vim
  luafile $HOME/.config/nvim/lua/lsp_config_sumneko.lua
  source $HOME/.config/nvim/script_practice/test_script.vim
endif
source $HOME/.config/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif


" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" nvim lspconfig
lua << EOF
require('whid')
require'lspconfig'.sumneko_lua.setup {}
EOF
source $HOME/.config/nvim/script_practice/nvim-whid/plugin/whid.vim

" autocmd FileType .rs setlocal commentstring=/// $s

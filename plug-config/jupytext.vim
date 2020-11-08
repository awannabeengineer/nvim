" github homepage for more info:
" https://github.com/goerz/jupytext.vim

" default value is 1. set to 0 to disable
let g:jupytext_enable = 1 

" the path to the jupytext executable so we dont have to activate neovim conda env everytime
let g:jupytext_command = '~/projects/neovim/envs/bin/jupytext'

" The format to which to convert the ipynb data. can set to any format jupytext accepts.
let g:jupytext_fmt = 'md:markdown'


" A mapping of g:jupytext_fmt to the filetype that should be used for the buffer. 
" This determines the syntax highlighting. can use to override default file type settings.
 let g:jupytext_filetype_map = {'md:markdown': 'pandoc'}

" if set to q print debug messages while running this plugin(view with :message)
let g:jupytext_print_debug_msgs = 0

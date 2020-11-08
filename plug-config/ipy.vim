" set to 1 to use default mappings or zero to set your own
let g:nvim_ipy_perform_mappings = 0

" set definition for code cells (everything between two occurances will be executaed)
let g:ipy_celldef = '# %%'

" key mappings
map <silent><leader>z <Plug>(IPy-RunCell)
 " au FileType py let b:ipy_celldef = ['^```{r}$', '^```$']

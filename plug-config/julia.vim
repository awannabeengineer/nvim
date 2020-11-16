let g:latex_to_unicode_tab = 0 "disable auto latex to unicode
let g:latex_to_unicode_suggestions = 0 "disable latex to unicode suggestions
let g:latex_to_unicode_auto = 1 " automatically substitute latex to unicode

noremap <expr> <F7> LaTeXtoUnicode#Toggle()
noremap! <expr> <F7> LaTeXtoUnicode#Toggle()

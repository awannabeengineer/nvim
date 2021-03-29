let g:latex_to_unicode_tab = 1 "disable auto latex to unicode
let g:latex_to_unicode_suggestions = 1 "disable latex to unicode suggestions
let g:latex_to_unicode_auto = 0 " automatically substitute latex to unicode
let g:latex_to_unicode_keymap = 0 " Keymap

noremap <expr> <F7> LaTeXtoUnicode#Toggle()
noremap! <expr> <F7> LaTeXtoUnicode#Toggle()

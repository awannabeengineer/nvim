function! s:OnEvent(id, data, event) dict
  let str = join(a:data, "\n")
  echomsg str
endfunction
let id = jobstart(['cat'], {'on_stdout': function('s:OnEvent') } )
call chansend(id, "hello!")

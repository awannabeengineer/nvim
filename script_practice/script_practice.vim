" variables
let foo = 45
echo foo
" options as variables
set textwidth=40
echo &textwidth
set nowrap 
echo &wrap
set wrap 
echo &wrap
" so nowrap returns 0 and wrap returns 1, indicating vim is (at least in this case) treating 
" integer 0 as false and 1 as true, generally any nonzero int is truthy
" we can also set options as variables using the let commands
let &textwidth = 100
set textwidth? " vim will display textwidth=100
" we can also use local values of options as variables we just need to prefix them with var name.
let &l:number = 1 " this will set the option number equal to the local variable l:number which is being set to 1.
echo &l:number
" we can also read and set register as variables.
let @a = "hello!"
" now writing "ap will tell vim to paste the content of register a here 
" we can also :echo @a to see it's content, or yank a word and :echo @" to see the word we just yanked
" variable scoping -> vim can use the prefix b to set variables local to a buffer.
let b:hello = "world"
" :echo b:hello and we get world, but go to another buffer and try it and we get an error, because variable was scoped to the current buffer.
" note on multi line commands -> they can be broken down at the newline using pipes so 
echom "foo"
echom "bar"
" would become
echom "foo" | echom "bar"
" IF statements
if 1 " remember nonzero numbers are truthy
  echom "ONE"
endif

if 0 " vim treats 0 as false
  echom "ZERO"
endif

if "something" "vim will not just treat any nonempty string as truthy so it wont display anything
  echom "INDEED"
endif

if "1234" "but this time it works? why?
  echom "WHAT???"
endif
"vim is trying a coerce a variable and literals (when necessary) so in this case its taking the int 1234 value 
"watch this 
echom "hello" + 10  
echom "10hello" + 10 
echom "hello10" + 10
" first one will result in 10 fine. in the second case vim will coerce 10 from the start of the string and echo 20. 
" in the last case however we get 10 again? yes. vim will only do the literal extraction from the start of the string
" if no number there then its 0
if 0 "false
  echom "if"
elseif "nope!" "no numbers at start, this results in zero its false
  echom "elseif"
else " none of the above were true so this is it.
  echom "finally"
endif
" vim comparison > < == , numbers are straight forward let's look at strings
if "foo" == "FOO"
  echom "vim is case insensitive"
elseif "foo" == "foo"
  echom "vim is case sensitive"
endif
" but it doesn't have to be
set ignorecase
if "foo" == "FOO"
  echom "vim is case insensitive"
elseif "foo" == "foo"
  echom "vim is case sensitive"
endif
" see this time it worked, this is kind of fucked up actually. since a user setting can change the behaviour of the script.
" ok so DO NOT use == for string comparison. vim provides ==? (always case-insensitive) and ==# (always case-sensitive)
" this way we wont's be effected by ignorecase settings.

" Fucntions
" function meow() this won't work since it is unscoped and all unscoped functions must must start with a capital letter.
" but do it for all function since it's a convention, just think of it as lua capitalization.
function Meow()
  echom "Meow!"
endfunction
call Meow()
" we can also just return a value and use it however we want later.
function GetMeow()
  return "string Meow!"
endfunction
echom GetMeow()
" what if we try to call GetMeow?
call GetMeow()
" nothing happened the returned value is thrown away so we should pass its return calue to something like echom.
" now let's try it with Meow, we will echo it instead of calling it.
echom Meow()
" this will display two line the Meow! that we expected and also 0, the 0 tells us that
" if a vim function doesnt implicitly return a value it returns 0. we can use this to our advantage.
function TextWidthIsToowide()
  if &l:textwidth ># 80
    return 1
  endif
endfunction
" in the if statements we are treating options as variable and also localizing that variable, and then using case-sensitive comparison.
" let use the function
set textwidth=80
if TextWidthIsToowide()
  echom "WARNING: wide text!"
endif
" so we can see that by default our function will return a zero if text is not too wide since no return means return 0 to vim.
set textwidth=100
if TextWidthIsToowide()
  echom "WARNING: wide text!"
endif
" this time we get a warning like we expected






















































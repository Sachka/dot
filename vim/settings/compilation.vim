" demo
function! Build()
    if &filetype == "python"
        set splitright
        execute '!python %'
    elseif &filetype == "c"
        set splitright
        execute '!gcc -Wall -o %< % && ./%<'
    else
        echo "Incompatible source for compiling"
    endif
endfunction


"dDisable deoplete when selecting multiple cursors starts
function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete = 0
endfunction

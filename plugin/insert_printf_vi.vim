
"	Function written by gpt4o
function! InsertPrintFunction(...) abort
    " Initialize an empty string to hold the final text
    let l:text = 'print(f"'

    " Loop through each argument passed to the function
    for l:arg in a:000
        " Append the argument in the desired format
        let l:text .= l:arg . '=(' . '{' . l:arg . '})'
        " Append a comma and a space if not the last argument
        if l:arg != a:000[-1]
            let l:text .= ', '
        endif
    endfor

    " Close the f-string
    let l:text .= '")'

    " Insert the constructed text at the cursor position
    execute "normal! i" . l:text
endfunction

command! -nargs=* InsertPrintf call InsertPrintFunction(<f-args>)


" Left -- distraction free mode
let s:left_enable = 0

function! Left()
    " set variables
    let s:left_enable = 1
    let s:old_foldenable = &foldenable
    let s:old_foldcolumn = &foldcolumn
    let s:old_laststatus = &laststatus
    let s:old_linebreak = &linebreak
    let s:old_list = &list
    let s:old_number = &number
    let s:old_numberwidth = &numberwidth
    let s:old_textwidth = &textwidth
    let s:old_wrap = &wrap

    " set colors
    exe 'highlight FoldColumn guibg=' . g:left_guibg . ' guifg=' . g:left_guibg . ' ctermbg=' . g:left_ctermbg . ' ctermfg=' . g:left_ctermbg
    exe 'highlight NonText    guibg=' . g:left_guibg . ' guifg=' . g:left_guibg . ' ctermbg=' . g:left_ctermbg . ' ctermfg=' . g:left_ctermbg
    exe 'highlight LineNr     guibg=' . g:left_guibg . ' guifg=' . g:left_guibg . ' ctermbg=' . g:left_ctermbg . ' ctermfg=' . g:left_ctermbg

    " set options
    set laststatus=0
    set number
    setlocal foldcolumn=12
    setlocal numberwidth=20
    setlocal textwidth=60
endfunction

function! LeftOff()
    let s:left_enable = 0
    let &foldcolumn = s:old_foldcolumn
    let &foldenable = s:old_foldenable
    let &laststatus = s:old_laststatus
    let &linebreak = s:old_linebreak
    let &list = s:old_list
    let &number = s:old_number
    let &numberwidth = s:old_numberwidth
    let &textwidth = s:old_textwidth
    let &wrap = s:old_wrap
    exe 'colorscheme ' . g:colors_name
endfunction

function! LeftToggle()
    if s:left_enable == 1
        call LeftOff()
    else
        call Left()
    endif
endfunction

command! Left call Left()
command! LeftOff call LeftOff()
command! LeftToggle call LeftToggle()

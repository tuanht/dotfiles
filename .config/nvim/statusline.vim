function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

" Always show the status line
set laststatus=2

" See more `:help statusline`
" Preview all highlight groups with `:so $VIMRUNTIME/syntax/hitest.vim`

set statusline=%#TabLineFill#
set statusline+=%{StatuslineGit()}
set statusline+=%#TabLineSel#
set statusline+=\ %{HasPaste()}%f%m%r%h\ %w
set statusline+=%*

set statusline+=\ \ CWD:\ %{getcwd()}%h " Current working directory

set statusline+=%= "Align right
set statusline+=\ \ \ %{&ff}\ \ %{&fenc==''?&enc:&fenc}\ \ %Y "File format & type

set statusline+=\ \ %#Folded#
set statusline+=\ \ %p%%\ \  "Percentage through file

set statusline+=%#Visual#
set statusline+=\ \ %l:%c\ \  "Current line and column
set statusline+=%* "Switch back to normal highlight


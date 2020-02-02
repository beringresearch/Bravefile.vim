" Define comment string
setlocal commentstring=#\ %s

" Enable automatic comment insertion
setlocal formatoptions+=cro

function! BravefileReplaceInstruction(original, replacement)
    let syn = synIDtrans(synID(line("."), col(".") - 1, 0))
    if syn != hlID("Comment") && syn != hlID("Constant") && strlen(getline(".")) == 0
        let word = a:replacement
    else
        let word = a:original
    endif
    let g:UnduBuffer = a:original
    return word
endfunction

"inoreabbr <silent> <buffer> from <C-R>=BravefileReplaceInstruction("", "FROM")<CR>
"inoreabbr <silent> <buffer> maintainer <C-R>=BravefileReplaceInstruction("maintainer", "MAINTAINER")<CR>
"inoreabbr <silent> <buffer> run <C-R>=BravefileReplaceInstruction("run", "RUN")<CR>
"inoreabbr <silent> <buffer> cmd <C-R>=BravefileReplaceInstruction("cmd", "CMD")<CR>
"inoreabbr <silent> <buffer> label <C-R>=BravefileReplaceInstruction("label", "LABEL")<CR>
"inoreabbr <silent> <buffer> expose <C-R>=BravefileReplaceInstruction("expose", "EXPOSE")<CR>
"inoreabbr <silent> <buffer> env <C-R>=BravefileReplaceInstruction("env", "ENV")<CR>
"inoreabbr <silent> <buffer> add <C-R>=BravefileReplaceInstruction("add", "ADD")<CR>
"inoreabbr <silent> <buffer> copy <C-R>=BravefileReplaceInstruction("copy", "COPY")<CR>
"inoreabbr <silent> <buffer> entrypoint <C-R>=BravefileReplaceInstruction("entrypoint", "ENTRYPOINT")<CR>
"inoreabbr <silent> <buffer> volume <C-R>=BravefileReplaceInstruction("volume", "VOLUME")<CR>
"inoreabbr <silent> <buffer> user <C-R>=BraveReplaceInstruction("user", "USER")<CR>
"inoreabbr <silent> <buffer> workdir <C-R>=BravefileReplaceInstruction("workdir", "WORKDIR")<CR>
"inoreabbr <silent> <buffer> arg <C-R>=BravefileReplaceInstruction("arg", "ARG")<CR>
"inoreabbr <silent> <buffer> onbuild <C-R>=BravefileReplaceInstruction("onbuild", "ONBUILD")<CR>
"inoreabbr <silent> <buffer> stopsignal <C-R>=bravefileReplaceInstruction("stopsignal", "STOPSIGNAL")<CR>

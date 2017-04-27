let g:airline#themes#snazzyfied#palette = {}

function! airline#themes#snazzyfied#refresh()
    let g:airline#themes#snazzyfied#palette.accents = {
                \ 'red': airline#themes#get_highlight('Error'),
                \ }

    let s:N1 = airline#themes#get_highlight2(['CursorLine', 'bg'], ['Directory', 'fg'], 'bold')
    let s:N2 = airline#themes#get_highlight('Pmenu')
    let s:N3 = airline#themes#get_highlight('TabLine')
    let g:airline#themes#snazzyfied#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

    let group = airline#themes#get_highlight('Type')
    let g:airline#themes#snazzyfied#palette.normal_modified = {
                \ 'airline_c': [ group[0], '', group[2], '', '' ]
                \ }

    let s:I1 = airline#themes#get_highlight2(['CursorLine', 'bg'], ['MoreMsg', 'fg'], 'bold')
    let g:airline#themes#snazzyfied#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
    let g:airline#themes#snazzyfied#palette.insert_modified = g:airline#themes#snazzyfied#palette.normal_modified

    let s:R1 = airline#themes#get_highlight2(['CursorLine', 'bg'], ['Error', 'fg'], 'bold')
    let g:airline#themes#snazzyfied#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
    let g:airline#themes#snazzyfied#palette.replace_modified = g:airline#themes#snazzyfied#palette.normal_modified

    let s:V1 = airline#themes#get_highlight2(['CursorLine', 'bg'], ['Statement', 'fg'], 'bold')
    let g:airline#themes#snazzyfied#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
    let g:airline#themes#snazzyfied#palette.visual_modified = g:airline#themes#snazzyfied#palette.normal_modified

    let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
    let g:airline#themes#snazzyfied#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#snazzyfied#palette.inactive_modified = g:airline#themes#snazzyfied#palette.normal_modified

    if get(g:, 'loaded_ctrlp', 0)
        let g:airline#themes#snazzyfied#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                \ airline#themes#get_highlight('CursorLine'),
                \ airline#themes#get_highlight2(['Constant', 'fg'], ['Normal', 'bg']),
                \ airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'], 'bold'))
    endif
endfun

call airline#themes#snazzyfied#refresh()

let g:airline#themes#minimo#palette = {}

function! airline#themes#minimo#refresh()
  let g:airline#themes#minimo#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let s:N1 = [8,11,8,11]
  let s:N2 = [11, 10, 11, 10]
  let s:N3 = airline#themes#get_highlight2(['NonText', 'fg'], ['Normal', 'bg'])
  let g:airline#themes#minimo#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#minimo#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['MoreMsg', 'fg'], 'bold')
  let s:I2 = airline#themes#get_highlight2(['MoreMsg', 'fg'], ['Normal', 'bg'])
  let s:I3 = s:N3
  let g:airline#themes#minimo#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#minimo#palette.insert_modified = g:airline#themes#tomorrow#palette.normal_modified

  let s:R1 = airline#themes#get_highlight('Error', 'bold')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#minimo#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#minimo#palette.replace_modified = g:airline#themes#tomorrow#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'], 'bold')
  let s:V2 = airline#themes#get_highlight2(['Constant', 'fg'], ['Normal', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#minimo#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#minimo#palette.visual_modified = g:airline#themes#tomorrow#palette.normal_modified

  let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['Line', 'bg'])
  let g:airline#themes#minimo#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#minimo#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }
endfunction

call airline#themes#minimo#refresh()


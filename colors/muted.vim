let g:colors_name = "muted"
" Functions {{{
function! s:hi(group,  fg, bg, style)
  exec "hi " . a:group . " gui=" . a:style[1]  . " guifg=" . a:fg[1] . " guibg=" . a:bg[1] . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] . " cterm=" . a:style[0]
endfunction
" }}}
" Colors: {{{
let s:none = ["NONE", "NONE"]
let s:bold = ["BOLD", "BOLD"]
let s:undercurl = ["UNDERCURL", "UNDERCURL"]
let s:italic = ["ITALIC", "ITALIC"]
let s:underline = ["UNDERLINE", "UNDERLINE"]
let s:bold_underline = ["BOLD,UNDERLINE", "BOLD,UNDERLINE"]
let s:bg = [
      \ [ '238', '#444444'],
      \ [ '237', '#3A3A3A'],
      \ [ '236', '#303030'],
      \ [ '235', '#262626'],
      \ ]
let s:fg = [
      \ [ '230', '#FFFFD3'],
      \ [ '180', '#D5B082'],
      \ [ '246', '#949494'],
      \ [ '243', '#767676'],
      \ [ '241', '#626262'],
      \ ]
let s:blue = [
      \ [ '109', '#87AFAF'],
      \ [ '110', '#87afd7'],
      \ ]
let s:red = [
      \ [ '203', '#FA615C'],
      \ [ '204', '#F96088'],
      \ ]
let s:green = [
      \ [ '149', '#B3D847'],
      \ [ '150', '#B2D77C'],
      \ ]
let s:purple = [
      \ [ '174', '#D78787'],
      \ [ '147', '#AEAEFF'],
      \ ]
let s:yellow = [
      \ [ '178', '#D6B000'],
      \ [ '221', '#FFD75F'],
      \ ]
let s:orange = [
      \ [ '215', '#FCB04F'],
      \ [ '216', '#FCB081'],
      \ ]
" }}}
" General: {{{
call s:hi("Search", s:none, s:bg[2], s:none)
call s:hi("Normal", s:fg[0], s:bg[0], s:none)
call s:hi("LineNr", s:fg[3], s:none, s:none)
call s:hi("CursorLineNr", s:fg[3], s:none, s:bold)
call s:hi("CursorLine", s:none, s:bg[1], s:none)
call s:hi("StatusLine", s:bg[3], s:fg[2], s:bold)
call s:hi("StatusLineNC", s:bg[0], s:fg[2], s:none)
call s:hi("VertSplit", s:bg[2], s:none, s:none)
call s:hi("Folded", s:fg[2], s:bg[1], s:none)
call s:hi("Error", s:bg[0], s:red[0], s:bold)
call s:hi("Todo", s:yellow[1], s:none, s:bold_underline)
call s:hi('Visual', s:none, s:bg[1], s:none)
hi! link VisualNOS Visual

call s:hi("ErrorMsg", s:red[0], s:none, s:none)
hi! link WarningMsg ErrorMsg

call s:hi('IncSearch',s:bg[0], s:orange[1], s:bold)
hi! link MoreMsg IncSearch
hi! link MoreMsg IncSearch
hi! link Question IncSearch

call s:hi('WildMenu', s:bg[0], s:blue[0], s:bold)
call s:hi("NonText", s:fg[4], s:none, s:none)
call s:hi("EndOfBuffer", s:bg[0], s:none, s:none)
call s:hi('Directory', s:blue[0], s:none, s:bold)


hi! link TablineSel StatusLine
hi! link Tabline StatusLineNC
call s:hi("TablineFill", s:bg[2], s:bg[2], s:none)

call s:hi('Pmenu', s:fg[1], s:bg[2], s:none)
call s:hi('PmenuSel', s:bg[0], s:orange[0], s:bold)
call s:hi('PmenuSbar', s:none, s:bg[3], s:none)
call s:hi('PmenuThumb', s:none, s:fg[1], s:none)

call s:hi('MatchParen', s:bg[0], s:orange[0], s:none)
if has("spell")
  hi! SpellBad guisp=SpellBad
  hi! SpellCap guisp=SpellCap
  hi! SpellLocal guisp=SpellLocal
  hi! SpellRare guisp=SpellRare
  call s:hi('SpellCap', s:yellow[1], s:none, s:undercurl)
  call s:hi('SpellLocal', s:yellow[1], s:none, s:undercurl)
  call s:hi('SpellRare', s:yellow[1], s:none, s:undercurl)
  call s:hi('SpellBad', s:red[0] , s:none, s:undercurl)
endif
" }}}
" Syntax: {{{
call s:hi('markdownCode', s:blue[0], s:none, s:none)
call s:hi('Comment', s:fg[2], s:none, s:italic)
call s:hi('Conceal', s:blue[0], s:none, s:none)
call s:hi('Underlined', s:none, s:none, s:underline)

hi! link Title Directory


call s:hi("Keyword", s:blue[0], s:none, s:bold)
hi! link Statement Keyword
hi! link Conditional Keyword
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Exception Keyword

call s:hi("Operator", s:red[0], s:none, s:none)
hi! link Identifier Operator
hi! link Boolean Operator
hi! link Constant Operator
hi! link Character Operator
hi! link SpecialKey Operator

call s:hi("String", s:green[1], s:none, s:none)

call s:hi("Type", s:purple[0], s:none, s:none)
hi! link Function Type
hi! link Constant Type
hi! link Character Type

call s:hi("PreProc", s:orange[0], s:none, s:none)
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link Number PreProc
hi! link Float PreProc
hi! link Special PreProc

call s:hi("StorageClass", s:orange[1], s:none, s:none)
hi! link Structure StorageClass
hi! link Typedef StorageClass
" }}}
" Terminal: {{{
if has('nvim')
  let g:terminal_color_0 = s:bg[1][1]
  let g:terminal_color_1 = s:red[1][1]
  let g:terminal_color_2 = s:yellow[1][1]
  let g:terminal_color_3 = s:green[1][1]
  let g:terminal_color_4 = s:blue[1][1]
  let g:terminal_color_5 = s:purple[1][1]
  let g:terminal_color_6 = s:orange[1][1]
  let g:terminal_color_7 = s:fg[0][1]
  let g:terminal_color_8 = s:fg[2][1]
  let g:terminal_color_9 = s:red[0][1]
  let g:terminal_color_10 = s:yellow[0][1]
  let g:terminal_color_11 = s:green[0][1]
  let g:terminal_color_12 = s:blue[0][1]
  let g:terminal_color_13 = s:purple[0][1]
  let g:terminal_color_14 = s:orange[0][1]
  let g:terminal_color_15 = s:fg[2][1]
endif
" }}}
let g:limelight_conceal_ctermfg=s:fg[2][0]

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
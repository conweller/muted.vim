if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

endif
let g:colors_name = "muted"
" Functions {{{
function! s:hi(group,  fg, bg, style)
  exec "hi " . a:group . " gui=" . a:style[1]  . " guifg=" . a:fg[1] . " guibg="
        \ . a:bg[1] . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] . " cterm="
        \ . a:style[0]
endfunction
" }}}
" Constants: {{{
let s:none = ["NONE", "NONE"]
let s:bold = ["BOLD", "BOLD"]
let s:undercurl = ["UNDERCURL", "UNDERCURL"]
let s:italic = ["ITALIC", "ITALIC"]
let s:underline = ["UNDERLINE", "UNDERLINE"]
let s:bold_underline = ["BOLD,UNDERLINE", "BOLD,UNDERLINE"]
let s:bold_italic = ["BOLD,ITALIC", "BOLD,ITALIC"]
" }}}
" Colors: {{{
let s:bg = [
      \ [ '236', '#303030'],
      \ [ '235', '#262626'],
      \ [ '234', '#1c1c1c'],
      \ [ '233', '#121212'],
      \ [ '232', '#080808'],
      \ ]
let s:fg = [
      \ [ '230', '#FFFFD3'],
      \ [ '180', '#D5B082'],
      \ [ '245', '#8a8a8a'],
      \ [ '240', '#585858'],
      \ [ '238', '#444444'],
      \ ]
let s:blue = [
      \ [ '109', '#87AFAF'],
      \ [ '110', '#87AFD7'],
      \ ]
let s:red = [
      \ [ '203', '#FA615C'],
      \ [ '210', '#FF8787'],
      \ ]
let s:green = [
      \ [ '149', '#B3D847'],
      \ [ '150', '#afd787'],
      \ ]
let s:purple = [
      \ [ '181', '#D7AFAF'],
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
call s:hi("ModeMsg", s:fg[0], s:none, s:bold)
call s:hi("Normal", s:fg[0], s:none, s:none)
call s:hi("NormalFloat", s:fg[0], s:bg[3], s:none)
call s:hi("Cursor", s:bg[0], s:fg[0], s:none)
call s:hi("TermCursor", s:bg[0], s:fg[0], s:none)
call s:hi("TermCursorNC", s:fg[0], s:bg[1], s:none)
call s:hi("LineNr", s:fg[3], s:none, s:none)
call s:hi("SignColumn", s:none, s:bg[1], s:none)
call s:hi("QuickFixLine", s:none, s:bg[2], s:bold)
call s:hi("CursorLineNr", s:fg[3], s:bg[1], s:none)
call s:hi("CursorLine", s:none, s:bg[1], s:none)
hi! link CursorColumn CursorLine
call s:hi("StatusLine", s:fg[0], s:fg[4], s:bold)
call s:hi("StatusLineNC", s:fg[2], s:fg[4], s:none)
call s:hi("VertSplit", s:fg[4], s:none, s:none)
call s:hi("Folded", s:fg[2], s:bg[1], s:none)
call s:hi("FoldColumn", s:orange[0], s:fg[4], s:bold)
call s:hi("Error", s:bg[0], s:red[0], s:bold)
call s:hi("Todo", s:yellow[1], s:none, s:bold)
call s:hi('Visual', s:none, s:bg[2], s:none)
hi! link VisualNOS Visual

call s:hi("ErrorMsg", s:red[0], s:none, s:bold)
call s:hi('Substitute',s:green[0], s:bg[3], s:bold)
hi! link WarningMsg ErrorMsg

call s:hi('IncSearch',s:none, s:fg[4], s:bold)
hi! link MoreMsg IncSearch

call s:hi('WildMenu', s:bg[0], s:blue[0], s:bold)
call s:hi("NonText", s:fg[4], s:none, s:none)
call s:hi("EndOfBuffer", s:fg[4], s:none, s:none)
call s:hi('Directory', s:blue[1], s:none, s:bold)


call s:hi("TablineSel", s:fg[0], s:fg[3], s:bold)
call s:hi("Tabline", s:fg[2], s:fg[3], s:none)
call s:hi("TablineFill", s:fg[2], s:fg[3], s:none)

call s:hi('Pmenu', s:fg[0], s:bg[2], s:none)
call s:hi('PmenuSel', s:bg[0], s:orange[0], s:bold)
call s:hi('PmenuSbar', s:none, s:bg[4], s:none)
call s:hi('PmenuThumb', s:none, s:fg[3], s:none)

call s:hi('MatchParen', s:fg[0], s:fg[3], s:bold)
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
call s:hi('markdownCode', s:blue[0], s:none, s:bold)
call s:hi('Comment', s:fg[2], s:none, s:italic)
call s:hi('Conceal', s:blue[0], s:none, s:bold)
call s:hi('Underlined', s:none, s:none, s:underline)

hi! link Title Directory



call s:hi("Keyword", s:blue[0], s:none, s:bold)
call s:hi("Question", s:purple[1], s:none, s:bold)
hi! link Statement Keyword

call s:hi("Label", s:green[0], s:none, s:bold)
hi! link Conditional Label
hi! link Repeat Label
hi! link Exception Label

call s:hi("Operator", s:red[1], s:none, s:none)
hi! link Identifier Operator
hi! link Boolean Operator
hi! link Constant Operator
hi! link Character Operator
hi! link SpecialKey Operator

call s:hi("String", s:green[1], s:none, s:italic)


call s:hi("Type", s:purple[0], s:none, s:none)
hi! link Constant Type
hi! link Character Type
hi! link Function Type

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
  let g:terminal_color_2 = s:green[1][1]
  let g:terminal_color_3 = s:yellow[1][1]
  let g:terminal_color_4 = s:blue[1][1]
  let g:terminal_color_5 = s:purple[1][1]
  let g:terminal_color_6 = s:orange[1][1]
  let g:terminal_color_7 = s:fg[0][1]
  let g:terminal_color_8 = s:fg[2][1]
  let g:terminal_color_9 = s:red[0][1]
  let g:terminal_color_10 = s:green[0][1]
  let g:terminal_color_11 = s:yellow[0][1]
  let g:terminal_color_12 = s:blue[0][1]
  let g:terminal_color_13 = s:purple[0][1]
  let g:terminal_color_14 = s:orange[0][1]
  let g:terminal_color_15 = s:bg[3][1]
endif
" }}}
" Diffs: {{{
call s:hi('DiffDelete', s:bg[0], s:red[0], s:none)
hi! link DiffRemoved DiffDelete
call s:hi('DiffAdd', s:bg[0], s:green[0], s:none)
hi! link DiffAdded DiffAdd
call s:hi('DiffChange', s:bg[0], s:blue[0], s:none)
call s:hi('DiffText', s:bg[0], s:yellow[1], s:none)
" }}}
" LSP: {{{
call s:hi("LspDiagnosticsError", s:red[0], s:none, s:bold)
call s:hi("LspDiagnosticsWarning", s:yellow[1], s:none, s:bold)
hi! link LspDiagnosticsInformation LspDiagnosticsWarning
hi! link LspDiagnosticsHint LspDiagnosticsWarning
hi! link LspReferenceText LspDiagnosticsWarning
hi! link LspReferenceRead LspDiagnosticsWarning
hi! link LspReferenceWrite LspDiagnosticsWarning


exe 'hi! LspDiagnosticsUnderlineError guisp='
      \.s:red[0][1]
      \.' gui=undercurl cterm=undercurl'
exe 'hi! LspDiagnosticsUnderlineWarning guisp='
      \.s:yellow[1][1]
      \.' gui=undercurl cterm=undercurl'
exe 'hi! LspDiagnosticsUnderlineInformation guisp='
      \.s:yellow[1][1]
      \.' gui=undercurl cterm=undercurl'
exe 'hi! LspDiagnosticsUnderlineHint guisp='
      \.s:yellow[1][1]
      \.' gui=undercurl cterm=undercurl'

hi! link CocErrorSign LspDiagnosticsError
hi! link CocWarningSign LspDiagnosticsWarning
hi! link CocInfoSign LspDiagnosticsWarning
hi! link CocHintSign LspDiagnosticsWarning


" }}}
" Findr: {{{
call s:hi("FindrMatch", s:none, s:fg[4], s:bold)
call s:hi("FindrSelected", s:none, s:bg[1], s:none)
call s:hi("FindrDirPartial", s:green[1], s:none, s:bold)
" }}}
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:

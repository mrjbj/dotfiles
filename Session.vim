let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/GitData/trash/phx_tdd/README.md
badd +43 ~/GitData/trash/phx_tdd/lib/phx_tdd_web.ex
badd +1 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/components/core_components.ex
badd +28 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/endpoint.ex
badd +3 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/components/layouts.ex
badd +1 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/components/layouts/app.html.heex
badd +1 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/components/layouts/root.html.heex
badd +20 ~/GitData/trash/phx_tdd/lib/phx_tdd_web/router.ex
badd +75 nvim-astro/lua/user/init.lua
badd +4 nvim-astro/lua/user/options.lua
badd +1 nvim-astro/lua/user/plugins/user.lua
badd +47 nvim-astro/lua/user/plugins/core.lua
badd +1 kitty/current-theme.conf
badd +33 nvim-astro/lua/user/plugins/telescope.lua
badd +56 nvim-astro/lua/user/mappings.lua
argglobal
%argdel
edit nvim-astro/lua/user/mappings.lua
argglobal
balt nvim-astro/lua/user/plugins/telescope.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
17,19fold
21,23fold
29,32fold
28,34fold
45,47fold
61,64fold
60,65fold
59,67fold
72,75fold
71,76fold
70,78fold
15,79fold
14,81fold
let &fdl = &fdl
let s:l = 54 - ((26 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 068|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

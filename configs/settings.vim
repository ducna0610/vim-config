
:set number
:set tabstop=2
:set shiftwidth=2
:set wrap linebreak
:set nohls
:syntax enable
:set mouse=a

nnoremap <f5> :vsplit <esc>:term g++ % && a.exe && del a.exe<enter>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
set ruler
set relativenumber
set hlsearch

"=============进行键盘映射=============
" 插入模式下，jj映射为Esc
imap jj <Esc>
" 插入模式下，Ctrl+a映射为Home 
imap <C-a> <Home>
" 插入模式下，Ctrl+e映射为End 
imap <C-e> <End>
" 插入模式下，禁用上下左右
"imap <Left> <Nop>
"imap <Right> <Nop>
"imap <Up> <Nop>
"imap <Down> <Nop>

" 普通模式下，禁用上下左右
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" 进入Vim时，Caps Lock 映射为Ctrl
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" 退出Vim时，Caps Lock 重新映射会Caps Lock
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

""pathogen插件设置
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
""去除vim的beep声音
set vb t_vb=

""设置语法高亮
syntax enable
syntax on

""设置自动检测文件类型
filetype on
""载入文件类型插件
filetype plugin on

""为特性文件类型载入相关的缩进格式
filetype indent on 
""自动对齐时缩进空格数目,即使用shift移动代码块时，移动的空格数目
set shiftwidth=4
""设置tab键空格数目
set tabstop=4

""设置配色方案:包括语法高亮和配色方案
""语法高亮采用std_c c.vim 放在syntax目录下
""配色方案文件放在colors目录下
set t_Co=256
set background=dark
"color molokai
color solarized
"colorscheme desert

""设置搜索不高亮显示，默认为高亮显示
set nohlsearch
""设置增量查找，在输入查找字符串的过程中，自动寻找当前匹配的第一个单词
set incsearch
""设置显示行号
set nu
""设置显示命令
set showcmd

""设置使用鼠标
let mapleader=","
""设置鼠标模式，a表示在所有模式下都可使用鼠标定位光标，不过这样会屏蔽鼠标右键功能
set mouse=a
map <silent> <leader>ma :set mouse=a<CR>
map <silent> <leader>mp :set mouse=<CR>

""代码折叠
set foldmethod=syntax
""设置启动vim时不要自动折叠代码
set foldlevel=100


""指定使用的tags文件,tags是taglist和omnicppcomplete工作的基础
set tags=tags
"set autochdir
"set tags+=/home/libin/linux0.11/linux-0.11/tags
"set tags=/home/libin/auto_test/tags
"设置生成tags文件快捷键
map <silent> <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

"----------------------------------
"taglist插件设置
"----------------------------------
"设置打开文件时自动打开taglist,此处不设置自动打开，而是使用winmanager打开它
"let tlist_auto_open=1
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File=1
"设置当最后一个窗口退出时，taglist也退出
let Tlist_Exit_OnlyWindow=1

"设置快捷键映射,输入,tl 就可以打开或关闭taglist窗口
map <silent> <leader>tl :TlistToggle<CR>

"----------------------------------
"cscope插件设置
"----------------------------------
"设置quickfix窗口
set cscopequickfix=s-,c-,d-,i-,t-,e-
map <silent> <F11> :!cscope -Rbq <CR><CR> :cs add cscope.out <CR>



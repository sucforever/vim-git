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

""设置配色方案:包括语法高亮和配色方案
""语法高亮采用std_c c.vim 放在syntax目录下
""配色方案文件放在colors目录下
set t_Co=256
set background=dark
"color molokai
color solarized
"colorscheme desert



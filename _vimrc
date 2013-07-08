set nocompatible
"source $VIMRUNTIME/vimrc_example.vim "�����װʱĬ�����ã�source��vimrc_example.vim��������encoding=utf-8ʱ�����������Ĳ˵��������Խ��
source $VIMRUNTIME/mswin.vim
behave mswin

" ���塢�ֺ�
set guifont=Monaco:h16

set guifontwide=��Բ:h18
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���consle�������
language messages zh_CN.utf-8


" ��������
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set ffs=unix,dos,mac
set ff=unix						    "�����ļ���ʽΪUNIX��ʽ

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"================================

"colorscheme desert
colorscheme molokai        " ��ɫ����darkblue2 
"colorscheme dusk
syntax enable                " ���﷨����
syntax on                    " �����ļ��������
filetype indent on           " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype plugin on           " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on
set tabstop=4                " ����tab���Ŀ��
set shiftwidth=4             " ����ʱ�м佻��ʹ��4���ո�
set autoindent               " �Զ�����
set backspace=2              " �����˸������
set cindent shiftwidth=4     " �Զ�����4�ո�nmap <silent> <F7> :NERDTreeToggle<cr>
set softtabstop=4
set smartindent              " �����Զ�����
set ai!                      " �����Զ�����
set nu!                      " ��ʾ�к�
set showmatch               " ��ʾ����������
set mouse=a                  " �������
set ruler                    " ���½���ʾ���λ�õ�״̬��
set incsearch                " ����bookʱ��������/bʱ���Զ��ҵ�
set hlsearch                 " ����������ʾ���
set incsearch                " ����ʵʱ��������
set nowrapscan               " �������ļ�����ʱ����������
set nocompatible             " �رռ���ģʽ
set vb t_vb=                 " �ر���ʾ��
set cursorline              " ͻ����ʾ��ǰ��
set hidden                   " ��������δ������޸�ʱ�л�������


if has("gui_running")
    au GUIEnter * simalt ~x  " ��������ʱ�Զ����
    set guioptions-=m       " ���ز˵���
    set guioptions-=T        " ���ع�����
    set guioptions-=L       " ������������
    set guioptions-=r       " �����Ҳ������
    set guioptions-=b       " ���صײ�������
    set showtabline=0       " ����Tab��
endif

set writebackup              " �����ޱ����ļ�
set nobackup
set autochdir                " �趨�ļ������Ŀ¼Ϊ��ǰĿ¼
"�趨�����۵�
"set nowrap                  " ���ò��Զ�����
set foldmethod=syntax        " ѡ������۵�����
set foldlevel=100            " ��ֹ�Զ��۵�


" For Haskell
:let hs_highlight_delimiters=1            " ���������
:let hs_highlight_boolean=1               " ��True��Falseʶ��Ϊ�ؼ���
:let hs_highlight_types=1                 " �ѻ������͵�����ʶ��Ϊ�ؼ���
:let hs_highlight_more_types=1            " �Ѹ��ೣ������ʶ��Ϊ�ؼ���
:let hs_highlight_debug=1                 " �������Ժ���������
:let hs_allow_hash_operator=1             " ��ֹ��#����Ϊ����

set laststatus=2                          " ����״̬����Ϣ
set cmdheight=1                           " �����еĸ߶ȣ�Ĭ��Ϊ1�������������

" ״̬����ʾ������ [����ϵͳƽ̨���ļ����͡����ꡢ��ռ������ʱ���]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
"12/03/13
au BufRead,BufNewFile *.js set syntax=jquery		"���jquery��ɫ֧��
let b:javascript_fold=1		" ��javascript�۵�
let javascript_enable_domhtmlcss=1			" ��javascript��dom��html��css��֧��
"����ģʽ�µ���wm���ɴ򿪴��������
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>
"Ҳ����ʹ��NERDTree����������ļ�·��
nmap ne :NERDTree<cr>
nmap nc :NERDTreeClose<cr>
"��nhȥ�����Һ�ĸ���
nmap nh :noh<cr>
"���Ϊ
nmap ss :browse confirm saveas<cr>
"�½���ǩ
nmap <C-N> :tabnew<CR>
"�Զ��� Vim ����Ŀ¼Ǩ�Ƶ������ı��ļ���Ŀ¼��
autocmd BufEnter * cd %:p:h
"��Ctrl+PageUp/PageDown�л���ǩҳ
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
"��F8��F9�л���ǩҳ
nnoremap <silent> <F8> :tabp<CR>
nnoremap <silent> <F9> :tabn<CR>
"��F12�رյ�ǰ��ǩ
nnoremap <silent> <F12> :tabc<CR>
"Alt+n �л���ǩҳ
function! BufPos_ActivateBuffer(num)
    let l:count = 1
    for i in range(1, bufnr("$"))
        if buflisted(i) && getbufvar(i, "&modifiable")
            if l:count == a:num
                exe "buffer " . i
                return
            endif
            let l:count = l:count + 1
        endif
    endfor
    echo "No buffer!"
endfunction

function! BufPos_Initialize()
    for i in range(1, 9)
        exe "map <M-" . i . "> :call BufPos_ActivateBuffer(" . i . ")<CR>"
    endfor
    exe "map <M-0> :call BufPos_ActivateBuffer(10)<CR>"
endfunction
autocmd VimEnter * call BufPos_Initialize()

"��ǩҳ����ȥ����ǰ���༭�ļ���·����Ϣ��ֻ�����ļ���
function ShortTabLabel ()
    let bufnrlist = tabpagebuflist (v:lnum)
    let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
    let filename = fnamemodify (label, ':t')
    return filename
endfunction
set guitablabel=%{ShortTabLabel()}

"gvim ��F2�����˵���������
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
"<F5>��ʾĿ¼,<F6>�ر�Ŀ¼<F2><F2>
nnoremap <silent> <F5> :NERDTree<CR>
nnoremap <silent> <F6> :NERDTreeClose<CR>
" winManager ����
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 
"����ZenCoding,��Ctrl+e�滻ctrl+y+,չ�����ʽ
let g:user_zen_settings = {
 \ 'php' : {
 \ 'extends' : 'html',
 \ 'filters' : 'c',
 \ },
 \ 'xml' : {
 \ 'extends' : 'html',
 \ },
 \ 'html' : {
 \ 'extends' : 'html',
 \ },
 \}
  let g:user_zen_expandabbr_key = '<c-e>'
  let g:use_zen_complete_tag = 1


"�Զ����������
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i

function ClosePair(char)
if getline('.')[col('.') - 1] == a:char
return "<Right>"
else
return a:char
endif
endf

"html_indent
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc""

"jQuery syntax
au BufRead,BufNewFile *.js set syntax=jquery

"miniBuffer
let g:miniBufExplMapCTabSwitchBufs = 1 

"ctags
map <C-F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 

"TagList
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
nmap <silent> <F6> :TlistToggle<cr>

"Remove vsplit bar 
:set fillchars+=vert:\ 

nmap <silent> <F7> :NERDTreeToggle<cr>

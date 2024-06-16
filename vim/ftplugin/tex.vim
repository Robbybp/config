syntax on
filetype plugin indent on
set shiftwidth=2
set tabstop=2

let g:Tex_SectionMaps=0
" This is a hack to get around ETL->{trivlist macro}, which happens when I try
" to type 'NETL'. This has the unfortunate side effect of replacing
" trivlist+F5 with ETL, but that is okay for now as I never use trivlist.
" A longer term solution is to switch to vimtex...
let g:Tex_Env_trivlist="ETL"

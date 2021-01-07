"if has("gui_running")
"    set lines=45 columns=94
"endif

set number
set relativenumber
set ignorecase
set smartcase
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:\ \ ,trail:_
set guifont=Iosevka\ 14
set guioptions-=T
set guioptions-=m
set cursorline

filetype on
syntax on

highlight Normal guibg=#efefef
highlight LineNr guifg=slategrey
highlight CursorLineNr guifg=darkslategrey cterm=bold
highlight CursorLine guibg=#e0e0e0 ctermbg=darkred cterm=NONE
highlight MatchParen gui=bold guifg=slateblue guibg=NONE cterm=bold ctermfg=blue ctermbg=NONE
highlight Error NONE
highlight Delimiter guifg=black
highlight PreProc gui=bold guifg=black guibg=NONE

imap <Up> <C-o>gk
imap <Down> <C-o>gj
imap ii <Esc>
imap qq <Esc>
imap wd <C-o>:lcd %:p:h<CR>
imap ww <C-o>:w<CR>
imap wq <Esc>:wq<CR>
imap dq <Esc>:q!<CR>

" LaTeX
highlight texMathOper guifg=black
highlight texComment guifg=slategrey
highlight texInputFile guifg=black
highlight texInputFileOpt guifg=black
highlight texDocType gui=bold guifg=black
highlight texDocTypeArgs guifg=black
highlight texBeginEnd gui=bold guifg=slateblue
highlight texBeginEndName guifg=black
highlight texDefParm guifg=black
highlight texLength guifg=black
highlight texCmdArgs guifg=black
highlight texSpecialChar guifg=black

autocmd FileType tex imap ko <C-o>:w \| !pdflatex %<CR><CR>
"autocmd FileType tex imap ko <C-o>:w \| !pdflatex -shell-escape %<CR><CR>
autocmd FileType tex imap kk <C-o>:w \| !pdflatex % && pdflatex %<CR><CR>
autocmd FileType tex imap km <C-o>:w \| execute "!pdflatex % && " . "biber " . expand('%:r') . ".bcf && pdflatex %"<CR><CR>
autocmd FileType tex imap k0 <C-o>:w \| !xelatex %<CR><CR>
autocmd FileType tex imap <Tab><Tab> <Esc>/---<CR>3s

autocmd FileType tex imap ;art \documentclass[a4paper,12pt]{article}<CR><CR>\begin{document}<CR><CR>\end{document}<Esc>ki
autocmd FileType tex imap ;usep \usepackage{}<Esc>i
autocmd FileType tex imap ;add \addbibresource{}<Esc>i
autocmd FileType tex imap ;new \newcommand{}{---}<Esc>2T{i
autocmd FileType tex imap ;ren \renewcommand{}{---}<Esc>2T{i
autocmd FileType tex imap ;ti \title{}<Esc>i
autocmd FileType tex imap ;su \subtitle{}<Esc>i
autocmd FileType tex imap ;au \author{}<Esc>i
autocmd FileType tex imap ;ins \institute{}<Esc>i
autocmd FileType tex imap ;da \date{}<Esc>i
autocmd FileType tex imap ;toc \tableofcontents
autocmd FileType tex imap ;sec \section{}<Esc>i
autocmd FileType tex imap ;ssec \subsection{}<Esc>i
autocmd FileType tex imap ;sssec \subsubsection{}<Esc>i
autocmd FileType tex imap ;par \paragraph{}<Esc>i
autocmd FileType tex imap ;subpar \subparagraph{}<Esc>i
autocmd FileType tex imap ;bf \textbf{}<Esc>i
autocmd FileType tex imap ;it \textit{}<Esc>i
autocmd FileType tex imap ;sl \textsl{}<Esc>i
autocmd FileType tex imap ;sc \textsc{}<Esc>i
autocmd FileType tex imap ;tt \texttt{}<Esc>i
autocmd FileType tex imap ;co \textcolor{}{---}<Esc>2T{i
autocmd FileType tex imap ;mm $$<Esc>i
autocmd FileType tex imap ;dm $$<CR><CR>$$<Esc>ki
autocmd FileType tex imap ;cen \begin{center}<CR><CR>\end{center}<Esc>ki
autocmd FileType tex imap ;gr \begingroup<CR><CR>\endgroup<Esc>ki
autocmd FileType tex imap ;cing \centering<CR><CR>\par<Esc>ki
autocmd FileType tex imap ;hs \hspace{}<Esc>i
autocmd FileType tex imap ;vs \vspace{}<Esc>i
autocmd FileType tex imap ;hf \hspace{\fill}
autocmd FileType tex imap ;vf \vspace{\fill}
autocmd FileType tex imap ;ss \smallskip
autocmd FileType tex imap ;ms \medskip
autocmd FileType tex imap ;bs \bigskip
autocmd FileType tex imap ;qu \quad
autocmd FileType tex imap ;setl \setlength{}{---}<Esc>2T{i
autocmd FileType tex imap ;isep \setlength{\itemsep}{}<Esc>T{i
autocmd FileType tex imap ;item \begin{itemize}<CR><CR>\end{itemize}<Esc>ki
autocmd FileType tex imap ;enum \begin{enumerate}<CR><CR>\end{enumerate}<Esc>ki
autocmd FileType tex imap ;desc \begin{description}<CR><CR>\end{description}<Esc>ki
autocmd FileType tex imap ;li \item 
autocmd FileType tex imap ;di \item[] ---<Esc>T[a
autocmd FileType tex imap ;fig \begin{figure}[H]<CR><CR>\end{figure}<Esc>ki
autocmd FileType tex imap ;inc \includegraphics[]{---}<Esc>T[i
autocmd FileType tex imap ;cap \caption{}<Esc>i
autocmd FileType tex imap ;lab \label{}<Esc>i
autocmd FileType tex imap ;ref \ref{}<Esc>i
autocmd FileType tex imap ;aut \autoref{}<Esc>i
autocmd FileType tex imap ;equ \begin{equation}<CR><CR>\end{equation}<Esc>ki
autocmd FileType tex imap ;eqs \begin{equation*}<CR><CR>\end{equation*}<Esc>ki
autocmd FileType tex imap ;gath \begin{gather}<CR><CR>\end{gather}<Esc>ki
autocmd FileType tex imap ;gaths \begin{gather*}<CR><CR>\end{gather*}<Esc>ki
autocmd FileType tex imap ;alig \begin{align}<CR><CR>\end{align}<Esc>ki
autocmd FileType tex imap ;aligs \begin{align*}<CR><CR>\end{align*}<Esc>ki
autocmd FileType tex imap ;frac \frac{}{---}<Esc>2T{i
autocmd FileType tex imap ;tabu \begin{tabular}{}<CR>---<CR>\end{tabular}<Esc>2kf{a
autocmd FileType tex imap ;tabl \begin{table}[H]<CR><CR>\end{table}<Esc>ki
autocmd FileType tex imap ;cit \cite{}<Esc>i
autocmd FileType tex imap ;bibl \bibliography{}<Esc>i
autocmd FileType tex imap ;bibs \bibliographystyle{}<Esc>i
autocmd FileType tex imap ;prin \printbibliography

autocmd FileType tex imap ;setbt \setbeamertemplate{}{---}<Esc>2T{i
autocmd FileType tex imap ;usebf \usebeamerfont{}<Esc>i
autocmd FileType tex imap ;usebc \usebeamercolor[]{---}<Esc>T[i
autocmd FileType tex imap ;fram \begin{frame}{}<CR>---<CR>\end{frame}<Esc>2kf{a
autocmd FileType tex imap ;blo \begin{block}{}<CR>---<CR>\end{block}<Esc>2kf{a

autocmd FileType tex imap 44 $$
autocmd FileType tex imap 55 %
autocmd FileType tex imap 77 &
autocmd FileType tex imap 88 *
autocmd FileType tex imap cx <Esc>0i%
autocmd FileType tex imap xz <Esc>:s/^%//<Enter>i

" Bash, Python
autocmd FileType sh,python imap cx <Esc>0i#
autocmd FileType sh,python imap xz <Esc>:s/^#//<Enter>i

" Octave/MATLAB
autocmd FileType matlab imap cx <Esc>0i%
autocmd FileType matlab imap xz <Esc>:s/^%//<Enter>i

" HTML, CSS
autocmd FileType html imap ;ht <!DOCTYPE html><Enter><html><Enter><Enter></html><Esc>ki
autocmd FileType html imap ;hea <head><Enter><Enter></head><Esc>ki
autocmd FileType html imap ;ti <title></title><Esc>0f>a
autocmd FileType html imap ;bo <body><Enter><Enter></body><Esc>ki
autocmd FileType html imap ;h1 <h1></h1><Esc>0f>a
autocmd FileType html imap ;h2 <h2></h2><Esc>0f>a
autocmd FileType html imap ;h3 <h3></h3><Esc>0f>a
autocmd FileType html imap ;s <br>
autocmd FileType html imap cx <Esc>0i<!-- <Esc>$a -->
autocmd FileType html imap xz <Esc>:s/<!-- //<Enter>:s/ -->//<Enter>i

autocmd FileType css imap ;bo border: ;<Esc>i
autocmd FileType css imap ;mar margin: ;<Esc>i
autocmd FileType css imap ;he height: ;<Esc>i
autocmd FileType css imap ;di display: ;<Esc>i
autocmd FileType css imap ;text text-align: ;<Esc>i
autocmd FileType css imap ;f font-family: ;<Esc>i
autocmd FileType css imap ;fs font-size: ;<Esc>i
autocmd FileType css imap ;fw font-weight: ;<Esc>i
autocmd FileType css imap ;co color: ;<Esc>i
autocmd FileType css imap ;pa padding: ;<Esc>i
autocmd FileType css imap cx <Esc>0i/*<Esc>$a*/
autocmd FileType css imap xz <Esc>:s/[\/\*]//g<Enter>i

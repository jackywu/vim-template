" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker nospell nofoldenable filetype=vim

let s:plugin_root = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let s:template_root = s:plugin_root . '/template/'

augroup vim_template
    " :au[tocmd] [group] {event} {pat} [nested] {cmd}
    autocmd!
    autocmd BufNewFile *.c silent exec    '0r ' . s:template_root . 'c.tmpl'
    autocmd BufNewFile *.cpp silent exec  '0r ' . s:template_root . 'cpp.tmpl'
    "autocmd BufNewFile *.go silent exec   '0r ' . s:template_root . 'go.tmpl'
    autocmd BufNewFile *.java silent exec '0r ' . s:template_root . 'java.tmpl'
    autocmd BufNewFile *.lua silent exec  '0r ' . s:template_root . 'lua.tmpl'
    autocmd BufNewFile *.md silent exec   '0r ' . s:template_root . 'markdown.tmpl'
    autocmd BufNewFile *.php silent exec  '0r ' . s:template_root . 'php.tmpl'
    autocmd BufNewFile *.py silent exec   '0r ' . s:template_root . 'python.tmpl'
    autocmd BufNewFile *.rb silent exec   '0r ' . s:template_root . 'ruby.tmpl'
    autocmd BufNewFile *.sh silent exec   '0r ' . s:template_root . 'shell.tmpl'
augroup END


" --------------------------------------------------------------------
" Description: This plugin is based on some sources, I found on the
"              Internet long time ago. It saves the sesstion into the
"              local .vim direcory, if it is present, and loads
"              local .vim/local.vim also, if there is a file.
" Author: Alexander Artemenko <svetlyak.40wt@gmail.com>
" Repository: http://github.com/svetlyak40wt/vim-local-settings
" --------------------------------------------------------------------

if getfsize('.vim') == 0
    " Пробуем загрузить локальные настройки
    silent! source .vim/local.vim

    " Запрещаем восстановление настроек из сессии,
    " т. к. тогда при изменении ~/.vimrc даже после
    " перезагрузки IDE новые настройки не будут
    " вступать в силу.
    set sessionoptions-=options

    " При закрытии Vim'а сохраняем информацию о текущей сессии
    au VimLeave * :NERDTreeClose
    au VimLeave * :mksession! .vim/ide.session


    " Загружаем ранее сохраненную сессию
    if getfsize(".vim/ide.session") >= 0 && argc() == 0
        source .vim/ide.session
    endif
endif

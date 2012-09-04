Vim Local Settings
==================

This is a simple vim plugin, which will store session on exit,
into the `.vim/ide.session` if there is a `.vim` folder
in the current working directory.

Also, it tries to read local configuration from the `.vim/local.vim`,
if it is present.

This is useful when you want to store per project configuration in the
VCS.

Installation
------------

* Recommended way, is to use [Vim Addon Manager](https://github.com/MarcWeber/vim-addon-manager).
  Just add a `github:svetlyak40wt/vim-local-settings` into the addons list.
* Or use other package manager.
* Or something like [pathogen](https://github.com/tpope/vim-pathogen).
* Or, if you are orthodox, than download `local_settings.vim` file, and put it into your `~/.vim/plugin`
  directory.

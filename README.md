Configurator-vim
================

[Configurator-vim] is a [configurator] feature which contains all of my configurations for [vim].

__About this configuration:__

* [Vundle] is used for managing plugins.
* It uses the [Solarized] color scheme, which has been manually installed (not with vundle) as it seems to work out better for me.
* Configuration files are placed in `config-available` and are enabled by creating links to them in `config-enabled`.  This makes it very easy to enable or disable configurations without actually deleting any code.  For instance you can have special configurations for colorschemes already on hand and can switch simply by removing the links for the old configuration and creating links to the new ones.

[configurator-vim]: https://github.com/boweevil/configurator-vim
[configurator]: https://github.com/boweevil/configurator
[issue tracker]: https://github.com/boweevil/configurator-vim/issues
[vundle]: https://github.com/VundleVim/Vundle.vim
[solarized]: http://ethanschoonover.com/solarized
[vim]: http://www.vim.org/

## How to use.
As configuration is tailored to personal taste, you may not like how I have things configured.  However, this is a good template for managing vim's settings.  I imagine it would be useful to fork this repository and put your personal touch to it.  Then use [configurator] to install it.  If you'd like to use my configuration, you are more than welcome to.  Just note that I make changes to suit my needs.  So, you may want to consult my commit messages before pulling in any updates.

## Feedback

Having issues with [configurator-vim]? Report them in the [issue tracker].

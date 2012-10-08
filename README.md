# Vim

It is recommended that you use [gVim](http://www.vim.org/download.php#pc) in either Windows or Linux and [MacVim](https://github.com/b4winckler/macvim/downloads) for Mac.

# Usage

Clone this repo into your home directory either as .vim (linux/mac) or
vimfiles (Windows). Such as:

    git clone --recursive git://github.com/mmozuras/vimfiles.git ~/.vim

Now you should create a new <tt>.vimrc</tt> file in your home directory that
loads the pre-configured one that comes bundled in this package. You can do it
on Linux/Mac like this:

    echo "source ~/.vim/vimrc" > ~/.vimrc

On Windows you should create a <tt>_vimrc</tt> (_ instead of a dot) and add
the following line inside:

    source ~/vimfiles/vimrc

This way you can override the default configuration by adding your own inside
this file.

## Learn Vim

Visit the following sites to learn more about Vim:

* [vim.org](http://www.vim.org/)
* [Vimcasts](http://vimcasts.org)
* [Derek Wyatt's videos](http://www.derekwyatt.org/vim/vim-tutorial-videos/)
* [VimGolf](http://vimgolf.com/)

## Credits

Some of the people that inspired my .vim:

* [Martin Grenfell](https://github.com/scrooloose)
* [Tim Pope](https://github.com/tpope)
* [Fabio Akita](https://github.com/akitaonrails)
* [Jeremy Mack](https://github.com/mutewinter)
* [Yan Pritzker](https://github.com/skwp)

Also check out [Vimbits](http://vimbits.com) for a ton of great vimrc snippets.

## Plugin List

Plugins themselves are in the [bundle/](https://github.com/mmozuras/vimfiles/tree/master/bundle) folder. Their configurations are in the [plugin/settings/](https://github.com/mmozuras/vimfiles/tree/master/plugin/settings) folder. Plugins I currently use:

* [clam](https://github.com/sjl/clam.vim) - easily run shell commands from Vim
* [ctrlp](https://github.com/kien/ctrlp.vim) - the fastest and most intuitive way for opening files in your project
* [endwise](http://www.vim.org/scripts/script.php?script_id=2386) - support to close Ruby blocks such as 'if', 'do' with 'end'
* [fugitive](http://www.vim.org/scripts/script.php?script_id=2975) - support for Git, adding convenient commands such as :Gstatus, :Gread, :Gmove
* [gundo](http://www.vim.org/scripts/script.php?script_id=3304) - visualizes undo tree
* [lusty-juggler](http://www.vim.org/scripts/script.php?script_id=2050) - manage your file buffers
* [neocomplcache](neocomplcach://github.com/Shougo/neocomplcachec) - ultimate auto-completion system
* [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) - the magic souce that makes it super easy to install plugins
* [powerline](http://https://github.com/Lokaltog/vim-powerline) - fills statusline with useful information
* [rails](https://github.com/tpope/vim-rails) - Ruby on Rails power tools
* [smartinput](https://github.com/kana/vim-smartinput) - automatically closes brackets and quotes.
* [snipmate](https://github.com/akitaonrails/snipmate.vim) - support for textmate-like snippets. Snipmate itself and snippets are in the snipmate/ folder
* [surround](http://www.vim.org/scripts/script.php?script_id=1697) - add, change, remove surrounding parentheses, brackets, quotes, etc
* [syntastic](http://www.vim.org/scripts/script.php?script_id=2736) - checks for syntax errors in many languages
* [tcomment](https://github.com/tomtom/tcomment_vim) - support to comment lines of code
* [unimpaired](https://github.com/tpope/vim-unimpaired) - pairs of handy bracket mappings
* [yankring](http://www.vim.org/scripts/script.php?script_id=1234) - maintains a history of yanks and deletes. History can be shared between multiple instances of vim

### Language Plugins

[coffee-script](https://github.com/kchmck/vim-coffee-script)
[golang](https://github.com/uggedal/go-vim)
[erlang](https://github.com/jimenezrick/vimerl)
[html5](https://github.com/othree/html5.vim)
[jade](https://github.com/digitaltoad/vim-jade)
[markdown](http://www.vim.org/scripts/script.php?script_id=1242)
[ruby](https://github.com/vim-ruby/vim-ruby/wiki)
[scss](https://github.com/cakebaker/scss-syntax.vim)
[slim](https://github.com/bbommarito/vim-slim)
[stylus](https://github.com/wavded/vim-stylus)

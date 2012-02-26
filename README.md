# Vim

It is recommended that you use [gVim](http://www.vim.org/download.php#pc) in either Windows or Linux and [MacVim](https://github.com/b4winckler/macvim/downloads) for Mac.

# Usage

Clone this repo into your home directory either as .vim (linux/mac) or
vimfiles (Windows). Such as:

    git clone --recursive git://github.com/akitaonrails/vimfiles.git ~/.vim

Now you should create a new <tt>.vimrc</tt> file in your home directory that
loads the pre-configured one that comes bundled in this package. You can do it
on Linux/Mac like this:

    echo "source ~/.vim/vimrc" > ~/.vimrc

On Windows you should create a <tt>_vimrc</tt> (_ instead of dot) and add
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

## Plugin List

* [ack](http://www.vim.org/scripts/script.php?script_id=2572) - type :Ack [search pattern] to search your entire project
* [autoclose](https://github.com/vim-scripts/AutoClose) - automatically closes brackets and quotes
* [camelcasemotion](http://www.vim.org/scripts/script.php?script_id=1905) - motions that help navigate CamelCased text
* [coffee-script](https://github.com/kchmck/vim-coffee-script) - syntax highlight for Coffee Script
* [ctrlp](https://github.com/kien/ctrlp.vim) - the fastest and most intuitive way for opening files in your project
* [cucumber](http://www.vim.org/scripts/script.php?script_id=2973) - support for cucumber features such as syntax highlight, indentation, etc
* [endwise](http://www.vim.org/scripts/script.php?script_id=2386) - support to close Ruby blocks such as 'if', 'do' with 'end'
* [fugitive](http://www.vim.org/scripts/script.php?script_id=2975) - support for Git, adding convenient commands such as :Gstatus, :Gread, :Gmove
* [grep](https://github.com/vim-scripts/grep.vim) - integrates the grep, fgrep, egrep, and agrep tools with Vim
* [gundo](http://www.vim.org/scripts/script.php?script_id=3304) - visualizes undo tree
* [html5](https://github.com/othree/html5.vim) - omnicomplete function and syntax for HTML5
* [jade](https://github.com/digitaltoad/vim-jade) - syntax highlight for Jade
* [jquery](https://github.com/itspriddle/vim-jquery) - Vim syntax file to add some colorations for jQuery keywords and css selectors
* [less](https://github.com/groenewege/vim-less) - syntax highlight for Less
* [lusty-juggler](http://www.vim.org/scripts/script.php?script_id=2050) - manage your file buffers
* [markdown](http://www.vim.org/scripts/script.php?script_id=1242) - syntax highlight for Markdown
* [neocomplcache](neocomplcach://github.com/Shougo/neocomplcachec) - ultimate auto-completion system
* [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) - the magic souce that makes it super easy to install plugins
* [powerline](http://https://github.com/Lokaltog/vim-powerline) - fills statusline with useful information
* [preview](http://www.vim.org/scripts/script.php?script_id=3344) - [leader] P previews Markdown, Rdoc, Textile, html. Requires Ruby and other gems
* [ruby](https://github.com/vim-ruby/vim-ruby/wiki) - syntax highlight, smart identation, auto-complete for Ruby
* [slim](https://github.com/bbommarito/vim-slim) - syntax highlight for Slim
* [snipmate](https://github.com/akitaonrails/snipmate.vim) - support for textmate-like snippets for several languages
* [surround](http://www.vim.org/scripts/script.php?script_id=1697) - add, change, remove surrounding parentheses, brackets, quotes, etc
* [syntastic](http://www.vim.org/scripts/script.php?script_id=2736) - checks for syntax errors in many languages
* [stylus](https://github.com/wavded/vim-stylus) - syntax highlight for Stylus
* [tcomment](https://github.com/tomtom/tcomment_vim) - support to comment lines of code
* [textile](http://www.vim.org/scripts/script.php?script_id=2305) - syntax highlight for Textile
* [yankring](http://www.vim.org/scripts/script.php?script_id=1234) - maintains a history of yanks and deletes. History can be shared between multiple instances of vim

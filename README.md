# Vim

It is recommended that you use [gVim](http://www.vim.org/download.php#pc) in either Windows or Linux and [MacVim](https://github.com/b4winckler/macvim/downloads) for Mac.

# Bundled Plugins

* [Ack](http://www.vim.org/scripts/script.php?script_id=2572) - type :Ack [search pattern] to search your entire project
* [bufexplorer](http://www.vim.org/scripts/script.php?script_id=42) - manage your file buffers
* [camelcasemotion](http://www.vim.org/scripts/script.php?script_id=1905) - motions that help navigate CamelCased text
* [coffee-script](https://github.com/kchmck/vim-coffee-script) - syntax highlight for Coffee Script
* [ctrlp](https://github.com/kien/ctrlp.vim) - the fastest and most intuitive way for opening files in your project
* [cucumber](http://www.vim.org/scripts/script.php?script_id=2973) - support for cucumber features such as syntax highlight, indentation, etc
* [endwise](http://www.vim.org/scripts/script.php?script_id=2386) - support to close Ruby blocks such as 'if', 'do' with 'end'
* [fugitive](http://www.vim.org/scripts/script.php?script_id=2975) - support for Git, adding convenient commands such as :Gstatus, :Gread, :Gmove
* [gundo](http://www.vim.org/scripts/script.php?script_id=3304) - visualizes undo tree
* [haml](http://www.vim.org/scripts/script.php?script_id=1773) - syntax highlight for HAML
* [html5.vim](https://github.com/othree/html5.vim) - omnicomplete function and syntax for HTML5
* [jade](https://github.com/digitaltoad/vim-jade) - syntax highlight for Jade
* [jquery](https://github.com/itspriddle/vim-jquery) - Vim syntax file to add some colorations for jQuery keywords and css selectors
* [less](https://github.com/groenewege/vim-less) - syntax highlight for Less
* [markdown](http://www.vim.org/scripts/script.php?script_id=1242) - syntax highlight for Markdown
* [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) - the magic souce that makes it super easy to install plugins
* [powerline](http://https://github.com/Lokaltog/vim-powerline) - fills statusline with useful information
* [preview](http://www.vim.org/scripts/script.php?script_id=3344) - [leader] P previews Markdown, Rdoc, Textile, html. Requires Ruby and other gems
* [rails](http://www.vim.org/scripts/script.php?script_id=1567) - lot's of tools to make it easier to manage your Rails projects
* [ruby](https://github.com/vim-ruby/vim-ruby/wiki) - syntax highlight, smart identation, auto-complete for Ruby
* [ruby-sinatra](https://github.com/hallison/vim-ruby-sinatra) - syntax highlight for Sinatra
* [securemodelines](http://www.vim.org/scripts/script.php?script_id=1876) - makes it harder to do something unsecure with modeline
* [slim](https://github.com/bbommarito/vim-slim) - syntax highlight for Slim
* [snipmate](https://github.com/akitaonrails/snipmate.vim) - support for textmate-like snippets for several languages
* [supertab](http://www.vim.org/scripts/script.php?script_id=1643) - pseudo auto-complete with tab
* [surround](http://www.vim.org/scripts/script.php?script_id=1697) - add, change, remove surrounding parentheses, brackets, quotes, etc
* [syntastic](http://www.vim.org/scripts/script.php?script_id=2736) - checks for syntax errors in many languages
* [stylus](https://github.com/wavded/vim-stylus) - syntax highlight for Stylus
* [tcomment](https://github.com/tomtom/tcomment_vim) - support to comment lines of code
* [textile](http://www.vim.org/scripts/script.php?script_id=2305) - syntax highlight for Textile
* [textobj-rubyblock](http://vimcasts.org/blog/2010/12/a-text-object-for-ruby-blocks/) - smart block selection in Ruby code
* [yankring](http://www.vim.org/scripts/script.php?script_id=1234) - maintains a history of yanks and deletes. History can be shared between multiple instances of vim

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

# Dependencies

You will need these dependencies figured out:

* Ruby
* Ncurses-term (in Linux only)

In Ubuntu, for example, you will have to do:

    apt-get install ncurses-term

Mac OS X and most Linux distros come with Ruby already. If you're on Windows
look for Luis Lavena's latest [Ruby Installer](http://rubyforge.org/projects/rubyinstaller/).

## Learn Vim

Visit the following sites to learn more about Vim:

* [Vimcasts](http://vimcasts.org)
* [Derek Wyatt's videos](http://www.derekwyatt.org/vim/vim-tutorial-videos/)
* [VimGolf](http://vimgolf.com/)

## Credits

* Original project and most of the heavy lifting: @scrooloose
* All the cool plugins for Rails, Cucumber and more: @timpope
* Hacks and some snippets: @akitaonrails

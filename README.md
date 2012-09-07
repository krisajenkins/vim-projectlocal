# ProjectLocal - .vimrc files for your project

ProjectLocal lets you set up project-specific `.vimrc` files.

When you edit a file, it searches up through your directories, looking for a `.vimrc` file. It tries to guess the project's root by looking for a `.git/.hg/.svn` folder on the way up.

## Status

New. Please report any issues you find!

## Installation

* Install [Pathogen][pathogen]. (You're already using Pathogen, right?)
* Clone this project into `~/.vim/bundle/vim-projectlocal`.
* Add a `.vimrc` to the root of your project.

## Customization

ProjectLocal will also look for `.vimrc` files in your subdirectories. For example:

```
.vimrc              => Affects all files in the project.
resources/.vimrc    => Affects any file under resources/
resources/js/.vimrc => Affects any file under resources/js/
```

Files are processed in top-down order.

By default, directories called `.git`, `.hg` or `.svn` mark the root of a project. You can customize this by changing the setting in your main `~/.vimrc`:

```vim
" The root is marked by any directory or file with one of these names:
let g:projectlocal_project_markers = ['.git', '.hg', '.svn', '.project', 'README.md']
```

## Credits
Thanks to Steve Losh for his excellent guide to Vimscript, [Learn Vimscript the Hard Way][learnvim], and [VimNinjas][vimninjas] for the inspiration.

[pathogen]: https://github.com/tpope/vim-pathogen/
[learnvim]: http://learnvimscriptthehardway.stevelosh.com/
[vimninjas]: http://www.vimninjas.com/

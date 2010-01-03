Retro Code Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This is a collection of extensions to the core Retro language.

Please see the individual files for copyright information and
license terms. (full license text can be found in the
'licenses' directory).
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Requirements:

  1) PHP [for build.php only]
  2) BASH
  3) Retro binary ('retro', put in this directory)
  4) Image ('retroImage', put in this directory)

To use:

  1) Run ./libtool.sh to get a list of options

To use the PHP-based builder:

  1) Create a file named "extensions"
  2) Put the name of each extension you want, minus the .retro
     file extension, in the "extensions" file
  3) Each name should be separated by whitespace
  4) Run "php build.php"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Examples:

To enable support for prefixes, do this:

  ./libtool.sh --add contrib/prefix.retro

Your retroImage will now contain support for prefixes. Specify
the files in the order you wish to load them in.

To learn about a module, use --info:

  ./libtool.sh --info contrib/prefix.retro

This will generally provide copyright, license, and some
descriptive text about the module.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

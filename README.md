# Left - A writing mode for Vim

By padding the left margin and setting wrap and text width options, we get a
pretty decent "Writing Mode" for Vim.

**Note:** The plug-in works but is still under development

## Setup

You must configure Left to use the same background colour as your colorscheme. In
your vimrc add something like:

```
let g:left_bg = "#000000"
```

**Note:** If using vim in terminal you must set `termguicolors`

## Usage

Left exports two commands:

- Turn on with `:Left`
- Turn off with `:LeftOff`

## Alternatives

Left is deliberately minimal. If you need more features consider:

- [Goyo](https://github.com/junegunn/goyo.vim)
- [Lite-dfm](https://github.com/bilalq/lite-dfm)



# Left - A writing mode for Vim

By padding the left margin and setting wrap and text width options, we can get a
pretty decent "Writing Mode" for Vim.

**Note:** The plug-in works but is still under development

## Setup

You must configure Left to use the same background colour as your colorscheme. The quickest way to find the colour values is to run:

`:highlight Normal`

Then add them to your vimrc:

```
let g:left_guibg = "#000000"
let g:left_ctermbg = "0"
```

## Usage

Left exports three commands:

- Turn on with `:Left`
- Turn off with `:LeftOff`
- Toggle with `:LeftToggle`

## Alternatives

Left is deliberately minimal. If you need more features consider:

- [Goyo](https://github.com/junegunn/goyo.vim)
- [Lite-dfm](https://github.com/bilalq/lite-dfm)


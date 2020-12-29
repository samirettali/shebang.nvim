# shebang.nvim

A simple Neovim plugin written in Lua that automatically inserts a shebang line
when editing a new file.

## Installation

```VimL
Plug 'samirettali/shebang.nvim'
```

## Customization

You can set custom shells by setting the global variables `shebang_shells` and
`shebang_commands`:

### vimscript
```VimL
    let g:shebang_commands = { 'py': '/usr/bin/python3.9' }
    let g:shebang_shells = { 'py': 'python3.9' }
```

### lua
```lua
    vim.g.shebang_commands = {
        py = '/usr/bin/python3.9'
    }
    vim.g.shebang_shells = {
        py = 'python3.9'
    }
```

The difference between the two is that the executables in `shebang_shells` have
to be in the `PATH` environment variable, while the in `shebang_commands` you
can use full paths to the executable.

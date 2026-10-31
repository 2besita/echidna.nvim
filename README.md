## Echidna.nvim

Echidna is a dark colorscheme for neovim, focused on low saturation and contrast between colors, aiming to cause less
eyesore while viewing and writing code (at least for me) and making the colors consistent between monitors of varied
qualities and display technologies.

#### How to install
lazyvim:
```lua
return {
    "2besita/echidna.nvim",
    lazy = false,
    priority = 1000,
}
```

vim.pack:
```lua
vim.pack.add({
    "https://github.com/2besita/echidna.nvim.git",
})
```

##### Usage
Add this to your configuration:
```lua
vim.cmd.colorscheme("echidna")
```

Or run `:colorscheme echidna`

#### Preview
![preview 1](./assets/screenshot1.png)
![preview 2](./assets/screenshot2.png)
![preview 3](./assets/screenshot3.png)

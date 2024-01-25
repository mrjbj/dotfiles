return {
  {
    "dhruvasagar/vim-zoom",
    -- sugar for require('lsp-overloads').setup(...)
    event = "User AstroFile",
    keys = {
      { "<leader>z", "<CMD>lua vim.cmd('call zoom#toggle()')<CR>", desc = "Zoom Window" },
      { "<C-w>z", "<CMD>lua vim.cmd('call zoom#toggle()')<CR>", desc = "Zoom Window" },
    },
  },
}

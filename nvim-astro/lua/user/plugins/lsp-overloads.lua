return {
  {
    "Issafalcon/lsp-overloads.nvim",
    -- opts is sugar for require('lsp-overloads').setup(...)
    opts = {
      -- The following are the default values
      keymaps = {
        next_signature = "<C-j>",
        previous_signature = "<C-k>",
        next_parameter = "<C-l>",
        previous_parameter = "<C-h>",
        close_signature = "<A-s>",
      },
      display_automatically = true, -- Uses trigger characters to automatically display the signature overloads when typing a method signature 0
    },
  },
}

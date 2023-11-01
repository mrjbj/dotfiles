return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
  opts = function(_, opts)
    -- local builtin = require "telescope.builtin"
    -- local state = require "telescope.actions.state"

    local actions = require "telescope.actions"
    local fb_actions = require("telescope").extensions.file_browser.actions

    return require("astronvim.utils").extend_tbl(opts, {
      defaults = {
        prompt_prefix = " λ  ",
        mappings = {
          i = {
            jk = require("telescope.actions").close,
            ["<C-j>"] = actions.cycle_history_next,
            ["<C-k>"] = actions.cycle_history_prev,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
          },
        },
      },
      extensions = {
        file_browser = {
          mappings = {
            i = { ["<C-z>"] = fb_actions.toggle_hidden },
            n = { z = fb_actions.toggle_hidden },
          },
        },
      },
      pickers = {
        file_browser = {
          initial_mode = "normal",
        },
      },
    })
  end,
  config = function(...)
    require "plugins.configs.telescope"(...)
    local telescope = require "telescope"
    telescope.load_extension "file_browser"
  end,
}

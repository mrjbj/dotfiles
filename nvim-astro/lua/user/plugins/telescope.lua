return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  keys = {
    "<C-p>",
    "<C-S-p>",
    "<TAB>",
  },
  dependencies = {
    "debugloop/telescope-undo.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  opts = function(_, opts)
    local actions = require "telescope.actions"
    return require("astronvim.utils").extend_tbl(opts, {
      defaults = {
        mappings = {
          i = {
            jk = require("telescope.actions").close,
            ["<C-j>"] = actions.cycle_history_next,
            ["<C-k>"] = actions.cycle_history_prev,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
          },
        },
        file_ignore_patterns = {
          "%.jpg",
          "%.gif",
          "%.png",
          "%.tga",
        },
        winblend = vim.o.winblend,
        selection_caret = "  ",
        layout_config = {
          width = 0.90,
          height = 0.85,
          preview_cutoff = 120,
          horizontal = {
            preview_width = 0.6,
          },
          vertical = {
            width = 0.9,
            height = 0.95,
            preview_height = 0.5,
          },
          flex = {
            horizontal = {
              preview_width = 0.9,
            },
          },
        },
      },
      pickers = {
        buffers = {
          path_display = { "smart" },
          mappings = {
            i = {
              ["<c-d>"] = actions.delete_buffer,
              ["<Tab>"] = actions.select_default,
            },
            n = {
              ["d"] = actions.delete_buffer,
              ["<Tab>"] = actions.select_default,
            },
          },
        },
      },
    })
  end,
  config = function(...)
    require "plugins.configs.telescope" (...)
    local telescope = require "telescope"
    telescope.load_extension "undo"
    telescope.load_extension "file_browser"
    require("astronvim.utils").set_mappings {
      n = {
        ["<C-p>"] = { "<cmd>Telescope fd<CR>", desc = "Activates Telescope fd" },
        ["<C-S-p>"] = {
          "<cmd>Telescope commands<CR>",
          desc = "Activates Telescope commands",
        },
        ["<Tab>"] = {
          function()
            if #vim.t.bufs > 1 then
              require("telescope.builtin").buffers {
                sort_mru = true,
                ignore_current_buffer = true,
              }
            else
              require "notify" { "No other buffers open" }
            end
          end,
          desc = "Switch Buffers",
        },
        -- ["<C-b>"] = { "<cmd>Telescope file_browser<CR>" },
        -- ["<C-z>"] = { "<cmd>Telescope undo<CR>" },
      },
    }
  end,
}

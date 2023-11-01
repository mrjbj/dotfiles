-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Use this to set all keyboard mappings.
-- Which-key will pickup the description automatically.
-- mode: n is "normal", t is "terminal", v is "visual", i is "insert"
-- NOTES:
-- 1. setting a mapping to false will disable it
--    ["<esc>"] = false,
-- 2. can remap same binding to change description
--    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- where C-s binding is already set
-- 3. can set which-key group name with "name" key
--    ["<leader>b"] = { name = "Buffers" },
-- 4. second key is the lefthand side of the map

return {
  n = {
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- which-key group name
    ["<leader>b"] = { name = "Buffers" },
    -- append to mapping under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Telescope
    ["<leader>fp"] = { "<cmd>ProjectMgr<CR>", desc = "Find project" },
    -- ["<leader>fp"] = { "<cmd>Telescope projects<CR>", desc = "Find project" },
    -- tabs
    ["<leader>]"] = { "<cmd>tabnext<CR>", desc = ":tabnext" },
    ["<leader>["] = { "<cmd>tabprevious<CR>", desc = ":tabprevious" },
    ["<leader>xc"] = { "<cmd>tabclose<CR>", desc = ":tabclose" },
    ["<leader>xn"] = { "<cmd>tabnew<CR>", desc = ":tabnew" },
    -- Buffer
    ["<leader>bk"] = {
      function() require("astronvim.utils.buffer").close(vim.fn.bufnr(vim.api.nvim_get_current_buf())) end,
      desc = "Kill current buffer",
    },
    ["<leader>bl"] = { ":b#<CR>", desc = "Last Buffer" },
    ["<leader>bb"] = { "<cmd>Telescope buffers<CR>", desc = "Buffer List" },
    -- neovim general
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- where C-s binding is already set
    ["<A-s>"] = { ":w!<cr>", desc = "Save File" }, -- where C-s binding is already set
    ["<C-Q>"] = { ":confirm qa<cr>", desc = "Force quit w/confirm" },
    ["<leader>r"] = { ":luafile ~/.config/nvim-astro/init.lua<cr>", desc = "Reload config" },
    -- file browser
    ["<leader>fb"] = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", desc = "File Browser" },
    -- find word in project files, hidden included, .gitignore not
    ["<leader>fw"] = {
      function()
        require("telescope.builtin").live_grep {
          -- by default, hidden files and .gitignore are ignored, here we look at hidden files but ignore .gitignore
          additional_args = function(args) return vim.list_extend(args, { "--hidden" }) end,
          -- additional_args = function(args) return vim.list_extend(args, { "--hidden" }) end,
        }
      end,
      desc = "Find words in project files",
    },
    -- find word including hidden files and .gitignore
    ["<leader>fW"] = {
      function()
        require("telescope.builtin").live_grep {
          -- by default, hidden files and .gitignore are ignored, here we look at hidden files but ignore .gitignore
          additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
          -- additional_args = function(args) return vim.list_extend(args, { "--hidden" }) end,
        }
      end,
      desc = "Find words in all files",
    },
  },
  t = {},
}

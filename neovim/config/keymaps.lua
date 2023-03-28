local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Key maps to copy and paste
map("i", "<C-v>", '<Esc>"+pa', { desc = "Paste" })
map("v", "<C-c>", '"+y', { desc = "Copy" })
map("v", "<C-x>", '"+d', { desc = "Cut" })

-- Key map undo
map("n", "<C-z>", ":u<CR>", { desc = "Undo" })
map("v", "<C-z>", "<Esc>:u<CR>", { desc = "Undo" })
map("i", "<C-z>", "<C-o>:u<CR>", { desc = "Undo" })

-- save file
map({ "i", "v", "n", "s" }, "<C-d>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- quit
map("n", "<C-e>", "<cmd>qa<cr>", { desc = "Quit all" })
map({ "i", "v" }, "<C-e>", "<Esc><cmd>qa<cr>", { desc = "Quit all" })

-- Quickly move current line above or below
map("n", "<C-Up><C-Up>", ":<c-u>execute 'move -1-'. v:count1<cr>", { desc = "Move line up" })
map("n", "<C-Down><C-Down>", ":<c-u>execute 'move +'. v:count1<cr>", { desc = "Move line down" })

-- tabs
map("n", "<S-Left>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<S-Right>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

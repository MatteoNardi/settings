local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","
-- TODO: try space as leader key
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- local term_opts = { silent = true }
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


function _G.ReloadConfig()
  for name,_ in pairs(package.loaded) do
    if name:match('^babel') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end

-- Configuration editing
keymap("n", "<Leader>vr", ":lua ReloadConfig()<CR>", opts)
keymap("n", "<Leader>vj", ":sp $MYVIMRC<CR>:lcd %:p:h<CR>", opts)


-- Moving in folders
keymap("n", "<Leader>cd", ":lcd %:p:h<CR>", opts) -- local cd
keymap("n", "<Leader>gcd", ":cd %:p:h<CR>", opts) -- global cd

-- Telescope Fuzzy finder
-- Should check pickers every now and then (git_status, git_commits, diagnostics)
local tele = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', tele.git_files, {})
vim.keymap.set('n', '<leader>ff', tele.find_files, {})
vim.keymap.set('n', '<leader>fg', tele.live_grep, {})
vim.keymap.set('n', '<leader>fb', tele.buffers, {})
vim.keymap.set('n', '<leader>fh', tele.help_tags, {})
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        -- <C-/>: help
        -- <C-d>/<C-u>: scroll file
        -- <Tab>: toggle selection
        ["<C-g>"] = "select_vertical",
        ["<C-v>"] = "select_horizontal",
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  },
  pickers = {},
  extensions = {}
}

-- Bacon quickfind
-- keymap("n", "<Leader>.", ":BaconLoad<CR>:w<CR>:BaconNext<CR>", opts)
keymap("n", "<Leader>.", ":BaconLoad<CR>:BaconNext<CR>", opts)

-- Trigger autocompletion on Ctrl-Space
keymap("i", "<c-space>", "<c-x><c-o>", { noremap = true, silent = true })

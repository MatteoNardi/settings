-- clear for clean reloads
vim.api.nvim_clear_autocmds({})

require "babel.option"
require "babel.keymaps"
require "babel.plugins"
require "babel.colorscheme"

require "babel.lsp"

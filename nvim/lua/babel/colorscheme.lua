
vim.o.background = "dark"
vim.g.gruvbox_material_background = 'medium' -- soft hard
vim.g.gruvbox_material_foreground = 'original' -- original, mix, material
vim.g.gruvbox_material_enable_bold = true
-- vim.g.gruvbox_material_enable_italic = true
vim.g.gruvbox_material_ui_contrast = 'high'
local colorscheme = "gruvbox-material" -- elflord

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}

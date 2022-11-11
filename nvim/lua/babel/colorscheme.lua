
vim.o.background = "dark"
vim.g.gruvbox_material_background = 'medium' -- soft hard
local colorscheme = "gruvbox-material" -- elflord

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

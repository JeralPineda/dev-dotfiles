local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {import = "jeral.plugins"},
  {import = "jeral.plugins.lsp"}
}, 
{
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

-- 🎨 Tema por defecto (onedark-dark, vscode, moonfly, catppuccin-mocha)
local theme = "onedark_dark" -- cambia aquí cuando quieras
vim.cmd("colorscheme " .. theme)

-- ⚡ Comando para cambiar tema en caliente
-- Uso: 
-- :Theme onedark_dark
-- :Theme vscode
-- :Theme moonfly
-- :Theme catppuccin-mocha

vim.api.nvim_create_user_command("Theme", function(opts)
  vim.cmd("colorscheme " .. opts.args)
end, { nargs = 1 })
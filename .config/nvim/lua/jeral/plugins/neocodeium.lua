return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")

    neocodeium.setup({})

    vim.keymap.set("i", "<Tab>", function()
      if neocodeium.visible() then
        return neocodeium.accept()
      else
        return "<Tab>"
      end
    end, { expr = true, silent = true })
  end,
}
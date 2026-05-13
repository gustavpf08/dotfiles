return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "shaunsingh/nord.nvim", "nvim-tree/nvim-web-devicons" },
    config = function()
      -- 1. Primeiro, geramos os highlights usando a função do tema Nord
      local highlights = require("nord").bufferline.highlights({
        italic = true,
        bold = true,
      })

      -- 2. Depois, passamos esses highlights para o setup do BufferLine
      require("bufferline").setup({
        options = {
          separator_style = "thin",
        },
        highlights = highlights,
      })
    end,
  },
}

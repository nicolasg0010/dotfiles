return {
  "nvimtools/none-ls.nvim",
  dependencies = {
      "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        -- Formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- null_ls.builtins.formatting.autopep8,
        -- null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.prettier,

        -- Diagnostics
        -- null_ls.builtins.diagnostics.flake8,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

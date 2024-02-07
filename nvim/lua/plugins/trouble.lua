return {
	"folke/trouble.nvim",
  config = function()
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
  end
}

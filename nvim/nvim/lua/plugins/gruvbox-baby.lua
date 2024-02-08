return {
  "luisiacc/gruvbox-baby",
  name = "gruvbox-baby",
  priority = 1000,
  config = function()
    vim.o.termguicolors = true
    vim.cmd.colorscheme("gruvbox-baby")
  end,
}

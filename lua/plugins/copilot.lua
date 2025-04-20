return {
  {
    "github/copilot.vim",
    lazy = false, -- load on startup
    config = function()
      vim.g.copilot_no_tab_map = true -- let us define our own tab mapping
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', {
        expr = true,
        silent = true,
        noremap = true,
      })
    end,
  },
}

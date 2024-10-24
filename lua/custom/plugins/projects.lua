return {
  "coffebar/neovim-project",
  opts = {
    projects = require("project-list"),
  },
  dependencies = { "nvim-telescope/telescope.nvim", "Shatur/neovim-session-manager" },
  priority = 100,
}

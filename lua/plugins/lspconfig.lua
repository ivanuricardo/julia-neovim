return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
        r_language_server = {},
        julials = {
          -- This just adds dirname(fname) as a fallback (see nvim-lspconfig#1768).
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("Project.toml")(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
          end,
        },
        marksman = {
          -- also needs:
          -- $home/.config/marksman/config.toml :
          -- [core]
          -- markdown.file_extensions = ["md", "markdown", "qmd"]
          filetypes = { "markdown", "quarto", "julia" },
          root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
        },
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
}

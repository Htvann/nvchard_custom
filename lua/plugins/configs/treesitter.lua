require("nvim-treesitter.configs").setup {
  highlight = {
    enable = false,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  -- auto install above language parsers
  auto_install = true,
}

require("nvim-ts-autotag").setup {
  filetypes = {
    "astro",
    "typescript",
    "html",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "tsx",
    "jsx",
    "markdown",
  },
  config = true,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {
    spacing = 5,
    severity_limit = "Warning",
  },
  update_in_insert = true,
})

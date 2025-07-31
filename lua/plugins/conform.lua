return {
  "stevearc/conform.nvim",
  opts = function()
    local web_formatters = { "prettier", "eslint_d" }
    return {
      formatters_by_ft = {
        javascript = web_formatters,
        javascriptreact = web_formatters,
        typescript = web_formatters,
        typescriptreact = web_formatters,
      },
      formatters = {
        prettier = {
          command = "prettier",
          args = { "--stdin-filepath", "$FILENAME" },
          stdin = true,
        },
        eslint_d = {
          command = "eslint_d",
          args = { "--fix", "--stdin", "--stdin-filename", "$FILENAME" },
          stdin = true,
        },
      },
    }
  end,
}

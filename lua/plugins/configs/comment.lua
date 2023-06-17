require("Comment").setup {
  opleader = {
    ---Line-comment keymap
    line = "gb",
    ---Block-comment keymap
    block = "gc",
  },
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
}

return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = { event = "notify", find = "NO_RESULT_CALLBACK_FOUND" },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_show", find = "NO_RESULT_CALLBACK_FOUND" },
        opts = { skip = true },
      },
    },
  },
}

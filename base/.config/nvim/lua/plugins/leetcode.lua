return {
  "kawre/leetcode.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    { "3rd/image.nvim", opts = { processor = "magick_cli", backend = "kitty" } },
  },
  lazy = "leetcode.nvim" ~= vim.fn.argv(0, -1),
  opts = {
    lang = "cpp",
    image_support = true,
    picker = { provider = "snacks-picker" },
    storage = { home = vim.fn.expand("~/Dev/Personal/Trellis/leetcode") },
    injector = {
      ["cpp"] = { before = {
        "#include <bits/stdc++.h>",
        "using namespace std;",
        "struct ListNode { int val; ListNode *next; ListNode() : val(0), next(nullptr) {} ListNode(int x) : val(x), next(nullptr) {} ListNode(int x, ListNode *next) : val(x), next(next) {} };",
        "struct TreeNode { int val; TreeNode *left; TreeNode *right; TreeNode() : val(0), left(nullptr), right(nullptr) {} TreeNode(int x) : val(x), left(nullptr), right(nullptr) {} TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {} };",
      } },
      ["python3"] = { before = { "from typing import List, Optional" } },
    },
  },
}

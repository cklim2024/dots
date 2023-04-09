return {
  -- Markdown like keymaps for toggling text formatting
  { -- https://github.com/antonk52/markdowny.nvim
    "antonk52/markdowny.nvim",
    config = true,
    opts = {
      filetypes = { "markdown", "txt" },
    },
    ft = { "markdown", "txt" },
  },

  -- better markdown navigation
  --  + some extras
  { -- https://github.com/jakewvincent/mkdnflow.nvim
    "jakewvincent/mkdnflow.nvim",
    config = true,
    ft = { "markdown", "txt" },
    init = function()
      require("which-key").register({
        mode = { "n", "v" },
        ["<leader>md"] = { name = "+markdown" },
        ["<leader>mdi"] = { name = "+insert" },
      })
    end,
    opts = {
      mappings = {
        MkdnEnter = { { "n", "v" }, "<CR>" },
        MkdnTab = false,
        MkdnSTab = false,
        MkdnNextLink = { "n", "<Tab>" },
        MkdnPrevLink = { "n", "<S-Tab>" },
        MkdnNextHeading = { "n", "]]" },
        MkdnPrevHeading = { "n", "[[" },
        MkdnGoBack = { "n", "<BS>" },
        MkdnGoForward = { "n", "<Del>" },
        MkdnCreateLink = false, -- see MkdnEnter
        MkdnCreateLinkFromClipboard = { { "n", "v" }, "<leader>mdp" }, -- see MkdnEnter
        MkdnFollowLink = false, -- see MkdnEnter
        MkdnDestroyLink = { "n", "<M-CR>" },
        MkdnTagSpan = { "v", "<M-CR>" },
        MkdnMoveSource = { "n", "<F2>" },
        MkdnYankAnchorLink = { "n", "ya" },
        MkdnYankFileAnchorLink = { "n", "yfa" },
        MkdnIncreaseHeading = { "n", "+" },
        MkdnDecreaseHeading = { "n", "-" },
        MkdnToggleToDo = { { "n", "v" }, "<C-x>" },
        MkdnNewListItem = false,
        MkdnNewListItemBelowInsert = { "n", "o" },
        MkdnNewListItemAboveInsert = { "n", "O" },
        MkdnExtendList = false,
        MkdnUpdateNumbering = { "n", "<leader>mdn" },
        MkdnTableNextCell = { "i", "<Tab>" },
        MkdnTablePrevCell = { "i", "<S-Tab>" },
        MkdnTableNextRow = false,
        MkdnTablePrevRow = { "i", "<M-CR>" },
        MkdnTableNewRowBelow = { "n", "<leader>mdir" },
        MkdnTableNewRowAbove = { "n", "<leader>mdiR" },
        MkdnTableNewColAfter = { "n", "<leader>mdic" },
        MkdnTableNewColBefore = { "n", "<leader>mdiC" },
        MkdnFoldSection = { "n", "<leader>mdf" },
        MkdnUnfoldSection = { "n", "<leader>mdF" },
      },
    },
  },
}

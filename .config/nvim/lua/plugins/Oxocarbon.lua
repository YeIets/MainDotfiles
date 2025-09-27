return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
    config = function()
    -- load the theme first
    vim.cmd.colorscheme("oxocarbon")

    -- force pitch black background everywhere
      local hl = vim.api.nvim_set_hl
      local black = "#000000"

      hl(0, "Normal",      { bg = black, fg = "#F1F1F1" })
      hl(0, "NormalNC",    { bg = black, fg = "#F1F1F1" })
      hl(0, "NormalFloat", { bg = black })
      hl(0, "SignColumn",  { bg = black })
      hl(0, "LineNr",      { bg = black, fg = "#4C4C4C" })
      hl(0, "EndOfBuffer", { bg = black, fg = black }) -- hide ~ lines
      hl(0, "VertSplit",   { bg = black, fg = "#232323" })
      hl(0, "StatusLine",  { bg = black })

      -- optional: cursorline with subtle dark gray
      hl(0, "CursorLine", { bg = "#111111" })


    end,
  }
}

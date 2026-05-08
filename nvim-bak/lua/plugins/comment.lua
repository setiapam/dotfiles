return {
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    opts = {
      enable_autocmd = false,
      -- Daftarkan bahasa blade di sini
      languages = {
        blade = "{{-- %s --}}",
      },
    },
  },
  {
    "nvim-mini/mini.comment",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
    opts = {
      options = {
        custom_commentstring = function()
          local ts_cs = require("ts_context_commentstring.internal").calculate_commentstring()
          if ts_cs and ts_cs ~= "" then
            return ts_cs
          end

          local bo_cs = vim.bo.commentstring
          if bo_cs and bo_cs ~= "" then
            return bo_cs
          end

          return "// %s" -- Ubah fallback darurat ke // saja agar lebih wajar untuk PHP/JS
        end,
      },
    },
  },
}

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            vim.fn.json_encode({
              config = {
                ["line-length"] = false,         -- Matikan warning baris > 80 karakter (MD013)
                ["no-inline-html"] = false,      -- Izinkan tag HTML seperti <br> atau <div> (MD033)
                ["first-line-heading"] = false,  -- Matikan syarat baris pertama harus # Heading (MD041)
                ["no-bare-urls"] = false,        -- Izinkan URL mentah (MD034)
                ["no-trailing-spaces"] = false,  -- Matikan warning spasi di akhir baris (MD009)
              },
            }),
            "--",
          },
        },
      },
    },
  },
}

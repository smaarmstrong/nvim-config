-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- we can change the lspconfig by replacing xcrun etc. with some other
-- lsp depending on the language. it's better to run only one
-- at a time.

lspconfig.sourcekit.setup({
  -- cmd = { "xcrun", "--toolchain", "swift", "sourcekit-lsp", "--default-workspace-type", "buildServer",
  -- "-Xswiftc", "-sdk",
  --   "-Xswiftc", "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"},
  cmd = { "sourcekit-lsp", },
  -- cmd = {
  --   "sourcekit-lsp",
  --   "--configuration",
  --   "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/sourcekit-lsp/sourcekit-lsp.json"
  -- },
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  filetypes = {
    "swift"
  },
  root_dir = lspconfig.util.root_pattern('Package.swift', '.git')
})
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

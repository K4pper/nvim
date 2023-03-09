-- Add modules here
local modules = {
  "user.options",
  "user.plugins",
  "user.theme",
  "user.treesitter",
  "user.coc",
  "user.neo-tree",
  "user.keymap",
  "user.toggleterm",
  "user.indentline",
}

-- Refresh module cache
for k, v in pairs(modules) do
  package.loaded[v] = nil
  require(v)
end

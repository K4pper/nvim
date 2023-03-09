-- Add modules here
local modules = {
  "user.options",
  "user.plugins",
  "user.theme",
  "user.treesitter",
  "user.coc",
}

-- Refresh module cache
for k, v in pairs(modules) do
  package.loaded[v] = nil
  require(v)
end


local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end


telescope.setup { defaults = {
  file_ignore_patterns = { "Cargo.lock", ".git", 'target' },
},

  extensions_list = { "themes", "terms" },
}

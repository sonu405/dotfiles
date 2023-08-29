local wezterm = require 'wezterm'


local module = {}

local function error_logger()
  wezterm.log_error 'hello from colorscheme.lua'
end

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this
function module.apply_to_config(config)
  error_logger()
  config.color_scheme = 'tokyonight'
end

return module

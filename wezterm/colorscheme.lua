local wezterm = require 'wezterm'


local module = {}


function module.apply_to_config(config)
  -- [ 'tokyonight', 'Ayu Dark (Gogh)' ]
  config.color_scheme = 'Ayu Dark (Gogh)'

  config.color_schemes = {
    ['Figma theme'] = {
      background = '#1E1E1E'
    }
  }
end

return module

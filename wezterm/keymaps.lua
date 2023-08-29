local wezterm = require 'wezterm'

local keymaps = {
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.DisableDefaultAssignment,
  },
}
function keymaps.apply_to_config(config)
  wezterm.log_error("From keymaps.lua")

  -- config.keys = keymaps -- THIS DOESN'T WORK
  config.keys = {
    -- Turn off the default CMD-m Hide action, allowing CMD-m to
    -- be potentially recognized and handled by the tab
    {
      key = 'm',
      mods = 'CMD',
      action = wezterm.action.DisableDefaultAssignment,
    },
  }
end

return keymaps

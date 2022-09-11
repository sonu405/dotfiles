if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# set fish_greeting
function fish_greeting
    fortune
end

# funcsave fish_greeting

set -gx EDITOR nvim





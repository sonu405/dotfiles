. ~/.config/fish/aliases.fish

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
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x MANPAGER "nvim +Man!"

set -Ux fish_user_paths /home/jk/go/bin/

# Flakpak shit
set -l xdg_data_home $XDG_DATA_HOME ~/.local/share
set -gx --path XDG_DATA_DIRS $xdg_data_home[1]/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end

set -x XDG_CONFIG_HOME ~/.config
eval (starship init fish)
set -gx MCFLY_LIGHT TRUE
set -gx MCFLY_KEY_SCHEME vim
mcfly init fish | source



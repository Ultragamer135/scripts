#!/usr/bin/fish
# Interactively search and multi-select arch packages
function yass
    if not isatty stdin
        read argv
    end
    set pacman (which yay pacman 2>/dev/null)[1]
    $pacman -Ssq $argv | fzf -m -e
end

#!/usr/bin/fish
# Interactively search and multi-select arch packages
function yass
    if not isatty stdin
        read argv
    end
    yay -Ssq $argv | fzf -m -e
end

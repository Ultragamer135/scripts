#!/usr/bin/fish
function slaybar
     killall waybar; waybar &> /dev/null & disown; 
end

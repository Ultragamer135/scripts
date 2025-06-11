#!/usr/bin/fish
abbr -a shebang banger
function banger
     echo \#!(which (echo $SHELL | awk -F/ '{print $NF}')); 
end

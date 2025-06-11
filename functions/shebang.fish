#!/usr/bin/fish
function shebang
     echo \#!(which (echo $SHELL | awk -F/ '{print $NF}')); 
end

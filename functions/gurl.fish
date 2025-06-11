#!/usr/bin/fish
# Take in a github url and output user/repo
function gurl
    	if not isatty stdin
            read argv
        end
    	echo $argv | sed -E 's|^.*://(.*)$|\1| ; s|\?.*||' | awk -F'/' '{print $2"/"$3}'
end

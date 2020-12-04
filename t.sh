url=$1
u=$( youtube-dl -g "$url" | grep "error")
echo $u

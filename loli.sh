url=$1
clear
echo "1. youtube-dl > bestaudio > mpv"
echo "2. Direct mpv (without video)"
echo "3. Direct mpv with loop (without video)"
echo "4. Direct mpv with shuffle (without video)"
echo "5. Direct mpv with shuffle+loop (without video)"
echo "0. Exit"
echo -n "pilih pilihanmu: "
read pilih
case $pilih in
	1) mpv $(youtube-dl -f 'bestaudio[ext=m4a]' -g "$url")
		;;
	2) mpv $url --no-video
		;;
	3) mpv $url --no-video --loop=inf
		;;
	4) mpv $url --no-video --shuffle
		;;
	5) mpv $url --no-video --shuffle --loop=inf
		;;
	0) echo ""
		;;
esac

url=$1
clear
echo "1. Quality 360p"
echo "2. Quality 480p"
echo "3. Quality 720p"
echo "4. Quality 720p60"
echo "5. Quality 1080p"
echo "6. Quality 1080p60"
echo -n "pilih kualitas video: "
read pilih
case $pilih in
	1) youtube-dl -f "bestvideo[ext=mp4][height<=360]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
	2) youtube-dl -f "bestvideo[ext=mp4][height<=480]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
	3) youtube-dl -f "bestvideo[ext=mp4][height<=720][fps=30]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
	4) youtube-dl -f "bestvideo[ext=mp4][height<=720][fps=60]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
	5) youtube-dl -f "bestvideo[ext=mp4][height<=1080][fps=30]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
	6) youtube-dl -f "bestvideo[ext=mp4][height<=1080][fps=60]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --add-metadata $url
		;;
esac

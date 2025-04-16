pctlHead=$( pactl list sinks | grep -A 7 -e 'Name: .\+analog-stereo' )
isMute=$( echo "$pctlHead" | grep Mute | awk '{print $2}' )
vol=$( echo "$pctlHead" | grep -m 1 Volume | awk '{print $5}' | sed 's/%$//' )
outID=$( pactl list sinks | grep 'Active Port:' | grep analog | cut -d '-' -f3 )
if [[ $outID = "headphones" ]]; then
	outIcon=""
elif [[ $outID = "speaker" ]]; then
	outIcon="蓼"
else
	outIcon=""
fi

if [[ $isMute = "yes" ]]; then
	echo -en "$outIcon $vol% \ufa80"
elif [[ $vol -le 20 ]]; then
	echo -en "$outIcon $vol% \uf027"
elif [[ $vol -le 70 ]]; then
	echo -en "$outIcon $vol% \ufa7f"
else
	echo -en "$outicon $vol% \ufa7d"
fi

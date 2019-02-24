function cdf () {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" !=  "" ]
	then
		cd "$target"
	else
		echo 'No Finder window found' >&2
	fi
}

function cheat() {
	curl -A "curl/7.9.8 (i686-pc-linux-gnu) libcurl 7.9.8 (OpenSSL 0.9.6b) (ipv6 enabled)" cht.sh/$1
}

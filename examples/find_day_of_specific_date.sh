if [ $# -ne 3 ]; then
	echo "Usage: $(basename $0) mon day year" >&2
	echo "   with just numerical values (ex: 7 7 1776)" >&2
	exit 1
fi

date --version > /dev/null 2>&1
baddate="$?"
echo "baddate value is $baddate"
if [ $baddate -ne 0 ] ; then
	gdate -d $1/$2/$3 +"That was a %A."	
else
	if [ $2 -lt 10 ] ; then
		pattern=" $2[^0-9]"
	else
		pattern="$2[^0-9]"
	fi

	dayofweek=$(gdate -d $1/$2/$3 +"%w")
	echo "$dayofweek"	
fi


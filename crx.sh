#!/bin/sh

get_crx_URL () {

	echo "ext id > "
	read extID

	echo "chromium v >  "
	read chrV

	URL="https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion="$chrV"&x=id%3D"$extID"%26installsource%3Dondemand%26uc"

}

get_crx_NAME () {
	extN=$(wget https://chrome.google.com/webstore/detail/"$extID" --max-redirect=1 -qO- | tidy | grep 'class="e-f-w"' | grep -Po '(?:>).*(?:<)')
	echo $extN
}

get_crx_FILE () {
	wget $URL -O "$extN.crx"
}

get_crx_URL
get_crx_NAME
get_crx_FILE

# download-crx-for-ungoogled-chromium
Download chrome extensions from terminal.

# Dependencies
- GNU grep
- wget
- tidy

You can get tidy from here: https://github.com/htacg/tidy-html5 or http://www.html-tidy.org/

OR

You can just disable tidy in the script if you don't care about the file naming.

# How To

1. Make it executable > $ sudo chmod +x ./crx.sh

2. Run > ./crx.sh or sudo ./crx.sh

3. Enter a Chrome extension ID > cjpalhdlnbpafiamejdnhcphjbkeiagm

_chrome.google.com/webstore/detail/ublock-origin/**cjpalhdlnbpafiamejdnhcphjbkeiagm**_

4. Enter your Chromium version > 80.0

_Version **80.0**.3987.122_

The script will download and save your extension with its name(At the moment, there are ">" and "<" characters around them).

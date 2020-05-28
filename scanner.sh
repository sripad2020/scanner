echo "enter the ip adress"
read ip
echo "the entered ip address is : $ip"
echo "1.nmap scan for an ip address"
echo "2.nmap scan for single port"
echo "3.nmap scan for tcp ports"
echo "4.nmap scan for the host address "
echo "5.nmap scan for subnet scanning"
echo "6.nmap scan for specific number of ports"
echo "7.nmap scanning for the fast 100 ports"
echo "8.nmap scan for standered for standered service detection"
echo "9.nmap scanning all the ports "
echo "10.nmap scan for getting the os information"
echo "------------------------------------------"
echo "ENTER THE CHOICE"
read choice
if [ $choice -eq 1 ]
then
	nmap $ip
elif [ $choice -eq 2 ]
then
	echo "enter the port to be scanned in $ip"
	read port
	nmap -p $port  $ip
elif [ $choice -eq 3 ]
then
	nmap -sT $ip
elif [ $choice -eq 4 ]
then
	echo "enter the host name"
	read name
	nmap $name
elif [ $choice -eq 5 ]
then
	echo "enter the CIDR value"
	read subnet
	nmap $ip/$subnet
elif [ $choice -eq 6 ]
then
	echo "enter the number of ports to be scanned"
	read n
	nmap 1-$n $ip
elif [ $choice -eq 7 ]
then
	nmap -F $ip
elif [ $choice -eq 8 ]
then 
	nmap -sV $ip
elif [ $choice -eq 9 ]
then
	nmap -p- $ip
elif [	$choice -eq 10 ]
then
	nmap -A $ip
else
	echo "YOUR OPTION WAS  WRONG"
fi

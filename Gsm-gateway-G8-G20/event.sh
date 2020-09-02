#!/bin/sh
TO_FILE="/vrem/curl_log.txt"                                                                                                   

if [ "$2" = "ring" ] ; then                                                                                                      

curl -i \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-X POST --data '{"SenderNumber":"'"$5"'","Message":"CALL::Incoming call","Sim":"'"$4"'","channel":"'"$1"'","type":"'"$2"'","time":"'"$3"'","imsi":"'"$6"'","smsc":"'"$7"'"}' "http://<your-server-endpoint>/getter.php" \
--connect-timeout 10 --silent --show-error >>$TO_FILE

    else                                                                                                                               
M8="$(echo $8 | sed 's/"/\\"/g' | iconv -f 'KOI8-R' -t 'UTF-8')"

curl -i \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
-X POST --data '{"SenderNumber":"'"$5"'","Message":"'"$M8"'","Sim":"'"$4"'","channel":"'"$1"'","type":"'"$2"'","time":"'"$3"'","imsi":"'"$6"'","smsc":"'"$7"'"}' "http://<your-server-endpoint>/getter.php" \
--connect-timeout 10 --silent --show-error >>$TO_FILE

	 fi                                                                                                                             
 RT=0                                                                                                                           
 RT=$?                                                                                                                          
	 if [ "$RT" -ne 0 ] ; then                                                                                                      
 RETC="CURL ERROR.["$RT"]. "                                                                                                
     if [ "$RT" -eq 7 ] ; then                                                                                                  
 RETC=$RETC"Failed connect to host '$URI'"                                                                              
     else                                                                                                                       
     if [ "$RT" -eq 6 ] ; then                                                                                              
 RETC=$RETC"Remote host was not resolved '$URI'"                                                                    
     fi                                                                                                                     
     fi                                                                                                                         
  echo $RETC >>$TO_FILE                                                                                                      
     fi                                                                                                                             
 echo >>$TO_FILE                                                                                                                
exit $RT
set mainDirectory=G:\Usbong MOSC\Everyone\Information Desk\add-on software
cd /d %mainDirectory%
java -cp .\software;.\software\org.json.jar;.\software\org.apache.httpclient.jar;.\software\org.apache.httpcore.jar;.\software\org.apache.commons-logging.jar UsbongHTTPConnect "upload" http://localhost/ "output/kms/"*.txt
cd ..
%2
PAUSE
#exit
pushd %~dp0

java -cp .\software;.\software\org.json.jar;.\software\org.apache.httpclient.jar;.\software\org.apache.httpcore.jar;.\software\org.apache.commons-logging.jar UsbongHTTPConnect "upload" http://mosc-accounting/ "output/kms/"*.txt

popd

PAUSE
#exit
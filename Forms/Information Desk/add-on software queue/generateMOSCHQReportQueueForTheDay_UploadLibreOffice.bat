pushd %~dp0

java -cp .\softwareLibreOffice;.\softwareLibreOffice\org.json.jar;.\softwareLibreOffice\org.apache.httpclient.jar;.\softwareLibreOffice\org.apache.httpcore.jar;.\softwareLibreOffice\org.apache.commons-logging.jar UsbongHTTPConnect "upload" http://localhost/ "libreOfficeOutput/"*.csv

popd

PAUSE
#exit
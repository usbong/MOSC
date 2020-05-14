#!/bin/bash

java -cp ./softwareLibreOffice:./softwareLibreOffice/org.json.jar:./softwareLibreOffice/org.apache.httpclient.jar:./softwareLibreOffice/org.apache.httpcore.jar:./softwareLibreOffice/org.apache.commons-logging.jar UsbongHTTPConnect "upload" http://mosc-accounting/ "libreOfficeOutput/"*.csv

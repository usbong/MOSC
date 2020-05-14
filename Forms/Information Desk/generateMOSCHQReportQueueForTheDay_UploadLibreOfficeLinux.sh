#!/bin/bash

cd "/home/unit_member/Usbong/add-on software queue"

java -cp ./softwareLibreOffice:./softwareLibreOffice/org.json.jar:./softwareLibreOffice/org.apache.httpclient.jar:./softwareLibreOffice/org.apache.httpcore.jar:./softwareLibreOffice/org.apache.commons-logging.jar UsbongHTTPConnect "upload" http://localhost/ "/home/unit_member/Desktop/libreOfficeOutput/"*.csv

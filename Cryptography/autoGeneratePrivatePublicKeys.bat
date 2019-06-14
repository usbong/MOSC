@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Automatically Generate Private and Public Keys
echo //-----------------------------------------------------------------------
echo.
set mainDirectory=%CD%
echo Automatically generating Private Key...
openssl genrsa -out %mainDirectory%/output/key.pem 2048
echo Automatically generating Public Key...
openssl rsa -in %mainDirectory%/output/key.pem -pubout -out %mainDirectory%/output/pub.pem
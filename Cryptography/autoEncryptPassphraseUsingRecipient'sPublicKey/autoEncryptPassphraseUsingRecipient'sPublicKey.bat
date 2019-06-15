@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Automatically Encrypt Passphrase Using Recipient's Public Key
echo //-----------------------------------------------------------------------
echo.
echo Verifying if ouput folder already exists...
mkdir output
echo.
echo Automatically encrypting Passphrase...
set mainDirectory=%CD%
openssl rsautl -encrypt -inkey %mainDirectory%/input/pub.pem -pubin -in %mainDirectory%/input/pass.txt -out %mainDirectory%/output/pass.bin
echo Done!
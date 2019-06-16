@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Automatically Decrypt Passphrase Using Recipient's Private Key
echo //-----------------------------------------------------------------------
echo.
echo Verifying if ouput folder already exists...
mkdir output
echo.
echo Automatically decrypting Passphrase...
set mainDirectory=%CD%
openssl rsautl -decrypt -inkey %mainDirectory%/input/key.pem -in %mainDirectory%/input/pass.bin -out %mainDirectory%/output/pass.txt
echo Done!
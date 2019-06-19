@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Encrypted HTML File Automatic Decryption Using Encrypted Passphrase
echo //-----------------------------------------------------------------------
echo.
echo Verifying if ouput folder already exists...
mkdir output
echo.
echo Automatically decrypting encrypted passphrase...
set mainDirectory=%CD%
openssl rsautl -decrypt -inkey %mainDirectory%/library/key.pem -in %mainDirectory%/library/pass.bin -out %mainDirectory%/output/pass.txt
echo.
echo Automatically decrypting encrypted input HTML Files using decrypted passphrase...
cd library
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlySummaryTreatment.html -out %mainDirectory%/output/DecryptedMonthlySummaryTreatment.html -kfile %mainDirectory%/output/pass.txt
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlySummaryConsultation.html -out %mainDirectory%/output/DecryptedMonthlySummaryConsultation.html -kfile %mainDirectory%/output/pass.txt
cd ..
cd output
del pass.txt
cd ..
explorer file:///%CD%/output/DecryptedMonthlySummaryTreatment.html
explorer file:///%CD%/output/DecryptedMonthlySummaryConsultation.html
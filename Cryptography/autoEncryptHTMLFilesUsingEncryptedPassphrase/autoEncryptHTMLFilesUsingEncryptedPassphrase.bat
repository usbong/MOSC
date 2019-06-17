@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  HTML File Automatic Encryption Using Encrypted Passphrase
echo //-----------------------------------------------------------------------
echo.
echo Verifying if ouput folder already exists...
mkdir output
echo.
echo Automatically decrypting encrypted passphrase...
set mainDirectory=%CD%
openssl rsautl -decrypt -inkey %mainDirectory%/library/key.pem -in %mainDirectory%/library/pass.bin -out %mainDirectory%/output/pass.txt
echo.
echo Automatically encrypting input HTML Files using decrypted passphrase...
cd library
openssl enc -e -pbkdf2 -aes256 -in %mainDirectory%/input/MonthlySummaryTreatment.html -out %mainDirectory%/output/EncryptedMonthlySummaryTreatment.html -kfile %mainDirectory%/output/pass.txt
openssl enc -e -pbkdf2 -aes256 -in %mainDirectory%/input/MonthlySummaryConsultation.html -out %mainDirectory%/output/EncryptedMonthlySummaryConsultation.html -kfile %mainDirectory%/output/pass.txt
cd ..
cd output
del pass.txt
cd ..
explorer file:///%CD%/output/EncryptedMonthlySummaryTreatment.html
explorer file:///%CD%/output/EncryptedMonthlySummaryConsultation.html
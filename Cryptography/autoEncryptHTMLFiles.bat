@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  HTML File Automatic Encryption
echo //-----------------------------------------------------------------------
echo.
set mainDirectory=%CD%
set /p pass="Enter passphrase:"
echo %pass% > library/pass.bin
cd library
openssl enc -e -pbkdf2 -aes256 -in %mainDirectory%/input/MonthlyPaymentSummaryTreatment.html -out %mainDirectory%/output/EncryptedMonthlyPaymentSummaryTreatment.html -kfile pass.bin
openssl enc -e -pbkdf2 -aes256 -in %mainDirectory%/input/MonthlyPaymentSummaryConsultation.html -out %mainDirectory%/output/EncryptedMonthlyPaymentSummaryConsultation.html -kfile pass.bin
del pass.bin
cd ..
explorer file:///%CD%/output/EncryptedMonthlyPaymentSummaryTreatment.html
explorer file:///%CD%/output/EncryptedMonthlyPaymentSummaryConsultation.html
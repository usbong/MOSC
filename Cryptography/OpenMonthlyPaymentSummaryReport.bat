@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Monthly Payment Summary Report
echo //-----------------------------------------------------------------------
echo.
set mainDirectory=%CD%
set /p pass="Enter passphrase:"
echo %pass% > library/pass.bin
cd library
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryTreatment2018.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryTreatment2018.html -kfile pass.bin
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryConsultation2018.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryConsultation2018.html -kfile pass.bin
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryTreatment2019.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryTreatment2019.html -kfile pass.bin
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryConsultation2019.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryConsultation2019.html -kfile pass.bin
del pass.bin
cd ..
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryTreatment2018.html
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryConsultation2018.html
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryTreatment2019.html
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryConsultation2019.html
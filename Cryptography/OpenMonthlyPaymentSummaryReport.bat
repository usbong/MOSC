@echo off
echo //-----------------------------------------------------------------------
echo //  Marikina Orthopedic Specialy Clinic - Sta. Lucia Health Care Centre
echo //  Usbong Social Systems, Inc. (USBONG.PH)
echo //
echo //  Monthly Payment Summary Report (2018)
echo //-----------------------------------------------------------------------
echo.
set mainDirectory=%CD%
set /p pass="Enter passphrase:"
echo %pass% > library/pass.bin
cd library
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryTreatment.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryTreatment.html -kfile pass.bin
openssl enc -d -pbkdf2 -aes256 -in %mainDirectory%/input/EncryptedMonthlyPaymentSummaryConsultation.html -out %mainDirectory%/output/DecryptedMonthlyPaymentSummaryConsultation.html -kfile pass.bin
del pass.bin
cd ..
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryTreatment.html
explorer file:///%CD%/output/DecryptedMonthlyPaymentSummaryConsultation.html
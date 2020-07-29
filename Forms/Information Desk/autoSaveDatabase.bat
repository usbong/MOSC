set myDate=%date:~10,4%%date:~4,2%%date:~7,2%
set myTime=%time:~0,2%%time:~3,2%

cd "C:xampp\mysql\bin\"

C:

mysqldump -uroot -p usbong_kms > "D:\Usbong\MOSC\Forms\Information Desk\output\cashier\DB\usbong_kmsV"%myDate%"T"%myTime%
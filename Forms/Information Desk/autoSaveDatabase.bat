set myDate=%date:~10,4%%date:~4,2%%date:~7,2%
set myTime=%time:~1,2%%time:~3,2%

set myHour=%time:~1,1%

if %myHour% lss 10 (set myNewHour=0%myHour%)

echo %myNewHour%

set myNewTime=%myNewHour%%time:~3,2%

cd "C:\xampp\mysql\bin\"

C:

mysqldump -uusbong usbong_kms > "G:\Usbong MOSC\Everyone\Information Desk\DB\usbong_kmsV"%myDate%"T"%myNewTime%".sql"
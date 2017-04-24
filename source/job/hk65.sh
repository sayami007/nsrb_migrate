#!/bin/tcsh
if (${#argv} >= 1) then
	set USER_ID = ${argv[1]};
else
	set USER_ID = STN000;
endif
set JRCODE=000;
set FN1 = ${JRCODE_PATH}${USER_ID};
set FN2 = ${ERROR_PATH}${USER_ID};
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'NYURF' 'WK0128' '((39,2,N),(1,12,N),(21,2,N),(24,8,N),(32,6,N))' '((1,102),(@          @),(1,16))' '' '(13,8)' '' '' '' '   �S�����t�ʓ������ו\�i�W���\��p�j   '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
../exec/HKG310 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
ENDJOB:
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
../exec/CSRT50 $USER_ID $JRCODE '10' 'TSAF' 'WK0064' '((1,10,N),(11,1,N))' '((1,32),(@          @),(1,22))' '' '' '' '' '' '            送金案内　明細表            '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
../exec/TSA050 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
ENDJOB:

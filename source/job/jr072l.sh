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
../exec/CSRT50 $USER_ID $JRCODE '10' 'NFTORI-M' 'WK0064' '((26,2,C),(1,5,N),(6,20,C))' '((1,42),(@          @),(1,12))' '' '' '' '' '' '         取引先マスタ　コード表         '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
../exec/PR072L $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
ENDJOB:

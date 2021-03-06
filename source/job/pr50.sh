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
../exec/PRG510 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
NFCNV 'MN1=C MN2=AD PA1=MSD PA2= PA3=WK0128000 PA4=1 \
PA5=C4,C4,J10,C8,C6,C2,C1,C4,S10,C4,C4,J20,J10,C1 \
PB1=../tmp/SIWAKE.CSV PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA \
PB7=C,C,J,C,C,C,C,C,S,C,C,J,J,C PB8=CREATE MN1=Q '
source ../job/CRC_LIBRARY.sh
ENDJOB:

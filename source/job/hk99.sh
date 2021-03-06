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
../exec/HKY510 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
NFCNV 'MN1=C MN2=AD PA1=MSD PA2= PA3=WK0128008 PA4=1 \
PA5=C6,C2,C4,J26,S10,S10,S10,S9,S9,C2,C14 PB1=../tmp/URIAGE.CSV \
PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,J,S,S,S,S,S,C,C \
PB8=CREATE MN1=Q '
ENDJOB:

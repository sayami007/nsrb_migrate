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
../exec/JHS75U $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
NFCNV 'MN1=C MN2=AD PA1=MSD PA3=WK0064000 PA4=1 PA5=C6,C3,C6,S10,C39 \
PB1=../tmp/PARTY.CSV PB2=CSV2 PB3=EXCLUSIVE PB4=COMMA PB7=C,C,C,S,C \
PB8=CREATE MN1=Q '
source ../job/CRC_LIBRARY.sh
ENDJOB:
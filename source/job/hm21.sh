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
../exec/HMM210 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($JRCODE == 000) then
  goto ENDJOB
endif
if($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#/RUN #MIXGN,DEV=MSD,SIZ=16;
#ACT=ALIGN_KDE=MSD_KCI=_KFI=STENM-D_WKD=TEMPORARY_WPB=YES_SKO=NO_LST=NO_
#SAV=_NXT=_
#/> ;
ENDJOB:

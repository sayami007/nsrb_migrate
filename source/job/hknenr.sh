#!/bin/tcsh
#***�����������������@�����ꊇ��\�@����������������������������������������
if (${#argv} >= 1) then
	set USER_ID = ${argv[1]};
else
	set USER_ID = STN000;
endif
set JRCODE=000;
set FN1 = ${JRCODE_PATH}${USER_ID};
set FN2 = ${ERROR_PATH}${USER_ID};
#***  =====�@�����N�ԁ@���ޔ̔����сE�󕥕\�@============
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'HIYF' 'WK0128' '((92,2,N),(96,1,N),(88,2,N),(7,6,N))' '((88,9),(@0@),(13,6),(@0@),(19,9),(28,7),(35,10),(46,7),(53,' '10),(@0@),(63,6),(@0@),(69,9),(78,10),(7,6),(@  @),(1,33))' '((13,6),(19,9),(28,7),(35,10),(46,7),(53,10),(63,6),(69,9),(' '78,10))' '' '' '    �����N�ԁ@���ށ@�̔����сE�󕥕\    '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �����N�ԁ@���ޔ̔����сE�󕥕\ ---
#***  INPUT  : DATEM,HKBM,WK0128NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMY200 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  =====�@�i��ʁ@�N�Ԑ��i�󕥕\�@============
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'HIYF' 'WK0128' '((92,2,N),(96,1,N),(88,2,N),(1,6,N),(7,6,N))' '((1,102),(@          @),(1,16))' '' '((13,6),(19,9),(28,7),(35,10),(45,8),(53,10),(63,6),(69,9),(' '78,10))' '' '' '        �i��ʁ@�N�Ԑ��i�󕥕\          ''10' 'TTMYR' 'WK0128' '((1,4,N),(123,6,N))' '' '' '' '' '' '' '    ���Ӑ�N�Ԕ���W�v�t�@�C���@�쐬    '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �����i��ʁ@�N�Ԑ��i�󕥕\ ---
#***  INPUT  : DATEM,HIM1,HKBM,WK0128NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMG610 $USER_ID $JRCODE 1 0 0 0 0000 9999 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  --- �����i���ʁ@�N�Ԑ��i�󕥕\ ---
#***  INPUT  : DATEM,HIM1,HKBM,WK0128NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMG610 $USER_ID $JRCODE 1 1 0 0 0000 9999 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  =====�@���Ӑ�N�Ԕ��㏇�ʕʁ@�̔����ѕ\�@============
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'TTMYR' 'WK0128' '((1,4,N),(123,6,N))' '' '' '' '' '' '' '    ���Ӑ�N�Ԕ���W�v�t�@�C���@�쐬    '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- ���Ӑ�N�Ԕ���W�v�t�@�C���@�쐬 ---
#***  INPUT  : DATEM,WK0128NNN
#***  OUTPUT : WK0064NNN
set ABORT=0;
../exec/HMY610 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#**
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '00' 'WK0064' '(11,10,S,D)' '' '' '' '' '' '' '   ���Ӑ�N�Ԕ��㏇�ʕʃt�@�C���@�쐬   '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- ���Ӑ�N�Ԕ��㏇�ʕʁ@�̔����ѕ\ ---
#***  INPUT  : DATEM,TM1,WK0064NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMY550 $USER_ID $JRCODE 0
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  =====�@�S�����Ӑ�N�Ԕ��㏇�ʕʁ@�̔����ѕ\�@============
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'TTMYR' 'WK0128' '((1,4,N),(123,6,N))' '' '' '' '' '' '' '    ���Ӑ�N�Ԕ���W�v�t�@�C���@�쐬    '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- ���Ӑ�N�Ԕ���W�v�t�@�C���@�쐬 ---
#***  INPUT  : DATEM,WK0128NNN
#***  OUTPUT : WK0064NNN
set ABORT=0;
../exec/HMY610 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#**
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '00' 'WK0064' '((9,2,N),(11,10,S,D))' '' '' '' '' '' '' ' �S�����Ӑ�N�Ԕ��㏇�ʕʃt�@�C���@�쐬 '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �S�����Ӑ�N�Ԕ��㏇�ʕʁ@�̔����ѕ\ ---
#***  INPUT  : DATEM,HKBM,TM1,WK0064NNN
#***  OUTPUT : PRN999
../exec/HMY620 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
#***  =====�@�s���{���N�Ԕ��㏇�ʕʁ@�̔����ѕ\�@============
#***  --- �s���{���f�[�^�@�X�V ---
#***  INPUT  : WK0064NNN
#***  I-O    : HKBM
set ABORT=0;
../exec/HMY520 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#**
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'HKBM' 'WK0064' '(21,10,S,D)' '' '' '' '' '(1,2,N,EQ,@01@)' '' '   �s���{���N�Ԕ��㏇�ʕʁ@�̔����ѕ\   '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �s���{���N�Ԕ��㏇�ʕʁ@�̔����ѕ\ ---
#***  INPUT  : DATEM,HKBM,WK0064NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMY530 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  =====�@�N�ԕi��ʁ@���Y���ו\�@===========
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '10' 'SUSRYF' 'WK0064' '((32,1,N),(1,6,N),(46,6,N),(42,1,N))' '((1,51),(@          @),(1,3))' '' '' '' '' '' '          �����N�ԁ@���Y���ו\          '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �N�ԕi��ʁ@���Y���ו\ ---
#***  INPUT  : DATEM,HIM1,HKBM,WK0064NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/HMY750 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if($ABORT == 1) then
  goto ENDJOB
endif
if ($JRCODE == 255) then
  goto ENDJOB
endif
#***  =====�@�H�i�N�ԁ@�p�r�E�i��ʁ@�̔����сE���i�󕥕\�@===========
#***  --- �H�i�i���N�ԗݐσt�@�C���@���o ---
#***  INPUT  : DATEM,KHM,KHTMYR
#***  OUTPUT : WK0128NNN
set ABORT=0;
../exec/KHY590 $USER_ID $JRCODE 1
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#**
set ABORT=0;
../exec/CSRT50 $USER_ID $JRCODE '00' 'WK0128' '((6,3,N),(1,5,C))' '' '' '' '' '' '' '          �H�i�@�N�Ԕ̔����ѕ\          '
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �H�i�N�ԗp�r�敪�ʁ@�̔����ѕ\ ---
#***  INPUT  : DATEM,KKBM,WK0128NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/KHY540 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �H�i�N�ԗp�r�敪�ʁ@���i�󕥕\ ---
#***  INPUT  : DATEM,KKBM,WK0128NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/KHY510 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �H�i�i���N�ԗݐσ��[�N�@�ϊ� ---
#***  INPUT  : WK0128NNN
#***  OUTPUT : WK0256NNN
set ABORT=0;
../exec/KHY520 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
#***  --- �H�i�N�ԗp�r�敪�i��ʁ@���i�󕥕\ ---
#***  INPUT  : DATEM,KHM,WK0256NNN
#***  OUTPUT : PRN999
set ABORT=0;
../exec/KHY530 $USER_ID $JRCODE
source ../job/CRC_LIBRARY.sh
if ($JRCODE == 255) then
  goto ENDJOB
endif
if($ABORT == 1) then
  goto ENDJOB
endif
ENDJOB:

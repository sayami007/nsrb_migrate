000010****************************************
000020*****     �������f�[�^�t�@�C��     *****
000030*****       (  SKDF 170/3  )       *****
000040****************************************
000050 FD  SKDF
000060     BLOCK  4 RECORDS
000070     LABEL RECORD IS STANDARD
000080     VALUE OF IDENTIFICATION "SKDF".
000090 01  SKD-R.
000100     02  SKD-KEY.                                                 KEY
000110       03  SKD-TCD      PIC  9(004).                              ���Ӑ�C
000120       03  SKD-DATE     PIC  9(008).                              ���t
000130       03  SKD-NGP   REDEFINES SKD-DATE.
000140         04  SKD-NG.
000150           05  SKD-NEN  PIC  9(004).
000160           05  SKD-GET  PIC  9(002).
000170         04  SKD-PEY    PIC  9(002).
000180       03  SKD-NGPL  REDEFINES SKD-DATE.
000190         04  F          PIC  9(002).
000200         04  SKD-NGPS   PIC  9(006).
000210       03  SKD-NGPD  REDEFINES SKD-DATE.
000220         04  F          PIC  9(004).
000230         04  SKD-GP     PIC  9(004).
000240       03  SKD-DTC      PIC  9(001).                              �敪
000250       03  SKD-DNO      PIC  9(006).                              �`�[��
000260       03  SKD-GNO      PIC  9(001).                              �@�s��
000270     02  SKD-HCD        PIC  9(006).                              �i���b
000280     02  SKD-HCDD  REDEFINES SKD-HCD.                             I.001101
000290       03  SKD-KCD      PIC  X(005).                              I.001101
000300       03  F            PIC  X(001).                              I.001101
000310     02  SKD-SU         PIC S9(006)V9(02).                        ����
000320     02  SKD-T          PIC S9(006)V9(02).                        �P��
000330     02  SKD-KIN        PIC S9(009).                              ���z
000340     02  SKD-DC         PIC  9(001).                              �`��
000350     02  SKD-CSC        PIC  9(001).
000360     02  SKD-SKD        PIC  9(008).                              ������
000370     02  SKD-SKDD  REDEFINES SKD-SKD.
000380       03  SKD-SNEN     PIC  9(004).
000390       03  SKD-SGET     PIC  9(002).
000400       03  SKD-SPEY     PIC  9(002).
000410     02  SKD-TNC        PIC  9(002).                              �S���b
000420     02  SKD-BMC        PIC  9(001).                              ����C
000430*****02  SKD-DCN        PIC  9(003).                              D.010220
000440     02  SKD-DCC        PIC  9(001).                              I.010220
000450     02  F              PIC  X(002).                              I.010220
000460     02  SKD-TCD2       PIC  9(004).
000470     02  SKD-CCD        PIC  9(003).                              ������
000480     02  SKD-BI         PIC  N(024).                              ���l
000490     02  SKD-HNO.                                                 ������
000500       03  SKD-HNO1     PIC  9(006).
000510       03  SKD-HNO2     PIC  9(006).
000520       03  SKD-HNO3     PIC  9(006).
000530       03  SKD-HNO4     PIC  9(006).
000540       03  SKD-HNO5     PIC  9(006).
000550       03  SKD-HNO6     PIC  9(006).
000560     02  SKD-SHZ        PIC S9(007).                              �����
000570     02  SKD-KSU        PIC  9(003).                              ��
000580*****02  F              PIC  X(018).                              D.001101
000590     02  SKD-JCD        PIC  9(006).                              I.001101
000600     02  F              PIC  X(012).                              I.001101
000610     02  SKD-SNO        PIC  9(006).
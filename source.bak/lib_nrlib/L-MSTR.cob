000010***********************************************
000020*****                                     *****
000030**   �@�@�}�X�^�X�V�@�g�����@�@�@�@�@�@�@�@�@**
000040*****         ( MSTRN    )  21/12         *****
000050***********************************************
000060 FD  MSTRN
000070     BLOCK 12 RECORDS
000080     LABEL RECORD IS STANDARD
000090     VALUE OF IDENTIFICATION "MSTRN".
000100*
000110*----������p
000120 01  MS1-REC.
000130     02  MS1-KEY.                                                 KEY
000140         03  MS1-011         PIC X(01).                           ID
000150         03  MS1-012         PIC 9(07).                           ������
000160         03  MS1-012R        REDEFINES  MS1-012.
000170             04  MS1-0121    PIC 9(04).                             ���Ӑ�
000180             04  MS1-0122    PIC 9(03).                             ������
000190     02  MS1-02.                                                  �X�VBIT
000200         03  MS1-021         PIC X(01).                             1:�ʓ�
000210         03  MS1-022         PIC X(01).                             2:��
000220         03  MS1-023         PIC X(01).                             3:����
000230         03  MS1-024         PIC X(01).                             4:��
000240     02  F                   PIC X(02).
000250     02  MS1-10              PIC 9(01).                           ACT
000260     02  MS1-11              PIC 9(06).                           �X�V��
000270     02  MS1-11R             REDEFINES  MS1-11.
000280         03  MS1-111         PIC 9(02).                             �N
000290         03  MS1-112         PIC 9(02).                             ��
000300         03  MS1-113         PIC 9(02).                             ��
000310*
000320*----�o�וi���p
000330 01  MS2-REC.
000340     02  MS2-KEY.                                                 KEY
000350         03  MS2-011         PIC X(01).                           ID
000360         03  MS2-012         PIC 9(06).                           �i���b�c
000370         03  F               PIC X(01).
000380     02  MS2-02.                                                  �X�VBIT
000390         03  MS2-021         PIC X(01).                             1:�ʓ�
000400         03  MS2-022         PIC X(01).                             2:��
000410         03  MS2-023         PIC X(01).                             3:����
000420         03  MS2-024         PIC X(01).                             4:��
000430     02  F                   PIC X(02).
000440     02  MS2-10              PIC 9(01).                           ACT
000450     02  MS2-11              PIC 9(06).                           �X�V��
000460     02  MS2-11R             REDEFINES  MS2-11.
000470         03  MS2-111         PIC 9(02).                             �N
000480         03  MS2-112         PIC 9(02).                             ��
000490         03  MS2-113         PIC 9(02).                             ��
000500*
000510*----���[�N�}���X���i�ʓ��̂݁j
000520 01  MS3-REC.
000530     02  MS3-KEY.                                                 KEY
000540         03  MS3-011         PIC X(01).                           ID
000550         03  MS3-012         PIC 9(03).                           �X��
000560         03  F               PIC X(04).
000570     02  MS3-02.                                                  �X�VBIT
000580         03  MS3-021         PIC X(01).                             1:�ʓ�
000590         03  MS3-022         PIC X(01).                             2:��
000600         03  MS3-023         PIC X(01).                             3:����
000610         03  MS3-024         PIC X(01).                             4:��
000620     02  F                   PIC X(02).
000630     02  MS3-10              PIC 9(01).                           ACT
000640     02  MS3-11              PIC 9(06).                           �X�V��
000650     02  MS3-11R             REDEFINES  MS3-11.
000660         03  MS3-111         PIC 9(02).                             �N
000670         03  MS3-112         PIC 9(02).                             ��
000680         03  MS3-113         PIC 9(02).                             ��
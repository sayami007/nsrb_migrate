000010***********************************************
000020*****                                     *****
000030**      �o�׎��� �t�@�C���@�@�@�@�@�@�@�@�@�@**
000040*****         ( JSJD    )  256/1          *****
000050***********************************************
000060 FD  JSJD
000070     BLOCK 1 RECORDS
000080     LABEL RECORD IS STANDARD
000090     VALUE    OF  IDENTIFICATION  "JSJD1"
000100     ALTERNATE    IDENTIFICATION  "JSJD2".
000110*
000120*
000130 01  JSJD-REC.
000140     02  JSJD-KEY.
000150         03  JSJD-01        PIC 9(01).                            �q����
000160         03  JSJD-02.                                             ������
000170             04  JSJD-021   PIC 9(04).                            ���Ӑ�CD
000180             04  JSJD-022   PIC 9(03).                            ������CD
000190         03  JSJD-KEY2.
000200             04  JSJD-03    PIC 9(06).                            �w�}��
000210             04  JSJD-04    PIC 9(01).                            �s��
000220     02  JSJD-05            PIC 9(01).                            �`��
000230     02  JSJD-06.                                                 �w�}��
000240*****    03  JSJD-061       PIC 9(02).                            D.980515
000250         03  JSJD-061       PIC 9(04).                            I.980515
000260         03  JSJD-061L  REDEFINES  JSJD-061.                      I.980519
000270             04  JSJD-061   PIC 9(02).                            I.980519
000280             04  JSJD-062   PIC 9(02).                            I.980519
000290         03  JSJD-062       PIC 9(02).                            �@�@��
000300         03  JSJD-063       PIC 9(02).                            �@�@��
000310     02  JSJD-06L   REDEFINES  JSJD-06.                           I.980519
000320         03  F              PIC 9(02).                            I.980519
000330         03  JSJD-06S       PIC 9(06).                            I.980519
000340     02  JSJD-07.                                                 �o�ד�
000350*****    03  JSJD-071       PIC 9(02).                            D.980515
000360         03  JSJD-071       PIC 9(04).                            I.980515
000370         03  JSJD-071L  REDEFINES  JSJD-071.                      I.980519
000380             04  JSJD-0711  PIC 9(02).                            I.980519
000390             04  JSJD-0712  PIC 9(02).                            I.980519
000400         03  JSJD-072       PIC 9(02).                            �@�@��
000410         03  JSJD-073       PIC 9(02).                            �@�@��
000420     02  JSJD-07L   REDEFINES  JSJD-07.                           I.980519
000430         03  F              PIC 9(02).                            I.980519
000440         03  JSJD-07S       PIC 9(06).                            I.980519
000450     02  JSJD-08.                                                 ��
000460         03  JSJD-081       PIC 9(06).                            �󒍇�
000470         03  JSJD-082       PIC 9(01).                            �s��
000480     02  JSJD-09            PIC 9(06).                            �i������
000490     02  JSJD-10            PIC 9(01).                            ���ދ敪
000500     02  JSJD-11.                                                 �o�׎w�}
000510         03  JSJD-111   OCCURS  10.                               ���ޕʐ�
000520             04  JSJD-1111      PIC S9(04).                       �o�א�
000530         03  JSJD-112       PIC S9(05).                           I.981006
000540*****    03  JSJD-112       PIC S9(06).                           D.981006
000550     02  JSJD-12.                                                 �o�׎���
000560         03  JSJD-121   OCCURS  10.                               ���ޕʐ�
000570             04  JSJD-1211      PIC S9(04).                       ���ѐ�
000580         03  JSJD-122       PIC S9(05).                           I.981006
000590*****    03  JSJD-122       PIC S9(06).                           D.981006
000600     02  JSJD-13            PIC 9(01).                            �a��敪
000610     02  JSJD-14            PIC 9(01).                            �^������
000620     02  JSJD-14A           PIC 9(03).                            �Z�b�g��
000630     02  JSJD-14B           PIC 9(06).                            �����
000640     02  JSJD-14C           PIC 9(02).                            �}��
000650*****02  FILLER             PIC X(03).                            D.981006
000660*****02  FILLER             PIC X(02).                            D.980930
000670*****02  JSJD-99            PIC 9(01).                            D.980930
000680     02  JSJD-14D           PIC N(09).                            �z�B
000690     02  JSJD-15            PIC N(23).                            �E�v
000700     02  JSJD-20            PIC X(10).                            I.981006
000710     02  JSJD-15A           PIC S9(03).                           ��
000720*****02  JSJD-18.                                                 D.980930
000730*****    03  JSJD-181       PIC 9(06).                            D.980930
000740*****    03  JSJD-182       PIC 9(01).                            D.980930
000750*****02  FILLER             PIC X(28).                            D.980515
000760*****02  FILLER             PIC X(24).                            D.980930
000770*****02  FILLER             PIC X(31).                            D.981006
000780     02  FILLER             PIC X(26).                            I.981006
000790     02  JSJD-19            PIC X(01).                            ��������
000800     02  JSJD-158           PIC 9(01).                            �󎚻��
000810     02  JSJD-16            PIC 9(01).                            ��^�ʋ�
000820     02  JSJD-17            PIC 9(01).                            �X�V���
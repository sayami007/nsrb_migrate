000010********************************************
000020*****     �H�i�@�i���}�X�^�[�@�@�@     *****
000030*****      (  KHM  256/1  )            *****
000040********************************************
000050 FD  KH-M
000060     BLOCK  1 RECORDS
000070     LABEL RECORD IS STANDARD
000080     VALUE OF IDENTIFICATION "KHM".
000090 01  KH-R.
000100     02  KH-KEY.                                                  ����
000110       03  KH-KEY1      PIC  X(002).
000120       03  KH-KEY2      PIC  9(003).
000130     02  KH-HCD  REDEFINES KH-KEY  PIC  X(005).
000140     02  KH-NAME        PIC  X(020).                              ��Ҳ
000150     02  KH-YC          PIC  9(002).                              ֳĸ���
000160*    [   �  �  �   ]
000170     02  KH-TGM         PIC  9(004)V9(02).                        ����ݶ
000180     02  KH-TKN         PIC  9(004)V9(02).                        �Ÿ��ݶ
000190     02  KH-TSZ         PIC  9(002)V9(02).                        ������ݶ
000200*
000210     02  KH-YGT1        PIC  9(006)V9(02).                        I.090424
000220     02  KH-YGT2        PIC  9(006)V9(02).                        I.090424
000230*****02  KH-MGS         PIC  9(001)V9(03).                        D.090424
000240*****02  KH-MKM         PIC  9(001)V9(03).                        D.090424
000250*****02  KH-MKH         PIC  9(001)V9(03).                        D.090424
000260*****02  KH-MTS         PIC  9(001)V9(03).                        D.090424
000270     02  KH-MKR         PIC  9(002)V9(03).                        �ح�MM
000280*
000290     02  KH-KKH         PIC  9(004)V9(02).                        ����
000300*
000310*    [   � � �� �� �   ]
000320     02  KH-SBB         PIC  9(002)V9(02).                        ������
000330     02  KH-STS         PIC  9(002)V9(02).                        Ŀ�
000340     02  KH-SNE         PIC  9(002)V9(02).                        ȼ�
000350     02  KH-SKP         PIC  9(002)V9(02).                        ���߳
000360     02  KH-SKY         PIC  9(002)V9(02).                        �����
000370     02  KH-SMK         PIC  9(002)V9(02).                        ϰ�
000380     02  KH-SPK         PIC  9(002)V9(02).                        �߰��
000390     02  KH-SKG         PIC  9(002)V9(02).                        ------
000400     02  KH-SAN         PIC  9(002)V9(02).                        ------
000410     02  KH-SET         PIC  9(002)V9(02).                        ------
000420     02  KH-SST         PIC  9(003)V9(02).                        ���
000430*
000440     02  KH-DRH         PIC  9(003)V9(02).                        �޳خ��
000450*
000460     02  KH-KPS         PIC  9(003)V9(02).                        ����ݿ��
000470*
000480     02  KH-SKH         PIC  9(002)V9(02).                        �������
000490*
000500     02  KH-SHY         PIC  9(002)V9(02).                        �ֳ��
000510*    [   ��  �  �   ]
000520     02  KH-T1          PIC  9(006)V9(02).                        �޲�A
000530     02  KH-T2          PIC  9(006)V9(02).                        �޲�B
000540*
000550     02  KH-KIS         PIC  9(001).                              �������
000560     02  KH-SYS         PIC  9(003).                              ���Ľ�
000570     02  KH-TRS         PIC  9(002).                              �غ��
000580     02  KH-MS          PIC  9(001).                              �ݽ�
000590     02  KH-KCO         PIC  X(005).                              �ح�����
000600     02  KH-USG         PIC  9(004)V9(02).                        I.980203
000610     02  KH-NC          PIC  9(001).                              I.020819
000620*
000630*    [   ��  �  �   ]
000640     02  KH-GT1         PIC  9(006)V9(02).                        I.090417
000650     02  KH-GT2         PIC  9(006)V9(02).                        I.090417
000660     02  KH-KNA         PIC  N(024).                              I.090417
000670*****02  F              PIC  X(064).                              D.090417
000680     02  KH-DNG         PIC  9(004).                              I.040511
000690     02  F              PIC  X(006).                              I.040511
000700*****02  F              PIC  X(074).                              D.040511
000710*****02  F              PIC  X(075).                              D.020819
000720*****02  F              PIC  X(079).                              D.980205
000730*****02  F              PIC  X(085).                              D.980203
000740*    [   ���@�t   ]
000750     02  KH-ENG         PIC  9(004).                              I.980205
000760     02  KH-ADD         PIC  9(004).                              �o�^�N��
000770     02  KH-COD         PIC  9(006).                              �C����
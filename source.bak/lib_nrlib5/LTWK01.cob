000010 FD  JT-WK01                                                      ��������
000020     BLOCK    1     RECORDS                                       ���
000030     LABEL    RECORD   STANDARD
000040     VALUE    OF  IDENTIFICATION  JT-IWS256ID.
000050*
000060 01  W01-R.
000070     02   W01-KEY.                                                KEY
000080          03   W01-01          PIC 9(6).                          �������
000090          03   W01-02          PIC 9(1).                          �ޮ�
000100     02   W01-03               PIC 9(1).                          ��ݸ
000110     02   W01-04.                                                 ������ �
000120          03  W01-041          PIC 9(2).                          ��
000130          03  W01-042          PIC 9(2).                          ·
000140          03  W01-043          PIC 9(2).                          �
000150     02   W01-05.                                                 �����޼�
000160          03  W01-051          PIC 9(2).                          ��
000170          03  W01-052          PIC 9(2).                          ·
000180          03  W01-053          PIC 9(2).                          �
000190     02   W01-06.                                                 ����� CD
000200          03  W01-061          PIC 9(4).                          ĸ�����
000210          03  W01-062          PIC 9(3).                          ��� NO
000220     02   W01-07               PIC 9(1).                          �� ����
000230     02   W01-08.                                                 �ޭ���
000240          03  W01-081          PIC 9(6).                          �ޭ���NO
000250          03  W01-082          PIC 9(1).                          �ޮ�
000260     02   W01-09               PIC 9(6).                          �ݺ���
000270     02   W01-10               PIC 9(1).                          ���޸���
000280     02   W01-11.                                                 ��������
000290          03  W01-111    OCCURS  10.                              �������
000300              04  W01-1111     PIC S9(4).
000310          03  W01-112          PIC S9(6).                         ��
000320     02   W01-12.                                                 �������
000330          03  W01-121    OCCURS  10.                              �������
000340              04  W01-1211     PIC S9(4).
000350          03  W01-122          PIC S9(6).                         ��
000360     02  W01-13                PIC 9(1).                          ��޶� KB
000370     02  W01-14                PIC 9(1).                          �^���b�c
000380     02  W01-14A               PIC 9(3).                          �Z�b�g��
000390     02  W01-14B               PIC 9(6).                          �����
000400     02  W01-14C               PIC 9(2).                          �}��
000410     02  FILLER                PIC X(2).
000420     02  W01-99                PIC 9(01).                         ���ޗL��
000430     02  W01-14D               PIC N(9) .                         �z�B
000440     02  W01-15                PIC N(23) .                        �E�v
000450     02  W01-15A               PIC S9(03).                        ��
000460     02  FILLER                PIC X(36).                         A-890811
000470     02  W01-158               PIC 9(01).                         A-890811
000480     02  W01-16                PIC 9(01).                         ��ʋ���
000490     02  W01-17                PIC 9(01).                         �X�V���
000010 FD  JT-WKN1                                                      ����ٲ��
000020     BLOCK    5     RECORDS                                       ̧��
000030     LABEL    RECORD   STANDARD
000040     VALUE     OF  IDENTIFICATION  JT-IWS102ID.
000050*
000060 01  WN01-R.
000070     02   WN01-01               PIC 9(1).                         ��޶ظ��
000080     02   WN01-KEY1.
000090          03   WN01-06.                                           �ޭ���
000100               04  WN01-061     PIC 9(6).                         �ޭ���NO
000110               04  WN01-062     PIC 9(1).                         �ޮ�
000120          03   WN01-03.                                           ������
000130               04  WN01-031     PIC 9(2).                         ��
000140               04  WN01-032     PIC 9(2).                         ·
000150               04  WN01-033     PIC 9(2).                         �
000160          03   WN01-03A         PIC 9(1).                         ں���KBN
000170          03   WN01-02.                                           ����
000180               04   WN01-021    PIC 9(6).                         ��������
000190               04   WN01-022    PIC 9(1).                         �ޮ�
000200     02   WN01-04.
000210          03  WN01-041          PIC 9(4).                         ĸ�����
000220          03  WN01-042          PIC 9(3).                         ����� NO
000230     02   WN01-05               PIC 9(1).                         �� ����
000240     02   WN01-07               PIC 9(6).                         �ݺ���
000250     02   WN01-08               PIC 9(1).                         ���޸���
000260     02   WN01-09.                                                ������
000270          03  WN01-091    OCCURS  10.                             �������
000280              04  WN01-0911     PIC S9(4)   COMP-3.
000290          03  WN01-092          PIC S9(6)   COMP-3.               ��
000300     02   WN01-10               PIC X(1).                         ��ݸ
000310     02   WN01-11.                                                �a��
000320          03  WN01-111          PIC 9(6).                         ��
000330          03  WN01-112          PIC 9(1).                         �s��
000340     02   WN01-KEY.
000350          03   WN01-12          PIC 9(4).                         ���Ӑ�b
000360          03   WN01-13.                                           �o�ד�
000370              04  WN01-131      PIC 9(2).                           �N�@
000380              04  WN01-132      PIC 9(2).                         �@���@
000390              04  WN01-133      PIC 9(2).                         �@��
000400          03   WN01-14          PIC 9(1).                         ���R�[��
000410          03   WN01-15.                                           �`�[��
000420              04  WN01-151      PIC 9(6).                         �o�׎w��
000430              04  WN01-152      PIC 9(1).                         �@�s��
000440*****02   FILLER                PIC X(5).                         D.941228
000450     02   WN01-16               PIC 9(2).                         I.941228
000460     02   WN01-17               PIC 9(1).                         I.950217
000470*****02   FILLER                PIC X(3).                         D.950217
000480     02   FILLER                PIC X(2).                         I.950217

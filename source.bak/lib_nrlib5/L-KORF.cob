000010***********************************************
000020*****                                     *****
000030**   �@�@�@�@�@�n�^�k��M�t�@�C���@�@�@�@�@�@**
000040*****         ( KOLSF   )  256/1          *****
000050***********************************************
000060 FD  KOLRF
000070     BLOCK 1 RECORDS
000080     LABEL RECORD IS STANDARD
000090     VALUE OF IDENTIFICATION "KOLRF".
000100*
000110*----�R���g���[���e�p      �i�敪���O�P�j
000120 01  KOLRF1-REC.
000130     02  KOLRF1-01         PIC  9(02).                            �q�b�敪
000140     02  KOLRF1-KEYW.
000150       03  KOLRF1-02       PIC  9(01).                            ID
000160       03  KOLRF1-03       PIC  9(01).                            �^&�qCD
000170     02  KOLRF1-04         PIC  N(06).                            �^&�qCD
000180     02  KOLRF1-05         PIC  X(18).                            FILLER
000190     02  F                 PIC  X(221).
000200     02  KOLRF1-99         PIC  9(01).                            ���M��
000210*
000220*----������}�X�^�p        �i�敪���O�Q�j
000230 01  KOLRF2-REC.
000240     02  KOLRF2-01         PIC  9(02).                            �q�b�敪
000250     02  KOLRF2-KEYW.
000260       03  KOLRF2-02       PIC  9(04).                            ���Ӑ�CD
000270       03  KOLRF2-03       PIC  9(03).                            ������CD
000280     02  KOLRF2-04         PIC  N(24).                            �����於
000290     02  KOLRF2-05         PIC  N(24).                            �Z��(��)
000300     02  KOLRF2-06         PIC  N(12).                            �Z��(��)
000310*****02  KOLRF2-07         PIC  X(06).                            D.970130
000320*****02  KOLRF2-08         PIC  X(12).                            D.970130
000330     02  KOLRF2-07         PIC  X(08).                            I.970130
000340     02  KOLRF2-08         PIC  X(14).                            I.970130
000350     02  KOLRF2-09         PIC  9(02).                            �{������
000360     02  KOLRF2-10         PIC  9(01).                            �^������
000370*****02  KOLRF2-11         PIC  X(22).                            D.970130
000380     02  KOLRF2-11         PIC  X(18).                            D.970130
000390     02  KOLRF2-12         PIC  9(01).                            ACT
000400     02  F                 PIC  X(82).
000410     02  KOLRF2-99         PIC  9(01).                            ���M��
000420*
000430*----�o�וi���t�@�C��      �i�敪���O�R�j
000440 01  KOLRF3-REC.
000450     02  KOLRF3-01         PIC  9(02).                            �q�b�敪
000460     02  KOLRF3-KEYW.
000470       03  KOLRF3-02       PIC  9(06).                               �ݺ��
000480     02  KOLRF3-03         PIC  N(24).                               ��Ҳ
000490     02  KOLRF3-04         PIC  9(1).                                �����
000500     02  KOLRF3-05.                                                  �ֳ��
000510         03  KOLRF3-051.                                             ����
000520             04  KOLRF3-0511  OCCURS  10  PIC  9(01).
000530         03  KOLRF3-052.                                             ����
000540             04  KOLRF3-0521  OCCURS  10  PIC  9(01).
000550         03  KOLRF3-053.                                             ����
000560             04  KOLRF3-0531  OCCURS  10  PIC  9(01).
000570         03  KOLRF3-054.                                             ����
000580             04  KOLRF3-0541  OCCURS  10  PIC  9(01).
000590     02  KOLRF3-06         PIC  9(02).                               ���ٲ
000600*****02  KOLRF3-07         PIC  N(15).                            D.970130
000610     02  KOLRF3-07         PIC  N(14).                            I.970130
000620     02  KOLRF3-11         PIC  9(02).                            I.970130
000630     02  KOLRF3-08         PIC  9(03).                               ���@ 
000640     02  KOLRF3-09.                                                  �ꑫ 
000650         03  KOLRF3-091.                                             ����
000660             04  KOLRF3-0911  OCCURS  10  PIC  9(01).
000670         03  KOLRF3-092.                                             ����
000680             04  KOLRF3-0921  OCCURS  10  PIC  9(01).
000690         03  KOLRF3-093.                                             ����
000700             04  KOLRF3-0931  OCCURS  10  PIC  9(01).
000710         03  KOLRF3-094.                                             ����
000720             04  KOLRF3-0941  OCCURS  10  PIC  9(01).
000730     02 KOLRF3-10          PIC  9(01).                            ACT
000740     02 F                  PIC  X(82).
000750     02 KOLRF3-99          PIC  9(01).                            ���M��
000760*
000770*----�o�׎w���g����        �i�敪���P�P�j
000780 01  KOLRF11-REC.
000790     02  KOLRF11-01        PIC 9(02).                             �q�b�敪
000800     02  KOLRF11-KEYW.
000810       03  KOLRF11-02      PIC 9(06).                                �����
000820       03  KOLRF11-03      PIC 9(01).                                �ޮ�
000830     02  KOLRF11-04        PIC 9(01).                                ��ݸ
000840     02  KOLRF11-05.                                                 �����
000850*****    03  KOLRF11-051   PIC 9(02).                             D.980515
000860         03  KOLRF11-051   PIC 9(04).                             I.980515
000870         03  KOLRF11-052   PIC 9(02).                                ·
000880         03  KOLRF11-053   PIC 9(02).                                �
000890     02  KOLRF11-06.                                                 �����
000900*****    03  KOLRF11-061   PIC 9(02).                             D.980515
000910         03  KOLRF11-061   PIC 9(04).                             I.980515
000920         03  KOLRF11-062   PIC 9(02).                                ·
000930         03  KOLRF11-063   PIC 9(02).                                �
000940     02  KOLRF11-07.                                                 �����
000950         03  KOLRF11-071   PIC 9(04).                                ĸ���
000960         03  KOLRF11-072   PIC 9(03).                                ��� N
000970     02  KOLRF11-08        PIC 9(01).                                �� ��
000980     02  KOLRF11-09.                                                 �ޭ��
000990         03  KOLRF11-091   PIC 9(06).                                �ޭ��
001000         03  KOLRF11-092   PIC 9(01).                                �ޮ�
001010     02  KOLRF11-10        PIC 9(06).                                �ݺ��
001020     02  KOLRF11-11        PIC 9(01).                                ���޸
001030     02  KOLRF11-12.                                                 �����
001040         03  KOLRF11-121   OCCURS  10.                               �����
001050             04  KOLRF11-1211      PIC S9(04).
001060         03  KOLRF11-122   PIC S9(05).                            I.981006
001070*****    03  KOLRF11-122   PIC S9(06).                            D.981006
001080     02  KOLRF11-13.                                                 �����
001090         03  KOLRF11-131   OCCURS  10.                               �����
001100             04  KOLRF11-1311      PIC S9(04).
001110         03  KOLRF11-132   PIC S9(05).                            I.981006
001120*****    03  KOLRF11-132   PIC S9(06).                            D.981006
001130     02  KOLRF11-14        PIC 9(01).                                ��޶�
001140     02  KOLRF11-15        PIC 9(01).                                �^�� 
001150     02  KOLRF11-15A       PIC 9(03).                                �Z�b 
001160     02  KOLRF11-15B       PIC 9(06).                                ���� 
001170     02  KOLRF11-15C       PIC 9(02).                                �}��
001180*****02  FILLER            PIC X(3).                              D.981006
001190*****02  FILLER            PIC X(2).                              D.980930
001200*****02  KOLRF11-99        PIC 9(01).                             D.980930
001210     02  KOLRF11-15D       PIC N(09).                                �z�B
001220     02  KOLRF11-16        PIC N(23).                                �E�v
001230     02  KOLRF11-20        PIC X(10).                             I.981006
001240     02  KOLRF11-16A       PIC S9(03).                            ��
001250*****02  KOLRF11-18A.                                             D.980930
001260*****    03  KOLRF11-181   PIC 9(06).                             D.980930
001270*****    03  KOLRF11-182   PIC 9(01).                             D.980930
001280*****02  FILLER            PIC X(26).                             D.980515
001290*****02  FILLER            PIC X(22).                             D.980930
001300*****02  FILLER            PIC X(29).                             D.981006
001310     02  FILLER            PIC X(24).                             I.981006
001320     02  KOLRF11-19        PIC X(01).                             ��������
001330     02  KOLRF11-168       PIC 9(01).                                A-890
001340     02  KOLRF11-17        PIC 9(01).                                ��� 
001350     02  KOLRF11-18        PIC 9(01).                                �X�V�
001360*
001370*----�׎D�g����            �i�敪���P�Q�j
001380 01  KOLRF12-REC.
001390     02  KOLRF12-01        PIC 9(02).                             �q�b�敪
001400*
001410     02  KOLRF121-A.                                              �sNOT=7
001420         03  KOLRF121-1KEYW.
001430          04  KOLRF121-01  PIC 9(6).                                 �����
001440          04  KOLRF121-02  PIC 9(1).                                 �ޮ�
001450         03  KOLRF121-03   PIC 9(6).                                 �ݺ��
001460         03  KOLRF121-04.                                            ʯ���
001470          04  KOLRF121-041 PIC 9(2).                                 ��
001480          04  KOLRF121-042 PIC 9(2).                                 ·
001490          04  KOLRF121-043 PIC 9(2).                                 �
001500         03  KOLRF121-05.                                            �����
001510          04  KOLRF121-051 PIC 9(4).                                 ĸ���
001520          04  KOLRF121-052 PIC 9(3).                                 ��� N
001530         03  KOLRF121-06   PIC 9(1).                                 �ݿ�
001540         03  KOLRF121-07   PIC 9(1).                                 �����
001550         03  KOLRF121-08   PIC S9(3).                                ���
001560         03   KOLRF121-09  OCCURS  27.                               �����
001570          04  KOLRF121-091 PIC S9(3).                                �����
001580         03  KOLRF121-10   PIC 9(1).                                 �ݼ޻
001590         03  KOLRF121-11   PIC 9(1).                                 ƭ�خ
001600         03  KOLRF121-12   PIC 9(1).                                 �����
001610         03  KOLRF121-13   PIC S9(3).                                ϲ��
001620         03  KOLRF121-13A  PIC 9(1).                              ��ʋ���
001630         03  FILLER        PIC X(2).
001640         03  KOLRF121-14   PIC 9(6).                                 ��ؼ�
001650*
001660     02  KOLRF122-A        REDEFINES  KOLRF121-A.                 �s���V
001670         03  KOLRF122-1KEYW.
001680          04  KOLRF122-01  PIC 9(6).                                 �����
001690          04  KOLRF122-02  PIC 9(1).                                 �ޮ�
001700         03  KOLRF122-02A  PIC N(9).                                 ʲ��
001710         03  KOLRF122-03   PIC N(23).                                ÷ֳ
001720         03  FILLER        PIC X(41).
001730         03  KOLRF122-04   PIC 9(1).                                 �ݼ޻
001740         03  KOLRF122-05   PIC 9(1).                                 Ʈ�خ
001750         03  KOLRF122-06   PIC 9(1).                                 �����
001760         03  KOLRF122-07   PIC S9(3).                                ϲ��
001770         03  KOLRF122-07A  PIC 9(1).                              ��ʋ���
001780         03  FILLER        PIC X(2).
001790         03  KOLRF122-08   PIC 9(6).                                 ��ؼ�
001800*
001810     02  KOLRF121-B.                                              �sNOT=7
001820         03  KOLRF121-2KEYW.
001830          04  KOLRF121-21  PIC 9(6).                                 �����
001840          04  KOLRF121-22  PIC 9(1).                                 �ޮ�
001850         03  KOLRF121-23   PIC 9(6).                                 �ݺ��
001860         03  KOLRF121-24.                                            ʯ���
001870          04  KOLRF121-241 PIC 9(2).                                 ��
001880          04  KOLRF121-242 PIC 9(2).                                 ·
001890          04  KOLRF121-243 PIC 9(2).                                 �
001900         03  KOLRF121-25.                                            �����
001910          04  KOLRF121-251 PIC 9(4).                                 ĸ���
001920          04  KOLRF121-252 PIC 9(3).                                 ��� N
001930         03  KOLRF121-26   PIC 9(1).                                 �ݿ�
001940         03  KOLRF121-27   PIC 9(1).                                 �����
001950         03  KOLRF121-28   PIC S9(3).                                ���
001960         03   KOLRF121-29  OCCURS  27.                               �����
001970          04  KOLRF121-291 PIC S9(3).                                �����
001980         03  KOLRF121-30   PIC 9(1).                                 �ݼ޻
001990         03  KOLRF121-31   PIC 9(1).                                 ƭ�خ
002000         03  KOLRF121-32   PIC 9(1).                                 �����
002010         03  KOLRF121-33   PIC S9(3).                                ϲ��
002020         03  KOLRF121-33A  PIC 9(1).                              ��ʋ���
002030         03  FILLER        PIC X(2).
002040         03  KOLRF121-34   PIC 9(6).                                 ��ؼ�
002050*
002060     02  KOLRF122-B        REDEFINES  KOLRF121-B.                 �s���V
002070         03  KOLRF122-2KEYW.
002080          04  KOLRF122-21  PIC 9(6).                                 �����
002090          04  KOLRF122-22  PIC 9(1).                                 �ޮ�
002100         03  KOLRF122-22A  PIC N(9).                                 ʲ��
002110         03  KOLRF122-23   PIC N(23).                                ÷ֳ
002120         03  FILLER        PIC X(41).
002130         03  KOLRF122-24   PIC 9(1).                                 �ݼ޻
002140         03  KOLRF122-25   PIC 9(1).                                 Ʈ�خ
002150         03  KOLRF122-26   PIC 9(1).                                 �����
002160         03  KOLRF122-27   PIC S9(3).                                ϲ��
002170         03  KOLRF122-27A  PIC 9(1).                              ��ʋ���
002180         03  FILLER        PIC X(2).
002190         03  KOLRF122-28   PIC 9(6).                                 ��ؼ�
002200*****02  F                 PIC X(54).
002210*
002220*----�����t�@�C��        �i�敪���P�R�j
002230 01  KOLRF13-REC.
002240     02  KOLRF13-01        PIC 9(02).                             �q�b�敪
002250     02  KOLRF13-TBL       OCCURS  4.
002260         03  KOLRF13-KEYW.
002270           04  KOLRF13-02  PIC 9(06).                                ���� 
002280           04  KOLRF13-03  PIC 9(01).                                �^�� 
002290         03  KOLRF13-04    PIC 9(06).                                �N�� 
002300         03  KOLRF13-05    PIC 9(01).                                �q�� 
002310         03  KOLRF13-06    PIC 9(07).                                ���� 
002320         03  KOLRF13-07    PIC N(09).                                �z�B 
002330         03  KOLRF13-08    PIC 9(03).                                ��
002340         03  KOLRF13-09    PIC 9(01).                                ��
002350         03  KOLRF13-10    PIC 9(01).                                �敪
002360         03  KOLRF13-11    PIC 9(01).                                �X�V
002370*****    03  F             PIC X(06).                             D.960829
002380         03  KOLRF13-12    PIC 9(05).                             I.960829
002390         03  F             PIC X(01).                             I.960829
002400     02  F                 PIC X(50).
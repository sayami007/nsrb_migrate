      ***********************************************
      *****                                     *****
      **             n^kóMt@C@@@@@@**
      *****         ( JOLJF   )  256/1          *****
      ***********************************************
       01  JOLJF.
           02  JOLJF_PNAME1      PIC  X(005) VALUE "JOLJF".
           02  F                 PIC  X(001).
           02  JOLJF_LNAME       PIC  X(005) VALUE "JOLJF".
           02  F                 PIC  X(001).
           02  JOLJF_KEY1        PIC  X(100) VALUE SPACE.
           02  JOLJF_SORT        PIC  X(100) VALUE SPACE.
           02  JOLJF_IDLST       PIC  X(100) VALUE SPACE.
           02  JOLJF_RES         USAGE  POINTER.
      *----o×w¦g        iæªPPj
       01  JOLJF11-REC.
           02  JOLJF11-01        PIC 9(02).                             qbæª
           02  JOLJF11-KEYW.
             03  JOLJF11-02      PIC 9(06).                                ¼­¯¶¼
             03  JOLJF11-03      PIC 9(01).                                ·Ş®³
           02  JOLJF11-04        PIC 9(01).                                ÃŞİ¸
           02  JOLJF11-05.                                                 ¼­¯¶Ë
               03  JOLJF11-051   PIC 9(04).
               03  JOLJF11-052   PIC 9(02).                                Â·
               03  JOLJF11-053   PIC 9(02).                                Ë
           02  JOLJF11-06.                                                 ¼­¯¶Ë
               03  JOLJF11-061   PIC 9(04).
               03  JOLJF11-062   PIC 9(02).                                Â·
               03  JOLJF11-063   PIC 9(02).                                Ë
           02  JOLJF11-07.                                                 Á®¸¿³
               03  JOLJF11-071   PIC 9(04).                                Ä¸²º°
               03  JOLJF11-072   PIC 9(03).                                Á®¸ N
           02  JOLJF11-08        PIC 9(01).                                ¸× º°
           02  JOLJF11-09.                                                 ¼Ş­Á­
               03  JOLJF11-091   PIC 9(06).                                ¼Ş­Á­
               03  JOLJF11-092   PIC 9(01).                                ·Ş®³
           02  JOLJF11-10        PIC 9(06).                                Ëİº°Ä
           02  JOLJF11-11        PIC 9(01).                                »²½Ş¸
           02  JOLJF11-12.                                                 ¼­¯¶»
               03  JOLJF11-121   OCCURS  10.                               »²½ŞÍ
                   04  JOLJF11-1211      PIC S9(04).
               03  JOLJF11-122   PIC S9(05).
           02  JOLJF11-13.                                                 ¼­¯¶¼
               03  JOLJF11-131   OCCURS  10.                               »²½ŞÍ
                   04  JOLJF11-1311      PIC S9(04).
               03  JOLJF11-132   PIC S9(05).
           02  JOLJF11-14        PIC 9(01).                                ±½Ş¶Ø
           02  JOLJF11-15        PIC 9(01).                                ^ 
           02  JOLJF11-15A       PIC 9(03).                                Zb 
           02  JOLJF11-15B       PIC 9(06).                                è 
           02  JOLJF11-15C       PIC 9(02).                                }Ô
           02  JOLJF11-15D       PIC N(09).                                zB
           02  JOLJF11-16        PIC N(23).                             Ev
           02  JOLJF11-20        PIC X(10).
           02  JOLJF11-16A       PIC S9(03).                            Â
           02  FILLER            PIC X(24).
           02  JOLJF11-19        PIC X(01).                             
           02  JOLJF11-168       PIC 9(01).                                A-890
           02  JOLJF11-17        PIC 9(01).                             êÊ 
           02  JOLJF11-18        PIC 9(01).                             XV»
       77  F                     PIC X(01).

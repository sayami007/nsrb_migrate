       IDENTIFICATION      DIVISION.
       PROGRAM-ID.         PR530U.
      *
       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SOURCE-COMPUTER.    SYSTEM100.
       OBJECT-COMPUTER.    SYSTEM100.
       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       77  FIL             PIC  X(30)  VALUE  SPACE.
       77  I               PIC  9(02)  VALUE  0.
       77  ERR-STAT        PIC  X(02).
       01  WK-AREA.
           02  READ-FLG    PIC 9(01).
           02  SITEI.
             03  STARTBMN  PIC  9(04).
             03  ENDBMN    PIC  9(04).
           02  CHK         PIC  X(01).
           02  TY-SW       PIC  9(01).
       01  KEISAN.
           02  W-TOGET     PIC  S9(11).
           02  W-ZENEN     PIC  S9(11).
       01  SOEJI.
           02  FI              PIC 9(02).
           02  TI              PIC 9(02).
      *****
       COPY    LWMSG_PR.
       COPY    LBUZAN.
       COPY    ACCUNT.
       COPY    LGENKF.
       COPY    BUGEN.
       COPY    FCTL.
      *
       77  USER_ID                 PIC  X(006) VALUE SPACE.
       77  COMPLETION_CODE         PIC  X(003) VALUE ZERO.
       77  LINAGECOUNTER           PIC  9(003).
       77  ESTAT                   PIC  X(002).
       77  RESU                    PIC  9(001).
       77  RESP                    PIC  9(001).
       77  RET                     PIC  9(001) VALUE ZERO.
      **********
       01  DISP-BUZZER.
           03  DISP-BUZ-J-03       PIC X(05)  VALUE X"1B4A03".
       01  DSP-CLR-AREA.
           03  DSP-CLR.
               05  FILLER          PIC  X(12)  VALUE  "CLEAR SCREEN".
           03  DSP-CLR-01          PIC X(1)
                               VALUE  " ".
           03  DSP-CLR-02          PIC X(30)
                               VALUE  "                              ".
       01  DSP-AREA.
           03  DSP-010.
               05      FILLER      PIC  N(01)  VALUE  "�N".
               05      FILLER      PIC  N(02)  VALUE  "���x".
               05      FILLER      PIC  9(02).
               05      FILLER      PIC  9(02).
               05  DSP-011         PIC  X(30)
                    VALUE  " ����ʐ��������񍐏��i�����j ".
           03  DSP-020.
               05  FILLER          PIC  N(04)
                             VALUE   "�e�q�n�l".
               05  FILLER          PIC  N(02)
                             VALUE   "�s�n".
               05  FILLER          PIC  N(05)
                              VALUE  "����R�[�h".
               05  FILLER          PIC  N(01)
                              VALUE  "�`".
           03  DSP-030.
               05  DSP-031         PIC  N(2)
                              VALUE  "�m�F".
               05  DSP-032         PIC  X(13)
                              VALUE  "OK=1,NO=9 ( )".
       01  DSP-AREA2.
           03  DSP-050.
               05  DSP-051         PIC  X(13)
                              VALUE  "���۰� SEL ż".
               05  DSP-052         PIC  X(15)
                              VALUE  "���۰� �ײ� �ɳ".
               05  DSP-053         PIC  X(14)
                              VALUE  "���۰� DATE ż".
               05  DSP-054         PIC  X(20)
                              VALUE  "������ �ݴ� �ײ� �ɳ".
               05  DSP-055         PIC  X(16)
                              VALUE  "�Ӹ Ͻ� ż KEY= ".
               05  DSP-056         PIC  9(04).
               05  DSP-057         PIC  9(04).
               05  DSP-058         PIC  X(18)
                              VALUE  "�����¿ݴ� ²� �ɳ".
               05  DSP-059.
                   07  D59-1       PIC  X(17)
                              VALUE  "�ݴ�̧�� ż KEY= ".
                   07  D59-2       PIC  X(3).
       01  DSP-SP.
           02  FILLER.
               03  FILLER          PIC  X(04) VALUE "    ".
               03  FILLER          PIC  X(04) VALUE "    ".
           02  FILLER.
               03  FILLER          PIC  X(01) VALUE " ".
       01  ACP-AREA.
           03  ACP-010.
               05  ACP-011         PIC 9(4).
               05  ACP-012         PIC 9(4).
           03  ACP-020             PIC X(1).
           03  ACP-030             PIC X(1).
       COPY  LSMSG_PR.
       PROCEDURE           DIVISION.
       CALL "DB_Initialize" USING BY REFERENCE ERR-STAT RETURNING RET.
       CALL "DB_Open".
       CALL "SD_Initialize" RETURNING RESU.
      *       01  DISP-BUZZER
       CALL "SD_Init" USING
            "DISP-BUZZER" " " "24" "0" "5" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DISP-BUZ-J-03" "X" "24" "80" "5" " " "DISP-BUZZER"
            RETURNING RESU.
      *       01  DSP-CLR-AREA
       CALL "SD_Init" USING
            "DSP-CLR-AREA" " " "0" "0" "43" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-CLR" " " "1" "0" "12" " " "DSP-CLR-AREA"
            RETURNING RESU.
       CALL "SD_Init" USING
            "CLEAR" "X" "1" "0" "12" " " "DSP-CLR"  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-CLR-01" "X" "23" "1" "1" "DSP-CLR" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-CLR-02" "X" "24" "1" "30" "DSP-CLR-01" " "
            RETURNING RESU.
      *       01  DSP-AREA
             CALL "SD_Init" USING
            "DSP-AREA" " " "0" "0" "81" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-010" " " "1" "0" "40" " " "DSP-AREA"  RETURNING RESU.
       CALL "SD_Init" USING
            "01DSP-010" "N" "1" "4" "2" " " "DSP-010"  RETURNING RESU.
       CALL "SD_Init" USING
            "02DSP-010" "N" "1" "8" "4" "01DSP-010" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "03DSP-010" "9" "1" "2" "2" "02DSP-010" " "
            RETURNING RESU.
       CALL "SD_From" USING
            "03DSP-010" BY REFERENCE Z-GEMYY2 "2" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "04DSP-010" "9" "1" "6" "2" "03DSP-010" " "
            RETURNING RESU.
       CALL "SD_From" USING
            "04DSP-010" BY REFERENCE Z-GEMMM "2" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-011" "RX" "1" "28" "30" "04DSP-010" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-020" " " "0" "0" "24" "DSP-010" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "01DSP-020" "N" "4" "27" "8" " " "DSP-020"
            RETURNING RESU.
       CALL "SD_Init" USING
            "02DSP-020" "N" "4" "50" "4" "01DSP-020" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "03DSP-020" "N" "6" "11" "10" "02DSP-020" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "04DSP-020" "N" "6" "40" "2" "03DSP-020" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-030" " " "24" "0" "17" "DSP-020" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-031" "N" "24" "61" "4" " " "DSP-030"  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-032" "X" "24" "66" "13" "DSP-031" " "
            RETURNING RESU.
      *       01  DSP-AREA2
       CALL "SD_Init" USING
            "DSP-AREA2" " " "0" "0" "124" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-050" " " "24" "0" "124" " " "DSP-AREA2"
            RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-051" "X" "24" "1" "13" " " "DSP-050"  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-052" "X" "24" "1" "15" "DSP-051" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-053" "X" "24" "1" "14" "DSP-052" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-054" "X" "24" "1" "20" "DSP-053" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-055" "X" "24" "1" "16" "DSP-054" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-056" "9" "24" "17" "4" "DSP-055" " "  RETURNING RESU.
       CALL "SD_From" USING
            "DSP-056" BY REFERENCE BZM-BMON "4" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-057" "9" "24" "22" "4" "DSP-056" " "  RETURNING RESU.
       CALL "SD_From" USING
            "DSP-057" BY REFERENCE BZM-KMCD "4" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-058" "X" "24" "1" "18" "DSP-057" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "DSP-059" " " "24" "0" "20" "DSP-058" " "  RETURNING RESU.
       CALL "SD_Init" USING
            "D59-1" "X" "0" "1" "17" " " "DSP-059"  RETURNING RESU.
       CALL "SD_Init" USING
            "D59-2" "X" "0" "18" "3" "D59-1" " "  RETURNING RESU.
       CALL "SD_From" USING
            "D59-2" BY REFERENCE GNKEY(1) "3" "1"
            BY REFERENCE I 4  RETURNING RESU.
      *       01  DSP-SP
       CALL "SD_Init" USING
            "DSP-SP" " " "0" "0" "9" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "01DSP-SP" " " "6" "0" "8" " " "DSP-SP"  RETURNING RESU.
       CALL "SD_Init" USING
            "0101DSP-SP" "X" "6" "29" "4" " " "01DSP-SP"
            RETURNING RESU.
       CALL "SD_Init" USING
            "0201DSP-SP" "X" "6" "49" "4" "0101DSP-SP" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "02DSP-SP" " " "24" "0" "1" "01DSP-SP" " "
            RETURNING RESU.
       CALL "SD_Init" USING
            "0102DSP-SP" "X" "24" "77" "1" " " "02DSP-SP"
            RETURNING RESU.
      *       01  ACP-AREA
       CALL "SD_Init" USING
            "ACP-AREA" " " "0" "0" "10" " " " "  RETURNING RESU.
       CALL "SD_Init" USING
            "ACP-010" " " "6" "0" "8" " " "ACP-AREA"  RETURNING RESU.
       CALL "SD_Init" USING
            "ACP-011" "9" "6" "29" "4" " " "ACP-010"  RETURNING RESU.
       CALL "SD_Using" USING
            "ACP-011" BY REFERENCE STARTBMN "4" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "ACP-012" "9" "6" "49" "4" "ACP-011" " "  RETURNING RESU.
       CALL "SD_Using" USING
            "ACP-012" BY REFERENCE ENDBMN "4" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "ACP-020" "X" "24" "77" "1" "ACP-010" " "  RETURNING RESU.
       CALL "SD_Into" USING
            "ACP-020" BY REFERENCE CHK "1" "0" RETURNING RESU.
       CALL "SD_Init" USING
            "ACP-030" "X" "23" "1" "1" "ACP-020" " "  RETURNING RESU.
       CALL "SD_Into" USING
            "ACP-030" BY REFERENCE CHK "1" "0" RETURNING RESU.
      *
           COPY LSMSG_PR_P.
      *
           ACCEPT USER_ID FROM ARGUMENT-VALUE.
           ACCEPT COMPLETION_CODE FROM ARGUMENT-VALUE.
      *
       ST.
           CALL "DB_F_Open" USING
            "I-O" FCTL-F_PNAME1 "SHARED" BY REFERENCE FCTL-F_IDLST "1"
            "FCTL-KEY" BY REFERENCE FCTL-KEY.
           MOVE  "DATE "        TO  FCTL-KEY1.
      *           READ   FCTL-F   WITH  UNLOCK  INVALID
      *///////////////
           CALL "DB_Read" USING
            "INVALID" FCTL-F_PNAME1 BY REFERENCE FCTL-REC "UNLOCK"
            RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-053" DSP-053 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               CALL "DB_F_Close" USING
                BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1
               CALL "DB_Close"
               STOP RUN
           END-IF.
           MOVE FCTL-REC1  TO       Z-R.
           MOVE  Z-KONYMD     TO  ZYMD.
           PERFORM  Z-RTN     THRU  Z-EXT.
           IF  ZI > 15
               CALL "C3_Set_Jrcode" USING 
                USER_ID BY REFERENCE COMPLETION_CODE 255
               CALL "DB_F_Close" USING
                BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1
               CALL "DB_Close"
               STOP RUN
           END-IF.
           MOVE 1     TO TY-SW.
           MOVE ZI     TO TI.
           IF  TI > 12
               MOVE 0      TO TY-SW
               COMPUTE TI = Z-KSMM + ( TI - 12 )
               IF  TI > 12
                   COMPUTE TI = TI - 12
               END-IF
           END-IF.
           IF  Z-KSMM = 12
               MOVE 1     TO FI
           ELSE
               COMPUTE FI = Z-KSMM + 1
           END-IF.
           CALL "SD_Output" USING
            "DSP-CLR" DSP-CLR "p" RETURNING RESU.
           CALL "SD_Output" USING
            "DSP-010" DSP-010 "p" RETURNING RESU.
           CALL "SD_Output" USING
            "DSP-020" DSP-020 "p" RETURNING RESU.
           CALL "SD_Output" USING
            "DSP-030" DSP-030 "p" RETURNING RESU.
       ST-10.
           CALL "SD_Accept" USING
            BY REFERENCE ACP-011 "ACP-011" "9" "4"
            BY REFERENCE ESTAT RETURNING RESU.
           IF  ESTAT    =  "P9"
               CALL "C3_Set_Jrcode" USING 
                USER_ID BY REFERENCE COMPLETION_CODE 255
               CALL "DB_F_Close" USING
                BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1
               CALL "DB_Close"
               STOP  RUN
           END-IF.
           IF  ESTAT  NOT =  "01"  AND  "06"
               GO  TO  ST-10
           END-IF.
       ST-20.
           CALL "SD_Accept" USING
            BY REFERENCE ACP-012 "ACP-012" "9" "4"
            BY REFERENCE ESTAT RETURNING RESU.
           IF  ESTAT    =  "09"
               GO  TO  ST-10
           END-IF.
           IF  STARTBMN      >  ENDBMN
               GO  TO  ST-10
           END-IF.
       ST-30.
           CALL "SD_Accept" USING
            BY REFERENCE ACP-020 "ACP-020" "X" "1"
            BY REFERENCE ESTAT RETURNING RESU.
           IF  ESTAT  =  "09"
               GO  TO  ST-10
           END-IF.
           IF  ESTAT  NOT =  "01" AND "06"
               GO  TO  ST-30
           END-IF.
           IF  CHK           =    "1"
               GO  TO  ST-40
           END-IF.
           IF  CHK           =    "9"
               CALL "SD_Output" USING
                   "DSP-SP" DSP-SP "p" RETURNING RESU
               GO  TO  ST-10
           END-IF.
           GO  TO   ST-30.
       ST-40.
           MOVE  "SEL  "        TO  FCTL-KEY3.
      *           READ   FCTL-F        INVALID
      *///////////////
           CALL "DB_Read" USING
            "INVALID" FCTL-F_PNAME1 BY REFERENCE FCTL-REC " "
            RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-051" DSP-051 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               CALL "DB_F_Close" USING
                BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1
               CALL "DB_Close"
               STOP RUN
           END-IF.
           MOVE   STARTBMN      TO  FCTL-FROM1.
           MOVE   ENDBMN        TO  FCTL-TO1.
      *           REWRITE  FCTL-REC3  INVALID
      *///////////////
           CALL "DB_Update" USING
            FCTL-F_PNAME1 FCTL-F_LNAME FCTL-REC3 RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-052" DSP-052 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               CALL "DB_F_Close" USING
                BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1
               CALL "DB_Close"
               STOP RUN
           END-IF.
           CALL "DB_F_Open" USING
            "INPUT" BZM-F_PNAME1 "SHARED" BY REFERENCE BZM-F_IDLST "1"
            "BZM-KEY" BY REFERENCE BZM-KEY.
           CALL "DB_F_Open" USING
            "INPUT" AM_PNAME1 "SHARED" BY REFERENCE AM_IDLST "1"
            "AM-KEY" BY REFERENCE AM-KEY.
           CALL "DB_F_Open" USING
            "INPUT" GEN_PNAME1 "SHARED" BY REFERENCE GEN_IDLST "1"
            "PL-KEY" BY REFERENCE PL-KEY.
           CALL "DB_F_Open" USING
            "I-O" BUGEN-F_PNAME1 "SHARED" BY REFERENCE BUGEN-F_IDLST "1"
            "BU-KEY" BY REFERENCE BU-KEY.
       ST-50.
      *           READ  BUGEN-F  NEXT  AT  END
      *///////////////
           CALL "DB_Read" USING
            "NEXT AT END" BUGEN-F_PNAME1 BY REFERENCE BU-REC " "
            RETURNING RET.
           IF  RET = 1
               CALL "DB_F_Close" USING
                BY REFERENCE BUGEN-F_IDLST BUGEN-F_PNAME1
               CALL "DB_F_Open" USING
                "I-O" BUGEN-F_PNAME1 "SHARED" BY REFERENCE BUGEN-F_IDLST
                "1" "BU-KEY" BY REFERENCE BU-KEY
               GO TO ST-60
           END-IF.
           INITIALIZE       BU-DOG.
      *           REWRITE  BU-REC  INVALID
      *///////////////
           CALL "DB_Update" USING
            BUGEN-F_PNAME1 BUGEN-F_LNAME BU-REC RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-054" DSP-054 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               GO  TO   END-RTN
           END-IF.
           GO  TO  ST-50.
       ST-60.
      *           READ   BZM-F   UNLOCK  AT  END
      *//////////////////////
           CALL "DB_Read" USING
            "AT END" BZM-F_PNAME1 BY REFERENCE BZM-REC "UNLOCK"
            RETURNING RET.
           IF  RET = 1
               GO  TO   END-RTN
           END-IF.
           IF  BZM-BMON    <       STARTBMN
               GO  TO   ST-60
           END-IF.
           IF  BZM-BMON    >       ENDBMN
               GO  TO   END-RTN
           END-IF.
           MOVE   BZM-KMCD   TO       AM-KEY.
      *           READ   AM     WITH UNLOCK  INVALID
      *///////////////
           CALL "DB_Read" USING
            "INVALID" AM_PNAME1 BY REFERENCE AM-REC "UNLOCK"
            RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-055" DSP-055 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DSP-056" DSP-056 "p" RETURNING RESU
                CALL "SD_Output" USING
                "DSP-057" DSP-057 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               GO  TO   ST-60
           END-IF.
           IF  DR-CR = 1
               COMPUTE W-TOGET = BZM-TJKR(ZI) - BZM-TJKS(ZI)
           ELSE
               COMPUTE W-TOGET = BZM-TJKS(ZI) - BZM-TJKR(ZI)
           END-IF.
           IF  TY-SW = 0
               IF  DR-CR = 1
                   COMPUTE W-ZENEN = BZM-TJKR(TI) - BZM-TJKS(TI)
               ELSE
                   COMPUTE W-ZENEN = BZM-TJKS(TI) - BZM-TJKR(TI)
               END-IF
           ELSE
               IF  DR-CR = 1
                   COMPUTE W-ZENEN = BZM-ZJKR(TI) - BZM-ZJKS(TI)
               ELSE
                   COMPUTE W-ZENEN = BZM-ZJKS(TI) - BZM-ZJKR(TI)
               END-IF
           END-IF.
           MOVE   0       TO        I.
       ST-70.
           ADD    1       TO        I.
           IF  I        >       12
               GO  TO  ST-60
           END-IF.
           IF  GNKEY (I)   =     0
               GO  TO  ST-70
           END-IF.
           MOVE   0          TO    READ-FLG.
           MOVE   BZM-BMON   TO    BU-BUMN.
           MOVE   GNKEY (I)  TO    BU-LINNO.
      *           READ   BUGEN-F       INVALID
      *///////////////
           CALL "DB_Read" USING
            "INVALID" BUGEN-F_PNAME1 BY REFERENCE BU-REC " "
            RETURNING RET.
           IF  RET = 1
               PERFORM       BU-EDIT-RTN
           END-IF.
           IF  READ-FLG   =     2
               GO  TO     ST-70
           END-IF.
           IF  GNCOM (I)     =    1
               COMPUTE  BU-TOGET  =  BU-TOGET  +  W-TOGET
               COMPUTE  BU-DOGET  =  BU-DOGET  +  W-ZENEN
           ELSE
               COMPUTE  BU-TOGET  =  BU-TOGET  -  W-TOGET
               COMPUTE  BU-DOGET  =  BU-DOGET  -  W-ZENEN
           END-IF.
           IF  READ-FLG    =     0
      *               REWRITE    BU-REC   INVALID
      *///////////////
               CALL "DB_Update" USING
                BUGEN-F_PNAME1 BUGEN-F_LNAME BU-REC RETURNING RET
               IF  RET = 1
                   CALL "SD_Output" USING
                    "DSP-054" DSP-054 "p" RETURNING RESU
                   CALL "SD_Output" USING
                    "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
                   PERFORM  CHK-RTN  THRU  CHK-RTNEX
                   GO  TO   END-RTN
               END-IF
           ELSE
      *               WRITE  BU-REC          INVALID
      *///////////////
               CALL "DB_Insert" USING
                BUGEN-F_PNAME1 BUGEN-F_LNAME BU-REC RETURNING RET
               IF  RET = 1
                   CALL "SD_Output" USING
                    "DSP-058" DSP-058 "p" RETURNING RESU
                   CALL "SD_Output" USING
                    "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
                   PERFORM  CHK-RTN  THRU  CHK-RTNEX
                   GO  TO   END-RTN
               END-IF
           END-IF.
           GO  TO     ST-70.
       END-RTN.
           PERFORM  CLSE-ENT  THRU  CLSE-EXT.
           CALL "DB_Close".
           STOP   RUN.
       BU-EDIT-RTN.
           MOVE       1           TO   READ-FLG.
           MOVE       GNKEY (I)   TO   PL-KEY.
      *           READ       GEN WITH  UNLOCK    INVALID
      *///////////////
           CALL "DB_Read" USING
            "INVALID" GEN_PNAME1 BY REFERENCE PL-REC "UNLOCK"
            RETURNING RET.
           IF  RET = 1
               CALL "SD_Output" USING
                "DSP-059" DSP-059 "p" RETURNING RESU
               CALL "SD_Output" USING
                "DISP-BUZ-J-03" DISP-BUZ-J-03 "p" RETURNING RESU
               PERFORM  CHK-RTN  THRU  CHK-RTNEX
               CALL "C3_Set_Jrcode" USING 
                USER_ID BY REFERENCE COMPLETION_CODE 000
               MOVE     2        TO    READ-FLG
               GO  TO   BU-EDIT-EXT
           END-IF.
           MOVE   SPACE           TO    BU-REC.
           MOVE   BZM-BMON        TO    BU-BUMN.
           MOVE   GNKEY (I)       TO    BU-LINNO.
           MOVE   PL-LIN          TO    BU-KAIP.
           MOVE   PL-GKB          TO    BU-GOKBN.
           MOVE   PL-NAMN         TO    BU-KMKNM.
           MOVE   0               TO    BU-ZENKI.
           MOVE   0               TO    BU-TOUKI.
           MOVE   0               TO    BU-DOGET.
           MOVE   0               TO    BU-TOGET.
           MOVE   PL-URIKB        TO    BU-URKBN.
           MOVE   PL-PKB          TO    BU-PRKBN.
           MOVE   PL-TANA         TO    BU-TBKBN.
       BU-EDIT-EXT.
           EXIT.
       CHK-RTN.
           CALL "SD_Accept" USING
            BY REFERENCE ACP-030 "ACP-030" "X" "1"
            BY REFERENCE ESTAT RETURNING RESU.
           IF  ESTAT   NOT  = "01"
               GO  TO  CHK-RTN
           END-IF.
           CALL "SD_Output" USING
            "DSP-CLR-01" DSP-CLR-01 "p" RETURNING RESU.
           CALL "SD_Output" USING
            "DSP-CLR-02" DSP-CLR-02 "p" RETURNING RESU.
           CALL "C3_Set_Jrcode" USING 
            USER_ID BY REFERENCE COMPLETION_CODE 255.
       CHK-RTNEX.
           EXIT.
       CLSE-ENT.
           CALL "DB_F_Close" USING
            BY REFERENCE BZM-F_IDLST BZM-F_PNAME1.
           CALL "DB_F_Close" USING BY REFERENCE AM_IDLST AM_PNAME1.
           CALL "DB_F_Close" USING BY REFERENCE GEN_IDLST GEN_PNAME1.
           CALL "DB_F_Close" USING
            BY REFERENCE BUGEN-F_IDLST BUGEN-F_PNAME1.
           CALL "DB_F_Close" USING
            BY REFERENCE FCTL-F_IDLST FCTL-F_PNAME1.
       CLSE-EXT.
           EXIT.
       COPY  LPMSG_PR.

000010***********************************************
000020*****                                     *****
000030*****     得意先品名別単価マスター        *****
000040*****        (JT-THTND)  16/16            *****
000050***********************************************
000060 FD  JT-THTND
000070     BLOCK 16 RECORDS
000080     LABEL RECORD IS STANDARD
000090     VALUE OF IDENTIFICATION "JT-THTND".
000100 01  THTND-R.
000110     02  THTND-KEY.                                               ＫＥＹ
000120       03  THTND-01    PIC 9(4).                                  得意先CD
000130       03  THTND-02    PIC 9(6).                                  品名ｺｰﾄﾞ
000140       03  THTND-03    PIC 9(1).                                  ｻｲｽﾞ区分
000150     02  THTND-04      PIC 9(5).                                  I.941226

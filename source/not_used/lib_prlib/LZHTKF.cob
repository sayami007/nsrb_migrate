000010**************************************
000020*    月別経費ファイル　　　　        *
000030*      IS                            *
000040*      TKEIHI-F      (170/3)         *
000050**************************************
000060 FD  ZH-TKF
000070     LABEL   RECORD   STANDARD
000080     BLOCK   3        RECORDS
000090     VALUE   OF       IDENTIFICATION    "TKEIHI-F".
000100*
000110 01  TKF-R.
000120     02  TKF-KEY.
000130         03  TKF-01.                                              部門ｺｰﾄﾞ
000140             04  TKF-011     PIC  9(02).                          (1)
000150             04  TKF-012     PIC  9(02).                          (2)
000160         03  TKF-02          PIC  9(04).                          科目ｺｰﾄﾞ
000170         03  TKF-03          PIC  9(03).                          補助ｺｰﾄﾞ
000180     02  TKF-04.                                                  当期欄
000190         03  TKF-041         PIC S9(11)    OCCURS  12.            1〜12月
000200     02  FILLER              PIC  X(27).
000210*****          ライブラリー　エンド　        *****

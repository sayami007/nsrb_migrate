      ****************************************************
      *****     ΎΣζvt@C@ivnqjj     *****
      *****   ( WK0128___ )  128/2  <TTM>            *****
      ****************************************************
       01  TT-M.
           02  TT-M_PNAME1    PIC  X(009) VALUE SPACE.
           02  F              PIC  X(001).
           02  TT-M_LNAME     PIC  X(004) VALUE "TT-M".
           02  F              PIC  X(001).
           02  TT-M_KEY1      PIC  X(100) VALUE SPACE.
           02  TT-M_SORT      PIC  X(100) VALUE SPACE.
           02  TT-M_IDLST     PIC  X(100) VALUE SPACE.
           02  TT-M_RES       USAGE  POINTER.
       01  TT-R.
           02  TT-KEY.                                                  Ί°Δή
             03  TT-TCD       PIC  9(004).                              ΎΣζCD
           02  TT-TD.
             03  TT-TZZ       PIC S9(009).                              Oc
             03  TT-TZZZ      PIC S9(007).                              @ΑοΕ
             03  TT-TUZ       PIC S9(009).                              |c
             03  TT-TUZZ      PIC S9(007).                              @ΑοΕ
             03  TT-TUA       PIC S9(009).                              γΰz
             03  TT-TUAZ      PIC S9(007).                              @ΑοΕ
             03  TT-TNB       PIC S9(008).                              lψΰz
             03  TT-TNBZ      PIC S9(006).                              @ΑοΕ
             03  TT-TNK       PIC S9(009).                              όΰΰz
             03  TT-TNKZ      PIC S9(007).                              @ΑοΕ
             03  TT-TUG       PIC S9(009).                              γ΄Ώ
           02  TT-TKC.                                                  nζΊ°Δή
             03  TT-TKC1      PIC  9(001).
             03  TT-TKC2      PIC  9(001).
           02  TT-TNC.                                                  SΊ°Δή
             03  TT-TNC1      PIC  9(001).
             03  TT-TNC2      PIC  9(001).
           02  TT-FKC         PIC  9(002).                              sΉ{§
           02  TT-BC          PIC  9(001).                              εΊ°Δή
           02  TT-DNO         PIC  9(003).
           02  F              PIC  X(027).
       77  F                  PIC  X(001).

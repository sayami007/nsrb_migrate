      **************************************
      *****     ¨@ζͺ}X^[     *****
      *****      (  HKBM  64/4  )      *****
      **************************************
       01  HKBM.
           02  HKBM_PNAME1    PIC  X(004) VALUE "HKBM".
           02  F              PIC  X(001).
           02  HKBM_LNAME     PIC  X(004) VALUE "HKBM".
           02  F              PIC  X(001).
           02  HKBM_KEY1      PIC  X(100) VALUE SPACE.
           02  HKBM_KEY2      PIC  X(100) VALUE SPACE.
           02  HKBM_SORT      PIC  X(100) VALUE SPACE.
           02  HKBM_IDLST     PIC  X(100) VALUE SPACE.
           02  HKBM_RES       USAGE  POINTER.
      *
       01  HKB-R.
      *    * * *   K E Y  Ί ³ Σ Έ   * * *
           02  HKB-KEY.                                                 Ί°Δή
             03  HKB-NO       PIC  9(002).                              
             03  HKB-BC       PIC  X(005).
             03  HKB-BC01  REDEFINES HKB-BC.
               04  HKB-TDFK   PIC  9(002).                              sΉ{§
               04  F          PIC  X(003).
             03  HKB-BC02  REDEFINES HKB-BC.
               04  HKB-BM     PIC  9(001).                              ε
               04  F          PIC  X(004).
             03  HKB-BC04  REDEFINES HKB-BC.
               04  HKB-TNC    PIC  9(002).                              S
               04  F          PIC  X(003).
             03  HKB-BC05  REDEFINES HKB-BC.
               04  F          PIC  X(005).
             03  HKB-BC08  REDEFINES HKB-BC.
               04  HKB-KTKC   PIC  9(001).                              ³ηnζ
               04  F          PIC  X(004).
             03  HKB-BC11  REDEFINES HKB-BC.
               04  HKB-BR1    PIC  9(002).                              ͺήP
               04  F          PIC  X(003).
             03  HKB-BC13  REDEFINES HKB-BC.
               04  HKB-BR22   PIC  9(001).                              ͺήQ
               04  F          PIC  X(004).
             03  HKB-BC14  REDEFINES HKB-BC.
               04  HKB-BR3    PIC  9(002).                              ͺήR
               04  F          PIC  X(003).
             03  HKB-BC16  REDEFINES HKB-BC.
               04  HKB-BMC    PIC  9(002).
               04  F          PIC  X(003).
             03  HKB-BC31  REDEFINES HKB-BC.
               04  HKB-NKC1   PIC  9(001).                              όΰ
               04  F          PIC  X(004).
             03  HKB-BC32  REDEFINES HKB-BC.
               04  HKB-NSC    PIC  9(001).
               04  F          PIC  X(004).
             03  HKB-BC41  REDEFINES HKB-BC.
               04  HKB-SUC    PIC  9(001).                              dγσό
               04  F          PIC  X(004).
             03  HKB-BC42  REDEFINES HKB-BC.
               04  HKB-SSC    PIC  9(001).                              ΆY
               04  F          PIC  X(004).
      *    * * *   N A M E  Ί ³ Σ Έ   * * *
           02  HKB-NAME       PIC  X(057).
           02  HKB-NA01  REDEFINES HKB-NAME.
             03  HKB-FKNA     PIC  N(004).                              {§Ό
             03  HKB-SU       PIC  9(005).                              lϋ
             03  HKB-KIN      PIC S9(010).                              γΰz
             03  HKB-KTKCD    PIC  9(001).                              ³ηnζ
             03  F            PIC  X(033).
           02  HKB-NA02  REDEFINES HKB-NAME.
             03  HKB-BMNA     PIC  N(006).                              εΌ
             03  F            PIC  X(045).
           02  HKB-NA04  REDEFINES HKB-NAME.
             03  HKB-TNNA     PIC  N(014).                              SΌ
             03  F            PIC  X(029).
           02  HKB-NA05  REDEFINES HKB-NAME.
             03  HKB-UNN      PIC  9(006).
             03  HKB-SKN      PIC  9(006).
             03  HKB-NKN      PIC  9(006).
             03  HKB-DAI      PIC  X(010).
             03  F            PIC  X(029).
           02  HKB-NA08  REDEFINES HKB-NAME.
             03  HKB-KTNA     PIC  N(003).                              ³ηnζ
             03  F            PIC  X(051).
           02  HKB-NA11  REDEFINES HKB-NAME.
             03  HKB-BRN1     PIC  N(008).                              ͺήΌP
             03  F            PIC  X(041).
           02  HKB-NA13  REDEFINES HKB-NAME.
             03  HKB-BRN22    PIC  N(003).                              ͺήΌQ
             03  F            PIC  X(051).
           02  HKB-NA14  REDEFINES HKB-NAME.
             03  HKB-BRN3     PIC  N(003).                              ͺήΌR
             03  F            PIC  X(051).
           02  HKB-NA16  REDEFINES HKB-NAME.
             03  HKB-BMN      PIC  N(003).
             03  F            PIC  X(051).
           02  HKB-NA31  REDEFINES HKB-NAME.
             03  HKB-NKNA     PIC  N(006).                              όΰΌ
             03  F            PIC  X(045).
           02  HKB-NA32  REDEFINES HKB-NAME.
             03  HKB-NSNA     PIC  N(006).
             03  F            PIC  X(045).
           02  HKB-NA41  REDEFINES HKB-NAME.
             03  HKB-SUNA     PIC  N(005).                              dγσό
             03  F            PIC  X(047).
           02  HKB-NA42  REDEFINES HKB-NAME.
             03  HKB-SSNA     PIC  N(004).                              ΆY
             03  F            PIC  X(049).
      *-----------------------------------------------------------------
           02  HKB-NA90  REDEFINES HKB-NAME.                            μΖζͺ
             03  HKB-SC.
               04  HKB-SC01   PIC  9(001).                              γόΝ
               04  HKB-SC02   PIC  9(001).                              γ`[
               04  HKB-SC03   PIC  9(001).                              dγόΝ
               04  HKB-SC04   PIC  9(001).                              dγΟ·
               04  HKB-SC05   PIC  9(001).                              όΰόΝ
               04  HKB-SC06   PIC  9(001).                              όΰΟ·
               04  HKB-SC07   PIC  9(001).                              όΰ[
               04  HKB-SC08   PIC  9(001).                              --------
               04  HKB-SC09   PIC  9(001).                              --------
               04  HKB-SC10   PIC  9(001).                              --------
               04  HKB-SC11   PIC  9(001).                              --------
               04  HKB-SC12   PIC  9(001).                              --------
               04  HKB-SC13   PIC  9(001).                              ϊXV
               04  HKB-SC14   PIC  9(001).                              Ώ
               04  HKB-SC15   PIC  9(001).                              XV
             03  F            PIC  X(042).
       77  F                  PIC  X(001).

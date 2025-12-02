*  **********************************************
*  *             MOS SPICE MODEL               *
*  **********************************************
*
*    PROCESS :  0.18um LOGIC SALICIDE (1P6M, 1.8V)                 
*    MODEL   :  BSIM3 ( V3.2 )                                          
*    HSPICE VERSION : H98.2 & H98.4
*
********************************************************************************                 
******************************************************************************                   
*                                                                            *                   
*       IN THIS MODEL LIB CONTAINS :                                         *                 
*                                                                            *                 
*       1.LIB TT                                                             *                        
*        ( 1.8V Normal devices with different geometric and corner models)   
*                                                                                                                                                                                                                            
******************************************************************************                                                                                                                                                                                                                                                                                                         
******************************************************************************                                                                                                                                                                                                                                                                                                         
*                                                                            *                                                                                                                                                                                                                                                                                                         
* 1)To use these models directly by programming in this style:               *                                                                                                                                                                                             
*                                                                            *                                                                                                                                                                                             
*     .lib 'lib_path/lib_name' model_name                                    *                                                                                                                                                                                             
*                                                                            *                                                                                                                                                                                                                                                                        *                                                                                                                                                                                             
*    EX: .lib '/home/user/ANALOG/mos018.l' TT                            *                                                                                                                                                                                             
*        for typical 1.8V N,PMOS                                             *
*      corner_name                                                           *                                                                                                            
*       TT : typical model for 1.8V devices                                  *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
* 2)HDIF depends on your layout poly spacer to contact center distance.      *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
*                                                                            *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
******************************************************************************                                                                                                                                                                                                                                                                                                                                                                                                                                                   
***************************************************************                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
*                                                             *                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
*                1.8V NORMAL DEVICE LIB                      *                                                                                                                                                                                                                                                                                                                                                     
*                                                             *                                                                                                                                                         
***************************************************************                                                                                                                                                         
***************** CORNER_LIB OF TYPICAL MODEL ***************                                                                                                                                                           
.LIB TT
.param
+toxn   = 4.08E-09        toxp   = 4.08E-09
+dvthn  = 0               dvthp  = 0
+dxl    = 0               dxw    = 0
+cjn    = 0.001000266     cjp    = 0.001121
+cjswn  = 2.040547E-10    cjswp  = 2.481E-10
+cjswgn = 3.340547E-10    cjswgp = 4.221E-10
+cgon   = 3.665E-10       cgop   = 3.28E-10
+hdifn  = 2E-07           hdifp  = 2E-07
.lib 'C:\Users\ernes\OneDrive\Documents\LTspice\ECE298A\mos018.l' MOS
.ENDL TT

.LIB MOS
***************************************************************
*                                                             *
*               1.8V  MOS DEVICES MODEL                       *
*                                                             *
***************************************************************
*
.MODEL nch.1            NMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4452004+dvthn' LVTH0    = 4.083943E-08   WVTH0    = -1.48489E-07
+PVTH0   = 1.993185E-13   K1       = 0.5099412      LK1      = 3.668304E-08
+WK1     = 2.766093E-08   PK1      = -2.19267E-13   K2       = 0.01695608
+LK2     = -1.755245E-08  WK2      = -1.034945E-08  PK2      = 6.480148E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 90659.09       LVSAT    = -0.006564545
+UA      = -7.469327E-10  LUA      = 2.025139E-16   WUA      = 1.830494E-15
+PUA     = -6.726249E-21  UB       = 2.910666E-18   LUB      = -1.955871E-25
+WUB     = -6.764042E-24  PUB      = 9.411708E-30   UC       = 1.641302E-10
+LUC     = -2.017381E-17  WUC      = -5.974077E-16  PUC      = 5.963958E-22
+RDSW    = 170            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.04590562     LU0      = 3.578498E-09
+WU0     = -4.055627E-08  PU0      = -2.913943E-15  A0       = 0.2119483
+LA0     = -5.177149E-08  WA0      = 1.948019E-06   PA0      = -3.003349E-12
+KETA    = -0.005987795   LKETA    = -2.748571E-08  WKETA    = 1.97602E-07
+PKETA   = -1.586947E-13  A1       = 0              A2       = 0.99
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1498675     LVOFF    = 4.906377E-09   WVOFF    = 1.042303E-07
+PVOFF   = -1.550514E-13  NFACTOR  = 1              CIT      = -0.0001267591
+LCIT    = 2.665205E-10   CDSC     = 0              CDSCB    = 0
+CDSCD   = 0              ETA0     = 5E-05          ETAB     = -5E-05
+DSUB    = 0              PCLM     = 0.7736364      LPCLM    = 2.625818E-07
+PDIBLC1 = 1E-06          PDIBLC2  = 0.0003968181   LPDIBLC2 = 3.019691E-09
+PDIBLCB = 0.01           DROUT    = 0              PSCBE1   = 1.736364E+08
+LPSCBE1 = 262.5818       PSCBE2   = 1E-06          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 0.448150714    BETA0    = 11.59263
+KT1     = -0.2281038     LKT1     = 1.487402E-08   WKT1     = 4.09886E-08
+PKT1    = -1.499301E-13  KT2      = -0.02603289    LKT2     = 8.023716E-10
+WKT2    = -4.269E-08     PKT2     = -8.087905E-15  AT       = 20000
+UTE     = -1.606637      LUTE     = 4.379861E-08   WUTE     = 2.685053E-07
+PUTE    = -4.4149E-13    UA1      = 1.224E-09      UB1      = -1.459973E-18
+LUB1    = 5.961568E-25   WUB1     = 3.423235E-24   PUB1     = -6.00926E-30
+UC1     = -5.990395E-11  LUC1     = 1.037438E-16   WUC1     = 7.225532E-16
+PUC1    = -1.045737E-21  KT1L     = 0              PRT      = 0
+CJ      = cjn            PB       = 0.6882682      MJ       = 0.3595262
+CJSW    = cjswn          PBSW     = 0.6882682      MJSW     = 0.2003879
+CJSWG   = cjswgn         PBSWG    = 0.6882682      MJSWG    = 0.43879
+CGDO    = cgon           CGSO     = cgon           TCJ      = 0.001040287
+TCJSW   = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306
+JS      = 8.38E-06       JSW      = 1.6E-11        N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0             DLC      = 3E-9           LLC      = -0.039        )


.MODEL nch.2            NMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4690217+dvthn' LVTH0    = 1.320675E-08   WVTH0    = 1.03913E-07
+PVTH0   = -9.346779E-14  K1       = 0.5348862      LK1      = 7.746888E-09
+WK1     = -3.099871E-08  PK1      = -1.512218E-13  K2       = 0.005167292
+LK2     = -3.877456E-09  WK2      = -3.134034E-09  PK2      = 5.643159E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 85657.14       LVSAT    = -0.0007622857
+UA      = -4.439753E-10  LUA      = -1.489168E-16  WUA      = -5.953859E-15
+PUA     = 2.303602E-21   UB       = 2.349393E-18   LUB      = 4.554895E-25
+WUB     = 6.663095E-24   PUB      = -6.163771E-30  UC       = 9.496897E-11
+LUC     = 6.005324E-17   WUC      = 5.22306E-16    PUC      = -7.024722E-22
+RDSW    = 170            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.04780528     LU0      = 1.374896E-09
+WU0     = -4.015433E-08  PU0      = -3.380197E-15  A0       = 0.1270388
+LA0     = 4.67235E-08    WA0      = -4.21675E-06   PA0      = 4.147783E-12
+KETA    = -0.02483604    LKETA    = -5.621754E-09  WKETA    = 8.9844E-08
+PKETA   = -3.369537E-14  A1       = 0              A2       = 0.99
+AGS     = 0.017056       LAGS     = 3.41504E-09    WAGS     = 2.946355E-07
+PAGS    = -3.417772E-13  B0       = 0              B1       = 0
+VOFF    = -0.1517648     LVOFF    = 7.107172E-09   WVOFF    = -1.044416E-07
+PVOFF   = 8.700798E-14   NFACTOR  = 1              CIT      = -0.0001578858
+LCIT    = 3.026274E-10   CDSC     = 0              CDSCB    = 0
+CDSCD   = 0              ETA0     = 1.714285E-05   LETA0    = 3.811429E-11
+ETAB    = -1.714285E-05  LETAB    = -3.811429E-11  DSUB     = 0
+PCLM    = 0.8685714      LPCLM    = 1.524572E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.001685714    LPDIBLC2 = 1.524571E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 4E+08          PSCBE2   = 1E-06
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 0.448150714
+BETA0   = 11.59263       KT1      = -0.223624      LKT1     = 9.677446E-09
+WKT1    = -5.442481E-08  PKT1     = -3.925055E-14  KT2      = -0.02933674
+LKT2    = 4.634833E-09   WKT2     = -2.291865E-08  PKT2     = -3.102267E-14
+AT      = 20000          UTE      = -1.638485      LUTE     = 8.074134E-08
+WUTE    = 2.907924E-06   PUTE     = -3.503216E-12  UA1      = 1.223706E-09
+LUA1    = 3.415059E-19   WUA1     = 2.946371E-17   PUA1     = -3.417791E-23
+UB1     = -1.198842E-18  LUB1     = 2.932454E-25   WUB1     = 1.123821E-23
+PUB1    = -1.507463E-29  UC1      = 1.573038E-11   LUC1     = 1.600793E-17
+WUC1    = 5.277456E-16   PUC1     = -8.197604E-22  KT1L     = 0
+PRT     = 0              CJ       = cjn            PB       = 0.6882682
+MJ      = 0.3595262      CJSW     = cjswn          PBSW     = 0.6882682
+MJSW    = 0.2003879      CJSWG    = cjswgn         PBSWG    = 0.6882682
+MJSWG   = 0.43879        CGDO     = cgon           CGSO     = cgon
+TCJ     = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306
+TPBSW   = 0.001554306    TPBSWG  = 0.001554306    JS       = 8.38E-06       JSW      = 1.6E-11
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 3E-9     
+LLC     = -0.039        )


.MODEL nch.3            NMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4889706+dvthn' LVTH0    = 4.03025E-09    WVTH0    = -1.385044E-07
+PVTH0   = 1.804418E-14   K1       = 0.4620976      LK1      = 4.122966E-08
+WK1     = -5.300568E-07  PK1      = 7.834502E-14   K2       = 0.04110285
+LK2     = -2.040781E-08  WK2      = 1.839435E-07   PK2      = -2.962406E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 84437.5        LVSAT    = -0.00020125
+UA      = -7.610477E-10  LUA      = -3.063457E-18  WUA      = -9.912273E-16
+PUA     = 2.079115E-23   UB       = 2.63488E-18    LUB      = 3.241653E-25
+WUB     = 2.452493E-25   PUB      = -3.211562E-30  UC       = 1.317473E-10
+LUC     = 4.313522E-17   WUC      = -1.501932E-16  PUC      = -3.931226E-22
+RDSW    = 170            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.04633423     LU0      = 2.051578E-09
+WU0     = -2.998386E-08  PU0      = -8.05861E-15   A0       = 0.4302041
+LA0     = -9.273254E-08  WA0      = 1.113129E-06   PA0      = 1.696039E-12
+KETA    = -0.03103998    LKETA    = -2.76794E-09   WKETA    = -1.089419E-07
+PKETA   = 5.774615E-14   A1       = 0              A2       = 0.99
+AGS     = 0.04393999     LAGS     = -8.951599E-09  WAGS     = -6.445151E-07
+PAGS    = 9.023213E-14   B0       = 0              B1       = 0
+VOFF    = -0.1400894     LVOFF    = 1.736505E-09   WVOFF    = 1.566271E-07
+PVOFF   = -3.308362E-14  NFACTOR  = 1              CIT      = 0.0002665949
+LCIT    = 1.073664E-10   WCIT     = 5.374534E-11   PCIT     = -2.47229E-17
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = -0.00029375    LETA0    = 1.81125E-10    ETAB     = 0.0013875
+LETAB   = -6.8425E-10    DSUB     = 0              PCLM     = 1.097804
+LPCLM   = 4.701011E-08   WPCLM    = 9.902701E-08   PPCLM    = -4.555247E-14
+PDIBLC1 = 1E-06          PDIBLC2  = -0.005937497   LPDIBLC2 = 5.03125E-09
+PDIBLCB = 0.01           DROUT    = 0              PSCBE1   = 4E+08
+PSCBE2  = 1E-06          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 0.448150714    BETA0    = 11.59263       KT1      = -0.2023527
+LKT1    = -1.073793E-10  WKT1     = -2.499313E-07  PKT1     = 5.068245E-14
+KT2     = -0.01509771    LKT2     = -1.915123E-09  WKT2     = -1.455392E-07
+PKT2    = 2.53828E-14    AT       = 20004.7        LAT      = -2.163157E-06
+WAT     = -4.740137E-05  PAT      = 2.180463E-11   UTE      = -1.46527
+LUTE    = 1.062595E-09   WUTE     = -6.227977E-06  PUTE     = 6.992989E-13
+UA1     = 1.224644E-09   LUA1     = -9.016052E-20  WUA1     = -6.445188E-17
+PUA1    = 9.023264E-24   UB1      = -8.07023E-19   LUB1     = 1.130082E-25
+WUB1    = -2.744663E-23  PUB1     = 2.720394E-30   UC1      = 9.072359E-12
+LUC1    = 1.907063E-17   WUC1     = -1.485916E-15  PUC1     = 1.065238E-22
+KT1L    = 0              PRT      = 0              CJ       = cjn
+PB      = 0.6882682      MJ       = 0.3595262      CJSW     = cjswn
+PBSW    = 0.6882682      MJSW     = 0.2003879      CJSWG    = cjswgn
+PBSWG   = 0.6882682      MJSWG    = 0.43879        CGDO     = cgon
+CGSO    = cgon           TCJ      = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489
+TPB     = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306    JS       = 8.38E-06
+JSW     = 1.6E-11        N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 3E-9           LLC      = -0.039        )


.MODEL nch.4            NMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4303551+dvthn' LVTH0    = 6.063544E-08   WVTH0    = 1.151582E-09
+PVTH0   = -2.252282E-16  K1       = 0.5079118      LK1      = 1.708006E-08
+WK1     = 4.811752E-08   PK1      = -2.166895E-14  K2       = 0.01749582
+LK2     = -1.215701E-08  WK2      = -1.579011E-08  PK2      = 1.041545E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 90678.27       LVSAT    = -0.006755514
+WVSAT   = -0.0001932689  PVSAT    = 1.924963E-09   UA       = -5.334703E-10
+LUA     = -5.097949E-16  WUA      = -3.212069E-16  PUA      = 4.538242E-22
+UB      = 2.252485E-18   LUB      = 7.926502E-25   WUB      = -1.295807E-25
+PUB     = -5.497242E-31  UC       = 1.065297E-10   LUC      = 3.988117E-17
+WUC     = -1.679473E-17  PUC      = -8.958444E-24  RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.04281001     LU0      = 3.050399E-09   WU0      = -9.352497E-09
+PU0     = 2.409294E-15   A0       = 0.4075408      LA0      = -3.610417E-07
+WA0     = -2.355343E-08  PA0      = 1.140953E-13   KETA     = 0.01500895
+LKETA   = -4.536782E-08  WKETA    = -1.404518E-08  PKETA    = 2.155698E-14
+A1      = 0              A2       = 0.99           AGS      = 0.02
+B0      = 0              B1       = 0              VOFF     = -0.1395841
+LVOFF   = -1.091341E-08  WVOFF    = 5.73079E-10    PVOFF    = 4.41203E-15
+NFACTOR = 1              CIT      = -0.0001267591  LCIT     = 2.665205E-10
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.7755538      LPCLM    = 2.434849E-07   WPCLM    = -1.932694E-08
+PPCLM   = 1.924964E-13   PDIBLC1  = 1E-06          PDIBLC2  = 0.0003968181
+LPDIBLC2= 3.019691E-09   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 1.736364E+08   LPSCBE1  = 262.5818       PSCBE2   = 1E-06
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 0.448150714
+BETA0   = 11.59263       KT1      = -0.2231153     LKT1     = -3.905888E-10
+WKT1    = -9.296202E-09  PKT1     = 3.937134E-15   KT2      = -0.03050068
+LKT2    = 4.543159E-10   WKT2     = 2.345302E-09   PKT2     = -4.579503E-15
+AT      = 20000          UTE      = -1.580575      LUTE     = 5.729051E-09
+WUTE    = 5.798076E-09   PUTE     = -5.774884E-14  UA1      = 1.224E-09
+UB1     = -1.059435E-18  LUB1     = -4.518781E-26  WUB1     = -6.141879E-25
+PUB1    = 4.554933E-31   UC1      = 2.59445E-11    LUC1     = -7.81201E-18
+WUC1    = -1.427992E-16  PUC1     = 7.874507E-23   KT1L     = 0
+PRT     = 0              CJ       = cjn            PB       = 0.6882682
+MJ      = 0.3595262      CJSW     = cjswn          PBSW     = 0.6882682
+MJSW    = 0.2003879      CJSWG    = cjswgn         PBSWG    = 0.6882682
+MJSWG   = 0.43879        CGDO     = cgon           CGSO     = cgon
+TCJ     = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306
+TPBSW   = 0.001554306    TPBSWG  = 0.001554306    JS       = 8.38E-06       JSW      = 1.6E-11
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC     = 3E-9
+LLC     = -0.039        )


.MODEL nch.5            NMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4799766+dvthn' LVTH0    = 3.074509E-09   WVTH0    = -6.512545E-09
+PVTH0   = 8.665152E-15   K1       = 0.5324208      LK1      = -1.135038E-08
+WK1     = -6.147623E-09  PK1      = 4.127862E-14   K2       = 0.004003276
+LK2     = 3.494347E-09   WK2      = 8.599232E-09   PK2      = -1.787618E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 85511.69       LVSAT    = -0.0007622857
+WVSAT   = 0.001466182    UA       = -1.023122E-09  LUA      = 5.820092E-17
+WUA     = -1.160614E-16  PUA      = 2.158555E-22   UB       = 3.043298E-18
+LUB     = -1.246927E-25  WUB      = -3.314691E-25  PUB      = -3.155337E-31
+UC      = 1.463423E-10   LUC      = -6.301452E-18  WUC      = 4.462591E-18
+PUC     = -3.361694E-23  RDSW     = 170            PRWB     = 0
+PRWG    = 0              WR       = 1              U0       = 0.04463334
+LU0     = 9.35341E-10    WU0      = -8.181137E-09  PU0      = 1.050515E-15
+A0      = -0.3045075     LA0      = 4.649343E-07   WA0      = 1.332365E-07
+PA0     = -6.778103E-14  KETA     = -0.01546816    LKETA    = -1.001437E-08
+WKETA   = -4.584175E-09  PKETA    = 1.058221E-14   A1       = 0
+A2      = 0.99           AGS      = 0.05010909     LAGS     = -3.492654E-08
+WAGS    = -3.853963E-08  PAGS     = 4.470598E-14   B0       = 0
+B1      = 0              VOFF     = -0.1628752     LVOFF    = 1.610426E-08
+WVOFF   = 7.551262E-09   PVOFF    = -3.68266E-15   NFACTOR  = 1
+CIT     = -0.0001578858  LCIT     = 3.026274E-10   CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = 1.714286E-05
+LETA0   = 3.811428E-11   ETAB     = -1.714286E-05  LETAB    = -3.811428E-11
+DSUB    = 0              PCLM     = 0.8540259      LPCLM    = 1.524572E-07
+WPCLM   = 1.466183E-07   PDIBLC1  = 1E-06          PDIBLC2  = 0.001781299
+LPDIBLC2= 1.413693E-09   WPDIBLC2 = -9.634911E-10  PPDIBLC2 = 1.11765E-15
+PDIBLCB = 0.01           DROUT    = 0              PSCBE1   = 4E+08
+PSCBE2  = 1E-06          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 0.448150714    BETA0    = 11.59263       KT1      = -0.2285168
+LKT1    = 5.875238E-09   WKT1     = -5.105314E-09  PKT1     = -9.242955E-16
+KT2     = -0.03146011    LKT2     = 1.567252E-09   WKT2     = -1.515083E-09
+PKT2    = -1.014558E-16  AT       = 20000          UTE      = -1.303027
+LUTE    = -3.162274E-07  WUTE     = -4.734936E-07  PUTE     = 4.982295E-13
+UA1     = 1.227011E-09   LUA1     = -3.492674E-18  WUA1     = -3.853985E-18
+PUA1    = 4.470623E-24   UB1      = 9.605878E-20   LUB1     = -1.385561E-24
+WUB1    = -1.814396E-24  PUB1     = 1.847735E-30   UC1      = 8.797449E-11
+LUC1    = -7.976681E-17  WUC1     = -2.004749E-16  PUC1     = 1.456489E-22
+KT1L    = 0              PRT      = 0              CJ       = cjn
+PB      = 0.6882682      MJ       = 0.3595262      CJSW     = cjswn
+PBSW    = 0.6882682      MJSW     = 0.2003879      CJSWG    = cjswgn
+PBSWG   = 0.6882682      MJSWG    = 0.43879        CGDO     = cgon
+CGSO    = cgon           TCJ      = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489
+TPB     = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306    JS       = 8.38E-06
+JSW     = 1.6E-11        N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 3E-9           LLC     = -0.039         )


.MODEL nch.6            NMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4751247+dvthn' LVTH0    = 5.306376E-09   WVTH0    = 1.062077E-09
+PVTH0   = 5.180826E-15   K1       = 0.3998241      LK1      = 4.964413E-08
+WK1     = 9.765969E-08   PK1      = -6.472741E-15  K2       = 0.06352166
+LK2     = -2.388411E-08  WK2      = -4.203799E-08  PK2      = 5.416945E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 84292.05       LVSAT    = -0.00020125
+WVSAT   = 0.001466182    UA       = -9.057631E-10  LUA      = 4.215886E-18
+WUA     = 4.675041E-16   PUA      = -5.258461E-23  UB       = 2.760486E-18
+LUB     = 5.400765E-27   WUB      = -1.020856E-24  PUB      = 1.584294E-33
+UC      = 1.234253E-10   LUC      = 4.240396E-18   WUC      = -6.630735E-17
+PUC     = -1.06277E-24   RDSW     = 170            PRWB     = 0
+PRWG    = 0              WR       = 1              U0       = 0.04387662
+LU0     = 1.283432E-09   WU0      = -5.211112E-09  PU0      = -3.156964E-16
+A0      = 0.5262759      LA0      = 8.277392E-08   WA0      = 1.447255E-07
+PA0     = -7.306591E-14  KETA     = -0.04428695    LKETA    = 3.242273E-09
+WKETA   = 2.458758E-08   PKETA    = -2.8368E-15    A1       = 0
+A2      = 0.99           AGS      = -0.02836364    LAGS     = 1.170909E-09
+WAGS    = 8.430546E-08   PAGS     = -1.180276E-14  B0       = 0
+B1      = 0              VOFF     = -0.1246745     LVOFF    = -1.468027E-09
+WVOFF   = 1.245329E-09   PVOFF    = -7.81931E-16   NFACTOR  = 1
+CIT     = 0.0002756616   LCIT     = 1.031957E-10   WCIT     = -3.764672E-11
+PCIT    = 1.731749E-17   CDSC     = 0              CDSCB    = 0
+CDSCD   = 0              ETA0     = -0.00029375    LETA0    = 1.81125E-10
+ETAB    = 0.0013875      LETAB    = -6.8425E-10    DSUB     = 0
+PCLM    = 1.102557       LPCLM    = 3.813286E-08   WPCLM    = 5.111752E-08
+PPCLM   = 4.393024E-14   PDIBLC1  = 1E-06          PDIBLC2  = -0.006146589
+LPDIBLC2= 5.060522E-09   WPDIBLC2 = 2.107634E-09   PPDIBLC2 = -2.950686E-16
+PDIBLCB = 0.01           DROUT    = 0              PSCBE1   = 4E+08
+PSCBE2  = 1E-06          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 0.448150714    BETA0    = 11.59263       KT1      = -0.2268918
+LKT1    = 5.127722E-09   WKT1     = -2.576878E-09  PKT1     = -2.087376E-15
+KT2     = -0.02937242    LKT2     = 6.06917E-10    WKT2     = -1.65007E-09
+PKT2    = -3.93619E-17   AT       = 20000          UTE      = -2.172423
+LUTE    = 8.369503E-08   WUTE     = 9.001274E-07   PUTE     = -1.336361E-13
+UA1     = 1.217414E-09   LUA1     = 9.220962E-19   WUA1     = 8.430593E-18
+PUA1    = -1.180283E-24  UB1      = -3.852224E-18  LUB1     = 4.306491E-25
+WUB1    = 3.248998E-24   PUB1     = -4.814262E-31  UC1      = -1.568814E-10
+LUC1    = 3.286692E-17   WUC1     = 1.868985E-16   PUC1     = -3.254285E-23
+KT1L    = 0              PRT      = 0              CJ       = cjn
+PB      = 0.6882682      MJ       = 0.3595262      CJSW     = cjswn
+PBSW    = 0.6882682      MJSW     = 0.2003879      CJSWG    = cjswgn
+PBSWG   = 0.6882682      MJSWG    = 0.43879        CGDO     = cgon
+CGSO    = cgon           TCJ      = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489
+TPB     = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306    JS       = 8.38E-06
+JSW     = 1.6E-11        N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 3E-9           LLC     = -0.039         )


.MODEL nch.7            NMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4337114+dvthn' LVTH0    = 6.675699E-08   WVTH0    = -3.144492E-09
+PVTH0   = -8.060817E-15  K1       = 0.5648248      LK1      = 2.192964E-08
+WK1     = -2.47311E-08   PK1      = -2.787642E-14  K2       = -0.0002770806
+LK2     = -9.479984E-09  WK2      = 6.959211E-09   PK2      = 6.988862E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 90636.49       LVSAT    = -0.006339475
+WVSAT   = -0.0001398028  PVSAT    = 1.392434E-09   UA       = -9.356199E-10
+LUA     = -2.007095E-16  WUA      = 1.935446E-16   PUA      = 5.819503E-23
+UB      = 2.352719E-18   LUB      = 3.53453E-25    WUB      = -2.578803E-25
+PUB     = 1.244829E-32   UC       = 1.089601E-10   LUC      = 3.56231E-17
+WUC     = -1.990555E-17  PUC      = -3.508111E-24  RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.03490788     LU0      = 2.751226E-09   WU0      = 7.622277E-10
+PU0     = 2.792237E-15   A0       = 0.2937173      LA0      = -1.629362E-07
+WA0     = 1.221407E-07   PA0      = -1.394798E-13  KETA     = 0.003630752
+LKETA   = -2.766508E-08  WKETA    = 5.189081E-10   PKETA    = -1.102526E-15
+A1      = 0              A2       = 0.99           AGS      = 0.02
+B0      = 0              B1       = 0              VOFF     = -0.1393593
+LVOFF   = -1.120061E-09  WVOFF    = 2.853291E-10   PVOFF    = -8.123458E-15
+NFACTOR = 1              CIT      = -0.0001267591  LCIT     = 2.665205E-10
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.7713767      LPCLM    = 2.850888E-07   WPCLM    = -1.398026E-08
+PPCLM   = 1.392434E-13   PDIBLC1  = 1E-06          PDIBLC2  = 0.0003968183
+LPDIBLC2= 3.019691E-09   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 1.736364E+08   LPSCBE1  = 262.5818       PSCBE2   = 1E-06
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 0.448150714
+BETA0   = 11.59263       KT1      = -0.2294805     LKT1     = -6.668915E-09
+WKT1    = -1.148684E-09  PKT1     = 1.197339E-14   KT2      = -0.02756653
+LKT2    = -3.983356E-09  WKT2     = -1.410404E-09  PKT2     = 1.100718E-15
+AT      = 20000          UTE      = -1.612465      LUTE     = -6.751966E-09
+WUTE    = 4.661704E-08   PUTE     = -4.177314E-14  UA1      = 1.224E-09
+UB1     = -1.546692E-18  LUB1     = 3.371048E-25   WUB1     = 9.500769E-27
+PUB1    = -3.38413E-32   UC1      = -7.376004E-11  LUC1     = 4.105292E-17
+WUC1    = -1.517736E-17  PUC1     = 1.619797E-23   KT1L     = 0
+PRT     = 0              CJ       = cjn            PB       = 0.6882682
+MJ      = 0.3595262      CJSW     = cjswn          PBSW     = 0.6882682
+MJSW    = 0.2003879      CJSWG    = cjswgn         PBSWG    = 0.6882682
+MJSWG   = 0.43879        CGDO     = cgon           CGSO     = cgon
+TCJ     = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306
+TPBSW   = 0.001554306    TPBSWG  = 0.001554306    JS       = 8.38E-06       JSW      = 1.6E-11
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 3E-9 
+LLC     = -0.039        )


.MODEL nch.8            NMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4808935+dvthn' LVTH0    = 1.202573E-08   WVTH0    = -7.686219E-09
+PVTH0   = -2.792416E-15  K1       = 0.5770396      LK1      = 7.760477E-09
+WK1     = -6.325968E-08  PK1      = 1.681673E-14   K2       = -0.005123796
+LK2     = -3.857791E-09  WK2      = 2.028189E-08   PK2      = -8.465442E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 85828.57       LVSAT    = -0.0007622857
+WVSAT   = 0.001060571    UA       = -1.424596E-09  LUA      = 3.665024E-16
+WUA     = 3.978251E-16   PUA      = -1.787704E-22  UB       = 3.028664E-18
+LUB     = -4.306433E-25  WUB      = -3.127378E-25  PUB      = 7.608303E-32
+UC      = 1.63363E-10    LUC      = -2.748434E-17  WUC      = -1.732388E-17
+PUC     = -6.502839E-24  RDSW     = 170            PRWB     = 0
+PRWG    = 0              WR       = 1              U0       = 0.03449604
+LU0     = 3.228961E-09   WU0      = 4.794603E-09   PU0      = -1.885319E-15
+A0      = -0.2092096     LA0      = 4.20459E-07    WA0      = 1.12553E-08
+PA0     = -1.085273E-14  KETA     = -0.01817785    LKETA    = -2.367101E-09
+WKETA   = -1.115772E-09  PKETA    = 7.937026E-16   A1       = 0
+A2      = 0.99           AGS      = 0.02           B0       = 0
+B1      = 0              VOFF     = -0.1488233     LVOFF    = 9.858188E-09
+WVOFF   = -1.043516E-08  PVOFF    = 4.31231E-15    NFACTOR  = 1
+CIT     = -0.0001578858  LCIT     = 3.026274E-10   CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = 1.714285E-05
+LETA0   = 3.811429E-11   ETAB     = -1.714285E-05  LETAB    = -3.811429E-11
+DSUB    = 0              PCLM     = 0.9401633      LPCLM    = 8.929624E-08
+WPCLM   = 3.636246E-08   PPCLM    = 8.084588E-14   PDIBLC1  = 1E-06
+PDIBLC2 = 0.001028572    LPDIBLC2 = 2.286857E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 4E+08          PSCBE2   = 1E-06
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 0.448150714
+BETA0   = 11.59263       KT1      = -0.2414929     LKT1     = 7.265427E-09
+WKT1    = 1.150402E-08   PKT1     = -2.703738E-15  KT2      = -0.03334108
+LKT2    = 2.715118E-09   WKT2     = 8.925629E-10   PKT2     = -1.570723E-15
+AT      = 20000          UTE      = -1.86406       LUTE     = 2.85098E-07
+WUTE    = 2.44629E-07    PUTE     = -2.71467E-13   UA1      = 1.224E-09
+UB1     = -1.864369E-18  LUB1     = 7.05611E-25    WUB1     = 6.949518E-25
+PUB1    = -8.289646E-31  UC1      = -1.092616E-10  LUC1     = 8.223476E-17
+WUC1    = 5.198735E-17   PUC1     = -6.171309E-23  KT1L     = 0
+PRT     = 0              CJ       = cjn            PB       = 0.6882682
+MJ      = 0.3595262      CJSW     = cjswn          PBSW     = 0.6882682
+MJSW    = 0.2003879      CJSWG    = cjswgn         PBSWG    = 0.6882682
+MJSWG   = 0.43879        CGDO     = cgon           CGSO     = cgon
+TCJ     = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306
+TPBSW   = 0.001554306    TPBSWG  = 0.001554306    JS       = 8.38E-06       JSW      = 1.6E-11
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 3E-9          
+LLC     = -0.039        )


.MODEL nch.9            NMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.481488+dvthn' LVTH0    = 1.17523E-08    WVTH0    = -7.082873E-09
+PVTH0   = -3.069955E-15  K1       = 0.4891953      LK1      = 4.816888E-08
+WK1     = -1.673544E-08  PK1      = -4.58442E-15   K2       = 0.0302083
+LK2     = -2.011056E-08  WK2      = 6.031026E-10   PK2      = 5.867986E-16
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 84637.98       LVSAT    = -0.0002146133
+WVSAT   = 0.001023387    PVSAT    = 1.710496E-11   UA       = -5.066291E-10
+LUA     = -5.57622E-17   WUA      = -4.338739E-17  PUA      = 2.418733E-23
+UB      = 1.984037E-18   LUB      = 4.988523E-26   WUB      = -2.700116E-26
+PUB     = -5.535582E-32  UC       = 7.191223E-11   LUC      = 1.458302E-17
+WUC     = -3.706532E-19  PUC      = -1.430133E-23  RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.04022617     LU0      = 5.931013E-10   WU0      = -5.385397E-10
+PU0     = 5.679271E-16   A0       = 0.5373152      LA0      = 7.705761E-08
+WA0     = 1.305951E-07   PA0      = -6.574904E-14  KETA     = -0.02712423
+LKETA   = 1.748234E-09   WKETA    = 2.6193E-09     PKETA    = -9.244303E-16
+A1      = 0              A2       = 0.99           AGS      = 0.03866202
+LAGS    = -8.58453E-09   WAGS     = -1.487385E-09  PAGS     = 6.841983E-16
+B0      = 0              B1       = 0              VOFF     = -0.1276647
+LVOFF   = 1.252623E-10   WVOFF    = 5.072778E-09   PVOFF    = -2.821342E-15
+NFACTOR = 1              CIT      = 0.0002127283   LCIT     = 1.32145E-10
+WCIT    = 4.290785E-11   PCIT     = -1.973761E-17  CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = -0.0003198954
+LETA0   = 1.931519E-10   WETA0    = 3.346616E-11   PETA0    = -1.539446E-17
+ETAB    = 0.001419582    LETAB    = -6.990077E-10  WETAB    = -4.106481E-11
+PETAB   = 1.888986E-17   DSUB     = 0              PCLM     = 0.9740778
+LPCLM   = 7.369557E-08   WPCLM    = 2.155709E-07   PPCLM    = -1.590029E-15
+PDIBLC1 = 1E-06          PDIBLC2  = -0.003529964   LPDIBLC2 = 4.383784E-09
+WPDIBLC2= -1.241645E-09  PPDIBLC2 = 5.711567E-16   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 4E+08          PSCBE2   = 1E-06
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 0.448150714
+BETA0   = 11.59263       KT1      = -0.2299624     LKT1     = 1.961425E-09
+WKT1    = 1.35353E-09    PKT1     = 1.965485E-15   KT2      = -0.02660687
+LKT2    = -3.826203E-10  WKT2     = -5.189979E-09  PKT2     = 1.227246E-15
+AT      = 20000          UTE      = -1.094227      LUTE     = -6.902506E-08
+WUTE    = -4.799637E-07  PUTE     = 6.184562E-14   UA1      = 1.224E-09
+UB1     = -5.722656E-20  LUB1     = -1.256748E-25  WUB1     = -1.608598E-24
+PUB1    = 2.306684E-31   UC1      = 1.072241E-10   LUC1     = -1.734869E-17
+WUC1    = -1.511566E-16  PUC1     = 3.173314E-23   KT1L     = 0
+PRT     = 0              CJ       = cjn            PB       = 0.6882682
+MJ      = 0.3595262      CJSW     = cjswn          PBSW     = 0.6882682
+MJSW    = 0.2003879      CJSWG    = cjswgn         PBSWG    = 0.6882682
+MJSWG   = 0.43879        CGDO     = cgon           CGSO     = cgon
+TCJ     = 0.001040287    TCJSW    = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306
+TPBSW   = 0.001554306    TPBSWG  = 0.001554306    JS       = 8.38E-06       JSW      = 1.6E-11
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 3E-9 
+LLC     = -0.039        )


.MODEL nch.10           NMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4352488+dvthn' LVTH0    = 5.971231E-08   WVTH0    = -4.036178E-09
+PVTH0   = -3.974899E-15  K1       = 0.5279656      LK1      = -6.041289E-08
+WK1     = -3.352767E-09  PK1      = 1.988225E-14   K2       = 0.01424122
+LK2     = 1.937711E-08   WK2      = -1.461409E-09  PK2      = -9.748253E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 90518.48       LVSAT    = -0.005164109
+WVSAT   = -7.135755E-05  PVSAT    = 7.107215E-10   UA       = -5.753777E-10
+LUA     = -1.265512E-16  WUA      = -1.539588E-17  PUA      = 1.51832E-23
+UB      = 1.668276E-18   LUB      = 7.517433E-25   WUB      = 1.390964E-25
+PUB     = -2.185601E-31  UC       = 6.614737E-11   LUC      = 6.744323E-17
+WUC     = 4.925809E-18   PUC      = -2.196379E-23  RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.03449046     LU0      = 9.712911E-09   WU0      = 1.004335E-09
+PU0     = -1.245541E-15  A0       = 0.5242422      LA0      = -4.198011E-07
+WA0     = -1.156377E-08  PA0      = 9.501862E-15   KETA     = 0.005068241
+LKETA   = -3.031378E-08  WKETA    = -3.148353E-10  PKETA    = 4.337169E-16
+A1      = 0              A2       = 0.99           AGS      = 0.02
+B0      = 0              B1       = 0              VOFF     = -0.1357364
+LVOFF   = -1.936854E-08  WVOFF    = -1.81595E-09   PVOFF    = 2.46066E-15
+NFACTOR = 1              CIT      = -0.000126513   LCIT     = 2.640698E-10
+WCIT    = -1.427138E-13  PCIT     = 1.421443E-18   CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = 5E-05
+ETAB    = -5E-05         DSUB     = 0              PCLM     = 0.7595757
+LPCLM   = 4.026256E-07   WPCLM    = -7.135753E-09  PPCLM    = 7.107208E-14
+PDIBLC1 = 1E-06          PDIBLC2  = 0.0003968181   LPDIBLC2 = 3.019691E-09
+PDIBLCB = 0.01           DROUT    = 0              PSCBE1   = 1.736364E+08
+LPSCBE1 = 262.5818       PSCBE2   = 1E-06          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 0.448150714    BETA0    = 11.59263
+KT1     = -0.2400692     LKT1     = 1.973544E-08   WKT1     = 4.992732E-09
+PKT1    = -3.341133E-15  KT2      = -0.03543628    LKT2     = -3.00608E-09
+WKT2    = 3.15405E-09    PKT2     = 5.338977E-16   AT       = 20000
+UTE     = -1.574903      LUTE     = -5.076592E-08  WUTE     = 2.483101E-08
+PUTE    = -1.624505E-14  UA1      = 1.224E-09      UB1      = -1.457473E-18
+LUB1    = 2.445644E-25   WUB1     = -4.224631E-26  PUB1     = 1.983214E-32
+UC1     = -7.225825E-11  LUC1     = 5.984138E-17   WUC1     = -1.60484E-17
+PUC1    = 5.300662E-24   KT1L     = 0              PRT      = 0
+CJ      = cjn            PB       = 0.6882682      MJ       = 0.3595262
+CJSW    = cjswn          PBSW     = 0.6882682      MJSW     = 0.2003879
+CJSWG   = cjswgn         PBSWG    = 0.6882682      MJSWG    = 0.43879
+CGDO    = cgon           CGSO     = cgon           TCJ      = 0.001040287
+TCJSW   = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306
+JS      = 8.38E-06       JSW      = 1.6E-11        N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0              DLC      = 3E-9          LLC     = -0.039             )


.MODEL nch.11           NMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4879968+dvthn' LVTH0    = -1.475447E-09  WVTH0    = -1.180615E-08
+PVTH0   = 5.03827E-15    K1       = 0.4182783      LK1      = 6.682436E-08
+WK1     = 2.882188E-08   PK1      = -1.744033E-14  K2       = 0.05724643
+LK2     = -3.050892E-08  WK2      = -1.589285E-08  PK2      = 6.992215E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 86745.34       LVSAT    = -0.0007872646
+WVSAT   = 0.0005288439   PVSAT    = 1.448774E-11   UA       = -7.371595E-10
+LUA     = 6.111558E-17   WUA      = -8.878959E-19  PUA      = -1.646058E-24
+UB      = 2.570856E-18   LUB      = -2.952486E-25  WUB      = -4.720896E-26
+PUB     = -2.445921E-33  UC       = 1.484849E-10   LUC      = -2.806833E-17
+WUC     = -8.694588E-18  PUC      = -6.164128E-24  RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.04425179     LU0      = -1.610234E-09  WU0      = -8.637309E-10
+PU0     = 9.214146E-16   A0       = -0.08643652    LA0      = 2.885862E-07
+WA0     = -5.995313E-08  PA0      = 6.563351E-14   KETA     = -0.0159613
+LKETA   = -5.919509E-09  WKETA    = -2.401372E-09  PKETA    = 2.854099E-15
+A1      = 0              A2       = 0.99           AGS      = 0.02
+B0      = 0              B1       = 0              VOFF     = -0.169209
+LVOFF   = 1.945972E-08   WVOFF    = 1.388564E-09   PVOFF    = -1.256577E-15
+NFACTOR = 1              CIT      = -0.000160979   LCIT     = 3.040503E-10
+WCIT    = 1.794118E-12   PCIT     = -8.252955E-19  CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = 1.714286E-05
+LETA0   = 3.811428E-11   ETAB     = -1.714286E-05  LETAB    = -3.811428E-11
+DSUB    = 0              PCLM     = 0.9751641      LPCLM    = 1.525431E-07
+WPCLM   = 1.606201E-08   PPCLM    = 4.416267E-14   PDIBLC1  = 1E-06
+PDIBLC2 = 0.001663438    LPDIBLC2 = 1.550412E-09   WPDIBLC2 = -3.682228E-10
+PPDIBLC2= 4.271384E-16   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 4E+08          PSCBE2   = 1E-06          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 0.448150714    BETA0    = 11.59263
+KT1     = -0.2410275     LKT1     = 2.084706E-08   WKT1     = 1.123407E-08
+PKT1    = -1.058109E-14  KT2      = -0.04000202    LKT2     = 2.290172E-09
+WKT2    = 4.755906E-09   PKT2     = -1.324255E-15  AT       = 20000
+UTE     = -1.473219      LUTE     = -1.687192E-07  WUTE     = 1.794131E-08
+PUTE    = -8.253005E-15  UA1      = 1.224E-09      UB1      = -5.006146E-19
+LUB1    = -8.653909E-25  WUB1     = -9.602595E-26  PUB1     = 8.221649E-32
+UC1     = 4.363964E-11   LUC1     = -7.460019E-17  WUC1     = -3.669539E-17
+PUC1    = 2.925118E-23   KT1L     = 0              PRT      = 0
+CJ      = cjn            PB       = 0.6882682      MJ       = 0.3595262
+CJSW    = cjswn          PBSW     = 0.6882682      MJSW     = 0.2003879
+CJSWG   = cjswgn         PBSWG    = 0.6882682      MJSWG    = 0.43879
+CGDO    = cgon           CGSO     = cgon           TCJ      = 0.001040287
+TCJSW   = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306
+JS      = 8.38E-06       JSW      = 1.6E-11        N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0             DLC      = 3E-9           LLC      = -0.039            )


.MODEL nch.12           NMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 0.825          AF       = 0.8256         KF       = 4.000E-29
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxn           XJ       = 1.6E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1E-08          LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifn
+RSH     = 6.8            RD       = 0              RS       = 0
+VTH0    = '0.4736658+dvthn' LVTH0    = 5.116823E-09   WVTH0    = -2.546044E-09
+PVTH0   = 7.786215E-16   K1       = 0.4916317      LK1      = 3.308183E-08
+WK1     = -1.814856E-08  PK1      = 4.166068E-15   K2       = 0.0241211
+LK2     = -1.527126E-08  WK2      = 4.133682E-09   PK2      = -2.219989E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 85478.73       LVSAT    = -0.0002046202
+WVSAT   = 0.0005357541   PVSAT    = 1.130901E-11   UA       = -6.551957E-10
+LUA     = 2.341229E-17   WUA      = 4.278126E-17   PUA      = -2.173387E-23
+UB      = 2.115113E-18   LUB      = -8.560682E-26  WUB      = -1.030253E-25
+PUB     = 2.322958E-32   UC       = 1.210543E-10   LUC      = -1.545024E-17
+WUC     = -2.887305E-17  PUC      = 3.117964E-24   RDSW     = 170
+PRWB    = 0              PRWG     = 0              WR       = 1
+U0      = 0.03727462     LU0      = 1.599263E-09   WU0      = 1.173359E-09
+PU0     = -1.564659E-17  A0       = 0.3091393      LA0      = 1.066214E-07
+WA0     = 2.629372E-07   PA0      = -8.289604E-14  KETA     = -0.02983288
+LKETA   = 4.61416E-10    WKETA    = 4.190313E-09   PKETA    = -1.780756E-16
+A1      = 0              A2       = 0.99           AGS      = 0.05334493
+LAGS    = -1.533867E-08  WAGS     = -1.000348E-08  PAGS     = 4.601601E-15
+B0      = 0              B1       = 0              VOFF     = -0.1182942
+LVOFF   = -3.96108E-09   WVOFF    = -3.621182E-10  PVOFF    = -4.512629E-16
+NFACTOR = 1              CIT      = 0.0002910191   LCIT     = 9.613119E-11
+WCIT    = -2.500833E-12  PCIT     = 1.150396E-18   CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = -0.0002621952
+LETA0   = 1.666098E-10   ETAB     = 0.00134878     LETAB    = -6.66439E-10
+DSUB    = 0              PCLM     = 1.151922       LPCLM    = 7.123444E-08
+WPCLM   = 1.124212E-07   PPCLM    = -1.625715E-16  PDIBLC1  = 1E-06
+PDIBLC2 = -0.00702563    LPDIBLC2 = 5.547383E-09   WPDIBLC2 = 7.858404E-10
+PPDIBLC2= -1.037308E-16  PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 4E+08          PSCBE2   = 1E-06          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 0.448150714    BETA0    = 11.59263
+KT1     = -0.1956458     LKT1     = -2.850022E-11  WKT1     = -1.855012E-08
+PKT1    = 3.119642E-15   KT2      = -0.03908098    LKT2     = 1.866495E-09
+WKT2    = 2.045007E-09   PKT2     = -7.724148E-17  AT       = 20000
+UTE     = -1.944663      LUTE     = 4.814495E-08   WUTE     = 1.328912E-08
+PUTE    = -6.112999E-15  UA1      = 1.224E-09      UB1      = -3.081556E-18
+LUB1    = 3.21842E-25    WUB1     = 1.455128E-25   PUB1     = -2.889132E-32
+UC1     = -2.392738E-10  LUC1     = 5.554002E-17   WUC1     = 4.98122E-17
+PUC1    = -1.054232E-23  KT1L     = 0              PRT      = 0
+CJ      = cjn            PB       = 0.6882682      MJ       = 0.3595262
+CJSW    = cjswn          PBSW     = 0.6882682      MJSW     = 0.2003879
+CJSWG   = cjswgn         PBSWG    = 0.6882682      MJSWG    = 0.43879
+CGDO    = cgon           CGSO     = cgon           TCJ      = 0.001040287
+TCJSW   = 0.000645489    TCJSWG   = 0.000645489    TPB      = 0.001554306    TPBSW    = 0.001554306    TPBSWG   = 0.001554306
+JS      = 8.38E-06       JSW      = 1.6E-11        N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0             DLC      = 3E-9           LLC     = -0.039         )


.MODEL pch.1            PMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4379811+dvthp' LVTH0    = -2.157551E-08  WVTH0    = 1.993098E-08
+PVTH0   = -3.253912E-14  K1       = 0.5232846      LK1      = 1.902614E-08
+WK1     = 1.2434E-07     PK1      = -2.513947E-15  K2       = 0.03910666
+LK2     = -5.042024E-09  WK2      = -3.541453E-08  PK2      = -4.457568E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 151306.8       LVSAT    = -0.01300284
+UA      = 8.542461E-10   LUA      = -4.102831E-17  WUA      = 8.143675E-17
+PUA     = -3.518285E-21  UB       = 5.261967E-19   LUB      = -6.282183E-26
+WUB     = 1.155279E-24   PUB      = 5.160992E-30   UC       = -9.947074E-11
+LUC     = -1.021336E-17  WUC      = 1.107944E-16   PUC      = 3.027899E-22
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01091231     LU0      = -1.271836E-09
+WU0     = 8.47784E-10    PU0      = -2.243951E-16  A0       = 0.9876606
+LA0     = 1.192363E-07   WA0      = 5.132671E-07   PA0      = -4.412657E-13
+KETA    = 0.02612185     LKETA    = -1.707487E-09  WKETA    = 7.135232E-09
+PKETA   = -3.335716E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1293096     LVOFF    = -7.007391E-10  WVOFF    = 1.923288E-08
+PVOFF   = -1.21129E-14   NFACTOR  = 1              CIT      = -0.0001
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.5738637      LPCLM    = 2.600568E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.000477273    LPDIBLC2 = 5.201136E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 1.803977E+08   LPSCBE1  = 195.0426
+PSCBE2  = 5E-07          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 6.8730453846   BETA0    = 22.67827       KT1      = -0.2295955
+LKT1    = -1.534336E-08  KT2      = -0.02403249    LKT2     = -3.075286E-09
+AT      = 10000          UTE      = -0.8386704     LUTE     = 9.622102E-08
+UA1     = 1.224E-09      UB1      = -1.397786E-18  LUB1     = 4.807877E-26
+UC1     = -6.721975E-12  LUC1     = 2.087204E-17   KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9
+LLC     = -0.039        )


.MODEL pch.2            PMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4469995+dvthp' LVTH0    = -1.120441E-08  WVTH0    = -4.790911E-08
+PVTH0   = 4.5477E-14     K1       = 0.5344138      LK1      = 6.227659E-09
+WK1     = 6.223506E-08   PK1      = 6.890672E-14   K2       = 0.03583825
+LK2     = -1.283352E-09  WK2      = -9.515445E-09  PK2      = -3.424151E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 146428.6       LVSAT    = -0.007392862
+UA      = 8.910204E-10   LUA      = -8.331874E-17  WUA      = -3.674354E-15
+PUA     = 8.008744E-22   UB       = 3.976959E-19   LUB      = 8.495415E-26
+WUB     = 7.818968E-24   PUB      = -2.502251E-30  UC       = -1.224148E-10
+LUC     = 1.617235E-17   WUC      = 7.976175E-16   PUC      = -4.870566E-22
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01004072     LU0      = -2.69502E-10
+WU0     = 1.856901E-09   PU0      = -1.38488E-15   A0       = 1.023592
+LA0     = 7.791549E-08   WA0      = -1.932599E-07  PA0      = 3.712404E-13
+KETA    = 0.03089782     LKETA    = -7.199843E-09  WKETA    = 1.264146E-08
+PKETA   = -9.667874E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1293548     LVOFF    = -6.487139E-10  WVOFF    = 1.137041E-08
+PVOFF   = -3.071056E-15  NFACTOR  = 1              CIT      = -0.0003062223
+LCIT    = 2.371556E-10   WCIT     = 1.151661E-10   PCIT     = -1.324412E-16
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 1.785714E-05   LETA0    = 3.696428E-11   ETAB     = -1.785714E-05
+LETAB   = -3.696428E-11  DSUB     = 0              PCLM     = 0.6714286
+LPCLM   = 1.478571E-07   PDIBLC1  = 1E-06          PDIBLC2  = 0.001785714
+LPDIBLC2= 3.696428E-09   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 3.5E+08        PSCBE2   = 5E-07          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 6.8730453846   BETA0    = 22.67827
+KT1     = -0.2443071     LKT1     = 1.574977E-09   KT2      = -0.02755304
+LKT2    = 9.733445E-10   AT       = 10000          UTE      = -0.7721764
+LUTE    = 1.97529E-08    WUTE     = -1.467434E-07  PUTE     = 1.687549E-13
+UA1     = 1.224E-09      UB1      = -1.382905E-18  LUB1     = 3.096568E-26
+UC1     = -1.449268E-11  LUC1     = 2.980835E-17   KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9        
+LLC     = -0.039        )


.MODEL pch.3            PMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '1.01E-05-dxw' WMAX     = 0.000101
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4550796+dvthp' LVTH0    = -7.568369E-09  WVTH0    = 6.81538E-08
+PVTH0   = -6.751318E-15  K1       = 0.5074729      LK1      = 1.835105E-08
+WK1     = 2.494346E-07   PK1      = -1.533307E-14  K2       = 0.04798815
+LK2     = -6.750804E-09  WK2      = -1.04983E-07   PK2      = 8.71888E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 130812.5       LVSAT    = -0.0003656236
+UA      = 1.080984E-09   LUA      = -1.688024E-16  WUA      = -2.087708E-15
+PUA     = 8.688397E-23   UB       = 1.740202E-19   LUB      = 1.856082E-25
+WUB     = 3.67887E-24    PUB      = -6.392069E-31  UC       = -1.457954E-10
+LUC     = 2.66936E-17    WUC      = -1.016314E-16  PUC      = -8.239455E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.009606076    LU0      = -7.391318E-11
+WU0     = -6.536676E-10  PU0      = -2.551239E-16  A0       = 1.233097
+LA0     = -1.636207E-08  WA0      = -9.402152E-08  PA0      = 3.265831E-13
+KETA    = 0.01660392     LKETA    = -7.675898E-10  WKETA    = -7.484155E-09
+PKETA   = -6.113507E-16  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1262417     LVOFF    = -2.049622E-09  WVOFF    = -4.056333E-08
+PVOFF   = 2.029913E-14   NFACTOR  = 1              CIT      = -0.0001049554
+LCIT    = 1.465856E-10   WCIT     = 6.463967E-10   PCIT     = -3.714952E-16
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = -0.0004687502  LETA0    = 2.559375E-10   ETAB     = 0.001078125
+LETAB   = -5.301563E-10  DSUB     = 0              PCLM     = 0.9197022
+LPCLM   = 3.613398E-08   WPCLM    = -9.529438E-08  PPCLM    = 4.288248E-14
+PDIBLC1 = 1E-06          PDIBLC2  = 0.005710225    LPDIBLC2 = 1.930398E-09
+WPDIBLC2= 2.274334E-08   PPDIBLC2 = -1.02345E-14   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 3.5E+08        PSCBE2   = 5E-07
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 6.8730453846
+BETA0   = 22.67827       KT1      = -0.2348893     LKT1     = -2.662992E-09
+KT2     = -0.02487671    LKT2     = -2.310046E-10  AT       = 10000
+UTE     = -0.7355645     LUTE     = 3.277554E-09   WUTE     = 2.660134E-07
+PUTE    = -1.698563E-14  UA1      = 1.224E-09      UB1      = -1.378107E-18
+LUB1    = 2.880672E-26   UC1      = 6.698567E-11   LUC1     = -6.856913E-18
+KT1L    = 0              PRT      = 0              CJ       = cjp
+PB      = 0.895226       MJ       = 0.4476         CJSW     = cjswp
+PBSW    = 0.895226       MJSW     = 0.3683619      CJSWG    = cjswgp
+PBSWG   = 0.895226       MJSWG    = 0.3683619      CGDO     = cgop
+CGSO    = cgop           TCJ      = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718
+TPB     = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025    JS       = 4.92E-06
+JSW     = 9E-10          N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 2E-9           LLC     = -0.039          )


.MODEL pch.4            PMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4374633+dvthp' LVTH0    = -2.408414E-08  WVTH0    = 1.471636E-08
+PVTH0   = -7.277214E-15  K1       = 0.5343876      LK1      = 1.806018E-08
+WK1     = 1.253323E-08   PK1      = 7.213184E-15   K2       = 0.03616726
+LK2     = -5.236313E-09  WK2      = -5.814751E-09  PK2      = -2.50107E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 151306.8       LVSAT    = -0.01300284
+UA      = 8.425718E-10   LUA      = -3.904175E-16  WUA      = 1.989964E-16
+PUA     = 6.452796E-26   UB       = 7.128847E-19   LUB      = 4.125238E-25
+WUB     = -7.246685E-25  PUB      = 3.742612E-31   UC       = -8.017901E-11
+LUC     = 1.802016E-17   WUC      = -8.347328E-17  PUC      = 1.847838E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01112962     LU0      = -1.309183E-09
+WU0     = -1.340516E-09  PU0      = 1.516926E-16   A0       = 1.044546
+LA0     = 6.895549E-08   WA0      = -5.956933E-08  PA0      = 6.50618E-14
+KETA    = 0.0260897      LKETA    = -1.288132E-09  WKETA    = 7.459047E-09
+PKETA   = -7.558624E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1273455     LVOFF    = -1.352654E-09  WVOFF    = -5.45451E-10
+PVOFF   = -5.548117E-15  NFACTOR  = 1              CIT      = -0.0001
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.5738637      LPCLM    = 2.600568E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.000477273    LPDIBLC2 = 5.201136E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 1.803977E+08   LPSCBE1  = 195.0426
+PSCBE2  = 5E-07          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 6.8730453846   BETA0    = 22.67827       KT1      = -0.2303
+LKT1    = -1.635442E-08  WKT1     = 7.095216E-09   PKT1     = 1.018142E-14
+KT2     = -0.02416969    LKT2     = -3.344287E-09  WKT2     = 1.381573E-09
+PKT2    = 2.70884E-15    AT       = 10000          UTE      = -0.8501847
+LUTE    = 9.734694E-08   WUTE     = 1.159489E-07   PUTE     = -1.133805E-14
+UA1     = 1.224E-09      UB1      = -1.405289E-18  LUB1     = 5.362257E-26
+WUB1    = 7.555995E-26   PUB1     = -5.582602E-32  UC1      = -9.419797E-12
+LUC1    = 1.833659E-17   WUC1     = 2.716705E-17   PUC1     = 2.553191E-23
+KT1L    = 0              PRT      = 0              CJ       = cjp
+PB      = 0.895226       MJ       = 0.4476         CJSW     = cjswp
+PBSW    = 0.895226       MJSW     = 0.3683619      CJSWG    = cjswgp
+PBSWG   = 0.895226       MJSWG    = 0.3683619      CGDO     = cgop
+CGSO    = cgop           TCJ      = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718
+TPB     = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025    JS       = 4.92E-06
+JSW     = 9E-10          N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 2E-9           LLC     = -0.039          )


.MODEL pch.5            PMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.452691+dvthp' LVTH0    = -6.572238E-09  WVTH0    = 9.404809E-09
+PVTH0   = -1.168931E-15  K1       = 0.5438333      LK1      = 7.197658E-09
+WK1     = -3.26195E-08   PK1      = 5.913883E-14   K2       = 0.03407168
+LK2     = -2.826403E-09  WK2      = 8.27388E-09    PK2      = -1.8703E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 146428.6       LVSAT    = -0.007392862
+UA      = 4.708172E-10   LUA      = 3.710029E-17   WUA      = 5.57092E-16
+PUA     = -4.117454E-22  UB       = 1.245562E-18   LUB      = -2.000556E-25
+WUB     = -7.190487E-25  PUB      = 3.677984E-31   UC       = -3.187988E-11
+LUC     = -3.752386E-17  WUC      = -1.140697E-16  PUC      = 5.36643E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01027813     LU0      = -3.299697E-10
+WU0     = -5.338523E-10  PU0      = -7.759703E-16  A0       = 0.9911001
+LA0     = 1.304183E-07   WA0      = 1.339304E-07   PA0      = -1.574629E-13
+KETA    = 0.03221126     LKETA    = -8.327926E-09  WKETA    = -5.849047E-10
+PKETA   = 1.691919E-15   A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1272677     LVOFF    = -1.442123E-09  WVOFF    = -9.646923E-09
+PVOFF   = 4.918577E-15   NFACTOR  = 1              CIT      = -0.0002927503
+LCIT    = 2.216628E-10   WCIT     = -2.049704E-11  PCIT     = 2.357161E-17
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 1.785715E-05   LETA0    = 3.696428E-11   ETAB     = -1.785715E-05
+LETAB   = -3.696428E-11  DSUB     = 0              PCLM     = 0.6714286
+LPCLM   = 1.478571E-07   PDIBLC1  = 1E-06          PDIBLC2  = 0.001785715
+LPDIBLC2= 3.696428E-09   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 3.5E+08        PSCBE2   = 5E-07          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 6.8730453846   BETA0    = 22.67827
+KT1     = -0.2459082     LKT1     = 1.594939E-09   WKT1     = 1.612342E-08
+PKT1    = -2.010177E-16  KT2      = -0.02786744    LKT2     = 9.081306E-10
+WKT2    = 3.166038E-09   PKT2     = 6.567054E-16   AT       = 10000
+UTE     = -0.7946973     LUTE     = 3.353639E-08   WUTE     = 8.00418E-08
+PUTE    = 2.995515E-14   UA1      = 1.224E-09      UB1      = -1.399018E-18
+LUB1    = 4.641101E-26   WUB1     = 1.62263E-25    PUB1     = -1.555346E-31
+UC1     = -2.426946E-11  LUC1     = 3.541371E-17   WUC1     = 9.845219E-17
+PUC1    = -5.644601E-23  KT1L     = 0              PRT      = 0
+CJ      = cjp            PB       = 0.895226       MJ       = 0.4476
+CJSW    = cjswp          PBSW     = 0.895226       MJSW     = 0.3683619
+CJSWG   = cjswgp         PBSWG    = 0.895226       MJSWG    = 0.3683619
+CGDO    = cgop           CGSO     = cgop           TCJ      = 0.0009739001
+TCJSW   = 0.0004130718   TCJSWG  = 0.0004130718   TPB      = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025
+JS      = 4.92E-06       JSW      = 9E-10          N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0             DLC      = 2E-9           LLC     = -0.039           )


.MODEL pch.6            PMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '1.3E-06-dxw'  WMAX     = '1.01E-05-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4493721+dvthp' LVTH0    = -8.06576E-09   WVTH0    = 1.067962E-08
+PVTH0   = -1.742597E-15  K1       = 0.5178921      LK1      = 1.88712E-08
+WK1     = 1.445133E-07   PK1      = -2.057092E-14  K2       = 0.04280981
+LK2     = -6.758558E-09  WK2      = -5.283713E-08  PK2      = 8.796957E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 130812.5       LVSAT    = -0.0003656236
+UA      = 9.499295E-10   LUA      = -1.785002E-16  WUA      = -7.679882E-16
+PUA     = 1.845406E-22   UB       = 4.958583E-19   LUB      = 1.373112E-25
+WUB     = 4.379602E-25   PUB      = -1.528556E-31  UC       = -1.587904E-10
+LUC     = 1.958586E-17   WUC      = 2.922792E-17   PUC      = -1.081963E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.009831898    LU0      = -1.291645E-10
+WU0     = -2.92769E-09   PU0      = 3.012566E-16   A0       = 1.27343
+LA0     = 3.369685E-09   WA0      = -5.001745E-07  PA0      = 1.278843E-13
+KETA    = 0.01500061     LKETA    = -5.831355E-10  WKETA    = 8.661148E-09
+PKETA   = -2.468804E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1308178     LVOFF    = 1.554266E-10   WVOFF    = 5.518163E-09
+PVOFF   = -1.905712E-15  NFACTOR  = 1              CIT      = -6.280855E-05
+LCIT    = 1.18189E-10    WCIT     = 2.219781E-10   PCIT     = -8.554223E-17
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = -0.0004687502  LETA0    = 2.559375E-10   ETAB     = 0.001136754
+LETAB   = -5.565394E-10  WETAB    = -5.903965E-10  PETAB    = 2.656785E-16
+DSUB    = 0              PCLM     = 0.91154        LPCLM    = 3.980698E-08
+WPCLM   = -1.310087E-08  PPCLM    = 5.895399E-15   PDIBLC1  = 1E-06
+PDIBLC2 = 0.00796875     LPDIBLC2 = 9.140624E-10   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 3.5E+08        PSCBE2   = 5E-07
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 6.8730453846
+BETA0   = 22.67827       KT1      = -0.2368895     LKT1     = -2.463487E-09
+WKT1    = 2.014118E-08   PKT1     = -2.009008E-15  KT2      = -0.02567999
+LKT2    = -7.622315E-11  WKT2     = 8.089046E-09   PKT2     = -1.558648E-15
+AT      = 10000          UTE      = -0.7213691     LUTE     = 5.387008E-10
+WUTE    = 1.230652E-07   PUTE     = 1.059462E-14   UA1      = 1.224E-09
+UB1     = -1.352532E-18  LUB1     = 2.549208E-26   WUB1     = -2.575436E-25
+PUB1    = 3.337843E-32   UC1      = 7.191495E-11   LUC1     = -7.869275E-18
+WUC1    = -4.963781E-17  PUC1     = 1.019449E-23   KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9  
+LLC     = -0.039        )


.MODEL pch.7            PMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4236826+dvthp' LVTH0    = -4.209848E-08  WVTH0    = -2.785141E-09
+PVTH0   = 1.560099E-14   K1       = 0.5423383      LK1      = 2.988238E-08
+WK1     = 2.435904E-09   PK1      = -7.800999E-15  K2       = 0.03449369
+LK2     = -9.442159E-09  WK2      = -3.689318E-09  PK2      = 2.840354E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 151306.8       LVSAT    = -0.01300284
+UA      = 1.106971E-09   LUA      = -6.623647E-16  WUA      = -1.367901E-16
+PUA     = 3.454374E-22   UB       = 2.174056E-19   LUB      = 1.283252E-24
+WUB     = -9.541014E-26  PUB      = -7.31563E-31   UC       = -1.198028E-10
+LUC     = 9.54289E-17    WUC      = -3.315101E-17  PUC      = -7.983071E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01021944     LU0      = -9.699905E-10
+WU0     = -1.845879E-10  PU0      = -2.790822E-16  A0       = 0.9916247
+LA0     = 6.353922E-08   WA0      = 7.640753E-09   PA0      = 7.194045E-14
+KETA    = 0.03057079     LKETA    = -5.18059E-10   WKETA    = 1.768055E-09
+PKETA   = -8.536616E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1270682     LVOFF    = -1.218737E-08  WVOFF    = -8.977046E-10
+PVOFF   = 8.211964E-15   NFACTOR  = 1              CIT      = -0.0001
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.5738636      LPCLM    = 2.600568E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.0004772726   LPDIBLC2 = 5.201136E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 1.803977E+08   LPSCBE1  = 195.0426
+PSCBE2  = 5E-07          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 6.8730453846   BETA0    = 22.67827       KT1      = -0.2305241
+LKT1    = -1.020931E-08  WKT1     = 7.379732E-09   PKT1     = 2.377124E-15
+KT2     = -0.02276375    LKT2     = -2.211963E-10  WKT2     = -4.039696E-10
+PKT2    = -1.257485E-15  AT       = 10000          UTE      = -0.7486248
+LUTE    = 3.492936E-08   WUTE     = -1.303221E-08  PUTE     = 6.793227E-14
+UA1     = 1.224E-09      UB1      = -1.392484E-18  LUB1     = 1.14957E-25
+WUB1    = 5.929722E-26   PUB1     = -1.337207E-31  UC1      = -9.73658E-12
+LUC1    = 1.696398E-17   WUC1     = 2.756936E-17   PUC1     = 2.727514E-23
+KT1L    = 0              PRT      = 0              CJ       = cjp
+PB      = 0.895226       MJ       = 0.4476         CJSW     = cjswp
+PBSW    = 0.895226       MJSW     = 0.3683619      CJSWG    = cjswgp
+PBSWG   = 0.895226       MJSWG    = 0.3683619      CGDO     = cgop
+CGSO    = cgop           TCJ      = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718
+TPB     = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025    JS       = 4.92E-06
+JSW     = 9E-10          N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 2E-9           LLC     = -0.039         )


.MODEL pch.8            PMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.457419+dvthp' LVTH0    = -3.301601E-09  WVTH0    = 1.540932E-08
+PVTH0   = -5.322639E-15  K1       = 0.4661291      LK1      = 1.175229E-07
+WK1     = 6.606479E-08   PK1      = -8.097422E-14  K2       = 0.06045378
+LK2     = -3.929626E-08  WK2      = -2.523138E-08  PK2      = 2.761372E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 146428.6       LVSAT    = -0.007392867
+UA      = 1.026414E-09   LUA      = -5.697246E-16  WUA      = -1.485162E-16
+PUA     = 3.589222E-22   UB       = 1.20417E-18    LUB      = 1.484726E-25
+WUB     = -6.664801E-25  PUB      = -7.483251E-32  UC       = -5.049388E-11
+LUC     = 1.572358E-17   WUC      = -9.042993E-17  PUC      = -1.395995E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01094816     LU0      = -1.80802E-09
+WU0     = -1.384793E-09  PU0      = 1.101153E-15   A0       = 1.199156
+LA0     = -1.751223E-07  WA0      = -1.303012E-07  PA0      = 2.305737E-13
+KETA    = 0.0411355      LKETA    = -1.266747E-08  WKETA    = -1.191869E-08
+PKETA   = 7.203139E-15   A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1442872     LVOFF    = 7.614513E-09   WVOFF    = 1.196779E-08
+PVOFF   = -6.58335E-15   NFACTOR  = 1              CIT      = -0.0003188039
+LCIT    = 2.516245E-10   WCIT     = 1.259109E-11   PCIT     = -1.447976E-17
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 1.785714E-05   LETA0    = 3.696428E-11   ETAB     = -1.785714E-05
+LETAB   = -3.696428E-11  DSUB     = 0              PCLM     = 0.6714286
+LPCLM   = 1.478571E-07   PDIBLC1  = 1E-06          PDIBLC2  = 0.001785715
+LPDIBLC2= 3.696428E-09   PDIBLCB  = 0.01           DROUT    = 0
+PSCBE1  = 3.5E+08        PSCBE2   = 5E-07          PVAG     = 0
+DELTA   = 0.01           ALPHA1   = 6.8730453846   BETA0    = 22.67827
+KT1     = -0.24406       LKT1     = 5.357059E-09   WKT1     = 1.377628E-08
+PKT1    = -4.97891E-15   KT2      = -0.02559545    LKT2     = 3.035259E-09
+WKT2    = 2.806062E-10   PKT2     = -2.044748E-15  AT       = 10000
+UTE     = -0.8199239     LUTE     = 1.169233E-07   WUTE     = 1.120795E-07
+PUTE    = -7.594623E-14  UA1      = 1.224E-09      UB1      = -1.180645E-18
+LUB1    = -1.286574E-25  WUB1     = -1.150706E-25  PUB1     = 6.680229E-32
+UC1     = 2.760364E-11   LUC1     = -2.597728E-17  WUC1     = 3.257336E-17
+PUC1    = 2.152054E-23   KT1L     = 0              PRT      = 0
+CJ      = cjp            PB       = 0.895226       MJ       = 0.4476
+CJSW    = cjswp          PBSW     = 0.895226       MJSW     = 0.3683619
+CJSWG   = cjswgp         PBSWG    = 0.895226       MJSWG    = 0.3683619
+CGDO    = cgop           CGSO     = cgop           TCJ      = 0.0009739001
+TCJSW   = 0.0004130718   TCJSWG  = 0.0004130718   TPB      = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025
+JS      = 4.92E-06       JSW      = 9E-10          N        = 1
+XTI     = 3              CAPMOD   = 3              NQSMOD   = 0
+XPART   = 1              CF       = 0              TLEV     = 1
+TLEVC   = 1              CALCACM  = 1              SFVTFLAG = 0
+ALPHA0   = 0             DLC      = 2E-9           LLC      = -0.039         )


.MODEL pch.9            PMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = '6E-07-dxw'    WMAX     = '1.3E-06-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4342877+dvthp' LVTH0    = -1.371066E-08  WVTH0    = -8.477504E-09
+PVTH0   = 5.426431E-15   K1       = 0.7542717      LK1      = -1.214128E-08
+WK1     = -1.556889E-07  PK1      = 1.881492E-14   K2       = -0.04034913
+LK2     = 6.065043E-09   WK2      = 5.277471E-08   PK2      = -7.489014E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 130812.5       LVSAT    = -0.0003656224
+UA      = -3.876963E-10  LUA      = 6.662492E-17   WUA      = 9.307964E-16
+PUA     = -1.267683E-22  UB       = 1.708786E-18   LUB      = -7.860463E-26
+WUB     = -1.102458E-24  PUB      = 1.213575E-31   UC       = -2.692677E-11
+LUC     = 5.118379E-18   WUC      = -1.382389E-16  PUC      = 7.55407E-24
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.006271143    LU0      = 2.966392E-10
+WU0     = 1.594468E-09   PU0      = -2.39514E-16   A0       = 0.3846521
+LA0     = 1.914046E-07   WA0      = 6.285738E-07   PA0      = -1.1092E-13
+KETA    = 0.01588796     LKETA    = -1.306077E-09  WKETA    = 7.534219E-09
+PKETA   = -1.550669E-15  A1       = 0              A2       = 0.4
+AGS     = 0.006767845    LAGS     = 5.954466E-09   WAGS     = 1.680483E-08
+PAGS    = -7.562171E-15  B0       = 0              B1       = 0
+VOFF    = -0.1286419     LVOFF    = 5.741402E-10   WVOFF    = 2.754739E-09
+PVOFF   = -2.437478E-15  NFACTOR  = 1              CIT      = 0.0001336648
+LCIT    = 4.801357E-11   WCIT     = -2.7543E-11    PCIT     = 3.580592E-18
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = -0.0004687502  LETA0    = 2.559375E-10   ETAB     = 0.0006718751
+LETAB   = -3.473438E-10  DSUB     = 0              PCLM     = 0.8429525
+LPCLM   = 7.067135E-08   WPCLM    = 7.400524E-08   PPCLM    = -3.330235E-14
+PDIBLC1 = 1E-06          PDIBLC2  = 0.009622769    LPDIBLC2 = 1.697542E-10
+WPDIBLC2= -2.100604E-09  PPDIBLC2 = 9.452714E-16   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 3.5E+08        PSCBE2   = 5E-07
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 6.8730453846
+BETA0   = 22.67827       KT1      = -0.2223596     LKT1     = -4.408159E-09
+WKT1    = 1.688208E-09   PKT1     = 4.607245E-16   KT2      = -0.01169408
+LKT2    = -3.220356E-09  WKT2     = -9.673057E-09  PKT2     = 2.4344E-15
+AT      = 10000          UTE      = -0.5805172     LUTE     = 9.190298E-09
+WUTE    = -5.581674E-08  PUTE     = -3.929105E-16  UA1      = 1.224E-09
+UB1     = -1.64321E-18   LUB1     = 7.94965E-26    WUB1     = 1.116172E-25
+PUB1    = -3.520719E-32  UC1      = -5.644295E-11  LUC1     = 1.184368E-17
+WUC1    = 1.133767E-16   PUC1     = -1.484096E-23  KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9 
+LLC     = -0.039        )


.MODEL pch.10           PMOS   (                    LMIN     = '1.2E-06-dxl'
+LMAX    = 2.1E-05        WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4303286+dvthp' LVTH0    = -2.737427E-08  WVTH0    = 1.003085E-09
+PVTH0   = 7.208191E-15   K1       = 0.5469828      LK1      = -4.144793E-08
+WK1     = -2.114652E-10  PK1      = 3.285728E-14   K2       = 0.03273299
+LK2     = 2.015941E-08   WK2      = -2.685718E-09  PK2      = -1.403254E-14
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 151306.8       LVSAT    = -0.01300284
+UA      = 1.217034E-09   LUA      = -3.511119E-17  WUA      = -1.995263E-16
+PUA     = -1.209715E-23  UB       = 5.003731E-20   LUB      = -3.712788E-28
+WUB     = -1.026149E-29  PUB      = 1.021017E-34   UC       = -1.564762E-10
+LUC     = -6.608345E-17  WUC      = -1.22472E-17   PUC      = 1.223133E-23
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01023298     LU0      = -9.387005E-10
+WU0     = -1.923019E-10  PU0      = -2.969176E-16  A0       = 0.8403727
+LA0     = 4.720727E-07   WA0      = 9.38544E-08    PA0      = -1.609236E-13
+KETA    = 0.0461074      LKETA    = -4.22138E-08   WKETA    = -7.087812E-09
+PKETA   = 1.522996E-14   A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1262222     LVOFF    = -1.866991E-09  WVOFF    = -1.379926E-09
+PVOFF   = 2.32935E-15    NFACTOR  = 1              CIT      = -0.0001
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0
+ETA0    = 5E-05          ETAB     = -5E-05         DSUB     = 0
+PCLM    = 0.5738636      LPCLM    = 2.600568E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.0004772726   LPDIBLC2 = 5.201136E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 1.803977E+08   LPSCBE1  = 195.0426
+PSCBE2  = 5E-07          PVAG     = 0              DELTA    = 0.01
+ALPHA1  = 6.8730453846   BETA0    = 22.67827       KT1      = -0.2230191
+LKT1    = -9.921544E-09  WKT1     = 3.101877E-09   PKT1     = 2.213099E-15
+KT2     = -0.02651932    LKT2     = -1.693776E-09  WKT2     = 1.736708E-09
+PKT2    = -4.181145E-16  AT       = 10000          UTE      = -0.7886902
+LUTE    = 2.207672E-07   WUTE     = 9.805095E-09   PUTE     = -3.799531E-14
+UA1     = 1.224E-09      UB1      = -1.283856E-18  LUB1     = -1.981768E-25
+WUB1    = -2.620757E-27  PUB1     = 4.476558E-32   UC1      = 5.463716E-11
+LUC1    = 9.531897E-17   WUC1     = -9.123675E-18  PUC1     = -1.738722E-23
+KT1L    = 0              PRT      = 0              CJ       = cjp
+PB      = 0.895226       MJ       = 0.4476         CJSW     = cjswp
+PBSW    = 0.895226       MJSW     = 0.3683619      CJSWG    = cjswgp
+PBSWG   = 0.895226       MJSWG    = 0.3683619      CGDO     = cgop
+CGSO    = cgop           TCJ      = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718
+TPB     = 0.001572025    TPBSW    = 0.001572025    TPBSWG   = 0.001572025    JS       = 4.92E-06
+JSW     = 9E-10          N        = 1              XTI      = 3
+CAPMOD  = 3              NQSMOD   = 0              XPART    = 1
+CF      = 0              TLEV     = 1              TLEVC    = 1
+CALCACM = 1              SFVTFLAG = 0              ALPHA0   = 0
+DLC     = 2E-9           LLC     = -0.039          )


.MODEL pch.11           PMOS   (                    LMIN     = '5E-07-dxl'
+LMAX    = '1.2E-06-dxl'  WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4486066+dvthp' LVTH0    = -6.354536E-09  WVTH0    = 1.038626E-08
+PVTH0   = -3.582467E-15  K1       = 0.5183487      LK1      = -8.518739E-09
+WK1     = 3.629963E-08   PK1      = -9.130481E-15  K2       = 0.04981367
+LK2     = 5.166254E-10   WK2      = -1.916651E-08  PK2      = 4.920375E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 146428.6       LVSAT    = -0.007392852
+UA      = 1.055273E-09   LUA      = 1.509141E-16   WUA      = -1.649656E-16
+PUA     = -5.184191E-23  UB       = 2.216331E-20   LUB      = 3.168382E-26
+WUB     = 7.263627E-27   PUB      = -8.26287E-33   UC       = -2.173198E-10
+LUC     = 3.886775E-18   WUC      = 4.660883E-18   PUC      = -7.212972E-24
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.009125781    LU0      = 3.345732E-10
+WU0     = -3.460346E-10  PU0      = -1.201249E-16  A0       = 1.130455
+LA0     = 1.384775E-07   WA0      = -9.114161E-08  PA0      = 5.182181E-14
+KETA    = 0.002687342    LKETA    = 7.719271E-09   WKETA    = 9.996764E-09
+PKETA   = -4.417304E-15  A1       = 0              A2       = 0.4
+AGS     = 0.02           B0       = 0              B1       = 0
+VOFF    = -0.1191891     LVOFF    = -9.954978E-09  WVOFF    = -2.338109E-09
+PVOFF   = 3.431261E-15   NFACTOR  = 1              CIT      = -0.0002967142
+LCIT    = 2.262214E-10   CDSC     = 0              CDSCB    = 0
+CDSCD   = 0              ETA0     = 1.785715E-05   LETA0    = 3.696428E-11
+ETAB    = -1.785715E-05  LETAB    = -3.696428E-11  DSUB     = 0
+PCLM    = 0.6714286      LPCLM    = 1.478571E-07   PDIBLC1  = 1E-06
+PDIBLC2 = 0.001785715    LPDIBLC2 = 3.696428E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 3.5E+08        PSCBE2   = 5E-07
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 6.8730453846
+BETA0   = 22.67827       KT1      = -0.2400945     LKT1     = 9.715253E-09
+WKT1    = 1.151595E-08   PKT1     = -7.463081E-15  KT2      = -0.02725602
+LKT2    = -8.465783E-10  WKT2     = 1.22713E-09    PKT2     = 1.679E-16
+AT      = 10000          UTE      = -0.5941593     LUTE     = -2.943329E-09
+WUTE    = -1.660627E-08  PUTE     = -7.622238E-15  UA1      = 1.224E-09
+UB1     = -1.447885E-18  LUB1     = -9.543706E-27  WUB1     = 3.725585E-26
+PUB1    = -1.092515E-33  UC1      = 1.329441E-10   LUC1     = 5.266003E-18
+WUC1    = -2.747071E-17  PUC1     = 3.71187E-24    KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9     
+LLC     = -0.039        )


.MODEL pch.12           PMOS   (                    LMIN     = 1.8E-07
+LMAX    = '5E-07-dxl'    WMIN     = 2.2E-07        WMAX     = '6E-07-dxw'
+NOIMOD  = 1              EF       = 1.25           AF       = 1.052          KF      = 6.100E-28
+LEVEL   = 49             TNOM     = 25             VERSION  = 3.2
+TOX     = toxp           XJ       = 1.7E-07        NCH      = 3.9E+17
+LLN     = -1             LWN      = 1              WLN      = 1
+WWN     = 1              LINT     = 1.5E-08        LL       = 0
+LW      = 0              LWL      = 0              WINT     = 1.5E-08
+WL      = 0              WW       = 0              WWL      = 0
+MOBMOD  = 1              BINUNIT  = 2              XL       = '-2E-08+dxl'
+XW      = '0+dxw'        DWG      = 0              DWB      = 0
+ACM     = 12             LDIF     = 9E-08          HDIF     = hdifp
+RSH     = 7.2            RD       = 0              RS       = 0
+VTH0    = '-0.4639236+dvthp' LVTH0    = 5.381074E-10   WVTH0    = 8.414935E-09
+PVTH0   = -2.695369E-15  K1       = 0.4669949      LK1      = 1.459046E-08
+WK1     = 8.058935E-09   PK1      = 3.577831E-15   K2       = 0.05886395
+LK2     = -3.555999E-09  WK2      = -3.776749E-09  PK2      = -2.00502E-15
+K3      = 0              DVT0     = 0              DVT1     = 0
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0
+DVT2W   = 0              NLX      = 0              W0       = 0
+K3B     = 0              VSAT     = 130812.5       LVSAT    = -0.0003656262
+UA      = 1.950118E-09   LUA      = -2.517664E-16  WUA      = -4.017582E-16
+PUA     = 5.471478E-23   UB       = -4.603974E-19  LUB      = 2.488361E-25
+WUB     = 1.339767E-25   PUB      = -6.528375E-32  UC       = -2.791416E-10
+LUC     = 3.170657E-17   WUC      = 5.523607E-18   PUC      = -7.601201E-24
+RDSW    = 530            PRWB     = 0              PRWG     = 0
+WR      = 1              U0       = 0.01060315     LU0      = -3.302419E-10
+WU0     = -8.747751E-10  PU0      = 1.178083E-16   A0       = 1.424732
+LA0     = 6.052879E-09   WA0      = 3.572804E-08   PA0      = -5.269527E-15
+KETA    = 0.03131204     LKETA    = -5.161843E-09  WKETA    = -1.257509E-09
+PKETA   = 6.471187E-16   A1       = 0              A2       = 0.4
+AGS     = 0.03625        LAGS     = -7.312499E-09  B0       = 0
+B1      = 0              VOFF     = -0.1281644     LVOFF    = -5.916089E-09
+WVOFF   = 2.482577E-09   PVOFF    = 1.261953E-15   NFACTOR  = 1
+CIT     = 8.534375E-05   LCIT     = 5.429531E-11   CDSC     = 0
+CDSCB   = 0              CDSCD    = 0              ETA0     = -0.0004687499
+LETA0   = 2.559375E-10   ETAB     = 0.0006718751   LETAB    = -3.473438E-10
+DSUB    = 0              PCLM     = 0.9657306      LPCLM    = 1.542123E-08
+WPCLM   = 4.02174E-09    PPCLM    = -1.809783E-15  PDIBLC1  = 1E-06
+PDIBLC2 = 0.0059375      LPDIBLC2 = 1.828125E-09   PDIBLCB  = 0.01
+DROUT   = 0              PSCBE1   = 3.5E+08        PSCBE2   = 5E-07
+PVAG    = 0              DELTA    = 0.01           ALPHA1   = 6.8730453846
+BETA0   = 22.67827       KT1      = -0.2138071     LKT1     = -2.114083E-09
+WKT1    = -3.186682E-09  PKT1     = -8.468991E-16  KT2      = -0.03507274
+LKT2    = 2.670948E-09   WKT2     = 3.652781E-09   PKT2     = -9.236432E-16
+AT      = 10000          UTE      = -0.5993978     LUTE     = -5.860002E-10
+WUTE    = -4.505475E-08  PUTE     = 5.179581E-15   UA1      = 1.224E-09
+UB1     = -1.443847E-18  LUB1     = -1.136091E-26  WUB1     = -2.019831E-27
+PUB1    = 1.658154E-32   UC1      = 1.970068E-10   LUC1     = -2.356221E-17
+WUC1    = -3.108965E-17  PUC1     = 5.340393E-24   KT1L     = 0
+PRT     = 0              CJ       = cjp            PB       = 0.895226
+MJ      = 0.4476         CJSW     = cjswp          PBSW     = 0.895226
+MJSW    = 0.3683619      CJSWG    = cjswgp         PBSWG    = 0.895226
+MJSWG   = 0.3683619      CGDO     = cgop           CGSO     = cgop
+TCJ     = 0.0009739001   TCJSW    = 0.0004130718   TCJSWG   = 0.0004130718   TPB      = 0.001572025
+TPBSW   = 0.001572025    TPBSWG  = 0.001572025    JS       = 4.92E-06       JSW      = 9E-10
+N       = 1              XTI      = 3              CAPMOD   = 3
+NQSMOD  = 0              XPART    = 1              CF       = 0
+TLEV    = 1              TLEVC    = 1              CALCACM  = 1
+SFVTFLAG= 0              ALPHA0   = 0              DLC      = 2E-9 
+LLC     = -0.039        )

.ENDL MOS
*
*************************
*                       *
* 0.18um   1.8V diode   *
*                       *
*************************
*
.LIB DIO
*
.MODEL NDIO D (                                     LEVEL  = 3
+ IS     = 8.38E-6         RS     = 1.0E-10         N      = 1.3217
+ BV     = 10.72           IBV    = 1E-3            IK     = 1E20
+ IKR    = 1E10            JSW    = 1.24E-11        AREA   = 7.5E-8
+ PJ     = 1.1E-3          CJ     = 1.000266E-3     PB     = 0.6882682
+ MJ     = 0.3595262       CJSW   = 2.040547E-10    PHP    = 0.6882682
+ MJSW   = 0.2003879       TLEV   = 1               EG     = 1.17
+ XTI    = 3               TCV    = -9.3E-4         TRS    = 1.62E-3
+ TLEVC  = 1               CTA    = 1.040287E-3     CTP    = 6.45489E-4
+ TPB    = 1.554306E-3     TPHP   = 1.554306E-3     TREF   = 25
+ FC     = 0               FCS    = 0               )
*
.MODEL PDIO D (                                     LEVEL  = 3
+ IS     = 4.92E-6         RS     = 1.0E-10         N      = 1.25
+ BV     = 10.2            IBV    = 1E-3            IK     = 1E20
+ IKR    = 1E10            JSW    = 1.02E-11        AREA   = 7.5E-8
+ PJ     = 1.1E-3          CJ     = 1.121E-3        PB     = 0.895226
+ MJ     = 0.4476          CJSW   = 2.481E-10       PHP    = 0.895226
+ MJSW   = 0.3683619       TLEV   = 1               EG     = 1.17
+ XTI    = 3               TCV    = -8.8E-4         TRS    = 1.2E-4
+ TLEVC  = 1               CTA    = 9.739001E-4     CTP    = 4.130718E-4
+ TPB    = 1.572025E-3     TPHP   = 1.572025E-3     TREF   = 25
+ FC     = 0               FCS    = 0               )
*
.MODEL NWDIO D (                                    LEVEL  = 3
+ IS     = 1.55E-5         RS     = 1.0E-10         N      = 1.38
+ BV     = 14.75           IBV    = 1E-3            IK     = 1E20
+ IKR    = 1E10            JSW    = 4.75E-11        AREA   = 7.5E-8
+ PJ     = 1.1E-3          CJ     = 1.337566E-4     PB     = 0.5846489
+ MJ     = 0.3883243       CJSW   = 5.333577E-10    PHP    = 0.5846489
+ MJSW   = 0.2345684       TLEV   = 1               EG     = 1.17
+ XTI    = 3               TCV    = -9.6E-4         TRS    = 1.125E-3
+ TLEVC  = 1               CTA    = 2.8425E-3       CTP    = 1.5284E-3
+ TPB    = 2.819E-3        TPHP   = 2.819E-3        TREF   = 25
+ FC     = 0               FCS    = 0               )
*
.ENDL DIO

/*
 * Code for class CONTROLEURS_FACTORY_SHARED
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F917_8528(EIF_REFERENCE);
extern void EIF_Minit917(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {CONTROLEURS_FACTORY_SHARED}.controleurs_factory */
RTOID (F917_8528)
EIF_TYPED_VALUE F917_8528 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "controleurs_factory";
	RTEX;
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F917_8528);

	RTLI(2);
	RTLR(0,tr1);
	RTLR(1,Current);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 916, Current, 0, 0, 14056);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(916, Current, 14056);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF8000363, 0,0); /* Result */
	
	tr1 = RTLN(867);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(5868, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	Result = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTOTE;
	RTHOOK(2);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef Result
}

void EIF_Minit917 (void)
{
	GTCX
	RTOTS (8528,F917_8528)
}


#ifdef __cplusplus
}
#endif

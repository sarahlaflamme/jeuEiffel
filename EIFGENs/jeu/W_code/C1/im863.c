/*
 * Code for class IMAGES_FACTORY
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F863_7046(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7047(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7048(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7049(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7050(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7051(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7052(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7053(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7054(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7055(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7056(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7057(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7058(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7059(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7060(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7061(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7062(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7063(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7064(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7065(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7066(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7067(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7068(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7069(EIF_REFERENCE);
extern EIF_TYPED_VALUE F863_7070(EIF_REFERENCE);
extern void F863_9162(EIF_REFERENCE, int);
extern void EIF_Minit863(void);

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

/* {IMAGES_FACTORY}.make */
void F863_7046 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_TYPED_VALUE up2x = {{0}, SK_POINTER};
#define up2 up2x.it_p
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE tr2 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(4);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLR(2,tr2);
	RTLR(3,ur1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 862, Current, 0, 0, 12616);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(862, Current, 12616);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4962, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	RTNHOOK(1,1);
	tr2 = ((up2x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4962, dtype))(Current)), (((up2x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up2x.it_r = RTBU(up2x))), (up2x.type = SK_POINTER), up2x.it_r);
	RTNHOOK(1,2);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1674, "item", tr2))(tr2)).it_i4);
	ui4_1 = (EIF_INTEGER_32) (ti4_1 + ((EIF_INTEGER_32) 1L));
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTVF(1675, "put", tr1))(tr1, ui4_1x);
	RTHOOK(2);
	RTDBGAA(Current, dtype, 4955, 0xF800039E, 0); /* image_menu */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Menu_Principal.png",25,434315879);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(2,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4955, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(3);
	RTDBGAA(Current, dtype, 4956, 0xF800039E, 0); /* image_bouton_jouer */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bouton_Jouer.png",23,1101475175);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(3,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4956, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(4);
	RTDBGAA(Current, dtype, 4957, 0xF800039E, 0); /* image_bouton_jouer_hover */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bouton_Jouer_hover.png",29,102916199);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(4,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4957, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(5);
	RTDBGAA(Current, dtype, 4958, 0xF800039E, 0); /* image_bouton_instructions */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bouton_Instructions.png",30,350546535);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(5,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4958, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(6);
	RTDBGAA(Current, dtype, 4959, 0xF800039E, 0); /* image_bouton_a_propos */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bouton_A_Propos.png",26,2041994087);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(6,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4959, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(7);
	RTDBGAA(Current, dtype, 4939, 0xF800039E, 0); /* image_bloc_bleu_normal */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Bleu_Normal.png",27,1459691879);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(7,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4939, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(8);
	RTDBGAA(Current, dtype, 4940, 0xF800039E, 0); /* image_bloc_bleu_temps_bonus */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Bleu_TempsBonus.png",31,1463063655);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(8,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4940, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(9);
	RTDBGAA(Current, dtype, 4941, 0xF800039E, 0); /* image_bloc_bleu_double_points */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Bleu_DoublePoints.png",33,1476545639);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(9,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4941, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(10);
	RTDBGAA(Current, dtype, 4942, 0xF800039E, 0); /* image_bloc_jaune_normal */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Jaune_Normal.png",28,729101159);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(10,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4942, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(11);
	RTDBGAA(Current, dtype, 4943, 0xF800039E, 0); /* image_bloc_jaune_temps_bonus */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Jaune_TempsBonus.png",32,1891072359);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(11,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4943, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(12);
	RTDBGAA(Current, dtype, 4944, 0xF800039E, 0); /* image_bloc_jaune_double_points */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Jaune_DoublePoints.png",34,1073718887);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(12,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4944, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(13);
	RTDBGAA(Current, dtype, 4945, 0xF800039E, 0); /* image_bloc_rose_normal */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Rose_Normal.png",27,911788391);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(13,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4945, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(14);
	RTDBGAA(Current, dtype, 4946, 0xF800039E, 0); /* image_bloc_rose_temps_bonus */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Rose_TempsBonus.png",31,477219687);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(14,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4946, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(15);
	RTDBGAA(Current, dtype, 4947, 0xF800039E, 0); /* image_bloc_rose_double_points */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Rose_DoublePoints.png",33,136282471);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(15,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4947, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(16);
	RTDBGAA(Current, dtype, 4948, 0xF800039E, 0); /* image_bloc_mauve_normal */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Mauve_Normal.png",28,540046183);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(16,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4948, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(17);
	RTDBGAA(Current, dtype, 4949, 0xF800039E, 0); /* image_bloc_mauve_temps_bonus */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Mauve_TempsBonus.png",32,1645206887);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(17,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4949, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(18);
	RTDBGAA(Current, dtype, 4950, 0xF800039E, 0); /* image_bloc_mauve_double_points */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Mauve_DoublePoints.png",34,575145319);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(18,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4950, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(19);
	RTDBGAA(Current, dtype, 4951, 0xF800039E, 0); /* image_bloc_orange_normal */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Orange_Normal.png",29,814647399);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(19,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4951, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(20);
	RTDBGAA(Current, dtype, 4952, 0xF800039E, 0); /* image_bloc_orange_temps_bonus */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Orange_TempsBonus.png",33,1757374311);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(20,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4952, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(21);
	RTDBGAA(Current, dtype, 4953, 0xF800039E, 0); /* image_bloc_orange_double_points */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Orange_DoublePoints.png",35,756061799);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(21,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4953, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(22);
	RTDBGAA(Current, dtype, 4954, 0xF800039E, 0); /* image_bloc_arc_en_ciel */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Bloc_Arc_en_Ciel.png",27,382141799);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6164, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(22,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4954, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(23);
	RTDBGAA(Current, dtype, 4960, 0xF800039E, 0); /* image_sablier */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Sablier.png",18,1483477095);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(23,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4960, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTHOOK(24);
	RTDBGAA(Current, dtype, 4961, 0xF800039E, 0); /* image_selection */
	
	tr1 = RTLN(927);
	tr2 = RTMS_EX_H("Images/Selection.png",20,1300457319);
	ur1 = tr2;
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(6468, Dtype(tr1)))(tr1, ur1x);
	RTNHOOK(24,1);
	RTAR(Current, tr1);
	*(EIF_REFERENCE *)(Current + RTWA(4961, dtype)) = (EIF_REFERENCE) RTCCL(tr1);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(25);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef up1
#undef up2
#undef ur1
#undef ui4_1
}

/* {IMAGES_FACTORY}.image_bloc_bleu_normal */
EIF_TYPED_VALUE F863_7047 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4939,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_bleu_temps_bonus */
EIF_TYPED_VALUE F863_7048 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4940,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_bleu_double_points */
EIF_TYPED_VALUE F863_7049 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4941,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_jaune_normal */
EIF_TYPED_VALUE F863_7050 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4942,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_jaune_temps_bonus */
EIF_TYPED_VALUE F863_7051 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4943,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_jaune_double_points */
EIF_TYPED_VALUE F863_7052 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4944,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_rose_normal */
EIF_TYPED_VALUE F863_7053 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4945,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_rose_temps_bonus */
EIF_TYPED_VALUE F863_7054 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4946,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_rose_double_points */
EIF_TYPED_VALUE F863_7055 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4947,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_mauve_normal */
EIF_TYPED_VALUE F863_7056 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4948,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_mauve_temps_bonus */
EIF_TYPED_VALUE F863_7057 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4949,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_mauve_double_points */
EIF_TYPED_VALUE F863_7058 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4950,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_orange_normal */
EIF_TYPED_VALUE F863_7059 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4951,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_orange_temps_bonus */
EIF_TYPED_VALUE F863_7060 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4952,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_orange_double_points */
EIF_TYPED_VALUE F863_7061 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4953,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bloc_arc_en_ciel */
EIF_TYPED_VALUE F863_7062 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4954,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_menu */
EIF_TYPED_VALUE F863_7063 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4955,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bouton_jouer */
EIF_TYPED_VALUE F863_7064 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4956,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bouton_jouer_hover */
EIF_TYPED_VALUE F863_7065 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4957,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bouton_instructions */
EIF_TYPED_VALUE F863_7066 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4958,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_bouton_a_propos */
EIF_TYPED_VALUE F863_7067 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4959,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_sablier */
EIF_TYPED_VALUE F863_7068 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4960,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.image_selection */
EIF_TYPED_VALUE F863_7069 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(4961,Dtype(Current)));
	return r;
}


/* {IMAGES_FACTORY}.nb_instance */
RTOID (F863_7070)
EIF_TYPED_VALUE F863_7070 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "nb_instance";
	RTEX;
	EIF_TYPED_VALUE ui4_1x = {{0}, SK_INT32};
#define ui4_1 ui4_1x.it_i4
	EIF_REFERENCE tr1 = NULL;
	RTSN;
	RTDA;
	RTLD;
	
#define Result RTOTRR
	RTOTDR(F863_7070);

	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_REF, &Result);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 862, Current, 0, 0, 12640);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(862, Current, 12640);
	RTIV(Current, RTAL);
	RTOTP;
	RTHOOK(1);
	RTDBGAL(Current, 0, 0xF800030D, 0,0); /* Result */
	
	{
		static EIF_TYPE_INDEX typarr0[] = {781,206,0xFFFF};
		EIF_TYPE_INDEX typres0;
		static EIF_TYPE_INDEX typcache0 = INVALID_DTYPE;
		
		typres0 = (typcache0 != INVALID_DTYPE ? typcache0 : (typcache0 = eif_compound_id(Dftype(Current), typarr0)));
		tr1 = RTLN(typres0);
	}
	ui4_1 = ((EIF_INTEGER_32) 0L);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(1675, Dtype(tr1)))(tr1, ui4_1x);
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
#undef ui4_1
#undef Result
}

/* {IMAGES_FACTORY}._invariant */
void F863_9162 (EIF_REFERENCE Current, int where)
{
	GTCX
	char *l_feature_name = "_invariant";
	RTEX;
	EIF_TYPED_VALUE up1x = {{0}, SK_POINTER};
#define up1 up1x.it_p
	EIF_REFERENCE tr1 = NULL;
	EIF_INTEGER_32 ti4_1;
	RTCDT;
	RTLD;
	RTDA;
	
	RTLI(2);
	RTLR(0,Current);
	RTLR(1,tr1);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	RTEAINV(l_feature_name, 862, Current, 0, 9161);
	RTSA(dtype);
	RTME(dtype, 0);
	RTIT("singleton_valide", Current);
	tr1 = ((up1x = (FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTWF(4962, dtype))(Current)), (((up1x.type & SK_HEAD) == SK_REF)? (EIF_REFERENCE) 0: (up1x.it_r = RTBU(up1x))), (up1x.type = SK_POINTER), up1x.it_r);
	ti4_1 = (((FUNCTION_CAST(EIF_TYPED_VALUE, (EIF_REFERENCE)) RTVF(1674, "item", tr1))(tr1)).it_i4);
	if ((EIF_BOOLEAN)(ti4_1 == ((EIF_INTEGER_32) 1L))) {
		RTCK;
	} else {
		RTCF;
	}
	RTLO(2);
	RTMD(0);
	RTLE;
	RTEE;
#undef up1
}

void EIF_Minit863 (void)
{
	GTCX
	RTOTS (7070,F863_7070)
}


#ifdef __cplusplus
}
#endif

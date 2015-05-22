/*
 * Code for class ZONE
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F920_8552(EIF_REFERENCE);
extern EIF_TYPED_VALUE F920_8553(EIF_REFERENCE);
extern EIF_TYPED_VALUE F920_8554(EIF_REFERENCE);
extern EIF_TYPED_VALUE F920_8555(EIF_REFERENCE);
extern void EIF_Minit920(void);

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

/* {ZONE}.controleur */
EIF_TYPED_VALUE F920_8552 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6378,Dtype(Current)));
	return r;
}


/* {ZONE}.controleur_images */
EIF_TYPED_VALUE F920_8553 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6379,Dtype(Current)));
	return r;
}


/* {ZONE}.controleur_audio */
EIF_TYPED_VALUE F920_8554 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6380,Dtype(Current)));
	return r;
}


/* {ZONE}.controleur_texte */
EIF_TYPED_VALUE F920_8555 (EIF_REFERENCE Current)
{
	EIF_TYPED_VALUE r;
	r.type = SK_REF;
	r.it_r = *(EIF_REFERENCE *)(Current + RTWA(6381,Dtype(Current)));
	return r;
}


void EIF_Minit920 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif

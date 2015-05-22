/*
 * Class AUDIO_3D_OBJECT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_903 [] = {238,902,0xFFFF};
static EIF_TYPE_INDEX gen_type1_903 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_903 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_903 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_903 [] = {0xFFF9,3,174,179,179,179,0xFFFF};
static EIF_TYPE_INDEX gen_type5_903 [] = {0xFFF9,3,174,179,179,179,0xFFFF};
static EIF_TYPE_INDEX gen_type6_903 [] = {0xFFF9,3,174,179,179,179,0xFFFF};


static struct desc_info desc_903[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_903},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 902, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_903},
	{14, (BODY_INDEX)-1, 0, gen_type2_903},
	{15, (BODY_INDEX)-1, 902, NULL},
	{16, (BODY_INDEX)-1, 902, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_903},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 13, NULL},
	{21, (BODY_INDEX)-1, 220, NULL},
	{22, (BODY_INDEX)-1, 220, NULL},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 14, NULL},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 902, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 902, NULL},
	{13873, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13874, (BODY_INDEX)-1, 191, NULL},
	{13875, 0, 206, NULL},
	{13911, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13912, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13913, (BODY_INDEX)-1, 174, gen_type4_903},
	{13914, (BODY_INDEX)-1, 174, gen_type5_903},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13915, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{(BODY_INDEX)-1, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13916, (BODY_INDEX)-1, 174, gen_type6_903},
};

extern void Init903(void);
void Init903(void)
{
	IDSC(desc_903, 0, 902);
	IDSC(desc_903 + 1, 1, 902);
	IDSC(desc_903 + 32, 365, 902);
	IDSC(desc_903 + 35, 360, 902);
}


#ifdef __cplusplus
}
#endif

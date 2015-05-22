/*
 * Class ZONE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_920 [] = {238,919,0xFFFF};
static EIF_TYPE_INDEX gen_type1_920 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_920 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_920 [] = {0,0xFFFF};


static struct desc_info desc_920[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_920},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 919, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_920},
	{14, (BODY_INDEX)-1, 0, gen_type2_920},
	{15, (BODY_INDEX)-1, 919, NULL},
	{16, (BODY_INDEX)-1, 919, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_920},
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
	{28, (BODY_INDEX)-1, 919, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 919, NULL},
	{13928, (BODY_INDEX)-1, 862, NULL},
	{14056, (BODY_INDEX)-1, 867, NULL},
	{14080, 0, 882, NULL},
	{14081, 4, 874, NULL},
	{14082, 8, 900, NULL},
	{14083, 12, 873, NULL},
};

extern void Init920(void);
void Init920(void)
{
	IDSC(desc_920, 0, 919);
	IDSC(desc_920 + 1, 1, 919);
	IDSC(desc_920 + 32, 389, 919);
	IDSC(desc_920 + 33, 356, 919);
	IDSC(desc_920 + 34, 420, 919);
}


#ifdef __cplusplus
}
#endif

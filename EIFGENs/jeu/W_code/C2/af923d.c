/*
 * Class AFFICHAGE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_923 [] = {238,922,0xFFFF};
static EIF_TYPE_INDEX gen_type1_923 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_923 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_923 [] = {0,0xFFFF};


static struct desc_info desc_923[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_923},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 922, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_923},
	{14, (BODY_INDEX)-1, 0, gen_type2_923},
	{15, (BODY_INDEX)-1, 922, NULL},
	{16, (BODY_INDEX)-1, 922, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_923},
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
	{28, (BODY_INDEX)-1, 922, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 922, NULL},
	{13928, (BODY_INDEX)-1, 862, NULL},
	{14056, (BODY_INDEX)-1, 867, NULL},
	{14096, 0, 882, NULL},
	{14097, 4, 874, NULL},
	{14098, 8, 900, NULL},
	{14099, 12, 873, NULL},
};

extern void Init923(void);
void Init923(void)
{
	IDSC(desc_923, 0, 922);
	IDSC(desc_923 + 1, 1, 922);
	IDSC(desc_923 + 32, 389, 922);
	IDSC(desc_923 + 33, 356, 922);
	IDSC(desc_923 + 34, 371, 922);
}


#ifdef __cplusplus
}
#endif

/*
 * Class THREAD_CONTROL
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_895 [] = {238,894,0xFFFF};
static EIF_TYPE_INDEX gen_type1_895 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_895 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_895 [] = {0,0xFFFF};


static struct desc_info desc_895[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_895},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 894, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_895},
	{14, (BODY_INDEX)-1, 0, gen_type2_895},
	{15, (BODY_INDEX)-1, 894, NULL},
	{16, (BODY_INDEX)-1, 894, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_895},
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
	{28, (BODY_INDEX)-1, 894, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 894, NULL},
	{13835, (BODY_INDEX)-1, 215, NULL},
	{13836, (BODY_INDEX)-1, 215, NULL},
	{13837, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13838, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init895(void);
void Init895(void)
{
	IDSC(desc_895, 0, 894);
	IDSC(desc_895 + 1, 1, 894);
	IDSC(desc_895 + 32, 374, 894);
	IDSC(desc_895 + 34, 384, 894);
}


#ifdef __cplusplus
}
#endif

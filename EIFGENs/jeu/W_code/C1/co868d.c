/*
 * Class CONTROLEURS_FACTORY
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_868 [] = {238,867,0xFFFF};
static EIF_TYPE_INDEX gen_type1_868 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_868 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_868 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_868 [] = {781,206,0xFFFF};


static struct desc_info desc_868[] = {
	{(BODY_INDEX) 13554, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_868},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 867, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_868},
	{14, (BODY_INDEX)-1, 0, gen_type2_868},
	{15, (BODY_INDEX)-1, 867, NULL},
	{16, (BODY_INDEX)-1, 867, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_868},
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
	{28, (BODY_INDEX)-1, 867, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 867, NULL},
	{13548, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13549, 0, 882, NULL},
	{13550, 4, 874, NULL},
	{13551, 8, 900, NULL},
	{13552, 12, 873, NULL},
	{13553, (BODY_INDEX)-1, 781, gen_type4_868},
};

extern void Init868(void);
void Init868(void)
{
	IDSC(desc_868, 0, 867);
	IDSC(desc_868 + 1, 1, 867);
	IDSC(desc_868 + 32, 373, 867);
}


#ifdef __cplusplus
}
#endif

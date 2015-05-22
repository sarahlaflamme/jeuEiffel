/*
 * Class GAME_RANDOM_CONTROLLER
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_881 [] = {238,880,0xFFFF};
static EIF_TYPE_INDEX gen_type1_881 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type2_881 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type3_881 [] = {0,0xFFFF};


static struct desc_info desc_881[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 220, NULL},
	{1, (BODY_INDEX)-1, 238, gen_type0_881},
	{2, (BODY_INDEX)-1, 191, NULL},
	{3, (BODY_INDEX)-1, 191, NULL},
	{4, (BODY_INDEX)-1, 191, NULL},
	{5, (BODY_INDEX)-1, 191, NULL},
	{6, (BODY_INDEX)-1, 191, NULL},
	{7, (BODY_INDEX)-1, 191, NULL},
	{8, (BODY_INDEX)-1, 191, NULL},
	{9, (BODY_INDEX)-1, 191, NULL},
	{10, (BODY_INDEX)-1, 880, NULL},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type1_881},
	{14, (BODY_INDEX)-1, 0, gen_type2_881},
	{15, (BODY_INDEX)-1, 880, NULL},
	{16, (BODY_INDEX)-1, 880, NULL},
	{17, (BODY_INDEX)-1, 0, gen_type3_881},
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
	{28, (BODY_INDEX)-1, 880, NULL},
	{29, (BODY_INDEX)-1, 215, NULL},
	{30, (BODY_INDEX)-1, 880, NULL},
	{13692, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13693, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13694, (BODY_INDEX)-1, 206, NULL},
	{13695, (BODY_INDEX)-1, 206, NULL},
	{13696, (BODY_INDEX)-1, 179, NULL},
	{13697, (BODY_INDEX)-1, 179, NULL},
	{13698, 0, 127, NULL},
};

extern void Init881(void);
void Init881(void)
{
	IDSC(desc_881, 0, 880);
	IDSC(desc_881 + 1, 1, 880);
	IDSC(desc_881 + 32, 362, 880);
}


#ifdef __cplusplus
}
#endif

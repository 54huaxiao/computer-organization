/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/Google_Data/MIPS-CPU-master/MIPS-CPU-master/MC-CPU/CU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {16U, 0U};
static unsigned int ng8[] = {17U, 0U};
static unsigned int ng9[] = {18U, 0U};
static unsigned int ng10[] = {32U, 0U};
static unsigned int ng11[] = {39U, 0U};
static unsigned int ng12[] = {24U, 0U};
static unsigned int ng13[] = {52U, 0U};
static unsigned int ng14[] = {5U, 0U};
static unsigned int ng15[] = {48U, 0U};
static unsigned int ng16[] = {49U, 0U};
static unsigned int ng17[] = {56U, 0U};
static unsigned int ng18[] = {3U, 0U};
static unsigned int ng19[] = {58U, 0U};
static unsigned int ng20[] = {57U, 0U};
static unsigned int ng21[] = {63U, 0U};
static unsigned int ng22[] = {7U, 0U};
static unsigned int ng23[] = {4U, 0U};



static void Always_59_0(char *t0)
{
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;

LAB0:    t1 = (t0 + 8352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 8672);
    *((int *)t2) = 1;
    t3 = (t0 + 8384);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 5352);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5512);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6792);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6152);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5672);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5992);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5832);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5192);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6312);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 7432);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7272);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4472U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(78, ng0);

LAB10:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 7272);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t11 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng14)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng18)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng22)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng23)));
    t11 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t11 == 1)
        goto LAB26;

LAB27:
LAB28:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(74, ng0);

LAB9:    xsi_set_current_line(76, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 5512);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);

LAB29:    xsi_set_current_line(81, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5512);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB28;

LAB14:    xsi_set_current_line(84, ng0);

LAB30:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 4632U);
    t5 = *((char **)t3);

LAB31:    t3 = ((char*)((ng2)));
    t14 = xsi_vlog_unsigned_case_compare(t5, 6, t3, 6);
    if (t14 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng7)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng8)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng9)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng10)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng11)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng12)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng13)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng15)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng16)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng17)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng19)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng20)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng21)));
    t11 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t11 == 1)
        goto LAB62;

LAB63:
LAB64:    goto LAB28;

LAB16:    xsi_set_current_line(104, ng0);

LAB81:    xsi_set_current_line(105, ng0);
    t3 = ((char*)((ng22)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4632U);
    t3 = *((char **)t2);

LAB82:    t2 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB83;

LAB84:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB85;

LAB86:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB87;

LAB88:    t2 = ((char*)((ng7)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB89;

LAB90:    t2 = ((char*)((ng8)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB91;

LAB92:    t2 = ((char*)((ng9)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB93;

LAB94:    t2 = ((char*)((ng10)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB95;

LAB96:    t2 = ((char*)((ng11)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB97;

LAB98:    t2 = ((char*)((ng12)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t11 == 1)
        goto LAB99;

LAB100:
LAB101:    goto LAB28;

LAB18:    xsi_set_current_line(119, ng0);

LAB111:    xsi_set_current_line(121, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng5)));
    t12 = (t0 + 7112);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 8160);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB112;
    goto LAB1;

LAB20:    xsi_set_current_line(132, ng0);

LAB122:    xsi_set_current_line(133, ng0);
    t12 = (t0 + 4632U);
    t13 = *((char **)t12);

LAB123:    t12 = ((char*)((ng15)));
    t14 = xsi_vlog_unsigned_case_compare(t13, 6, t12, 6);
    if (t14 == 1)
        goto LAB124;

LAB125:    t2 = ((char*)((ng16)));
    t11 = xsi_vlog_unsigned_case_compare(t13, 6, t2, 6);
    if (t11 == 1)
        goto LAB126;

LAB127:
LAB128:    goto LAB28;

LAB22:    xsi_set_current_line(138, ng0);

LAB131:    xsi_set_current_line(139, ng0);
    t12 = (t0 + 4632U);
    t16 = *((char **)t12);

LAB132:    t12 = ((char*)((ng15)));
    t14 = xsi_vlog_unsigned_case_compare(t16, 6, t12, 6);
    if (t14 == 1)
        goto LAB133;

LAB134:    t2 = ((char*)((ng16)));
    t11 = xsi_vlog_unsigned_case_compare(t16, 6, t2, 6);
    if (t11 == 1)
        goto LAB135;

LAB136:
LAB137:    goto LAB28;

LAB24:    xsi_set_current_line(144, ng0);

LAB140:    xsi_set_current_line(146, ng0);
    t12 = ((char*)((ng2)));
    t24 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t24, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 6472);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5192);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 4632U);
    t12 = *((char **)t2);

LAB141:    t2 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB142;

LAB143:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB144;

LAB145:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB146;

LAB147:    t2 = ((char*)((ng7)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB148;

LAB149:    t2 = ((char*)((ng8)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB150;

LAB151:    t2 = ((char*)((ng9)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB152;

LAB153:    t2 = ((char*)((ng10)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB154;

LAB155:    t2 = ((char*)((ng11)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB156;

LAB157:    t2 = ((char*)((ng12)));
    t11 = xsi_vlog_unsigned_case_compare(t12, 6, t2, 6);
    if (t11 == 1)
        goto LAB158;

LAB159:
LAB160:    goto LAB28;

LAB26:    xsi_set_current_line(162, ng0);

LAB170:    xsi_set_current_line(164, ng0);
    t24 = ((char*)((ng2)));
    t25 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 3, 0LL);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng4)));
    t24 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t24, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng4)));
    t24 = (t0 + 6472);
    xsi_vlogvar_wait_assign_value(t24, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng4)));
    t24 = (t0 + 5192);
    xsi_vlogvar_wait_assign_value(t24, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng5)));
    t24 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t24, t2, 0, 0, 2, 0LL);
    goto LAB28;

LAB32:    xsi_set_current_line(86, ng0);

LAB65:    xsi_set_current_line(86, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 3, 0LL);
    goto LAB64;

LAB34:    xsi_set_current_line(87, ng0);

LAB66:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB36:    xsi_set_current_line(88, ng0);

LAB67:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB38:    xsi_set_current_line(89, ng0);

LAB68:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB40:    xsi_set_current_line(90, ng0);

LAB69:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB42:    xsi_set_current_line(91, ng0);

LAB70:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB44:    xsi_set_current_line(92, ng0);

LAB71:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB46:    xsi_set_current_line(93, ng0);

LAB72:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB48:    xsi_set_current_line(94, ng0);

LAB73:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng6)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB50:    xsi_set_current_line(95, ng0);

LAB74:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng14)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB52:    xsi_set_current_line(96, ng0);

LAB75:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng3)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB54:    xsi_set_current_line(97, ng0);

LAB76:    xsi_set_current_line(97, ng0);
    t3 = ((char*)((ng3)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB56:    xsi_set_current_line(98, ng0);

LAB77:    xsi_set_current_line(98, ng0);
    t3 = ((char*)((ng2)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 6792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB64;

LAB58:    xsi_set_current_line(99, ng0);

LAB78:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng2)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 6792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5192);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB64;

LAB60:    xsi_set_current_line(100, ng0);

LAB79:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng2)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB64;

LAB62:    xsi_set_current_line(101, ng0);

LAB80:    xsi_set_current_line(101, ng0);
    t3 = ((char*)((ng2)));
    t12 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t12, t3, 0, 0, 3, 0LL);
    goto LAB64;

LAB83:    xsi_set_current_line(108, ng0);

LAB102:    xsi_set_current_line(108, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB85:    xsi_set_current_line(109, ng0);

LAB103:    xsi_set_current_line(109, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB87:    xsi_set_current_line(110, ng0);

LAB104:    xsi_set_current_line(110, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5672);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 1);
    goto LAB101;

LAB89:    xsi_set_current_line(111, ng0);

LAB105:    xsi_set_current_line(111, ng0);
    t12 = ((char*)((ng14)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB91:    xsi_set_current_line(112, ng0);

LAB106:    xsi_set_current_line(112, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB93:    xsi_set_current_line(113, ng0);

LAB107:    xsi_set_current_line(113, ng0);
    t12 = ((char*)((ng14)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5672);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 1);
    goto LAB101;

LAB95:    xsi_set_current_line(114, ng0);

LAB108:    xsi_set_current_line(114, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB97:    xsi_set_current_line(115, ng0);

LAB109:    xsi_set_current_line(115, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    goto LAB101;

LAB99:    xsi_set_current_line(116, ng0);

LAB110:    xsi_set_current_line(116, ng0);
    t12 = ((char*)((ng23)));
    t13 = (t0 + 7112);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 3);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5672);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 1);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 6632);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    goto LAB101;

LAB112:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4792U);
    t12 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t15, 0, 8);
    t13 = (t12 + 4);
    t16 = (t2 + 4);
    t6 = *((unsigned int *)t12);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t13);
    t10 = *((unsigned int *)t16);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t16);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB116;

LAB113:    if (t21 != 0)
        goto LAB115;

LAB114:    *((unsigned int *)t15) = 1;

LAB116:    t25 = (t15 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t15);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB117;

LAB118:    xsi_set_current_line(127, ng0);

LAB121:    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng2)));
    t12 = (t0 + 6792);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 2, 0LL);

LAB119:    goto LAB28;

LAB115:    t24 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB116;

LAB117:    xsi_set_current_line(125, ng0);

LAB120:    xsi_set_current_line(126, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 6792);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 2, 0LL);
    goto LAB119;

LAB124:    xsi_set_current_line(134, ng0);

LAB129:    xsi_set_current_line(134, ng0);
    t16 = ((char*)((ng18)));
    t24 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t24, t16, 0, 0, 3, 0LL);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng2)));
    t12 = (t0 + 7112);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 3);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5672);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 1);
    goto LAB128;

LAB126:    xsi_set_current_line(135, ng0);

LAB130:    xsi_set_current_line(135, ng0);
    t12 = ((char*)((ng18)));
    t16 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t16, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng2)));
    t12 = (t0 + 7112);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 3);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5672);
    xsi_vlogvar_assign_value(t12, t2, 0, 0, 1);
    goto LAB128;

LAB133:    xsi_set_current_line(140, ng0);

LAB138:    xsi_set_current_line(140, ng0);
    t24 = ((char*)((ng2)));
    t25 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 3, 0LL);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5992);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5352);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    goto LAB137;

LAB135:    xsi_set_current_line(141, ng0);

LAB139:    xsi_set_current_line(141, ng0);
    t12 = ((char*)((ng23)));
    t24 = (t0 + 7432);
    xsi_vlogvar_wait_assign_value(t24, t12, 0, 0, 3, 0LL);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng4)));
    t12 = (t0 + 5832);
    xsi_vlogvar_wait_assign_value(t12, t2, 0, 0, 1, 0LL);
    goto LAB137;

LAB142:    xsi_set_current_line(151, ng0);

LAB161:    xsi_set_current_line(151, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB144:    xsi_set_current_line(152, ng0);

LAB162:    xsi_set_current_line(152, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB146:    xsi_set_current_line(153, ng0);

LAB163:    xsi_set_current_line(153, ng0);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB148:    xsi_set_current_line(154, ng0);

LAB164:    xsi_set_current_line(154, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB150:    xsi_set_current_line(155, ng0);

LAB165:    xsi_set_current_line(155, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB152:    xsi_set_current_line(156, ng0);

LAB166:    xsi_set_current_line(156, ng0);
    t24 = ((char*)((ng5)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB154:    xsi_set_current_line(157, ng0);

LAB167:    xsi_set_current_line(157, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB156:    xsi_set_current_line(158, ng0);

LAB168:    xsi_set_current_line(158, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

LAB158:    xsi_set_current_line(159, ng0);

LAB169:    xsi_set_current_line(159, ng0);
    t24 = ((char*)((ng3)));
    t25 = (t0 + 6952);
    xsi_vlogvar_wait_assign_value(t25, t24, 0, 0, 2, 0LL);
    goto LAB160;

}


extern void work_m_00000000002758500892_4066630463_init()
{
	static char *pe[] = {(void *)Always_59_0};
	xsi_register_didat("work_m_00000000002758500892_4066630463", "isim/CPUTest_isim_beh.exe.sim/work/m_00000000002758500892_4066630463.didat");
	xsi_register_executes(pe);
}

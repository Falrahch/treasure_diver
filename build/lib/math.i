# 1 "source\\utils\\math.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "source\\utils\\math.c"




# 1 "source\\utils\\/math.h" 1




       
# 1 "..\\..\\gcc6809\\vectrex\\include/vectrex.h" 1
# 37 "..\\..\\gcc6809\\vectrex\\include/vectrex.h"
       



# 1 "..\\..\\gcc6809\\vectrex\\include/vec_ram.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_ram.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
       
# 48 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern int Vec_Snd_Shadow __attribute__((section(".dpc8")));
extern int Vec_Snd_shadow[15] __attribute__((section(".dpc8")));
extern unsigned int Vec_Btn_State __attribute__((section(".dpc8")));
extern unsigned int Vec_Prev_Btns __attribute__((section(".dpc8")));
extern unsigned int Vec_Buttons __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_4 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_4 __attribute__((section(".dpc8")));
extern int Vec_Joy_Resltn __attribute__((section(".dpc8")));
extern int Vec_Joy_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_2_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux __attribute__((section(".dpc8")));
extern int Vec_Joy_mux[4] __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_Y __attribute__((section(".dpc8")));
extern unsigned int Vec_Misc_Count __attribute__((section(".dpc8")));
extern int Vec_0Ref_Enable __attribute__((section(".dpc8")));
extern unsigned long int Vec_Loop_Count __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_hi __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_lo __attribute__((section(".dpc8")));
extern int Vec_Brightness __attribute__((section(".dpc8")));
extern unsigned int Vec_Dot_Dwell __attribute__((section(".dpc8")));
extern unsigned int Vec_Pattern __attribute__((section(".dpc8")));
extern unsigned long int Vec_Text_HW __attribute__((section(".dpc8")));
extern int Vec_Text_Height __attribute__((section(".dpc8")));
extern int Vec_Text_Width __attribute__((section(".dpc8")));
extern int* Vec_Str_Ptr __attribute__((section(".dpc8")));
extern int Vec_counters[6] __attribute__((section(".dpc8")));
extern int Vec_Counters __attribute__((section(".dpc8")));
extern int Vec_Counter_1 __attribute__((section(".dpc8")));
extern int Vec_Counter_2 __attribute__((section(".dpc8")));
extern int Vec_Counter_3 __attribute__((section(".dpc8")));
extern int Vec_Counter_4 __attribute__((section(".dpc8")));
extern int Vec_Counter_5 __attribute__((section(".dpc8")));
extern int Vec_Counter_6 __attribute__((section(".dpc8")));
extern unsigned long int Vec_RiseRun_Tmp __attribute__((section(".dpc8")));
extern int Vec_Angle __attribute__((section(".dpc8")));
extern unsigned long int Vec_Run_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rise_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_XXX_00 __attribute__((section(".dpc8")));
extern int Vec_RiseRun_Len __attribute__((section(".dpc8")));
extern int Vec_XXX_01 __attribute__((section(".dpc8")));
extern int Vec_XXX_02 __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rfrsh __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_lo __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_hi __attribute__((section(".dpc8")));
extern int Vec_Music_Work __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_A __attribute__((section(".dpc8")));
extern int Vec_XXX_03 __attribute__((section(".dpc8")));
extern int Vec_XXX_04 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_7 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_6 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_5 __attribute__((section(".dpc8")));
extern int Vec_XXX_05 __attribute__((section(".dpc8")));
extern int Vec_XXX_06 __attribute__((section(".dpc8")));
extern int Vec_XXX_07 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_1 __attribute__((section(".dpc8")));
extern int Vec_XXX_08 __attribute__((section(".dpc8")));
extern int* Vec_Freq_Table __attribute__((section(".dpc8")));
extern long unsigned int Vec_ADSR_Table __attribute__((section(".dpc8")));
extern int Vec_Max_Players __attribute__((section(".dpc8")));
extern int Vec_Max_Games __attribute__((section(".dpc8")));
extern int* Vec_Twang_Table __attribute__((section(".dpc8")));
extern int* Vec_Music_Ptr __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanA __attribute__((section(".dpc8")));
extern int Vec_Expl_Chans __attribute__((section(".dpc8")));
extern int Vec_Music_Chan __attribute__((section(".dpc8")));
extern int Vec_Music_Flag __attribute__((section(".dpc8")));
extern int Vec_Duration __attribute__((section(".dpc8")));
extern int Vec_Expl_1 __attribute__((section(".dpc8")));
extern long unsigned int Vec_Music_Twang __attribute__((section(".dpc8")));
extern int Vec_Expl_2 __attribute__((section(".dpc8")));
extern int Vec_Expl_3 __attribute__((section(".dpc8")));
extern int Vec_Expl_4 __attribute__((section(".dpc8")));
extern int Vec_Expl_Chan __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanB __attribute__((section(".dpc8")));
extern int Vec_XXX_09 __attribute__((section(".dpc8")));
extern int Vec_ADSR_Timers __attribute__((section(".dpc8")));
extern int Vec_ADSR_timers[3] __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_Freq __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_freq[3] __attribute__((section(".dpc8")));
extern unsigned int Vec_Expl_Flag __attribute__((section(".dpc8")));
extern int Vec_XXX_10 __attribute__((section(".dpc8")));
extern int Vec_XXX_11 __attribute__((section(".dpc8")));
extern int Vec_XXX_12 __attribute__((section(".dpc8")));
extern int Vec_XXX_13 __attribute__((section(".dpc8")));
extern int Vec_XXX_14 __attribute__((section(".dpc8")));
extern int Vec_XXX_15 __attribute__((section(".dpc8")));
extern int Vec_XXX_16 __attribute__((section(".dpc8")));
extern int Vec_XXX_17 __attribute__((section(".dpc8")));
extern int Vec_XXX_18 __attribute__((section(".dpc8")));
extern int Vec_XXX_19 __attribute__((section(".dpc8")));
extern int Vec_XXX_20 __attribute__((section(".dpc8")));
extern int Vec_XXX_21 __attribute__((section(".dpc8")));
extern int Vec_XXX_22 __attribute__((section(".dpc8")));
extern int Vec_XXX_23 __attribute__((section(".dpc8")));
extern int Vec_XXX_24 __attribute__((section(".dpc8")));
extern int Vec_Expl_Timer __attribute__((section(".dpc8")));
extern int Vec_XXX_25 __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Players __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Game __attribute__((section(".dpc8")));
extern unsigned int* Vec_Seed_Ptr __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed0 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed2 __attribute__((section(".dpc8")));



extern int Vec_Default_Stk __attribute__((section(".dpcb")));
extern unsigned int Vec_High_Score __attribute__((section(".dpcb")));
extern unsigned int Vec_High_score[7] __attribute__((section(".dpcb")));
extern int Vec_SWI3_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI3_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI2_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI2_vector[3] __attribute__((section(".dpcb")));
extern int Vec_FIRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_FIRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_IRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_IRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI_vector[3] __attribute__((section(".dpcb")));
extern int Vec_NWI_Vector __attribute__((section(".dpcb")));
extern int Vec_NWI_vector[3] __attribute__((section(".dpcb")));
extern long unsigned int Vec_Cold_Flag __attribute__((section(".dpcb")));





extern volatile unsigned long int VIA_port_ba __attribute__((section(".dpd0")));

extern volatile int VIA_port_b __attribute__((section(".dpd0")));
extern volatile int VIA_port_a __attribute__((section(".dpd0")));
# 199 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned long int VIA_DDR_ba __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_b __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_a __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_cnt __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_lch __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t2 __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_hi __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_shift_reg __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_aux_cntl_w __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_aux_cntl __attribute__((section(".dpd0")));
# 222 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_cntl __attribute__((section(".dpd0")));
# 231 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_flags __attribute__((section(".dpd0")));
# 241 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_enable __attribute__((section(".dpd0")));
# 250 "..\\..\\gcc6809\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_port_a_nohs __attribute__((section(".dpd0")));
# 41 "..\\..\\gcc6809\\vectrex\\include/vec_ram.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include/vec_ram_dp.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_ram_dp.h"
       
# 48 "..\\..\\gcc6809\\vectrex\\include/vec_ram_dp.h"
extern int dp_Vec_Snd_Shadow __attribute__((section("direct")));
extern int dp_Vec_Snd_shadow[15] __attribute__((section("direct")));
extern unsigned int dp_Vec_Btn_State __attribute__((section("direct")));
extern unsigned int dp_Vec_Prev_Btns __attribute__((section("direct")));
extern unsigned int dp_Vec_Buttons __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_2 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_3 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_1_4 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_2 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_3 __attribute__((section("direct")));
extern unsigned int dp_Vec_Button_2_4 __attribute__((section("direct")));
extern int dp_Vec_Joy_Resltn __attribute__((section("direct")));
extern int dp_Vec_Joy_1_X __attribute__((section("direct")));
extern int dp_Vec_Joy_1_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_2_X __attribute__((section("direct")));
extern int dp_Vec_Joy_2_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux __attribute__((section("direct")));
extern int dp_Vec_Joy_mux[4] __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_1_X __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_1_Y __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_2_X __attribute__((section("direct")));
extern int dp_Vec_Joy_Mux_2_Y __attribute__((section("direct")));
extern unsigned int dp_Vec_Misc_Count __attribute__((section("direct")));
extern int dp_Vec_0Ref_Enable __attribute__((section("direct")));
extern unsigned long int dp_Vec_Loop_Count __attribute__((section("direct")));
extern unsigned int dp_Vec_Loop_Count_hi __attribute__((section("direct")));
extern unsigned int dp_Vec_Loop_Count_lo __attribute__((section("direct")));
extern int dp_Vec_Brightness __attribute__((section("direct")));
extern unsigned int dp_Vec_Dot_Dwell __attribute__((section("direct")));
extern unsigned int dp_Vec_Pattern __attribute__((section("direct")));
extern unsigned long int dp_Vec_Text_HW __attribute__((section("direct")));
extern int dp_Vec_Text_Height __attribute__((section("direct")));
extern int dp_Vec_Text_Width __attribute__((section("direct")));
extern int* dp_Vec_Str_Ptr __attribute__((section("direct")));
extern int dp_Vec_counters[6] __attribute__((section("direct")));
extern int dp_Vec_Counters __attribute__((section("direct")));
extern int dp_Vec_Counter_1 __attribute__((section("direct")));
extern int dp_Vec_Counter_2 __attribute__((section("direct")));
extern int dp_Vec_Counter_3 __attribute__((section("direct")));
extern int dp_Vec_Counter_4 __attribute__((section("direct")));
extern int dp_Vec_Counter_5 __attribute__((section("direct")));
extern int dp_Vec_Counter_6 __attribute__((section("direct")));
extern unsigned long int dp_Vec_RiseRun_Tmp __attribute__((section("direct")));
extern int dp_Vec_Angle __attribute__((section("direct")));
extern unsigned long int dp_Vec_Run_Index __attribute__((section("direct")));
extern unsigned long int dp_Vec_Rise_Index __attribute__((section("direct")));
extern unsigned long int dp_Vec_XXX_00 __attribute__((section("direct")));
extern int dp_Vec_RiseRun_Len __attribute__((section("direct")));
extern int dp_Vec_XXX_01 __attribute__((section("direct")));
extern int dp_Vec_XXX_02 __attribute__((section("direct")));
extern unsigned long int dp_Vec_Rfrsh __attribute__((section("direct")));
extern unsigned int dp_Vec_Rfrsh_lo __attribute__((section("direct")));
extern unsigned int dp_Vec_Rfrsh_hi __attribute__((section("direct")));
extern int dp_Vec_Music_Work __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_A __attribute__((section("direct")));
extern int dp_Vec_XXX_03 __attribute__((section("direct")));
extern int dp_Vec_XXX_04 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_7 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_6 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_5 __attribute__((section("direct")));
extern int dp_Vec_XXX_05 __attribute__((section("direct")));
extern int dp_Vec_XXX_06 __attribute__((section("direct")));
extern int dp_Vec_XXX_07 __attribute__((section("direct")));
extern int dp_Vec_Music_Wk_1 __attribute__((section("direct")));
extern int dp_Vec_XXX_08 __attribute__((section("direct")));
extern int* dp_Vec_Freq_Table __attribute__((section("direct")));
extern long unsigned int dp_Vec_ADSR_Table __attribute__((section("direct")));
extern int dp_Vec_Max_Players __attribute__((section("direct")));
extern int dp_Vec_Max_Games __attribute__((section("direct")));
extern int* dp_Vec_Twang_Table __attribute__((section("direct")));
extern int* dp_Vec_Music_Ptr __attribute__((section("direct")));
extern int dp_Vec_Expl_ChanA __attribute__((section("direct")));
extern int dp_Vec_Expl_Chans __attribute__((section("direct")));
extern int dp_Vec_Music_Chan __attribute__((section("direct")));
extern int dp_Vec_Music_Flag __attribute__((section("direct")));
extern int dp_Vec_Duration __attribute__((section("direct")));
extern int dp_Vec_Expl_1 __attribute__((section("direct")));
extern long unsigned int dp_Vec_Music_Twang __attribute__((section("direct")));
extern int dp_Vec_Expl_2 __attribute__((section("direct")));
extern int dp_Vec_Expl_3 __attribute__((section("direct")));
extern int dp_Vec_Expl_4 __attribute__((section("direct")));
extern int dp_Vec_Expl_Chan __attribute__((section("direct")));
extern int dp_Vec_Expl_ChanB __attribute__((section("direct")));
extern int dp_Vec_XXX_09 __attribute__((section("direct")));
extern int dp_Vec_ADSR_Timers __attribute__((section("direct")));
extern int dp_Vec_ADSR_timers[3] __attribute__((section("direct")));
extern unsigned long int dp_Vec_Music_Freq __attribute__((section("direct")));
extern unsigned long int dp_Vec_Music_freq[3] __attribute__((section("direct")));
extern unsigned int dp_Vec_Expl_Flag __attribute__((section("direct")));
extern int dp_Vec_XXX_10 __attribute__((section("direct")));
extern int dp_Vec_XXX_11 __attribute__((section("direct")));
extern int dp_Vec_XXX_12 __attribute__((section("direct")));
extern int dp_Vec_XXX_13 __attribute__((section("direct")));
extern int dp_Vec_XXX_14 __attribute__((section("direct")));
extern int dp_Vec_XXX_15 __attribute__((section("direct")));
extern int dp_Vec_XXX_16 __attribute__((section("direct")));
extern int dp_Vec_XXX_17 __attribute__((section("direct")));
extern int dp_Vec_XXX_18 __attribute__((section("direct")));
extern int dp_Vec_XXX_19 __attribute__((section("direct")));
extern int dp_Vec_XXX_20 __attribute__((section("direct")));
extern int dp_Vec_XXX_21 __attribute__((section("direct")));
extern int dp_Vec_XXX_22 __attribute__((section("direct")));
extern int dp_Vec_XXX_23 __attribute__((section("direct")));
extern int dp_Vec_XXX_24 __attribute__((section("direct")));
extern int dp_Vec_Expl_Timer __attribute__((section("direct")));
extern int dp_Vec_XXX_25 __attribute__((section("direct")));
extern unsigned int dp_Vec_Num_Players __attribute__((section("direct")));
extern unsigned int dp_Vec_Num_Game __attribute__((section("direct")));
extern unsigned int* dp_Vec_Seed_Ptr __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed0 __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed1 __attribute__((section("direct")));
extern unsigned int dp_Vec_Random_Seed2 __attribute__((section("direct")));



extern int dp_Vec_Default_Stk __attribute__((section("direct")));
extern unsigned int dp_Vec_High_Score __attribute__((section("direct")));
extern unsigned int dp_Vec_High_score[7] __attribute__((section("direct")));
extern int dp_Vec_SWI3_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI3_vector[3] __attribute__((section("direct")));
extern int dp_Vec_SWI2_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI2_vector[3] __attribute__((section("direct")));
extern int dp_Vec_FIRQ_Vector __attribute__((section("direct")));
extern int dp_Vec_FIRQ_vector[3] __attribute__((section("direct")));
extern int dp_Vec_IRQ_Vector __attribute__((section("direct")));
extern int dp_Vec_IRQ_vector[3] __attribute__((section("direct")));
extern int dp_Vec_SWI_Vector __attribute__((section("direct")));
extern int dp_Vec_SWI_vector[3] __attribute__((section("direct")));
extern int dp_Vec_NWI_Vector __attribute__((section("direct")));
extern int dp_Vec_NWI_vector[3] __attribute__((section("direct")));
extern long unsigned int dp_Vec_Cold_Flag __attribute__((section("direct")));





extern volatile unsigned long int dp_VIA_port_ba __attribute__((section("direct")));
extern volatile int dp_VIA_port_b __attribute__((section("direct")));
extern volatile int dp_VIA_port_a __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_DDR_ba __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_DDR_b __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_DDR_a __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t1_cnt __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_cnt_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_cnt_hi __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t1_lch __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_lch_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t1_lch_hi __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_t2 __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t2_lo __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_t2_hi __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_shift_reg __attribute__((section("direct")));
extern volatile unsigned long int dp_VIA_aux_cntl_w __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_aux_cntl __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_cntl __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_int_flags __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_int_enable __attribute__((section("direct")));
extern volatile unsigned int dp_VIA_port_a_nohs __attribute__((section("direct")));
# 42 "..\\..\\gcc6809\\vectrex\\include/vec_ram.h" 2
# 42 "..\\..\\gcc6809\\vectrex\\include/vectrex.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rom.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rom.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rom_0x.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rom_0x.h"
       




extern const int Vec_Sine_Table __attribute__((section(".dpfc")));
extern const int Vec_Cosine_Table __attribute__((section(".dpfc")));
extern const int Vec_Note_Table __attribute__((section(".dpfc")));




extern const unsigned int Vec_Music_0 __attribute__((section(".dped")));
extern const unsigned int Vec_Music_1 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_2 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_3 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_4 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_5 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_6 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_7 __attribute__((section(".dpfc")));
extern const unsigned int Vec_Music_8 __attribute__((section(".dpf8")));
extern const unsigned int Vec_Music_9 __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_a __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_b __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_c __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_d __attribute__((section(".dpff")));




extern const unsigned int Vec_ADSR_FADE66 __attribute__((section(".dped")));
extern const unsigned int Vec_ADSR_FADE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_ADSR_FADE1 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE2 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE3 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE4 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE8 __attribute__((section(".dpff")));
extern const unsigned int Vec_ADSR_FADE12 __attribute__((section(".dpfd")));




extern const unsigned int Vec_TWANG_VIBE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_TWANG_VIBEHL __attribute__((section(".dpfe")));
extern const unsigned int Vec_TWANG_VIBENL __attribute__((section(".dpfe")));
# 41 "..\\..\\gcc6809\\vectrex\\include/vec_rom.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rom_dp.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rom_dp.h"
       




extern const int dp_Vec_Sine_Table __attribute__((section("direct")));
extern const int dp_Vec_Cosine_Table __attribute__((section("direct")));
extern const int dp_Vec_Note_Table __attribute__((section("direct")));




extern const unsigned int dp_Vec_Music_0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_1 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_2 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_3 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_4 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_5 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_6 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_7 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_8 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_9 __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_a __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_b __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_c __attribute__((section("direct")));
extern const unsigned int dp_Vec_Music_d __attribute__((section("direct")));




extern const unsigned int dp_Vec_ADSR_FADE66 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE1 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE2 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE3 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE4 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE8 __attribute__((section("direct")));
extern const unsigned int dp_Vec_ADSR_FADE12 __attribute__((section("direct")));




extern const unsigned int dp_Vec_TWANG_VIBE0 __attribute__((section("direct")));
extern const unsigned int dp_Vec_TWANG_VIBEHL __attribute__((section("direct")));
extern const unsigned int dp_Vec_TWANG_VIBENL __attribute__((section("direct")));
# 42 "..\\..\\gcc6809\\vectrex\\include/vec_rom.h" 2
# 43 "..\\..\\gcc6809\\vectrex\\include/vectrex.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rum.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rum.h"
       





# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
       

# 1 "..\\..\\gcc6809\\vectrex\\include/macro.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/macro.h"
       
# 41 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h" 2

# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
       
# 80 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Wait_Recal(void);
__attribute__((noinline)) void __Set_Refresh(void);
__attribute__((noinline)) void __Recalibrate(void);
__attribute__((noinline)) void __Reset0Ref_D0(void);
__attribute__((noinline)) void __Check0Ref(void);
__attribute__((noinline)) void __Reset0Ref(void);
__attribute__((noinline)) void __Reset_Pen(void);
__attribute__((noinline)) void __Reset0Int(void);
# 102 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dec_3_Counters(void);
__attribute__((noinline)) void __Dec_6_Counters(void);
__attribute__((noinline)) void __Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void __DP_to_D0(void);
__attribute__((noinline)) void __DP_to_C8(void);
# 130 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Delay_3(void);
__attribute__((noinline)) void __Delay_2(void);
__attribute__((noinline)) void __Delay_1(void);
__attribute__((noinline)) void __Delay_0(void);
__attribute__((noinline)) void __Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void __Delay_RTS(void);
# 147 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Dot_ix(void* volatile const x);
__attribute__((noinline)) void __Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Dot_dd(volatile const long int d);
__attribute__((noinline)) void __Dot_here(void);
__attribute__((noinline)) void __Dot_List(void* volatile const x);
__attribute__((noinline)) void __Dot_List_Reset(void* volatile const x);
# 173 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void __Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void __Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void __Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void __Print_List_hw(void* volatile const u);
__attribute__((noinline)) void __Print_List(void* volatile const u);
__attribute__((noinline)) void __Print_List_chk(void* volatile const u);
__attribute__((noinline)) void __Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void __Print_Str(void* volatile const u);
__attribute__((noinline)) void __Print_MRast(void);
# 220 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Draw_VLc(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 247 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 283 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void __Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VLp(void* const x);
__attribute__((noinline)) void __Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void __Rot_VL_Mode_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 323 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Random_3(void);
__attribute__((noinline)) unsigned int __Random(void);
__attribute__((noinline)) unsigned int __xRandom(void);

__attribute__((noinline)) unsigned int __Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int __Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int __Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int __Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int __Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int __Get_Rise_Run(void);

__attribute__((noinline)) int __Xform_Run_a(volatile const int a);
__attribute__((noinline)) int __Xform_Run(void);
__attribute__((noinline)) int __Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int __Xform_Rise(void);
# 350 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_C8_RAM(void);
__attribute__((noinline)) void __Clear_x_256(void* volatile const x);
__attribute__((noinline)) void __Clear_x_d(volatile const long unsigned int d, void* volatile const x);







__attribute__((noinline)) void __Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void __Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void __Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 381 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void __Read_Btns(void);
__attribute__((noinline)) void __Joy_Analog(void);
__attribute__((noinline)) void __Joy_Digital(void);
# 429 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Select_Game(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Display_Option(volatile const unsigned int a, const void (*volatile const const y));
# 442 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Reset(void);
__attribute__((noinline)) void __Init_VIA(void);
__attribute__((noinline)) void __Init_OS_RAM(void);
__attribute__((noinline)) void __Init_OS(void);
__attribute__((noinline)) void __Init_Music_Buf(void);
# 470 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_Score(void* volatile const x);
__attribute__((noinline)) void __Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Add_Score_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int __Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __New_High_Score(void* volatile const x, void* volatile const u);
# 494 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_Sound(void);
__attribute__((noinline)) void __Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void __Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Do_Sound(void);
__attribute__((noinline)) void __Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void __Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void __Init_Music(void* volatile const u);
__attribute__((noinline)) void __Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Init_Music_x(void* volatile const u);
__attribute__((noinline)) void __Stop_Sound(void);
__attribute__((noinline)) void __Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void __Set_Amp(volatile const unsigned int b);
# 548 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void __Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Moveto_ix(void* volatile const x);
__attribute__((noinline)) void __Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd(volatile const long int d);
# 567 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Intensity_1F(void);
__attribute__((noinline)) void __Intensity_3F(void);
__attribute__((noinline)) void __Intensity_5F(void);
__attribute__((noinline)) void __Intensity_7F(void);
__attribute__((noinline)) void __Intensity_a(volatile const unsigned int a);
# 580 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int __Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int __Obj_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y);
# 597 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) long unsigned int __Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) int __Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void __Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL(void* volatile const x, void* volatile const u);
# 651 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_y(volatile const long int y);
__attribute__((noinline)) void __Dot_py(void* volatile const y);

__attribute__((noinline)) void __Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void __Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void __Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int __Rnd_Cone(void);

__attribute__((noinline)) long unsigned int __Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int __Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int __Ranpos(void);
__attribute__((noinline)) void __Draw_Scores(void);
__attribute__((noinline)) void __Draw_Score(void);
__attribute__((noinline)) void __Wait_Bound(void);
# 43 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h" 2
# 1 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h" 1
# 38 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
       
# 80 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Wait_Recal(void);
__attribute__((noinline)) void _Set_Refresh(void);
__attribute__((noinline)) void _Recalibrate(void);
__attribute__((noinline)) void _Reset0Ref_D0(void);
__attribute__((noinline)) void _Check0Ref(void);
__attribute__((noinline)) void _Reset0Ref(void);
__attribute__((noinline)) void _Reset_Pen(void);
__attribute__((noinline)) void _Reset0Int(void);
# 102 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dec_3_Counters(void);
__attribute__((noinline)) void _Dec_6_Counters(void);
__attribute__((noinline)) void _Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void _DP_to_D0(void);
__attribute__((noinline)) void _DP_to_C8(void);
# 130 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Delay_3(void);
__attribute__((noinline)) void _Delay_2(void);
__attribute__((noinline)) void _Delay_1(void);
__attribute__((noinline)) void _Delay_0(void);
__attribute__((noinline)) void _Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void _Delay_RTS(void);
# 147 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Dot_ix(void* volatile const x);
__attribute__((noinline)) void _Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Dot_dd(volatile const long int d);
__attribute__((noinline)) void _Dot_here(void);
__attribute__((noinline)) void _Dot_List(void* volatile const x);
__attribute__((noinline)) void _Dot_List_Reset(void* volatile const x);
# 173 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void _Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void _Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void _Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void _Print_List_hw(void* volatile const u);
__attribute__((noinline)) void _Print_List(void* volatile const u);
__attribute__((noinline)) void _Print_List_chk(void* volatile const u);
__attribute__((noinline)) void _Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void _Print_Str(void* volatile const u);
__attribute__((noinline)) void _Print_MRast(void);
# 220 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_Pat_VL_aa(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL(void* volatile const x);





__attribute__((noinline)) void _Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Draw_VLc(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 252 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 288 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void _Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VLp(void* const x);
__attribute__((noinline)) void _Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void _Rot_VL_Mode(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 328 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Random_3(void);
__attribute__((noinline)) unsigned int _Random(void);

__attribute__((noinline)) unsigned int _Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int _Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int _Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int _Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int _Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int _Get_Rise_Run(void);

__attribute__((noinline)) int _Xform_Run_a(volatile const int a);
__attribute__((noinline)) int _Xform_Run(void);
__attribute__((noinline)) int _Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int _Xform_Rise(void);
# 354 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_C8_RAM(void);
__attribute__((noinline)) void _Clear_x_256(void* volatile const x);
__attribute__((noinline)) void _Clear_x_d(void* volatile const x, volatile const long unsigned int d);







__attribute__((noinline)) void _Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void _Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void _Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 385 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void _Read_Btns(void);
__attribute__((noinline)) void _Joy_Analog(void);
__attribute__((noinline)) void _Joy_Digital(void);
# 433 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Select_Game(volatile const unsigned int b, volatile const unsigned int a);
__attribute__((noinline)) void _Display_Option(volatile const unsigned int b, const void* const x);
# 446 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Reset(void);
__attribute__((noinline)) void _Init_VIA(void);
__attribute__((noinline)) void _Init_OS_RAM(void);
__attribute__((noinline)) void _Init_OS(void);
__attribute__((noinline)) void _Init_Music_Buf(void);
# 474 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_Score(void* volatile const x);
__attribute__((noinline)) void _Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Add_Score_d(void* volatile const x, volatile const long unsigned int d);
__attribute__((noinline)) void _Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int _Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _New_High_Score(void* volatile const x, void* volatile const u);
# 498 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void _Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_Sound(void);
__attribute__((noinline)) void _Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void _Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Do_Sound(void);
__attribute__((noinline)) void _Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void _Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void _Init_Music(void* volatile const u);
__attribute__((noinline)) void _Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Init_Music_x(void* volatile const u);
__attribute__((noinline)) void _Stop_Sound(void);
__attribute__((noinline)) void _Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void _Set_Amp(volatile const unsigned int b);
# 552 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void _Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Moveto_ix(void* volatile const x);
__attribute__((noinline)) void _Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd(volatile const long int d);
# 571 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Intensity_1F(void);
__attribute__((noinline)) void _Intensity_3F(void);
__attribute__((noinline)) void _Intensity_5F(void);
__attribute__((noinline)) void _Intensity_7F(void);
__attribute__((noinline)) void _Intensity_a(volatile const unsigned int a);
# 584 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int _Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int _Obj_Hit(volatile int a, volatile const int b, volatile const long int x, volatile const long int y);
# 601 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) long unsigned int _Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void _Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL(void* volatile const x, void* volatile const u);




__attribute__((noinline)) void _Rot_VL_M_dft(void* volatile const x, void* volatile const u);
# 655 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_y(volatile const long int y);
__attribute__((noinline)) void _Dot_py(void* volatile const y);

__attribute__((noinline)) void _Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void _Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void _Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int _Rnd_Cone(void);

__attribute__((noinline)) long unsigned int _Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int _Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int _Ranpos(void);
__attribute__((noinline)) void _Draw_Scores(void);
__attribute__((noinline)) void _Draw_Score(void);
__attribute__((noinline)) void _Wait_Bound(void);
# 44 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h" 2
# 98 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Recal(void)
{
 __Wait_Recal();
}
# 125 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Recalibrate(void)
{
 __Recalibrate();
}
# 140 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref_D0(void)
{
 __Reset0Ref_D0();
}
# 156 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Check0Ref(void)
{
 __Check0Ref();
}
# 169 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref(void)
{
 __Reset0Ref();
}
# 185 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset_Pen(void)
{
 __Reset_Pen();
}
# 198 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Int(void)
{
 __Reset0Int();
}
# 220 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void)
{
 __Dec_3_Counters();
}
# 235 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_6_Counters(void)
{
 __Dec_6_Counters();
}
# 250 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_Counters(const unsigned int b, void* const x)
{
 __Dec_Counters(b, x);
}
# 269 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_D0(void)
{
 __DP_to_D0();
}
# 282 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_C8(void)
{
 __DP_to_C8();
}
# 304 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_3(void)
{
 __Delay_3();
}
# 316 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_2(void)
{
 __Delay_2();
}
# 328 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_1(void)
{
 __Delay_1();
}
# 340 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_0(void)
{
 __Delay_0();
}
# 352 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_b(const unsigned int b)
{
 __Delay_b(b);
}






static inline __attribute__((always_inline)) void Delay_RTS(void)
{
 __Delay_RTS();
}
# 393 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix_b(const unsigned int b, void* const x)
{
 __Dot_ix_b(b, x);
}
# 412 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix(void* const x)
{
 __Dot_ix(x);
}
# 429 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_d(const int a, const int b)
{
 _Dot_d(b, a);
}

static inline __attribute__((always_inline)) void Dot_dd(const long int d)
{
 _Dot_dd(d);
}
# 448 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_here(void)
{
 __Dot_here();
}
# 471 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List(void* const x)
{
 __Dot_List(x);
}
# 495 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List_Reset(void* const x)
{
 __Dot_List_Reset(x);
}
# 530 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* const u)
{
 _Print_Str_hwyx(u);
}
# 551 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_yx(const void* const u)
{
 _Print_Str_yx(u);
}
# 573 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_d(const int a, const int b, void* const u)
{
 _Print_Str_d(b, a, u);
}

static inline __attribute__((always_inline)) void Print_Str_dd(const long int d, void* const u)
{
 _Print_Str_dd(d, u);
}
# 601 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_hw(void* const u)
{
 _Print_List_hw(u);
}
# 624 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List(void* const u)
{
 _Print_List(u);
}
# 647 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_chk(void* const u)
{
 _Print_List_chk(u);
}
# 668 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Print_Ships_x(b, a, x);
}
# 689 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships(const unsigned int a, const unsigned int b, const unsigned long int x)
{
 _Print_Ships(b, a, x);
}
# 709 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str(void* const u)
{
 _Print_Str(u);
}
# 729 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_MRast(void)
{
 _Print_MRast();
}
# 792 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_aa(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_aa(a, x);
}
# 819 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_a(a, x);
}
# 846 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* const x)
{
 __Draw_Pat_VL(x);
}
# 874 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Line_d(const int a, const int b)
{
 _Draw_Line_d(b, a);
}
# 898 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLc(void* const x)
{
 __Draw_VLc(x);
}
# 922 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Draw_VL_ab(b, a, x);
}
# 946 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL(void* const x)
{
 __Draw_VL(x);
}
# 970 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLcs(void* const x)
{
 __Draw_VLcs(x);
}
# 994 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_b(const unsigned int b, void* const x)
{
 __Draw_VL_b(b, x);
}
# 1018 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_a(const unsigned int a, void* const x)
{
 _Draw_VL_a(a, x);
}
# 1058 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* const x)
{
 __Mov_Draw_VLc_a(x);
}
# 1081 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(const unsigned int b, void* const x)
{
 __Mov_Draw_VL_b(b, x);
}
# 1105 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* const x)
{
 __Mov_Draw_VLcs(x);
}
# 1129 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Mov_Draw_VL_ab(b, a, x);
}
# 1153 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(const unsigned int a, void* const x)
{
 _Mov_Draw_VL_a(a, x);
}
# 1177 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* const x)
{
 __Mov_Draw_VL(x);
}
# 1198 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(const int a, const int b)
{
 _Mov_Draw_VL_d(b, a);
}
# 1231 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(const const void* x)
{
 __Draw_VL_mode(x);
}
# 1258 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* const x)
{
 __Draw_VLp_7F(x);
}
# 1286 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* const x)
{
 __Draw_VLp_FF(x);
}
# 1312 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_b(const unsigned int b, void* const x)
{
 __Draw_VLp_b(b, x);
}
# 1338 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp(void* const x)
{
 __Draw_VLp(x);
}
# 1364 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* const x)
{
 __Draw_VLp_scale(x);
}
# 1387 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Mode(const unsigned int a, void* const x, void* const u)
{
 _Rot_VL_Mode(a, x, u);
}
# 1410 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* const x, void* const u)
{
 _Rot_VL_Pack(x, u);
}
# 1433 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_M_dft(void* const x, void* const u)
{
 _Rot_VL_M_dft(x, u);
}
# 1479 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void)
{
 return _Random_3();
}
# 1492 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random(void)
{
 return _Random();
}
# 1514 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Bitmask_a(const unsigned int a)
{
 return _Bitmask_a(a);
}
# 1530 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Abs_a_b(const int a, const int b)
{
 return _Abs_a_b(b, a);
}
# 1544 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Abs_b(const int b)
{
 return __Abs_b(b);
}
# 1560 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(const int a, const int b)
{
 return _Rise_Run_Angle(b, a);
}
# 1574 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(const int a)
{
 return _Get_Rise_Idx(a);
}
# 1588 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Sin(const int a)
{
 return _Xform_Sin(a);
}
# 1603 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void)
{
 return _Get_Rise_Run();
}
# 1619 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run_a(const int a)
{
 return _Xform_Run_a(a);
}
# 1634 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run(void)
{
 return _Xform_Run();
}
# 1650 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise_a(const int a)
{
 return _Xform_Rise_a(a);
}
# 1665 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise(void)
{
 return _Xform_Rise();
}
# 1687 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b(const unsigned int b, void* const x)
{
 __Clear_x_b(b, x);
}
# 1700 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_C8_RAM(void)
{
 __Clear_C8_RAM();
}
# 1712 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_256(void* const x)
{
 __Clear_x_256(x);
}
# 1725 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_d(const long unsigned int d, void* const x)
{
 _Clear_x_d(x, d);
}
# 1746 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a_1(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a_1(a, x, u);
}
# 1761 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a(a, x, u);
}







static inline __attribute__((always_inline)) void Clear_x_b_80(const int b, void* const x)
{
 __Clear_x_b_80(b, x);
}

static inline __attribute__((always_inline)) void Clear_x_b_a(const unsigned int a, const unsigned int b, void* const x)
{
 _Clear_x_b_a(b, a, x);
}
# 1800 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(const unsigned int a)
{
 _Read_Btns_Mask(a);
}
# 1814 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns(void)
{
 __Read_Btns();
}
# 1847 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Analog(void)
{
 __Joy_Analog();
}
# 1876 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Digital(void)
{
 __Joy_Digital();
}
# 1939 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Select_Game(const unsigned int a, const unsigned int b)
{
 _Select_Game(b, a);
}
# 1956 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Display_Option(const unsigned int a, const void* const y)
{
 _Display_Option(a, y);
}
# 1971 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset(void)
{
 __Reset();
}
# 1989 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_VIA(void)
{
 __Init_VIA();
}
# 2013 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS_RAM(void)
{
 __Init_OS_RAM();
}
# 2039 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS(void)
{
 __Init_OS();
}
# 2055 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_Buf(void)
{
 __Init_Music_Buf();
}
# 2098 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Score(void* const x)
{
 __Clear_Score(x);
}
# 2122 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_a(const unsigned int a, void* const x)
{
 _Add_Score_a(a, x);
}
# 2145 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_d(const long unsigned int d, void* const x)
{
 _Add_Score_d(x, d);
}



static inline __attribute__((always_inline)) void Strip_Zeros(const unsigned int b, void* const x)
{
 __Strip_Zeros(b, x);
}
# 2178 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Compare_Score(void* const x, void* const u)
{
 return _Compare_Score(x, u);
}
# 2202 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void New_High_Score(void* const x, void* const u)
{
 _New_High_Score(x, u);
}
# 2234 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte(const unsigned int a, const unsigned int b)
{
 _Sound_Byte(b, a);
}
# 2249 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Sound_Byte_x(b, a, x);
}
# 2263 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Sound(void)
{
 __Clear_Sound();
}
# 2278 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes(void* const u)
{
 _Sound_Bytes(u);
}
# 2293 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* const x, void* const u)
{
 _Sound_Bytes_x(x, u);
}
# 2309 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Do_Sound(void)
{
 _Do_Sound();
}
# 2346 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_chk(const const void* u)
{
 _Init_Music_chk(u);
}
# 2390 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music(void* const u)
{
 _Init_Music(u);
}
# 2418 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_a(void* const x, void* const u)
{
 _Init_Music_a(x, u);
}
# 2447 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_x(void* const u)
{
 _Init_Music_x(u);
}
# 2462 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Stop_Sound(void)
{
 __Stop_Sound();
}
# 2497 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Explosion_Snd(const const void* u)
{
 _Explosion_Snd(u);
}
# 2512 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Set_Amp(const unsigned int b)
{
 __Set_Amp(b);
}
# 2570 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* const x)
{
 __Moveto_x_7F(x);
}
# 2585 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d_7F(const int a, const int b)
{
 _Moveto_d_7F(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd_7F(const long int d)
{
 _Moveto_dd_7F(d);
}
# 2609 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* const x)
{
 __Moveto_ix_FF(x);
}
# 2628 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* const x)
{
 __Moveto_ix_7F(x);
}
# 2648 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_b(const unsigned int b, void* const x)
{
 __Moveto_ix_b(b, x);
}
# 2666 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix(void* const x)
{
 __Moveto_ix(x);
}
# 2684 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d(const int a, const int b)
{
 _Moveto_d(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd(const long int d)
{
 _Moveto_dd(d);
}
# 2713 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_1F(void)
{
 __Intensity_1F();
}
# 2728 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_3F(void)
{
 __Intensity_3F();
}
# 2743 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_5F(void)
{
 __Intensity_5F();
}
# 2758 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_7F(void)
{
 __Intensity_7F();
}
# 2775 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_a(const unsigned int a)
{
 _Intensity_a(a);
}
# 2798 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(const int a, const int b, const long int x, const long int y, const long int u)
{
 return _Obj_Will_Hit_u(b, a, x, y, u);
}
# 2814 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(const int a, const int b, const long int x, const long int y, const long int* u)
{
 return _Obj_Will_Hit(b, a, x, y, u);
}
# 2829 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Hit(const int a, const int b, const long int x, const long int y)
{
 return _Obj_Hit(b, a, x, y);
}
# 2856 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(const int a, const int b)
{
 return _Rise_Run_X(b, a);
}
# 2871 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(const int a, const int b)
{
 return _Rise_Run_Y(b, a);
}
# 2886 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned long int Rise_Run_Len(const int a)
{
 return _Rise_Run_Len(a);
}
# 2909 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_ab(const unsigned int a, const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_ab(b, a, x, u);
}
# 2931 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Diff(const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_Diff(b, x, u);
}
# 2954 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL(void* const x, void* const u)
{
 _Rot_VL(x, u);
}
# 3009 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_y(const long int y)
{
 _Dot_y(y);
}
# 3023 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_py(void* const y)
{
 _Dot_py(y);
}
# 3048 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack(const unsigned int b, void* const x, const long int y)
{
 _Draw_Pack(b, x, y);
}
# 3071 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack_py(const unsigned int b, void* const x, void* const y)
{
 _Draw_Pack_py(b, x, y);
}
# 3089 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Msg(void* const y, void* const u)
{
 _Print_Msg(y, u);
}
# 3101 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void)
{
 return __Rnd_Cone();
}
# 3116 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ8_xy(const unsigned int a, const unsigned int b)
{
 return _Displ8_xy(b, a);
}
# 3131 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(const unsigned int a, const unsigned int b)
{
 return _Displ16_xy(b, a);
}
# 3145 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Ranpos(void)
{
 return _Ranpos();
}
# 3171 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Scores(void)
{
 _Draw_Scores();
}
# 3197 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Score(void)
{
 _Draw_Score();
}
# 3221 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Bound(void)
{
 _Wait_Bound();
}
# 41 "..\\..\\gcc6809\\vectrex\\include/vec_rum_fct.h" 2
# 45 "..\\..\\gcc6809\\vectrex\\include/vec_rum.h" 2
# 44 "..\\..\\gcc6809\\vectrex\\include/vectrex.h" 2
# 7 "source\\utils\\/math.h" 2
# 530 "source\\utils\\/math.h"
extern const int* const sine_64;
extern const int* const cosine_64;
extern const int* const n_sine_64;
extern const int* const a_sine_64;

extern const int* const sine_32;
extern const int* const sine_16;
# 6 "source\\utils\\math.c" 2
# 18 "source\\utils\\math.c"
const int trigonometry_64[] =
{
 (int) (0 * 64),
 (int) (0.0245412 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0980171 * 64),
 (int) (0.122411 * 64),
 (int) (0.14673 * 64),
 (int) (0.170962 * 64),
 (int) (0.19509 * 64),
 (int) (0.219101 * 64),
 (int) (0.24298 * 64),
 (int) (0.266713 * 64),
 (int) (0.290285 * 64),
 (int) (0.313682 * 64),
 (int) (0.33689 * 64),
 (int) (0.359895 * 64),
 (int) (0.382683 * 64),
 (int) (0.405241 * 64),
 (int) (0.427555 * 64),
 (int) (0.449611 * 64),
 (int) (0.471397 * 64),
 (int) (0.492898 * 64),
 (int) (0.514103 * 64),
 (int) (0.534998 * 64),
 (int) (0.55557 * 64),
 (int) (0.575808 * 64),
 (int) (0.595699 * 64),
 (int) (0.615232 * 64),
 (int) (0.634393 * 64),
 (int) (0.653173 * 64),
 (int) (0.671559 * 64),
 (int) (0.689541 * 64),
 (int) (0.707107 * 64),
 (int) (0.724247 * 64),
 (int) (0.740951 * 64),
 (int) (0.757209 * 64),
 (int) (0.77301 * 64),
 (int) (0.788346 * 64),
 (int) (0.803208 * 64),
 (int) (0.817585 * 64),
 (int) (0.83147 * 64),
 (int) (0.844854 * 64),
 (int) (0.857729 * 64),
 (int) (0.870087 * 64),
 (int) (0.881921 * 64),
 (int) (0.893224 * 64),
 (int) (0.903989 * 64),
 (int) (0.91421 * 64),
 (int) (0.92388 * 64),
 (int) (0.932993 * 64),
 (int) (0.941544 * 64),
 (int) (0.949528 * 64),
 (int) (0.95694 * 64),
 (int) (0.963776 * 64),
 (int) (0.970031 * 64),
 (int) (0.975702 * 64),
 (int) (0.980785 * 64),
 (int) (0.985278 * 64),
 (int) (0.989177 * 64),
 (int) (0.99248 * 64),
 (int) (0.995185 * 64),
 (int) (0.99729 * 64),
 (int) (0.998795 * 64),
 (int) (0.999699 * 64),
 (int) (1 * 64),
 (int) (0.999699 * 64),
 (int) (0.998795 * 64),
 (int) (0.99729 * 64),
 (int) (0.995185 * 64),
 (int) (0.99248 * 64),
 (int) (0.989177 * 64),
 (int) (0.985278 * 64),
 (int) (0.980785 * 64),
 (int) (0.975702 * 64),
 (int) (0.970031 * 64),
 (int) (0.963776 * 64),
 (int) (0.95694 * 64),
 (int) (0.949528 * 64),
 (int) (0.941544 * 64),
 (int) (0.932993 * 64),
 (int) (0.92388 * 64),
 (int) (0.91421 * 64),
 (int) (0.903989 * 64),
 (int) (0.893224 * 64),
 (int) (0.881921 * 64),
 (int) (0.870087 * 64),
 (int) (0.857729 * 64),
 (int) (0.844854 * 64),
 (int) (0.83147 * 64),
 (int) (0.817585 * 64),
 (int) (0.803208 * 64),
 (int) (0.788346 * 64),
 (int) (0.77301 * 64),
 (int) (0.757209 * 64),
 (int) (0.740951 * 64),
 (int) (0.724247 * 64),
 (int) (0.707107 * 64),
 (int) (0.689541 * 64),
 (int) (0.671559 * 64),
 (int) (0.653173 * 64),
 (int) (0.634393 * 64),
 (int) (0.615232 * 64),
 (int) (0.595699 * 64),
 (int) (0.575808 * 64),
 (int) (0.55557 * 64),
 (int) (0.534998 * 64),
 (int) (0.514103 * 64),
 (int) (0.492898 * 64),
 (int) (0.471397 * 64),
 (int) (0.449611 * 64),
 (int) (0.427555 * 64),
 (int) (0.405241 * 64),
 (int) (0.382683 * 64),
 (int) (0.359895 * 64),
 (int) (0.33689 * 64),
 (int) (0.313682 * 64),
 (int) (0.290285 * 64),
 (int) (0.266713 * 64),
 (int) (0.24298 * 64),
 (int) (0.219101 * 64),
 (int) (0.19509 * 64),
 (int) (0.170962 * 64),
 (int) (0.14673 * 64),
 (int) (0.122411 * 64),
 (int) (0.0980171 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0245412 * 64),
 (int) (0 * 64),
 (int) (-0.0245412 * 64),
 (int) (-0.0490677 * 64),
 (int) (-0.0735646 * 64),
 (int) (-0.0980171 * 64),
 (int) (-0.122411 * 64),
 (int) (-0.14673 * 64),
 (int) (-0.170962 * 64),
 (int) (-0.19509 * 64),
 (int) (-0.219101 * 64),
 (int) (-0.24298 * 64),
 (int) (-0.266713 * 64),
 (int) (-0.290285 * 64),
 (int) (-0.313682 * 64),
 (int) (-0.33689 * 64),
 (int) (-0.359895 * 64),
 (int) (-0.382683 * 64),
 (int) (-0.405241 * 64),
 (int) (-0.427555 * 64),
 (int) (-0.449611 * 64),
 (int) (-0.471397 * 64),
 (int) (-0.492898 * 64),
 (int) (-0.514103 * 64),
 (int) (-0.534998 * 64),
 (int) (-0.55557 * 64),
 (int) (-0.575808 * 64),
 (int) (-0.595699 * 64),
 (int) (-0.615232 * 64),
 (int) (-0.634393 * 64),
 (int) (-0.653173 * 64),
 (int) (-0.671559 * 64),
 (int) (-0.689541 * 64),
 (int) (-0.707107 * 64),
 (int) (-0.724247 * 64),
 (int) (-0.740951 * 64),
 (int) (-0.757209 * 64),
 (int) (-0.77301 * 64),
 (int) (-0.788346 * 64),
 (int) (-0.803208 * 64),
 (int) (-0.817585 * 64),
 (int) (-0.83147 * 64),
 (int) (-0.844854 * 64),
 (int) (-0.857729 * 64),
 (int) (-0.870087 * 64),
 (int) (-0.881921 * 64),
 (int) (-0.893224 * 64),
 (int) (-0.903989 * 64),
 (int) (-0.91421 * 64),
 (int) (-0.92388 * 64),
 (int) (-0.932993 * 64),
 (int) (-0.941544 * 64),
 (int) (-0.949528 * 64),
 (int) (-0.95694 * 64),
 (int) (-0.963776 * 64),
 (int) (-0.970031 * 64),
 (int) (-0.975702 * 64),
 (int) (-0.980785 * 64),
 (int) (-0.985278 * 64),
 (int) (-0.989177 * 64),
 (int) (-0.99248 * 64),
 (int) (-0.995185 * 64),
 (int) (-0.99729 * 64),
 (int) (-0.998795 * 64),
 (int) (-0.999699 * 64),
 (int) (-1 * 64),
 (int) (-0.999699 * 64),
 (int) (-0.998795 * 64),
 (int) (-0.99729 * 64),
 (int) (-0.995185 * 64),
 (int) (-0.99248 * 64),
 (int) (-0.989177 * 64),
 (int) (-0.985278 * 64),
 (int) (-0.980785 * 64),
 (int) (-0.975702 * 64),
 (int) (-0.970031 * 64),
 (int) (-0.963776 * 64),
 (int) (-0.95694 * 64),
 (int) (-0.949528 * 64),
 (int) (-0.941544 * 64),
 (int) (-0.932993 * 64),
 (int) (-0.92388 * 64),
 (int) (-0.91421 * 64),
 (int) (-0.903989 * 64),
 (int) (-0.893224 * 64),
 (int) (-0.881921 * 64),
 (int) (-0.870087 * 64),
 (int) (-0.857729 * 64),
 (int) (-0.844854 * 64),
 (int) (-0.83147 * 64),
 (int) (-0.817585 * 64),
 (int) (-0.803208 * 64),
 (int) (-0.788346 * 64),
 (int) (-0.77301 * 64),
 (int) (-0.757209 * 64),
 (int) (-0.740951 * 64),
 (int) (-0.724247 * 64),
 (int) (-0.707107 * 64),
 (int) (-0.689541 * 64),
 (int) (-0.671559 * 64),
 (int) (-0.653173 * 64),
 (int) (-0.634393 * 64),
 (int) (-0.615232 * 64),
 (int) (-0.595699 * 64),
 (int) (-0.575808 * 64),
 (int) (-0.55557 * 64),
 (int) (-0.534998 * 64),
 (int) (-0.514103 * 64),
 (int) (-0.492898 * 64),
 (int) (-0.471397 * 64),
 (int) (-0.449611 * 64),
 (int) (-0.427555 * 64),
 (int) (-0.405241 * 64),
 (int) (-0.382683 * 64),
 (int) (-0.359895 * 64),
 (int) (-0.33689 * 64),
 (int) (-0.313682 * 64),
 (int) (-0.290285 * 64),
 (int) (-0.266713 * 64),
 (int) (-0.24298 * 64),
 (int) (-0.219101 * 64),
 (int) (-0.19509 * 64),
 (int) (-0.170962 * 64),
 (int) (-0.14673 * 64),
 (int) (-0.122411 * 64),
 (int) (-0.0980171 * 64),
 (int) (-0.0735646 * 64),
 (int) (-0.0490677 * 64),
 (int) (-0.0245412 * 64),
 (int) (0 * 64),
 (int) (0.0245412 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0980171 * 64),
 (int) (0.122411 * 64),
 (int) (0.14673 * 64),
 (int) (0.170962 * 64),
 (int) (0.19509 * 64),
 (int) (0.219101 * 64),
 (int) (0.24298 * 64),
 (int) (0.266713 * 64),
 (int) (0.290285 * 64),
 (int) (0.313682 * 64),
 (int) (0.33689 * 64),
 (int) (0.359895 * 64),
 (int) (0.382683 * 64),
 (int) (0.405241 * 64),
 (int) (0.427555 * 64),
 (int) (0.449611 * 64),
 (int) (0.471397 * 64),
 (int) (0.492898 * 64),
 (int) (0.514103 * 64),
 (int) (0.534998 * 64),
 (int) (0.55557 * 64),
 (int) (0.575808 * 64),
 (int) (0.595699 * 64),
 (int) (0.615232 * 64),
 (int) (0.634393 * 64),
 (int) (0.653173 * 64),
 (int) (0.671559 * 64),
 (int) (0.689541 * 64),
 (int) (0.707107 * 64),
 (int) (0.724247 * 64),
 (int) (0.740951 * 64),
 (int) (0.757209 * 64),
 (int) (0.77301 * 64),
 (int) (0.788346 * 64),
 (int) (0.803208 * 64),
 (int) (0.817585 * 64),
 (int) (0.83147 * 64),
 (int) (0.844854 * 64),
 (int) (0.857729 * 64),
 (int) (0.870087 * 64),
 (int) (0.881921 * 64),
 (int) (0.893224 * 64),
 (int) (0.903989 * 64),
 (int) (0.91421 * 64),
 (int) (0.92388 * 64),
 (int) (0.932993 * 64),
 (int) (0.941544 * 64),
 (int) (0.949528 * 64),
 (int) (0.95694 * 64),
 (int) (0.963776 * 64),
 (int) (0.970031 * 64),
 (int) (0.975702 * 64),
 (int) (0.980785 * 64),
 (int) (0.985278 * 64),
 (int) (0.989177 * 64),
 (int) (0.99248 * 64),
 (int) (0.995185 * 64),
 (int) (0.99729 * 64),
 (int) (0.998795 * 64),
 (int) (0.999699 * 64),
 (int) (1 * 64),
 (int) (0.999699 * 64),
 (int) (0.998795 * 64),
 (int) (0.99729 * 64),
 (int) (0.995185 * 64),
 (int) (0.99248 * 64),
 (int) (0.989177 * 64),
 (int) (0.985278 * 64),
 (int) (0.980785 * 64),
 (int) (0.975702 * 64),
 (int) (0.970031 * 64),
 (int) (0.963776 * 64),
 (int) (0.95694 * 64),
 (int) (0.949528 * 64),
 (int) (0.941544 * 64),
 (int) (0.932993 * 64),
 (int) (0.92388 * 64),
 (int) (0.91421 * 64),
 (int) (0.903989 * 64),
 (int) (0.893224 * 64),
 (int) (0.881921 * 64),
 (int) (0.870087 * 64),
 (int) (0.857729 * 64),
 (int) (0.844854 * 64),
 (int) (0.83147 * 64),
 (int) (0.817585 * 64),
 (int) (0.803208 * 64),
 (int) (0.788346 * 64),
 (int) (0.77301 * 64),
 (int) (0.757209 * 64),
 (int) (0.740951 * 64),
 (int) (0.724247 * 64),
 (int) (0.707107 * 64),
 (int) (0.689541 * 64),
 (int) (0.671559 * 64),
 (int) (0.653173 * 64),
 (int) (0.634393 * 64),
 (int) (0.615232 * 64),
 (int) (0.595699 * 64),
 (int) (0.575808 * 64),
 (int) (0.55557 * 64),
 (int) (0.534998 * 64),
 (int) (0.514103 * 64),
 (int) (0.492898 * 64),
 (int) (0.471397 * 64),
 (int) (0.449611 * 64),
 (int) (0.427555 * 64),
 (int) (0.405241 * 64),
 (int) (0.382683 * 64),
 (int) (0.359895 * 64),
 (int) (0.33689 * 64),
 (int) (0.313682 * 64),
 (int) (0.290285 * 64),
 (int) (0.266713 * 64),
 (int) (0.24298 * 64),
 (int) (0.219101 * 64),
 (int) (0.19509 * 64),
 (int) (0.170962 * 64),
 (int) (0.14673 * 64),
 (int) (0.122411 * 64),
 (int) (0.0980171 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0245412 * 64),
 (int) (0 * 64),
 (int) (0.0245412 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0980171 * 64),
 (int) (0.122411 * 64),
 (int) (0.14673 * 64),
 (int) (0.170962 * 64),
 (int) (0.19509 * 64),
 (int) (0.219101 * 64),
 (int) (0.24298 * 64),
 (int) (0.266713 * 64),
 (int) (0.290285 * 64),
 (int) (0.313682 * 64),
 (int) (0.33689 * 64),
 (int) (0.359895 * 64),
 (int) (0.382683 * 64),
 (int) (0.405241 * 64),
 (int) (0.427555 * 64),
 (int) (0.449611 * 64),
 (int) (0.471397 * 64),
 (int) (0.492898 * 64),
 (int) (0.514103 * 64),
 (int) (0.534998 * 64),
 (int) (0.55557 * 64),
 (int) (0.575808 * 64),
 (int) (0.595699 * 64),
 (int) (0.615232 * 64),
 (int) (0.634393 * 64),
 (int) (0.653173 * 64),
 (int) (0.671559 * 64),
 (int) (0.689541 * 64),
 (int) (0.707107 * 64),
 (int) (0.724247 * 64),
 (int) (0.740951 * 64),
 (int) (0.757209 * 64),
 (int) (0.77301 * 64),
 (int) (0.788346 * 64),
 (int) (0.803208 * 64),
 (int) (0.817585 * 64),
 (int) (0.83147 * 64),
 (int) (0.844854 * 64),
 (int) (0.857729 * 64),
 (int) (0.870087 * 64),
 (int) (0.881921 * 64),
 (int) (0.893224 * 64),
 (int) (0.903989 * 64),
 (int) (0.91421 * 64),
 (int) (0.92388 * 64),
 (int) (0.932993 * 64),
 (int) (0.941544 * 64),
 (int) (0.949528 * 64),
 (int) (0.95694 * 64),
 (int) (0.963776 * 64),
 (int) (0.970031 * 64),
 (int) (0.975702 * 64),
 (int) (0.980785 * 64),
 (int) (0.985278 * 64),
 (int) (0.989177 * 64),
 (int) (0.99248 * 64),
 (int) (0.995185 * 64),
 (int) (0.99729 * 64),
 (int) (0.998795 * 64),
 (int) (0.999699 * 64),
 (int) (1 * 64),
 (int) (0.999699 * 64),
 (int) (0.998795 * 64),
 (int) (0.99729 * 64),
 (int) (0.995185 * 64),
 (int) (0.99248 * 64),
 (int) (0.989177 * 64),
 (int) (0.985278 * 64),
 (int) (0.980785 * 64),
 (int) (0.975702 * 64),
 (int) (0.970031 * 64),
 (int) (0.963776 * 64),
 (int) (0.95694 * 64),
 (int) (0.949528 * 64),
 (int) (0.941544 * 64),
 (int) (0.932993 * 64),
 (int) (0.92388 * 64),
 (int) (0.91421 * 64),
 (int) (0.903989 * 64),
 (int) (0.893224 * 64),
 (int) (0.881921 * 64),
 (int) (0.870087 * 64),
 (int) (0.857729 * 64),
 (int) (0.844854 * 64),
 (int) (0.83147 * 64),
 (int) (0.817585 * 64),
 (int) (0.803208 * 64),
 (int) (0.788346 * 64),
 (int) (0.77301 * 64),
 (int) (0.757209 * 64),
 (int) (0.740951 * 64),
 (int) (0.724247 * 64),
 (int) (0.707107 * 64),
 (int) (0.689541 * 64),
 (int) (0.671559 * 64),
 (int) (0.653173 * 64),
 (int) (0.634393 * 64),
 (int) (0.615232 * 64),
 (int) (0.595699 * 64),
 (int) (0.575808 * 64),
 (int) (0.55557 * 64),
 (int) (0.534998 * 64),
 (int) (0.514103 * 64),
 (int) (0.492898 * 64),
 (int) (0.471397 * 64),
 (int) (0.449611 * 64),
 (int) (0.427555 * 64),
 (int) (0.405241 * 64),
 (int) (0.382683 * 64),
 (int) (0.359895 * 64),
 (int) (0.33689 * 64),
 (int) (0.313682 * 64),
 (int) (0.290285 * 64),
 (int) (0.266713 * 64),
 (int) (0.24298 * 64),
 (int) (0.219101 * 64),
 (int) (0.19509 * 64),
 (int) (0.170962 * 64),
 (int) (0.14673 * 64),
 (int) (0.122411 * 64),
 (int) (0.0980171 * 64),
 (int) (0.0735646 * 64),
 (int) (0.0490677 * 64),
 (int) (0.0245412 * 64),
};

const int* const sine_64 = &(trigonometry_64[0]);
const int* const cosine_64 = &(trigonometry_64[64]);
const int* const n_sine_64 = &(trigonometry_64[128]);
const int* const a_sine_64 = &(trigonometry_64[256]);






const int trigonometry_32[] =
{
 (int) (0 * 32),
 (int) (0.0245412 * 32),
 (int) (0.0490677 * 32),
 (int) (0.0735646 * 32),
 (int) (0.0980171 * 32),
 (int) (0.122411 * 32),
 (int) (0.14673 * 32),
 (int) (0.170962 * 32),
 (int) (0.19509 * 32),
 (int) (0.219101 * 32),
 (int) (0.24298 * 32),
 (int) (0.266713 * 32),
 (int) (0.290285 * 32),
 (int) (0.313682 * 32),
 (int) (0.33689 * 32),
 (int) (0.359895 * 32),
 (int) (0.382683 * 32),
 (int) (0.405241 * 32),
 (int) (0.427555 * 32),
 (int) (0.449611 * 32),
 (int) (0.471397 * 32),
 (int) (0.492898 * 32),
 (int) (0.514103 * 32),
 (int) (0.534998 * 32),
 (int) (0.55557 * 32),
 (int) (0.575808 * 32),
 (int) (0.595699 * 32),
 (int) (0.615232 * 32),
 (int) (0.634393 * 32),
 (int) (0.653173 * 32),
 (int) (0.671559 * 32),
 (int) (0.689541 * 32),
 (int) (0.707107 * 32),
 (int) (0.724247 * 32),
 (int) (0.740951 * 32),
 (int) (0.757209 * 32),
 (int) (0.77301 * 32),
 (int) (0.788346 * 32),
 (int) (0.803208 * 32),
 (int) (0.817585 * 32),
 (int) (0.83147 * 32),
 (int) (0.844854 * 32),
 (int) (0.857729 * 32),
 (int) (0.870087 * 32),
 (int) (0.881921 * 32),
 (int) (0.893224 * 32),
 (int) (0.903989 * 32),
 (int) (0.91421 * 32),
 (int) (0.92388 * 32),
 (int) (0.932993 * 32),
 (int) (0.941544 * 32),
 (int) (0.949528 * 32),
 (int) (0.95694 * 32),
 (int) (0.963776 * 32),
 (int) (0.970031 * 32),
 (int) (0.975702 * 32),
 (int) (0.980785 * 32),
 (int) (0.985278 * 32),
 (int) (0.989177 * 32),
 (int) (0.99248 * 32),
 (int) (0.995185 * 32),
 (int) (0.99729 * 32),
 (int) (0.998795 * 32),
 (int) (0.999699 * 32),
 (int) (1 * 32),
 (int) (0.999699 * 32),
 (int) (0.998795 * 32),
 (int) (0.99729 * 32),
 (int) (0.995185 * 32),
 (int) (0.99248 * 32),
 (int) (0.989177 * 32),
 (int) (0.985278 * 32),
 (int) (0.980785 * 32),
 (int) (0.975702 * 32),
 (int) (0.970031 * 32),
 (int) (0.963776 * 32),
 (int) (0.95694 * 32),
 (int) (0.949528 * 32),
 (int) (0.941544 * 32),
 (int) (0.932993 * 32),
 (int) (0.92388 * 32),
 (int) (0.91421 * 32),
 (int) (0.903989 * 32),
 (int) (0.893224 * 32),
 (int) (0.881921 * 32),
 (int) (0.870087 * 32),
 (int) (0.857729 * 32),
 (int) (0.844854 * 32),
 (int) (0.83147 * 32),
 (int) (0.817585 * 32),
 (int) (0.803208 * 32),
 (int) (0.788346 * 32),
 (int) (0.77301 * 32),
 (int) (0.757209 * 32),
 (int) (0.740951 * 32),
 (int) (0.724247 * 32),
 (int) (0.707107 * 32),
 (int) (0.689541 * 32),
 (int) (0.671559 * 32),
 (int) (0.653173 * 32),
 (int) (0.634393 * 32),
 (int) (0.615232 * 32),
 (int) (0.595699 * 32),
 (int) (0.575808 * 32),
 (int) (0.55557 * 32),
 (int) (0.534998 * 32),
 (int) (0.514103 * 32),
 (int) (0.492898 * 32),
 (int) (0.471397 * 32),
 (int) (0.449611 * 32),
 (int) (0.427555 * 32),
 (int) (0.405241 * 32),
 (int) (0.382683 * 32),
 (int) (0.359895 * 32),
 (int) (0.33689 * 32),
 (int) (0.313682 * 32),
 (int) (0.290285 * 32),
 (int) (0.266713 * 32),
 (int) (0.24298 * 32),
 (int) (0.219101 * 32),
 (int) (0.19509 * 32),
 (int) (0.170962 * 32),
 (int) (0.14673 * 32),
 (int) (0.122411 * 32),
 (int) (0.0980171 * 32),
 (int) (0.0735646 * 32),
 (int) (0.0490677 * 32),
 (int) (0.0245412 * 32),
 (int) (0 * 32),
 (int) (-0.0245412 * 32),
 (int) (-0.0490677 * 32),
 (int) (-0.0735646 * 32),
 (int) (-0.0980171 * 32),
 (int) (-0.122411 * 32),
 (int) (-0.14673 * 32),
 (int) (-0.170962 * 32),
 (int) (-0.19509 * 32),
 (int) (-0.219101 * 32),
 (int) (-0.24298 * 32),
 (int) (-0.266713 * 32),
 (int) (-0.290285 * 32),
 (int) (-0.313682 * 32),
 (int) (-0.33689 * 32),
 (int) (-0.359895 * 32),
 (int) (-0.382683 * 32),
 (int) (-0.405241 * 32),
 (int) (-0.427555 * 32),
 (int) (-0.449611 * 32),
 (int) (-0.471397 * 32),
 (int) (-0.492898 * 32),
 (int) (-0.514103 * 32),
 (int) (-0.534998 * 32),
 (int) (-0.55557 * 32),
 (int) (-0.575808 * 32),
 (int) (-0.595699 * 32),
 (int) (-0.615232 * 32),
 (int) (-0.634393 * 32),
 (int) (-0.653173 * 32),
 (int) (-0.671559 * 32),
 (int) (-0.689541 * 32),
 (int) (-0.707107 * 32),
 (int) (-0.724247 * 32),
 (int) (-0.740951 * 32),
 (int) (-0.757209 * 32),
 (int) (-0.77301 * 32),
 (int) (-0.788346 * 32),
 (int) (-0.803208 * 32),
 (int) (-0.817585 * 32),
 (int) (-0.83147 * 32),
 (int) (-0.844854 * 32),
 (int) (-0.857729 * 32),
 (int) (-0.870087 * 32),
 (int) (-0.881921 * 32),
 (int) (-0.893224 * 32),
 (int) (-0.903989 * 32),
 (int) (-0.91421 * 32),
 (int) (-0.92388 * 32),
 (int) (-0.932993 * 32),
 (int) (-0.941544 * 32),
 (int) (-0.949528 * 32),
 (int) (-0.95694 * 32),
 (int) (-0.963776 * 32),
 (int) (-0.970031 * 32),
 (int) (-0.975702 * 32),
 (int) (-0.980785 * 32),
 (int) (-0.985278 * 32),
 (int) (-0.989177 * 32),
 (int) (-0.99248 * 32),
 (int) (-0.995185 * 32),
 (int) (-0.99729 * 32),
 (int) (-0.998795 * 32),
 (int) (-0.999699 * 32),
 (int) (-1 * 32),
 (int) (-0.999699 * 32),
 (int) (-0.998795 * 32),
 (int) (-0.99729 * 32),
 (int) (-0.995185 * 32),
 (int) (-0.99248 * 32),
 (int) (-0.989177 * 32),
 (int) (-0.985278 * 32),
 (int) (-0.980785 * 32),
 (int) (-0.975702 * 32),
 (int) (-0.970031 * 32),
 (int) (-0.963776 * 32),
 (int) (-0.95694 * 32),
 (int) (-0.949528 * 32),
 (int) (-0.941544 * 32),
 (int) (-0.932993 * 32),
 (int) (-0.92388 * 32),
 (int) (-0.91421 * 32),
 (int) (-0.903989 * 32),
 (int) (-0.893224 * 32),
 (int) (-0.881921 * 32),
 (int) (-0.870087 * 32),
 (int) (-0.857729 * 32),
 (int) (-0.844854 * 32),
 (int) (-0.83147 * 32),
 (int) (-0.817585 * 32),
 (int) (-0.803208 * 32),
 (int) (-0.788346 * 32),
 (int) (-0.77301 * 32),
 (int) (-0.757209 * 32),
 (int) (-0.740951 * 32),
 (int) (-0.724247 * 32),
 (int) (-0.707107 * 32),
 (int) (-0.689541 * 32),
 (int) (-0.671559 * 32),
 (int) (-0.653173 * 32),
 (int) (-0.634393 * 32),
 (int) (-0.615232 * 32),
 (int) (-0.595699 * 32),
 (int) (-0.575808 * 32),
 (int) (-0.55557 * 32),
 (int) (-0.534998 * 32),
 (int) (-0.514103 * 32),
 (int) (-0.492898 * 32),
 (int) (-0.471397 * 32),
 (int) (-0.449611 * 32),
 (int) (-0.427555 * 32),
 (int) (-0.405241 * 32),
 (int) (-0.382683 * 32),
 (int) (-0.359895 * 32),
 (int) (-0.33689 * 32),
 (int) (-0.313682 * 32),
 (int) (-0.290285 * 32),
 (int) (-0.266713 * 32),
 (int) (-0.24298 * 32),
 (int) (-0.219101 * 32),
 (int) (-0.19509 * 32),
 (int) (-0.170962 * 32),
 (int) (-0.14673 * 32),
 (int) (-0.122411 * 32),
 (int) (-0.0980171 * 32),
 (int) (-0.0735646 * 32),
 (int) (-0.0490677 * 32),
 (int) (-0.0245412 * 32),
};

const int* const sine_32 = &(trigonometry_32[0]);






const int trigonometry_16[] =
{
 (int) (0 * 16),
 (int) (0.0245412 * 16),
 (int) (0.0490677 * 16),
 (int) (0.0735646 * 16),
 (int) (0.0980171 * 16),
 (int) (0.122411 * 16),
 (int) (0.14673 * 16),
 (int) (0.170962 * 16),
 (int) (0.19509 * 16),
 (int) (0.219101 * 16),
 (int) (0.24298 * 16),
 (int) (0.266713 * 16),
 (int) (0.290285 * 16),
 (int) (0.313682 * 16),
 (int) (0.33689 * 16),
 (int) (0.359895 * 16),
 (int) (0.382683 * 16),
 (int) (0.405241 * 16),
 (int) (0.427555 * 16),
 (int) (0.449611 * 16),
 (int) (0.471397 * 16),
 (int) (0.492898 * 16),
 (int) (0.514103 * 16),
 (int) (0.534998 * 16),
 (int) (0.55557 * 16),
 (int) (0.575808 * 16),
 (int) (0.595699 * 16),
 (int) (0.615232 * 16),
 (int) (0.634393 * 16),
 (int) (0.653173 * 16),
 (int) (0.671559 * 16),
 (int) (0.689541 * 16),
 (int) (0.707107 * 16),
 (int) (0.724247 * 16),
 (int) (0.740951 * 16),
 (int) (0.757209 * 16),
 (int) (0.77301 * 16),
 (int) (0.788346 * 16),
 (int) (0.803208 * 16),
 (int) (0.817585 * 16),
 (int) (0.83147 * 16),
 (int) (0.844854 * 16),
 (int) (0.857729 * 16),
 (int) (0.870087 * 16),
 (int) (0.881921 * 16),
 (int) (0.893224 * 16),
 (int) (0.903989 * 16),
 (int) (0.91421 * 16),
 (int) (0.92388 * 16),
 (int) (0.932993 * 16),
 (int) (0.941544 * 16),
 (int) (0.949528 * 16),
 (int) (0.95694 * 16),
 (int) (0.963776 * 16),
 (int) (0.970031 * 16),
 (int) (0.975702 * 16),
 (int) (0.980785 * 16),
 (int) (0.985278 * 16),
 (int) (0.989177 * 16),
 (int) (0.99248 * 16),
 (int) (0.995185 * 16),
 (int) (0.99729 * 16),
 (int) (0.998795 * 16),
 (int) (0.999699 * 16),
 (int) (1 * 16),
 (int) (0.999699 * 16),
 (int) (0.998795 * 16),
 (int) (0.99729 * 16),
 (int) (0.995185 * 16),
 (int) (0.99248 * 16),
 (int) (0.989177 * 16),
 (int) (0.985278 * 16),
 (int) (0.980785 * 16),
 (int) (0.975702 * 16),
 (int) (0.970031 * 16),
 (int) (0.963776 * 16),
 (int) (0.95694 * 16),
 (int) (0.949528 * 16),
 (int) (0.941544 * 16),
 (int) (0.932993 * 16),
 (int) (0.92388 * 16),
 (int) (0.91421 * 16),
 (int) (0.903989 * 16),
 (int) (0.893224 * 16),
 (int) (0.881921 * 16),
 (int) (0.870087 * 16),
 (int) (0.857729 * 16),
 (int) (0.844854 * 16),
 (int) (0.83147 * 16),
 (int) (0.817585 * 16),
 (int) (0.803208 * 16),
 (int) (0.788346 * 16),
 (int) (0.77301 * 16),
 (int) (0.757209 * 16),
 (int) (0.740951 * 16),
 (int) (0.724247 * 16),
 (int) (0.707107 * 16),
 (int) (0.689541 * 16),
 (int) (0.671559 * 16),
 (int) (0.653173 * 16),
 (int) (0.634393 * 16),
 (int) (0.615232 * 16),
 (int) (0.595699 * 16),
 (int) (0.575808 * 16),
 (int) (0.55557 * 16),
 (int) (0.534998 * 16),
 (int) (0.514103 * 16),
 (int) (0.492898 * 16),
 (int) (0.471397 * 16),
 (int) (0.449611 * 16),
 (int) (0.427555 * 16),
 (int) (0.405241 * 16),
 (int) (0.382683 * 16),
 (int) (0.359895 * 16),
 (int) (0.33689 * 16),
 (int) (0.313682 * 16),
 (int) (0.290285 * 16),
 (int) (0.266713 * 16),
 (int) (0.24298 * 16),
 (int) (0.219101 * 16),
 (int) (0.19509 * 16),
 (int) (0.170962 * 16),
 (int) (0.14673 * 16),
 (int) (0.122411 * 16),
 (int) (0.0980171 * 16),
 (int) (0.0735646 * 16),
 (int) (0.0490677 * 16),
 (int) (0.0245412 * 16),
 (int) (0 * 16),
 (int) (-0.0245412 * 16),
 (int) (-0.0490677 * 16),
 (int) (-0.0735646 * 16),
 (int) (-0.0980171 * 16),
 (int) (-0.122411 * 16),
 (int) (-0.14673 * 16),
 (int) (-0.170962 * 16),
 (int) (-0.19509 * 16),
 (int) (-0.219101 * 16),
 (int) (-0.24298 * 16),
 (int) (-0.266713 * 16),
 (int) (-0.290285 * 16),
 (int) (-0.313682 * 16),
 (int) (-0.33689 * 16),
 (int) (-0.359895 * 16),
 (int) (-0.382683 * 16),
 (int) (-0.405241 * 16),
 (int) (-0.427555 * 16),
 (int) (-0.449611 * 16),
 (int) (-0.471397 * 16),
 (int) (-0.492898 * 16),
 (int) (-0.514103 * 16),
 (int) (-0.534998 * 16),
 (int) (-0.55557 * 16),
 (int) (-0.575808 * 16),
 (int) (-0.595699 * 16),
 (int) (-0.615232 * 16),
 (int) (-0.634393 * 16),
 (int) (-0.653173 * 16),
 (int) (-0.671559 * 16),
 (int) (-0.689541 * 16),
 (int) (-0.707107 * 16),
 (int) (-0.724247 * 16),
 (int) (-0.740951 * 16),
 (int) (-0.757209 * 16),
 (int) (-0.77301 * 16),
 (int) (-0.788346 * 16),
 (int) (-0.803208 * 16),
 (int) (-0.817585 * 16),
 (int) (-0.83147 * 16),
 (int) (-0.844854 * 16),
 (int) (-0.857729 * 16),
 (int) (-0.870087 * 16),
 (int) (-0.881921 * 16),
 (int) (-0.893224 * 16),
 (int) (-0.903989 * 16),
 (int) (-0.91421 * 16),
 (int) (-0.92388 * 16),
 (int) (-0.932993 * 16),
 (int) (-0.941544 * 16),
 (int) (-0.949528 * 16),
 (int) (-0.95694 * 16),
 (int) (-0.963776 * 16),
 (int) (-0.970031 * 16),
 (int) (-0.975702 * 16),
 (int) (-0.980785 * 16),
 (int) (-0.985278 * 16),
 (int) (-0.989177 * 16),
 (int) (-0.99248 * 16),
 (int) (-0.995185 * 16),
 (int) (-0.99729 * 16),
 (int) (-0.998795 * 16),
 (int) (-0.999699 * 16),
 (int) (-1 * 16),
 (int) (-0.999699 * 16),
 (int) (-0.998795 * 16),
 (int) (-0.99729 * 16),
 (int) (-0.995185 * 16),
 (int) (-0.99248 * 16),
 (int) (-0.989177 * 16),
 (int) (-0.985278 * 16),
 (int) (-0.980785 * 16),
 (int) (-0.975702 * 16),
 (int) (-0.970031 * 16),
 (int) (-0.963776 * 16),
 (int) (-0.95694 * 16),
 (int) (-0.949528 * 16),
 (int) (-0.941544 * 16),
 (int) (-0.932993 * 16),
 (int) (-0.92388 * 16),
 (int) (-0.91421 * 16),
 (int) (-0.903989 * 16),
 (int) (-0.893224 * 16),
 (int) (-0.881921 * 16),
 (int) (-0.870087 * 16),
 (int) (-0.857729 * 16),
 (int) (-0.844854 * 16),
 (int) (-0.83147 * 16),
 (int) (-0.817585 * 16),
 (int) (-0.803208 * 16),
 (int) (-0.788346 * 16),
 (int) (-0.77301 * 16),
 (int) (-0.757209 * 16),
 (int) (-0.740951 * 16),
 (int) (-0.724247 * 16),
 (int) (-0.707107 * 16),
 (int) (-0.689541 * 16),
 (int) (-0.671559 * 16),
 (int) (-0.653173 * 16),
 (int) (-0.634393 * 16),
 (int) (-0.615232 * 16),
 (int) (-0.595699 * 16),
 (int) (-0.575808 * 16),
 (int) (-0.55557 * 16),
 (int) (-0.534998 * 16),
 (int) (-0.514103 * 16),
 (int) (-0.492898 * 16),
 (int) (-0.471397 * 16),
 (int) (-0.449611 * 16),
 (int) (-0.427555 * 16),
 (int) (-0.405241 * 16),
 (int) (-0.382683 * 16),
 (int) (-0.359895 * 16),
 (int) (-0.33689 * 16),
 (int) (-0.313682 * 16),
 (int) (-0.290285 * 16),
 (int) (-0.266713 * 16),
 (int) (-0.24298 * 16),
 (int) (-0.219101 * 16),
 (int) (-0.19509 * 16),
 (int) (-0.170962 * 16),
 (int) (-0.14673 * 16),
 (int) (-0.122411 * 16),
 (int) (-0.0980171 * 16),
 (int) (-0.0735646 * 16),
 (int) (-0.0490677 * 16),
 (int) (-0.0245412 * 16),
};

const int* const sine_16 = &(trigonometry_16[0]);
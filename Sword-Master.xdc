## This file is a general .xdc for the Sword Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 200MHz Differential Clock Signal
#set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { clk_p }]; #IO_L12P_T1_MRCC_33 Sch=fpga_sysclk_p
#set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { clk_n }]; #IO_L12N_T1_MRCC_33 Sch=fpga_sysclk_n
#create_clock -add -name sys_clk_pin -period 5.00 -waveform {0 2.5} [get_ports clk_p]

## User Reset Button
#set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS15 } [get_ports { rst }]; #IO_0_VRN_33 Sch=user_rst

## Switches
#set_property -dict { PACKAGE_PIN AG19  IOSTANDARD LVCMOS18 } [get_ports { sw[0] }];  #IO_L8P_T1_32      Sch=sw[0]
#set_property -dict { PACKAGE_PIN AH19  IOSTANDARD LVCMOS18 } [get_ports { sw[1] }];  #IO_L8N_T1_32      Sch=sw[1]
#set_property -dict { PACKAGE_PIN AH17  IOSTANDARD LVCMOS18 } [get_ports { sw[2] }];  #IO_L5P_T0_32      Sch=sw[2]
#set_property -dict { PACKAGE_PIN AF16  IOSTANDARD LVCMOS18 } [get_ports { sw[3] }];  #IO_L6N_T0_VREF_32 Sch=sw[3]
#set_property -dict { PACKAGE_PIN AH16  IOSTANDARD LVCMOS18 } [get_ports { sw[4] }];  #IO_L3P_T0_DQS_32  Sch=sw[4]
#set_property -dict { PACKAGE_PIN AE16  IOSTANDARD LVCMOS18 } [get_ports { sw[5] }];  #IO_L6P_T0_32      Sch=sw[5]
#set_property -dict { PACKAGE_PIN AJ19  IOSTANDARD LVCMOS18 } [get_ports { sw[6] }];  #IO_L7P_T1_32      Sch=sw[6]
#set_property -dict { PACKAGE_PIN AK19  IOSTANDARD LVCMOS18 } [get_ports { sw[7] }];  #IO_L7N_T1_32      Sch=sw[7]
#set_property -dict { PACKAGE_PIN AJ17  IOSTANDARD LVCMOS18 } [get_ports { sw[8] }];  #IO_L5N_T0_32      Sch=sw[8]
#set_property -dict { PACKAGE_PIN AJ16  IOSTANDARD LVCMOS18 } [get_ports { sw[9] }];  #IO_L3N_T0_DQS_32  Sch=sw[9]
#set_property -dict { PACKAGE_PIN AK16  IOSTANDARD LVCMOS18 } [get_ports { sw[10] }]; #IO_L1P_T0_32      Sch=sw[10]
#set_property -dict { PACKAGE_PIN AK15  IOSTANDARD LVCMOS18 } [get_ports { sw[11] }]; #IO_L1N_T0_32      Sch=sw[11]
#set_property -dict { PACKAGE_PIN AG15  IOSTANDARD LVCMOS18 } [get_ports { sw[12] }]; #IO_L2P_T0_32      Sch=sw[12]
#set_property -dict { PACKAGE_PIN AH15  IOSTANDARD LVCMOS18 } [get_ports { sw[13] }]; #IO_L2N_T0_32      Sch=sw[13]
#set_property -dict { PACKAGE_PIN AG14  IOSTANDARD LVCMOS18 } [get_ports { sw[14] }]; #IO_L4N_T0_32      Sch=sw[14]
#set_property -dict { PACKAGE_PIN AF15  IOSTANDARD LVCMOS18 } [get_ports { sw[15] }]; #IO_L4P_T0_32      Sch=sw[15]

## RGB LEDs
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { led16_b }]; #IO_L19P_T3_18 Sch=led16_b
#set_property -dict { PACKAGE_PIN E14   IOSTANDARD LVCMOS33 } [get_ports { led16_g }]; #IO_L20P_T3_18 Sch=led16_g
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { led16_r }]; #IO_L19N_T3_VREF_18 Sch=led16_r
#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { led17_b }]; #IO_L20N_T3_18 Sch=led17_b
#set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { led17_g }]; #IO_L21N_T3_DQS_18 Sch=led17_g
#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { led17_r }]; #IO_L21P_T3_DQS_18 Sch=led17_r

## LEDs
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L9P_T1_DQS_18 Sch=ld[0]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L9N_T1_DQS_18 Sch=ld[1]
#set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L10P_T1_18 Sch=ld[2]
#set_property -dict { PACKAGE_PIN H12   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L10N_T1_18 Sch=ld[3]
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { led[4] }]; #IO_L11P_T1_SRCC_18 Sch=ld[4]
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led[5] }]; #IO_L11N_T1_SRCC_18 Sch=ld[5]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { led[6] }]; #IO_L12P_T1_MRCC_18 Sch=ld[6]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { led[7] }]; #IO_L12N_T1_MRCC_18 Sch=ld[7]
#set_property -dict { PACKAGE_PIN F12   IOSTANDARD LVCMOS33 } [get_ports { led[8] }]; #IO_L14P_T2_SRCC_18 Sch=ld[8]
#set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { led[9] }]; #IO_L14N_T2_SRCC_18 Sch=ld[9]
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { led[10] }]; #IO_L15P_T2_DQS_18 Sch=ld[10]
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { led[11] }]; #IO_L15N_T2_DQS_18 Sch=ld[11]
#set_property -dict { PACKAGE_PIN F11   IOSTANDARD LVCMOS33 } [get_ports { led[12] }]; #IO_L16P_T2_18 Sch=ld[12]
#set_property -dict { PACKAGE_PIN AB27  IOSTANDARD LVCMOS33 } [get_ports { led[13] }]; #IO_L12P_T1_MRCC_13 Sch=ld[13]
#set_property -dict { PACKAGE_PIN AC27  IOSTANDARD LVCMOS33 } [get_ports { led[14] }]; #IO_L12N_T1_MRCC_13 Sch=ld[14]
#set_property -dict { PACKAGE_PIN G30   IOSTANDARD LVCMOS33 } [get_ports { led[15] }]; #IO_L24N_T3_16 Sch=ld[15]

## Twenty-Five Button Keypad
#set_property -dict { PACKAGE_PIN AE13  IOSTANDARD LVCMOS15 } [get_ports { btn_c[0] }]; #IO_L19P_T3_33 Sch=btn_c[0]
#set_property -dict { PACKAGE_PIN AJ14  IOSTANDARD LVCMOS15 } [get_ports { btn_c[1] }]; #IO_L21N_T3_DQS_33 Sch=btn_c[1]
#set_property -dict { PACKAGE_PIN AJ13  IOSTANDARD LVCMOS15 } [get_ports { btn_c[2] }]; #IO_L22P_T3_33 Sch=btn_c[2]
#set_property -dict { PACKAGE_PIN AH14  IOSTANDARD LVCMOS15 } [get_ports { btn_c[3] }]; #IO_L21P_T3_DQS_33 Sch=btn_c[3]
#set_property -dict { PACKAGE_PIN AG12  IOSTANDARD LVCMOS15 } [get_ports { btn_c[4] }]; #IO_L23N_T3_33 Sch=btn_c[4]
#set_property -dict { PACKAGE_PIN AK14  IOSTANDARD LVCMOS15 } [get_ports { btn_r[0] }]; #IO_L20P_T3_33 Sch=btn_r[0]
#set_property -dict { PACKAGE_PIN AK13  IOSTANDARD LVCMOS15 } [get_ports { btn_r[1] }]; #IO_L20N_T3_33 Sch=btn_r[1]
#set_property -dict { PACKAGE_PIN AJ12  IOSTANDARD LVCMOS15 } [get_ports { btn_r[2] }]; #IO_L22N_T3_33 Sch=btn_r[2]
#set_property -dict { PACKAGE_PIN AF12  IOSTANDARD LVCMOS15 } [get_ports { btn_r[3] }]; #IO_L23P_T3_33 Sch=btn_r[3]
#set_property -dict { PACKAGE_PIN AH10  IOSTANDARD LVCMOS15 } [get_ports { btn_r[4] }]; #IO_L13N_T2_MRCC_33 Sch=btn_r[4]

## Seven Segment Display
#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { sseg_clk }]; #IO_L17P_T2_18 Sch=7seg_clk
#set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { sseg_en }]; #IO_L17N_T2_18 Sch=7seg_en
#set_property -dict { PACKAGE_PIN E11   IOSTANDARD LVCMOS33 } [get_ports { sseg_sdo }]; #IO_L16N_T2_18 Sch=7seg_sdo

## Pmod Header JA
#set_property -dict { PACKAGE_PIN E24   IOSTANDARD LVCMOS33 } [get_ports { ja_p[0] }]; #IO_L4P_T0_16 Sch=ja_p[1]
#set_property -dict { PACKAGE_PIN D24   IOSTANDARD LVCMOS33 } [get_ports { ja_n[0] }]; #IO_L4N_T0_16 Sch=ja_n[1]
#set_property -dict { PACKAGE_PIN G23   IOSTANDARD LVCMOS33 } [get_ports { ja_p[1] }]; #IO_L6P_T0_16 Sch=ja_p[2]
#set_property -dict { PACKAGE_PIN G24   IOSTANDARD LVCMOS33 } [get_ports { ja_n[1] }]; #IO_L6N_T0_VREF_16 Sch=ja_n[2]
#set_property -dict { PACKAGE_PIN F26   IOSTANDARD LVCMOS33 } [get_ports { ja_p[2] }]; #IO_L5P_T0_16 Sch=ja_p[3]
#set_property -dict { PACKAGE_PIN E26   IOSTANDARD LVCMOS33 } [get_ports { ja_n[2] }]; #IO_L5N_T0_16 Sch=ja_n[3]
#set_property -dict { PACKAGE_PIN B27   IOSTANDARD LVCMOS33 } [get_ports { ja_p[3] }]; #IO_L7P_T1_16 Sch=ja_p[4]
#set_property -dict { PACKAGE_PIN A27   IOSTANDARD LVCMOS33 } [get_ports { ja_n[3] }]; #IO_L7N_T1_16 Sch=ja_n[4]

## Pmod Header JB
#set_property -dict { PACKAGE_PIN B28   IOSTANDARD LVCMOS33 } [get_ports { jb_p[0] }]; #IO_L9P_T1_DQS_16 Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN A28   IOSTANDARD LVCMOS33 } [get_ports { jb_n[0] }]; #IO_L9N_T1_DQS_16 Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN A25   IOSTANDARD LVCMOS33 } [get_ports { jb_p[1] }]; #IO_L10P_T1_16 Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN A26   IOSTANDARD LVCMOS33 } [get_ports { jb_n[1] }]; #IO_L10N_T1_16 Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN D26   IOSTANDARD LVCMOS33 } [get_ports { jb_p[2] }]; #IO_L11P_T1_SRCC_16 Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN C26   IOSTANDARD LVCMOS33 } [get_ports { jb_n[2] }]; #IO_L11N_T1_SRCC_16 Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN C25   IOSTANDARD LVCMOS33 } [get_ports { jb_p[3] }]; #IO_L12P_T1_MRCC_16 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN B25   IOSTANDARD LVCMOS33 } [get_ports { jb_n[3] }]; #IO_L12N_T1_MRCC_16 Sch=jb_n[4]

## Pmod Header JC
#set_property -dict { PACKAGE_PIN E28   IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L14P_T2_SRCC_16 Sch=jc[1]
#set_property -dict { PACKAGE_PIN D28   IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L14N_T2_SRCC_16 Sch=jc[2]
#set_property -dict { PACKAGE_PIN C29   IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L15P_T2_DQS_16 Sch=jc[3]
#set_property -dict { PACKAGE_PIN B29   IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L15N_T2_DQS_16 Sch=jc[4]
#set_property -dict { PACKAGE_PIN D29   IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L16P_T2_16 Sch=jc[7]
#set_property -dict { PACKAGE_PIN C30   IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L16N_T2_16 Sch=jc[8]
#set_property -dict { PACKAGE_PIN B30   IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L17P_T2_16 Sch=jc[9]
#set_property -dict { PACKAGE_PIN A30   IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L17N_T2_16 Sch=jc[10]

## Pmod Header JD
#set_property -dict { PACKAGE_PIN E29   IOSTANDARD LVCMOS33 } [get_ports { jd[0] }]; #IO_L18P_T2_16 Sch=jd[1]
#set_property -dict { PACKAGE_PIN E30   IOSTANDARD LVCMOS33 } [get_ports { jd[1] }]; #IO_L18N_T2_16 Sch=jd[2]
#set_property -dict { PACKAGE_PIN H24   IOSTANDARD LVCMOS33 } [get_ports { jd[2] }]; #IO_L19P_T3_16 Sch=jd[3]
#set_property -dict { PACKAGE_PIN H25   IOSTANDARD LVCMOS33 } [get_ports { jd[3] }]; #IO_L19N_T3_VREF_16 Sch=jd[4]
#set_property -dict { PACKAGE_PIN G28   IOSTANDARD LVCMOS33 } [get_ports { jd[4] }]; #IO_L20P_T3_16 Sch=jd[7]
#set_property -dict { PACKAGE_PIN F28   IOSTANDARD LVCMOS33 } [get_ports { jd[5] }]; #IO_L20N_T3_16 Sch=jd[8]
#set_property -dict { PACKAGE_PIN G27   IOSTANDARD LVCMOS33 } [get_ports { jd[6] }]; #IO_L21P_T3_DQS_16 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F27   IOSTANDARD LVCMOS33 } [get_ports { jd[7] }]; #IO_L21N_T3_DQS_16 Sch=jd[10]

## USB-UART Interface
## NOTE: 
#set_property -dict { PACKAGE_PIN F30   IOSTANDARD LVCMOS33 } [get_ports { uart_tx }]; #IO_L22N_T3_16 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN G29   IOSTANDARD LVCMOS33 } [get_ports { uart_rx }]; #IO_L22P_T3_16 Sch=uart_txd_in

## USB-HID PS/2 Interface for Keyboard
#set_property -dict { PACKAGE_PIN AF23  IOSTANDARD LVCMOS33 } [get_ports { ps2_keyboard_clk }]; #IO_L11N_T1_SRCC_12 Sch=ps2_clk[0]
#set_property -dict { PACKAGE_PIN AD23  IOSTANDARD LVCMOS33 } [get_ports { ps2_keyboard_data }]; #IO_L12P_T1_MRCC_12 Sch=ps2_data[0]

## USB-HID PS/2 Interface for Mouse
#set_property -dict { PACKAGE_PIN AE24  IOSTANDARD LVCMOS33 } [get_ports { ps2_mouse_clk }]; #IO_L12N_T1_MRCC_12 Sch=ps2_clk[1]
#set_property -dict { PACKAGE_PIN AF22  IOSTANDARD LVCMOS33 } [get_ports { ps2_mouse_data }]; #IO_L13P_T2_MRCC_12 Sch=ps2_data[1]

## Audio Codec
#set_property -dict { PACKAGE_PIN AJ18  IOSTANDARD LVCMOS18 } [get_ports { aud_adc_sdata }]; #IO_L9P_T1_DQS_32 Sch=aud_adc_sdata
#set_property -dict { PACKAGE_PIN AF18  IOSTANDARD LVCMOS18 } [get_ports { aud_adr[0] }]; #IO_L11P_T1_SRCC_32 Sch=aud_adr[0]
#set_property -dict { PACKAGE_PIN AG18  IOSTANDARD LVCMOS18 } [get_ports { aud_adr[1] }]; #IO_L11N_T1_SRCC_32 Sch=aud_adr[1]
#set_property -dict { PACKAGE_PIN AD19  IOSTANDARD LVCMOS18 } [get_ports { aud_bclk }]; #IO_L10P_T1_32 Sch=aud_bclk
#set_property -dict { PACKAGE_PIN AK18  IOSTANDARD LVCMOS18 } [get_ports { aud_dac_sdata }]; #IO_L9N_T1_DQS_32 Sch=aud_dac_sdata
#set_property -dict { PACKAGE_PIN AE19  IOSTANDARD LVCMOS18 } [get_ports { aud_lrclk }]; #IO_L10N_T1_32 Sch=aud_lrclk
#set_property -dict { PACKAGE_PIN AF17  IOSTANDARD LVCMOS18 } [get_ports { aud_mclk }]; #IO_L12P_T1_MRCC_32 Sch=aud_mclk
#set_property -dict { PACKAGE_PIN AB14  IOSTANDARD LVCMOS18 } [get_ports { aud_scl }]; #IO_25_VRP_32 Sch=aud_scl
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS18 } [get_ports { aud_sda }]; #IO_0_VRN_32 Sch=aud_sda

## Dedicated Analog Inputs
#set_property -dict { PACKAGE_PIN R15   } [get_ports { v_p }]; #VP_0 Sch=v_p
#set_property -dict { PACKAGE_PIN T14   } [get_ports { v_n }]; #VN_0 Sch=v_n

## ChipKit Outer Digital Header
#set_property -dict { PACKAGE_PIN N22   IOSTANDARD LVCMOS33 } [get_ports { ck_io0  }]; #IO_L20N_T3_A19_15 Sch=ck_io[0]
#set_property -dict { PACKAGE_PIN N25   IOSTANDARD LVCMOS33 } [get_ports { ck_io1  }]; #IO_L18P_T2_A24_15 Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { ck_io2  }]; #IO_L22N_T3_A16_15 Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN G25   IOSTANDARD LVCMOS33 } [get_ports { ck_io3  }]; #IO_25_16 Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN L25   IOSTANDARD LVCMOS33 } [get_ports { ck_io4  }]; #IO_L12P_T1_MRCC_AD5P_15 Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN M25   IOSTANDARD LVCMOS33 } [get_ports { ck_io5  }]; #IO_L23N_T3_FWE_B_15 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN L26   IOSTANDARD LVCMOS33 } [get_ports { ck_io6  }]; #IO_L11P_T1_SRCC_AD12P_15 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN K29   IOSTANDARD LVCMOS33 } [get_ports { ck_io7  }]; #IO_L13N_T2_MRCC_15 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN M29   IOSTANDARD LVCMOS33 } [get_ports { ck_io8  }]; #IO_L15P_T2_DQS_15 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M30   IOSTANDARD LVCMOS33 } [get_ports { ck_io9  }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=ck_io[9]

## ChipKit SPI Header
## NOTE: The ChipKit SPI header ports can also be used as digital I/O and share FPGA pins with ck_io10-13
#set_property -dict { PACKAGE_PIN L28   IOSTANDARD LVCMOS33 } [get_ports { ck_io10_ss   }]; #IO_L14N_T2_SRCC_15 Sch=ck_io10_ss
#set_property -dict { PACKAGE_PIN M27   IOSTANDARD LVCMOS33 } [get_ports { ck_io11_mosi }]; #IO_L16N_T2_A27_15 Sch=ck_io11_mosi
#set_property -dict { PACKAGE_PIN N29   IOSTANDARD LVCMOS33 } [get_ports { ck_io12_miso }]; #IO_L17P_T2_A26_15 Sch=ck_io12_miso
#set_property -dict { PACKAGE_PIN N30   IOSTANDARD LVCMOS33 } [get_ports { ck_io13_sck  }]; #IO_L17N_T2_A25_15 Sch=ck_io13_sck

## ChipKit Inner Digital Header
#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { ck_io26 }]; #IO_L6P_T0_15 Sch=ck_io[26]
#set_property -dict { PACKAGE_PIN N24   IOSTANDARD LVCMOS33 } [get_ports { ck_io27 }]; #IO_L21N_T3_DQS_A18_15 Sch=ck_io[27]
#set_property -dict { PACKAGE_PIN P23   IOSTANDARD LVCMOS33 } [get_ports { ck_io28 }]; #IO_L21P_T3_DQS_15 Sch=ck_io[28]
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { ck_io29 }]; #IO_0_15 Sch=ck_io[29]
#set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { ck_io30 }]; #IO_L22P_T3_A17_15 Sch=ck_io[30]
#set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { ck_io31 }]; #IO_L19N_T3_A21_VREF_15 Sch=ck_io[31]
#set_property -dict { PACKAGE_PIN F23   IOSTANDARD LVCMOS33 } [get_ports { ck_io32 }]; #IO_0_16 Sch=ck_io[32]
#set_property -dict { PACKAGE_PIN K28   IOSTANDARD LVCMOS33 } [get_ports { ck_io33 }]; #IO_L13P_T2_MRCC_15 	  	Sch=ck_io[33]
#set_property -dict { PACKAGE_PIN L27   IOSTANDARD LVCMOS33 } [get_ports { ck_io34 }]; #IO_L11N_T1_SRCC_AD12N_15 	Sch=ck_io[34]
#set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS33 } [get_ports { ck_io35 }]; #IO_L19P_T3_A22_15 			Sch=ck_io[35]
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { ck_io36 }]; #IO_25_15 Sch=ck_io[36]
#set_property -dict { PACKAGE_PIN M28   IOSTANDARD LVCMOS33 } [get_ports { ck_io37 }]; #IO_L14P_T2_SRCC_15 Sch=ck_io[37]
#set_property -dict { PACKAGE_PIN M22   IOSTANDARD LVCMOS33 } [get_ports { ck_io38 }]; #IO_L24P_T3_RS1_15 Sch=ck_io[38]
#set_property -dict { PACKAGE_PIN M23   IOSTANDARD LVCMOS33 } [get_ports { ck_io39 }]; #IO_L24N_T3_RS0_15 Sch=ck_io[39]
#set_property -dict { PACKAGE_PIN N27   IOSTANDARD LVCMOS33 } [get_ports { ck_io40 }]; #IO_L16P_T2_A28_15 Sch=ck_io[40]
#set_property -dict { PACKAGE_PIN N26   IOSTANDARD LVCMOS33 } [get_ports { ck_io41 }]; #IO_L18N_T2_A23_15 Sch=ck_io[41]

## ChipKit Outer Analog Header - as Single-Ended Analog Inputs
## NOTE: These ports can be used as single-ended analog inputs with voltages from 0-3.3V (ChipKit analog pins A0-A5) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
## NOTE: The following constraints should be used with the XADC IP core when using these ports as analog inputs.
#set_property -dict { PACKAGE_PIN J29   IOSTANDARD LVCMOS33 } [get_ports { vaux10_p }]; #IO_L7P_T1_AD10P_15 Sch=ck_an_p[0] ChipKit pin=A0
#set_property -dict { PACKAGE_PIN H29   IOSTANDARD LVCMOS33 } [get_ports { vaux10_n }]; #IO_L7N_T1_AD10N_15 Sch=ck_an_n[0] ChipKit pin=A0
#set_property -dict { PACKAGE_PIN L22   IOSTANDARD LVCMOS33 } [get_ports { vaux8_p }]; #IO_L2P_T0_AD8P_15 Sch=ck_an_p[1] ChipKit pin=A1
#set_property -dict { PACKAGE_PIN L23   IOSTANDARD LVCMOS33 } [get_ports { vaux8_n }]; #IO_L2N_T0_AD8N_15 Sch=ck_an_n[1] ChipKit pin=A1
#set_property -dict { PACKAGE_PIN J23   IOSTANDARD LVCMOS33 } [get_ports { vaux0_p }]; #IO_L1P_T0_AD0P_15 Sch=ck_an_p[2] ChipKit pin=A2
#set_property -dict { PACKAGE_PIN J24   IOSTANDARD LVCMOS33 } [get_ports { vaux0_n }]; #IO_L1N_T0_AD0N_15 Sch=ck_an_n[2] ChipKit pin=A2
#set_property -dict { PACKAGE_PIN K23   IOSTANDARD LVCMOS33 } [get_ports { vaux1_p }]; #IO_L3P_T0_DQS_AD1P_15 Sch=ck_an_p[3] ChipKit pin=A3
#set_property -dict { PACKAGE_PIN K24   IOSTANDARD LVCMOS33 } [get_ports { vaux1_n }]; #IO_L3N_T0_DQS_AD1N_15 Sch=ck_an_n[3] ChipKit pin=A3
#set_property -dict { PACKAGE_PIN L21   IOSTANDARD LVCMOS33 } [get_ports { vaux9_p }]; #IO_L4P_T0_AD9P_15 Sch=ck_an_p[4] ChipKit pin=A4
#set_property -dict { PACKAGE_PIN K21   IOSTANDARD LVCMOS33 } [get_ports { vaux9_n }]; #IO_L4N_T0_AD9N_15 Sch=ck_an_n[4] ChipKit pin=A4
#set_property -dict { PACKAGE_PIN J21   IOSTANDARD LVCMOS33 } [get_ports { vaux2_p }]; #IO_L5P_T0_AD2P_15 Sch=ck_an_p[5] ChipKit pin=A5
#set_property -dict { PACKAGE_PIN J22   IOSTANDARD LVCMOS33 } [get_ports { vaux2_n }]; #IO_L5N_T0_AD2N_15 Sch=ck_an_n[5] ChipKit pin=A5
## ChipKit Outer Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using these ports as digital I/O.
#set_property -dict { PACKAGE_PIN B23   IOSTANDARD LVCMOS33 } [get_ports { ck_a0 }]; #IO_L1P_T0_16 Sch=ck_a[0]
#set_property -dict { PACKAGE_PIN A23   IOSTANDARD LVCMOS33 } [get_ports { ck_a1 }]; #IO_L1N_T0_16 Sch=ck_a[1]
#set_property -dict { PACKAGE_PIN E23   IOSTANDARD LVCMOS33 } [get_ports { ck_a2 }]; #IO_L2P_T0_16 Sch=ck_a[2]
#set_property -dict { PACKAGE_PIN D23   IOSTANDARD LVCMOS33 } [get_ports { ck_a3 }]; #IO_L2N_T0_16 Sch=ck_a[3]
#set_property -dict { PACKAGE_PIN F25   IOSTANDARD LVCMOS33 } [get_ports { ck_a4 }]; #IO_L3P_T0_DQS_16 Sch=ck_a[4]
#set_property -dict { PACKAGE_PIN E25   IOSTANDARD LVCMOS33 } [get_ports { ck_a5 }]; #IO_L3N_T0_DQS_16 Sch=ck_a[5]

## ChipKit Inner Analog Header - as Differential Analog Inputs
## NOTE: These ports can be used as differential analog inputs with voltages from 0-1.0V (ChipKit analog pins A6-A11) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
## NOTE: The following constraints should be used with the XADC core when using these ports as analog inputs.
#set_property -dict { PACKAGE_PIN J27   IOSTANDARD LVCMOS33 } [get_ports { vaux3_p }]; #IO_L8P_T1_AD3P_15 Sch=fpga_ad_p[3] 		  ChipKit pin=A6
#set_property -dict { PACKAGE_PIN J28   IOSTANDARD LVCMOS33 } [get_ports { vaux3_n }]; #IO_L8N_T1_AD3N_15 Sch=fpga_ad_n[3] 		  ChipKit pin=A7
#set_property -dict { PACKAGE_PIN L30   IOSTANDARD LVCMOS33 } [get_ports { vaux11_p }]; #IO_L9P_T1_DQS_AD11P_15 Sch=fpga_ad_p[11] ChipKit pin=A8
#set_property -dict { PACKAGE_PIN K30   IOSTANDARD LVCMOS33 } [get_ports { vaux11_n }]; #IO_L9N_T1_DQS_AD11N_15 Sch=fpga_ad_n[11] ChipKit pin=A9
#set_property -dict { PACKAGE_PIN K26   IOSTANDARD LVCMOS33 } [get_ports { vaux4_p }]; #IO_L10P_T1_AD4P_15 Sch=fpga_ad_p[4] 	  ChipKit pin=A10
#set_property -dict { PACKAGE_PIN J26   IOSTANDARD LVCMOS33 } [get_ports { vaux4_n }]; #IO_L10N_T1_AD4N_15 Sch=fpga_ad_n[4] 	  ChipKit pin=A11
## ChipKit Inner Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using the inner analog header ports as digital I/O.
#set_property -dict { PACKAGE_PIN J28   IOSTANDARD LVCMOS33 } [get_ports { ck_a6  }]; #IO_L8N_T1_AD3N_15 Sch=fpga_ad_n[3]
#set_property -dict { PACKAGE_PIN J27   IOSTANDARD LVCMOS33 } [get_ports { ck_a7  }]; #IO_L8P_T1_AD3P_15 Sch=fpga_ad_p[3]
#set_property -dict { PACKAGE_PIN K30   IOSTANDARD LVCMOS33 } [get_ports { ck_a8  }]; #IO_L9N_T1_DQS_AD11N_15 Sch=fpga_ad_n[11]
#set_property -dict { PACKAGE_PIN L30   IOSTANDARD LVCMOS33 } [get_ports { ck_a9  }]; #IO_L9P_T1_DQS_AD11P_15 Sch=fpga_ad_p[11]
#set_property -dict { PACKAGE_PIN J26   IOSTANDARD LVCMOS33 } [get_ports { ck_a10 }]; #IO_L10N_T1_AD4N_15 Sch=fpga_ad_n[4]
#set_property -dict { PACKAGE_PIN K26   IOSTANDARD LVCMOS33 } [get_ports { ck_a11 }]; #IO_L10P_T1_AD4P_15 Sch=fpga_ad_p[4]

## ChipKit I2C
#set_property -dict { PACKAGE_PIN K25   IOSTANDARD LVCMOS33 } [get_ports { ck_scl }]; #IO_L12N_T1_MRCC_AD5N_15 Sch=ck_scl
#set_property -dict { PACKAGE_PIN N21   IOSTANDARD LVCMOS33 } [get_ports { ck_sda }]; #IO_L20P_T3_A20_15 Sch=ck_sda

## Misc. ChipKit signals
#set_property -dict { PACKAGE_PIN M24   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_L23P_T3_FOE_B_15 Sch=ck_ioa
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L6N_T0_VREF_15 Sch=ck_rst

## Fan Control
#set_property -dict { PACKAGE_PIN H27   IOSTANDARD LVCMOS33 } [get_ports { fan_pwm }]; #IO_L23N_T3_16 Sch=fan_pwm
#set_property -dict { PACKAGE_PIN H26   IOSTANDARD LVCMOS33 } [get_ports { fan_tach }]; #IO_L23P_T3_16 Sch=fan_tach

## USB Host Port
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { usbh_gpx }]; #IO_L22P_T3_18 Sch=usbh_gpx
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { usbh_int }]; #IO_L22N_T3_18 Sch=usbh_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { usbh_miso }]; #IO_L24P_T3_18 Sch=usbh_miso
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { usbh_mosi }]; #IO_L24N_T3_18 Sch=usbh_mosi
#set_property -dict { PACKAGE_PIN AD13  IOSTANDARD LVCMOS15 } [get_ports { usbh_rst }]; #IO_25_VRP_33 Sch=usbh_rst
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { usbh_sclk }]; #IO_L23P_T3_18 Sch=usbh_sclk
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { usbh_ss }]; #IO_L23N_T3_18 Sch=usbh_ss

## RS232 Connector
#set_property -dict { PACKAGE_PIN D11   IOSTANDARD LVCMOS33 } [get_ports { rs232_rxd }]; #IO_L18P_T2_18 Sch=uart1_rxd
#set_property -dict { PACKAGE_PIN G12   IOSTANDARD LVCMOS33 } [get_ports { rs232_txd }]; #IO_0_18 Sch=uart1_txd

# 3-Pin UART Connector (TTL-Compliant)
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ttl_rxd }]; #IO_L18N_T2_18 Sch=uart2_rxd
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { ttl_txd }]; #IO_25_18 Sch=uart2_txd

## VGA Connector
#set_property -dict { PACKAGE_PIN AA23  IOSTANDARD LVCMOS33 } [get_ports { vga_b[0] }]; #IO_L4N_T0_12 Sch=vga_b[3]
#set_property -dict { PACKAGE_PIN AC24  IOSTANDARD LVCMOS33 } [get_ports { vga_b[1] }]; #IO_L9P_T1_DQS_12 Sch=vga_b[4]
#set_property -dict { PACKAGE_PIN AD24  IOSTANDARD LVCMOS33 } [get_ports { vga_b[2] }]; #IO_L9N_T1_DQS_12 Sch=vga_b[5]
#set_property -dict { PACKAGE_PIN AB23  IOSTANDARD LVCMOS33 } [get_ports { vga_b[3] }]; #IO_L3N_T0_DQS_12 Sch=vga_b[6]
#set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { vga_b[4] }]; #IO_L3P_T0_DQS_12 Sch=vga_b[7]
#set_property -dict { PACKAGE_PIN AA22  IOSTANDARD LVCMOS33 } [get_ports { vga_g[0] }]; #IO_L4P_T0_12 Sch=vga_g[2]
#set_property -dict { PACKAGE_PIN AC21  IOSTANDARD LVCMOS33 } [get_ports { vga_g[1] }]; #IO_L5N_T0_12 Sch=vga_g[3]
#set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { vga_g[2] }]; #IO_L2P_T0_12 Sch=vga_g[4]
#set_property -dict { PACKAGE_PIN AC20  IOSTANDARD LVCMOS33 } [get_ports { vga_g[3] }]; #IO_L5P_T0_12 Sch=vga_g[5]
#set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { vga_g[4] }]; #IO_L6N_T0_VREF_12 Sch=vga_g[6]
#set_property -dict { PACKAGE_PIN AA20  IOSTANDARD LVCMOS33 } [get_ports { vga_g[5] }]; #IO_L6P_T0_12 Sch=vga_g[7]
#set_property -dict { PACKAGE_PIN AC25  IOSTANDARD LVCMOS33 } [get_ports { vga_r[0] }]; #IO_L7N_T1_12 Sch=vga_r[3]
#set_property -dict { PACKAGE_PIN AB24  IOSTANDARD LVCMOS33 } [get_ports { vga_r[1] }]; #IO_L7P_T1_12 Sch=vga_r[4]
#set_property -dict { PACKAGE_PIN Y24   IOSTANDARD LVCMOS33 } [get_ports { vga_r[2] }]; #IO_L1N_T0_12 Sch=vga_r[5]
#set_property -dict { PACKAGE_PIN Y23   IOSTANDARD LVCMOS33 } [get_ports { vga_r[3] }]; #IO_L1P_T0_12 Sch=vga_r[6]
#set_property -dict { PACKAGE_PIN AD22  IOSTANDARD LVCMOS33 } [get_ports { vga_r[4] }]; #IO_L8N_T1_12 Sch=vga_r[7]
#set_property -dict { PACKAGE_PIN AD21  IOSTANDARD LVCMOS33 } [get_ports { vga_hs }]; #IO_L10P_T1_12 Sch=vga_hs
#set_property -dict { PACKAGE_PIN AE23  IOSTANDARD LVCMOS33 } [get_ports { vga_vs }]; #IO_L11P_T1_SRCC_12 Sch=vga_vs
#set_property -dict { PACKAGE_PIN AC22  IOSTANDARD LVCMOS33 } [get_ports { vga_scl }]; #IO_L8P_T1_12 Sch=vga_scl
#set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { vga_sda }]; #IO_L2N_T0_12 Sch=vga_sda

## HDMI Input
#set_property -dict { PACKAGE_PIN AF21  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }]; #IO_L19N_T3_VREF_12 Sch=hdmi_rx_cec
#set_property -dict { PACKAGE_PIN AH29  IOSTANDARD LVDS     } [get_ports { hdmi_rx_clk_n }]; #IO_L13N_T2_MRCC_13 Sch=hdmi_rx_clk_n
#set_property -dict { PACKAGE_PIN AG29  IOSTANDARD LVDS     } [get_ports { hdmi_rx_clk_p }]; #IO_L13P_T2_MRCC_13 Sch=hdmi_rx_clk_p
#set_property -dict { PACKAGE_PIN AF20  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_hpa }]; #IO_L19P_T3_12 Sch=hdmi_rx_hpa
#set_property -dict { PACKAGE_PIN AK26  IOSTANDARD LVDS     } [get_ports { hdmi_rx_n[0] }]; #IO_L24N_T3_13 Sch=hdmi_rx_n[0]
#set_property -dict { PACKAGE_PIN AJ26  IOSTANDARD LVDS     } [get_ports { hdmi_rx_p[0] }]; #IO_L24P_T3_13 Sch=hdmi_rx_p[0]
#set_property -dict { PACKAGE_PIN AH27  IOSTANDARD LVDS     } [get_ports { hdmi_rx_n[1] }]; #IO_L22N_T3_13 Sch=hdmi_rx_n[1]
#set_property -dict { PACKAGE_PIN AH26  IOSTANDARD LVDS     } [get_ports { hdmi_rx_p[1] }]; #IO_L22P_T3_13 Sch=hdmi_rx_p[1]
#set_property -dict { PACKAGE_PIN AF27  IOSTANDARD LVDS     } [get_ports { hdmi_rx_n[2] }]; #IO_L23N_T3_13 Sch=hdmi_rx_n[2]
#set_property -dict { PACKAGE_PIN AF26  IOSTANDARD LVDS     } [get_ports { hdmi_rx_p[2] }]; #IO_L23P_T3_13 Sch=hdmi_rx_p[2]
#set_property -dict { PACKAGE_PIN AK24  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_scl }]; #IO_L17N_T2_12 Sch=hdmi_rx_scl
#set_property -dict { PACKAGE_PIN AK23  IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_sda }]; #IO_L17P_T2_12 Sch=hdmi_rx_sda

## HDMI Output
#set_property -dict { PACKAGE_PIN AH25  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L18N_T2_12 Sch=hdmi_tx_cec
#set_property -dict { PACKAGE_PIN AH20  IOSTANDARD LVDS     } [get_ports { hdmi_tx_clk_n }]; #IO_L22N_T3_12 Sch=hdmi_tx_clk_n
#set_property -dict { PACKAGE_PIN AG20  IOSTANDARD LVDS     } [get_ports { hdmi_tx_clk_p }]; #IO_L22P_T3_12 Sch=hdmi_tx_clk_p
#set_property -dict { PACKAGE_PIN AG25  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_hpd }]; #IO_L18P_T2_12 Sch=hdmi_tx_hpd
#set_property -dict { PACKAGE_PIN AJ21  IOSTANDARD LVDS     } [get_ports { hdmi_tx_n[0] }]; #IO_L23N_T3_12 Sch=hdmi_tx_n[0]
#set_property -dict { PACKAGE_PIN AH21  IOSTANDARD LVDS     } [get_ports { hdmi_tx_p[0] }]; #IO_L23P_T3_12 Sch=hdmi_tx_p[0]
#set_property -dict { PACKAGE_PIN AJ23  IOSTANDARD LVDS     } [get_ports { hdmi_tx_n[1] }]; #IO_L21N_T3_DQS_12 Sch=hdmi_tx_n[1]
#set_property -dict { PACKAGE_PIN AJ22  IOSTANDARD LVDS     } [get_ports { hdmi_tx_p[1] }]; #IO_L21P_T3_DQS_12 Sch=hdmi_tx_p[1]
#set_property -dict { PACKAGE_PIN AH22  IOSTANDARD LVDS     } [get_ports { hdmi_tx_n[2] }]; #IO_L20N_T3_12 Sch=hdmi_tx_n[2]
#set_property -dict { PACKAGE_PIN AG22  IOSTANDARD LVDS     } [get_ports { hdmi_tx_p[2] }]; #IO_L20P_T3_12 Sch=hdmi_tx_p[2]
#set_property -dict { PACKAGE_PIN AK20  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_scl }]; #IO_L24P_T3_12 Sch=hdmi_tx_scl
#set_property -dict { PACKAGE_PIN AK21  IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_sda }]; #IO_L24N_T3_12 Sch=hdmi_tx_sda

## Ethernet
#set_property -dict { PACKAGE_PIN AB18  IOSTANDARD LVCMOS18 } [get_ports { eth_intb }]; #IO_L16N_T2_32 Sch=eth_intb
#set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS18 } [get_ports { eth_mdc }]; #IO_L16P_T2_32 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS18 } [get_ports { eth_mdio }]; #IO_L15N_T2_DQS_32 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS18 } [get_ports { eth_phyrst }]; #IO_L15P_T2_DQS_32 Sch=eth_phyrst
#set_property -dict { PACKAGE_PIN AB19  IOSTANDARD LVCMOS18 } [get_ports { eth_pmeb }]; #IO_L17P_T2_32 Sch=eth_pmeb
#set_property -dict { PACKAGE_PIN AD18  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_clk }]; #IO_L13P_T2_MRCC_32 Sch=eth_rx_clk
#set_property -dict { PACKAGE_PIN AE14  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_ctl }]; #IO_L19N_T3_VREF_32 Sch=eth_rx_ctl
#set_property -dict { PACKAGE_PIN AE15  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_d[0] }]; #IO_L19P_T3_32 Sch=eth_rx_d[0]
#set_property -dict { PACKAGE_PIN AE18  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_d[1] }]; #IO_L13N_T2_MRCC_32 Sch=eth_rx_d[1]
#set_property -dict { PACKAGE_PIN AD16  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_d[2] }]; #IO_L14N_T2_SRCC_32 Sch=eth_rx_d[2]
#set_property -dict { PACKAGE_PIN AC19  IOSTANDARD LVCMOS18 } [get_ports { eth_rx_d[3] }]; #IO_L17N_T2_32 Sch=eth_rx_d[3]
#set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_clk }]; #IO_L20N_T3_32 Sch=eth_tx_clk
#set_property -dict { PACKAGE_PIN AA15  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_d[0] }]; #IO_L20P_T3_32 Sch=eth_tx_d[0]
#set_property -dict { PACKAGE_PIN AD17  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_d[1] }]; #IO_L14P_T2_SRCC_32 Sch=eth_tx_d[1]
#set_property -dict { PACKAGE_PIN AG17  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_d[2] }]; #IO_L12N_T1_MRCC_32 Sch=eth_tx_d[2]
#set_property -dict { PACKAGE_PIN AC17  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_d[3] }]; #IO_L18N_T2_32 Sch=eth_tx_d[3]
#set_property -dict { PACKAGE_PIN AB17  IOSTANDARD LVCMOS18 } [get_ports { eth_tx_en }]; #IO_L18P_T2_32 Sch=eth_tx_en

## SFP+ Clock Multiplier / FPGA GTX Transceiver Clock Source
#set_property -dict { PACKAGE_PIN AC16  IOSTANDARD LVCMOS18 } [get_ports { sfp_clk_alarm_b }]; #IO_L21P_T3_DQS_32 Sch=sfp_clk_alarm_b
#set_property -dict { PACKAGE_PIN AC15  IOSTANDARD LVCMOS18 } [get_ports { sfp_clk_rst }]; #IO_L21N_T3_DQS_32 Sch=sfp_clk_rst
#set_property -dict { PACKAGE_PIN AE20  IOSTANDARD LVCMOS33 } [get_ports { sfp_clk_scl }]; #IO_25_12 Sch=sfp_clk_scl
#set_property -dict { PACKAGE_PIN Y20   IOSTANDARD LVCMOS33 } [get_ports { sfp_clk_sda }]; #IO_0_12 Sch=sfp_clk_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVDS     } [get_ports { sfp_rec_clk_n }]; #IO_L13N_T2_MRCC_18 Sch=sfp_rec_clk_n
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVDS     } [get_ports { sfp_rec_clk_p }]; #IO_L13P_T2_MRCC_18 Sch=sfp_rec_clk_p

## SFP+ Connector 1
#set_property -dict { PACKAGE_PIN AA17  IOSTANDARD LVCMOS18 } [get_ports { sfp1_mod_detect }]; #IO_L23P_T3_32 Sch=sfp1_mod_detect
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS18 } [get_ports { sfp1_rs[0] }]; #IO_L24P_T3_32 Sch=sfp1_rs[0]
#set_property -dict { PACKAGE_PIN Y15   IOSTANDARD LVCMOS18 } [get_ports { sfp1_rs[1] }]; #IO_L24N_T3_32 Sch=sfp1_rs[1]
#set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS18 } [get_ports { sfp1_rx_los }]; #IO_L23N_T3_32 Sch=sfp1_rx_los
#set_property -dict { PACKAGE_PIN AD14  IOSTANDARD LVCMOS18 } [get_ports { sfp1_tx_disable }]; #IO_L22N_T3_32 Sch=sfp1_tx_disable
#set_property -dict { PACKAGE_PIN AC14  IOSTANDARD LVCMOS18 } [get_ports { sfp1_tx_fault }]; #IO_L22P_T3_32 Sch=sfp1_tx_fault
#set_property -dict { PACKAGE_PIN C27   IOSTANDARD LVCMOS33 } [get_ports { i2c_sfp1_scl }]; #IO_L13N_T2_MRCC_16 Sch=i2c_sfp1_scl
#set_property -dict { PACKAGE_PIN D27   IOSTANDARD LVCMOS33 } [get_ports { i2c_sfp1_sda }]; #IO_L13P_T2_MRCC_16 Sch=i2c_sfp1_sda

## SFP+ Connector 2
#set_property -dict { PACKAGE_PIN AH11  IOSTANDARD LVCMOS15 } [get_ports { sfp2_mod_detect }]; #IO_L18P_T2_33 Sch=sfp2_mod_detect
#set_property -dict { PACKAGE_PIN AE10  IOSTANDARD LVCMOS15 } [get_ports { sfp2_rs[0] }]; #IO_L14P_T2_SRCC_33 Sch=sfp2_rs[0]
#set_property -dict { PACKAGE_PIN AF10  IOSTANDARD LVCMOS15 } [get_ports { sfp2_rs[1] }]; #IO_L14N_T2_SRCC_33 Sch=sfp2_rs[1]
#set_property -dict { PACKAGE_PIN AJ11  IOSTANDARD LVCMOS15 } [get_ports { sfp2_rx_los }]; #IO_L18N_T2_33 Sch=sfp2_rx_los
#set_property -dict { PACKAGE_PIN AK10  IOSTANDARD LVCMOS15 } [get_ports { sfp2_tx_disable }]; #IO_L17N_T2_33 Sch=sfp2_tx_disable
#set_property -dict { PACKAGE_PIN AK11  IOSTANDARD LVCMOS15 } [get_ports { sfp2_tx_fault }]; #IO_L17P_T2_33 Sch=sfp2_tx_fault
#set_property -dict { PACKAGE_PIN B24   IOSTANDARD LVCMOS33 } [get_ports { i2c_sfp2_scl }]; #IO_L8N_T1_16 Sch=i2c_sfp2_scl
#set_property -dict { PACKAGE_PIN C24   IOSTANDARD LVCMOS33 } [get_ports { i2c_sfp2_sda }]; #IO_L8P_T1_16 Sch=i2c_sfp2_sda

## Quad-SPI Flash
## NOTE: the SCK clock signal can be driven using the STARTUPE2 primitive
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { qspi_csn }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_csn
#set_property -dict { PACKAGE_PIN P24   IOSTANDARD LVCMOS33 } [get_ports { qspi_d[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_d[0]
#set_property -dict { PACKAGE_PIN R25   IOSTANDARD LVCMOS33 } [get_ports { qspi_d[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_d[1]
#set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { qspi_d[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_d[2]
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { qspi_d[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_d[3]

## SD Card Slot
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { sd_cd }]; #IO_25_14 Sch=sd_cd
#set_property -dict { PACKAGE_PIN AJ24  IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }]; #IO_L15P_T2_DQS_12 Sch=sd_cmd
#set_property -dict { PACKAGE_PIN AE25  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[0] }]; #IO_L16P_T2_12 Sch=sd_dat[0]
#set_property -dict { PACKAGE_PIN AF25  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[1] }]; #IO_L16N_T2_12 Sch=sd_dat[1]
#set_property -dict { PACKAGE_PIN AG24  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[2] }]; #IO_L14P_T2_SRCC_12 Sch=sd_dat[2]
#set_property -dict { PACKAGE_PIN AH24  IOSTANDARD LVCMOS33 } [get_ports { sd_dat[3] }]; #IO_L14N_T2_SRCC_12 Sch=sd_dat[3]
#set_property -dict { PACKAGE_PIN AE21  IOSTANDARD LVCMOS33 } [get_ports { sd_reset }]; #IO_L10N_T1_12 Sch=sd_reset
#set_property -dict { PACKAGE_PIN AK25  IOSTANDARD LVCMOS33 } [get_ports { sd_sclk }]; #IO_L15N_T2_DQS_12 Sch=sd_sclk

## Parallel Flash Memory
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { flash_byte }]; #IO_L19P_T3_17 Sch=flash_byte
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { flash_ce[0] }]; #IO_L18P_T2_17 Sch=flash_ce[1]
#set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { flash_ce[1] }]; #IO_L15P_T2_DQS_17 Sch=flash_ce[2]
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { flash_oe }]; #IO_L15N_T2_DQS_17 Sch=flash_oe
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { flash_rst }]; #IO_L16N_T2_17 Sch=flash_rst
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { flash_ryby[0] }]; #IO_L16P_T2_17 Sch=flash_ryby[1]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { flash_ryby[1] }]; #IO_L24N_T3_17 Sch=flash_ryby[2]
#set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { flash_we }]; #IO_L9P_T1_DQS_17 Sch=flash_we
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { flash_a[0] }]; #IO_L13P_T2_MRCC_17 Sch=flash_a[0]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { flash_a[1] }]; #IO_L22N_T3_17 Sch=flash_a[1]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { flash_a[2] }]; #IO_L17N_T2_17 Sch=flash_a[2]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { flash_a[3] }]; #IO_L20P_T3_17 Sch=flash_a[3]
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { flash_a[4] }]; #IO_L20N_T3_17 Sch=flash_a[4]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { flash_a[5] }]; #IO_L22P_T3_17 Sch=flash_a[5]
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { flash_a[6] }]; #IO_L17P_T2_17 Sch=flash_a[6]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { flash_a[7] }]; #IO_L14N_T2_SRCC_17 Sch=flash_a[7]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { flash_a[8] }]; #IO_L12P_T1_MRCC_17 Sch=flash_a[8]
#set_property -dict { PACKAGE_PIN F22   IOSTANDARD LVCMOS33 } [get_ports { flash_a[9] }]; #IO_L9N_T1_DQS_17 Sch=flash_a[9]
#set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { flash_a[10] }]; #IO_L24P_T3_17 Sch=flash_a[10]
#set_property -dict { PACKAGE_PIN E20   IOSTANDARD LVCMOS33 } [get_ports { flash_a[11] }]; #IO_L12N_T1_MRCC_17 Sch=flash_a[11]
#set_property -dict { PACKAGE_PIN D22   IOSTANDARD LVCMOS33 } [get_ports { flash_a[12] }]; #IO_L10P_T1_17 Sch=flash_a[12]
#set_property -dict { PACKAGE_PIN F21   IOSTANDARD LVCMOS33 } [get_ports { flash_a[13] }]; #IO_L11P_T1_SRCC_17 Sch=flash_a[13]
#set_property -dict { PACKAGE_PIN C22   IOSTANDARD LVCMOS33 } [get_ports { flash_a[14] }]; #IO_L10N_T1_17 Sch=flash_a[14]
#set_property -dict { PACKAGE_PIN E21   IOSTANDARD LVCMOS33 } [get_ports { flash_a[15] }]; #IO_L11N_T1_SRCC_17 Sch=flash_a[15]
#set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS33 } [get_ports { flash_a[16] }]; #IO_L21N_T3_DQS_17 Sch=flash_a[16]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { flash_a[17] }]; #IO_L13N_T2_MRCC_17 Sch=flash_a[17]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { flash_a[18] }]; #IO_25_17 Sch=flash_a[18]
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { flash_a[19] }]; #IO_L14P_T2_SRCC_17 Sch=flash_a[19]
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { flash_a[20] }]; #IO_L18N_T2_17 Sch=flash_a[20]
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { flash_a[21] }]; #IO_0_17 Sch=flash_a[21]
#set_property -dict { PACKAGE_PIN B22   IOSTANDARD LVCMOS33 } [get_ports { flash_a[22] }]; #IO_L23P_T3_17 Sch=flash_a[22]
#set_property -dict { PACKAGE_PIN A22   IOSTANDARD LVCMOS33 } [get_ports { flash_a[23] }]; #IO_L23N_T3_17 Sch=flash_a[23]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { flash_a[24] }]; #IO_L19N_T3_VREF_17 Sch=flash_a[24]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { flash_a[25] }]; #IO_L21P_T3_DQS_17 Sch=flash_a[25]
#set_property -dict { PACKAGE_PIN L11   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[0] }]; #IO_L6P_T0_18 Sch=flash_dq[0]
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[1] }]; #IO_L4P_T0_18 Sch=flash_dq[1]
#set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[2] }]; #IO_L3P_T0_DQS_18 Sch=flash_dq[2]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[3] }]; #IO_L5N_T0_18 Sch=flash_dq[3]
#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[4] }]; #IO_L2P_T0_18 Sch=flash_dq[4]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[5] }]; #IO_L2N_T0_18 Sch=flash_dq[5]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[6] }]; #IO_L1P_T0_18 Sch=flash_dq[6]
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[7] }]; #IO_L7N_T1_18 Sch=flash_dq[7]
#set_property -dict { PACKAGE_PIN K11   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[8] }]; #IO_L6N_T0_VREF_18 Sch=flash_dq[8]
#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[9] }]; #IO_L3N_T0_DQS_18 Sch=flash_dq[9]
#set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[10] }]; #IO_L8P_T1_18 Sch=flash_dq[10]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[11] }]; #IO_L5P_T0_18 Sch=flash_dq[11]
#set_property -dict { PACKAGE_PIN J12   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[12] }]; #IO_L8N_T1_18 Sch=flash_dq[12]
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[13] }]; #IO_L7P_T1_18 Sch=flash_dq[13]
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[14] }]; #IO_L4N_T0_18 Sch=flash_dq[14]
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[15] }]; #IO_L1N_T0_18 Sch=flash_dq[15]
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[16] }]; #IO_L3P_T0_DQS_17 Sch=flash_dq[16]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[17] }]; #IO_L3N_T0_DQS_17 Sch=flash_dq[17]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[18] }]; #IO_L6P_T0_17 Sch=flash_dq[18]
#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[19] }]; #IO_L4N_T0_17 Sch=flash_dq[19]
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[20] }]; #IO_L2N_T0_17 Sch=flash_dq[20]
#set_property -dict { PACKAGE_PIN K20   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[21] }]; #IO_L6N_T0_VREF_17 Sch=flash_dq[21]
#set_property -dict { PACKAGE_PIN D21   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[22] }]; #IO_L8P_T1_17 Sch=flash_dq[22]
#set_property -dict { PACKAGE_PIN C21   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[23] }]; #IO_L8N_T1_17 Sch=flash_dq[23]
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[24] }]; #IO_L5P_T0_17 Sch=flash_dq[24]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[25] }]; #IO_L1N_T0_17 Sch=flash_dq[25]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[26] }]; #IO_L1P_T0_17 Sch=flash_dq[26]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[27] }]; #IO_L4P_T0_17 Sch=flash_dq[27]
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[28] }]; #IO_L2P_T0_17 Sch=flash_dq[28]
#set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[29] }]; #IO_L7N_T1_17 Sch=flash_dq[29]
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[30] }]; #IO_L5N_T0_17 Sch=flash_dq[30]
#set_property -dict { PACKAGE_PIN H21   IOSTANDARD LVCMOS33 } [get_ports { flash_dq[31] }]; #IO_L7P_T1_17 Sch=flash_dq[31]

## SRAM Memories
#set_property -dict { PACKAGE_PIN U24   IOSTANDARD LVCMOS33 } [get_ports { sram1_bhe }]; #IO_L23P_T3_A03_D19_14 Sch=sram1-bhe
#set_property -dict { PACKAGE_PIN AG30  IOSTANDARD LVCMOS33 } [get_ports { sram1_ble }]; #IO_L18P_T2_13 Sch=sram1-ble
#set_property -dict { PACKAGE_PIN T25   IOSTANDARD LVCMOS33 } [get_ports { sram1_ce }]; #IO_L14P_T2_SRCC_14 Sch=sram1-ce
#set_property -dict { PACKAGE_PIN AF30  IOSTANDARD LVCMOS33 } [get_ports { sram1_oe }]; #IO_L16N_T2_13 Sch=sram1-oe
#set_property -dict { PACKAGE_PIN AE28  IOSTANDARD LVCMOS33 } [get_ports { sram1_we }]; #IO_L14P_T2_SRCC_13 Sch=sram1-we
#set_property -dict { PACKAGE_PIN AC29  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[0] }]; #IO_L7P_T1_13 Sch=sram1-io[0]
#set_property -dict { PACKAGE_PIN T23   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[1] }]; #IO_L5N_T0_D07_14 Sch=sram1-io[1]
#set_property -dict { PACKAGE_PIN AC30  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[2] }]; #IO_L7N_T1_13 Sch=sram1-io[2]
#set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[3] }]; #IO_L5P_T0_D06_14 Sch=sram1-io[3]
#set_property -dict { PACKAGE_PIN AD26  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[4] }]; #IO_L19N_T3_VREF_13 Sch=sram1-io[4]
#set_property -dict { PACKAGE_PIN AF28  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[5] }]; #IO_L14N_T2_SRCC_13 Sch=sram1-io[5]
#set_property -dict { PACKAGE_PIN AB29  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[6] }]; #IO_L10P_T1_13 Sch=sram1-io[6]
#set_property -dict { PACKAGE_PIN AB30  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[7] }]; #IO_L10N_T1_13 Sch=sram1-io[7]
#set_property -dict { PACKAGE_PIN AH30  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[8] }]; #IO_L18N_T2_13 Sch=sram1-io[8]
#set_property -dict { PACKAGE_PIN AJ29  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[9] }]; #IO_L17N_T2_13 Sch=sram1-io[9]
#set_property -dict { PACKAGE_PIN V25   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[10] }]; #IO_L18P_T2_A12_D28_14 Sch=sram1-io[10]
#set_property -dict { PACKAGE_PIN V24   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[11] }]; #IO_L23N_T3_A02_D18_14 Sch=sram1-io[11]
#set_property -dict { PACKAGE_PIN U23   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[12] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=sram1-io[12]
#set_property -dict { PACKAGE_PIN V22   IOSTANDARD LVCMOS33 } [get_ports { sram1_io[13] }]; #IO_L22N_T3_A04_D20_14 Sch=sram1-io[13]
#set_property -dict { PACKAGE_PIN AK30  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[14] }]; #IO_L15N_T2_DQS_13 Sch=sram1-io[14]
#set_property -dict { PACKAGE_PIN AK29  IOSTANDARD LVCMOS33 } [get_ports { sram1_io[15] }]; #IO_L15P_T2_DQS_13 Sch=sram1-io[15]

#set_property -dict { PACKAGE_PIN AB28  IOSTANDARD LVCMOS33 } [get_ports { sram2_bhe[0] }]; #IO_L5N_T0_13 Sch=sram2-bhe[1]
#set_property -dict { PACKAGE_PIN V26   IOSTANDARD LVCMOS33 } [get_ports { sram2_bhe[1] }]; #IO_L16P_T2_CSI_B_14 Sch=sram2-bhe[2]
#set_property -dict { PACKAGE_PIN AC26  IOSTANDARD LVCMOS33 } [get_ports { sram2_ble[0] }]; #IO_L19P_T3_13 Sch=sram2-ble[1]
#set_property -dict { PACKAGE_PIN W27   IOSTANDARD LVCMOS33 } [get_ports { sram2_ble[1] }]; #IO_L2P_T0_13 Sch=sram2-ble[2]
#set_property -dict { PACKAGE_PIN Y28   IOSTANDARD LVCMOS33 } [get_ports { sram2_ce[0] }]; #IO_L3P_T0_DQS_13 Sch=sram2-ce[1]
#set_property -dict { PACKAGE_PIN P28   IOSTANDARD LVCMOS33 } [get_ports { sram2_ce[1] }]; #IO_L8N_T1_D12_14 Sch=sram2-ce[2]
#set_property -dict { PACKAGE_PIN AB25  IOSTANDARD LVCMOS33 } [get_ports { sram2_oe[0] }]; #IO_L6N_T0_VREF_13 Sch=sram2-oe[1]
#set_property -dict { PACKAGE_PIN U30   IOSTANDARD LVCMOS33 } [get_ports { sram2_oe[1] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=sram2-oe[2]
#set_property -dict { PACKAGE_PIN W23   IOSTANDARD LVCMOS33 } [get_ports { sram2_we[0] }]; #IO_L20P_T3_A08_D24_14 Sch=sram2-we[1]
#set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { sram2_we[1] }]; #IO_L4P_T0_D04_14 Sch=sram2-we[2]
#set_property -dict { PACKAGE_PIN Y26   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[0] }]; #IO_L1P_T0_13 Sch=sram2-io[0]
#set_property -dict { PACKAGE_PIN AA26  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[1] }]; #IO_L1N_T0_13 Sch=sram2-io[1]
#set_property -dict { PACKAGE_PIN U27   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[2] }]; #IO_L13P_T2_MRCC_14 Sch=sram2-io[2]
#set_property -dict { PACKAGE_PIN AA28  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[3] }]; #IO_L3N_T0_DQS_13 Sch=sram2-io[3]
#set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[4] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sram2-io[4]
#set_property -dict { PACKAGE_PIN W26   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[5] }]; #IO_L18N_T2_A11_D27_14 Sch=sram2-io[5]
#set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[6] }]; #IO_L21P_T3_DQS_14 Sch=sram2-io[6]
#set_property -dict { PACKAGE_PIN P26   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[7] }]; #IO_L10P_T1_D14_14 Sch=sram2-io[7]
#set_property -dict { PACKAGE_PIN Y25   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[8] }]; #IO_0_13 Sch=sram2-io[8]
#set_property -dict { PACKAGE_PIN AA25  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[9] }]; #IO_L6P_T0_13 Sch=sram2-io[9]
#set_property -dict { PACKAGE_PIN AA27  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[10] }]; #IO_L5P_T0_13 Sch=sram2-io[10]
#set_property -dict { PACKAGE_PIN W24   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[11] }]; #IO_L20N_T3_A07_D23_14 Sch=sram2-io[11]
#set_property -dict { PACKAGE_PIN W22   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[12] }]; #IO_L24N_T3_A00_D16_14 Sch=sram2-io[12]
#set_property -dict { PACKAGE_PIN W21   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[13] }]; #IO_L24P_T3_A01_D17_14 Sch=sram2-io[13]
#set_property -dict { PACKAGE_PIN AD28  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[14] }]; #IO_L11N_T1_SRCC_13 Sch=sram2-io[14]
#set_property -dict { PACKAGE_PIN AD27  IOSTANDARD LVCMOS33 } [get_ports { sram2_io[15] }]; #IO_L11P_T1_SRCC_13 Sch=sram2-io[15]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[16] }]; #IO_0_14 Sch=sram2-io[16]
#set_property -dict { PACKAGE_PIN R26   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[17] }]; #IO_L10N_T1_D15_14 Sch=sram2-io[17]
#set_property -dict { PACKAGE_PIN R30   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[18] }]; #IO_L9P_T1_DQS_14 Sch=sram2-io[18]
#set_property -dict { PACKAGE_PIN T30   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[19] }]; #IO_L9N_T1_DQS_D13_14 Sch=sram2-io[19]
#set_property -dict { PACKAGE_PIN R29   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[20] }]; #IO_L7N_T1_D10_14 Sch=sram2-io[20]
#set_property -dict { PACKAGE_PIN R28   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[21] }]; #IO_L11P_T1_SRCC_14 Sch=sram2-io[21]
#set_property -dict { PACKAGE_PIN P29   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[22] }]; #IO_L7P_T1_D09_14 Sch=sram2-io[22]
#set_property -dict { PACKAGE_PIN P27   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[23] }]; #IO_L8P_T1_D11_14 Sch=sram2-io[23]
#set_property -dict { PACKAGE_PIN U29   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[24] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sram2-io[24]
#set_property -dict { PACKAGE_PIN V30   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[25] }]; #IO_L17N_T2_A13_D29_14 Sch=sram2-io[25]
#set_property -dict { PACKAGE_PIN U28   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[26] }]; #IO_L13N_T2_MRCC_14 Sch=sram2-io[26]
#set_property -dict { PACKAGE_PIN W28   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[27] }]; #IO_L2N_T0_13 Sch=sram2-io[27]
#set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[28] }]; #IO_L6N_T0_D08_VREF_14 Sch=sram2-io[28]
#set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[29] }]; #IO_L4N_T0_D05_14 Sch=sram2-io[29]
#set_property -dict { PACKAGE_PIN V29   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[30] }]; #IO_L17P_T2_A14_D30_14 Sch=sram2-io[30]
#set_property -dict { PACKAGE_PIN W29   IOSTANDARD LVCMOS33 } [get_ports { sram2_io[31] }]; #IO_L4P_T0_13 Sch=sram2-io[31]

#set_property -dict { PACKAGE_PIN AE29  IOSTANDARD LVCMOS33 } [get_ports { sram_a[0] }]; #IO_L9N_T1_DQS_13 Sch=sram-a[0]
#set_property -dict { PACKAGE_PIN AE30  IOSTANDARD LVCMOS33 } [get_ports { sram_a[1] }]; #IO_L16P_T2_13 Sch=sram-a[1]
#set_property -dict { PACKAGE_PIN AD29  IOSTANDARD LVCMOS33 } [get_ports { sram_a[2] }]; #IO_L9P_T1_DQS_13 Sch=sram-a[2]
#set_property -dict { PACKAGE_PIN V27   IOSTANDARD LVCMOS33 } [get_ports { sram_a[3] }]; #IO_L16N_T2_A15_D31_14 Sch=sram-a[3]
#set_property -dict { PACKAGE_PIN T26   IOSTANDARD LVCMOS33 } [get_ports { sram_a[4] }]; #IO_L12P_T1_MRCC_14 Sch=sram-a[4]
#set_property -dict { PACKAGE_PIN U25   IOSTANDARD LVCMOS33 } [get_ports { sram_a[5] }]; #IO_L14N_T2_SRCC_14 Sch=sram-a[5]
#set_property -dict { PACKAGE_PIN T28   IOSTANDARD LVCMOS33 } [get_ports { sram_a[6] }]; #IO_L11N_T1_SRCC_14 Sch=sram-a[6]
#set_property -dict { PACKAGE_PIN R24   IOSTANDARD LVCMOS33 } [get_ports { sram_a[7] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sram-a[7]
#set_property -dict { PACKAGE_PIN AK28  IOSTANDARD LVCMOS33 } [get_ports { sram_a[8] }]; #IO_L20N_T3_13 Sch=sram-a[8]
#set_property -dict { PACKAGE_PIN AJ27  IOSTANDARD LVCMOS33 } [get_ports { sram_a[9] }]; #IO_L20P_T3_13 Sch=sram-a[9]
#set_property -dict { PACKAGE_PIN Y30   IOSTANDARD LVCMOS33 } [get_ports { sram_a[10] }]; #IO_L8P_T1_13 Sch=sram-a[10]
#set_property -dict { PACKAGE_PIN Y29   IOSTANDARD LVCMOS33 } [get_ports { sram_a[11] }]; #IO_L4N_T0_13 Sch=sram-a[11]
#set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { sram_a[12] }]; #IO_L19P_T3_A10_D26_14 Sch=sram-a[12]
#set_property -dict { PACKAGE_PIN AG27  IOSTANDARD LVCMOS33 } [get_ports { sram_a[13] }]; #IO_L21P_T3_DQS_13 Sch=sram-a[13]
#set_property -dict { PACKAGE_PIN V21   IOSTANDARD LVCMOS33 } [get_ports { sram_a[14] }]; #IO_L22P_T3_A05_D21_14 Sch=sram-a[14]
#set_property -dict { PACKAGE_PIN AG28  IOSTANDARD LVCMOS33 } [get_ports { sram_a[15] }]; #IO_L21N_T3_DQS_13 Sch=sram-a[15]
#set_property -dict { PACKAGE_PIN AE26  IOSTANDARD LVCMOS33 } [get_ports { sram_a[16] }]; #IO_25_13 Sch=sram-a[16]
#set_property -dict { PACKAGE_PIN T27   IOSTANDARD LVCMOS33 } [get_ports { sram_a[17] }]; #IO_L12N_T1_MRCC_14 Sch=sram-a[17]
#set_property -dict { PACKAGE_PIN AJ28  IOSTANDARD LVCMOS33 } [get_ports { sram_a[18] }]; #IO_L17P_T2_13 Sch=sram-a[18]
#set_property -dict { PACKAGE_PIN AA30  IOSTANDARD LVCMOS33 } [get_ports { sram_a[19] }]; #IO_L8N_T1_13 Sch=sram-a[19]

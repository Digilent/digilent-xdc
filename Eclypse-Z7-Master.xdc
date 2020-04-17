## This file is a general .xdc for the Eclypse Z7 Rev. B.0
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 125MHz Clock from Ethernet PHY
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC Sch=sysclk
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

## Buttons
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L11P_T1_SRCC Sch=btn[0]
#set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L11N_T1_SRCC Sch=btn[1]

## RGB LEDs
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L9N_T1_DQS_AD3N Sch=led0_b
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L8P_T1_AD10P Sch=led0_g
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L8N_T1_AD10N Sch=led0_r
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L9P_T1_DQS_AD3P Sch=led1_b
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L10P_T1_AD11P Sch=led1_g
#set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L10N_T1_AD11N Sch=led1_r

## Pmod Header JA
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_0 Sch=ja1_fpga
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_25 Sch=ja2_fpga
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L1N_T0_AD0N Sch=ja3_fpga
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L1P_T0_AD0P Sch=ja4_fpga
#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L2N_T0_AD8N Sch=ja7_fpga
#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L2P_T0_AD8P Sch=ja8_fpga
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L3N_T0_DQS_AD1N Sch=ja9_fpga
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L3P_T0_DQS_AD1P Sch=ja10_fpga

## Pmod Header JB
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L4N_T0 Sch=jb1_fpga
#set_property -dict { PACKAGE_PIN D16   IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L4P_T0 Sch=jb2_fpga
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L5N_T0_AD9N Sch=jb3_fpga
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L5P_T0_AD9P Sch=jb4_fpga
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L6N_T0_VREF Sch=jb7_fpga
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L6P_T0 Sch=jb8_fpga
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L7N_T1_AD2N Sch=jb9_fpga
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L7P_T1_AD2P Sch=jb10_fpga

## Syzygy Port A
#set_property -dict { PACKAGE_PIN N20  } [get_ports { syzygy_a_c2p_clk_n }]; #IO_L14N_T2_SRCC Sch=syzygy_a_c2p_clk_n
#set_property -dict { PACKAGE_PIN N19  } [get_ports { syzygy_a_c2p_clk_p }]; #IO_L14P_T2_SRCC Sch=syzygy_a_c2p_clk_p
#set_property -dict { PACKAGE_PIN T17  } [get_ports { syzygy_a_d_n[0] }]; #IO_L21N_T3_DQS Sch=syzygy_a_d_n[0]
#set_property -dict { PACKAGE_PIN T16  } [get_ports { syzygy_a_d_p[0] }]; #IO_L21P_T3_DQS Sch=syzygy_a_d_p[0]
#set_property -dict { PACKAGE_PIN T19  } [get_ports { syzygy_a_d_n[1] }]; #IO_L22N_T3 Sch=syzygy_a_d_n[1]
#set_property -dict { PACKAGE_PIN R19  } [get_ports { syzygy_a_d_p[1] }]; #IO_L22P_T3 Sch=syzygy_a_d_p[1]
#set_property -dict { PACKAGE_PIN T18  } [get_ports { syzygy_a_d_n[2] }]; #IO_L23N_T3 Sch=syzygy_a_d_n[2]
#set_property -dict { PACKAGE_PIN R18  } [get_ports { syzygy_a_d_p[2] }]; #IO_L23P_T3 Sch=syzygy_a_d_p[2]
#set_property -dict { PACKAGE_PIN P18  } [get_ports { syzygy_a_d_n[3] }]; #IO_L20N_T3 Sch=syzygy_a_d_n[3]
#set_property -dict { PACKAGE_PIN P17  } [get_ports { syzygy_a_d_p[3] }]; #IO_L20P_T3 Sch=syzygy_a_d_p[3]
#set_property -dict { PACKAGE_PIN R16  } [get_ports { syzygy_a_d_n[4] }]; #IO_L24N_T3 Sch=syzygy_a_d_n[4]
#set_property -dict { PACKAGE_PIN P16  } [get_ports { syzygy_a_d_p[4] }]; #IO_L24P_T3 Sch=syzygy_a_d_p[4]
#set_property -dict { PACKAGE_PIN P15  } [get_ports { syzygy_a_d_n[5] }]; #IO_L19N_T3_VREF Sch=syzygy_a_d_n[5]
#set_property -dict { PACKAGE_PIN N15  } [get_ports { syzygy_a_d_p[5] }]; #IO_L19P_T3 Sch=syzygy_a_d_p[5]
#set_property -dict { PACKAGE_PIN K18  } [get_ports { syzygy_a_d_n[6] }]; #IO_L7N_T1 Sch=syzygy_a_d_n[6]
#set_property -dict { PACKAGE_PIN J18  } [get_ports { syzygy_a_d_p[6] }]; #IO_L7P_T1 Sch=syzygy_a_d_p[6]
#set_property -dict { PACKAGE_PIN K21  } [get_ports { syzygy_a_d_n[7] }]; #IO_L9N_T1_DQS Sch=syzygy_a_d_n[7]
#set_property -dict { PACKAGE_PIN J20  } [get_ports { syzygy_a_d_p[7] }]; #IO_L9P_T1_DQS Sch=syzygy_a_d_p[7]
#set_property -dict { PACKAGE_PIN M20  } [get_ports { syzygy_a_p2c_clk_n }]; #IO_L13N_T2_MRCC Sch=syzygy_a_p2c_clk_n
#set_property -dict { PACKAGE_PIN M19  } [get_ports { syzygy_a_p2c_clk_p }]; #IO_L13P_T2_MRCC Sch=syzygy_a_p2c_clk_p
#set_property -dict { PACKAGE_PIN L19  } [get_ports { syzygy_a_s[16] }]; #IO_L12N_T1_MRCC Sch=syzygy_a_s[16]
#set_property -dict { PACKAGE_PIN K20  } [get_ports { syzygy_a_s[17] }]; #IO_L11N_T1_SRCC Sch=syzygy_a_s[17]
#set_property -dict { PACKAGE_PIN L18  } [get_ports { syzygy_a_s[18] }]; #IO_L12P_T1_MRCC Sch=syzygy_a_s[18]
#set_property -dict { PACKAGE_PIN K19  } [get_ports { syzygy_a_s[19] }]; #IO_L11P_T1_SRCC Sch=syzygy_a_s[19]
#set_property -dict { PACKAGE_PIN L22  } [get_ports { syzygy_a_s[20] }]; #IO_L10N_T1 Sch=syzygy_a_s[20]
#set_property -dict { PACKAGE_PIN J22  } [get_ports { syzygy_a_s[21] }]; #IO_L8N_T1 Sch=syzygy_a_s[21]
#set_property -dict { PACKAGE_PIN L21  } [get_ports { syzygy_a_s[22] }]; #IO_L10P_T1 Sch=syzygy_a_s[22]
#set_property -dict { PACKAGE_PIN J21  } [get_ports { syzygy_a_s[23] }]; #IO_L8P_T1 Sch=syzygy_a_s[23]
#set_property -dict { PACKAGE_PIN N22  } [get_ports { syzygy_a_s[24] }]; #IO_L16P_T2 Sch=syzygy_a_s[24]
#set_property -dict { PACKAGE_PIN P22  } [get_ports { syzygy_a_s[25] }]; #IO_L16N_T2 Sch=syzygy_a_s[25]
#set_property -dict { PACKAGE_PIN M21  } [get_ports { syzygy_a_s[26] }]; #IO_L15P_T2_DQS Sch=syzygy_a_s[26]
#set_property -dict { PACKAGE_PIN M22  } [get_ports { syzygy_a_s[27] }]; #IO_L15N_T2_DQS Sch=syzygy_a_s[27]

## Syzygy Port B
#set_property -dict { PACKAGE_PIN Y16  } [get_ports { syzygy_b_c2p_clk_n }]; #IO_L14N_T2_SRCC Sch=syzygy_b_c2p_clk_n
#set_property -dict { PACKAGE_PIN W16  } [get_ports { syzygy_b_c2p_clk_p }]; #IO_L14P_T2_SRCC Sch=syzygy_b_c2p_clk_p
#set_property -dict { PACKAGE_PIN Y15  } [get_ports { syzygy_b_d_n[0] }]; #IO_L21N_T3_DQS Sch=syzygy_b_d_n[0]
#set_property -dict { PACKAGE_PIN W15  } [get_ports { syzygy_b_d_p[0] }]; #IO_L21P_T3_DQS Sch=syzygy_b_d_p[0]
#set_property -dict { PACKAGE_PIN W13  } [get_ports { syzygy_b_d_n[1] }]; #IO_L20N_T3 Sch=syzygy_b_d_n[1]
#set_property -dict { PACKAGE_PIN V13  } [get_ports { syzygy_b_d_p[1] }]; #IO_L20P_T3 Sch=syzygy_b_d_p[1]
#set_property -dict { PACKAGE_PIN AA13 } [get_ports { syzygy_b_d_n[2] }]; #IO_L23N_T3 Sch=syzygy_b_d_n[2]
#set_property -dict { PACKAGE_PIN Y13  } [get_ports { syzygy_b_d_p[2] }]; #IO_L23P_T3 Sch=syzygy_b_d_p[2]
#set_property -dict { PACKAGE_PIN AB15 } [get_ports { syzygy_b_d_n[3] }]; #IO_L24N_T3 Sch=syzygy_b_d_n[3]
#set_property -dict { PACKAGE_PIN AB14 } [get_ports { syzygy_b_d_p[3] }]; #IO_L24P_T3 Sch=syzygy_b_d_p[3]
#set_property -dict { PACKAGE_PIN AA14 } [get_ports { syzygy_b_d_n[4] }]; #IO_L22N_T3 Sch=syzygy_b_d_n[4]
#set_property -dict { PACKAGE_PIN Y14  } [get_ports { syzygy_b_d_p[4] }]; #IO_L22P_T3 Sch=syzygy_b_d_p[4]
#set_property -dict { PACKAGE_PIN V15  } [get_ports { syzygy_b_d_n[5] }]; #IO_L19N_T3_VREF Sch=syzygy_b_d_n[5]
#set_property -dict { PACKAGE_PIN V14  } [get_ports { syzygy_b_d_p[5] }]; #IO_L19P_T3 Sch=syzygy_b_d_p[5]
#set_property -dict { PACKAGE_PIN AB22 } [get_ports { syzygy_b_d_n[6] }]; #IO_L7N_T1 Sch=syzygy_b_d_n[6]
#set_property -dict { PACKAGE_PIN AA22 } [get_ports { syzygy_b_d_p[6] }]; #IO_L7P_T1 Sch=syzygy_b_d_p[6]
#set_property -dict { PACKAGE_PIN Y21  } [get_ports { syzygy_b_d_n[7] }]; #IO_L9N_T1_DQS Sch=syzygy_b_d_n[7]
#set_property -dict { PACKAGE_PIN Y20  } [get_ports { syzygy_b_d_p[7] }]; #IO_L9P_T1_DQS Sch=syzygy_b_d_p[7]
#set_property -dict { PACKAGE_PIN W18  } [get_ports { syzygy_b_p2c_clk_n }]; #IO_L13N_T2_MRCC Sch=syzygy_b_p2c_clk_n
#set_property -dict { PACKAGE_PIN W17  } [get_ports { syzygy_b_p2c_clk_p }]; #IO_L13P_T2_MRCC Sch=syzygy_b_p2c_clk_p
#set_property -dict { PACKAGE_PIN AA18 } [get_ports { syzygy_b_s[16] }]; #IO_L12N_T1_MRCC Sch=syzygy_b_s[16]
#set_property -dict { PACKAGE_PIN AA19 } [get_ports { syzygy_b_s[17] }]; #IO_L11N_T1_SRCC Sch=syzygy_b_s[17]
#set_property -dict { PACKAGE_PIN Y18  } [get_ports { syzygy_b_s[18] }]; #IO_L12P_T1_MRCC Sch=syzygy_b_s[18]
#set_property -dict { PACKAGE_PIN Y19  } [get_ports { syzygy_b_s[19] }]; #IO_L11P_T1_SRCC Sch=syzygy_b_s[19]
#set_property -dict { PACKAGE_PIN AB20 } [get_ports { syzygy_b_s[20] }]; #IO_L10N_T1 Sch=syzygy_b_s[20]
#set_property -dict { PACKAGE_PIN AB21 } [get_ports { syzygy_b_s[21] }]; #IO_L8N_T1 Sch=syzygy_b_s[21]
#set_property -dict { PACKAGE_PIN AB19 } [get_ports { syzygy_b_s[22] }]; #IO_L10P_T1 Sch=syzygy_b_s[22]
#set_property -dict { PACKAGE_PIN AA21 } [get_ports { syzygy_b_s[23] }]; #IO_L8P_T1 Sch=syzygy_b_s[23]
#set_property -dict { PACKAGE_PIN U16  } [get_ports { syzygy_b_s[24] }]; #IO_L15N_T2_DQS Sch=syzygy_b_s[24]
#set_property -dict { PACKAGE_PIN U15  } [get_ports { syzygy_b_s[25] }]; #IO_L15P_T2_DQS Sch=syzygy_b_s[25]
#set_property -dict { PACKAGE_PIN V17  } [get_ports { syzygy_b_s[26] }]; #IO_L16N_T2 Sch=syzygy_b_s[26]
#set_property -dict { PACKAGE_PIN U17  } [get_ports { syzygy_b_s[27] }]; #IO_L16P_T2 Sch=syzygy_b_s[27]

## Crypto SDA 
#set_property -dict { PACKAGE_PIN D22   IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }]; #IO_L16P_T2 Sch=crypto_sda

## Miscellaneous
#set_property -dict { PACKAGE_PIN B22   IOSTANDARD LVCMOS33 } [get_ports { mcu_rsvd[0] }]; #IO_L18N_T2_AD13N Sch=mcu_rsvd[1]
#set_property -dict { PACKAGE_PIN B21   IOSTANDARD LVCMOS33 } [get_ports { mcu_rsvd[1] }]; #IO_L18P_T2_AD13P Sch=mcu_rsvd[2]

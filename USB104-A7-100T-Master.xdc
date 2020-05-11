## This file is a general .xdc for the USB104 A7-100T Rev. B.2
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 100MHz Clock
#set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]; #IO_L12P_T1_MRCC Sch=GCLK100
#create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

## Buttons
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L16N_T2_A15_D31_14 Sch=btn[0]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L17P_T2_A14_D30_14 Sch=btn[1]

## LEDs
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L12N_T1_MRCC_14 Sch=led[0]
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L13P_T2_MRCC_14 Sch=led[1]
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L13N_T2_MRCC_14 Sch=led[2]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L14P_T2_SRCC_14 Sch=led[3]

## USB UART
## Note: Port names are from the perspective of the FPGA.
#set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports { uart_rx }]; #IO_L20P_T3_A08_D24_14 Sch=uart_txd_in
#set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports { uart_tx }]; #IO_L20N_T3_A07_D23_14 Sch=uart_rxd_out

## DPTI/DSPI
#set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports { prog_spien }]; #IO_L4P_T0_D04_14     Sch=prog_spien
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports { prog_d[0] }];  #IO_L4N_T0_D05_14     Sch=prog_d[0]/sck
#set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports { prog_d[1] }];  #IO_L5P_T0_D06_14     Sch=prog_d[1]/mosi
#set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports { prog_d[2] }];  #IO_L5N_T0_D07_14     Sch=prog_d[2]/miso
#set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports { prog_d[3] }];  #IO_L6N_T0_D08_14     Sch=prog_d[3]/ss
#set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports { prog_d[4] }];  #IO_L7P_T1_D09_14     Sch=prog_d[4]
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports { prog_d[5] }];  #IO_L7N_T1_D10_14     Sch=prog_d[5]
#set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports { prog_d[6] }];  #IO_L8P_T1_D11_14     Sch=prog_d[6]
#set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports { prog_d[7] }];  #IO_L8N_T1_D12_14     Sch=prog_d[7]
#set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports { prog_oen }];   #IO_L9P_T1_DQS_14     Sch=prog_oen
#set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports { prog_siwun }]; #IO_L9N_T1_DQS_D13_14 Sch=prog_siwun
#set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports { prog_rxen }];  #IO_L10P_T1_D14_14    Sch=prog_rxen
#set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports { prog_txen }];  #IO_L10N_T1_D15_14    Sch=prog_txen
#set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports { prog_rdn }];   #IO_L11P_T1_SRCC_14   Sch=prog_rdn
#set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports { prog_wrn }];   #IO_L11N_T1_SRCC_14   Sch=prog_wrn
#set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports { prog_clko }];  #IO_L12P_T1_MRCC_14   Sch=prog_clko

## Quad SPI Flash
#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }}];   #IO_L6P_T0_FCS_B_14      Sch=qspi_cs
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { qspi_sck }];   #IO_L3N_T0_DQS_EMCCLK_14 Sch=qspi_sck
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14   Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14    Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14        Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14        Sch=qspi_dq[3]

## Pmod Header JA
#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L13P_T2_MRCC_35 Sch=ja[1]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L13N_T2_MRCC_35 Sch=ja[2]
#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L14P_T2_SRCC_35 Sch=ja[3]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L14N_T2_SRCC_35 Sch=ja[4]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L15P_T2_DQS_35  Sch=ja[7]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L15N_T2_DQS_35  Sch=ja[8]
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L16P_T2_35      Sch=ja[9]
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L16N_T2_35      Sch=ja[10]

### Pmod Header JB
#set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L7P_T1_AD6P_35     Sch=jb[1]
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L10N_T1_AD15N_35   Sch=jb[2]
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L10P_T1_AD15P_35   Sch=jb[3]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L7N_T1_AD6N_35     Sch=jb[4]
#set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L9P_T1_DQS_AD7P_35 Sch=jb[7]
#set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L9N_T1_DQS_AD7N_35 Sch=jb[8]
#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L8N_T1_AD14N_35    Sch=jb[9]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L8P_T1_AD14P_35    Sch=jb[10]

### Pmod Header JC
#set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L1N_T0_AD4N_35     Sch=jc[1]
#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L1P_T0_AD4P_35     Sch=jc[2]
#set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L2N_T0_AD12N_35    Sch=jc[3]
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L4N_T0_35          Sch=jc[4]
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=jc[7]
#set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=jc[8]
#set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L2P_T0_AD12P_35    Sch=jc[9]
#set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L4P_T0_35          Sch=jc[10]

## SYZYGY Port
#set_property -dict { PACKAGE_PIN A13 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[0] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=syzygy_d_p[0]
#set_property -dict { PACKAGE_PIN A14 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[0] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=syzygy_d_n[0]
#set_property -dict { PACKAGE_PIN B16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[1] }]; #IO_L7P_T1_AD2P_15     Sch=syzygy_d_p[1]
#set_property -dict { PACKAGE_PIN B17 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[1] }]; #IO_L7N_T1_AD2N_15     Sch=syzygy_d_n[1]
#set_property -dict { PACKAGE_PIN A15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[2] }]; #IO_L8P_T1_AD10P_15    Sch=syzygy_d_p[2]
#set_property -dict { PACKAGE_PIN A16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[2] }]; #IO_L8N_T1_AD10N_15    Sch=syzygy_d_n[2]
#set_property -dict { PACKAGE_PIN B18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[3] }]; #IO_L10P_T1_AD11P_15   Sch=syzygy_d_p[3]
#set_property -dict { PACKAGE_PIN A18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[3] }]; #IO_L10N_T1_AD11N_15   Sch=syzygy_d_n[3]
#set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[4] }]; #IO_L11P_T1_SRCC_15    Sch=syzygy_d_p[4]
#set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[4] }]; #IO_L11N_T1_SRCC_15    Sch=syzygy_d_n[4]
#set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[5] }]; #IO_L12P_T1_MRCC_15    Sch=syzygy_d_p[5]
#set_property -dict { PACKAGE_PIN C15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[5] }]; #IO_L12N_T1_MRCC_15    Sch=syzygy_d_n[5]
#set_property -dict { PACKAGE_PIN C16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[6] }]; #IO_L20P_T3_A20_15     Sch=syzygy_d_p[6]
#set_property -dict { PACKAGE_PIN C17 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[6] }]; #IO_L20N_T3_A19_15     Sch=syzygy_d_n[6]
#set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_p[7] }]; #IO_L21P_T3_DQS_15     Sch=syzygy_d_p[7]
#set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_d_n[7] }]; #IO_L21N_T3_DQS_A18_15 Sch=syzygy_d_n[7]

#set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[16] }];  #IO_L19P_T3_A22_15       Sch=syzygy_s[16]
#set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[17] }];  #IO_L19N_T3_A21_VREF_15  Sch=syzygy_s[17]
#set_property -dict { PACKAGE_PIN G18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[18] }];  #IO_L22P_T3_A17_15       Sch=syzygy_s[18]
#set_property -dict { PACKAGE_PIN F18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[19] }];  #IO_L22N_T3_A16_15       Sch=syzygy_s[19]
#set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[20] }];  #IO_L23P_T3_FOE_B_15     Sch=syzygy_s[20]
#set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[21] }];  #IO_L23N_T3_FWE_B_15     Sch=syzygy_s[21]
#set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[22] }];  #IO_L24P_T3_RS1_15       Sch=syzygy_s[22]
#set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[23] }];  #IO_L24N_T3_RS0_15       Sch=syzygy_s[23]
#set_property -dict { PACKAGE_PIN H14 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[24] }];  #IO_L15P_T2_DQS_15       Sch=syzygy_s[24]
#set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[25] }];  #IO_L15N_T2_DQS_ADV_B_15 Sch=syzygy_s[25]
#set_property -dict { PACKAGE_PIN E17 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[26] }];  #IO_L16P_T2_A28_15       Sch=syzygy_s[26]
#set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[27] }];  #IO_L16N_T2_A27_15       Sch=syzygy_s[27]

#set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_p2c_clk_p }]; #IO_L13P_T2_MRCC_15 Sch=syzygy_p2c_clk_p
#set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_p2c_clk_n }]; #IO_L13N_T2_MRCC_15 Sch=syzygy_p2c_clk_n
#set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS18 } [get_ports { syzygy_c2p_clk_p }]; #IO_L14P_T2_SRCC_15 Sch=syzygy_c2p_clk_p
#set_property -dict { PACKAGE_PIN F16 IOSTANDARD LVCMOS18 } [get_ports { syzygy_c2p_clk_n }]; #IO_L14N_T2_SRCC_15 Sch=syzygy_c2p_clk_n

#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 PULLUP TRUE } [get_ports { syzygy_scl }]; #IO_L18P_T2_A12_D28_14 Sch=syzygy_scl
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 PULLUP TRUE } [get_ports { syzygy_sda }]; #IO_L18N_T2_A11_D27_14 Sch=syzygy_sda
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 }             [get_ports { syzygy_det }]; #IO_L19P_T3_A10_D26_14 Sch=syzygy_det

## Encryption Chip
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }]; #IO_L18P_T2_35 Sch=crypto_sda

# Platform MCU Firmware Reprogramming
#set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { mcu_rstn }]; #IO_25_14              Sch=mcu_nrst_fpga
#set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 } [get_ports { mcu_cs }];   #IO_L22N_T3_A04_D20_14 Sch=mcu_cs
#set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [get_ports { mcu_mosi }]; #IO_L23P_T3_A03_D19_14 Sch=mcu_mosi
#set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { mcu_miso }]; #IO_L23N_T3_A02_D18_14 Sch=mcu_miso
#set_property -dict { PACKAGE_PIN T9 IOSTANDARD LVCMOS33 }  [get_ports { mcu_sck }];  #IO_L24P_T3_A01_D17_14 Sch=mcu_sck

## Miscellaneous
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { mcu_rsvd[1] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=mcu_rsvd[1]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { mcu_rsvd[2] }]; #IO_L22P_T3_A05_D21_14     Sch=mcu_rsvd[2]

## DDR3
#set_property -dict { PACKAGE_PIN R6 } [get_ports { ddr3_a[0] }];  #IO_L19P_T3_34      Sch=ddr3_a[0]
#set_property -dict { PACKAGE_PIN R7 } [get_ports { ddr3_a[1] }];  #IO_L23P_T3_34      Sch=ddr3_a[1]
#set_property -dict { PACKAGE_PIN P2 } [get_ports { ddr3_a[10] }]; #IO_L15P_T2_DQS_34  Sch=ddr3_a[10]
#set_property -dict { PACKAGE_PIN P5 } [get_ports { ddr3_a[11] }]; #IO_L13N_T2_MRCC_34 Sch=ddr3_a[11]
#set_property -dict { PACKAGE_PIN R1 } [get_ports { ddr3_a[12] }]; #IO_L17P_T2_34      Sch=ddr3_a[12]
#set_property -dict { PACKAGE_PIN U8 } [get_ports { ddr3_a[13] }]; #IO_25_34           Sch=ddr3_a[13]
#set_property -dict { PACKAGE_PIN N6 } [get_ports { ddr3_a[14] }]; #IO_L18N_T2_34      Sch=ddr3_a[14]
#set_property -dict { PACKAGE_PIN T6 } [get_ports { ddr3_a[2] }];  #IO_L23N_T3_34      Sch=ddr3_a[2]
#set_property -dict { PACKAGE_PIN U7 } [get_ports { ddr3_a[3] }];  #IO_L22P_T3_34      Sch=ddr3_a[3]
#set_property -dict { PACKAGE_PIN T1 } [get_ports { ddr3_a[4] }];  #IO_L17N_T2_34      Sch=ddr3_a[4]
#set_property -dict { PACKAGE_PIN V7 } [get_ports { ddr3_a[5] }];  #IO_L20P_T3_34      Sch=ddr3_a[5]
#set_property -dict { PACKAGE_PIN P3 } [get_ports { ddr3_a[6] }];  #IO_L14N_T2_SRCC_34 Sch=ddr3_a[6]
#set_property -dict { PACKAGE_PIN T8 } [get_ports { ddr3_a[7] }];  #IO_L24N_T3_34      Sch=ddr3_a[7]
#set_property -dict { PACKAGE_PIN M6 } [get_ports { ddr3_a[8] }];  #IO_L18P_T2_34      Sch=ddr3_a[8]
#set_property -dict { PACKAGE_PIN R8 } [get_ports { ddr3_a[9] }];  #IO_L24P_T3_34      Sch=ddr3_a[9]
#set_property -dict { PACKAGE_PIN V6 } [get_ports { ddr3_ba[0] }]; #IO_L20N_T3_34      Sch=ddr3_ba[0]
#set_property -dict { PACKAGE_PIN R2 } [get_ports { ddr3_ba[1] }]; #IO_L15N_T2_DQS_34  Sch=ddr3_ba[1]
#set_property -dict { PACKAGE_PIN R5 } [get_ports { ddr3_ba[2] }]; #IO_L19N_T3_VREF_34 Sch=ddr3_ba[2]
#set_property -dict { PACKAGE_PIN N4 } [get_ports { ddr3_cas }];   #IO_L16N_T2_34      Sch=ddr3_cas
#set_property -dict { PACKAGE_PIN V9    IOSTANDARD LVDS } [get_ports { ddr3_ck_n }]; #IO_L21N_T3_DQS_34 Sch=ddr3_ck_n
#set_property -dict { PACKAGE_PIN U9    IOSTANDARD LVDS } [get_ports { ddr3_ck_p }]; #IO_L21P_T3_DQS_34 Sch=ddr3_ck_p
#set_property -dict { PACKAGE_PIN N5 } [get_ports { ddr3_cke[0] }]; #IO_L13P_T2_MRCC_34 Sch=ddr3_cke[0]
#set_property -dict { PACKAGE_PIN R3 } [get_ports { ddr3_d[0] }];   #IO_L11P_T1_SRCC_34 Sch=ddr3_d[0]
#set_property -dict { PACKAGE_PIN V1 } [get_ports { ddr3_d[1] }];   #IO_L7N_T1_34       Sch=ddr3_d[1]
#set_property -dict { PACKAGE_PIN M2 } [get_ports { ddr3_d[10] }];  #IO_L4N_T0_34       Sch=ddr3_d[10]
#set_property -dict { PACKAGE_PIN L4 } [get_ports { ddr3_d[11] }];  #IO_L5N_T0_34       Sch=ddr3_d[11]
#set_property -dict { PACKAGE_PIN L6 } [get_ports { ddr3_d[12] }];  #IO_L6P_T0_34       Sch=ddr3_d[12]
#set_property -dict { PACKAGE_PIN K3 } [get_ports { ddr3_d[13] }];  #IO_L2P_T0_34       Sch=ddr3_d[13]
#set_property -dict { PACKAGE_PIN M1 } [get_ports { ddr3_d[14] }];  #IO_L1N_T0_34       Sch=ddr3_d[14]
#set_property -dict { PACKAGE_PIN K5 } [get_ports { ddr3_d[15] }];  #IO_L5P_T0_34       Sch=ddr3_d[15]
#set_property -dict { PACKAGE_PIN T3 } [get_ports { ddr3_d[2] }];   #IO_L11N_T1_SRCC_34 Sch=ddr3_d[2]
#set_property -dict { PACKAGE_PIN U4 } [get_ports { ddr3_d[3] }];   #IO_L8P_T1_34       Sch=ddr3_d[3]
#set_property -dict { PACKAGE_PIN U3 } [get_ports { ddr3_d[4] }];   #IO_L8N_T1_34       Sch=ddr3_d[4]
#set_property -dict { PACKAGE_PIN V5 } [get_ports { ddr3_d[5] }];   #IO_L10P_T1_34      Sch=ddr3_d[5]
#set_property -dict { PACKAGE_PIN T5 } [get_ports { ddr3_d[6] }];   #IO_L12P_T1_MRCC_34 Sch=ddr3_d[6]
#set_property -dict { PACKAGE_PIN V4 } [get_ports { ddr3_d[7] }];   #IO_L10N_T1_34      Sch=ddr3_d[7]
#set_property -dict { PACKAGE_PIN M3 } [get_ports { ddr3_d[8] }];   #IO_L4P_T0_34       Sch=ddr3_d[8]
#set_property -dict { PACKAGE_PIN L3 } [get_ports { ddr3_d[9] }];   #IO_L2N_T0_34       Sch=ddr3_d[9]
#set_property -dict { PACKAGE_PIN U1 } [get_ports { ddr3_dm[0] }];  #IO_L7P_T1_34       Sch=ddr3_dm[0]
#set_property -dict { PACKAGE_PIN L1 } [get_ports { ddr3_dm[1] }];  #IO_L1P_T0_34       Sch=ddr3_dm[1]
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVDS } [get_ports { ddr3_dqs_n[0] }]; #IO_L9N_T1_DQS_34 Sch=ddr3_dqs_n[0]
#set_property -dict { PACKAGE_PIN U2    IOSTANDARD LVDS } [get_ports { ddr3_dqs_p[0] }]; #IO_L9P_T1_DQS_34 Sch=ddr3_dqs_p[0]
#set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVDS } [get_ports { ddr3_dqs_n[1] }]; #IO_L3N_T0_DQS_34 Sch=ddr3_dqs_n[1]
#set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVDS } [get_ports { ddr3_dqs_p[1] }]; #IO_L3P_T0_DQS_34 Sch=ddr3_dqs_p[1]
#set_property -dict { PACKAGE_PIN P4 } [get_ports { ddr3_odt }];   #IO_L14P_T2_SRCC_34 Sch=ddr3_odt
#set_property -dict { PACKAGE_PIN M4 } [get_ports { ddr3_ras }];   #IO_L16P_T2_34      Sch=ddr3_ras
#set_property -dict { PACKAGE_PIN K6 } [get_ports { ddr3_reset }]; #IO_0_34            Sch=ddr3_reset
#set_property -dict { PACKAGE_PIN U6 } [get_ports { ddr3_we }];    #IO_L22N_T3_34      Sch=ddr3_we

## Bitstream Settings
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
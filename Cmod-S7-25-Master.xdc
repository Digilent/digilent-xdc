## This file is a general .xdc for the Cmod S7-25 Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 12 MHz System Clock
#set_property -dict { PACKAGE_PIN M9    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_14 Sch=gclk
#create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports { clk }];

## Push Buttons
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L6P_T0_34 Sch=btn[0]
#set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L6N_T0_VREF_34 Sch=btn[1]

## RGB LEDs
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L10N_T1_34 Sch=led0_b
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L9N_T1_DQS_34 Sch=led0_g
#set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L10P_T1_34 Sch=led0_r

## 4 LEDs
#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L8P_T1_34 Sch=led[1]
#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L16P_T2_34 Sch=led[2]
#set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L16N_T2_34 Sch=led[3]
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L8N_T1_34 Sch=led[4]

## Pmod Header JA
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L14P_T2_SRCC_34 Sch=ja[1]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L14N_T2_SRCC_34 Sch=ja[2]
#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L13P_T2_MRCC_34 Sch=ja[3]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L11N_T1_SRCC_34 Sch=ja[4]
#set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L13N_T2_MRCC_34 Sch=ja[7]
#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L12P_T1_MRCC_34 Sch=ja[8]
#set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L12N_T1_MRCC_34 Sch=ja[9]
#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L11P_T1_SRCC_34 Sch=ja[10]

## USB UART
## Note: Port names are from the perspoctive of the FPGA.
#set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { uart_tx }]; #IO_L6N_T0_D08_VREF_14 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { uart_rx }]; #IO_L5N_T0_D07_14 Sch=uart_txd_in

## Analog Inputs on PIO Pins 32 and 33
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { vaux5_p }]; #IO_L12P_T1_MRCC_AD5P_15 Sch=ain_p[32]
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { vaux5_n }]; #IO_L12N_T1_MRCC_AD5N_15 Sch=ain_n[32]
#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { vaux12_p }]; #IO_L11P_T1_SRCC_AD12P_15 Sch=ain_p[33]
#set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { vaux12_n }]; #IO_L11N_T1_SRCC_AD12N_15 Sch=ain_n[33]

## Dedicated Digital I/O on the PIO Headers
#set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports { pio1 }]; #IO_L18N_T2_34 Sch=pio[01]
#set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { pio2 }]; #IO_L19P_T3_34 Sch=pio[02]
#set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { pio3 }]; #IO_L19N_T3_VREF_34 Sch=pio[03]
#set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { pio4 }]; #IO_L20P_T3_34 Sch=pio[04]
#set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { pio5 }]; #IO_L20N_T3_34 Sch=pio[05]
#set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports { pio6 }]; #IO_L21P_T3_DQS_34 Sch=pio[06]
#set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { pio7 }]; #IO_L21N_T3_DQS_34 Sch=pio[07]
#set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports { pio8 }]; #IO_L22P_T3_34 Sch=pio[08]
#set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { pio9 }]; #IO_L22N_T3_34 Sch=pio[09]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { pio16 }]; #IO_L11P_T1_SRCC_14 Sch=pio[16]
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { pio17 }]; #IO_L11N_T1_SRCC_14 Sch=pio[17]
#set_property -dict { PACKAGE_PIN N13   IOSTANDARD LVCMOS33 } [get_ports { pio18 }]; #IO_L8N_T1_D12_14 Sch=pio[18]
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { pio19 }]; #IO_L10N_T1_D15_14 Sch=pio[19]
#set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { pio20 }]; #IO_L10P_T1_D14_14 Sch=pio[20]
#set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { pio21 }]; #IO_L9N_T1_DQS_D13_14 Sch=pio[21]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { pio22 }]; #IO_L9P_T1_DQS_14 Sch=pio[22]
#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { pio23 }]; #IO_L4N_T0_D05_14 Sch=pio[23]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { pio26 }]; #IO_L7N_T1_D10_14 Sch=pio[26]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { pio27 }]; #IO_L4P_T0_D04_14 Sch=pio[27]
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { pio28 }]; #IO_L5P_T0_D06_14 Sch=pio[28]
#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { pio29 }]; #IO_L7P_T1_D09_14 Sch=pio[29]
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { pio30 }]; #IO_L8P_T1_D11_14 Sch=pio[30]
#set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS33 } [get_ports { pio31 }]; #IO_0_14 Sch=pio[31]
#set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { pio40 }]; #IO_L5P_T0_34 Sch=pio[40]
#set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { pio41 }]; #IO_L2N_T0_34 Sch=pio[41]
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { pio42 }]; #IO_L2P_T0_34 Sch=pio[42]
#set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { pio43 }]; #IO_L4N_T0_34 Sch=pio[43]
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { pio44 }]; #IO_L4P_T0_34 Sch=pio[44]
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { pio45 }]; #IO_L3N_T0_DQS_34 Sch=pio[45]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { pio46 }]; #IO_L3P_T0_DQS_34 Sch=pio[46]
#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { pio47 }]; #IO_L1N_T0_34 Sch=pio[47]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { pio48 }]; #IO_L1P_T0_34 Sch=pio[48]

## Quad SPI Flash
## Note: QSPI clock can only be accessed through the STARTUPE2 primitive
#set_property -dict { PACKAGE_PIN L11   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN J12   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
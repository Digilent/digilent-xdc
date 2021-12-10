## This file is a general .xdc for the ARTY Z7-20 Rev.B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock Signal
#set_property -dict { PACKAGE_PIN H16    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Sch=SYSCLK
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];#set

## Switches
#set_property -dict { PACKAGE_PIN M20    IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L7N_T1_AD2N_35 Sch=SW0
#set_property -dict { PACKAGE_PIN M19    IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L7P_T1_AD2P_35 Sch=SW1

## RGB LEDs
#set_property -dict { PACKAGE_PIN L15    IOSTANDARD LVCMOS33 } [get_ports { led4_b }]; #IO_L22N_T3_AD7P_35 Sch=LED4_B
#set_property -dict { PACKAGE_PIN G17    IOSTANDARD LVCMOS33 } [get_ports { led4_g }]; #IO_L16P_T2_35 Sch=LED4_G
#set_property -dict { PACKAGE_PIN N15    IOSTANDARD LVCMOS33 } [get_ports { led4_r }]; #IO_L21P_T3_DQS_AD14P_35 Sch=LED4_R
#set_property -dict { PACKAGE_PIN G14    IOSTANDARD LVCMOS33 } [get_ports { led5_b }]; #IO_0_35 Sch=LED5_B
#set_property -dict { PACKAGE_PIN L14    IOSTANDARD LVCMOS33 } [get_ports { led5_g }]; #IO_L22P_T3_AD7P_35 Sch=LED5_G
#set_property -dict { PACKAGE_PIN M15    IOSTANDARD LVCMOS33 } [get_ports { led5_r }]; #IO_L23N_T3_35 Sch=LED5_R

## LEDs
#set_property -dict { PACKAGE_PIN R14    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L6N_T0_VREF_34 Sch=LED0
#set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L6P_T0_34 Sch=LED1
#set_property -dict { PACKAGE_PIN N16    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L21N_T3_DQS_AD14N_35 Sch=LED2
#set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L23P_T3_35 Sch=LED3

## Buttons
#set_property -dict { PACKAGE_PIN D19    IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L4P_T0_35 Sch=BTN0
#set_property -dict { PACKAGE_PIN D20    IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4N_T0_35 Sch=BTN1
#set_property -dict { PACKAGE_PIN L20    IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L9N_T1_DQS_AD3N_35 Sch=BTN2
#set_property -dict { PACKAGE_PIN L19    IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L9P_T1_DQS_AD3P_35 Sch=BTN3

## Pmod Header JA
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[1] }]; #IO_L17P_T2_34 Sch=JA1_P (Pin 1)
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[1] }]; #IO_L17N_T2_34 Sch=JA1_N (Pin 2)
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { ja_p[2] }]; #IO_L7P_T1_34 Sch=JA2_P (Pin 3)
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { ja_n[2] }]; #IO_L7N_T1_34 Sch=JA2_N (Pin 4)
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[3] }]; #IO_L12P_T1_MRCC_34 Sch=JA3_P (Pin 7)
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[3] }]; #IO_L12N_T1_MRCC_34 Sch=JA3_N (Pin 8)
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[4] }]; #IO_L22P_T3_34 Sch=JA4_P (Pin 9)
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[4] }]; #IO_L22N_T3_34 Sch=JA4_N (Pin 10)

## Pmod Header JB
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { jb_p[1] }]; #IO_L8P_T1_34 Sch=JB1_P (Pin 1)
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { jb_n[1] }]; #IO_L8N_T1_34 Sch=JB1_N (Pin 2)
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jb_p[2] }]; #IO_L1P_T0_34 Sch=JB2_P (Pin 3)
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { jb_n[2] }]; #IO_L1N_T0_34 Sch=JB2_N (Pin 4)
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jb_p[3] }]; #IO_L18P_T2_34 Sch=JB3_P (Pin 7)
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { jb_n[3] }]; #IO_L18N_T2_34 Sch=JB3_N (Pin 8)
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jb_p[4] }]; #IO_L4P_T0_34 Sch=JB4_P (Pin 9)
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { jb_n[4] }]; #IO_L4N_T0_34 Sch=JB4_N (Pin 10)

## Audio Out
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { aud_pwm }]; #IO_L20N_T3_34 Sch=AUD_PWM
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { aud_sd }]; #IO_L20P_T3_34 Sch=AUD_SD

## Crypto SDA 
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }]; #IO_25_35 Sch=CRYPTO_SDA

## HDMI RX Signals
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }]; #IO_L13N_T2_MRCC_35 Sch=HDMI_RX_CEC
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_clk_n }]; #IO_L13N_T2_MRCC_34 Sch=HDMI_RX_CLK_N
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_clk_p }]; #IO_L13P_T2_MRCC_34 Sch=HDMI_RX_CLK_P
#set_property -dict { PACKAGE_PIN W20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_n[0] }]; #IO_L16N_T2_34 Sch=HDMI_RX_D0_N
#set_property -dict { PACKAGE_PIN V20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_p[0] }]; #IO_L16P_T2_34 Sch=HDMI_RX_D0_P
#set_property -dict { PACKAGE_PIN U20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_n[1] }]; #IO_L15N_T2_DQS_34 Sch=HDMI_RX_D1_N
#set_property -dict { PACKAGE_PIN T20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_p[1] }]; #IO_L15P_T2_DQS_34 Sch=HDMI_RX_D1_P
#set_property -dict { PACKAGE_PIN P20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_n[2] }]; #IO_L14N_T2_SRCC_34 Sch=HDMI_RX_D2_N
#set_property -dict { PACKAGE_PIN N20   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_d_p[2] }]; #IO_L14P_T2_SRCC_34 Sch=HDMI_RX_D2_P
#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_hpd }]; #IO_25_34 Sch=HDMI_RX_HPD
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_scl }]; #IO_L11P_T1_SRCC_34 Sch=HDMI_RX_SCL
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_sda }]; #IO_L11N_T1_SRCC_34 Sch=HDMI_RX_SDA

## HDMI TX Signals
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L19N_T3_VREF_35 Sch=HDMI_TX_CEC
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_clk_n }]; #IO_L11N_T1_SRCC_35 Sch=HDMI_TX_CLK_N
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_clk_p }]; #IO_L11P_T1_SRCC_35 Sch=HDMI_TX_CLK_P
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_n[0] }]; #IO_L12N_T1_MRCC_35 Sch=HDMI_TX_D0_N
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_p[0] }]; #IO_L12P_T1_MRCC_35 Sch=HDMI_TX_D0_P
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_n[1] }]; #IO_L10N_T1_AD11N_35 Sch=HDMI_TX_D1_N
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_p[1] }]; #IO_L10P_T1_AD11P_35 Sch=HDMI_TX_D1_P
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_n[2] }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=HDMI_TX_D2_N
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_d_p[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=HDMI_TX_D2_P
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_hpdn }]; #IO_0_34 Sch=HDMI_TX_HDPN
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_scl }]; #IO_L8P_T1_AD10P_35 Sch=HDMI_TX_SCL
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_sda }]; #IO_L8N_T1_AD10N_35 Sch=HDMI_TX_SDA

## ChipKit Outer Digital Header
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io0  }]; #IO_L5P_T0_34            Sch=CK_IO0
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { ck_io1  }]; #IO_L2N_T0_34            Sch=CK_IO1
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { ck_io2  }]; #IO_L3P_T0_DQS_PUDC_B_34 Sch=CK_IO2
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { ck_io3  }]; #IO_L3N_T0_DQS_34        Sch=CK_IO3
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { ck_io4  }]; #IO_L10P_T1_34           Sch=CK_IO4
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io5  }]; #IO_L5N_T0_34            Sch=CK_IO5
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_io6  }]; #IO_L19P_T3_34           Sch=CK_IO6
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { ck_io7  }]; #IO_L9N_T1_DQS_34        Sch=CK_IO7
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io8  }]; #IO_L21P_T3_DQS_34       Sch=CK_IO8
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ck_io9  }]; #IO_L21N_T3_DQS_34       Sch=CK_IO9
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { ck_io10 }]; #IO_L9P_T1_DQS_34        Sch=CK_IO10
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io11 }]; #IO_L19N_T3_VREF_34      Sch=CK_IO11
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { ck_io12 }]; #IO_L23N_T3_34           Sch=CK_IO12
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { ck_io13 }]; #IO_L23P_T3_34           Sch=CK_IO13

## ChipKit Inner Digital Header
#set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { ck_io26 }]; #IO_L19N_T3_VREF_13  Sch=CK_IO26
#set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { ck_io27 }]; #IO_L6N_T0_VREF_13   Sch=CK_IO27
#set_property -dict { PACKAGE_PIN V6    IOSTANDARD LVCMOS33 } [get_ports { ck_io28 }]; #IO_L22P_T3_13       Sch=CK_IO28
#set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { ck_io29 }]; #IO_L11P_T1_SRCC_13  Sch=CK_IO29
#set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { ck_io30 }]; #IO_L11N_T1_SRCC_13  Sch=CK_IO30
#set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { ck_io31 }]; #IO_L17N_T2_13       Sch=CK_IO31
#set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { ck_io32 }]; #IO_L15P_T2_DQS_13   Sch=CK_IO32
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { ck_io33 }]; #IO_L21N_T3_DQS_13   Sch=CK_IO33
#set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS33 } [get_ports { ck_io34 }]; #IO_L16P_T2_13       Sch=CK_IO34
#set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { ck_io35 }]; #IO_L22N_T3_13       Sch=CK_IO35
#set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { ck_io36 }]; #IO_L13N_T2_MRCC_13  Sch=CK_IO36
#set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33 } [get_ports { ck_io37 }]; #IO_L13P_T2_MRCC_13  Sch=cCK_IO37
#set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33 } [get_ports { ck_io38 }]; #IO_L15N_T2_DQS_13   Sch=CK_IO38
#set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVCMOS33 } [get_ports { ck_io39 }]; #IO_L14N_T2_SRCC_13  Sch=CK_IO39
#set_property -dict { PACKAGE_PIN W9    IOSTANDARD LVCMOS33 } [get_ports { ck_io40 }]; #IO_L16N_T2_13       Sch=CK_IO40
#set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS33 } [get_ports { ck_io41 }]; #IO_L14P_T2_SRCC_13  Sch=CK_IO41

## ChipKit Outer Analog Header - as Single-Ended Analog Inputs
## NOTE: These ports can be used as single-ended analog inputs with voltages from 0-3.3V (ChipKit analog pins A0-A5) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
## NOTE: The following constraints should be used with the XADC IP core when using these ports as analog inputs.
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { vaux1_n  }]; #IO_L3N_T0_DQS_AD1N_35 Sch=CK_AN0_N   ChipKit pin=A0
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { vaux1_p  }]; #IO_L3P_T0_DQS_AD1P_35 Sch=CK_AN0_P   ChipKit pin=A0
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { vaux9_n  }]; #IO_L5N_T0_AD9N_35     Sch=CK_AN1_N   ChipKit pin=A1
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { vaux9_p  }]; #IO_L5P_T0_AD9P_35     Sch=CK_AN1_P   ChipKit pin=A1
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_n  }]; #IO_L20N_T3_AD6N_35    Sch=CK_AN2_N   ChipKit pin=A2
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { vaux6_p  }]; #IO_L20P_T3_AD6P_35    Sch=CK_AN2_P   ChipKit pin=A2
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_n }]; #IO_L24N_T3_AD15N_35   Sch=CK_AN3_N   ChipKit pin=A3
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { vaux15_p }]; #IO_L24P_T3_AD15P_35   Sch=CK_AN3_P   ChipKit pin=A3
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_n  }]; #IO_L17N_T2_AD5N_35    Sch=CK_AN4_N   ChipKit pin=A4
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { vaux5_p  }]; #IO_L17P_T2_AD5P_35    Sch=CK_AN4_P   ChipKit pin=A4
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { vaux13_n }]; #IO_L18N_T2_AD13N_35   Sch=CK_AN5_N   ChipKit pin=A5
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { vaux13_p }]; #IO_L18P_T2_AD13P_35   Sch=CK_AN5_P   ChipKit pin=A5
## ChipKit Outer Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using these ports as digital I/O.
#set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { ck_a0 }]; #IO_L18N_T2_13      Sch=CK_A0
#set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS33 } [get_ports { ck_a1 }]; #IO_L20P_T3_13      Sch=CK_A1
#set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS33 } [get_ports { ck_a2 }]; #IO_L18P_T2_13      Sch=CK_A2
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { ck_a3 }]; #IO_L21P_T3_DQS_13  Sch=CK_A3
#set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { ck_a4 }]; #IO_L19P_T3_13      Sch=CK_A4
#set_property -dict { PACKAGE_PIN U10   IOSTANDARD LVCMOS33 } [get_ports { ck_a5 }]; #IO_L12N_T1_MRCC_13 Sch=CK_A5

## ChipKit Inner Analog Header - as Differential Analog Inputs
## NOTE: These ports can be used as differential analog inputs with voltages from 0-1.0V (ChipKit analog pins A6-A11) or as digital I/O.
## WARNING: Do not use both sets of constraints at the same time!
## NOTE: The following constraints should be used with the XADC core when using these ports as analog inputs.
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { vaux12_p }]; #IO_L15P_T2_DQS_AD12P_35 Sch=AD12_P   ChipKit pin=A6
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { vaux12_n }]; #IO_L15N_T2_DQS_AD12N_35 Sch=AD12_N   ChipKit pin=A7
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_p  }]; #IO_L1P_T0_AD0P_35       Sch=AD0_P    ChipKit pin=A8
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { vaux0_n  }]; #IO_L1N_T0_AD0N_35       Sch=AD0_N    ChipKit pin=A9
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { vaux8_p  }]; #IO_L2P_T0_AD8P_35       Sch=AD8_P    ChipKit pin=A10
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { vaux8_n  }]; #IO_L2N_T0_AD8N_35       Sch=AD8_N    ChipKit pin=A11
## ChipKit Inner Analog Header - as Digital I/O
## NOTE: The following constraints should be used when using the inner analog header ports as digital I/O.
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { ck_a6  }]; #IO_L15P_T2_DQS_AD12P_35 Sch=AD12_P
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { ck_a7  }]; #IO_L15N_T2_DQS_AD12N_35 Sch=AD12_N
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { ck_a8  }]; #IO_L1P_T0_AD0P_35       Sch=AD0_P
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { ck_a9  }]; #IO_L1N_T0_AD0N_35       Sch=AD0_N
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { ck_a10 }]; #IO_L2P_T0_AD8P_35       Sch=AD8_P
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { ck_a11 }]; #IO_L2N_T0_AD8N_35       Sch=AD8_N

## ChipKit SPI
## NOTE: The ChipKit SPI header ports can also be used as digital I/O
#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L10N_T1_34 Sch=CK_MISO
#set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { ck_mosi }]; #IO_L2P_T0_34 Sch=CK_MISO
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { ck_sck  }]; #IO_L19P_T3_35 Sch=CK_SCK
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { ck_ss   }]; #IO_L6P_T0_35 Sch=CK_SS

## ChipKit I2C
#set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { ck_scl }]; #IO_L24N_T3_34 Sch=CK_SCL
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { ck_sda }]; #IO_L24P_T3_34 Sch=CK_SDA

## Misc. ChipKit Ports
#set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_L20N_T3_13 Sch=CK_IOA

## Not Connected Pins
#set_property PACKAGE_PIN F17 [get_ports {netic20_f17}]; #IO_L6N_T0_VREF_35
#set_property PACKAGE_PIN G18 [get_ports {netic20_g18}]; #IO_L16N_T2_35
#set_property PACKAGE_PIN T9 [get_ports {netic20_t9}]; #IO_L12P_T1_MRCC_13
#set_property PACKAGE_PIN U9 [get_ports {netic20_u9}]; #IO_L17P_T2_13

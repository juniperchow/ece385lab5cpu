// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Sep 29 11:01:18 2026
// Host        : juniper-ThinkPad-T14-Gen-5 running 64-bit Ubuntu Stonking Stingray (development branch)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
V4Cd87FlFytYd39RKKCtvQoivUU=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

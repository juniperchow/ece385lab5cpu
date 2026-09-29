// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Sep 29 11:01:18 2026
// Host        : juniper-ThinkPad-T14-Gen-5 running 64-bit Ubuntu Stonking Stingray (development branch)
// Command     : write_verilog -force -mode funcsim
//               /home/juniper/Nextcloud/uofi_fa26/ece385/lab5/lab5-cpu/lab5-cpu.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
fhQvSXL1Yq6rl8w9w6R2jjiayGSJ3MN4zTgBP3txRut4/2mkohpb2ZnlqG+SoCrj6gTb9NI+c3p3
D96XGJHNO3YvHmuLvGJg1LJiBoiPhq9yVef7G9Ip3RhfBSNI1LfzgZSY4wTJyoUJ2gHXrjyxN3Jt
7uFv8ynirggqRgT5fCbm7+eAQrTfh54TJ3m3chcJFvXTus+n37nOsGal+Y1RfFu9vlDAb0Yozj8F
8RKz6qLw9jsdlpAh3vCXKJwvpNq+KQaeXRnn3F+GF2BYVuFEZqizAf0gDMZqkYtI+7sez+0oJCMM
Bn9GXudiJUETAV3B+Z6yUwrrQsr18H7254xdfHAb0p7AqQOJNnoY90oJF82VIUZ7eSThmKEe+/8l
Sz9JiJ6Uck8V4X63lhFlvn3Nhv6cLszag+eKN1vbkzyeavYXxmXPv+0HXp5nTtyHNq8TZ0UPDD2K
442qhIM8aMAx1yAPbR36//Si+FpHnU1XwrFauHLqL1E59QvgcYTe1nmHLPbRL2e8uyX/XVFjOciu
M3FJy3erPlQhp2Ov2+UJ9FvyGF0eKIZh0AMz98fqQimWvi9HVcV8h7U7XXGAMo3S6etc+s4ASW53
2+74fRIj6vG3VHzjHoS+IWaFuT4P4j84hNgTU6ijkX5cv1xGBuaGA1JTLX2KVA0VuHPL9KiGnoN4
7wGQMTdsgKTi5/O2ez8V7zTYlFrCK0cUHk2lEog9Mieh3BhV2N4jOHqDqzDFNGaGSBjKVlRRjyNw
9YjUXiyq88fdHm5w0T1u5yv1j/0Qpk3kaH82d4XY76gnRqlHyqanstdD9U6DBoYRI7JzuUU94N6K
USKMeCldZ9OJtQInzO3caXnFCjUuyw5FO6DAh8vzAt0WNckIMXGsjz1nA7Jsmm+5yvyIfBmOJYZC
ocvYDT6NDM2xI9J5MBb/n2pezQ3XA8bc5I+NTJbmS+xTJ0aAuwXuGaXWsMrUMCJCHCt82xy8hQbg
x7XdAQZXgYUzWnWgqJQ0ihxHAzRJHGBa7sXH2KGIezZTaT0QQOie2xoEeDg288LrIlf8lkopPpCr
7hyxQ9JLKn67aPn3hq/M/Ylaz6An8LlKOssPApzAfnWlL65UJhSVCGODzbWwj3Q5AZErFbb0tD/5
IANvy0y9ZvG6IUtpEF5wq+NkjpMONSWueX2V+ms+TSV7VHSZ3s4bBnvGwEXpye4hLgaiOJ0Yr4Ej
OjZUc/7Gpv81DBRijhMuaqzEKWaU+mlZH3CgPdtRATRFoiWhoPnhKzsbQL/JC1KpKitrKrNvJX/a
0Vedl6KYgSYIDT3fPcnBdZZcGl6RX19hrqCh66xn4EUrjrqZOOuxequ/7rgrnqhSohflY5xpUfL/
LVGJW7R4Wn/tKquwXE1WJCAX64QzLVB0hvfBTC5LhqR1YCtDKYOQaxckvcTdcplMwUmzWJQXWclM
Bk+T3Ghb6l5tR32BX1OVR7BdaWnw5z7VKP4P8tVt5td7SwWIHL6SBjuomXDIJP7lq1LQfFGKsMia
yVPs1KvjVqReodVCgRo8NCRCUnMxNcB04Ui2DvQHFmaG7tsbOyBkG11wl+FwpdSmsDVCuwSPo3c5
OyV4S3YAZ0Az48e+WB7UCzdTG4OEzq3Yj/VuH/j9vGlY5hqeeig+BUlTsVqPZyWL7qP56SF90uO0
IctUgiAlMcrwPLeLdvsPHZHhn4zECYYL+sD6yJCdwYcl9qhhF5Lm5/u11tvqz7NBC06nSiJwjuPg
4QphtR9u4sbX41NGeaA43GbJqfKcBKrIG0JjQnF8dpV5h17oQvqJ9kwJ7k7loNTUSzpsecY4Tl42
m+E0dGA08Yj6hOvS02OQfYvxv/yOjP7EfJ/Y7+HOXAiexbHe4fLHcKhUcNIsrnmzVckMRj5LiNwj
s2j1+YC6AWmouKGySnyQJxukYBBiFbBQ9j4SFPcnyhEAhAPrmt/EIVvzEI+wROy7CeaqEmZzPGVt
8xhYRoSE8VOcV6jLJ/FfglEeUXK1oKuOAx4JgTsnlsw6u/+aOI2E9fwg2cidkrO8IDhnpVYdLbCA
kk+5D61gBCl1EchyEchvf37BiyskArjxZhQDpzrUGCSULkcMeeK0H9PWQAjXvVmQ8N33yHDTkyBG
IRJG7dM6N/xKukswInTlZBXXlrLoEG6IJ8Zp828leUj4LyshwH1GBRtpWDMAa1jnp/UCRBv6hO3m
a5amVDoyJR6CZZ60/U8rmOg6D/i1uczqc9BQyo2NN5E/DHkSOEsS8FKnZc/AOXcdineDcGjKkJgs
qLvshGLr1TjRrLG1Jtwzl8K2xS36gJRjQLtW5etaf3K9nzXp33wGgcJBeBLwVp4apW3zxRe1+P5r
q+KxYIn+k7Aio7pdkdcPNwx7h/Y44OTkpoN2Y0NpSMiRRsJXIdiBxWaEoFtk1Xba+uctLDrT0/37
z7dUDspZYCL8VjdQaTEYl37zukuwWAWV/EnJJj7Ap+OND8lkZJpXl5YTTl1d4wIQ8ZIksfoQiM6d
r4VToJsYEKT/G7ATqPitNpkWtY1TSBbWz2KoY2kALYf/VvO2Gay9HKrRuBzQmzMrQTECy4K3rk5x
u0C4SKOIZcgFE+/xHG7ELw5peMS+miyTkCgNUE+fvzh0bR9GDZHMH31O4r/LddmK169hNbCBX52p
DtCSYl3PRpd2fyAcYIOuSI1OmZ5LlrxKOA3/Xsk20cbMdarIdnZ2M+aYLwqWaGBR/2k/Jwpwiqap
A3K0ZUiboRE+kL36WWeqbK1jm+DzkNImmgcso7COnDU+RUN3Jk14DOsXsH7/Qdt6ijT7KUcUUnf8
x55gAQtwZzivxIEOgQaOTFETIP+ZJ/ybLlgWggK8Urdbz5iWrk5aBMF9hZ7vuNh0LMawdlK6+IMM
7JoKa7Dy7lNBdQwwqv5tnGTr1dhGhh0/t4K+mYwd3FEpR+LEvlgYaynsata8DTFI0rIlTu6NMoM/
oUGRqcoQbrNt22ARkdozMYHYGuI/OyVPHdoGbZxvfhP8C8FUwN18taUZYafud3XYrjsVnPGHxalX
Z18njVwn8pcRbZ947uiRGIalT/ifnZsEYOQlByXefY+9Yxh5XLJiV2/VZtVHpwDeASW8C4FHDfV0
eDY64QflFmGQkWzzmX3YfHOwkCQd1vH/GmGFZmDfMZJ3t84nV4QxWrK+9UVV62FzoVVgUwVlrTri
T0euRgXT4rmozLVsX3XQI5dKzA9O/ybQBX+Uj7AWEL/x7kKSkVc7c1LmHtUHp/JT6fy6R1wvmhdX
in42Qg2xuTUAxjZxbFl6EHwHSPg1ty7aZaELZuQdkIdmqRkT6LEBCkrNy6oewWMkxwTaVM+gLkp8
9DjyJA+WqCXEqedBBICaHfklQVDORBtGl6ssL7zL1E+QAmnT2I9DSTCuN4NQI08b9AxXg6mUYHhl
ifFO91cIcJgZZKibmqcaMhGeV4/GLbKC46KlJG8u69WduL6r9ZQf7wLSa/onnnuseggxika0flk9
GaXEguZL5bfQnNRPs09IOZl6mPJxGum7trgbBKtHFl4BXdmVeKg7z4NFe+lwVcun1szniofCQn01
dJ8TXZ+a2UyBU1V6X3fYkGeX4n3eV9NGX1iKVu1PASZMWvzSwH8bdEmbbpG1VGPKMSQWRoYQEw0i
uM8Ld7E/L4Cgqqz1NnQYLbHNtRfPVEAcWe3lrHnqL579auOwcsy5LUBvzC9ZYIsn9I7wJqVGkOWP
6FZQaNaoGD/bskIjqGiXo7c8ggweoBtkhkpEPiTGQuHpRcWBWLVuUX6M0flRgaj0D+TXCFpMI4iC
P7yrzjL2vi3zGMT4tg2c2nLLtUxPGjpMwt/hn9r97KQbkejPA+qQQPXpKyopf0QPDggJpQ7PLYUw
QQctv/fxmFiE3f6N0eSdn46Y0K1KGL/izTZRNM1OcjyCLb3EMp8MjwrzyMpCM6At06qo71M9dQnN
iZk6ns6BTl1HBOsvUQQI2gYsIfBCWRTVTcQjq+9Q4nJ1O7gvYJjKsZS538CCTJJsSkQW4SnnKYQ2
7untYVvPYhj8fl+XEmukugVa475k+uYtS4h+jj126Z7gg0IHvQp0b+cRQcOKkgB2EWZ27VaouKzD
Mm+l2SrASzfXud0vRlZ2ZW0BfDZtkhzpoHJpszGmdp5BRA4Sp6bDFH3B2WyJx5UQne81UXmZuxhc
Qs5xB1cBLnm2fCwyQBp3E3aNKxS+q3VPYgoCliTd4jDADr1O0VN6T3BomWx45mIORMgvRzaiKehS
ekr2hzhwHNyIF3xCoZMopZp3lyR0KJyVZqM2n/6VX3Y7P/bPlnkcpfiONEmiZNvz3prXyCwnumkZ
nyAwTjf+EOOy0Rmz+aNLhHFwBEVi+Tpkee4dbktj+rC3z9G0ukzfQIeFCVjDkwYmE68/pCORtJvv
njQhMhmVbsBl3xYYq9ycKSJInCgDKgxrfUtlJd3NTtZG2gMaM6ibT/T3vhs1BMGHezeYiPUYWMWf
luhkNzaFL1Vcebz+fqKhUT0jig6mmJ5JFGM9S4+sOaqTEfGYFts31hX4CYDuux1lqaFAlN8ELWeU
mcCKbBWQS2+ULnKEhD4Busbp4MC4116PVdm1hMsNy3jX0qw4GJD1fRUizBLY7xsejh/eUTllhExe
L/vnUdLCAwVe6VEMGRvGK/3WKs7qCP7Wmmpejl7qGJJwmGQS/19Cb7OViRClxv3RZ7/IpF9Qeoht
8euUKYn8JdRs1+2Ox8tS9D02jgutk9APRinVVVK+ZQMSwrXZnnsje4nUqb3PdXnn3VOaIZUClyXR
hY3uHQRDcEAgiRP3UGVQaYUXt5tSvVRouKfP81nG0ACvqlkxO/Kob8P626ERSGnl70zPoR3M5P4o
y+70Svz/RsHZHTbO62VGMhFhwueUwgK9Gc6FcVf4ooH3NSHUJpltxc2EHxBnbKQIhwZoAN4pTHrX
Mn70dIikKe8GXl3PUlng/pYWni58wm5qyNtXwq5VcYhLDJFTUYiGLW94YA2rCTd2Cf3Sfwgkuriw
TB81pAXDE6EHpbRSmgKf9zn0nWdToeB88XNpvh7zuJHf4HjVtO5/hsuR46/9Vb3UZtMJzYsGfZb3
xDFcyUViceSaGZbsz3/3IFjwiMjz5cnHL5A9njrKbqEzgG+zRf9ZVfF34s487kRB27oLgI+pV+Db
OCZzQhjZ6InHR7ed9ImmuDLkuasjFMCBAvczNQho3iSJCASKabXDEvI9sxzyw6dScSqW9wCM0wXV
B3q1tqyK/3vG3X/diwu7AZT5xB8OOUjD6La0r6ZGoTD4f8ViU4Ul1U+I04mDMOrpZ7/EZztomxny
+5C40dsynHLjUlRvLkbrIEsthUqIGcy1tnbYiubzAT1YFWJGuVFxtgVtzBysbIIm1VGvQmSZe4DM
49LLsbxKK91XVi8S7pmN13P6sZQFBM9caYPrj7hKp9zoVdr9haAky4ED98Y1c0FA95aRUUmT0KQE
rCWBm8PI/pAX2p0zTQRAVE6kLnb6uqXaNHONtuij1bdC1C6gJnmGx+W2Qpbv8BoDss33TTqyU8Xm
1EE4GmZodcH+EwU46hYj0M5TgV+gxSg5bBNB+a+pqx7HgOFKiyrUVySIiaLDqePG0hUEM5fH/9J7
qCeOGZxNOWUMtQNdM1aR50eDNcOK/GVRKGgFwntX1nuBg1HUpmGs7XGJCF/awNhffxSCQkl9EEv9
gD8VRH0TnWaYSy6+ebQvCpDGJYGGS+l5YqdsxCMfVUG5x+0Lwo37n8BTPZPdpkoeAQXkUK/BAusR
/bZONsrYQeYN7aOWT2T+ALHX+kHq9kF+e5Ofr9K9eo9L7K3nsfhYHml4jsC0ebVSe8EAOLNE0GHE
/w1CI7QZvj/BZKERrY1+FbBiNXc3QBOk0EFLJ8r6GrTf0jqcTfOvbPrA8il7P0fVPWNCcesHlLGV
WL9MFR91lxiC69iPRypdd1pf6MniyqxOkCO0oVXkpqnioc2jQ/FrQVope+W4BbUAPEi9FsTuGfmv
VWl7deH4h94r4l9TCovuoU3aruStpkujE8Xw5nmifLB2U4W+JFjFyzSwH4T1bKq4bft3N8Fq0GQd
FjOQLgllyqtxIoTp+iVOG3NaA4JSvSi6YwLImFyxNBsHs5WMBRipMyM9fiXNyaJYz0T/YmqAhrkk
ZluGsXVKWRjpG6TIAVwWvJXLVps0NYAhDsYto4H/+l/ar4/tsFL5cF2BKaZktjTJ5Ihx9n97SdcS
Ff8JWVLN9FazG6SCwYEEKrmqrHwzvgNRs5Eb7SR3SE9qXbekL7IeLxXwryqu2Qu3WkjO1LQ6Q+dK
AisOrFpivP46LXC25AON9At1BKltpz5v51nzYLztYmmRWayeheMyw4XKoalSxKEvDe12I4AKmkfm
jjl8Y3Hk9f8BuFW8wZYdGbIz6qfweE9surXr+6joV4KZ/O6hKNw9lZ4UWJ3k9sBj5jVN7GIR3PbZ
Hv75MI5IeD1QyOKFnOjDqOL25PPhysSK7L7OWejOts/tqce4m5/sbEQxxGc+8areszTnL9OGNKsm
rNcIUhXdEzXUA1VFrraAqvM7Zq9fjM2cP/7UBPiW8LClKqpoo6KZPkCdqHs1zNnBRbnZLV0KxH3z
rKWB3trY+7M9kqm5j7MlIOSmHKdKFFUf9YE4Zi5GCFx68EQV3udr76lkxqYece/NkNnJm0LuQE7S
NkUqcR8RuxaNVC+ZRltKgsFU/osntaQDvQh6FGvNaG4TkEIVe4XItZ84Hh4o8EFXDnglhz6Lm7JT
4FmFjqKKJJHNn6ExqPB3HPkGsVXClzQX/10xs11869594Kcv3PgP9gLJX9cqpZsyw1+JjcYt3a9f
OXZ8+tjQxnLHwm9H6kQ4KNhg+8h0jXqkKwnnSIKD7VMzHiOa+A3l9Ab5Swe9z9ccoHcSJJdFijBN
+nhjDyKqKT9r/Dnu5uMvXIxp/5MGAZPnqa21fQwWSDqVy+sKNxyxfMTcgoYajybK0wCO2+soMqRj
Rg2/jVTMmWsUNDBbaxMs6J7xI3uRIgNPPWt6yJPJNkzW1p3xyDvRwSMQSmfbBPftRlr/70vzRUTB
+CtxRV1+RsCWaPktryP2K56Z8XzWtNeCFBL6/Q1l1QskKEDbCyhJGsN8Cyj9g4ARCLNm3vSHwmLc
RqSIM4whvrE2CvaMi0lNHWfdH1x7wJ8Jn2RaCabtkD578yUg2CIPmR+lKYcK4bk41G/hXWp/EsaB
qompzRIO6cPXzFLLu4qhpQGyQ9xVrLv490JDCdl2j55Q8qZt0Ds5ktJODUWZp8pD3NZ198BYEDTW
jZCrDqGc2+HMw4rQM30UQc+XbAR5sH770gGzFZjXJICtQGApR9CEOBXUG5CkTVg+Wc3hE+UgQO8l
rY2Y6zrkhLsSZgQ5xtzVPwrt5h63+FU3ZB3GDgC9MRJZXg6xbA2js1zZUg5Fgz4RJJcgbSDtixro
l4rnLtn35kjtI1ugKA97b0f0cRoWEFxvsj65NpiY0STmX/BNBIbGVyZiwvOvZ6oWQdE5tSeGMc48
PBkr5+7wVUWN9KYn9oek2CNlSGEHafPp1DTk0fco2P0goo5Tw2PjSZPUqOoEG13o6Pq05VhYgI+V
RxmYfY321+cPyTsMbVRAhYIg7vK9KUgtLrnAO1k7oLaXlsWRIJXnaUTFkJw1O7dQ78IQ3FmBfmp/
JIilC98CdoDQAUst7Q/14MsKX7Mx1n+ZARYtpk6HWg3ltr/pyaNsxKsElsUpy1g2/KQU+/ntavyr
Az9ZdhFpUHnI2eV/FJ8p8zuB8dGVH5GMYTz0iQPZZ+csnInvXxOtsrT9z6tNRIsHhmsBRPaj9Zw4
wouwzhCkLAvvQEnh++R7ekT2bc4KOxXdEtnunj1/OvDjLxjyIkPkDBGr3WmkiyhKRv7V2ep75dzY
APMZu113z8WqQ+VJMO0RaTDkRkmvXu2VIKYsbmd2uzbbZNiHT3wBLzWLVZ5282lujDr+MgggFfEu
P0bwuAdm78TlTyh6VfFHIu58T0qr8+2Hn+I4amNQk0w305JkO5yptey0qpVrjXjMcX8ku7GR8zjj
DMyB9DNfOvfGkLbSplhBKikKDhLvctk4PySI+rJcBx/vKMJ4IUdvzW7g2YIap5Z7m2K5ewtncNOj
NHmGE4OFK/7d1y2gWBuNY3h9FuSBJiK1S/U5joct4uj9L1Qm/7/8nR2G/LE1HJVz+TWisKXAXzHT
2swNlmdW4FLLQHQbGzKs50Dj0osqRcVdxGLXzkuFGROKiAf+qy6mzrjUVi6ri1kAFHd1L0SC1TpR
Wvh6ntFKiAbL+cjWLczqHFl4S66YjiexB07u44Eb4ihNwu+cHRO1m61rlGhmYgYsDfK+5g5Tv6Ld
iBA7nYSrphjtwI3HbGyjFlgceqRgXicE8CQEA1I7bPa/KatFfCHitK6Y/csOGcVT4f++NsqTmGdJ
ijVIdqpl2unAQ+nciMK+YM/gnQKFFTNnPDpj4VhvrcSHoS/Ot8zL/8JQj/2ul3cw7pkcFHdYo60h
b2OAgX7qLBi6M04d0utvkP6Ru7SDItgVyFKlDPcwY5L70OvRNK6DnlX9lUKsz5THcQY696QECNRP
NV3ldQSLH+1IvJL1tPD2sa/Eackgd+m9kq1qrTvkjrpdhCU7WMcwroFANJTIgR5OarYd0M3fgwH0
9FwjltYc3cYjYYOgbeoRaYW7QEriqQYPeVADtBv5moITNeM7H2L8ERbg2qENTzr2vToQBGuPAZt7
Fg843NuQRp8A7h/iP+P38Iu7wX63fSD8M6BIEzXRpY232vVuLxwZyR3XaWOB9Rl/mXpAxxD7ZKgY
SYORvRwdyKJS+nScn6oglu8iR+X7xFEDniwiku9wYO9tB8YlWHYLKoGLTPudgeFqWaqgoJzpBHYV
OdWF9Rc9/ShTSrLfBcI58f+TIOxX6mzZL7olGj0th9qQ8ZhEqBs908a5sb5vF9K0AP/K/n2eYRZ+
tXTzIObm5yDLlmKhGOcRCrvUYJCeVPZu9tUe4b8c9aNAHsJQ4jwTI9OjwZOyD2ixwajIsdOmNfbw
uUhqaj3SxvVAX5rkEPbRhmUGH49fLwyKSujfjH0ePTkL2potkPxJOobJqieLvU8/fujvcOAdU5V4
7JFDo9NijnmW2FMba6aYZcIUByv8vSgLzaZv7Qr63hhMKDxdRuljuaE+MPT2SoPi/8VBKdQSj074
czvZWwAYbDhuLG3o6k5RcTBiiN5Ab1orsaNY+EpDmmY+u860W27wPfhLuFNhPuXNCGibE3421Em9
Si5P5VK3Jqeb8SRge09YBi8Wd6YJFJRXzZX6aAFiNvDPjZ2cOcZNyA008G7wPqTf+97yPj6PmXAU
2YUc2CgKo84FSwDsvxg95ciLjwo2igmz7Onw/ssVx1Znz5NIKAI4NUAdsHy8Zp6SkQ/K/RT6JWpx
wU1YF2Drj+zg24gMmMXHBq/oyhrW0Yo5PleURFQZQy0sY8kvBIIG3JvBC47deB4YLattJFN71Tr4
HvP5N9fpO5BfaYRlOAeaGeteiUlL2zHHKEeqlOz7oniqzLe7gYgi4+PLhR6pffyJaQOUT0CRRDpS
UGUJNv1uTNGTTwjkK0o5C8NIcOJ4lTLk3H35QDURUt92/2nG8ZeM/3QgtcByNeJ2vQZv/AOh7F6h
H1sWM+gfz3bkB3tyLsL/XhMqo3gGFHVYCYmqXbBMNYF4M2KVcqVqOyCDhsyUhbOuGobgyV3Ydu2G
sUpahiciYlqi+znfFdxW3vKczGzwlhydtI4zsGpTa5CRB37dBw+aldfSCNpZ3qS/5saP/2quj48o
9z5oIvp47iQfkWRqiyxy5sLkrRE710XN/fsAqkdTFOBmQts7Cwm+7Fa4TOuUIIZWCiL9ywj7Yel6
SvT2aVcRsNr7AGTLc3sfPh9T1P883/Bwc6JVJw2DLTB9BKySjXhjigYG40cT3m9MMeoB6/d3lSN5
HkG/UAzuFsjzwvxN15pYZJptvpIn4soQ6A0c8Wl4yXfqXoYLax9aKtIJGT5WTCm5vQp87ZdfwkR+
xIxMHVY4M4CI4Olz1rIsUhyczXgNJd/lXxsFcDHwd+jd5dPmud6+EQl1xer5jFo6lpjNA2hPezX/
pNZsBS+DaHD3juNNPUiJ6/XyCPkpiP6tJ5lLSYPvnupTeDrz1jMOjo6m+98IuEg1d63smIyQZ5bH
5+X0pIHs/UAdRWDkn8bMl7FZ3rU+q3CGQITfttPLZCrOWAvEUHzSA0SUC9v56VxZAUFIWBXz96iE
qaHG+NN5kJuho+vDLxKY6IXtwrvqXu5bgBFQ5pZoLflqYO48AydxXXV4oaC0CnFCBFFdxkPxjTbr
efpnzqhqYVS3t9sqVSa6VNGg54RlpRxSAVO9K86VVcbloObUYmMLcHZso9Nb4qNp2zGakjrBIq+i
HIPICKvLMpU2PoQjumLHIFU6DdIqWOudPC24ghUiqzX/ouj7OUi33fCKGqp5adJSd/Dhil7gKuQg
gyPtu1ewvQU4/0AkjbC1ASXESOoNYmVQzGYSVcvmUWHiMqzIFKvAf5VgQvVsHTGovBYErAhSWCGK
McbS9OPI7sJ2GtJQVpJz6Orswtzu41165ruvigdpdR8Spb4L4H9c3FOL0N1Wd142YePXCJO5v/nN
aPnuDraqrEXz/sydUcaVbKfn31eDN4tBbM7iS0//Q449pqOsfAEZ9XA8xQ9xiIjaNIvkq28YxUZv
EYc9WD7ycGtt7EgOHnaQbXlKPJMT8gPYVfMQK+f4b4O9Xf1G96It8yGpYNzZdUlCEbwu1L2/F67Y
7gCMqMG5BZ0rL9upZ+sI/Nisk8TOnom2cKWHa/aj7wP8rcy7lzWBl+DHn2McI4nY/nqM6Ypuf04Y
czb9xXOsaMxiYOxsVBKiZBCyuzFdwMRlYKyf2T3f5P49e+RuCkt0kVHo9WqTldQcPHMjTYK+x3Tp
5g0iPm0Ko+48GlaQP3FydNE3ZSufM/C+DcfUWKwJkOhp10eLmqHqA7E+ezwd4GxTq4ueMk0vGT/k
gM154YmHSNvSuqYMp6i40SSOEsCMDwvmIKUiOZxoVfxgwSkv4C8yjCUluzdRgJf+m2gvWRm6yTIE
W+Z5fAl1dMdXzyraS+WEOsAAhW/ywHOP04ClujDMZqnmi5cAZzwdadlrmvhJi300jYIm7a0ZuTS2
10CdF1U2yi6Crj2NcbfSX3Hl7rzPsCBsNhGoniAcSlvjxyDuERqYfVPloF5KS9nKPelPwVwcZvJD
nYR0FH+j8TEhwjEcIyuD5uK89b8SRVu2bsAsW8XpRTS2l9nq8J0sRbPoPNNf2t4TnSmDB8Hlv7Gv
p6MeWX8Ef3OGZCwkyayTLkNX1H/oRCOc1ouU5SzfB9WwVoETZK4PPNujaQ2meXMO/6bFtUig610n
UsW1VmfIg6jQsF3LYTbKXkchnNsHx2lcVH3E97j9vWXso+0w6f+z7ENYDcQxEeGfBTC8aFNBSXvO
1YSaadym+KoNVaz9krG9kaO+cakhh5CkateMwBIoWpttYlloCmblsWDNpgQhpV7sW+ljUodW6DuI
SzA2veRmxyRMfRkHU+brR1P82gNTkYsXEH8lJX4tB0OXGILiZOBGhEuncGEL2Nsdb6zRmhoCuWTx
vWjaP75lpBxvFSErWMhiwKN1zlYACQRhDvDNak3J+t7Bjdd06PhF/OnPAcpgBtBrRVyODkhvQRP/
b4v6MlrWZBcURLYyJmrA2zZUky1lKg9PcQGP083QfD9E19g15E32KHAI6id58G/D63rk5sZPTgMf
7U2+MJ0PwxlY0EHIaK65RhhVcnsWwc/rw/R+0wRcudjYKr5P4iEWXbzaov02LmVlYrD5T2v0yu8P
YqBG8g+BsvgCGYCayBrVzS2JHBbHxC2GVPmUIX78EDVkFzyoUAkaqtDRHpHTvpR2gNMFKgA832bP
ZI5aR5dN8OL5ojqFSzLv7ijbMB98p/OMZzFrdbikykUC34Bt2tl24v21kv3DCfF3vmqItd26QCbt
IYQ/Bk7yxnDKTJJVCcBbZCtxzqEEwFluOfba4wvhAEt+67fJ2oaTT6w8/ziC6wOewytiWcBHIiLa
liwCj6TSPlv1zKYfQ+YTm65eXa75nGV6MolNcV7dMbSZJ0mGPTIsVyroWiBRQbJ7gzT0GevKvSvg
cHy/wnRLxvQuKlQClVBtuctPJnCECZKhYETKgQcw7EXEX/BSdQZ678EqZU3/8XQ1oQguMeidaolW
Px4KGoDxDd3Ksiu038wennpB/FREpp4RTdxAJ51XpDM0rWai+vVU6g0Y1wauqvaaEhQvoPxJ71n1
mskjvWRz8AZPEKvcsErcf6rypwR/Qk/KGHdWN0tQLD9Yk47ibMVM75qM2081iDynIZ1wem6z7ODn
2SHxXQR6HvPhrT4nq6yZmMSMcYcLHjUvtqK6J/k5ON+DdiwZzY4KszTCuv0KGzC2tnZrFElkA9cK
05/eFRby8bMlNH2gPGn+rJENM9l9b48r404MVaLJoqmwG1L7LLXOB0DvtLlOjJududnMmSx6ebNE
XBkesgLxbsZbUCDaAmMRoPlTs5AlJUOAZmSU3DNH4/2ERFHQ7Y/xNGz488QPG/B3Tc7vooCQ25V+
SQdP2TW3qJ9GfE0J0jI68E8WL9Wk+NjhveIicjWXiMGbz7qemCA6rdJgn8WEsepuw9l4Tm/HJUBt
xlHlL744YnuBSixeAa71beBJOHu7Kycj/a1/RfB/BlXsUQHewKtmL+xu22XBeBBxXy8BvddX4+qM
ENR9krRpW5T9ab0fJpf0QrNnMNdyAQTn05FUJj9aktj2brleQKbTuUf7Olx94EGQRNAgsPPCfjVc
lD3JZOgmMgxArnQt/Mol3bZmDACiTxJ1dDo021SAxiQ6aM9Er8TyKZwgIVU/RWqqAzwxqV8StR9Q
Ay3U5iyOjsLfQbquyz3rbcuy8LMBL4IOpsA3oPil0+qwgYFTmDAXlk/dDQOxPk9dqHeTwmvrlaIB
71K/MG1alzZrrzkaPHGYMVCGKl85zPY0ALsBGu7A9y1eXvu4u90hQj1mn+X08ghVYH0qG59swXvw
pmpFbRSmzhj5Hn5j6ocu0nSXCqOMC2czf3oHhULHrpBvo/+MyTaEnBDT59yMr9decf+7SiZa5/8o
F6N7ynONGz+/j1vsIVoEwVq3HoDdVs2b9xN7WqhmtxUPQpdQ3j/8anQ4USaafFtAEVq59Uej89T/
S4s6euUnbrG4KGwEo1oHqh22Kiig8M9E1ju7a9N21LhN2V3glxqUUnT8A1cRzL5ZobLIYn3UvE49
yNm9yET8XuiPkDU39wS9BGaqsIw+IpYnOXuxQiP5jY14UIjBd0+7OMgeWYBtygB59LvJaD6RmIAv
sIUV//Jr3mqo+MIfhymDozXW/eowNbEmYNS8FATxuMxPSWqnxtyUUJZ6LoulPD0AqGr+BvMQ0Rc7
GHgzYudeIUpVPnAsHt9uG2XEfQa7roLLEjw4X+bLECwQdXgW99dki9z8vlE6thORRNtriOyHgnes
mMrMQps6cTNkzw2daWvUyZVt3cXI9q1Rp7ndqntqM77/TFdrrN2tmBRi9a596DlxkTP/tsBdeaIz
wqWqX0FvhA7lKLajvnSuRMj9a8uSbfFAD77zDd8VqlY9ppmYSeHvU7VW16uv1CT/DNPW0qgqL6Nj
gwkn4UHW5Qu9Vsx4gN9XrooBrqo/nO6VFbV5kXXASQYKxckKd+r1Kn269qa8MwOSzOGi/FdGWBHz
JDt/wBO1BgE5aOi+2w0J03HCnv0wFSebcPKkHfQk/SfKBmS5RBQucarv4SdUMVHCSHbJGU7MWvLZ
gC2hc5nTBbOFa/jBZMyAfXJ+7S4W1kUr/kWk5NP8nga6jT1mhXqDnQhEJJTCvDUOzln1NLzB8Zvl
nyb9xMq87QWfqCU1iEHAqT+oABNXk23AlimrEyD1CTbuH55aWuhdU59bIVG3sGWY6a1r/CAsY18F
5y+G5w6h+Z12xOaMMWcqr8tnLPv/6vJxHcB5ImTT/3MZrYcCemyBpKxMlH4lTtsfXWpWeWD2QJ4D
TODvhh7d4vQ+OWo4juzUsbRmu5LRfE2m7t3bATV+3si+fS1NqyVVJrnMaXaLiNEv0s4zBtWM0jkq
NYHSO9CJgRLzwPyGH/QZ4zGPZ5wHCKCNymNgBkEcyEWWugj2GPB+Z7zorV4GWGq+f0cH8z3BUJtz
N+wWepgrX4rovGqj9kw0H9lBGWRzd+L+Jstp4vWXHHDgcK/vObP5LN03rudIdUxjK3yuRqdKCN+4
dwMTe1JswT1krYCm5nPhBOFwGTFqXt0HER0sCeL/1yirve+fo7kaRib7eniz9AqP6GhefN7moNlm
qqnK3UM75EFscNr4kEuOxLWnH9H9bsRX7gxE4uAu08J8WXBNSNjjOUaA9RfY+Dbm65rHAlEqeB/2
zhziKslAOY2TrLhUg3J+HrIFyBJlTk5HAItaAI90MdlcfYGRCVXMIs9Ex8SAlb7xQoNg102uxH6c
aeKzb1CEn2xF8U5C4QhrxM5m3hXag06BVrpG0EDLTQEyJ3MxaR8Ummve99gXm2kwxNPkXyR96Rt5
dTKv5+CnPWMPTTRYcr063Vh97gfiHQc3OMTqVnyRPt9tVVQr0OtPtcwnjezW65wwBtQJzKOCxCJQ
SUhYhti7zKlhKtTNlf/SWw1MhrPnji5JcmJmwuQtHRyiLr5YUGPghsqclUwZQ7cdtSJtMAtIs97G
UoRtqcJUXz3yFj+xuNW0cZGXjZyFWh/9ysNaK3YrMg4x5KdESiHBoA6AbZPsqhbO0WJeaqypL7GR
/cXwokE6RoNiw7tjxZOkmDlexLEfg59VVZoU9UP0dqWfnmdH1ovP/L2qobFjCE789qmItn9pTbb2
dilAXYmWt88XpkfgkLteRBqRBW4KChT6GH9JPBHVFCZHxwfIlDb+o3oTPYsYalOE9/H6S5xjsqql
wrArj5bt0uSpt4zuYYCuZmmylA42fzYv05WUCZn+l3naL4pQRlJ/N/fRKMFf15TPGPyilrFKkmqq
4uDsfAXp0mxesjKQK5qz8MlckmUF71fvYht0wkdD9ni7ycgkJIIgVByg8Is2wGSykQK3/A/9JkyN
DJ++F+Rito8WO5UxCONCYoYrf2FF+VINmpkfCFtmST4sUdYWobkU+ggexFtSpcWBX7cLLEg/KZvb
sImbobtjni3APejvBV+O0KyhHkrgTRxkgQViqE0XWZuTL6SdvS/1sjIU7mZ40mu0dXCXZC7mK86s
LAQwZo4PAEUnC1ydjido5GdIARimlAZW/L+o96w1dHEuttwiHYcy0o8yTJp2aOuFMnpnkhgrMGJs
2LKQCjlY/39U2HL0xGQJF2QOV4zBcFkykYHhafOWiNALtzzeTRoghpEC41Mvsj6PX0G+F9KpeiJv
l+A3dB3s9ZEOR5rqpJTY1ZJ7U4Pnl2J5FACg+EGrOr+O2v0psFXZK6dCD+o5R7abVwGPageBrp00
O8mDtZJNYlkwErjApyBLNcDQaRfyQzLJATv5cvI2cXzJHWBB7bPPlyhqv41c+w0yCfmQZsqbG2S5
n8W1h+pjtiQe+Uf5WWXsJXcQnTf5/jxs0RshP+kJHykzXdG5Y90oqBOhpSYLbehwH27Vlxb8MKgE
qPN6orEG0qGOrXbJatTaOXPWqn52wHgKwQ0xiUTtzBH6PKnLG6F8iVoICGg/wA5NTTOSeGlQtB7/
HfcIRPxv94oTwk5azG1XLGz0IuYN65veVH5GPUwr4gJndqf7nLcx8ogHm97GEbZmcl30YeqQuBvF
/UFMHSgKFlp1WAWtrdj/iXMhjcrWLbcSGhk1O5gnY7QdqOYfBdfbSKMqA/VUKsQs+wYUbe1/XifJ
gXJr0L+hK9CHZ5fsUIw2B/rTHfWVyBU3UMSkMOOO+DoSxz8aHqFOZ61dAwgB86thzGM5d3wNxQ6l
je0gebX6ktTIYy92xs+044GepPTjsD3om3Hz/QRWbgvLD+SPcB4VQIroLM/78OG0teUPM7fTO/87
ltgO9oVXK6EUMU7z0odUNcvKFRgDhiaGhfXzukyHlo5snlXub2hOyzd8vJ4JSUm//6GwyHNvqaP4
1/f9Iq7vncvOWkyPN9oYZAdSME5UbcfzXpRv5lBjMg8yvYat1LBK/Zd7dgOjIeo85GyfmCWqsge/
gkng0zIJn9kO4dcAFbTn3ymj2ej1+ogf1S2PHFYeiIsRl/C0XhbdfgnadXGGgTiLq2pCqkvHprN0
+8nGWR79EkLZ0IKuR8ryoyV4K1e8Hh0B9mU7XaulTsiugyA53L0t+U50qa4M8DkIRMcQKigcaseY
FvEH0ux/6Y9N0HL2ZP0i6COcbVG/IHDsHwIGTLN2gR7G99UPo2+DEqqa3R55BjqgAzW2kEO2DrKX
SrcXLXiQNeIAM1/+KqoYvh58sjgCrzBINe7+zivneNeCstHO0crsGuyYHH+cGdtIkSgPxMC09WJZ
bv6JyOqPR/1JzPS9TsqPRuwyUwV4EXRepOxTLbgM+vRpvyS7Ltlp1er7OkfFxtlm3qOTDB49lXzz
499al2SzP9/wa+ACEvGVFKDskHQxs+smfD42tquSQTrNlOK2jSqsChX5AaPf7aOKhs1+aC9wtxKA
be/Ek3OSOUdgsmBVOipMdSr8tvc7IUINXhfJ2nDIjGF5mZ+FNTIGXh4V2/bY/0hHHRCpXA4B5+4w
rl8gJC0l6XvaTgeNwEfPEVFcrYSzyekL0tw8rKc6RCiFXejPLqRjtgXNIN9qP1zlw5qdZKaKoWge
p3oR+FWQPgTNemZajT9QvIMHPOARXyBctbOTl9uMbZV2odooqcziHgQAIU7/p/F8za3/+JYXXSuG
j9UNO2CRQx9yKMGuludbkHKRW/G8/WjD/VoBzIFuatxuwPaqsKd2U7gKsfIdWJ7T27anWM3dY7fc
xAprYWpugCv0HLaoPKikPXiU+8HfGRCa4XABNFonvP6z2kBAU2mMvK+8OVDjv7kRY2pAlzZdzMDl
VZcRrBl2RXow0WiCD/gGPenyp/+6Wr4GLypJrW5pRxgZQDvbvRrHg0vBm08KgBmVi5lwfu/Q/qXN
W+e09ESfrQz0deG4Cv+hacD2cJJjEx+jkTRy9T12TpZv7ybZGqrEP4A46KVQYAv44XTjagc1WMXl
5OM+zirO6JTsCrxrxKGhenoVOML9VznGr0kYN/V5jc4cmhhj84evOAZWQ9nAwpOCBjimu59+1G1r
4nhJVJ3daHc6PwX9aesvQB+lLvkSvPqpduiVpqYGflozkz7twmLg5Zt0Gws6nIZrTmSZ97+YgfR2
3NVEI4QTdSnkUL9sH/uosZyG719F6A7YMz5RvF0e+ibWvkQE4kEWBdsk8XccdKTaasI5Y9hT+ZUT
LXLSZI7Xlhe41/L6cyEac59x8RfkKvU73mU7dIJkF1zBqxkUHAhAFndStYmq26zUAqbllxr61Mzz
bp9w7DHXhnbkge9J49wqNSuohU9S5+LH34zJs2KJ30yuMuNLRCGeo5QuvqIvzwBA1WkmaUdQu/bP
PaCg0yWLfQSErubJBvTpBwzH5xsXoQLvmf9+DXNqDiJt/ESE5h75t1XJclx3ig5XKsN3RXy5taow
KExo2PXWNCYcITq1N4e+jYzbpcneDRtXpPYb/+wOWIxmFAcpOlfKfEnnrfTJlEh3qw7kT2mE+JDm
LCBqyg2rDnksBZG0YG/OjSvVZgwa8v/VK807FFt2jTPFNfdCM9pMuT2Rhg1YcIajfsQk31kzyTVe
V1ploZYfxTGj8CZMeg9D3PoDkuM/VKtZ2li6Et7VcvfrAXqFKlXMsYwSt29AuYm3c28sp+p5zuVy
2J7M2llDpMoZhSm9VVS2JZBTj+NrARCF3aEXA2ByaDkzW1UHlU99JFiaZSKiZStR8geCj98FRsyi
Y6/K8e2zCB995X0nf1M78MMv8fW3SQ9zMDf3729cSnW4oqeXVTGR/LvVy7AD+TRdvwLtBCn0kXGp
C7k5x0M2PZ7M2fsX2EbXKZBQRIp1+kqu8+mQilY/Ao8K7nBd4d+mhC3omu0/QRN4yyweoG4OwfRz
OcMZNUrWqAhBgMTAfFHttChBHwCgCkuP+CHQaUEEnJuhzC5NybyjfCx1U1Q8Km8/0+JJz0hj2qAX
oQXob5WikYGQVTXKeOskS0ZpPFR6v+plaQe+kP91nCJPADUFkPwsc6+YJFjI8dush/1Q8Ql729z1
aZwcnfOsjO8iUONu3eiNJYGxaq+u2N0qoXVrOTMRCDQDfVG85a6IZ7DNQ6/ndZRVUb+tR2kyxZim
FvSh75gKgL7CUgt1qFGQrdG750orffd0u/avabm7OPocmwaZQNAqDsiGz3fgl9CJZJW3t2eZU3ad
pmK2Q+FC6Scaut6jS0QP6+Yph0emZ7Hy6q4ZbX7tNt2ZOdhyUYFC6lv2wqI2hzuCBPsXF530hmSg
F1SniHPgNcEbrxr3mxrgRjlvvBdIqZEPxeJ27z1GMXT3Y5t5Sarxs/SXUzBZFYydQjXuD2nXvRBl
AJZXUlvFvegH19jY0eK88s8ajUhfEJn2FFnoWfEgrOwO6V5cxIs37yINS7HldE8rZnBqfuv5xcFH
tpEh+M07L+MFOKqOqJYwFVGHIWUYIyn1mBU7DDm6esbFxBcDgztdgw/DN8+C1qz21iqFbVF6gDpG
sCNiXk+DZzk/34htj/F9yhWaCcfnU1HAF78+boGqYI5OTfU/EH0lrtgF8sQTbnHKsWfN2GHxBwpt
HlrKdKw4m6Et5TnSQqBnc5OoTubPsItSkwQoBBK5LOe1IjGVBHk0YccFe8OCvlzAqAMdWkmtdOXy
k/nOBYVFltSnVhRGhwzXzbXVAQelFLAwbkREogohbp11KXIkioJfl37E2bT8+UD3PP4T8pOhGm+T
zRb93emtoyERU9R1Kpp/bZG11hvtS6/5OT1kfxfA1nG8+cNsGW6Da5/xctct6qkhzlFrBuZ9c91G
N6h8GDfhaaJYIDSJ5KcdXnOp3ihkHvU8ePRYEZqOr+tzMdkBv/N31f/0vfdxoaFJx7Qwovc+doGf
Sq3FBrz2UeOjpBJqdgfWBty+e/fJrb2LlfTB2MYscSHo3nP9qxXQCSx2ilw8PK/tB/o+FqX8+V0c
WwNMh+4zEs/WwxoPcIbZctlykI70WiJAr3DiWFEBK4CvXEKZ5FQjdQJdu+ZEbRPXqgMaR1zVvSSJ
ivQA1bvR12159LuTRWoaXSCp1Qn18yns5y/m0z1osak1BvnHfc7x9wQ1zKQiQSA8RzSKjh/4rLid
JpJNxw1G5/FgK8m2jiXpdS56wt1/Q3b2JaMkN7NYHZUa0QHVyOPLD5FL3P3YwZNmNVLVIBshf6RX
7soCAdfqKEWa5aVXKYFnMDqaN1xcbmy1ZSUSptkJB17/XuMmS6VVQ780DtZvC740OfJtVHlKNbYi
O1VsIBntl6pv6+CrqZQ6KQYhwNGYc8L9WMNB+HKO+Y/YfIEQFtzj/WOxK3jVJ2j8sKf9qFJ9CCnE
2qdXu5Vw/mGengbdnn2yj8ROLDyiRoJ9kmOhee562UVei1DZnpD0SlD2q1yO7poNBmkFVfu3iL6H
RD9fVCJfuaAMMbrYTidr142whTdY+3AnhTbn54bErfI91mMAo0x9IiXYfWxdWZHg8w6xxtl1BXMJ
GMx1GNGhcPSM39YgdUNRiDlamr8aUa4+vUggdtpLe+73QRcezFdNJ403IdZUw2I46ZRdznOcEHCX
dd8QstOrVX3GgghjbWnIoeQCbeOSkNkrvh1xqhg7hxwWe7uSXwfA3N8RRs4cZD4uDf/I0qaVaC29
7s04w/6Vel/3UGknRwgKHkSy2k1SULZDizTQbcaljXjqQGB2vhi3LCaPgT3P0/gJCAe3gSqWAHij
z13u1IQZELmaYU2v2SRlGYOtKLGuCcLViHu8RMasrm2hLtTu+9RfQDDzydLH6hbB+/FVtef9AUaO
mwYSTsQ701V66WbqA+IDDdlkPnU0wbj4EyUTg9zjxw1EXWO/f+5klo9Vair+RVI2JduTYmSuVDnj
h9jX9Fj5PRhLwiPWTJyEvGTUySLuGIciI+j47yofuy7oncoy3cykr/ekGtw4Ku+cUg9hFPnNa4Cs
JZhSMiWnZXWvNcW4M/+tu+iRnorI59Cq5lJlPM46UEjZxTGdWZas3hAimoJzymSxWx9nNrb3Ieu8
qdyD7KyHm//+wUbQTcSh86X4sysqPQmEUc57kBGRePEmv/0YqnHJo2KRsf7fhAQNI7Uf8sOaW43c
YZCRg3fWhixZs7ON0aitLIMoBGzgCWDMfAVL6nfU865pYg+WKRKuZU4LKXgrXIQv93C1QTFFRSkk
/zi8IA0MEo6+rwCSo22iYOX+x8sdBOqJpoiFOrZ0f2nvzzyAlHUQXST2NfJ1mB+OPGEaMpRAqfFC
JYTbxJzZ+SGi6hC3JRpkann1NQnsrhPI3DfNhi02lYVnk1sYSgy96qbE7rMMEa8ANik+IEQtN4Bq
JSDNDTRLLjLbOsQmjDx0qfATHerF8J7IPu4bcihj8SceXWZuJlZOsLeowxWLvpxVkgug3s50XtKU
F/Pu9cGFm+tffibKMjO95C3SnetyuAeZB2HubPTQuvYDROvrqKbAzd51QHEoiFxOWHbQJdYwITlT
ED4rKkCm21FfzxA435rhQms2d3nLMRydaiuE7zhqER3LJc7YHDFM4lDvU5H7zkRGYe8bSz9R+rXP
ixeoBpzLX5q5yehW+idmFS1dtdrGQ62WhhlX3at8fwkPdYItIdZCXdQu/4WNG54Dw+mkVM1C6YUA
ZkOuYDpdFWpKt0Nqk9+1tfL8dEmUT1GH6j+sDI2k1HNUHcU/OSwDxNocoaFj5IE7acxy/ayhM4Km
IxsMS+1szyNIO+9HkdTUrNw8BCWkzXaNzYXP24c+gm/csWeBGtP2WRNvjJBWVnTTKGvW4UG+0SLN
bPUSTtp/AuU6ctv+gpf5wGsfJHMHop41tWSeVqqq5hpFUu6AggivF1iOMq5ha24ssYXcGiVC4oUa
T/4EbLJQ034iZaAm66XX+qpBwCjjPtQTcnnwHxRN1iIK4CboW3IFiXr4EC/18fG39xdNGrpJGFgH
AqzbNPHjYSbXVm522AMbdH3leIsmgZksZ+eTDZalY6iwgQfPl3YfDVI8b+39DFJ3ZyDmAkXEuUs8
+tYetJL1JzUgwss2WsgSdate947Djfc9yco+fTuFomCIDA+PIUg/iyB4yNlGJYmoxtWOsFWEFaM9
FMzgAuGQSY/Fr8sjiXmaskEFEWExq3dqRwalQfOIsJlQEpqxZJeY+B/mdV9tXgdXuADQEqQDPJHG
3voNq2Hh7ixIaL3lAomYrunlTF+fye35MHgJZp5rWMalwOUyd7R9n9EvMi3+UiYjVCb5VsZ5DWRa
3kD9gdEyQeoqLgLvi0WfUGh5lWIiyYCqlR9wKI3VQP0mFXESXe5Zd15Pn1H6/dxwZ2tvzv1Miruy
K/R7Sb2R93OTmeq6zAbQLTwCCk5zZNzcOGa2IzMvB9dn9bReJGlzjWeRr5PVIvYnF12Jqlt/rnpN
9Ru6eb6DOtXSQbVED8zs+cNckGOfjZ+BqDdBxu0AoIb6BjZJOxKEd3jIT//jAtYCxgRGfheTbNYN
kKhmYd/lWJ5iPcZxexfHJfTQYpWMdIm9sbiyBpX5UEOGGrkkzflBteDh2b+f44aKZiEuetmQ114Z
aBKymPaEWM+IqSSCWj6ZeYrWmc0vXPf9IPVkHVB1l3s6pTKcX1P+w4+H/gqExJIn1IWFlvR5QRy7
5Y1BZTtbLUfQ84VHF7KUMUX3NTYoIqdLTKnZLKq5lqxLz1pFqvqv1kXqNqT8JuRmfE+l0O9oXZRi
ehoWCLdjH21pyipXUu3HHT6q7wx5uv6oREthfN8CvfcZ1SJSGN8o/KcOT2hekPnV2W/adEL8deCJ
z1auF6W9UvJT0kI083dczlJVwmYwcdJEsQnYnmjtqVjrw7BgY1KwEDpUbyDCLa2Z2rG6rHOXRFzl
z5mpbkPdaSt+/ysoMHkEyUoQgzrOpcfIIjycLgIRghKzF320INR4ZPn5spJ+4HnheorW8bvARRL0
bOle+z2sNNlC1dllbAJn/9gyYckEflX6gnn8jR2m3Kwt/6ql4Wxu1x3zc7sxB84pP3QMzk02hD0c
1KkkQbfnUgyHV2l2JeFFG1Jdxqnwsu/2w0E4bAy8h/7IZOpdsTqnpr30hqUAn/8vopJtMox/7xQF
ARtfaw/DomqJjOY5E0mjmR434nO9B7tBxojEprolPo6kA19QnS3/KBUnVpDtiijRGshRsxW07n+W
qX2soAJZTvbNjku3I3FwHmBHHHFy9+FUaewNSocsvHtdLGOb4WyiHPUswE+VHMU9MruCzTgY0qvr
Sthah2JqVvnWyuvG8TvqXTYp280grLabnN7ltMLyx6wF6p5mkn5IMeJ7rUPBENRCO39nQUdsajJT
dIrN2c6VsXUJ6zX6joT72a9Z5/xFelH1OlHAm0XjKiaQ+dhg0Q8rM3hqmkKfB15AVwN3MlqyCW63
YunT1IubcgauIcnHHj8jeM+NhD3ZMdPJ3zZspyGfplDiMvv/vhUx/lGKKwmE0WZV+gCli4XZfq1m
cK3h+sjFjEY7V+S8pgkL5u5UDJ1UWj+M+x7A41S/i+Pxu+srwmbVpp1KXBalqqXZ5wgNup82Vad0
uGeVp0fsGToXtwbiLR1jyftF314X/DqomGg8G9nQlkjJ1gRIUxWiBm50lCATxlw2DTDnieMESUp6
vkqb1cu/oqRIsFMkJd4iMyFW8x5jgRAkx5aXgPW1gOEwXGdbnjRt3gfgJ2hciZuWyjYzUetkwBrB
hgPXWu4NqXuqEyYY5uPVDe1On8vyMVUpsoyJ7aP8YkbhnZyY6D6FYgvBAzPIDsirc//04bSp/72e
31526IUO9wQovOtLNroo6ZWHfwgPu/MUwl6c7JuOBgpG2lX724Z4wZePCLbZ57Ledtd1Qj6ILWo8
j7CMrA/e5LTQZnOU6t4GgRgejfOXlcmQ/WEQtexgbg4zWlOkOf7sUPYKmRt9/EkwCibGYq91JdXZ
oLwDtkuaOpzA7cDh99aABAyahGJ8/CeQRaNp3j0q2NK/L/kwBKOOu2oTkroPKLRXjeaT6wc5PSmF
xWGTz0sUK+jZp0AynOasxpUL/xXfSpp7cmluDryMz6F1oem5/BwuL577RXfmYBV3SS6e1Fwww5ct
AZ+4YU0fexONqIwO5zqoHBZ8Rp6+RZF0rpNPpBm+yJ5BTVihk1wXrFNJzWQhZy+rrbs3Du9C+sj7
2B2o+LlFhqxYaGuLGMwaQ0spen+LPruhm1QqzwhDzk3gTMQBIjMAb7Rpno9rOX6sA8AKGXpXWi7r
4qChw8iqOgDxuOtbJXxgcoq8wmlhTTcJeIQtg/Hpl8J+gUV9rDKLtudVRkg0Hs3ynm9U/dO+7KvN
b+XVfemp2lYcTAF3R6kMhM2Hnwx0YGGy1fqWk6AJeOn/3PMzir4ynBvM5OXLCBYxXDFk4KT6TvTg
UgIcWttn8FQRFERV2pt5+X2zC1J+pzy4n5w2U0L4WluZSi93s55iWkFIl43N6be5sIKN1VjIglhr
Q/J6Epj9Gkqjam1R1W/OxcKkDKotLl1aDSUo5iFY+NrQTvsc1uDFGJ2yocg3vPUTDyk0W+yxdOqB
BOa5Euix3Iar2NFQNUAgxbsXXpy5aI2m9weJtnPkfXtdANK6IbTmEzvbb4GZDDyl+xyr5vOxIlCN
6yEImq35fz1y0kfaA3lnDvsXfGRLTsv6cjrbKSqLnT8Cc/C+2xZ7mu9U9CmwlMYhxb1Uy3gG2FIK
vli39cwYQwzHftwY6aLRp+s99uCor+P/2Hd0w/XUNSbSiLo1BOUSYXv0cfqg4hrkvCddH4ctcLCY
oVy/yjhFxTnyRS/9oF1oENgYfJKo9EbBwisR5zY4B25A1t4n25QH9NRh41sxsnKdd+6Lk846RDF6
tFsNRnRKY1tf5LWECQ+gd32t91WIXx7iQqH1X/LCcC0I1iLnYAgr82kcK7onQREg+prCa8qtisCD
+aEt5g+DbkxeZVs/wG+j4LjGFiiHRUTEJawtt0sXF47T/rPt6RwZX+xk5LLlKyFLde+C5F6rxmnZ
390QGd1YAablDzx8NB8oX2oLHBDCNKggmyJiUPKuY/P0iyaZICgArjvBZmbtbu9TBJwh3I9q5Zm/
PJSuYWojSNISXgcD+2sqKrYReVi6RTuslh1eVbECmK/WdLJGoVBRoz6USHAB4bP4sKcInNDo5iwY
Pn4qm/yjqSa4A1uazF5jsHhN3IsF2RMSX3xKJkKZnoYM2OKnoMn0IAQtLYurUz8bRbnDW22HBzuF
WUxx4ykZ0J7T9jHpcNrLVYkxqJNtL1ZUfaBv8J8NHsDSwFUyrNQSskVdlYlHhLAcSSxZMLWSG3YJ
ueAzrRQwRi8aqqJ2t0UzHzxoNA7ell2JmRp/IrR5tG3RMTsqKspuR1IJd0Rp2U1NChNXP0vejfYx
1x9L04liI6uxDxy2os737/iGHEzNS3J3+u2B3azKcBj+yGJiXvxk99PXW+WW+PGweFgPW2Y7cQPK
6yUy15QahhGiwWcMEkFyKeIX8MoqvPffITYv3JBre5mf0kU2ItzOMxUDq/FX6HLPu68MurPEUt21
zrnc/5TLLhPB5Rz/phXsQx8Yj+0w6/KGz0Szw5X5m5aR+kot4VasJ0T7F4CTIb+5S1nzKu8TRhKs
gk1bwDKeKSYjKzFHPejDV6f9n6PEXEITlb93kzWldoCLvCTQ3W+tVeWPq143CjShCpJW2TASi/vb
CwtVfij/uUYeyChCuXBa1F3NmonqfomqSw3B0qROojHAbYgBa/ig3hlAGbrF8FSRrkEbM4IS2fAB
JeEA3muTb/UwCVomTFYwvSTg4I6n6z2rUpbT2AxSfv3brsOOIDPtYnRUxNG+B/TxItWfwQ8utVmk
3gFB+qcoS255Wh0b0E+0Jcbi8e0YG9FiT+bOoDS6v7RSYKgs605KL5Ij2ypKlyivVm+pKa8+mfyH
5zpRrGweqXRNI3f+9db2cqN12XcD2vyEAwPUerZmqOXCFuQvT1NnX04EgjkitO1xUM9sNakJa4Yz
iC2bwuZUWrKSNXPI/wf+BOMVvMPSxBCcuPF61nvmYJmWclO6sVB+OOyyyVKdj0MFi6qONnVrZgWc
JhI0ww==
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

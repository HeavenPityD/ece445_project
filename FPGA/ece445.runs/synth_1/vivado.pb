
>
Refreshing IP repositories
234*coregenZ19-234h px? 
z
 Loaded user IP repository '%s'.
1135*coregen23
c:/Users/Richard/Desktop/export2default:defaultZ19-1700h px? 
{
 Loaded user IP repository '%s'.
1135*coregen24
 c:/Users/Richard/Desktop/library2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
D:/Xilinx/Vivado/2022.2/data/ip2default:defaultZ19-2313h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2?
tc:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.cache/ip2default:defaultZ19-4995h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental {C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/utils_1/imports/synth_1/testbench.dcp}2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/utils_1/imports/synth_1/testbench.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
x
Command: %s
53*	vivadotcl2G
3synth_design -top testbench -part xc7a35ticsg324-1L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35ti2default:defaultZ17-349h px? 
X
Loading part %s157*device2%
xc7a35ticsg324-1L2default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
119202default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
ED:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:04 . Memory (MB): peak = 1222.078 ; gain = 407.848
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	testbench2default:default2
 2default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/testbench.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2?
kC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/top.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	sequencer2default:default2
 2default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/sequencer.sv2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sequencer2default:default2
 2default:default2
02default:default2
12default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/sequencer.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	processor2default:default2
 2default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/processor.sv2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	processor2default:default2
 2default:default2
02default:default2
12default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/processor.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2?
kC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/top.sv2default:default2
12default:default8@Z8-6155h px? 
?
Mvariable '%s' cannot be written by both continuous and procedural assignments4320*oasys2
signal2default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/testbench.sv2default:default2
112default:default8@Z8-5972h px? 
?
+always block has no event control specified85*oasys2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/testbench.sv2default:default2
142default:default8@Z8-85h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	testbench2default:default2
 2default:default2
02default:default2
12default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/testbench.sv2default:default2
12default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	stock_reg2default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/processor.sv2default:default2
282default:default8@Z8-6014h px? 
o
+Unused sequential element %s was removed. 
4326*oasys2 
bidLevel_reg2default:defaultZ8-6014h px? 
o
+Unused sequential element %s was removed. 
4326*oasys2 
askLevel_reg2default:defaultZ8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[167]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[166]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[165]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[164]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[163]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[162]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[161]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[160]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[159]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[158]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[157]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[156]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[155]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[154]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[153]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[152]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[151]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[150]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[149]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[148]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[147]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[146]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[145]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[144]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[79]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[78]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[77]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[76]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[75]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[74]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[73]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[72]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[71]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[70]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[69]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[68]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[67]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[66]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[65]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[64]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[63]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[62]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[61]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[60]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[59]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[58]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[57]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[56]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[55]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[54]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[53]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[52]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[51]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[50]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[49]2default:default2
	processor2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
msg[48]2default:default2
	processor2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:06 . Memory (MB): peak = 1312.965 ; gain = 498.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:06 . Memory (MB): peak = 1312.965 ; gain = 498.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:06 . Memory (MB): peak = 1312.965 ; gain = 498.734
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1312.9652default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
12default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
12default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
22default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
22default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst_clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
52default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
52default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst_clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
62default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
62default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	debug_out2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	debug_out2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_scl2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_scl2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_sda2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_sda2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst_low2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst_low2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_sda2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_sda2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
452default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
rst_low2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
572default:default8@Z12-584h px?
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2 
create_clock2default:default2,
-objects [get_ports clk]2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
572default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
i2c_scl2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
612default:default8@Z12-584h px?
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2 
create_clock2default:default2,
-objects [get_ports clk]2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
612default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
clk2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
622default:default8@Z12-584h px?
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2 
create_clock2default:default2,
-objects [get_ports clk]2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2
622default:default8@Z12-4739h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.srcs/constrs_1/new/constraints.xdc2default:default2/
.Xil/testbench_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1360.5702default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1360.5702default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
ED:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7a35ticsg324-1L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	processor2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               01 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               10 |                               01
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
	processor2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:11 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              168 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
j
%s
*synth2R
>	               8K Bit	(50 X 169 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input  113 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2,
topModule/seq/msgOut_reg2default:default2
1682default:default2
1122default:default2?
qC:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/sequencer.sv2default:default2
162default:default8@Z8-3936h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)topModule/process/FSM_onehot_state_reg[1]2default:default2
	testbench2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)topModule/process/FSM_onehot_state_reg[0]2default:default2
	testbench2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:13 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
=
%s*synth2%
+-+-----+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:07 ; elapsed = 00:00:19 . Memory (MB): peak = 1360.570 ; gain = 498.734
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:09 ; elapsed = 00:00:20 . Memory (MB): peak = 1360.570 ; gain = 546.340
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1360.5702default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1360.5702default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
4b9f2ba52default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352default:default2
862default:default2
222default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:102default:default2
00:00:242default:default2
1360.5702default:default2
928.9732default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Richard/OneDrive - University of Illinois - Urbana/UIUC/Fall2022/ECE445/ece445_project/FPGA/ece445.runs/synth_1/testbench.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file testbench_utilization_synth.rpt -pb testbench_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Nov 27 12:58:04 20222default:defaultZ17-206h px? 


End Record
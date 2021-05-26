* Characterizing a nand with maximum load

* including MOS model 
.lib '$ST_HSPICE_LIB/include_CMOS013.lib' CMOS013lib

* including a small set of gates containing parasitics informations
.include '$ST_HSPICE_LIB/CMOS013.spi'
 
*****************************************************

* the nand  subcircuit is already described in the file CMOS013.spi
* included above. the name of the subcircuit is ND2HS
* and its template is: .subckt ND2HS A B Z gnd vdd


* instance of the nand: can be the same as for mynand
* only the reference to the template name must be changed 
xnand inA inB outbis gnd_int vdd_int ND2HS
cload out 0 load

vdummy_c outbis out dc 0
vdummy_gnd gnd_int 0 dc 0
vdummy_vdd vdd_int vdd dc 0

.plot i(vdummy_c)
.plot i(vdummy_gnd)
.plot i(vdummy_vdd)

*****************************************************
* defining inputs
vina inA 0 dc 1.2
vinb inB 0 pwl 0 0 1n 0 '1n+t_tran/0.8' 1.2 2n 1.2 '2n+t_tran/0.8' 0 
v_vdd vdd 0 DC alim
.param alim=1.2

* average values for load and rise/fall times
.param t_tran=0.2608n 
.param load=0.028f


*********************************************************
* defining load variations
.data vectorload
load
0.05f
50.0f
.enddata

**********************************************************
*    Measuring rising and falling times
.measure tran rnand TRIG v(out) VAL='alim*0.1' RISE=1
+TARG v(out) VAL='alim*0.9' RISE=1
.measure tran fnand TRIG v(out) VAL='alim*0.9' FALL=1
+TARG v(out) VAL='alim*0.1' FALL=1

*    Measuring HL propagation delay
.measure tran HLpropdelay TRIG V(inB) VAL='alim*0.5' RISE=1 
+ TARG V(out) VAL='alim*0.5' FALL=1
*	 Measuring LH propagation delay
.measure tran LHpropdelay TRIg v(inB) VAL='alim*0.5' FALL=1
+ TARG V(out) VAL='alim*0.5' RISE=1

* Measuring peak current during HL transition (GND and VDD)
.measure tran IpeakHLGND MAX I(vdummy_gnd) FROM=1n TO='1n+fnand/0.8'
.measure tran IpeakHLVDD MAX I(vdummy_vdd) FROM=1n TO='1n+fnand/0.8'

* Measuring peak current during LH transition (GND and VDD)
.measure tran IpeakLHGND MAX I(vdummy_gnd) FROM=2n TO='2n+rnand/0.8'
.measure tran IpeakLHVDD MAX I(vdummy_vdd) FROM=2n TO='2n+rnand/0.8'

**********************************************************
* defining the simulation step and duration  
.tran 1p 3n sweep data=vectorload

* instruction necessary for creating output data
* to be processed by a waveform viewer 
.option post

.OPTION LIMPROBE = 200000
.OPTION EPS=1.0e-9 NOMOD NOTRC SIMUDIV=4 BE ABSTOL=1e-15

.end 
 

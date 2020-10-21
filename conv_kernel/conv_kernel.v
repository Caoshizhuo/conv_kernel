

//***********************design conv-kernel****************************
//author: Shizhuo cao
//data:19:10:2020
//
//description:
//
//
//
//
/////////////////////////////////////////////////////////////////////////////

module conv_kernel(
input wire  [3:0]		din,
output reg  [11:0]			dout,
input						resetn,
input						clk
);


//reg wire define here


wire[1:0]			dout_bit_01;// the last 2 bits,bit(0,1)
wire[1:0]			dout_bit_23;
wire[1:0]			dout_bit_45;
wire[1:0]			dout_bit_67;
wire[1:0]			dout_bit_89;
wire[1:0]			dout_bit_ab;
wire[1:0]			dout_bit_cd;
wire[1:0]			dout_bit_ef;

wire[7:0]			low_8bits;
wire[11:0]			hgh_12bits;
wire[11:0]			dout_tmp;


assign low_8bits = {dout_bit_67,dout_bit_45,dout_bit_23,dout_bit_01};

assign hgh_12bits = {dout_bit_ef,dout_bit_cd,dout_bit_ab,dout_bit_89,4'b0000};

assign dout_tmp = low_8bits + hgh_12bits;

always@(posedge clk or negedge resetn)begin
	if(!resetn)begin
		dout <= 12'd0;
	end
	else 
		dout <=	dout_tmp;
end





conv_lut_bits01 u_conv_lut_bits01(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_01[0]),
.dout_bit2(dout_bit_01[1])
);

conv_lut_bits23 u_conv_lut_bits23(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_23[0]),
.dout_bit2(dout_bit_23[1])
);


conv_lut_bits45 u_conv_lut_bits45(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_45[0]),
.dout_bit2(dout_bit_45[1])
);


conv_lut_bits67 u_conv_lut_bits67(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_67[0]),
.dout_bit2(dout_bit_67[1])
);


conv_lut_bits89 u_conv_lut_bits89(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_89[0]),
.dout_bit2(dout_bit_89[1])
);


conv_lut_bitsab u_conv_lut_bitsab(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_ab[0]),
.dout_bit2(dout_bit_ab[1])
);


conv_lut_bitscd u_conv_lut_bitscd(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_cd[0]),
.dout_bit2(dout_bit_cd[1])
);


conv_lut_bitsef u_conv_lut_bitsef(
.bit_1(din[0]),
.bit_2(din[1]),
.bit_3(din[2]),
.bit_4(din[3]),
.dout_bit1(dout_bit_ef[0]),
.dout_bit2(dout_bit_ef[1])
);







endmodule 
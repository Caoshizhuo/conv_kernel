///////////////////////////////////////////////////////////////
//author:Shizhuo Cao														 //	
//date:20.10.2020															 //
//description: this code is for a convlution_core with 		 //
//					size 1*1*3 and the input is 8bits with three	 //
//					channel(RGB),and the weight is 8bit(1000_0101)//
//																				 //
///////////////////////////////////////////////////////////////



module conv_kernel_top(					
input								clk,			//global clk signal
input								resetn,		//global reset signal

input[7:0]						din_r,		//data channel_r
input[7:0]						din_g,		//data channel_g
input[7:0]						din_b,		//data channel_b

output reg[17:0]				dout			// data_out with data_width_18its; 
													//	3*datin*weight(maxmal 16bits) =18bits
													
);


//wire reg define here
wire[11:0]					dout_tmp_r_1;
wire[11:0]					dout_tmp_r_2;
wire[11:0]					dout_tmp_g_1;
wire[11:0]					dout_tmp_g_2;
wire[11:0]					dout_tmp_b_1;
wire[11:0]					dout_tmp_b_2;

wire[15:0]					shift_tmp_r_2;
wire[15:0]					shift_tmp_g_2;
wire[15:0]					shift_tmp_b_2;

wire[15:0]					dout_tmp_r;
wire[15:0]					dout_tmp_g;
wire[15:0]					dout_tmp_b;

wire[17:0]					dout_tmp; 



conv_kernel conv_kernel_r_1(				//low_4bits of input din_r
.clk(clk),
.resetn(resetn),
.din(din_r[3:0]),
.dout(dout_tmp_r_1)
);

conv_kernel conv_kernel_r_2(				//height_4bits of input din_r
.clk(clk),
.resetn(resetn),
.din(din_r[7:4]),
.dout(dout_tmp_r_2)
);

conv_kernel conv_kernel_g_1(				//low_4bits of input din_g
.clk(clk),
.resetn(resetn),
.din(din_g[3:0]),
.dout(dout_tmp_g_1)
);

conv_kernel conv_kernel_g_2(				//height_4bits of input din_g
.clk(clk),
.resetn(resetn),
.din(din_g[7:4]),
.dout(dout_tmp_g_2)
);

conv_kernel conv_kernel_b_1(				//low_4bits of input din_b
.clk(clk),
.resetn(resetn),
.din(din_b[3:0]),
.dout(dout_tmp_b_1)
);

conv_kernel conv_kernel_b_2(				//height_4bits of input din_b
.clk(clk),
.resetn(resetn),
.din(din_b[7:4]),
.dout(dout_tmp_b_2)
);


//add trees 

assign shift_tmp_r_2 = {dout_tmp_r_2,4'b0000}; //4bits to right shift

assign shift_tmp_g_2 = {dout_tmp_g_2,4'b0000};

assign shift_tmp_b_2 = {dout_tmp_b_2,4'b0000};

assign dout_tmp_r = dout_tmp_r_1 + shift_tmp_r_2 ;

assign dout_tmp_g = dout_tmp_g_1 + shift_tmp_g_2;

assign dout_tmp_b = dout_tmp_b_1 + shift_tmp_b_2;

assign dout_tmp = dout_tmp_r + dout_tmp_g + dout_tmp_b;


always@(posedge clk or negedge resetn)begin
	if(!resetn)begin
		dout <=	18'd0;
	end
	else
		dout <=	dout_tmp;

end





endmodule 
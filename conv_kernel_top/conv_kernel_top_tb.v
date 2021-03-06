`timescale 1ns/1ns
`define Clock_Period 20


module conv_kernel_top_tb();

reg[7:0]				r;
reg[7:0]				g;
reg[7:0]				b;
reg 					clk;
reg					resetn;

always #10 clk =~clk;


initial begin
clk =0;
resetn =0;
r = 8'b00011111;
g=8'b10101111;
b = 8'b01011100;

#50
resetn=1;
#1000
$stop;


end
conv_kernel_top u_conv_kernel_top(					
.clk(clk),		
.resetn(resetn),	

.din_r(r),	
.din_g(g),	
.din_b(b)
													
												
);







endmodule

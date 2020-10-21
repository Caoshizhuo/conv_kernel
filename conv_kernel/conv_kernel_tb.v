`timescale 1ns/1ns
`define Clock_Period 20


module conv_kernel_tb();

reg[7:0]				a;
reg					clk;
reg					resetn;

always #10 clk = ~clk;

initial begin
	clk =0;
	resetn =0;
	#100;
	resetn =1;
	a=8'b0011;
	
end

 conv_kernel u_conv_kernel(
.din(a),
.resetn(resetn),
.clk(clk)
);




endmodule 
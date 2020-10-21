module conv_lut_bits45(
input				bit_1,
input				bit_2,
input				bit_3,
input				bit_4,


output reg		dout_bit1,
output reg		dout_bit2

);

//wire reg define here

//wire				bit_1;
//wire				bit_2;
//wire				bit_3;
//wire				bit_4;
//wire				dout_bit1; //low bit
//wire				dout_bit2; //heigh bit


always@(*)begin
		case({bit_4,bit_3,bit_2,bit_1})
			4'b0000:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b0001:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b0010:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b0011:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b0100:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b0101:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b0110:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b0111:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b1000:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b1001:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 0;	
			end
		4'b1010:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 1;	
			end
		4'b1011:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 1;	
			end	
		4'b1100:
			begin
				dout_bit1 <= 1;
				dout_bit2 <= 1;	
			end
		4'b1101:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b1110:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end
		4'b1111:
			begin
				dout_bit1 <= 0;
				dout_bit2 <= 0;	
			end				

		endcase


end




endmodule

/*
 	gray[i] = binary[i] xor binary[i-1]
 	
 			b3 b2 b1 b0
 		XOR	b4 b3 b2 b1
 			___________
 			g3 g2 g1 g0
 			___________
 	
 	in verilog with the right shift the MSB is replaced with '0'
 	
 
 */


module bin2gray
#(parameter n = 4) 
(
	input  [n-1:0]b,
	output reg [n-1:0]g
);
reg [3:0]r1 ;
reg [3:0]r2 ;
always @*
	begin
	r1 = b;
	r2 = b>>>1;

	g  = r1^r2;
end

endmodule

/*
 * OR
 * module bin2gray
#(parameter n = 4) 
(
	input  [n-1:0]b,
	output [n-1:0]g
);

assign	g  = b^b>>>1;
endmodule
 */
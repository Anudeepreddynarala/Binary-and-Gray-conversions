module gray2bin
	#(parameter n = 4)
	(
		input  [n-1:0]g,
		output reg [n-1:0]b
	);
integer i;
reg [n-1:0]r_g; 
	always @*
		begin
		i =0;
		r_g = g;
	repeat(n)begin
		b[i] = ^r_g;
		r_g = r_g>>>1;
		i = i+1;
	end 
	end
endmodule
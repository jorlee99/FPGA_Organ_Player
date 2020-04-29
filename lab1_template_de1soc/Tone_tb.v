module tone_dividor_tb;

reg clock;
wire [31:0] divider;
reg [3:1] switches;

tone_dividor DUT(switches,divider);

initial begin
	clock =1;  #5;
	
	forever begin
	clock=1; #5;
	clock=0; #5;
	end
end

initial begin
switches [1] = 1'b0;
switches [2] = 1'b0;
switches [3] = 1'b0;
#10;
switches [1] = 1'b1;
switches [2] = 1'b0;
switches [3] = 1'b0;
#10;
switches [2] = 1'b1;
switches [1] = 1'b0;
#10;
switches [1] = 1'b1;
#10;
switches [3] = 1'b1;
switches [1] = 1'b0;
switches [2] = 1'b0;
#10;
switches [1] = 1'b1;
#10;
switches [2] = 1'b1;
switches [1] = 1'b0;
#10;
switches [1] = 1'b1;
#10;
$stop;
end
endmodule

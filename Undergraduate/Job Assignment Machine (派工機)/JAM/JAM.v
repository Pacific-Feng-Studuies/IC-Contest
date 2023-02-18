`include "Full_Permutation.v"
module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

`define init     3'd0
`define dict    3'd1
`define calc   3'd2
`define swap 3'd3  
`define push  3'd4 

reg [2:0] state,next_state;
reg  [9:0]add,next_add;
wire [9:0] next_MinCost;
wire [3:0] next_MatchCount;
wire [2:0] next_W;
reg [2:0] next_J;
reg start, start_temp ;
wire next_Valid;
//wire end_signal;
wire fin_one;
wire [23:0] ser;


Full_Permutation f1(.rst(RST), .clk(CLK), .ns(next_state), .start(start), .out0(ser[2:0]), .out1(ser[5:3]), .out2(ser[8:6]), .out3(ser[11:9]), .out4(ser[14:12]) ,.out5(ser[17:15]), .out6(ser[20:18]), .out7(ser[23:21]), .fin_one(fin_one));

always@(posedge CLK or posedge RST)
begin
	if(RST) begin
		state<=6'd0;
		start <= 1'd0 ;
    end
	else begin
		state<=next_state;
		start <= start_temp ;
	end
end

always@(*)
begin
	case(state)
		`init  :next_state=(~RST)?`calc:`init;
		`dict  :next_state=(fin_one)?`calc:`dict;
		`calc  :next_state=(W==3'd7)?`swap:`calc;
		`swap  :next_state=(ser==24'o01234567)?`push:`dict;
		`push  :next_state=`init;
		default:next_state=`init;
	endcase
end

always@(posedge CLK or posedge RST)
begin
	if(RST) 
		J<=3'd0;
	else
		J<=next_J;
end

always@(*)
  case(state)
    `init ,`swap : begin
	  start_temp = 1'd1 ;
	end
	default : begin
	  start_temp = 1'd0 ;
	end
  endcase

always@(*)
begin
	case(state)
		`init     :next_J=3'd0;
		`dict    :case(next_W)
						3'd0:next_J=ser[2:0];
						3'd1:next_J=ser[5:3];
						3'd2:next_J=ser[8:6];
						3'd3:next_J=ser[11:9];
						3'd4:next_J=ser[14:12];
						3'd5:next_J=ser[17:15];
						3'd6:next_J=ser[20:18];
						3'd7:next_J=ser[23:21];
						default:next_J=3'd0;
					endcase
		`calc    :case(next_W)
						3'd0:next_J=ser[2:0];
						3'd1:next_J=ser[5:3];
						3'd2:next_J=ser[8:6];
						3'd3:next_J=ser[11:9];
						3'd4:next_J=ser[14:12];
						3'd5:next_J=ser[17:15];
						3'd6:next_J=ser[20:18];
						3'd7:next_J=ser[23:21];
						default:next_J=3'd0;
					endcase
		`swap :next_J=3'd0;
		`push  :next_J=3'd0;
		default:next_J=3'd0;
	endcase
end






always@(posedge CLK or posedge RST)
begin
	if(RST) 
		add<=6'd0;
	else
		add<=next_add;
end

always@(*)
begin
	case(state)
		`init    :next_add=10'b0;
		`dict   :next_add=10'b0;
		`calc   :next_add=add+Cost;
		`swap :next_add=add;
		`push  :next_add=add;
		default:next_add=add;
	endcase
end




always@(posedge CLK or posedge RST)
begin
	if(RST) 
		W<=6'd0;
	else
		W<=next_W;
end
assign next_W=(state==`calc)?W+3'd1:3'd0;

always@(posedge CLK or posedge RST)
begin
	if(RST) 
		MinCost<=10'd1023;
	else
		MinCost<=next_MinCost;
end
assign next_MinCost=((state==`swap)&&(add<MinCost))?add:MinCost;

always@(posedge CLK or posedge RST)
begin
	if(RST) 
		MatchCount<=4'd0;
	else
		MatchCount<=next_MatchCount;
end
assign next_MatchCount=((state==`swap)&&(add<=MinCost))?((add==MinCost)?MatchCount+4'd1:4'b1):MatchCount;

always@(posedge CLK or posedge RST)
begin
	if(RST) 
		Valid<=1'b0;
	else
		Valid<=next_Valid;
end
assign next_Valid=(next_state==`push)?1'b1:1'b0;



endmodule



module change_first(flg, chg0, chg1, chg2, chg3, chg4, chg5, chg6, change_first);
    input [2:0] flg, chg0, chg1, chg2, chg3, chg4, chg5, chg6 ;
	wire [3:0] result0 ,result1, result2, result3, result4, result5, result6 , result00, result01, result02, result000, result001;
	output [3:0] change_first ;
	   
	  assign result0 = (flg<chg0)? {1'd0, chg0}: 4'd9 ;
	  assign result1 = (flg<chg1)? {1'd0, chg1}: 4'd9 ;
	  assign result2 = (flg<chg2)? {1'd0, chg2}: 4'd9 ;
	  assign result3 = (flg<chg3)? {1'd0, chg3}: 4'd9 ;
	  assign result4 = (flg<chg4)? {1'd0, chg4}: 4'd9 ;
	  assign result5 = (flg<chg5)? {1'd0, chg5}: 4'd9 ;
	  assign result6 = (flg<chg6)? {1'd0, chg6}: 4'd9 ;
	   
	  assign result00 = (result0<result1)? result0:result1;
	  assign result01 = (result2<result3)? result2:result3;
	  assign result02 = (result4<result5)? result4:result5;
	  
	  assign result000 = (result00<result01)?result00:result01;
	  assign result001 = (result02<result6)?result02:result6;

	  assign change_first = (result000<result001)?result000[3:1]:result001[3:1];
	  
  endmodule
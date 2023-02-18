module Full_Permutation(rst, clk, ns, start , out0, out1, out2, out3, out4, out5, out6, out7, fin_one/*, fin_per*/);

  input rst, clk ;
  input start ;
  input [2:0] ns;
  output [2:0] out0, out1, out2, out3, out4, out5, out6, out7;
  output reg fin_one /*,fin_per*/ ;
  
  reg change; 
  reg [2:0] change_pos, change_pos_temp;
  reg [3:0] cs_per, ns_per;
  reg [2:0] cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7;
  reg [2:0] cur_ans0_temp, cur_ans1_temp, cur_ans2_temp, cur_ans3_temp, cur_ans4_temp, cur_ans5_temp, cur_ans6_temp, cur_ans7_temp;
  
  always@(posedge clk or posedge rst)
    if(rst) begin
	  cs_per <= 4'd0 ;
	  change_pos <= 3'd0 ;
	  {cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7} <= 24'd0;
	end
	else begin
	  cs_per <= ns_per ;
	  change_pos <= change_pos_temp ;
	  {cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7} <= {cur_ans0_temp, cur_ans1_temp, cur_ans2_temp, cur_ans3_temp, cur_ans4_temp, cur_ans5_temp, cur_ans6_temp, cur_ans7_temp};
	end
	
  assign {out0, out1, out2, out3, out4, out5, out6, out7} = {cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7} ;
	
  always@(*)
    case(cs_per)
	  4'd0 : begin
	    if(ns==3'd1) begin
		  ns_per = 2'd1 ;
		end
		else begin
		  ns_per = 2'd0 ;
		end  
	  end
	  4'd1 : begin
	    if(change&&start) begin
		  ns_per = 4'd8 ;
		end
		else if(start) begin
		  ns_per = 4'd2 ;
		end
		else begin
		  ns_per = 4'd1 ;
		end 
	  end
	  4'd2 : begin
	    if(change) begin
		  ns_per = 4'd8 ;
		end
		else begin
		  ns_per = 4'd3 ;
		end 
	  end
	  4'd3 : begin
	    if(change) begin
		  ns_per = 4'd8 ;
		end
		else begin
		  ns_per = 4'd4 ;
		end 
	  end
	  4'd4 : begin
	    if(change) begin
		  ns_per = 4'd8 ;
		end
		else begin
		  ns_per = 4'd5 ;
		end 
	  end
	  4'd5 : begin
	    if(change) begin
		  ns_per = 4'd8 ;
		end
		else begin
		  ns_per = 4'd6 ;
		end 
	  end
	  4'd6 : begin
	    if(change) begin
		  ns_per = 4'd8 ;
		end
		else begin
		  ns_per = 4'd7 ;
		end 
	  end
	  4'd7 : begin
		  ns_per = 4'd8 ;
	  end
	  4'd8 : begin
	      ns_per = 4'd9 ;
	  end
      
	  4'd9 : begin
	      ns_per = 4'd10 ;
	  end
      
	  4'd10: begin
	    //if({cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7} == 24'd70123456)
	      ns_per = 4'd1 ;
		//begin
	  end
	  default : begin
	    ns_per = 4'd0 ;
	  end 
	endcase
	
  always@(*)
    case(cs_per)
	  4'd10 : begin
	    fin_one = 1'd1 ;
	  end
	  default : begin
	    fin_one = 1'd0 ;
	  end
	endcase
	
  /*always@(*)
    case(cs_per)
	  4'd10 : begin
	    if({cur_ans0, cur_ans1, cur_ans2, cur_ans3, cur_ans4, cur_ans5, cur_ans6, cur_ans7}== 24'o76543210) begin
		  fin_per = 1'd1 ;
		end
		else begin
		  fin_per = 1'd0 ;
		end
	  end
	  default : begin
	    fin_per = 1'd0 ;
	  end
	endcase*/


  always@(*)
    case(cs_per)
	  4'd0 : begin
	    change = 1'd0 ;
	  end
	  4'd1: begin //permutation
	    change = change_swap(cur_ans6, cur_ans7) ;
	  end
	  4'd2 : begin
	    change = change_swap(cur_ans5, cur_ans6) ;
	  end
	  4'd3 : begin
	    change = change_swap(cur_ans4, cur_ans5) ;
	  end
	  4'd4 : begin
	    change = change_swap(cur_ans3, cur_ans4) ;
	  end
	  4'd5 : begin
	    change = change_swap(cur_ans2, cur_ans3) ;
	  end
	  4'd6 : begin
	    change = change_swap(cur_ans1, cur_ans2) ;
	  end
	  4'd7 : begin
	    change = change_swap(cur_ans0, cur_ans1) ;
	  end
	  4'd8, 4'd9, 4'd10, 4'd11, 4'd12, 4'd13, 4'd14, 4'd15 : begin
	    change = 1'd0 ;
	  end
	  default : begin
	    change = 1'd0 ;
	  end
	endcase
	
  always@(*)
    case(cs_per)
	  4'd0 : begin
	    change_pos_temp = 3'd0 ;
	  end
	  4'd1: begin //permutation
	    change_pos_temp = 3'd6 ;
	  end
	  4'd2 : begin
	    change_pos_temp = 3'd5;
	  end
	  4'd3 : begin
	    change_pos_temp = 3'd4;
	  end
	  4'd4 : begin
		change_pos_temp = 3'd3;
	  end
	  4'd5 : begin
	    change_pos_temp = 3'd2;
	  end
	  4'd6 : begin
	    change_pos_temp = 3'd1;
	  end
	  4'd7 : begin
	    change_pos_temp = 3'd0;
	  end
	  4'd8, 4'd9, 4'd10, 4'd11, 4'd12, 4'd13, 4'd14, 4'd15 : begin
	    change_pos_temp = change_pos ;
	  end
	  default : begin
	    change_pos_temp = change_pos ;
	  end
	endcase
	
  always@(*)
    case(cs_per)
	  4'd0 : begin
	    cur_ans0_temp = 3'd0 ;
		cur_ans1_temp = 3'd1 ;
		cur_ans2_temp = 3'd2 ;
		cur_ans3_temp = 3'd3 ;
		cur_ans4_temp = 3'd4 ;
		cur_ans5_temp = 3'd5 ;
		cur_ans6_temp = 3'd6 ;
		cur_ans7_temp = 3'd7 ;
	  end
	  4'd1 , 4'd2, 4'd3, 4'd4, 4'd5, 4'd6, 4'd7 : begin
		cur_ans0_temp = cur_ans0 ;
		cur_ans1_temp = cur_ans1 ;
		cur_ans2_temp = cur_ans2 ;
		cur_ans3_temp = cur_ans3 ;
		cur_ans4_temp = cur_ans4 ;
		cur_ans5_temp = cur_ans5 ;
		cur_ans6_temp = cur_ans6 ;
		cur_ans7_temp = cur_ans7 ;
	  end
	  4'd8 : begin
	    case(change_pos)
		  3'd6 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = change_first(cur_ans6, 4'd9, 4'd9, 4'd9, 4'd9, 4'd9, 4'd9, {1'd0,cur_ans7}) ;
		    cur_ans7_temp = cur_ans6 ;
		  end
		  
		  3'd5 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = change_first(cur_ans5, 4'd9 ,4'd9, 4'd9, 4'd9, 4'd9, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
			
			if(cur_ans6 == cur_ans5_temp) begin
		      cur_ans6_temp = cur_ans5 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans5_temp) begin
		      cur_ans7_temp = cur_ans5 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
		  3'd4 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = change_first(cur_ans4, 4'd9 ,4'd9, 4'd9, 4'd9, {1'd0,cur_ans5}, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
			
			if(cur_ans5 == cur_ans4_temp) begin
		      cur_ans5_temp = cur_ans4 ;
			end
			else begin
			  cur_ans5_temp = cur_ans5 ;
			end
			
			if(cur_ans6 == cur_ans4_temp) begin
		      cur_ans6_temp = cur_ans4 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans4_temp) begin
		      cur_ans7_temp = cur_ans4 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
		  3'd3 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = change_first(cur_ans3, 4'd9 ,4'd9, 4'd9, {1'd0,cur_ans4}, {1'd0,cur_ans5}, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
			
			
			if(cur_ans4 == cur_ans3_temp) begin
		      cur_ans4_temp = cur_ans3 ;
			end
			else begin
			  cur_ans4_temp = cur_ans4 ;
			end
			
			if(cur_ans5 == cur_ans3_temp) begin
		      cur_ans5_temp = cur_ans3 ;
			end
			else begin
			  cur_ans5_temp = cur_ans5 ;
			end
			
			if(cur_ans6 == cur_ans3_temp) begin
		      cur_ans6_temp = cur_ans3 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans3_temp) begin
		      cur_ans7_temp = cur_ans3 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
				  
		  3'd2 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = change_first(cur_ans2, 4'd9 ,4'd9, {1'd0,cur_ans3}, {1'd0,cur_ans4}, {1'd0,cur_ans5}, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
				
			if(cur_ans3 == cur_ans2_temp) begin
		      cur_ans3_temp = cur_ans2 ;
			end
			else begin
			  cur_ans3_temp = cur_ans3 ;
			end
			
			if(cur_ans4 == cur_ans2_temp) begin
		      cur_ans4_temp = cur_ans2 ;
			end
			else begin
			  cur_ans4_temp = cur_ans4 ;
			end
			
			if(cur_ans5 == cur_ans2_temp) begin
		      cur_ans5_temp = cur_ans2 ;
			end
			else begin
			  cur_ans5_temp = cur_ans5 ;
			end
			
			if(cur_ans6 == cur_ans2_temp) begin
		      cur_ans6_temp = cur_ans2 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans2_temp) begin
		      cur_ans7_temp = cur_ans2 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
		  3'd1 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = change_first(cur_ans1, 4'd9 ,{1'd0,cur_ans2}, {1'd0,cur_ans3}, {1'd0,cur_ans4}, {1'd0,cur_ans5}, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
							
			if(cur_ans2 == cur_ans1_temp) begin
		      cur_ans2_temp = cur_ans1 ;
			end
			else begin
			  cur_ans2_temp = cur_ans2 ;
			end	
				
			if(cur_ans3 == cur_ans1_temp) begin
		      cur_ans3_temp = cur_ans1 ;
			end
			else begin
			  cur_ans3_temp = cur_ans3 ;
			end
			
			if(cur_ans4 == cur_ans1_temp) begin
		      cur_ans4_temp = cur_ans1 ;
			end
			else begin
			  cur_ans4_temp = cur_ans4 ;
			end
			
			if(cur_ans5 == cur_ans1_temp) begin
		      cur_ans5_temp = cur_ans1 ;
			end
			else begin
			  cur_ans5_temp = cur_ans5 ;
			end
			
			if(cur_ans6 == cur_ans1_temp) begin
		      cur_ans6_temp = cur_ans1 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans1_temp) begin
		      cur_ans7_temp = cur_ans1 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
		  
		  3'd0 : begin
		    cur_ans0_temp = change_first(cur_ans0, {1'd0,cur_ans1} ,{1'd0,cur_ans2}, {1'd0,cur_ans3}, {1'd0,cur_ans4}, {1'd0,cur_ans5}, {1'd0,cur_ans6}, {1'd0,cur_ans7}) ;
							
			if(cur_ans1 == cur_ans0_temp) begin
		      cur_ans1_temp = cur_ans0 ;
			end
			else begin
			  cur_ans1_temp = cur_ans1 ;
			end	
				
			if(cur_ans2 == cur_ans0_temp) begin
		      cur_ans2_temp = cur_ans0 ;
			end
			else begin
			  cur_ans2_temp = cur_ans2 ;
			end	
				
			if(cur_ans3 == cur_ans0_temp) begin
		      cur_ans3_temp = cur_ans0 ;
			end
			else begin
			  cur_ans3_temp = cur_ans3 ;
			end
			
			if(cur_ans4 == cur_ans0_temp) begin
		      cur_ans4_temp = cur_ans0 ;
			end
			else begin
			  cur_ans4_temp = cur_ans4 ;
			end
			
			if(cur_ans5 == cur_ans0_temp) begin
		      cur_ans5_temp = cur_ans0 ;
			end
			else begin
			  cur_ans5_temp = cur_ans5 ;
			end
			
			if(cur_ans6 == cur_ans0_temp) begin
		      cur_ans6_temp = cur_ans0 ;
			end
			else begin
			  cur_ans6_temp = cur_ans6 ;
			end
			
			if(cur_ans7 == cur_ans0_temp) begin
		      cur_ans7_temp = cur_ans0 ;
			end
			else begin
			  cur_ans7_temp = cur_ans7 ;
			end
		  end
		  
		  3'd7 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans6 ;
		    cur_ans7_temp = cur_ans7 ;
		  end
		  
		  default : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans6 ;
		    cur_ans7_temp = cur_ans7 ;
		  end
	    endcase
	  end
	  4'd9 : begin
	    case(change_pos)
		  3'd0 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans7 ;
		    cur_ans2_temp = cur_ans6 ;
		    cur_ans3_temp = cur_ans5 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans3 ;
		    cur_ans6_temp = cur_ans2 ;
		    cur_ans7_temp = cur_ans1 ;
		  end
		  3'd1 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans7 ;
		    cur_ans3_temp = cur_ans6 ;
		    cur_ans4_temp = cur_ans5 ;
		    cur_ans5_temp = cur_ans4 ;
		    cur_ans6_temp = cur_ans3 ;
		    cur_ans7_temp = cur_ans2 ;
		  end
		  3'd2 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans7 ;
		    cur_ans4_temp = cur_ans6 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans4 ;
		    cur_ans7_temp = cur_ans3 ;
		  end
		  3'd3 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans7 ;
		    cur_ans5_temp = cur_ans6 ;
		    cur_ans6_temp = cur_ans5 ;
		    cur_ans7_temp = cur_ans4 ;
		  end
		  3'd4 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans7 ;
		    cur_ans6_temp = cur_ans6 ;
		    cur_ans7_temp = cur_ans5 ;
		  end 
		  3'd5 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans7 ;
		    cur_ans7_temp = cur_ans6 ;
		  end
		  3'd6 : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans6 ;
		    cur_ans7_temp = cur_ans7 ;
		  end
		  default : begin
		    cur_ans0_temp = cur_ans0 ;
		    cur_ans1_temp = cur_ans1 ;
		    cur_ans2_temp = cur_ans2 ;
		    cur_ans3_temp = cur_ans3 ;
		    cur_ans4_temp = cur_ans4 ;
		    cur_ans5_temp = cur_ans5 ;
		    cur_ans6_temp = cur_ans6 ;
		    cur_ans7_temp = cur_ans7 ;
		  end
		endcase
	  end
	  default : begin
	    cur_ans0_temp = cur_ans0 ;
		cur_ans1_temp = cur_ans1 ;
		cur_ans2_temp = cur_ans2 ;
		cur_ans3_temp = cur_ans3 ;
		cur_ans4_temp = cur_ans4 ;
		cur_ans5_temp = cur_ans5 ;
		cur_ans6_temp = cur_ans6 ;
		cur_ans7_temp = cur_ans7 ;
	  end
	endcase
	
	
  function change_swap;
    input [2:0] cur_ans0, cur_ans1;

      change_swap = (cur_ans0<cur_ans1)? 1'd1 : 1'd0 ;
	
  endfunction
  
  
  function [2:0]change_first;
    input [2:0] flg ;
	input [3:0] chg0, chg1, chg2, chg3, chg4, chg5, chg6 ;
	reg [3:0] result0 ,result1, result2, result3, result4, result5, result6 , result00, result01, result02, result000, result001;
	begin
	   result0 = ({1'd0,flg}<chg0)? chg0: 4'd9 ;
	   result1 = ({1'd0,flg}<chg1)? chg1: 4'd9 ;
	   result2 = ({1'd0,flg}<chg2)? chg2: 4'd9 ;
	   result3 = ({1'd0,flg}<chg3)? chg3: 4'd9 ;
	   result4 = ({1'd0,flg}<chg4)? chg4: 4'd9 ;
	   result5 = ({1'd0,flg}<chg5)? chg5: 4'd9 ;
	   result6 = ({1'd0,flg}<chg6)? chg6: 4'd9 ;
	   
	   result00 = (result0<result1)? result0:result1;
	   result01 = (result2<result3)? result2:result3;
	   result02 = (result4<result5)? result4:result5;
	   
	   result000 = (result00<result01)?result00:result01;
	   result001 = (result02<result6)?result02:result6;
	   
	   change_first = (result000<result001)?result000[2:0]:result001[2:0];
	  
	end
  endfunction
  

endmodule


  
  
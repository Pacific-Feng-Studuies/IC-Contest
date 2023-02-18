module LCD_CTRL(clk, reset, cmd, cmd_valid, IROM_Q, IROM_rd, IROM_A, IRAM_valid, IRAM_D, IRAM_A, busy, done);
input clk;
input reset;
input [3:0] cmd;
input cmd_valid;
input [7:0] IROM_Q;
output IROM_rd;
output [5:0] IROM_A;
output IRAM_valid;
output [7:0] IRAM_D;
output [5:0] IRAM_A;
output busy;
output done;

`define INITIAL  4'd0
`define READ     4'd1
`define CMD      4'd2
`define WRITE    4'd3
`define SHIFT_UP 4'd4
`define SHIFT_DN 4'd5
`define SHIFT_LT 4'd6
`define SHIFT_RT 4'd7
`define MAX      4'd8
`define MIN      4'd9
`define AVG      4'd10
`define CCW_R    4'd11
`define CW_R     4'd12
`define MR_X     4'd13
`define MR_Y     4'd14
`define DONE     4'd15


reg [3:0] cs, ns;
reg [2:0] pos_x, pos_y ;
reg [7:0] img [0:63] ;

wire [5:0] pos0, pos1, pos2, pos3 ;        // pos0 | pos1
assign pos0= {pos_y-3'd1, pos_x-3'd1} ;   //  -------------    
assign pos1= {pos_y-3'd1, pos_x} ;       //  pos2 | pos3
assign pos2= {pos_y, pos_x-3'd1} ;
assign pos3= {pos_y, pos_x} ;

wire [9:0] sum ;

assign sum = img[pos0]+ img[pos1]+ img[pos2]+ img[pos3] ;

reg [7:0] cmpmin, cmpmax;

assign IROM_A = {pos_y, pos_x} ;
assign IRAM_A = {pos_y, pos_x} ;

always@(posedge clk or posedge reset)
  if(reset) begin
    cs <= 4'd0 ;
  end
  else begin
    cs <= ns ;
  end
  
//pos_y, pos_x
always@(posedge clk)
  case(cs)
  
	`INITIAL : begin
	  {pos_y, pos_x} = 6'd0;
	end
	
	`READ : begin
	  if(&IROM_A) {pos_y, pos_x} = {3'd4, 3'd4} ;
	  else        {pos_y, pos_x} = {pos_y, pos_x}+ 6'd1;
	end
	 
	`CMD : begin
	  if(cmd==4'b0000) {pos_y, pos_x} = 6'd0;
	  else             {pos_y, pos_x} = {pos_y, pos_x} ;
	end
	
	`SHIFT_UP : begin
      {pos_y, pos_x} = (pos_y == 3'd1)? {pos_y, pos_x}:{pos_y-3'd1, pos_x} ;
	end
	
	`SHIFT_DN : begin
      {pos_y, pos_x} = (pos_y == 3'd7)? {pos_y, pos_x}:{pos_y+3'd1, pos_x} ;
	end
	
	`SHIFT_LT : begin
      {pos_y, pos_x} = (pos_x == 3'd1)? {pos_y, pos_x}:{pos_y, pos_x-3'd1} ;
	end
	
	`SHIFT_RT : begin
      {pos_y, pos_x} = (pos_x == 3'd7)? {pos_y, pos_x}:{pos_y, pos_x+3'd1} ;
	end
	
	`WRITE : begin
      {pos_y, pos_x} = {pos_y, pos_x}+6'd1 ;
	end
	
	default : begin
	  {pos_y, pos_x} = {pos_y, pos_x} ;
	end
	
  endcase


always@(*)
  case(cs)
  
    `INITIAL : begin
	  ns = `READ ;
	end
	
	`READ : begin
	  if(&IROM_A) begin
	    ns = `CMD ;
	  end
	  else begin
	    ns = `READ ;
	  end
	end
	
	`CMD : begin
	  if(cmd_valid) begin
	    case(cmd) 
	      4'b0000 : ns = `WRITE ;
	      4'b0001 : ns = `SHIFT_UP ;
	      4'b0010 : ns = `SHIFT_DN ;
	      4'b0011 : ns = `SHIFT_LT ;
	      4'b0100 : ns = `SHIFT_RT ;
	      4'b0101 : ns = `MAX ;
	      4'b0110 : ns = `MIN ;
	      4'b0111 : ns = `AVG ;
	      4'b1000 : ns = `CCW_R ;
	      4'b1001 : ns = `CW_R ;
	      4'b1010 : ns = `MR_X ;
	      4'b1011 : ns = `MR_Y ;
		  default : ns = `CMD ;
	    endcase
	  end
	  else ns = `CMD ;
	end
    
	`SHIFT_UP, `SHIFT_DN, `SHIFT_LT, `SHIFT_RT, `MAX, `MIN, `AVG, `CCW_R, `CW_R, `MR_X, `MR_Y : ns = `CMD ;
	
	`WRITE : begin
	  if(&IRAM_A) 
	    ns = `DONE;
	  else  
	    ns = `WRITE;
	end
	
	`DONE : begin
	  ns = `DONE ;
	end
	
	default : ns = `INITIAL ;
	  
  endcase
  
//MAX
always@(*)
  if((img[pos0]>img[pos1])&&(img[pos0]>img[pos2])&&(img[pos0]>img[pos3]))
    cmpmax = img[pos0] ;
  else if((img[pos1]>img[pos2])&&(img[pos1]>img[pos3]))
    cmpmax = img[pos1] ;
  else if (img[pos2]>img[pos3])
    cmpmax = img[pos2] ;
  else 
    cmpmax = img[pos3] ;
	
//MIN
always@(*)
  if((img[pos0]<img[pos1])&&(img[pos0]<img[pos2])&&(img[pos0]<img[pos3]))
    cmpmin = img[pos0] ;
  else if((img[pos1]<img[pos2])&&(img[pos1]<img[pos3]))
    cmpmin = img[pos1] ;
  else if (img[pos2]<img[pos3])
    cmpmin = img[pos2] ;
  else 
    cmpmin = img[pos3] ;
  
  
//img[0:63]

integer i ;

always@(posedge clk)
  case(cs)
  
	`INITIAL : begin
	  for(i=0;i<=6'd63;i=i+1) begin
	    img[i] <= 8'd0 ;
	  end
	end
	
	`READ : begin
	    img[IROM_A] <= IROM_Q;
	end
	
	`MAX : begin
	    img[pos0] <= cmpmax ;
	    img[pos1] <= cmpmax ;
	    img[pos2] <= cmpmax ;
	    img[pos3] <= cmpmax ;
	end
	 
	`MIN : begin
        img[pos0] <= cmpmin ;
	    img[pos1] <= cmpmin ;
	    img[pos2] <= cmpmin ;
	    img[pos3] <= cmpmin ;
	end
	
	`AVG : begin
        img[pos0] <= sum[9:2] ;
	    img[pos1] <= sum[9:2] ;
	    img[pos2] <= sum[9:2] ;
	    img[pos3] <= sum[9:2] ;
	end
	
	`CCW_R : begin
        img[pos0] <= img[pos1] ;
	    img[pos1] <= img[pos3] ;
	    img[pos2] <= img[pos0] ;
	    img[pos3] <= img[pos2] ;
	end
	
	`CW_R : begin
        img[pos0] <= img[pos2] ;
	    img[pos1] <= img[pos0] ;
	    img[pos2] <= img[pos3] ;
	    img[pos3] <= img[pos1] ;
	end
	
	`MR_X : begin
        img[pos0] <= img[pos2] ;
	    img[pos1] <= img[pos3] ;
	    img[pos2] <= img[pos0] ;
	    img[pos3] <= img[pos1] ;
	end
	
	`MR_Y : begin
        img[pos0] <= img[pos1] ;
	    img[pos1] <= img[pos0] ;
	    img[pos2] <= img[pos3] ;
	    img[pos3] <= img[pos2] ;
	end
	
	default : begin
	    img[pos0] <= img[pos0] ;
	    img[pos1] <= img[pos1] ;
	    img[pos2] <= img[pos2] ;
	    img[pos3] <= img[pos3] ;
	end
	
  endcase
  
//IRAM_D

assign IRAM_D = ((cs==`WRITE) && (IRAM_valid==1'd1))? img[IRAM_A]:8'dx;
  
//IROM_rd

assign IROM_rd = (cs == `READ)? 1'd1 : 1'd0 ;


//IRAM_valid

assign IRAM_valid = (cs == `WRITE)? 1'd1 : 1'd0 ;


//busy

assign busy = (cs==`INITIAL || cs==`READ || cs==`WRITE || cs==`SHIFT_UP || cs==`SHIFT_DN || cs==`SHIFT_LT || cs==`SHIFT_RT || cs==`MAX || cs==`MIN || cs==`AVG || cs==`CCW_R || cs==`CW_R || cs==`MR_X || cs==`MR_Y)? 1'd1 : 1'd0 ;

//DONE

assign done = (cs == `DONE)? 1'd1 : 1'd0 ;
			  
endmodule
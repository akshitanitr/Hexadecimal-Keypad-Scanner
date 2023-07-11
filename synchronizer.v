 module Synchronizer(
    input [3:0] Row,
    input clock,
    input reset,
    output reg S_row
 );
 reg A_row;

 always @(negedge clock or posedge reset)
 begin
 if(reset)
 begin
 A_row <=0;
 S_row <=0;
 end
 else 
 begin
 A_row <= (Row[0]||Row[1]||Row[2]||Row[3]);
 S_row <= A_row;
 end
 end

endmodule 
    
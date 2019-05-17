module p2(clk,cnt,out,tc,upper);
  input clk,cnt;
  output [3:0] out;
  output tc,upper;
  
  reg [3:0] state = 4'b0000;
  
  always @(posedge clk) begin
    if (cnt) state = state+1;
  end
  
  assign out = state;
  assign tc  = (out == 4'b1111); 
  assign upper = out[3];
endmodule

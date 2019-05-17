module tb_p2();
  reg clk=0,cnt;
  wire [3:0] out;
  wire tc,upper;
  
  integer i;
  
  p2 UUT (clk,cnt,out,tc,upper);
  
  always begin
    #20;
    clk = ~clk;
  end
  
  initial begin
    #20;
    for(i=0; i<8; i=i+1) begin
      cnt = 1;
      #40;
    end
    
    for(i=0; i<4; i=i+1) begin
      cnt = 0;
      #40;
    end
    
    for(i=0; i<8; i=i+1) begin
      cnt = 1;
      #40;
    end
  end
  
  initial begin
    $monitor("clk=%b cnt=%b out=%b tc=%b upper=%b",clk,cnt,out,tc,upper);
  end
endmodule
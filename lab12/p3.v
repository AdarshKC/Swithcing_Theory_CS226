module p3(c0,c1,clk,res,curr); 
	input clk, res,c0,c1;
	output reg [2:0] curr;
	initial
	begin
		curr = 3'b000;
	end

	always @(posedge clk)
	begin
		if(res)
		  begin
		    curr=3'b000;
		   end
		 else
		   begin
		     if(c0==1'b0)
		       begin
		         if(c1==1'b1)curr=curr+3'b001;
		        end
		      else
		        begin
		          if(c1==1'b0)curr=curr-3'b001;
		          else curr=curr+3'b010;
		        end
		    end
		    
	end
endmodule


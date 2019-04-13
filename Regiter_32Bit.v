module d_ff(q, d, clock, reset);
  input d, clock, reset;
  output  q;
  reg q;
  always @ (posedge clock or negedge reset)
  if(~reset)
    q = 1'b0;
  else
    q = d;
endmodule

module reg_32bit(q, d, clock, reset);
  input [31:0]  d;
  input clock, reset;
  output  [31:0]  q;
  genvar j;
  generate
    for(j = 0; j < 32; j = j + 1) begin:  d_loop
      d_ff ff(q[j], d[j], clock, reset);
    end
  endgenerate
endmodule

/*module tb;  
  reg clock, reset;
  wire  [31:0] q;
  reg_32bit regd(q, 32'd4, clock, reset);
  initial begin
    $monitor($time, " :clock= %b q= %b ", clock, q);
    #0  clock = 1'b0; //PC = 32'd20; reset = 1'b0;
    #100 $finish;
  end
  always  begin
    #10 clock = ~clock;
  end
endmodule*/

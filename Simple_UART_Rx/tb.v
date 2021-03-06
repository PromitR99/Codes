`timescale 1ps / 1ps
module tb;

  reg din;
  reg clk;
  wire [7:0]indicator;

UART_Rx inst (.din(din), .clk(clk), .indicator(indicator));

initial begin
clk      =  1'b0;
din      =  1'b1;
#4
din      =  1'b0;
#2;
din = 1'b1;
#2;
din = 1'b1;
#2;
din = 1'b1;
#2;
din = 1'b0;
#2;
din = 1'b0;
#2;
din = 1'b0;
#2;
din = 1'b1;
#2
din = 1'b0;
#10;
$stop;
end

always #1 clk = ~ clk;
endmodule

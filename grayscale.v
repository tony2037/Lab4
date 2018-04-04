module grayscale(
  input [23:0] color,
  output [7:0] gray
  );

/*
y = 0.3125r + 0.5625g + 0.125b
0.3125 = 0.25 + 0.0625 = 1/4 + 1/16
0.5625 = 0.5 + 0.0625 = 1/2 + 1/16
0.125 = 1/8

*/

wire [11:0] r;
wire [11:0] g;
wire [11:0] b;
assign r = { 4'b0000, color[7:0] };
assign g = { 4'b0000, color[15:8] };
assign b = { 4'b0000, color[23:16]}; 

wire [11:0] temp_r;
assign temp_r=(r<<2)+r;

wire [11:0] temp_g;
assign temp_g = (g<<3) + g;

wire [11:0] temp_b;
assign temp_b = (b << 1);

wire [11:0] temp_total;
//assign temp_total = {1'b0,temp_r} + {1'b0,temp_g} + {1'b0,temp_b};
assign temp_total = temp_r + temp_g + temp_b;

wire [7:0]gray;
//assign gray = temp_r[11:4] + temp_g[11:4] + temp_b[11:4];
//assign gray = (temp_total[4])?(temp_total[12:5] + 8'b00000001):(temp_total[12:5]);
assign gray = (temp_total[3])?(temp_total[11:4] + 8'b00000001):(temp_total[11:4]);

endmodule

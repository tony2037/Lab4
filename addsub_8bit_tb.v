`timescale 1ns/10ps
`include "addsub_8bit.v"

module addsub_8bit_tb;

  reg [7:0]A;      // input
  reg [7:0]B;
  reg addsub;
  wire [7:0]S ;        // outputs
  wire cout, ov_flag;

  // Instantiate module 
  addsub_8bit as_8( .S(S), .cout(cout), .ov_flag(ov_flag), .A(A), .B(B), .addsub(addsub) ) ;    

  initial $monitor($time, " A=%d, B=%d, addsub=%d, S=%d , cout=%d, ov_flag=%d" , A, B, addsub, S, cout, ov_flag ) ;
   
  // Declare Input patterns                                                                                                               // Monitoring Input & Output port
  initial begin
        A = 8'd2; B = 8'd1; addsub = 0 ;        
	  #10 A = 8'd7 ; B = -8'd5; addsub = 0 ;
	  #10 A = 8'd8 ; B = 8'd124; addsub = 0 ;
	  #10 A = 8'd25 ; B = 8'd13; addsub = 1 ;
	  #10 A = 8'd28 ; B = -8'd125; addsub = 1 ;
	  #10 A = -8'd49 ; B = 8'd53; addsub = 1 ;
	  #10 A = -8'd116 ; B = 8'd24; addsub = 1 ;
	  #10 A = -8'd127 ; B = -8'd127; addsub = 0 ;
    #10 A = 8'd128 ; B = 8'd128; addsub = 0 ;
      
      #90 $finish ; 
  end
/*
  initial begin
        A = 8'b00000010; B = 8'b00000001; addsub = 0 ;        
	  #10 A = 8'b00000111 ; B = 8'b11111010; addsub = 0 ;
	  #10 A = 8'b00001000 ; B = 8'b01111111; addsub = 0 ;
	  #10 A = 8'b00011001 ; B = 8'b00001101; addsub = 1 ;
	  #10 A = 8'b00011100 ; B = 8'b10000011; addsub = 1 ;
	  #10 A = 8'b11001111 ; B = 8'b00110101; addsub = 1 ;
	  #10 A = 8'b10001100 ; B = 8'b00011000; addsub = 1 ;
	  #10 A = 8'b10000001 ; B = 8'b10000001; addsub = 0 ;
      #10 A = 8'b10000000 ; B = 8'b10000000; addsub = 0 ;
      
      #90 $finish ; 
  end*/
  
  // Generate the waveform file
	initial begin
	`ifdef FSDB
	$fsdbDumpfile("addsub_8bit.fsdb");
	$fsdbDumpvars;
	`endif
	`ifdef VCD
	$dumpfile("addsub_8bit.vcd");
	$dumpvars;
	`endif
    end
	  
endmodule

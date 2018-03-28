`timescale 1ns/10ps
`include "one_bit_fulladder.v"

module one_bit_fulladder_tb;

  reg A, B, cin ;      // input
  wire S, cout ;        // outputs

  // Instantiate module 
  one_bit_fulladder u_one( .S(S), .cout(cout), .A(A), .B(B), .cin(cin) ) ;    

  initial $monitor($time, "  A=%d, B=%d, cin=%d, S=%d, cout=%d" , A, B, cin, S, cout ) ;
   
  // Declare Input patterns                                                                                                               // Monitoring Input & Output port
  initial begin
        A = 1; B = 0; cin = 0 ;        
	  #10 cin = 1 ;
	  #10 A = 0 ;
	  #10 B = 1 ;
      #10 cin = 0 ;
      #10 A = 1 ;
      
      
      
      #20 $finish ; 
  end
  
  // Generate the waveform file
	initial begin
	`ifdef FSDB
	$fsdbDumpfile("one_bit_fulladder.fsdb");
	$fsdbDumpvars;
	`endif
	`ifdef VCD
	$dumpfile("one_bit_fulladder.vcd");
	$dumpvars;
	`endif
    end
	  
endmodule

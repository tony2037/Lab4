`timescale 1ns/10ps
`include "dec2to4.v"

module dec2to4_tb ;

	reg a0, a1 ;                // input
	wire d0, d1, d2, d3 ;       // outputs
  
  // Instantiate module
	dec2to4 m0 ( .d0(d0) , .d1(d1) , .d2(d2) , .d3(d3) , .a0(a0) , .a1(a1) ) ;       

  // Monitoring Input & Output port 
	initial $monitor( $time, " a0=%d , a1=%d , d0=%d , d1=%d , d2=%d , d3=%d ", a0, a1, d0, d1, d2, d3) ;
                                                                                                                                 
	// Declare Input patterns
	initial begin
		    a1=0 ; a0=0 ;                        
		#10 a1=0 ; a0=1 ;
		#10 a1=1 ; a0=0 ;
		#10 a1=1 ; a0=1 ;
        
        
        
		#20 $finish ; 
	end
  
  // Generate the waveform file

	initial begin
	`ifdef FSDB
	$fsdbDumpfile("dec2to4.fsdb");
	$fsdbDumpvars;
	`endif
	`ifdef VCD
	$dumpfile("dec2to4.vcd");
	$dumpvars;
	`endif
    end
endmodule

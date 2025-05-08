module test_sum; 

  wire [5:0] Ain, Bin;
  reg [5:0] Ain_r, Bin_r;
  wire [5:0] res_my, res_ref;
  wire Ci;
  reg Ci_r;
  wire cm, cr;
  my_sum my_block (Ain, Bin, Ci, res_my, cm);
  ref_sum ref_block (Ain, Bin, Ci, res_ref, cr);

  initial begin
    $display("Time\tAin\tBin\tCi\tres_my\tcm\tCi_r\tres_ref\tcr");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", 
      $time, Ain, Bin, Ci, res_my, cm, Ci_r, res_ref, cr);
    #400 $finish;
    end

  initial begin 
    Ain_r = 6'b000001; 
    Bin_r = 6'b000010; 
    Ci_r = 0; 
    #50 Ain_r = 6'b000101; 
    #50 Bin_r = 6'b001010; 
    #50 Ain_r = 6'b001111; 
    #50 Ci_r = 1; 
    #50 Ain_r = 6'b111111;
    #50 Bin_r = 6'b111111;
    end
    
    assign Ain = Ain_r;
    assign Bin = Bin_r;
    assign Ci = Ci_r;
    
endmodule

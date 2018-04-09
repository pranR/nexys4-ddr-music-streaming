
`timescale 1 ps / 1 ps

module chip
   (
    aresetn,
  
    aclk,
    ready,
    valid
    );
  input aclk;
  input aresetn;
  input ready;
  input valid;

  wire aclk;
  wire aresetn;
  

  ex_sim ex_design
       (
        .aresetn(aresetn),
  
        .aclk(aclk),
        .Ready(ready),
        .Valid(valid)
        );
endmodule


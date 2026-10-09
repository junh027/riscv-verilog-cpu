`timescale 1ns/1ps

module and_gate_tb;

reg a;
reg b;
wire y;

and_gate dut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    a=0; b=0;
    #10;
    if (y!==0)
        $display("Test 1 failed");
    else
        $display("Test 1 passed- oooo yea");
    
    a=0; b=1;
    #10;
    if (y!==0)
        $display("Test 2 failed");
    else
        $display("Test 2 passed- oooo yea");

    a=1; b=0;
    #10;
    if (y!==0)
        $display("Test 3 failed");
    else
        $display("Test 3 passed- oooo yea");

    a=1; b=1;
    #10;
    if (y!==1)
        $display("Test 4 failed");
    else 
        $display("Test 4 passed- oooo yea");

    $finish;

end

endmodule

/* 
Signal monitoring
This version of the testbench was initially written 
to simply monitor the outputs and manually determine
whether they were correct or not.

initial begin
    $timeformat(-9,0,"ns",10);
    $monitor("Time = %0t | a = %b, b = %b, y = %b",
              $time, a, b, y);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;
    $finish;
end
*/

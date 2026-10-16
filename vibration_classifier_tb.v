
`timescale 1ns/1ps

module vibration_classifier_tb;

    reg [7:0] vibration;
    wire abnormal;

    vibration_classifier uut (
        .vibration(vibration),
        .abnormal(abnormal)
    );

    initial begin
        vibration = 20;
        #10;
        $display("Vibration = %0d -> %s", vibration,
                 abnormal ? "ABNORMAL" : "NORMAL");

        vibration = 40;
        #10;
        $display("Vibration = %0d -> %s", vibration,
                 abnormal ? "ABNORMAL" : "NORMAL");

        vibration = 50;
        #10;
        $display("Vibration = %0d -> %s", vibration,
                 abnormal ? "ABNORMAL" : "NORMAL");

        vibration = 75;
        #10;
        $display("Vibration = %0d -> %s", vibration,
                 abnormal ? "ABNORMAL" : "NORMAL");

        vibration = 100;
        #10;
        $display("Vibration = %0d -> %s", vibration,
                 abnormal ? "ABNORMAL" : "NORMAL");

        $finish;
    end

endmodule

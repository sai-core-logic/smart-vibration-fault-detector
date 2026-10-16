
module vibration_classifier (
    input wire [7:0] vibration,
    output wire abnormal
);

    assign abnormal = (vibration >= 8'd50);

endmodule

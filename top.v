module top(
    input [7:0]sw,
    output [5:0]led
);
    wire connection1;
    light light_inst (
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
    );

    adder adder_inst (
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );

    full_adder adder1 (
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(connection1)
    );

    full_adder adder2 (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(connection1),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule

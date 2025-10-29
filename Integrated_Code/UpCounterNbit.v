module UpCounterNbit #(
    parameter WIDTH = 10,
    parameter INCREMENT = 1,
    parameter MAX_VALUE = (2**WIDTH)-1
)(
    input clock,
    input reset,
    input enable,
    output reg [WIDTH-1:0] countValue
);
    always @(posedge clock) begin
        if (reset) begin
            countValue <= {WIDTH{1'b0}};
        end else if (enable) begin
            if (countValue >= MAX_VALUE)
                countValue <= {WIDTH{1'b0}};
            else
                countValue <= countValue + INCREMENT;
        end
    end
endmodule
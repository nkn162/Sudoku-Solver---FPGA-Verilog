module debounce (
    input clk,
    input reset,
    input button_in,
    output reg button_out
);
    parameter COUNT_MAX = 500000; // 10ms at 50MHz
    reg [19:0] count;
    reg button_sync_0, button_sync_1;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            button_sync_0 <= 1'b0;
            button_sync_1 <= 1'b0;
        end else begin
            button_sync_0 <= button_in;
            button_sync_1 <= button_sync_0;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 20'd0;
            button_out <= 1'b0;
        end else begin
            if (button_sync_1 != button_out) begin
                if (count < COUNT_MAX)
                    count <= count + 20'd1;
                else begin
                    button_out <= button_sync_1;
                    count <= 20'd0;
                end
            end else begin
                count <= 20'd0;
            end
        end
    end
endmodule
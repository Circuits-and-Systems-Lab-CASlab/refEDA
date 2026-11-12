module counter4 (
    input wire clk,
    input wire reset,
    input wire enable,
    output reg [3:0] count
);
    always @(posedge clk) begin
        if (reset)
            count <= 4'd0;
        else if (enable)
            count <= count + 4'd1;
    end
endmodule

module sipo_10bit(
    input           clk,
    input           rst_n,
    input           ser_in,
    input           shift_en,
    output [9:0]    par_out
);

    reg [9:0]       shift_reg;

    always @ (posedge clk)begin
        if (!rst_n) begin
            shift_reg <= 10'b0000000000;
        end
        else begin
            if (shift_en) begin
                par_out <= shift_reg;
            end
            else shift_reg <= {shift_reg[8:0], ser_in};
        end
    end

endmodule
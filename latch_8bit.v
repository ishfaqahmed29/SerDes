module latch_8bit(
    input           clk,
    input           rst_n,
    input [7:0]     data_8b_in,
    input           data_en,
    output [7:0]    data_8b_out
);

    always @ (rst_n or data_en or data_8b_in) begin
        if (!rst_n) begin
            data_8b_out <= 8'h00;
        end
        else begin
            if (data_en) begin
                data_8b_out <= data_8b_in;
            end
            else data_8b_out <= data_8b_out;
        end
    end

endmodule
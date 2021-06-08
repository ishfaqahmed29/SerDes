module piso_10bit(
    input           clk,
    input           rst_n,
    input [9:0]     par_in,
    input           load_en,
    output reg      ser_out
);

    reg [9:0]       shift_reg;

    always @ (posedge clk)begin
        if (!rst_n) begin
            shift_reg <= 10'b0000000000;
        end 
        else begin 
            if (load_en) begin
                shift_reg <= par_in;
            end
            else 
                ser_out <= shift_reg[0];
                shift_reg <= {1'b0, shift_reg[9:1]};  
        end
    end

endmodule
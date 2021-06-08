module serdes_top(
    input           clk,
    input           rst_n,
    input  [7:0]    parallel_data_in,
    output [7:0]    parallel_data_out
);

    wire [7:0]      parallel_data_in = 8'b11010101;

    reg [7:0]       parallel_data_out;

    latch_8bit data_in_latch(
        .clk(clk),
        .rst_n(rst_n),
        .data_8b_in(parallel_data),
        .data_en(data_en),
        .data_8b_out(data_8b_out)
    );

    encoder_8b_10b encode_data(
        .clk(clk),
        .rst_n(rst_n),
        .data_8b_in(data_8b_in),
        .ser_en(ser_en),
        .data_10b_out(data_10b_out)
    );

    piso_10bit par_to_ser(
        .clk(clk),
        .rst_n(rst_n),
        .par_in(data_10b_out),
        .load_en(load_en),
        .ser_out(ser_out)
    );

    sipo_10bit ser_to_par(
        .clk(clk),
        .rst_n(rst_n),
        .ser_in(ser_out),
        .shift_en(shift_en),
        .par_out(par_out)
    );

    decoder_10b_8b decode_data(
        .clk(clk),
        .rst_n(rst_n),
        .data_10b_in(par_out),
        .par_en(par_en),
        .data_8b_out(data_8b_out)
    );

    always @ (posedge clk) begin
        if (!rst_n) begin
            parallel_data_out <= 0;
        end
        else parallel_data_out <= data_8b_out;
    end

endmodule
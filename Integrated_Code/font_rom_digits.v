module font_rom_digits (
    input      [3:0] char,   // 0-9
    input      [2:0] row,    // 0-7
    output reg [7:0] pixels
);
    always @* begin
        case (char)
            4'd1: case(row) 0: pixels=8'b00011000; 1: pixels=8'b00111000; 2: pixels=8'b00011000; 3: pixels=8'b00011000; 4: pixels=8'b00011000; 5: pixels=8'b00011000; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd2: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b00000110; 3: pixels=8'b00001100; 4: pixels=8'b00011000; 5: pixels=8'b00110000; 6: pixels=8'b01111110; 7: pixels=8'b01111110; default: pixels=8'b0; endcase
            4'd3: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b00000110; 3: pixels=8'b00011100; 4: pixels=8'b00000110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd4: case(row) 0: pixels=8'b00001100; 1: pixels=8'b00011100; 2: pixels=8'b00111100; 3: pixels=8'b01101100; 4: pixels=8'b01111110; 5: pixels=8'b00001100; 6: pixels=8'b00001100; 7: pixels=8'b00001100; default: pixels=8'b0; endcase
            4'd5: case(row) 0: pixels=8'b01111110; 1: pixels=8'b01100000; 2: pixels=8'b01111100; 3: pixels=8'b00000110; 4: pixels=8'b00000110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd6: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b01100000; 3: pixels=8'b01111100; 4: pixels=8'b01100110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd7: case(row) 0: pixels=8'b01111110; 1: pixels=8'b00000110; 2: pixels=8'b00001100; 3: pixels=8'b00011000; 4: pixels=8'b00110000; 5: pixels=8'b00110000; 6: pixels=8'b00110000; 7: pixels=8'b00110000; default: pixels=8'b0; endcase
            4'd8: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b01100110; 3: pixels=8'b00111100; 4: pixels=8'b01100110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd9: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b01100110; 3: pixels=8'b00111110; 4: pixels=8'b00000110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            4'd0: case(row) 0: pixels=8'b00111100; 1: pixels=8'b01100110; 2: pixels=8'b01101110; 3: pixels=8'b01110110; 4: pixels=8'b01100110; 5: pixels=8'b01100110; 6: pixels=8'b00111100; 7: pixels=8'b00111100; default: pixels=8'b0; endcase
            default: pixels = 8'b0;
        endcase
    end
endmodule
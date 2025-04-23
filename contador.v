module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

// Insira seu código aqui


// Valor inicial do contador após reset
  initial begin
      saida = 8'h6A; // Valor 106 em hexadecimal (0x6A)
  end

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            saida <= 8'h6A; // Reset do contador para 106 (0x6A)
        end else if (acrescer && !decrecer) begin
            saida <= saida + 1; // Incrementa em 1
        end else if (!acrescer && decrecer) begin
            saida <= saida - 1; // Decrementa em 1
        end
        // Se ambos os sinais forem inativos ou ativos, o valor do contador não muda
    end


endmodule

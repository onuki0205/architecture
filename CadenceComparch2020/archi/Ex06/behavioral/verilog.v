//Verilog HDL for "archi", "Ex06" "behavioral"

module Ex06 ( RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc,
RegWrite, OpCode );

  output reg MemRead;
  output reg MemtoReg;
  output reg Jump;
  output reg RegWrite;
  output reg MemWrite;
  output reg RegDst;
  output reg [1:0] ALUOp;
  output reg ALUSrc;
  input  [5:0] OpCode;
  output reg Branch;
always @(OpCode) begin

        if( OpCode == 0 ) begin
        Jump <= 1'b0;
        RegDst <= 1'b1;
        Branch <= 1'b0;
        MemRead <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b0;
        ALUSrc <= 1'b0;
        RegWrite <= 1'b1;
        ALUOp <= 2'b10;

        end else
        if( OpCode == 35 ) begin
        Jump <= 1'b0;
        RegDst <= 1'b0;
        Branch <= 1'b0;
        MemRead <= 1'b1;
        MemtoReg <= 1'b1;
        MemWrite <= 1'b0;
        ALUSrc <= 1'b1;
        RegWrite <= 1'b1;
        ALUOp <= 2'b00;

        end else
        if( OpCode == 43 ) begin
        Jump <= 1'b0;
        RegDst <= 1'b0;
        Branch <= 1'b0;
        MemRead <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b1;
        ALUSrc <= 1'b1;
        RegWrite <= 1'b0;
        ALUOp <= 2'b00;

        end else
        if( OpCode == 4 ) begin
        Jump     <= 1'b0;
        RegDst   <= 1'b0;
        Branch   <= 1'b1;
        MemRead  <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b0;
        ALUSrc   <= 1'b0;
        RegWrite <= 1'b0;
        ALUOp    <= 2'b01;

        end else
        if( OpCode == 2 ) begin
        Jump     <= 1'b1;
        RegDst   <= 1'b0;
        Branch   <= 1'b0;
        MemRead  <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b0;
        ALUSrc   <= 1'b0;
        RegWrite <= 1'b0;
        ALUOp    <= 2'b00;

        end else
        if( OpCode == 8 || OpCode == 12 || OpCode == 13 || OpCode == 10 ) begin
        Jump     <= 1'b0;
        RegDst   <= 1'b0;
        Branch   <= 1'b0;
        MemRead  <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b0;
        ALUSrc   <= 1'b1;
        RegWrite <= 1'b1;
        ALUOp    <= 2'b11;

        end else begin
        Jump     <= 1'b0;
        RegDst   <= 1'b1;
        Branch   <= 1'b0;
        MemRead  <= 1'b0;
        MemtoReg <= 1'b0;
        MemWrite <= 1'b0;
        ALUSrc   <= 1'b0;
        RegWrite <= 1'b1;
        ALUOp    <= 2'bxx;

        end
        end

endmodule
`default_nettype none

//--------------------------------------------------
// Code for a Register with LD and RST
//--------------------------------------------------

module Register
#(
    parameter  DataWidth = 32)      //32 bit register since RV32I
(
    input wire Clk,
    input wire Reset,               //Active Low
    input wire LD,                  // Load
    input wire [DataWidth-1:0] Din, //Data in
    input wire [DataWidth-1:0] Dout //Data out

);

always @(negedge Clk) begin
    if (~Reset) begin
        ifdef SIMULATE
            $display("%d register reset", $stime) //if in simulate mode
        endif
    Dout <= {DataWidth(1'b0)}; //Dout set to x00000000 on Reset
    end
    else if (~LD) begin
        ifdef SIMULATE
            $display("%d Register load: (%b) %h", $stime, Din, Din)
        endif
        Dout <= Din; //Dout set to Din on LD
    end
    else begin
        Dout <= Dout; //Dout set to Dout
    end
end
`include "3_adder_subtractor.v"

module booth_substep(
    input wire signed [7:0] acc,    //Current value of accumulator
    input wire signed [7:0] Q,  //Current value of Q (initially the multiplier)    
    input wire signed q0,       //Current value of q-1 th bit
    input wire signed [7:0] multiplicand,  //the multiplicand
    output reg signed [7:0] next_acc,   //next accumulator value || value of 8 MSB's of 16 bit output [15:8]
    output reg signed [7:0] next_Q, //Next value of Q || value of 8 LSB's of 16 bit output [7:0]
    output reg q0_next);
    
	wire [7:0] addsub_temp;  //next value of q_-1 th bit
	
	eight_bit_adder_subtractor myadd(Q[0], acc, multiplicand, addsub_temp);
	
		always @(*) begin	
		if(Q[0] == q0) begin
            q0_next = Q[0];
            next_Q = Q>>1;
            next_Q[7] = acc[0];
            //right shift
            next_acc = acc>>1;
            //with sign extension
			if (acc[7] == 1)
                next_acc[7] = 1;
		end

		else begin        //if Q[0] != q0 (that is,  q_-1 bit)
            q0_next = Q[0];
            next_Q = Q>>1;
            next_Q[7] = addsub_temp[0];
            //right shift
            next_acc = addsub_temp>>1;
            //with sign extension
			if (addsub_temp[7] == 1)
                next_acc[7] = 1;
		end			
end	
endmodule 

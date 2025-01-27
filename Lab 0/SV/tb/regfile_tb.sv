module regfiletb ();
    logic clk;
    logic writEnable;

    logic [4:0] rAddress1, rAddress2, wAddress3;
    logic [31:0] rData1, rData2, wData3;

    regfile dut (clk, writEnable, rAddress1, rAddress2, wAddress3,
        wData3, rData1, rData2);

    initial begin 
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin 
        #0 wData3 = 32'hdeadbeef;
        #2 wData3 = 32'h0;
        #6 writEnable = 1'b1;
        wAddress3 = 5'b00001;
        wData3 = 32'hdeadbeef;
        #12 writEnable = 1'b0;
        rAddress1 = 5'b00001;
        rAddress2 = 5'b0;
        #12 writEnable = 1'b1;
        wAddress3 = 5'b01010;
        wData3 = 32'hbeefdead;
        #12 writEnable = 1'b0;
        rAddress2 = 5'b01010;
    end


endmodule
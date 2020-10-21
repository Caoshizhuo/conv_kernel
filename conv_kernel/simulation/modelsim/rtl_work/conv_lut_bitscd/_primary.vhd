library verilog;
use verilog.vl_types.all;
entity conv_lut_bitscd is
    port(
        bit_1           : in     vl_logic;
        bit_2           : in     vl_logic;
        bit_3           : in     vl_logic;
        bit_4           : in     vl_logic;
        dout_bit1       : out    vl_logic;
        dout_bit2       : out    vl_logic
    );
end conv_lut_bitscd;

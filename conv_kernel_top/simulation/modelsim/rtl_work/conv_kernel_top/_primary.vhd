library verilog;
use verilog.vl_types.all;
entity conv_kernel_top is
    port(
        clk             : in     vl_logic;
        resetn          : in     vl_logic;
        din_r           : in     vl_logic_vector(7 downto 0);
        din_g           : in     vl_logic_vector(7 downto 0);
        din_b           : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(17 downto 0)
    );
end conv_kernel_top;

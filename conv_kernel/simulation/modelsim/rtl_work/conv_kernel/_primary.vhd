library verilog;
use verilog.vl_types.all;
entity conv_kernel is
    port(
        din             : in     vl_logic_vector(3 downto 0);
        dout            : out    vl_logic_vector(11 downto 0);
        resetn          : in     vl_logic;
        clk             : in     vl_logic
    );
end conv_kernel;

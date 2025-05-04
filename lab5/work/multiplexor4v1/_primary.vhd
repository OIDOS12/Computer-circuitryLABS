library verilog;
use verilog.vl_types.all;
entity multiplexor4v1 is
    port(
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        Q               : out    vl_logic
    );
end multiplexor4v1;

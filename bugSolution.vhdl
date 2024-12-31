```vhdl
entity multiplier is
  Port ( clock : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              A : in  STD_LOGIC_VECTOR (3 downto 0);
              B : in  STD_LOGIC_VECTOR (3 downto 0);
              Y : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of multiplier is
  signal product : unsigned(7 downto 0) := to_unsigned(0, 8);
  signal result : std_logic_vector(7 downto 0);
begin
  process (clock, reset)
  begin
    if reset = '1' then
      product <= to_unsigned(0, 8);
    elsif rising_edge(clock) then
      product <= A * B;
      result <= std_logic_vector(product);
    end if;
  end process;
    Y <= result;
end architecture; 
```
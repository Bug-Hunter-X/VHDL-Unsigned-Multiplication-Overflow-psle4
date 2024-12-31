```vhdl
entity multiplier is
  Port ( clock : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              A : in  STD_LOGIC_VECTOR (3 downto 0);
              B : in  STD_LOGIC_VECTOR (3 downto 0);
              Y : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of multiplier is
  signal product : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin
  process (clock, reset)
  begin
    if reset = '1' then
      product <= "00000000";
    elsif rising_edge(clock) then
      product <= std_logic_vector(unsigned(A) * unsigned(B));
    end if;
  end process;
  Y <= product;
end architecture;
```
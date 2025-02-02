library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;  

entity MUX is generic(SIZE:INTEGER:=6);                       
  port(CLK:in STD_LOGIC; I:in STD_LOGIC_VECTOR(2**SIZE-1 downto 0); 
       SEL:in UNSIGNED(SIZE-1 downto 0);          
       O:out STD_LOGIC); 
end MUX;  

architecture TEST of MUX is
  signal RI:STD_LOGIC_VECTOR(I'range):=(others=>'0');
  signal RSEL:UNSIGNED(SEL'range):=(others=>'0'); 
begin
  assert (I'length<=2**I'length) and (I'length<2**(SEL'length+1)) report "Ports I and SEL have inconsistent sizes!" severity warning; 
  process(CLK)
  begin
    if rising_edge(CLK) then 
      RI<=I; RSEL<=SEL; O<=RI(TO_INTEGER(RSEL)+I'low); 
    end if;
  end process; 
end TEST;
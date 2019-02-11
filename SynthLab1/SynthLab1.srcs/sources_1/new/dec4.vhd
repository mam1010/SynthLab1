----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2019 02:46:22 PM
-- Design Name: 
-- Module Name: dec4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec4 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           CLK, R : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end dec4;

architecture Behavioral of dec4 is

begin
    process(CLK)
begin
   if ( CLK'event and CLK ='1') then
      if ( R = '1') then
         Y <= "0000";
      else
         case A is
            when "00" => Y <= "0001";
            when "01" => Y <= "0010";
            when "10" => Y <= "0100";
            when "11" => Y <= "1000";
            when others => Y <= "0000";
         end case;
      end if;
   end if;
end process;

end Behavioral;

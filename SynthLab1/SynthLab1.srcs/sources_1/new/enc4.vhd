----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2019 02:42:58 PM
-- Design Name: 
-- Module Name: enc4 - Behavioral
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

entity enc4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           R : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (1 downto 0));
end enc4;

architecture Behavioral of enc4 is

begin
    process(CLK) is
    begin
        if ( CLK' event and CLK ='1') then
            if (R = '1') then
                Y <= "00";
            else
                case A is
                    when "0001" => Y <= "00";
                    when "0010" => Y <= "01";
                    when "0100" => Y <= "10";
                    when "1000" => Y <= "11";
                    when others => Y <= "00";
                end case;
            end if;
        end if;
end process;

end Behavioral;

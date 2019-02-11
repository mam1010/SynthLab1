----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2019 02:23:02 PM
-- Design Name: 
-- Module Name: comp8 - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL, IEEE.Numeric_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp8 is
    Port ( A0,B0: in unsigned(7 downto 0);
           Y0 : out STD_LOGIC);
end comp8;

architecture Behavioral of comp8 is

begin
    comp8_proc: process(A0,B0) is
    begin
        Y0 <= '1';
        for N in 0 to 7 loop
            if(A0(N)/=B0(N)) then
                Y0<= '0';
            end if;
        end loop;
    end process;

end Behavioral;

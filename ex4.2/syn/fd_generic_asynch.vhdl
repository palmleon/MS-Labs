
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GENERIC_N16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GENERIC_N16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_15 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_15;

architecture SYN_ASYNCHARCH of FD_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1000 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1000);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_14 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_14;

architecture SYN_ASYNCHARCH of FD_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1001 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1001);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_13 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_13;

architecture SYN_ASYNCHARCH of FD_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1002 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1002);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_12 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_12;

architecture SYN_ASYNCHARCH of FD_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1003);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_11 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_11;

architecture SYN_ASYNCHARCH of FD_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1004 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1004);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_10 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_10;

architecture SYN_ASYNCHARCH of FD_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1005 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1005);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_9 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_9;

architecture SYN_ASYNCHARCH of FD_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1006 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1006);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_8 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_8;

architecture SYN_ASYNCHARCH of FD_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1007 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1007);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_7 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_ASYNCHARCH of FD_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1008 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1008);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_6 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_ASYNCHARCH of FD_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1009 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1009);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_5 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_ASYNCHARCH of FD_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1010 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1010);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_4 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_ASYNCHARCH of FD_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1011 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1011);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_3 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_ASYNCHARCH of FD_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1012 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1012);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_2 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_ASYNCHARCH of FD_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1013 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1013);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_ASYNCHARCH of FD_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1014 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1014);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_0 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_ASYNCHARCH of FD_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1015 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n1, Q => Q, QN => n_1015);
   U3 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_ASYNCHARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_N16.all;

entity FD_GENERIC_N16 is

   port( D : in std_logic_vector (15 downto 0);  CK, RESET : in std_logic;  Q :
         out std_logic_vector (15 downto 0));

end FD_GENERIC_N16;

architecture SYN_ASYNCARCH of FD_GENERIC_N16 is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_5
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_8
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_9
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_10
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_11
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_12
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_13
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_14
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_15
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FF_0 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, Q => Q(0));
   FF_1 : FD_15 port map( D => D(1), CK => CK, RESET => RESET, Q => Q(1));
   FF_2 : FD_14 port map( D => D(2), CK => CK, RESET => RESET, Q => Q(2));
   FF_3 : FD_13 port map( D => D(3), CK => CK, RESET => RESET, Q => Q(3));
   FF_4 : FD_12 port map( D => D(4), CK => CK, RESET => RESET, Q => Q(4));
   FF_5 : FD_11 port map( D => D(5), CK => CK, RESET => RESET, Q => Q(5));
   FF_6 : FD_10 port map( D => D(6), CK => CK, RESET => RESET, Q => Q(6));
   FF_7 : FD_9 port map( D => D(7), CK => CK, RESET => RESET, Q => Q(7));
   FF_8 : FD_8 port map( D => D(8), CK => CK, RESET => RESET, Q => Q(8));
   FF_9 : FD_7 port map( D => D(9), CK => CK, RESET => RESET, Q => Q(9));
   FF_10 : FD_6 port map( D => D(10), CK => CK, RESET => RESET, Q => Q(10));
   FF_11 : FD_5 port map( D => D(11), CK => CK, RESET => RESET, Q => Q(11));
   FF_12 : FD_4 port map( D => D(12), CK => CK, RESET => RESET, Q => Q(12));
   FF_13 : FD_3 port map( D => D(13), CK => CK, RESET => RESET, Q => Q(13));
   FF_14 : FD_2 port map( D => D(14), CK => CK, RESET => RESET, Q => Q(14));
   FF_15 : FD_1 port map( D => D(15), CK => CK, RESET => RESET, Q => Q(15));

end SYN_ASYNCARCH;

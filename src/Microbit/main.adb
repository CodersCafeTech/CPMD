------------------------------------------------------------------------------
--                                                                          --
--                       Copyright (C) 2018, AdaCore                        --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------

with MicroBit.IOs; use MicroBit.IOs;
with MicroBit.Console; use MicroBit.Console;
with MicroBit.Display;
with Ada.Text_IO;
with MicroBit.Time;
procedure Main is

   Gas_Value : MicroBit.IOs.Analog_Value;
   Sound_Value : MicroBit.IOs.Analog_Value;
   Temp_Value : MicroBit.IOs.Analog_Value;
begin

   -- Loop forever

     loop
      --  Read analog value of pin
      Gas_Value := MicroBit.IOs.Analog (0);
      Sound_Value := MicroBit.IOs.Analog (1);
      Temp_Value  := MicroBit.IOs.Analog (2);

      MicroBit.Console.Put_Line (Analog_Value'Image(Gas_Value));
      MicroBit.Console.Put_Line (Analog_Value'Image(Sound_Value));
      MicroBit.Console.Put_Line (Analog_Value'Image(Temp_Value));
      MicroBit.Time.Delay_Ms(3000);

     end loop;
     
end Main;
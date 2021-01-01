with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Text_IO;       use Ada.Text_IO;

package convert body is
    function hex2int(hex : String) return Integer is
        begin
            return(Integer'Value(Replace_Slice (hex, 1,2 ,"16#") & "#"));
        end hex2int;

    function string2int(input : String) return Integer is
        begin
            return((Integer'Value(string)));
        end string2int;

    function int2string(int : Integer) return String is
        begin
            return((Integer'Image(int)));
        end int2string;
    
    function string2float(input : String) return Float is
        I : Integer;
        F : Float;
        begin
            I := Integer'Value(string);
            F := Float(I);
            return F;
        end string2float;
end convert;
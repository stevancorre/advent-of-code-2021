package body Solve is
    function Get_Line_Integer (File : File_Type) return Integer is
        Line_Buffer : Unbounded_String;
        Result      : Integer;
    begin
        Line_Buffer := Get_Line (File);
        Result      := Integer'Value (To_String (Line_Buffer));

        return Result;
    end Get_Line_Integer;
end Solve;

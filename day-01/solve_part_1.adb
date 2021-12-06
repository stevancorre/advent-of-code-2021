with Solve;       use Solve;
with Ada.Text_IO; use Ada.Text_IO;

procedure Solve_Part_1 is
   Input_File : File_Type;

   Previous_Value : Integer;
   Value          : Integer;

   Answer : Integer := 0;

begin
   Open (Input_File, In_File, "input.txt");

   Previous_Value := Get_Line_Integer (Input_File);
   while not End_Of_File (Input_File) loop
      Value := Get_Line_Integer (Input_File);
      if Value > Previous_Value then
         Answer := Answer + 1;
      end if;

      Previous_Value := Value;
   end loop;

   Put ("ANSWER:" & Integer'Image (Answer));
   New_Line;

   Close (Input_File);
end Solve_Part_1;

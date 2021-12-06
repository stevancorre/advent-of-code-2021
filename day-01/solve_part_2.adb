with Solve;       use Solve;
with Ada.Text_IO; use Ada.Text_IO;

procedure Solve_Part_2 is
   Input_File : File_Type;

   A            : Integer;
   B            : Integer;
   C            : Integer;
   Previous_Sum : Integer := 16#7FFF_FFFF#;

   Answer : Integer := 0;

begin
   Open (Input_File, In_File, "input.txt");

   A := Get_Line_Integer (Input_File);
   B := Get_Line_Integer (Input_File);
   C := Get_Line_Integer (Input_File);

   loop
      if A + B + C > Previous_Sum then
         Answer := Answer + 1;
      end if;

      exit when End_Of_File (Input_File);

      Previous_Sum := A + B + C;

      A := B;
      B := C;
      C := Get_Line_Integer (Input_File);
   end loop;

   Put ("ANSWER:" & Integer'Image (Answer));
   New_Line;

   Close (Input_File);
end Solve_Part_2;

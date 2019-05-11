-- temp_tester.adb tests the temperature package
--
-- By: Sarah Whitten
-- Date: April 20, 2019
-------------------------------------------------------

with Temperature_Package; use Temperature_Package;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Text_IO.Unbounded_IO;

procedure temp_tester is

   baseTemp : Temperature ;
   limitTemp : Temperature ;   
   increment : Float ;
   inputString : Unbounded_String ;

begin
   Init(baseTemp, 0.0, Ada.Strings.Unbounded.To_Unbounded_String("F"));
   Init(limitTemp, 0.0, Ada.Strings.Unbounded.To_Unbounded_String("F"));
   Put("Please create initial temperature: "); 
   New_line;
   input(baseTemp);
   Put("Please create limit temperature: "); 
   New_line;
   input(limitTemp);
   Put("Please enter the increment: ");
   Ada.Text_IO.Unbounded_IO.Get_Line(inputString);
   increment := Float'Value(To_String(inputString));

   while (lessthan(baseTemp, limitTemp) or equal(baseTemp, limitTemp)) loop
      print(baseTemp); New_line;
      baseTemp := raises(baseTemp, increment);
   end loop;

end temp_tester;


-- max.adb finds the max of a list of integers. 
-- 
-- Completed by: Sarah Whitten
-- Date: April 16, 2019
-------------------------------------------------- 
 
with Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
use Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
 
procedure Max is 
                              -- define 3 lists 
  List1, List2, List3, List4 : List; 
 
begin 
  Init(List1);                -- initialize them 
  Init(List2); 
  Init(List3); 
  Init(List4);
 
  Append(99, List1);          -- 99, 88, 77, 66, 55 
  Append(88, List1);          -- 99 is first 
  Append(77, List1); 
  Append(66, List1); 
  Append(55, List1); 
 
  Append(55, List2);          -- 55, 66, 77, 88, 99 
  Append(66, List2);          -- 99 is last 
  Append(77, List2); 
  Append(88, List2); 
  Append(99, List2); 
 
  Append(55, List3);          -- 55, 77, 99, 88, 66 
  Append(77, List3);          -- 99 is in the middle 
  Append(99, List3); 
  Append(88, List3); 
  Append(66, List3); 


  Append(55, List4);          -- 55, 77, 11, 88, 66 
  Append(77, List4);          -- 99 is not present
  Append(11, List4); 
  Append(88, List4); 
  Append(66, List4);
 
  List_Package.Put(List1); New_Line;       -- output the 3 lists 
  List_Package.Put(List2); New_Line; 
  List_Package.Put(List3); New_Line; 
  List_Package.Put(List4); New_Line;
                              -- display their maxima 
  Put("The maximum value in list 1 is ");  
  Put( Max(List1) ); 
  New_Line; 
  Put("The maximum value in list 2 is "); 
  Put( Max(List2) );
  New_Line; 
  Put("The maximum value in list 3 is ");
  Put( Max(List3) );
  New_Line; 

  Put("The index of 99 in list 1 is ");
  Put( Search(List1, 99) );
  New_Line;
  Put("The index of 99 in list 2 is ");
  Put( Search(List2, 99) );
  New_Line;
  Put("The index of 99 in list 3 is ");
  Put( Search(List3, 99) );
  New_Line;
  Put("The index of 99 in list 4 is ");
  Put( Search(List4, 99) );
  New_Line;

  -- Node_Ptr := List1;
  -- the above line doesn't work becase Node_Ptr isn't visible
  -- (because it's a private declaration)
 
end Max; 


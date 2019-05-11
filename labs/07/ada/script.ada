Script started on Fri 29 Mar 2019 04:07:14 PM EDT
smw42@gold06:~/CS214/labs/07$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: March 29, 2019
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is
    record
      MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
    end record;

  aName : Name ;

  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out Name; First, Middle, Last : in String) is
  
    begin
      TheName.MyFirst := First;
      TheName.MyMiddle := Middle;
      TheName.MyLast := Last;
    end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
  
    begin
      return TheName.MyFirst;
    end getFirst;

  function getMiddle(TheName : in Name) return String is
  
    begin
      return TheName.MyMiddle;
    end getMiddle;

  function getLast(TheName : in Name) return String is
  
    begin
      return TheName.MyLast;
    end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is

    begin
      return getFirst(TheName) & getMiddle(TheName) & getLast(TheName);
    end getFullName;
    
  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put(TheName : in Name) is

    begin
      Put(getFullName(TheName));
    end Put;

begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John    Paul    Jones   ", 
                   "getFullName() failed");

  Put(aName); New_line;
  Put("All tests passed!"); New_line;

end name_tester;
smw42@gold06:~/CS214/labs/07$ gnatmake name_tester.adb -gnata
gnatmake: "name_tester" up to date.
smw42@gold06:~/CS214/labs/07$ ./name_tester
John    Paul    Jones   
All tests passed!
smw42@gold06:~/CS214/labs/07$ exit

Script done on Fri 29 Mar 2019 04:07:54 PM EDT

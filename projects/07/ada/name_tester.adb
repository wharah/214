-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sarah Whitten
-- Date: April 1, 2019
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is
    record
      MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
    end record;

  aName : Name;

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

  procedure setFirst(TheName : in out Name; First : in String) is

    begin
      TheName.myFirst := First;
    end setFirst;

  procedure setMiddle(TheName : in out Name; Middle : in String) is

    begin
      TheName.myMiddle := Middle;
    end setMiddle;

  procedure setLast(TheName : in out Name; Last : in String) is

    begin
      TheName.myLast := Last;
    end setLast;

  function lfmi(TheName : in Name) return String is
 
    begin
      return getLast(TheName) & ", " & getFirst(TheName) & " " & getMiddle(TheName)(1..1) & ".";
    end lfmi;

  procedure readName(TheName : in out Name) is

    begin
      get(TheName.myFirst);
      get(TheName.myMiddle);
      get(TheName.myLast);
    end readName;

begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John    Paul    Jones   ", 
                   "getFullName() failed");

  setFirst(aName, "James   ");
  setMiddle(aName, "Harrell ");
  setLast(aName, "Whitten ");
  pragma Assert( getFirst(aName) = "James   ", "setFirst() failed");
  pragma Assert( getMiddle(aName) = "Harrell ", "setMIddle() failed");
  pragma Assert( getLast(aName) = "Whitten ", "setLast() failed");
  pragma Assert( lfmi(aName) = "Whitten , James    H.", "lfmi() failed");

  readName(aName);

  Put(aName); New_line;
  Put("All tests passed!"); New_line;

end name_tester;

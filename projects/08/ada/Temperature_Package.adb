-- temperature_package.adb is the body of the package
--
-- By: Sarah Whitten
-- Date: April 20, 2019
-------------------------------------------------------

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Text_IO;

package body Temperature_Package is

	-- Initializes the class
	procedure init(Temp: out Temperature; degrees: in float; scale: in Unbounded_String) is
	begin
		if isValid(degrees, scale) then
			Temp.myDegrees := degrees;
			Temp.myScale := scale;
		else
			Ada.Text_IO.Put("Error: invalid temperature!"); Ada.Text_IO.New_Line;
		end if;
	end init;

	-- Returns true if the combination entered is valid
	function isValid(degrees: in float; scale: in Unbounded_String) return Boolean is
	begin
		if (scale = "K") then
			if (degrees >= 0.0) then
				return true;
			else
				return false;
			end if;
		else
			if (scale = "C") then
				if (degrees >= (0.0 - 273.15)) then
					return true;
				else
					return false;
				end if;
			else
				if (scale = "F") then
					if (degrees >= (0.0 - 459.67)) then
						return true;
					else
						return false;
					end if;
				end if;
			end if;
		end if;
		return false;
	end isValid;

	-- Returns the degrees of the given Temperature
	function getDegrees(Temp: in Temperature) return float is
	begin
		return Temp.myDegrees;
	end getDegrees;

	-- Returns the scale of the given temperature
	function getScale(Temp: in Temperature) return Unbounded_String is
	begin
		return Temp.myScale;
	end getScale;

	-- Returns a copy of the given temperature in Celsius
	function getCelsius(Temp: in Temperature) return Temperature is
		tempReturn : Temperature;
	begin
		if (Temp.myScale = "C") then
			init(tempReturn, Temp.MyDegrees, To_Unbounded_String("C"));
		end if;
		if (Temp.myScale = "F") then
			init(tempReturn, Temp.MyDegrees - 32.0 / 1.8, To_Unbounded_String("C"));
		end if;
		if (Temp.mySCale = "K") then
			init(tempReturn, Temp.MyDegrees - 273.15, To_Unbounded_String("C"));
		end if;
		return tempReturn;
	end getCelsius;

	-- Returns a copy of the given temperature in Fahrenheit
	function getFahrenheit(Temp: in Temperature) return Temperature is
		tempReturn : Temperature;
	begin
		if (Temp.myScale = "C") then
			init(tempReturn, Temp.MyDegrees * 1.8 + 3.2, To_Unbounded_String("F"));
		end if;
		if (Temp.myScale = "F") then
			init(tempReturn, Temp.MyDegrees, To_Unbounded_String("F"));
		end if;
		if (Temp.mySCale = "K") then
			init(tempReturn, Temp.MyDegrees * 1.8 - 459.67, To_Unbounded_String("F"));
		end if;
		return tempReturn;
	end getFahrenheit;

	-- Returns a copy of the given temperature in Kelvin
	function getKelvin(Temp: in Temperature) return Temperature is
		tempReturn : Temperature;
	begin
		if (Temp.myScale = "C") then
			init(tempReturn, Temp.MyDegrees + 273.15, To_Unbounded_String("K"));
		end if;
		if (Temp.myScale = "F") then
			init(tempReturn, Temp.MyDegrees + 459.67 * 5.0 / 9.0, To_Unbounded_String("K"));
		end if;
		if (Temp.mySCale = "K") then
			init(tempReturn, Temp.MyDegrees, To_Unbounded_String("K"));
		end if;
		return tempReturn;
	end getKelvin;

	-- Prints out the temperature to the screen with all scales
	procedure print(Temp: in Temperature) is
	begin
		Put(To_Unbounded_String("F: "));
		Put(getDegrees(getFahrenheit(Temp)));
		Put(To_Unbounded_String("  C: "));
		Put(getDegrees(getCelsius(Temp)));
		Put(To_Unbounded_String("  K: "));
		Put(getDegrees(getKelvin(Temp)));
	end print;

	-- Takes in an input and modifies the temperature so it is user-defined
	procedure input(Temp: in out Temperature) is
		inputString : Unbounded_String;
		inputVal : Float;
		inputChar : Unbounded_String;
	begin
		-- Gets the line
		Get_Line(inputString);
		-- Parses it
		inputVal := Float'Value(To_String(inputString)(To_String(inputString)'First..(To_String(inputString)'Last)-1));
		inputChar := To_Unbounded_String(To_String(inputString)(To_String(inputString)'Last..To_String(inputString)'Last));
		-- If valid, assigns values appropriately
		if (isValid(inputVal, inputChar)) then
			Temp.myDegrees := inputVal;
			Temp.myScale := inputChar;
		else
			Put(To_Unbounded_String("Invalid input!"));
		end if;
	end input;

	-- Returns a new Temperature which has its degrees raised by amount
	function raises(Temp: in out Temperature; amount: in Float) return Temperature is
		tempReturn : Temperature;
	begin
		Init(tempReturn, Temp.myDegrees + amount, Temp.myScale);
		return tempReturn;
	end raises;

	-- Returns a new Temperature which has its degrees lowered by amount
	function lower(Temp: in out Temperature; amount: in Float) return Temperature is
		tempReturn : Temperature;
	begin
		if(isValid(Temp.myDegrees - amount, Temp.myScale)) then
			Init(tempReturn, Temp.myDegrees - amount, Temp.myScale);
			return tempReturn;
		end if;
	end lower;

	-- Returns true if and only if the temperatures are equal regardless of scale
	function equal(Temp1, Temp2: in Temperature) return Boolean is
	begin
		return getDegrees(getKelvin(Temp1)) = getDegrees(getKelvin(Temp2));
	end equal;

	-- Returns true if and only if the left operand is less than the right one regardless of scale
	function lessthan(Temp1, Temp2: in Temperature) return Boolean is
	begin
		return (getDegrees(getKelvin(Temp1)) - getDegrees(getKelvin(Temp2))) < 0.0;
	end lessthan;

end Temperature_Package;
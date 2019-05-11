-- temperature_package.ads is the specification for 
-- the temperature package
--
-- By: Sarah Whitten
-- Date: April 20 ,2019
-------------------------------------------------------

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

package Temperature_Package is

	type Temperature is private;

	procedure init(Temp: out Temperature; degrees: in float; scale: in Unbounded_String);

	function isValid(degrees: in float; scale: in Unbounded_String) return Boolean;

	function getDegrees(Temp: in Temperature) return float;

	function getScale(Temp: in Temperature) return Unbounded_String;

	function getCelsius(Temp: in Temperature) return Temperature;

	function getFahrenheit(Temp: in Temperature) return Temperature;

	function getKelvin(Temp: in Temperature) return Temperature;

	procedure print(Temp: in Temperature);

	procedure input(Temp: in out Temperature);

	function raises(Temp: in out Temperature; amount: in Float) return Temperature;

	function lower(Temp: in out Temperature; amount: in Float) return Temperature;

	function equal(Temp1, Temp2: in Temperature) return Boolean;

	function lessthan(Temp1, Temp2: in Temperature) return Boolean;

	private

		type Temperature is
			record
				myDegrees : float;
				myScale : Unbounded_String;
			end record;

end Temperature_Package;
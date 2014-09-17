/*
 	Name: TFAR_fnc_setActiveSwRadio
 	
 	Author(s):
		NKey

 	Description:
		Sets the active SW radio.
	
	Parameters:
		STRING - Radio ID
 	
 	Returns:
		Nothing
 	
 	Example:
		"tf_anprc148jem_1" call TFAR_fnc_setActiveSwRadio;
*/
_old = (call TFAR_fnc_activeSwRadio);
currentUnit unassignItem _old;
currentUnit assignItem _this;
["OnSWChange", currentUnit, [currentUnit, _this, _old]] call TFAR_fnc_fireEventHandlers;
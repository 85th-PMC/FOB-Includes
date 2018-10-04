objNull spawn {
	sleep 2; //wait for client to be able to check vehicles positions properly again.
	_dst = (getPosASL spawnbox) select 2;
	_flt = (getPosASL fltspawn) select 2;
	if (ASORVS_CurrentVehicle isKindOf "LandVehicle") then
	{
		ASORVS_VehicleSpawnPos set [2, _dst];
	};
	if (ASORVS_CurrentVehicle isKindOf "Helicopter") then
	{
		ASORVS_VehicleSpawnPos set [2, _dst];
	};
	if (ASORVS_CurrentVehicle isKindOf "Plane") then
	{
		ASORVS_VehicleSpawnPos set [2, _flt];
	};
	_somedeleted =false;
	{
		if (simulationEnabled _x) then {
			deleteVehicle _x;
			_somedeleted =true;
		};
	} forEach (ASORVS_VehicleSpawnPos nearEntities [["Air", "Car", "Motorcycle", "Tank"], ASORVS_VehicleSpawnRadius]);
	if(_somedeleted) then {
		sleep 2;
	};
	_veh = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
	_veh allowDamage false;
	_veh enableSimulation false;
	if (ASORVS_CurrentVehicle isKindOf "LandVehicle") then
	{
		_veh setPosASL [position _veh select 0, position _veh select 1, _dst];
	};
	if (ASORVS_CurrentVehicle isKindOf "Helicopter") then
	{
		_veh setPosASL [position _veh select 0, position _veh select 1, _dst];
	};
	if (ASORVS_CurrentVehicle isKindOf "Plane") then
	{
		_veh setPosASL [position _veh select 0, position _veh select 1, _flt];
	};
	_veh setVariable ["tf_side", "west", true];
	_veh setVariable ["tf_isolationAmount", 0.1, true];
	_veh setVariable ["ace_vehiclelock_lockSide", west];
	
	_veh setVehicleReportRemoteTargets true;
	_veh setVehicleReceiveRemoteTargets true;
	_veh setVehicleReportOwnPosition true;

	if !(_veh isKindOf "air") then
	{
		_veh disableTIEquipment true;
	}
	else
	{
		_activePylonMags = GetPylonMagazines _veh;
		{
			_veh setPylonLoadOut [(_foreachIndex)+1,"",true];
			_veh SetAmmoOnPylon [_foreachIndex,0];
		} forEach _activePylonMags;
		[_veh,selectRandom ['FD_Target_PopDown_Large_F','FD_Target_PopDown_Small_F','FD_Target_PopUp_Small_F']] remoteExec ["say",0];
		private _pylonWeapons = [];
		{ _pylonWeapons append getArray (_x >> "weapons") } forEach ([_veh, configNull] call BIS_fnc_getTurrets);
		{ _veh removeWeaponGlobal _x } forEach ((weapons _veh) - _pylonWeapons);
	};
	
	if (_veh isKindOf "Tank") then
	{
		[_veh, 1, "ACE_Track", true] call ace_repair_fnc_addSpareParts;
	};
	if (_veh isKindOf "Car") then
	{
		[_veh, 1, "ACE_Wheel", true] call ace_repair_fnc_addSpareParts;
	};
	[_veh, 1, "ACE_ConcertinaWireCoil", true] call ace_repair_fnc_addSpareParts;
	_veh addAction ["Logistics Menu", {createDialog "UK3CB_Logistics_GUI_Dialog"}, nil, 3.99, false, true, "", "[vehicle player] call UK3CB_BAF_Vehicles_Weapons_fnc_can_load_vehicle", 10];
	sleep 2;
	_veh setVehicleLock "UNLOCKED";
	_veh setDir ASORVS_VehicleSpawnDir;
	_veh allowDamage true;
	_veh enableSimulation true;
	clearWeaponCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearItemCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
	sleep 2;
};

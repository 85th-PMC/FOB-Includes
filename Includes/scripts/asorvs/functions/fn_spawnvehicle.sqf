objNull spawn {
	sleep 2; //wait for client to be able to check vehicles positions properly again.
	_somedeleted =false;
	{
		deleteVehicle _x;
		_somedeleted =true;
	}
	forEach (ASORVS_VehicleSpawnPos nearEntities ASORVS_VehicleSpawnRadius);
	if(_somedeleted) then {
		sleep 2;
	};
	_veh = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
	_veh setVariable ["tf_side", "west", true];
	_veh setVariable ["tf_isolationAmount", 0.1, true];
	
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
	
	sleep 2;
	_veh setVehicleLock "UNLOCKED";
	_veh setDir ASORVS_VehicleSpawnDir;
	clearWeaponCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearItemCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
	sleep 2;
};

[player, player] call ace_medical_fnc_treatmentAdvanced_fullHeal;
[player, stambitch] call ace_advanced_fatigue_fnc_handlePlayerChanged;
player setDamage 0;
player setfatigue 0;
systemchat "Returned to Full Health";
systemchat "Returned to Full Stamina";

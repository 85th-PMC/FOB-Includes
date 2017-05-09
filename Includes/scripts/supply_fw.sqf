// vehicle the player is in and were the items will go
_veh = vehicle player;

// all items and attachments go here
// "xx" = amount you want eg 6
_veh addItemCargoGlobal ["ACE_elasticBandage",10];
_veh addItemCargoGlobal ["ACE_packingBandage",10];
_veh addItemCargoGlobal ["ACE_morphine",10];
_veh addItemCargoGlobal ["ACE_epinephrine",10];
_veh addItemCargoGlobal ["HandGrenade",4];
_veh addItemCargoGlobal ["SmokeShell",8];
_veh addItemCargoGlobal ["UK3CB_BAF_SmokeShellGreen",8];
_veh addItemCargoGlobal ["UK3CB_BAF_SmokeShellPurple",8];
_veh addItemCargoGlobal ["UK3CB_BAF_SmokeShellRed",8];
_veh addItemCargoGlobal ["ACE_Chemlight_HiYellow",8];
_veh addItemCargoGlobal ["ACE_HandFlare_Yellow",8];
_veh addItemCargoGlobal ["ACE_Chemlight_IR",8];

// magazines and explosives go here
// "xx" = amount you want eg 6
_veh addMagazineCargoGlobal ["rhsusf_mag_40Rnd_46x30_FMJ",4];

// weapons go here
// "xx" = amount you want eg 6 
_veh addWeaponCargoGlobal ["rhsusf_weap_MP7A2",1];
_veh addWeaponCargoGlobal ["rhs_weap_rsp30_red",1];

// backpack go here
_veh addBackpackCargoGlobal ["B_Parachute",2];

hint "FW Supplies Loaded";

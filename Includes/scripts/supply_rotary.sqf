// vehicle the player is in and were the items will go
_veh = vehicle player;

// all items and attachments go here
// "xx" = amount you want eg 6
_veh addItemCargoGlobal ["ACE_elasticBandage",20];
_veh addItemCargoGlobal ["ACE_morphine",6];
_veh addItemCargoGlobal ["ACE_epinephrine",6];
_veh addItemCargoGlobal ["ACE_Clacker",1];
_veh addItemCargoGlobal ["rhsusf_acc_SFMB556",2];
_veh addItemCargoGlobal ["SMA_ELCAN_SPECTER_ARDRDS",2];


// magazines and explosives go here
// "xx" = amount you want eg 6
_veh addMagazineCargoGlobal ["SMA_30Rnd_556x45_M855A1",12];
_veh addMagazineCargoGlobal ["SMA_30Rnd_556x45_M855A1_Tracer",6];
_veh addMagazineCargoGlobal ["DemoCharge_Remote_Mag",2];
_veh addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",2];
_veh addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",2];
_veh addMagazineCargoGlobal ["SmokeShell",8];
_veh addMagazineCargoGlobal ["SmokeShellGreen",2];
_veh addMagazineCargoGlobal ["SmokeShellRed",2];
_veh addMagazineCargoGlobal ["SmokeShellPurple",4];

// weapons go here
// "xx" = amount you want eg 6 
_veh addWeaponCargoGlobal ["SMA_ACRREMAFGCQBblk_N",1];
_veh addWeaponCargoGlobal ["SMA_ACRREMCQBGL_B_N",1];

hint " Rotary Supplies Loaded";
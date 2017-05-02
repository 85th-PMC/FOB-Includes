// vehicle the player is in and were the items will go
_veh = vehicle player;

// all items and attachments go here
// "xx" = amount you want eg 6
_veh addItemCargoGlobal ["ACE_elasticBandage",40];
_veh addItemCargoGlobal ["ACE_morphine",10];
_veh addItemCargoGlobal ["ACE_epinephrine",10];
_veh addItemCargoGlobal ["ACE_DefusalKit",1];
_veh addItemCargoGlobal ["ACE_EarPlugs",26];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",3];
_veh addItemCargoGlobal ["ACE_IR_Strobe_Item",26];

// magazines and explosives go here
// "xx" = amount you want eg 6
_veh addMagazineCargoGlobal ["DemoCharge_Remote_Mag",4];
_veh addMagazineCargoGlobal ["SmokeShellWhite",20];
_veh addMagazineCargoGlobal ["SmokeShellGreen",8];
_veh addMagazineCargoGlobal ["SmokeShellRed",8];
_veh addMagazineCargoGlobal ["SmokeShellPurple",6];
_veh addMagazineCargoGlobal ["B_IR_Grenade",6];

// weapons go here
// "xx" = amount you want eg 6 
_veh addWeaponCargoGlobal ["tf47_at4_HEDP",2];

hint "Rotary Transport Supplies Loaded";
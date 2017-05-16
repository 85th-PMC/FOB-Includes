enableSentences false;
enableRadio false;

//tf_no_auto_long_range_radio = true; // Causes the exact opposite effect REMOVE FOR NOW

ace_captives_captivityEnabled = true;
independent setFriend [west, 0];

if(isServer) then { sleep 3; ace_captives_captivityEnabled = true; };

[]spawn {
	while {true} do {{
		deleteGroup _x
	}forEach allGroups;
	//diag_log "Groupcleanup script run..";
	sleep 601;
	};
}; // Fix Zeus group bug (will remove deleted groups so more can be added)



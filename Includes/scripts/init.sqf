enableSentences false;
enableRadio false;

//tf_no_auto_long_range_radio = true; // Causes the exact opposite effect REMOVE FOR NOW

[]spawn {
	while {true} do {{
		deleteGroup _x
	}forEach allGroups;
	//diag_log "Groupcleanup script run..";
	sleep 601;
	};
}; // Fix Zeus group bug (will remove deleted groups so more can be added)

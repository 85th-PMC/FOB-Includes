enableSentences false;
enableRadio false;

independent setFriend [west, 0];

/*[]spawn {
	while {true} do {{
		deleteGroup _x;
		0 setfog 0;
	}forEach allGroups;
	//diag_log "Groupcleanup script run..";
	sleep 601;
	};
};*/ // Fix Zeus group bug (will remove deleted groups so more can be added)

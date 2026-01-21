BEGIN d_mmEB //Enger

////////////////////////////////////
//BEFORE DEATHS
////////////////////////////////////

CHAIN IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",1) ~ THEN d_mmEB Skie1
@0 /* Skie, so good to see you! I trust that your birthday gift was satisfactory? */
== %SKIE_JOINED% @1 /* The earrings were beautiful! But Calishite emeralds? Those must have been expensive! */
== d_mmEB @2 /* Oh, don’t worry about it, my dear! I always find a way to have just enough for whatever needs buying! */
== %SKIE_JOINED% @3 /* Oh, and you didn’t say in your letter. How are your charities doing? */
== d_mmEB @4 /* Oh, the charities? They’re doing fine, I suppose. Never enough donations, of course, but some people just aren’t very charitable. */ DO ~~ EXIT


APPEND d_mmEB

IF ~Global("g_mmMQ1","GLOBAL",1)~ THEN BEGIN char1
	SAY @5 /* Ah, yes, you must be <CHARNAME>, Hero of Nashkel! Your reputation precedes you. Pleasure to make your acquaintance. One can never know too many people or have too many friends, no? If you are ever feeling charitable or, ahem, in need of a little… financial help, just let me know. */
		IF ~~ THEN EXIT
END

///////////////////////////////////
// DEATHS 1 & 2
///////////////////////////////////

IF ~IsGabber("Skie") Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN Skie3
	SAY @6 /* Ah, Skie! I am terribly sorry that you got caught up in… whatever this is! I’ll tell you what I know in case it helps. I was invited to this island for a vacation. Zashir Anskuln said that she had once been a beneficiary of my charity work, and has since made a name for herself down south. She bought the island and invited me to this place. */
	= @7 /* Zashir is an adventurer, perhaps she has made powerful enemies that want to eradicate her friends. The Zhentarim could be behind this, perhaps. */
		IF ~~ THEN EXIT
END

IF ~Global("g_mmMQ1","GLOBAL",3)~ THEN BEGIN charname3
	SAY @8 /* I run charities. Of course, someone as twisted as this might find helping the needy to be monstrous. Perhaps some follower of Loviatar or a member of the Zhentarim is behind this. */
		IF ~~ THEN EXIT
END

END
